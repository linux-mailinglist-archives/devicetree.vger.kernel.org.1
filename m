Return-Path: <devicetree+bounces-2057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BF77A990B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3ACF9B2124A
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F0744472;
	Thu, 21 Sep 2023 17:22:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D7843AAC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:52 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1666A573FE;
	Thu, 21 Sep 2023 10:18:46 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38L2NWEu015467;
	Thu, 21 Sep 2023 10:04:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type:content-transfer-encoding; s=
	selector1; bh=5eotLIVG1/ksJkXMN8rGNoGTy8xSu69V4NtaWZNrFaI=; b=DI
	UWlzq/3dXk34t+a44Ndwnq671xAg4c3hVLb0IlNqtjV0ugHrbRM0Lvj/pVrKrRaF
	aJrqJFbBpxQ/H+L94kIxBT3BURzzAfxfz+IUYyCPhgnQ/z7WNvEFUFO2Jt+tmtuu
	B/TXBOFaUFH0f8h7YyGqUVT6Kuqu6XJE6iaUfUFrYGscEfdtsF7uwDGPF6sJqiii
	xt7LFFzh/9cCqxaXh8KQMIhMfgHCxES5UJBwgkbYfCyhDRFZ6CurMqFBSFyUY2Ca
	shp28+iH63YNMkar0vDUTZZhoFhPpemMta4hcOOHnBY3i3UvYLdjMU26maLJ/1+Q
	Y6784JN/YyvDUDkhDwXQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t8d0m94y3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:04:22 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7570A100057;
	Thu, 21 Sep 2023 10:04:21 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6C5EC21863D;
	Thu, 21 Sep 2023 10:04:21 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Sep
 2023 10:04:21 +0200
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
Subject: [PATCH v3 4/9] hwrng: stm32 - implement error concealment
Date: Thu, 21 Sep 2023 10:02:56 +0200
Message-ID: <20230921080301.253563-5-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
References: <20230921080301.253563-1-gatien.chevallier@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_06,2023-09-20_01,2023-05-22_02
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The RNG driver should be capable of recovering from an error. Implement
an error concealment API. This avoids irrecoverable RNG state.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---
 drivers/char/hw_random/stm32-rng.c | 114 ++++++++++++++++++++++++++++-
 1 file changed, 110 insertions(+), 4 deletions(-)

diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
index 54bd5807bbac..adefe8edfd07 100644
--- a/drivers/char/hw_random/stm32-rng.c
+++ b/drivers/char/hw_random/stm32-rng.c
@@ -29,10 +29,12 @@
 #define RNG_CR_ENTROPY_SRC_MASK	(RNG_CR_CONFIG1 | RNG_CR_NISTC | RNG_CR_CONFIG2 | RNG_CR_CONFIG3)
 #define RNG_CR_CONFIG_MASK	(RNG_CR_ENTROPY_SRC_MASK | RNG_CR_CED)
 
-#define RNG_SR		0x04
-#define RNG_SR_SEIS	BIT(6)
-#define RNG_SR_CEIS	BIT(5)
-#define RNG_SR_DRDY	BIT(0)
+#define RNG_SR			0x04
+#define RNG_SR_DRDY		BIT(0)
+#define RNG_SR_CECS		BIT(1)
+#define RNG_SR_SECS		BIT(2)
+#define RNG_SR_CEIS		BIT(5)
+#define RNG_SR_SEIS		BIT(6)
 
 #define RNG_DR			0x08
 
@@ -57,6 +59,107 @@ struct stm32_rng_private {
 	bool ced;
 };
 
+/*
+ * Extracts from the STM32 RNG specification when RNG supports CONDRST.
+ *
+ * When a noise source (or seed) error occurs, the RNG stops generating
+ * random numbers and sets to “1” both SEIS and SECS bits to indicate
+ * that a seed error occurred. (...)
+ *
+ * 1. Software reset by writing CONDRST at 1 and at 0 (see bitfield
+ * description for details). This step is needed only if SECS is set.
+ * Indeed, when SEIS is set and SECS is cleared it means RNG performed
+ * the reset automatically (auto-reset).
+ * 2. If SECS was set in step 1 (no auto-reset) wait for CONDRST
+ * to be cleared in the RNG_CR register, then confirm that SEIS is
+ * cleared in the RNG_SR register. Otherwise just clear SEIS bit in
+ * the RNG_SR register.
+ * 3. If SECS was set in step 1 (no auto-reset) wait for SECS to be
+ * cleared by RNG. The random number generation is now back to normal.
+ */
+static int stm32_rng_conceal_seed_error_cond_reset(struct stm32_rng_private *priv)
+{
+	struct device *dev = (struct device *)priv->rng.priv;
+	u32 sr = readl_relaxed(priv->base + RNG_SR);
+	u32 cr = readl_relaxed(priv->base + RNG_CR);
+	int err;
+
+	if (sr & RNG_SR_SECS) {
+		/* Conceal by resetting the subsystem (step 1.) */
+		writel_relaxed(cr | RNG_CR_CONDRST, priv->base + RNG_CR);
+		writel_relaxed(cr & ~RNG_CR_CONDRST, priv->base + RNG_CR);
+	} else {
+		/* RNG auto-reset (step 2.) */
+		writel_relaxed(sr & ~RNG_SR_SEIS, priv->base + RNG_SR);
+		goto end;
+	}
+
+	err = readl_relaxed_poll_timeout_atomic(priv->base + RNG_CR, cr, !(cr & RNG_CR_CONDRST), 10,
+						100000);
+	if (err) {
+		dev_err(dev, "%s: timeout %x\n", __func__, sr);
+		return err;
+	}
+
+	/* Check SEIS is cleared (step 2.) */
+	if (readl_relaxed(priv->base + RNG_SR) & RNG_SR_SEIS)
+		return -EINVAL;
+
+	err = readl_relaxed_poll_timeout_atomic(priv->base + RNG_SR, sr, !(sr & RNG_SR_SECS), 10,
+						100000);
+	if (err) {
+		dev_err(dev, "%s: timeout %x\n", __func__, sr);
+		return err;
+	}
+
+end:
+	return 0;
+}
+
+/*
+ * Extracts from the STM32 RNG specification, when CONDRST is not supported
+ *
+ * When a noise source (or seed) error occurs, the RNG stops generating
+ * random numbers and sets to “1” both SEIS and SECS bits to indicate
+ * that a seed error occurred. (...)
+ *
+ * The following sequence shall be used to fully recover from a seed
+ * error after the RNG initialization:
+ * 1. Clear the SEIS bit by writing it to “0”.
+ * 2. Read out 12 words from the RNG_DR register, and discard each of
+ * them in order to clean the pipeline.
+ * 3. Confirm that SEIS is still cleared. Random number generation is
+ * back to normal.
+ */
+static int stm32_rng_conceal_seed_error_sw_reset(struct stm32_rng_private *priv)
+{
+	unsigned int i = 0;
+	u32 sr = readl_relaxed(priv->base + RNG_SR);
+
+	writel_relaxed(sr & ~RNG_SR_SEIS, priv->base + RNG_SR);
+
+	for (i = 12; i != 0; i--)
+		(void)readl_relaxed(priv->base + RNG_DR);
+
+	if (readl_relaxed(priv->base + RNG_SR) & RNG_SR_SEIS)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int stm32_rng_conceal_seed_error(struct hwrng *rng)
+{
+	struct stm32_rng_private *priv = container_of(rng, struct stm32_rng_private, rng);
+
+	dev_dbg((struct device *)priv->rng.priv, "Concealing seed error\n");
+
+	if (priv->data->has_cond_reset)
+		return stm32_rng_conceal_seed_error_cond_reset(priv);
+	else
+		return stm32_rng_conceal_seed_error_sw_reset(priv);
+};
+
+
 static int stm32_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
 {
 	struct stm32_rng_private *priv =
@@ -66,6 +169,9 @@ static int stm32_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
 
 	pm_runtime_get_sync((struct device *) priv->rng.priv);
 
+	if (readl_relaxed(priv->base + RNG_SR) & RNG_SR_SEIS)
+		stm32_rng_conceal_seed_error(rng);
+
 	while (max >= sizeof(u32)) {
 		sr = readl_relaxed(priv->base + RNG_SR);
 		/* Manage timeout which is based on timer and take */
-- 
2.25.1


