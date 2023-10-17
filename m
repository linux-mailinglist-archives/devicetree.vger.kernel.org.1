Return-Path: <devicetree+bounces-9215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 246487CC167
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF4FA281D0D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 11:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2436B41A83;
	Tue, 17 Oct 2023 11:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="S0q0jeCt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E239341766
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 11:02:33 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C8E5EA;
	Tue, 17 Oct 2023 04:02:31 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id DC6281BF20D;
	Tue, 17 Oct 2023 11:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697540550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q3NkJRLL7OZbJ4S6bLJ8vZdmV1mZ/RkRC71rtEEDQLM=;
	b=S0q0jeCtuSTq8ulxCPI/HOBNU22NB4fyY/+XJr/mFoQqHtremiFjxRXKeonbXLUyCDQgfF
	n3YtEf9NynZyVzzxlQKiE9VCTMiamd2iepfHvIPSGwExZu1NKSPU7aur+uLNU2faAo6BH5
	ZrJZ7Qf4zdjSebmA7I52kTFYgP3Bkbv5A8bIlleFtEc3NeJhjTR85/hbBIoxldKsmeAOrL
	73CxsItBFvWnlikJe8tF3iWf9wEZ4WU8ELJ/KTnP/15CRrxJ8Ng0z4t5Ou8Rjqw7akVrNF
	MagrJ7ay5JiPSWVIZxzRZ2oP4mVuhd6SZeBfRjzkhsYpBVEj3YE43dggfiMb8Q==
From: Herve Codina <herve.codina@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Lizhi Hou <lizhi.hou@amd.com>
Cc: Max Zhen <max.zhen@amd.com>,
	Sonal Santan <sonal.santan@amd.com>,
	Stefano Stabellini <stefano.stabellini@xilinx.com>,
	Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v2 3/3] of: unittest: Add tests for address translations
Date: Tue, 17 Oct 2023 13:02:18 +0200
Message-ID: <20231017110221.189299-4-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231017110221.189299-1-herve.codina@bootlin.com>
References: <20231017110221.189299-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add tests to exercise address translations based on ranges properties.

Tests added cover "default" (2cell) address translations, "default
flags" (3cell) address translations and PCI address translations.
They also cover PCI BAR translations introduced in commit 407d1a51921e
("PCI: Create device tree node for bridge").

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/of/unittest-data/tests-address.dtsi | 101 ++++++++++++++++++++
 drivers/of/unittest.c                       |  74 ++++++++++++++
 2 files changed, 175 insertions(+)

diff --git a/drivers/of/unittest-data/tests-address.dtsi b/drivers/of/unittest-data/tests-address.dtsi
index bc0029cbf8ea..3344f15c3755 100644
--- a/drivers/of/unittest-data/tests-address.dtsi
+++ b/drivers/of/unittest-data/tests-address.dtsi
@@ -51,5 +51,106 @@ bus@a0000000 {
 			};
 
 		};
+
+		address-tests2 {
+			#address-cells = <2>;
+			#size-cells = <1>;
+
+			ranges = <0x10000000 0x01000000 0xa0000000 0x01000000>,
+				 <0x10000000 0x02000000 0xb0000000 0x01000000>,
+				 <0x20000000 0x01000000 0xc0000000 0x01000000>,
+				 <0x20000000 0x02000000 0xd0000000 0x01000000>,
+				 <0x00000000 0xd1000000 0xd1000000 0x01000000>,
+				 <0x00000000 0xe8000000 0xe8000000 0x07f00000>,
+				 <0x00000000 0xefff0000 0xefff0000 0x00010000>;
+
+			bus-2cell@10000000 {
+				#address-cells = <2>;
+				#size-cells = <1>;
+				ranges = <0x100000 0x10000 0x10000000 0x1a00000 0x10000>,
+					 <0x100000 0x20000 0x10000000 0x1b00000 0x10000>,
+					 <0x200000 0x10000 0x20000000 0x1c00000 0x10000>,
+					 <0x200000 0x20000 0x20000000 0x2d00000 0x10000>;
+
+				device@100000 {
+					reg = <0x100000 0x11000 0x100>,
+					      <0x100000 0x12000 0x100>,
+					      <0x200000 0x11000 0x100>,
+					      <0x200000 0x21000 0x100>;
+				};
+			};
+
+			bus-3cell@20000000 {
+				#address-cells = <3>;
+				#size-cells = <1>;
+				ranges = <0x1 0x100000 0x10000 0x10000000 0x1a00000 0x10000>,
+					 <0x2 0x100000 0x10000 0x10000000 0x1b00000 0x10000>,
+					 <0x3 0x200000 0x10000 0x20000000 0x1c00000 0x10000>,
+					 <0x4 0x200000 0x20000 0x20000000 0x2d00000 0x10000>;
+
+				local-bus@100000 {
+					#address-cells = <1>;
+					#size-cells = <1>;
+					ranges = <0xf1000000 0x1 0x100000 0x10000 0x10000>,
+						 <0xf2000000 0x2 0x100000 0x10000 0x10000>,
+						 <0xf3000000 0x3 0x200000 0x10000 0x08000>,
+						 <0xf3800000 0x3 0x200000 0x18000 0x08000>,
+						 <0xf4000000 0x4 0x200000 0x20000 0x10000>;
+
+					device@f1001000 {
+						reg = <0xf1001000 0x100>,
+						      <0xf2002000 0x100>,
+						      <0xf3001000 0x100>,
+						      <0xf3801000 0x100>,
+						      <0xf4001000 0x100>;
+					};
+				};
+			};
+
+			pcie@d1070000 {
+				#address-cells = <0x03>;
+				#size-cells = <0x02>;
+				bus-range = <0x00 0xff>;
+				device_type = "pci";
+				ranges = <0x82000000 0 0xe8000000 0 0xe8000000 0 0x7f00000>,
+					 <0x81000000 0 0x00000000 0 0xefff0000 0 0x0010000>;
+				reg = <0x00000000 0xd1070000 0x20000>;
+
+				pci@0,0 {
+					#address-cells = <0x03>;
+					#size-cells = <0x02>;
+					bus-range = <0x01 0x01>;
+					device_type = "pci";
+					ranges = <0x82000000 0 0xe8000000
+						  0x82000000 0 0xe8000000
+						  0 0x4400000>;
+					reg = <0x00 0x00 0x00 0x00 0x00>;
+
+					dev@0,0 {
+						#address-cells = <0x03>;
+						#size-cells = <0x02>;
+						ranges = <0 0 0 0x82010000 0 0xe8000000 0 0x2000000>,
+							 <1 0 0 0x82010000 0 0xea000000 0 0x1000000>,
+							 <2 0 0 0x82010000 0 0xeb000000 0 0x0800000>,
+							 <3 0 0 0x82010000 0 0xeb800000 0 0x0800000>,
+							 <4 0 0 0x82010000 0 0xec000000 0 0x0020000>,
+							 <5 0 0 0x82010000 0 0xec020000 0 0x0002000>;
+						reg = <0x10000 0x00 0x00 0x00 0x00>;
+
+						local-bus@0 {
+							#address-cells = <0x01>;
+							#size-cells = <0x01>;
+							ranges = <0xa0000000 0 0 0 0x2000000>,
+								 <0xb0000000 1 0 0 0x1000000>;
+
+							dev@e0000000 {
+								reg = <0xa0001000 0x1000>,
+								      <0xb0002000 0x2000>;
+							};
+						};
+					};
+				};
+			};
+		};
 	};
 };
diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index ad2b7879cc67..ffbecd349899 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1186,6 +1186,79 @@ static void __init of_unittest_reg(void)
 	of_node_put(np);
 }
 
+struct of_unittest_expected_res {
+	int index;
+	struct resource res;
+};
+
+static void __init of_unittest_check_addr(const char *node_path,
+					  const struct of_unittest_expected_res *tab_exp,
+					  unsigned int tab_exp_count)
+{
+	const struct of_unittest_expected_res *expected;
+	struct device_node *np;
+	struct resource res;
+	unsigned int count;
+	int ret;
+
+	np = of_find_node_by_path(node_path);
+	if (!np) {
+		pr_err("missing testcase data (%s)\n", node_path);
+		return;
+	}
+
+	expected = tab_exp;
+	count = tab_exp_count;
+	while (count--) {
+		ret = of_address_to_resource(np, expected->index, &res);
+		unittest(!ret, "of_address_to_resource(%pOF, %d) returned error %d\n",
+			 np, expected->index, ret);
+		unittest(resource_type(&res) == resource_type(&expected->res) &&
+			 res.start == expected->res.start &&
+			 resource_size(&res) == resource_size(&expected->res),
+			"of_address_to_resource(%pOF, %d) wrong resource %pR, expected %pR\n",
+			np, expected->index, &res, &expected->res);
+		expected++;
+	}
+
+	of_node_put(np);
+}
+
+static const struct of_unittest_expected_res of_unittest_reg_2cell_expected_res[] = {
+	{.index = 0, .res = DEFINE_RES_MEM(0xa0a01000, 0x100) },
+	{.index = 1, .res = DEFINE_RES_MEM(0xa0a02000, 0x100) },
+	{.index = 2, .res = DEFINE_RES_MEM(0xc0c01000, 0x100) },
+	{.index = 3, .res = DEFINE_RES_MEM(0xd0d01000, 0x100) },
+};
+
+static const struct of_unittest_expected_res of_unittest_reg_3cell_expected_res[] = {
+	{.index = 0, .res = DEFINE_RES_MEM(0xa0a01000, 0x100) },
+	{.index = 1, .res = DEFINE_RES_MEM(0xa0b02000, 0x100) },
+	{.index = 2, .res = DEFINE_RES_MEM(0xc0c01000, 0x100) },
+	{.index = 3, .res = DEFINE_RES_MEM(0xc0c09000, 0x100) },
+	{.index = 4, .res = DEFINE_RES_MEM(0xd0d01000, 0x100) },
+};
+
+static const struct of_unittest_expected_res of_unittest_reg_pci_expected_res[] = {
+	{.index = 0, .res = DEFINE_RES_MEM(0xe8001000, 0x1000) },
+	{.index = 1, .res = DEFINE_RES_MEM(0xea002000, 0x2000) },
+};
+
+static void __init of_unittest_translate_addr(void)
+{
+	of_unittest_check_addr("/testcase-data/address-tests2/bus-2cell@10000000/device@100000",
+			       of_unittest_reg_2cell_expected_res,
+			       ARRAY_SIZE(of_unittest_reg_2cell_expected_res));
+
+	of_unittest_check_addr("/testcase-data/address-tests2/bus-3cell@20000000/local-bus@100000/device@f1001000",
+			       of_unittest_reg_3cell_expected_res,
+			       ARRAY_SIZE(of_unittest_reg_3cell_expected_res));
+
+	of_unittest_check_addr("/testcase-data/address-tests2/pcie@d1070000/pci@0,0/dev@0,0/local-bus@0/dev@e0000000",
+			       of_unittest_reg_pci_expected_res,
+			       ARRAY_SIZE(of_unittest_reg_pci_expected_res));
+}
+
 static void __init of_unittest_parse_interrupts(void)
 {
 	struct device_node *np;
@@ -4034,6 +4107,7 @@ static int __init of_unittest(void)
 	of_unittest_bus_ranges();
 	of_unittest_bus_3cell_ranges();
 	of_unittest_reg();
+	of_unittest_translate_addr();
 	of_unittest_match_node();
 	of_unittest_platform_populate();
 	of_unittest_overlay();
-- 
2.41.0


