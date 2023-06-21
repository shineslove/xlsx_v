import excel as xl

fn main() {
    book_name := "example.xlsx"
    filler_text := "Here is a message"
    workbook := xl.workbook_new(book_name)
    worksheet := xl.workbook_add_worksheet(workbook)
    xl.worksheet_write_string(worksheet, 0, 0 , filler_text)
    xl.workbook_close(workbook)
}
