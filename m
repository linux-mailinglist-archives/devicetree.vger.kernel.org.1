Return-Path: <devicetree+bounces-2001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C24D7A9695
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1AFC1C20D62
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70EAE14F63;
	Thu, 21 Sep 2023 17:03:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFFE17FA
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:03:33 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A217CD0;
	Thu, 21 Sep 2023 10:01:13 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38L5uxXN026704;
	Thu, 21 Sep 2023 10:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=+tmt8dbtTqSwHcdueUDhtt/63vObb0tlhOMDJTofgcc=; b=7E
	sWR96nRMkwANBcO+iU4lBtxq8/NLnlYlLForqxgsbQ6FkLvmThjvAl4yAkDQNYPu
	XBNUH2bYOsiEqL6pGp0IzGlOxPY8w3TbyE3h1kxZ00cqrqh3ccd2IdUkhF5Fyufw
	ABlgUz/gfX/mrNt4ZfH7uzlqjcQ3OhN4OTwoviIqHYBI7TwW1JDPjLQU+bRWXldU
	HoKxejVVJXGynNESISv5EnajSGcXqtQ7m2D4xjDol7t+j/iN0ix4grITf4coM0/T
	RTvYQXFfn04LoE/K4ePKpX9cZpx0r+4++2eUILsLieNHflkRIYvxUe89ag6y+fhF
	PpPllhTDE81p20RjX6VA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t53px31mr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:04:24 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 13BEA100057;
	Thu, 21 Sep 2023 10:04:23 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0BC4C21863D;
	Thu, 21 Sep 2023 10:04:23 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Sep
 2023 10:04:22 +0200
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: Olivia Mackall <olivia@selenic.com>,
        Herbert Xu
	<herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: Lionel Debieve <lionel.debieve@foss.st.com>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Gatien Chevallier <gatien.chevallier@foss.st.com>
Subject: [PATCH v3 6/9] hwrng: stm32 - restrain RNG noise source clock
Date: Thu, 21 Sep 2023 10:02:58 +0200
Message-ID: <20230921080301.253563-7-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
References: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_06,2023-09-20_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

For NIST certification the noise source sampling may need to be
restrained.

This change implements an algorithm that gets the rate of the RNG
clock and apply the correct value in CLKDIV field in RNG_CR register
to force the RNG clock rate to be "max_clock_rate" maximum.

As it is platform-specific, implement it as a compat data.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---
 drivers/char/hw_random/stm32-rng.c | 34 ++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
index 9dac177d5286..819f062f454d 100644
--- a/drivers/char/hw_random/stm32-rng.c
+++ b/drivers/char/hw_random/stm32-rng.c
@@ -23,11 +23,13 @@
 #define RNG_CR_CONFIG1		GENMASK(11, 8)
 #define RNG_CR_NISTC		BIT(12)
 #define RNG_CR_CONFIG2		GENMASK(15, 13)
+#define RNG_CR_CLKDIV_SHIFT	16
+#define RNG_CR_CLKDIV		GENMASK(19, 16)
 #define RNG_CR_CONFIG3		GENMASK(25, 20)
 #define RNG_CR_CONDRST		BIT(30)
 #define RNG_CR_CONFLOCK		BIT(31)
 #define RNG_CR_ENTROPY_SRC_MASK	(RNG_CR_CONFIG1 | RNG_CR_NISTC | RNG_CR_CONFIG2 | RNG_CR_CONFIG3)
-#define RNG_CR_CONFIG_MASK	(RNG_CR_ENTROPY_SRC_MASK | RNG_CR_CED)
+#define RNG_CR_CONFIG_MASK	(RNG_CR_ENTROPY_SRC_MASK | RNG_CR_CED | RNG_CR_CLKDIV)
 
 #define RNG_SR			0x04
 #define RNG_SR_DRDY		BIT(0)
@@ -46,6 +48,7 @@
 #define RNG_NB_RECOVER_TRIES	3
 
 struct stm32_rng_data {
+	uint	max_clock_rate;
 	u32	cr;
 	u32	nscr;
 	u32	htcr;
@@ -238,6 +241,28 @@ static int stm32_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
 	return retval || !wait ? retval : -EIO;
 }
 
+static uint stm32_rng_clock_freq_restrain(struct hwrng *rng)
+{
+	struct stm32_rng_private *priv =
+	    container_of(rng, struct stm32_rng_private, rng);
+	unsigned long clock_rate = 0;
+	uint clock_div = 0;
+
+	clock_rate = clk_get_rate(priv->clk);
+
+	/*
+	 * Get the exponent to apply on the CLKDIV field in RNG_CR register
+	 * No need to handle the case when clock-div > 0xF as it is physically
+	 * impossible
+	 */
+	while ((clock_rate >> clock_div) > priv->data->max_clock_rate)
+		clock_div++;
+
+	pr_debug("RNG clk rate : %lu\n", clk_get_rate(priv->clk) >> clock_div);
+
+	return clock_div;
+}
+
 static int stm32_rng_init(struct hwrng *rng)
 {
 	struct stm32_rng_private *priv =
@@ -259,8 +284,11 @@ static int stm32_rng_init(struct hwrng *rng)
 	 * 0 is an invalid value as it disables all entropy sources.
 	 */
 	if (priv->data->has_cond_reset && priv->data->cr) {
+		uint clock_div = stm32_rng_clock_freq_restrain(rng);
+
 		reg &= ~RNG_CR_CONFIG_MASK;
-		reg |= RNG_CR_CONDRST | (priv->data->cr & RNG_CR_ENTROPY_SRC_MASK);
+		reg |= RNG_CR_CONDRST | (priv->data->cr & RNG_CR_ENTROPY_SRC_MASK) |
+		       (clock_div << RNG_CR_CLKDIV_SHIFT);
 		if (priv->ced)
 			reg &= ~RNG_CR_CED;
 		else
@@ -360,6 +388,7 @@ static const struct dev_pm_ops stm32_rng_pm_ops = {
 
 static const struct stm32_rng_data stm32mp13_rng_data = {
 	.has_cond_reset = true,
+	.max_clock_rate = 48000000,
 	.cr = 0x00F00D00,
 	.nscr = 0x2B5BB,
 	.htcr = 0x969D,
@@ -367,6 +396,7 @@ static const struct stm32_rng_data stm32mp13_rng_data = {
 
 static const struct stm32_rng_data stm32_rng_data = {
 	.has_cond_reset = false,
+	.max_clock_rate = 3000000,
 };
 
 static const struct of_device_id stm32_rng_match[] = {
-- 
2.25.1


