Return-Path: <devicetree+bounces-6859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A607BD429
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 09:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC241281399
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 07:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0CE6FBF9;
	Mon,  9 Oct 2023 07:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="XHMwVnOr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF10A921
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 07:17:36 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8B2294;
	Mon,  9 Oct 2023 00:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L0EDlRA3OMIlzeOoHeAjrzBwh4tH5nvpeKz7AodeTwmvBEGTerkQwDzwb4fLqFLrFsE8KSj9jMDLIOffqvs0JLbdc3oFrUZau6dbTm3M1etYoloO17AisXIRp+iF06VtyqWrp3K/UEuXVRJAoxzKzoVuY3XtzJ5bIOLGASMXMmI5b98RLRw8E4wxN/IoQP7NRyD1jbGIYQm1OfivDX0jBI6cWM64i9Ca7xvPp7Go+yyH7fV4ZsxbFpF9GyM+ynI4/E/P48HF6gzJg5pKfIz2cNqXky+Pk7m81QDMyUV4ENp82VzMqlBMIfXRtmJi397QBVNHN9pfQqkUvLUA8Q8iog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0dNSOxzm7RV2fjlIRIo1QXqM2BVK+QKtn21V/K2XJ8g=;
 b=ZVvVpFEjDlpom+EMfzB941lYY0iXYYIimdTU2TTIs59uJIUX/LQ48VyV3jqg0yMhQLfLKM33aoBm8YaYy8x/JTJNiHRlMEh4K/IJPUcIXfhlYvhDUGhf0GT9Cd7lMGOCuslJpYaaskVU+uiwCOfL+oAs/+qXOzsWEMK9NhOzeudbBzq7eDoEDGYjZvqseLQS6fMUGRfF2GElhm4LuIE8TSyafXqzuIGaSp8xr9ctspEf/wYBBquwHtm/WYA8/fb7hu+FGiYUOhtTIwVXDM6cxXCyTJksEIELIgE6i5V2n/nC3M/+7sUaTNU0P7Nv9hYZQRF+xkA5IL4ANLKPciwWCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0dNSOxzm7RV2fjlIRIo1QXqM2BVK+QKtn21V/K2XJ8g=;
 b=XHMwVnOrD1h92VGIFIpvJbvNFRJDe+2a0ULN5hjPDZgpfslF4wCrJYEEv7mkii5nO7Mi+6I0Be1xnK3jKklNk77NPYt5XrkH9a9alyfVYH0QmhmPuQDFn5ivp5DZH2OM0PkLY1sVluA+4oS0DMc9Bdskh0dyx5kyK7wmR/4/psg=
Received: from MWH0EPF00056D19.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:1a) by MW4PR12MB5666.namprd12.prod.outlook.com
 (2603:10b6:303:188::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Mon, 9 Oct
 2023 07:17:28 +0000
Received: from CO1PEPF000044FB.namprd21.prod.outlook.com
 (2a01:111:f403:f807::1) by MWH0EPF00056D19.outlook.office365.com
 (2603:1036:d20::b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.9 via Frontend
 Transport; Mon, 9 Oct 2023 07:17:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1PEPF000044FB.mail.protection.outlook.com (10.167.241.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6907.2 via Frontend Transport; Mon, 9 Oct 2023 07:17:28 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 9 Oct
 2023 02:17:22 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 9 Oct
 2023 02:17:21 -0500
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.27 via Frontend
 Transport; Mon, 9 Oct 2023 02:17:19 -0500
From: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To: <linux-clk@vger.kernel.org>
CC: <git@amd.com>, <devicetree@vger.kernel.org>, <sboyd@kernel.org>,
	<krzysztof.kozlowski@linaro.org>, <mturquette@baylibre.com>,
	<robh+dt@kernel.org>, <conor+dt@kernel.org>, <michal.simek@amd.com>
Subject: [PATCH v7 2/2] clocking-wizard: Add support for versal clocking wizard
Date: Mon, 9 Oct 2023 12:47:12 +0530
Message-ID: <20231009071712.26469-3-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231009071712.26469-1-shubhrajyoti.datta@amd.com>
References: <20231009071712.26469-1-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044FB:EE_|MW4PR12MB5666:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a14ceb4-d5d7-4511-f3e5-08dbc897cbba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Q03AQGKq192YNUOKFVrzug6YaLK+PpUA347qHOOqhNEx2LPEnFSd+YTY/Hao6eUAWjMb/HuX30Foi99FpNmuRTBylYMWCZaoW0k1V2PbEqqpWfXvJ+Uk05D2s7sQsjAYixrd8fceYUcpUm3ApCXbzO5vUTCFIIoV2RVntVSeh6heUIDwP+pvGZb1L+ZjdxLpTCpePordAh2IWfLgHxIeAwpIo6t/FUJpjmaU3y4j7a0OolOjkJlVdUEPzDAgoTk6zovXtLirxXmhvQZhzz7yHdx6TQ194CpNCyFYTod/xZnaTWYtxY/biL65m8prP1us+FV6jZJPTxc8wWcn2sStDK1EVtLra1ODtoq+DK8dl7VXf61qZ+fFgI9s7pSiugZnq8ux10bbicG2+QlF2SDo7cmDpPAtFD1kqPucbbcoIbR0j3JPLFCxWavP4rMD5NRfHV8I/bICZcvUFdHN4vr4OO4pRw9l5k3gr5Y7Jrq2EZKat7RgCbCjpMtZeovVuazfmxqNMNMPQp7x0fN5nAEBlGnQ2BerJGHtmcnaZfMDCVk01+/kcHQWtKyfUTPu3Xf1GEt+EruRyo9qgV5ZFV3K8z19I03zwN31vxjHd0Hphpozxsk9DH+/17hNIsetkvLuyi9UijepjJUzTIxEsfcxt82b1L6nsdV6/pl22JEhA1pi+WVxmKikjNF/KgC+N+vGQ9k0tGY9VKRaf/cIwSAu1Y4BUT/9xVQYq3qt6KL6dumRUBHA9sE1yjo2aySMlkhKhUJud4ZDolUIXjhGaukUig==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(82310400011)(40470700004)(46966006)(36840700001)(40480700001)(40460700003)(83380400001)(1076003)(2616005)(336012)(426003)(26005)(47076005)(36860700001)(54906003)(70206006)(70586007)(316002)(6916009)(8936002)(8676002)(4326008)(5660300002)(41300700001)(44832011)(6666004)(2906002)(30864003)(82740400003)(966005)(478600001)(36756003)(356005)(81166007)(86362001)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 07:17:28.5294
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a14ceb4-d5d7-4511-f3e5-08dbc897cbba
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000044FB.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5666
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add support for Clocking Wizard for Versal adaptive compute
acceleration platforms. The Versal clocking wizard differs
in the programming model and the register layout.
The CLKFBOUT_1 registers are at offset of 0x200
instead of the 0x330 in Versal. In Versal clocking wizard the low and
high time is programmed instead of the divisor.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

---

Changes in v7:
Remove the unused variables

Changes in v6:
Update the commit message
Remove the closes tag

Changes in v5:
Update the commit message
register separate clock ops for versal
use device match data

Changes in v4:
Update changelog
Fix warn
Previously we had tried to upstream [1] separate driver for
clocking wizard. It was decided to add support to the current
driver. So abandoning the series.
[1] https://lore.kernel.org/all/20221122121255.6823-1-shubhrajyoti.datta@amd.com/

Changes in v3:
rename the clocks to clk_in1 and s_axi_clk dt
rename the clocks to clk_in1 and s_axi_clk in driver

Changes in v2:
rename the clocks clk_in1 to in1 and s_axi_clk to s_axi in dt
rename the clocks clk_in1 to in1 and s_axi_clk to s_axi in driver
update the warn
Update the compatible to reflect versal

 drivers/clk/xilinx/clk-xlnx-clock-wizard.c | 626 ++++++++++++++++++---
 1 file changed, 535 insertions(+), 91 deletions(-)

diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
index d56822ce6126..5ae55107b934 100644
--- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
@@ -23,15 +23,41 @@
 #define WZRD_NUM_OUTPUTS	7
 #define WZRD_ACLK_MAX_FREQ	250000000UL
 
-#define WZRD_CLK_CFG_REG(n)	(0x200 + 4 * (n))
+#define WZRD_CLK_CFG_REG(v, n)	(0x200 + 0x130 * (v) + 4 * (n))
 
 #define WZRD_CLKOUT0_FRAC_EN	BIT(18)
-#define WZRD_CLKFBOUT_FRAC_EN	BIT(26)
+#define WZRD_CLKFBOUT_1		0
+#define WZRD_CLKFBOUT_2		1
+#define WZRD_CLKOUT0_1		2
+#define WZRD_CLKOUT0_2		3
+#define WZRD_DESKEW_2		20
+#define WZRD_DIVCLK		21
+#define WZRD_CLKFBOUT_4		51
+#define WZRD_CLKFBOUT_3		48
+#define WZRD_DUTY_CYCLE		2
+#define WZRD_O_DIV		4
+
+#define WZRD_CLKFBOUT_FRAC_EN	BIT(1)
+#define WZRD_CLKFBOUT_PREDIV2	(BIT(11) | BIT(12) | BIT(9))
+#define WZRD_MULT_PREDIV2	(BIT(10) | BIT(9) | BIT(12))
+#define WZRD_CLKFBOUT_EDGE	BIT(8)
+#define WZRD_P5EN		BIT(13)
+#define WZRD_P5EN_SHIFT		13
+#define WZRD_P5FEDGE		BIT(15)
+#define WZRD_DIVCLK_EDGE	BIT(10)
+#define WZRD_P5FEDGE_SHIFT	15
+#define WZRD_CLKOUT0_PREDIV2	BIT(11)
+#define WZRD_EDGE_SHIFT		8
 
 #define WZRD_CLKFBOUT_MULT_SHIFT	8
 #define WZRD_CLKFBOUT_MULT_MASK		(0xff << WZRD_CLKFBOUT_MULT_SHIFT)
+#define WZRD_CLKFBOUT_L_SHIFT	0
+#define WZRD_CLKFBOUT_H_SHIFT	8
+#define WZRD_CLKFBOUT_L_MASK	GENMASK(7, 0)
+#define WZRD_CLKFBOUT_H_MASK	GENMASK(15, 8)
 #define WZRD_CLKFBOUT_FRAC_SHIFT	16
 #define WZRD_CLKFBOUT_FRAC_MASK		(0x3ff << WZRD_CLKFBOUT_FRAC_SHIFT)
+#define WZRD_VERSAL_FRAC_MASK		GENMASK(5, 0)
 #define WZRD_DIVCLK_DIVIDE_SHIFT	0
 #define WZRD_DIVCLK_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
 #define WZRD_CLKOUT_DIVIDE_SHIFT	0
@@ -45,6 +71,7 @@
 #define WZRD_DR_STATUS_REG_OFFSET	0x04
 #define WZRD_DR_LOCK_BIT_MASK		0x00000001
 #define WZRD_DR_INIT_REG_OFFSET		0x25C
+#define WZRD_DR_INIT_VERSAL_OFFSET	0x14
 #define WZRD_DR_DIV_TO_PHASE_OFFSET	4
 #define WZRD_DR_BEGIN_DYNA_RECONF	0x03
 #define WZRD_DR_BEGIN_DYNA_RECONF_5_2	0x07
@@ -52,6 +79,8 @@
 
 #define WZRD_USEC_POLL		10
 #define WZRD_TIMEOUT_POLL		1000
+#define WZRD_FRAC_GRADIENT		64
+#define PREDIV2_MULT			2
 
 /* Divider limits, from UG572 Table 3-4 for Ultrascale+ */
 #define DIV_O				0x01
@@ -65,6 +94,14 @@
 #define WZRD_VCO_MAX			1600000000
 #define WZRD_O_MIN			1
 #define WZRD_O_MAX			128
+#define VER_WZRD_M_MIN			4
+#define VER_WZRD_M_MAX			432
+#define VER_WZRD_D_MIN			1
+#define VER_WZRD_D_MAX			123
+#define VER_WZRD_VCO_MIN		2160000000ULL
+#define VER_WZRD_VCO_MAX		4320000000ULL
+#define VER_WZRD_O_MIN			2
+#define VER_WZRD_O_MAX			511
 #define WZRD_MIN_ERR			20000
 #define WZRD_FRAC_POINTS		1000
 
@@ -135,6 +172,10 @@ struct clk_wzrd_divider {
 	spinlock_t *lock;  /* divider lock */
 };
 
+struct versal_clk_data {
+	bool is_versal;
+};
+
 #define to_clk_wzrd(_nb) container_of(_nb, struct clk_wzrd, nb)
 
 /* maximum frequencies for input/output clocks per speed grade */
@@ -147,6 +188,31 @@ static const unsigned long clk_wzrd_max_freq[] = {
 /* spin lock variable for clk_wzrd */
 static DEFINE_SPINLOCK(clkwzrd_lock);
 
+static unsigned long clk_wzrd_recalc_rate_ver(struct clk_hw *hw,
+					      unsigned long parent_rate)
+{
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr = divider->base + divider->offset;
+	u32 div, p5en, edge, prediv2, all;
+	unsigned int vall, valh;
+
+	edge = !!(readl(div_addr) & WZRD_CLKFBOUT_EDGE);
+	p5en = !!(readl(div_addr) & WZRD_P5EN);
+	prediv2 = !!(readl(div_addr) & WZRD_CLKOUT0_PREDIV2);
+	vall = readl(div_addr + 4) & WZRD_CLKFBOUT_L_MASK;
+	valh = readl(div_addr + 4) >> WZRD_CLKFBOUT_H_SHIFT;
+	all = valh + vall + edge;
+	if (!all)
+		all = 1;
+
+	if (prediv2)
+		div = 2 * all + prediv2 * p5en;
+	else
+		div = all;
+
+	return DIV_ROUND_UP_ULL((u64)parent_rate, div);
+}
+
 static unsigned long clk_wzrd_recalc_rate(struct clk_hw *hw,
 					  unsigned long parent_rate)
 {
@@ -161,19 +227,64 @@ static unsigned long clk_wzrd_recalc_rate(struct clk_hw *hw,
 			divider->flags, divider->width);
 }
 
+static int clk_wzrd_ver_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
+					 unsigned long parent_rate)
+{
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr = divider->base + divider->offset;
+	u32 value, regh, edged, p5en, p5fedge, regval, regval1;
+	unsigned long flags = 0;
+	int err;
+
+	spin_lock_irqsave(divider->lock, flags);
+
+	value = DIV_ROUND_CLOSEST(parent_rate, rate);
+
+	regh = (value / 4);
+	regval1 = readl(div_addr);
+	regval1 |= WZRD_CLKFBOUT_PREDIV2;
+	regval1 = regval1 & ~(WZRD_CLKFBOUT_EDGE | WZRD_P5EN | WZRD_P5FEDGE);
+	if (value % 4 > 1) {
+		edged = 1;
+		regval1 |= (edged << WZRD_EDGE_SHIFT);
+	}
+	p5fedge = value % 2;
+	p5en = value % 2;
+	regval1 = regval1 | p5en << WZRD_P5EN_SHIFT | p5fedge << WZRD_P5FEDGE_SHIFT;
+	writel(regval1, div_addr);
+
+	regval = regh | regh << WZRD_CLKFBOUT_H_SHIFT;
+	writel(regval, div_addr + 4);
+	/* Check status register */
+	err = readl_poll_timeout_atomic(divider->base + WZRD_DR_STATUS_REG_OFFSET,
+					value, value & WZRD_DR_LOCK_BIT_MASK,
+					WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	if (err)
+		goto err_reconfig;
+
+	/* Initiate reconfiguration */
+	writel(WZRD_DR_BEGIN_DYNA_RECONF,
+	       divider->base + WZRD_DR_INIT_VERSAL_OFFSET);
+
+	/* Check status register */
+	err = readl_poll_timeout_atomic(divider->base + WZRD_DR_STATUS_REG_OFFSET,
+					value, value & WZRD_DR_LOCK_BIT_MASK,
+					WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+err_reconfig:
+	spin_unlock_irqrestore(divider->lock, flags);
+	return err;
+}
+
 static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
 				     unsigned long parent_rate)
 {
-	int err;
-	u32 value;
-	unsigned long flags = 0;
 	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
 	void __iomem *div_addr = divider->base + divider->offset;
+	unsigned long flags = 0;
+	u32 value;
+	int err;
 
-	if (divider->lock)
-		spin_lock_irqsave(divider->lock, flags);
-	else
-		__acquire(divider->lock);
+	spin_lock_irqsave(divider->lock, flags);
 
 	value = DIV_ROUND_CLOSEST(parent_rate, rate);
 
@@ -185,9 +296,9 @@ static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
 	writel(0x00, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
 
 	/* Check status register */
-	err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET,
-				 value, value & WZRD_DR_LOCK_BIT_MASK,
-				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	err = readl_poll_timeout_atomic(divider->base + WZRD_DR_STATUS_REG_OFFSET,
+					value, value & WZRD_DR_LOCK_BIT_MASK,
+					WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
 	if (err)
 		goto err_reconfig;
 
@@ -198,14 +309,11 @@ static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
 	       divider->base + WZRD_DR_INIT_REG_OFFSET);
 
 	/* Check status register */
-	err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET,
-				 value, value & WZRD_DR_LOCK_BIT_MASK,
-				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	err = readl_poll_timeout_atomic(divider->base + WZRD_DR_STATUS_REG_OFFSET,
+					value, value & WZRD_DR_LOCK_BIT_MASK,
+					WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
 err_reconfig:
-	if (divider->lock)
-		spin_unlock_irqrestore(divider->lock, flags);
-	else
-		__release(divider->lock);
+	spin_unlock_irqrestore(divider->lock, flags);
 	return err;
 }
 
@@ -223,18 +331,66 @@ static long clk_wzrd_round_rate(struct clk_hw *hw, unsigned long rate,
 	return *prate / div;
 }
 
+static int clk_wzrd_get_divisors_ver(struct clk_hw *hw, unsigned long rate,
+				     unsigned long parent_rate)
+{
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	u64 vco_freq, freq, diff, vcomin, vcomax;
+	u32 m, d, o;
+	u32 mmin, mmax, dmin, dmax, omin, omax;
+
+	mmin = VER_WZRD_M_MIN;
+	mmax = VER_WZRD_M_MAX;
+	dmin = VER_WZRD_D_MIN;
+	dmax = VER_WZRD_D_MAX;
+	omin = VER_WZRD_O_MIN;
+	omax = VER_WZRD_O_MAX;
+	vcomin = VER_WZRD_VCO_MIN;
+	vcomax = VER_WZRD_VCO_MAX;
+
+	for (m = mmin; m <= mmax; m++) {
+		for (d = dmin; d <= dmax; d++) {
+			vco_freq = DIV_ROUND_CLOSEST((parent_rate * m), d);
+			if (vco_freq >= vcomin && vco_freq <= vcomax) {
+				for (o = omin; o <= omax; o++) {
+					freq = DIV_ROUND_CLOSEST_ULL(vco_freq, o);
+					diff = abs(freq - rate);
+
+					if (diff < WZRD_MIN_ERR) {
+						divider->m = m;
+						divider->d = d;
+						divider->o = o;
+						return 0;
+					}
+				}
+			}
+		}
+	}
+	return -EBUSY;
+}
+
 static int clk_wzrd_get_divisors(struct clk_hw *hw, unsigned long rate,
 				 unsigned long parent_rate)
 {
 	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
-	unsigned long vco_freq, freq, diff;
+	u64 vco_freq, freq, diff, vcomin, vcomax;
 	u32 m, d, o;
-
-	for (m = WZRD_M_MIN; m <= WZRD_M_MAX; m++) {
-		for (d = WZRD_D_MIN; d <= WZRD_D_MAX; d++) {
+	u32 mmin, mmax, dmin, dmax, omin, omax;
+
+	mmin = WZRD_M_MIN;
+	mmax = WZRD_M_MAX;
+	dmin = WZRD_D_MIN;
+	dmax = WZRD_D_MAX;
+	omin = WZRD_O_MIN;
+	omax = WZRD_O_MAX;
+	vcomin = WZRD_VCO_MIN;
+	vcomax = WZRD_VCO_MAX;
+
+	for (m = mmin; m <= mmax; m++) {
+		for (d = dmin; d <= dmax; d++) {
 			vco_freq = DIV_ROUND_CLOSEST((parent_rate * m), d);
-			if (vco_freq >= WZRD_VCO_MIN && vco_freq <= WZRD_VCO_MAX) {
-				for (o = WZRD_O_MIN; o <= WZRD_O_MAX; o++) {
+			if (vco_freq >= vcomin && vco_freq <= vcomax) {
+				for (o = omin; o <= omax; o++) {
 					freq = DIV_ROUND_CLOSEST_ULL(vco_freq, o);
 					diff = abs(freq - rate);
 
@@ -251,12 +407,99 @@ static int clk_wzrd_get_divisors(struct clk_hw *hw, unsigned long rate,
 	return -EBUSY;
 }
 
+static int clk_wzrd_reconfig(struct clk_wzrd_divider *divider, void __iomem *div_addr)
+{
+	u32 value;
+	int err;
+
+	/* Check status register */
+	err = readl_poll_timeout_atomic(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
+					value & WZRD_DR_LOCK_BIT_MASK,
+					WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	if (err)
+		return -ETIMEDOUT;
+
+	/* Initiate reconfiguration */
+	writel(WZRD_DR_BEGIN_DYNA_RECONF, div_addr);
+	/* Check status register */
+	return readl_poll_timeout_atomic(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
+				 value & WZRD_DR_LOCK_BIT_MASK,
+				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+}
+
+static int clk_wzrd_dynamic_ver_all_nolock(struct clk_hw *hw, unsigned long rate,
+					   unsigned long parent_rate)
+{
+	u32 regh, edged, p5en, p5fedge, value2, m, regval, regval1, value;
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr;
+	int err;
+
+	err = clk_wzrd_get_divisors_ver(hw, rate, parent_rate);
+	if (err)
+		return err;
+
+	writel(0, divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKFBOUT_4));
+
+	m = divider->m;
+	edged = m % WZRD_DUTY_CYCLE;
+	regh = m / WZRD_DUTY_CYCLE;
+	regval1 = readl(divider->base + WZRD_CLK_CFG_REG(1,
+							 WZRD_CLKFBOUT_1));
+	regval1 |= WZRD_MULT_PREDIV2;
+	if (edged)
+		regval1 = regval1 | WZRD_CLKFBOUT_EDGE;
+	else
+		regval1 = regval1 & ~WZRD_CLKFBOUT_EDGE;
+
+	writel(regval1, divider->base + WZRD_CLK_CFG_REG(1,
+							 WZRD_CLKFBOUT_1));
+	regval1 = regh | regh << WZRD_CLKFBOUT_H_SHIFT;
+	writel(regval1, divider->base + WZRD_CLK_CFG_REG(1,
+							 WZRD_CLKFBOUT_2));
+
+	value2 = divider->d;
+	edged = value2 % WZRD_DUTY_CYCLE;
+	regh = (value2 / WZRD_DUTY_CYCLE);
+	regval1 = FIELD_PREP(WZRD_DIVCLK_EDGE, edged);
+	writel(regval1, divider->base + WZRD_CLK_CFG_REG(1,
+							 WZRD_DESKEW_2));
+	regval1 = regh | regh << WZRD_CLKFBOUT_H_SHIFT;
+	writel(regval1, divider->base + WZRD_CLK_CFG_REG(1, WZRD_DIVCLK));
+
+	value = divider->o;
+	regh = value / WZRD_O_DIV;
+	regval1 = readl(divider->base + WZRD_CLK_CFG_REG(1,
+							 WZRD_CLKOUT0_1));
+	regval1 |= WZRD_CLKFBOUT_PREDIV2;
+	regval1 = regval1 & ~(WZRD_CLKFBOUT_EDGE | WZRD_P5EN | WZRD_P5FEDGE);
+
+	if (value % WZRD_O_DIV > 1) {
+		edged = 1;
+		regval1 |= edged << WZRD_CLKFBOUT_H_SHIFT;
+	}
+
+	p5fedge = value % WZRD_DUTY_CYCLE;
+	p5en = value % WZRD_DUTY_CYCLE;
+
+	regval1 = regval1 | FIELD_PREP(WZRD_P5EN, p5en) | FIELD_PREP(WZRD_P5FEDGE, p5fedge);
+	writel(regval1, divider->base + WZRD_CLK_CFG_REG(1,
+							 WZRD_CLKOUT0_1));
+	regval = regh | regh << WZRD_CLKFBOUT_H_SHIFT;
+	writel(regval, divider->base + WZRD_CLK_CFG_REG(1,
+							WZRD_CLKOUT0_2));
+	div_addr = divider->base + WZRD_DR_INIT_VERSAL_OFFSET;
+
+	return clk_wzrd_reconfig(divider, div_addr);
+}
+
 static int clk_wzrd_dynamic_all_nolock(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
 	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
 	unsigned long vco_freq, rate_div, clockout0_div;
-	u32 reg, pre, value, f;
+	void __iomem *div_addr = divider->base;
+	u32 reg, pre, f;
 	int err;
 
 	err = clk_wzrd_get_divisors(hw, rate, parent_rate);
@@ -275,28 +518,15 @@ static int clk_wzrd_dynamic_all_nolock(struct clk_hw *hw, unsigned long rate,
 	reg = FIELD_PREP(WZRD_CLKOUT_DIVIDE_MASK, clockout0_div) |
 	      FIELD_PREP(WZRD_CLKOUT0_FRAC_MASK, f);
 
-	writel(reg, divider->base + WZRD_CLK_CFG_REG(2));
+	writel(reg, divider->base + WZRD_CLK_CFG_REG(0, 2));
 	/* Set divisor and clear phase offset */
 	reg = FIELD_PREP(WZRD_CLKFBOUT_MULT_MASK, divider->m) |
 	      FIELD_PREP(WZRD_DIVCLK_DIVIDE_MASK, divider->d);
-	writel(reg, divider->base + WZRD_CLK_CFG_REG(0));
-	writel(divider->o, divider->base + WZRD_CLK_CFG_REG(2));
-	writel(0, divider->base + WZRD_CLK_CFG_REG(3));
-	/* Check status register */
-	err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
-				 value & WZRD_DR_LOCK_BIT_MASK,
-				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
-	if (err)
-		return -ETIMEDOUT;
-
-	/* Initiate reconfiguration */
-	writel(WZRD_DR_BEGIN_DYNA_RECONF,
-	       divider->base + WZRD_DR_INIT_REG_OFFSET);
-
-	/* Check status register */
-	return readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
-				 value & WZRD_DR_LOCK_BIT_MASK,
-				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	writel(reg, divider->base + WZRD_CLK_CFG_REG(0, 0));
+	writel(divider->o, divider->base + WZRD_CLK_CFG_REG(0, 2));
+	writel(0, divider->base + WZRD_CLK_CFG_REG(0, 3));
+	div_addr = divider->base + WZRD_DR_INIT_REG_OFFSET;
+	return clk_wzrd_reconfig(divider, div_addr);
 }
 
 static int clk_wzrd_dynamic_all(struct clk_hw *hw, unsigned long rate,
@@ -315,21 +545,103 @@ static int clk_wzrd_dynamic_all(struct clk_hw *hw, unsigned long rate,
 	return ret;
 }
 
+static int clk_wzrd_dynamic_all_ver(struct clk_hw *hw, unsigned long rate,
+				    unsigned long parent_rate)
+{
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	unsigned long flags = 0;
+	int ret;
+
+	spin_lock_irqsave(divider->lock, flags);
+
+	ret = clk_wzrd_dynamic_ver_all_nolock(hw, rate, parent_rate);
+
+	spin_unlock_irqrestore(divider->lock, flags);
+
+	return ret;
+}
+
 static unsigned long clk_wzrd_recalc_rate_all(struct clk_hw *hw,
 					      unsigned long parent_rate)
 {
 	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
 	u32 m, d, o, div, reg, f;
 
-	reg = readl(divider->base + WZRD_CLK_CFG_REG(0));
+	reg = readl(divider->base + WZRD_CLK_CFG_REG(0, 0));
 	d = FIELD_GET(WZRD_DIVCLK_DIVIDE_MASK, reg);
 	m = FIELD_GET(WZRD_CLKFBOUT_MULT_MASK, reg);
-	reg = readl(divider->base + WZRD_CLK_CFG_REG(2));
+	reg = readl(divider->base + WZRD_CLK_CFG_REG(0, 2));
 	o = FIELD_GET(WZRD_DIVCLK_DIVIDE_MASK, reg);
 	f = FIELD_GET(WZRD_CLKOUT0_FRAC_MASK, reg);
 
 	div = DIV_ROUND_CLOSEST(d * (WZRD_FRAC_POINTS * o + f), WZRD_FRAC_POINTS);
 	return divider_recalc_rate(hw, parent_rate * m, div, divider->table,
+		divider->flags, divider->width);
+}
+
+static unsigned long clk_wzrd_recalc_rate_all_ver(struct clk_hw *hw,
+						  unsigned long parent_rate)
+{
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	u32 edged, div2, p5en, edge, prediv2, all, regl, regh, mult;
+	u32 div, reg;
+
+	edge = !!(readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKFBOUT_1)) &
+			WZRD_CLKFBOUT_EDGE);
+
+	reg = readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKFBOUT_2));
+	regl = FIELD_GET(WZRD_CLKFBOUT_L_MASK, reg);
+	regh = FIELD_GET(WZRD_CLKFBOUT_H_MASK, reg);
+
+	mult = regl + regh + edge;
+	if (!mult)
+		mult = 1;
+
+	regl = readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKFBOUT_4)) &
+		     WZRD_CLKFBOUT_FRAC_EN;
+	if (regl) {
+		regl = readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKFBOUT_3))
+				& WZRD_VERSAL_FRAC_MASK;
+		mult = mult * WZRD_FRAC_GRADIENT + regl;
+		parent_rate = DIV_ROUND_CLOSEST((parent_rate * mult), WZRD_FRAC_GRADIENT);
+	} else {
+		parent_rate = parent_rate * mult;
+	}
+
+	/* O Calculation */
+	reg = readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKOUT0_1));
+	edged = FIELD_GET(WZRD_CLKFBOUT_EDGE, reg);
+	p5en = FIELD_GET(WZRD_P5EN, reg);
+	prediv2 = FIELD_GET(WZRD_CLKOUT0_PREDIV2, reg);
+
+	reg = readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_CLKOUT0_2));
+	/* Low time */
+	regl = FIELD_GET(WZRD_CLKFBOUT_L_MASK, reg);
+	/* High time */
+	regh = FIELD_GET(WZRD_CLKFBOUT_H_MASK, reg);
+	all = regh + regl + edged;
+	if (!all)
+		all = 1;
+
+	if (prediv2)
+		div2 = PREDIV2_MULT * all + p5en;
+	else
+		div2 = all;
+
+	/* D calculation */
+	edged = !!(readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_DESKEW_2)) &
+		     WZRD_DIVCLK_EDGE);
+	reg = readl(divider->base + WZRD_CLK_CFG_REG(1, WZRD_DIVCLK));
+	/* Low time */
+	regl = FIELD_GET(WZRD_CLKFBOUT_L_MASK, reg);
+	/* High time */
+	regh = FIELD_GET(WZRD_CLKFBOUT_H_MASK, reg);
+	div = regl + regh + edged;
+	if (!div)
+		div = 1;
+
+	div = div * div2;
+	return divider_recalc_rate(hw, parent_rate, div, divider->table,
 			divider->flags, divider->width);
 }
 
@@ -360,6 +672,18 @@ static long clk_wzrd_round_rate_all(struct clk_hw *hw, unsigned long rate,
 	return rate;
 }
 
+static const struct clk_ops clk_wzrd_ver_divider_ops = {
+	.round_rate = clk_wzrd_round_rate,
+	.set_rate = clk_wzrd_ver_dynamic_reconfig,
+	.recalc_rate = clk_wzrd_recalc_rate_ver,
+};
+
+static const struct clk_ops clk_wzrd_ver_div_all_ops = {
+	.round_rate = clk_wzrd_round_rate_all,
+	.set_rate = clk_wzrd_dynamic_all_ver,
+	.recalc_rate = clk_wzrd_recalc_rate_all_ver,
+};
+
 static const struct clk_ops clk_wzrd_clk_divider_ops = {
 	.round_rate = clk_wzrd_round_rate,
 	.set_rate = clk_wzrd_dynamic_reconfig,
@@ -484,6 +808,53 @@ static struct clk *clk_wzrd_register_divf(struct device *dev,
 	return hw->clk;
 }
 
+static struct clk *clk_wzrd_ver_register_divider(struct device *dev,
+						 const char *name,
+						 const char *parent_name,
+						 unsigned long flags,
+						 void __iomem *base,
+						 u16 offset,
+						 u8 shift, u8 width,
+						 u8 clk_divider_flags,
+						 u32 div_type,
+						 spinlock_t *lock)
+{
+	struct clk_wzrd_divider *div;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
+
+	div = devm_kzalloc(dev, sizeof(*div), GFP_KERNEL);
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	if (clk_divider_flags & CLK_DIVIDER_READ_ONLY)
+		init.ops = &clk_divider_ro_ops;
+	else if (div_type == DIV_O)
+		init.ops = &clk_wzrd_ver_divider_ops;
+	else
+		init.ops = &clk_wzrd_ver_div_all_ops;
+	init.flags = flags;
+	init.parent_names =  &parent_name;
+	init.num_parents =  1;
+
+	div->base = base;
+	div->offset = offset;
+	div->shift = shift;
+	div->width = width;
+	div->flags = clk_divider_flags;
+	div->lock = lock;
+	div->hw.init = &init;
+
+	hw = &div->hw;
+	ret = devm_clk_hw_register(dev, hw);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return hw->clk;
+}
+
 static struct clk *clk_wzrd_register_divider(struct device *dev,
 					     const char *name,
 					     const char *parent_name,
@@ -588,18 +959,24 @@ static int __maybe_unused clk_wzrd_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
 			 clk_wzrd_resume);
 
+static const struct versal_clk_data versal_data = {
+	.is_versal	= true,
+};
+
 static int clk_wzrd_probe(struct platform_device *pdev)
 {
-	int i, ret;
+	const char *clkout_name, *clk_name, *clk_mul_name;
+	u32 regl, regh, edge, regld, reghd, edged, div;
+	struct device_node *np = pdev->dev.of_node;
+	const struct versal_clk_data *data;
+	struct clk_wzrd *clk_wzrd;
+	unsigned long flags = 0;
+	void __iomem *ctrl_reg;
 	u32 reg, reg_f, mult;
+	bool is_versal = 0;
 	unsigned long rate;
-	const char *clk_name;
-	void __iomem *ctrl_reg;
-	struct clk_wzrd *clk_wzrd;
-	const char *clkout_name;
-	struct device_node *np = pdev->dev.of_node;
 	int nr_outputs;
-	unsigned long flags = 0;
+	int i, ret;
 
 	clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
 	if (!clk_wzrd)
@@ -641,6 +1018,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
+	data = device_get_match_data(&pdev->dev);
+	if (data)
+		is_versal = data->is_versal;
+
 	ret = of_property_read_u32(np, "xlnx,nr-outputs", &nr_outputs);
 	if (ret || nr_outputs > WZRD_NUM_OUTPUTS) {
 		ret = -EINVAL;
@@ -653,26 +1034,61 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
-	if (nr_outputs == 1) {
-		clk_wzrd->clkout[0] = clk_wzrd_register_divider
+	if (is_versal) {
+		if (nr_outputs == 1) {
+			clk_wzrd->clkout[0] = clk_wzrd_ver_register_divider
 				(&pdev->dev, clkout_name,
 				__clk_get_name(clk_wzrd->clk_in1), 0,
-				clk_wzrd->base, WZRD_CLK_CFG_REG(3),
+				clk_wzrd->base, WZRD_CLK_CFG_REG(is_versal, 3),
 				WZRD_CLKOUT_DIVIDE_SHIFT,
 				WZRD_CLKOUT_DIVIDE_WIDTH,
 				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
 				DIV_ALL, &clkwzrd_lock);
 
-		goto out;
-	}
-
-	reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0));
-	reg_f = reg & WZRD_CLKFBOUT_FRAC_MASK;
-	reg_f =  reg_f >> WZRD_CLKFBOUT_FRAC_SHIFT;
+			goto out;
+		}
+		/* register multiplier */
+		edge = !!(readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 0)) &
+				BIT(8));
+		regl = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 1)) &
+			     WZRD_CLKFBOUT_L_MASK) >> WZRD_CLKFBOUT_L_SHIFT;
+		regh = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 1)) &
+			     WZRD_CLKFBOUT_H_MASK) >> WZRD_CLKFBOUT_H_SHIFT;
+		mult = regl + regh + edge;
+		if (!mult)
+			mult = 1;
+		mult = mult * WZRD_FRAC_GRADIENT;
+
+		regl = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 51)) &
+			     WZRD_CLKFBOUT_FRAC_EN;
+		if (regl) {
+			regl = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 48)) &
+				WZRD_VERSAL_FRAC_MASK;
+			mult = mult + regl;
+		}
+		div = 64;
+	} else {
+		if (nr_outputs == 1) {
+			clk_wzrd->clkout[0] = clk_wzrd_register_divider
+				(&pdev->dev, clkout_name,
+				__clk_get_name(clk_wzrd->clk_in1), 0,
+				clk_wzrd->base, WZRD_CLK_CFG_REG(is_versal, 3),
+				WZRD_CLKOUT_DIVIDE_SHIFT,
+				WZRD_CLKOUT_DIVIDE_WIDTH,
+				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+				DIV_ALL, &clkwzrd_lock);
 
-	reg = reg & WZRD_CLKFBOUT_MULT_MASK;
-	reg =  reg >> WZRD_CLKFBOUT_MULT_SHIFT;
-	mult = (reg * 1000) + reg_f;
+			goto out;
+		}
+		reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 0));
+		reg_f = reg & WZRD_CLKFBOUT_FRAC_MASK;
+		reg_f =  reg_f >> WZRD_CLKFBOUT_FRAC_SHIFT;
+
+		reg = reg & WZRD_CLKFBOUT_MULT_MASK;
+		reg =  reg >> WZRD_CLKFBOUT_MULT_SHIFT;
+		mult = (reg * 1000) + reg_f;
+		div = 1000;
+	}
 	clk_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
 	if (!clk_name) {
 		ret = -ENOMEM;
@@ -681,7 +1097,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clk_in1),
-			0, mult, 1000);
+			0, mult, div);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
@@ -694,13 +1110,29 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_rm_int_clk;
 	}
 
-	ctrl_reg = clk_wzrd->base + WZRD_CLK_CFG_REG(0);
-	/* register div */
-	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_divider
+	if (is_versal) {
+		edged = !!(readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 20)) &
+			     BIT(10));
+		regld = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 21)) &
+			     WZRD_CLKFBOUT_L_MASK) >> WZRD_CLKFBOUT_L_SHIFT;
+		reghd = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 21)) &
+		     WZRD_CLKFBOUT_H_MASK) >> WZRD_CLKFBOUT_H_SHIFT;
+		div = (regld  + reghd + edged);
+		if (!div)
+			div = 1;
+
+		clk_mul_name = __clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]);
+		clk_wzrd->clks_internal[wzrd_clk_mul_div] =
+			clk_register_fixed_factor(&pdev->dev, clk_name,
+						  clk_mul_name, 0, 1, div);
+	} else {
+		ctrl_reg = clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 0);
+		clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_divider
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
 			flags, ctrl_reg, 0, 8, CLK_DIVIDER_ONE_BASED |
 			CLK_DIVIDER_ALLOW_ZERO, &clkwzrd_lock);
+	}
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
 		dev_err(&pdev->dev, "unable to register divider clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
@@ -716,24 +1148,35 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 			goto err_rm_int_clk;
 		}
 
-		if (!i)
-			clk_wzrd->clkout[i] = clk_wzrd_register_divf
-				(&pdev->dev, clkout_name,
-				clk_name, flags,
-				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
-				WZRD_CLKOUT_DIVIDE_SHIFT,
-				WZRD_CLKOUT_DIVIDE_WIDTH,
-				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
-				DIV_O, &clkwzrd_lock);
-		else
-			clk_wzrd->clkout[i] = clk_wzrd_register_divider
-				(&pdev->dev, clkout_name,
-				clk_name, 0,
-				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
-				WZRD_CLKOUT_DIVIDE_SHIFT,
-				WZRD_CLKOUT_DIVIDE_WIDTH,
-				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
-				DIV_O, &clkwzrd_lock);
+		if (is_versal) {
+			clk_wzrd->clkout[i] = clk_wzrd_ver_register_divider
+						(&pdev->dev,
+						 clkout_name, clk_name, 0,
+						 clk_wzrd->base,
+						 (WZRD_CLK_CFG_REG(is_versal, 3) + i * 8),
+						 WZRD_CLKOUT_DIVIDE_SHIFT,
+						 WZRD_CLKOUT_DIVIDE_WIDTH,
+						 CLK_DIVIDER_ONE_BASED |
+						 CLK_DIVIDER_ALLOW_ZERO,
+						 DIV_O, &clkwzrd_lock);
+		} else {
+			if (!i)
+				clk_wzrd->clkout[i] = clk_wzrd_register_divf
+					(&pdev->dev, clkout_name, clk_name, flags, clk_wzrd->base,
+					(WZRD_CLK_CFG_REG(is_versal, 2) + i * 12),
+					WZRD_CLKOUT_DIVIDE_SHIFT,
+					WZRD_CLKOUT_DIVIDE_WIDTH,
+					CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+					DIV_O, &clkwzrd_lock);
+			else
+				clk_wzrd->clkout[i] = clk_wzrd_register_divider
+					(&pdev->dev, clkout_name, clk_name, 0, clk_wzrd->base,
+					(WZRD_CLK_CFG_REG(is_versal, 2) + i * 12),
+					WZRD_CLKOUT_DIVIDE_SHIFT,
+					WZRD_CLKOUT_DIVIDE_WIDTH,
+					CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+					DIV_O, &clkwzrd_lock);
+		}
 		if (IS_ERR(clk_wzrd->clkout[i])) {
 			int j;
 
@@ -799,9 +1242,10 @@ static void clk_wzrd_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id clk_wzrd_ids[] = {
-	{ .compatible = "xlnx,clocking-wizard" },
-	{ .compatible = "xlnx,clocking-wizard-v5.2" },
-	{ .compatible = "xlnx,clocking-wizard-v6.0" },
+	{ .compatible = "xlnx,versal-clk-wizard", .data = &versal_data },
+	{ .compatible = "xlnx,clocking-wizard"   },
+	{ .compatible = "xlnx,clocking-wizard-v5.2"   },
+	{ .compatible = "xlnx,clocking-wizard-v6.0"  },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, clk_wzrd_ids);
-- 
2.17.1


