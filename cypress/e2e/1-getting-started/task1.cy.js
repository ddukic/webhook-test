describe("Random tests", () => {
  let i = 0;
  before(() => {
    // cy.get("I dont exist");
  });
  beforeEach(() => {
    cy.log("Before each");
    i++;
  });
  it("First test", () => {
    cy.log("Im running");
    // if (i === 2) {
    //   cy.log("run #2");
    // } else {
    //   cy.get("I dont exist");
    // }
  });
});
