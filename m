Return-Path: <devicetree+bounces-2130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ADA7A9C5A
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76656B22EDC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14B0947C8E;
	Thu, 21 Sep 2023 17:49:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8F047372
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:30 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0981897CA;
	Thu, 21 Sep 2023 10:39:55 -0700 (PDT)
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38L4wDok003244;
	Thu, 21 Sep 2023 10:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=DHZkvrsPbLKzcjpy5QIekMLzqwjqX3hQlQ5u65J1ZwU=; b=Ik
	g2/FyoE5S5MEoPdNYpIF5+vmkH15Wdb3gtypBiinkrzSiBkDWvX7BxnONn2BPMbM
	mqWmn2wo/AvPB70B7Iec6tRF5UYZgXKylJXKOC3v/a4hJqQZkzqNR2eiCP7DnE2m
	1Xfa2yEOi0nlvEd7RwDH5srHh8p/pG3TqZbOUZ/TtH5URbfVPH+u/V6TuPKm/Vlp
	tjW1NTD2VCE+6t7xhmsa8jW/4vSEqHkols1FX8+Oj6dXl8U8gPYne7yeju9ekHxp
	WvjaWzgxZHzrbRoRPxoU8NYJ0E5h1bWJ2bvGzeTRP2H4S22C7jW2L0ks93iZ9SyR
	SzsqOYJsnh3Zl+ZBnXcw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t5nx0sbap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:04:23 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 40D86100058;
	Thu, 21 Sep 2023 10:04:22 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 37D8C21863D;
	Thu, 21 Sep 2023 10:04:22 +0200 (CEST)
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
Subject: [PATCH v3 5/9] hwrng: stm32 - rework error handling in stm32_rng_read()
Date: Thu, 21 Sep 2023 10:02:57 +0200
Message-ID: <20230921080301.253563-6-gatien.chevallier@foss.st.com>
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

Try to conceal seed errors when possible. If, despite the error
concealing tries, a seed error is still present, then return an error.

A clock error does not compromise the hardware block and data can
still be read from RNG_DR. Just warn that the RNG clock is too slow
and clear RNG_SR.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V2:
	- Use WARN_ONCE instead of WARN_ON as it was buggy

 drivers/char/hw_random/stm32-rng.c | 53 +++++++++++++++++++++++-------
 1 file changed, 41 insertions(+), 12 deletions(-)

diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
index adefe8edfd07..9dac177d5286 100644
--- a/drivers/char/hw_random/stm32-rng.c
+++ b/drivers/char/hw_random/stm32-rng.c
@@ -43,6 +43,8 @@
 
 #define RNG_HTCR		0x10
 
+#define RNG_NB_RECOVER_TRIES	3
+
 struct stm32_rng_data {
 	u32	cr;
 	u32	nscr;
@@ -162,10 +164,10 @@ static int stm32_rng_conceal_seed_error(struct hwrng *rng)
 
 static int stm32_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
 {
-	struct stm32_rng_private *priv =
-	    container_of(rng, struct stm32_rng_private, rng);
+	struct stm32_rng_private *priv = container_of(rng, struct stm32_rng_private, rng);
+	unsigned int i = 0;
+	int retval = 0, err = 0;
 	u32 sr;
-	int retval = 0;
 
 	pm_runtime_get_sync((struct device *) priv->rng.priv);
 
@@ -174,30 +176,57 @@ static int stm32_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
 
 	while (max >= sizeof(u32)) {
 		sr = readl_relaxed(priv->base + RNG_SR);
-		/* Manage timeout which is based on timer and take */
-		/* care of initial delay time when enabling rng	*/
+		/*
+		 * Manage timeout which is based on timer and take
+		 * care of initial delay time when enabling the RNG.
+		 */
 		if (!sr && wait) {
-			int err;
-
 			err = readl_relaxed_poll_timeout_atomic(priv->base
 								   + RNG_SR,
 								   sr, sr,
 								   10, 50000);
-			if (err)
+			if (err) {
 				dev_err((struct device *)priv->rng.priv,
 					"%s: timeout %x!\n", __func__, sr);
+				break;
+			}
+		} else if (!sr) {
+			/* The FIFO is being filled up */
+			break;
 		}
 
-		/* If error detected or data not ready... */
 		if (sr != RNG_SR_DRDY) {
-			if (WARN_ONCE(sr & (RNG_SR_SEIS | RNG_SR_CEIS),
-					"bad RNG status - %x\n", sr))
+			if (sr & RNG_SR_SEIS) {
+				err = stm32_rng_conceal_seed_error(rng);
+				i++;
+				if (err && i > RNG_NB_RECOVER_TRIES) {
+					dev_err((struct device *)priv->rng.priv,
+						"Couldn't recover from seed error\n");
+					return -ENOTRECOVERABLE;
+				}
+
+				continue;
+			}
+
+			if (WARN_ONCE((sr & RNG_SR_CEIS), "RNG clock too slow - %x\n", sr))
 				writel_relaxed(0, priv->base + RNG_SR);
-			break;
 		}
 
+		/* Late seed error case: DR being 0 is an error status */
 		*(u32 *)data = readl_relaxed(priv->base + RNG_DR);
+		if (!*(u32 *)data) {
+			err = stm32_rng_conceal_seed_error(rng);
+			i++;
+			if (err && i > RNG_NB_RECOVER_TRIES) {
+				dev_err((struct device *)priv->rng.priv,
+					"Couldn't recover from seed error");
+				return -ENOTRECOVERABLE;
+			}
+
+			continue;
+		}
 
+		i = 0;
 		retval += sizeof(u32);
 		data += sizeof(u32);
 		max -= sizeof(u32);
-- 
2.25.1


