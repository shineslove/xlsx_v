module excel
#flag -lxlsxwriter
#include "xlsxwriter.h"

struct WorkBook {
pub:
    workbook voidptr
}

struct WorkSheet {
pub:
    worksheet voidptr
}

struct Format {}

fn C.workbook_new(&char) &WorkBook
pub fn workbook_new(path string) &WorkBook {
    return C.workbook_new(path.str)
}

fn C.workbook_add_worksheet(workbook &WorkBook, Format &Format) &WorkSheet
pub fn workbook_add_worksheet(workbook &WorkBook) &WorkSheet {
    return C.workbook_add_worksheet(workbook, unsafe { nil })
}

fn C.worksheet_write_string(worksheet &WorkSheet, int, int, &char, Format &Format)
pub fn worksheet_write_string(worksheet &WorkSheet, row int, col int, path string) {
    C.worksheet_write_string(worksheet, row, col, path.str, unsafe { nil })
}

fn C.workbook_close(workbook &WorkBook)
pub fn workbook_close(workbook &WorkBook) {
    C.workbook_close(workbook)
}

