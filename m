Return-Path: <devicetree+bounces-73713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8AC900613
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 16:15:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E71A1C20CF4
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 14:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB12919AA60;
	Fri,  7 Jun 2024 14:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="lXOQyeMO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A041993A6;
	Fri,  7 Jun 2024 14:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.89.224.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717769592; cv=none; b=Z16R6usQj3F06f4Ea+of8NAxpmy5CIdRldGzEMXswsiXvRWAzC8zQ4V9MQ151VfrNWzoGqZsli3m6dkne3X7wK6hIJ9rQBGkgn6mEjdaAoHbtQuBS/ecAMH22Q1rhEAw9jQdJ1OIQAgSMpZdrRvxXigd+3cnRftlacNgAdsQUE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717769592; c=relaxed/simple;
	bh=K1+igkVCwZ4FMBHZVHthEh0f54zWeK8/NyhETRkLTKw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=s1lOSuHEINYc4NaTL3WvbriZC7QpJeUD0SguBOY4ObfgQ52gMesgAMkwYPcYWaFB8V7XkK5do9Wg1uj9k43CAf2TbNazTvg9ut1ooLU391YTo2BvVQs/+OcdTY2JOR/cTFWeGzePV8xyAJo9FWbQZOv1ZD3a9IpEFDo63tKFYP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com; spf=pass smtp.mailfrom=salutedevices.com; dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b=lXOQyeMO; arc=none smtp.client-ip=45.89.224.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=salutedevices.com
Received: from p-infra-ksmg-sc-msk02.sberdevices.ru (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 1D33B12001B;
	Fri,  7 Jun 2024 17:13:05 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 1D33B12001B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1717769585;
	bh=/TaHqVn9jXk9ReiMLJTkZN4qPzLpw4T8LIoTo9kpC3M=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=lXOQyeMOEz5NLqYNu7x9tMcgsoIE0C3ETXMl37qiD3Xh5Q53RpI6Csm9NLrvtrYHd
	 BMK/1bu0Wenben5Thx/N2f/sKcHN+gC/X6xex/NdyCJyryzBKNbOKPcSzV3rjzDAkJ
	 CWQ5hu2D/JGXQGRrO+gLpYyc3G/0fd0GW9LFk7nlyQcBvVQ+hhMe7bF/cnN6q6bmE1
	 r3t95Gc7NgxaLPmElh+6qdjRtQKvn/y7Q211MGS9FAuYCWYFIh/Fn0+TA2Vk8By6xo
	 W/lro8JH3E/A5pEl9cCpRq/QZEu0Zy9wyKzRSpvDQOy+ie0zDg7rcceiPmAUwmYN8I
	 W6VqoUAG00gvA==
Received: from smtp.sberdevices.ru (p-i-exch-sc-m02.sberdevices.ru [172.16.192.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Fri,  7 Jun 2024 17:13:04 +0300 (MSK)
Received: from user-A520M-DS3H.sberdevices.ru (100.64.160.123) by
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 7 Jun 2024 17:13:04 +0300
From: Alexey Romanov <avromanov@salutedevices.com>
To: <neil.armstrong@linaro.org>, <clabbe@baylibre.com>,
	<herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <vadim.fedorenko@linux.dev>
CC: <linux-crypto@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <kernel@salutedevices.com>, Alexey
 Romanov <avromanov@salutedevices.com>
Subject: [PATCH v8 12/23] drivers: crypto: meson: add support for AES-CTR
Date: Fri, 7 Jun 2024 17:12:31 +0300
Message-ID: <20240607141242.2616580-13-avromanov@salutedevices.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607141242.2616580-1-avromanov@salutedevices.com>
References: <20240607141242.2616580-1-avromanov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) To
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 185803 [Jun 07 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: avromanov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 20 0.3.20 743589a8af6ec90b529f2124c2bbfc3ce1d2f20f, {Tracking_from_domain_doesnt_match_to}, 100.64.160.123:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2;salutedevices.com:7.1.1;smtp.sberdevices.ru:7.1.1,5.0.1, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2024/06/07 12:12:00 #25491508
X-KSMG-AntiVirus-Status: Clean, skipped

This patch adds support for AES-CTR algorithm.
Tested via tcrypt and custom tests.

Signed-off-by: Alexey Romanov <avromanov@salutedevices.com>
---
 drivers/crypto/amlogic/amlogic-gxl-cipher.c | 59 +++++++++++++++++++--
 drivers/crypto/amlogic/amlogic-gxl-core.c   |  1 +
 drivers/crypto/amlogic/amlogic-gxl.h        |  2 +
 3 files changed, 58 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/amlogic/amlogic-gxl-cipher.c b/drivers/crypto/amlogic/amlogic-gxl-cipher.c
index 622e179320ff..5c5956a18744 100644
--- a/drivers/crypto/amlogic/amlogic-gxl-cipher.c
+++ b/drivers/crypto/amlogic/amlogic-gxl-cipher.c
@@ -139,6 +139,15 @@ static void meson_unmap_scatterlist(struct skcipher_request *areq, struct meson_
 	}
 }
 
+static void reverse_keyiv(u32 *keyiv, u32 *iv)
+{
+	int size = AES_BLOCK_SIZE / sizeof(u32);
+	int i;
+
+	for (i = 0; i < size; i++)
+		*(keyiv + size - i - 1) = cpu_to_be32(*(iv + i));
+}
+
 static void meson_setup_keyiv_descs(struct cipher_ctx *ctx)
 {
 	struct meson_cipher_req_ctx *rctx = skcipher_request_ctx(ctx->areq);
@@ -155,8 +164,12 @@ static void meson_setup_keyiv_descs(struct cipher_ctx *ctx)
 	if (ctx->tloffset)
 		return;
 
-	if (blockmode == DESC_OPMODE_CBC) {
-		memcpy(op->keyiv + AES_MAX_KEY_SIZE, ctx->areq->iv, ivsize);
+	if (blockmode == DESC_OPMODE_CBC || blockmode == DESC_OPMODE_CTR) {
+		if (blockmode == DESC_OPMODE_CTR && mc->pdata->reverse_keyiv)
+			reverse_keyiv((u32 *)(op->keyiv + AES_MAX_KEY_SIZE), (u32 *)ctx->areq->iv);
+		else
+			memcpy(op->keyiv + AES_MAX_KEY_SIZE, ctx->areq->iv, ivsize);
+
 		dma_sync_single_for_device(mc->dev, ctx->keyiv.addr,
 					   ctx->keyiv.len, DMA_TO_DEVICE);
 	}
@@ -187,6 +200,7 @@ static bool meson_setup_data_descs(struct cipher_ctx *ctx)
 	struct meson_desc *desc = &mc->chanlist[rctx->flow].tl[ctx->tloffset];
 	unsigned int blocksize = crypto_skcipher_blocksize(tfm);
 	unsigned int blockmode = algt->blockmode;
+	unsigned int ivsize = crypto_skcipher_ivsize(tfm);
 	unsigned int maxlen = rounddown(DESC_MAXLEN, blocksize);
 	unsigned int todo;
 	u32 v;
@@ -205,8 +219,15 @@ static bool meson_setup_data_descs(struct cipher_ctx *ctx)
 	ctx->src_offset += todo;
 	ctx->dst_offset += todo;
 
+	if (blockmode == DESC_OPMODE_CTR) {
+		unsigned int nblocks = todo / blocksize;
+
+		while (nblocks--)
+			crypto_inc(ctx->areq->iv, ivsize);
+	}
+
 	v = DESC_OWN | blockmode | op->keymode | todo;
-	if (rctx->op_dir == MESON_ENCRYPT)
+	if (rctx->op_dir == MESON_ENCRYPT || blockmode == DESC_OPMODE_CTR)
 		v |= DESC_ENCRYPTION;
 
 	if (!ctx->cryptlen || ctx->tloffset == MAXDESC)
@@ -326,7 +347,8 @@ static int meson_cipher(struct skcipher_request *areq)
 	if (ctx.keyiv.len == AES_KEYSIZE_192)
 		ctx.keyiv.len = AES_MAX_KEY_SIZE;
 
-	if (algt->blockmode == DESC_OPMODE_CBC) {
+	if (algt->blockmode == DESC_OPMODE_CBC ||
+	    algt->blockmode == DESC_OPMODE_CTR) {
 		memcpy(op->keyiv + AES_MAX_KEY_SIZE, areq->iv, ivsize);
 		ctx.keyiv.len = AES_MAX_KEY_SIZE + ivsize;
 	}
@@ -540,6 +562,35 @@ static struct meson_alg_template algs[] = {
 		.do_one_request = meson_handle_cipher_request,
 	},
 },
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.blockmode = DESC_OPMODE_CTR,
+	.alg.skcipher.base = {
+		.base = {
+			.cra_name = "ctr(aes)",
+			.cra_driver_name = "ctr-aes-gxl",
+			.cra_priority = 400,
+			.cra_blocksize = AES_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_ALLOCATES_MEMORY |
+				CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct meson_cipher_tfm_ctx) + CRYPTO_DMA_PADDING,
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = meson_cipher_init,
+			.cra_exit = meson_cipher_exit,
+		},
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.ivsize		= AES_BLOCK_SIZE,
+		.setkey		= meson_aes_setkey,
+		.encrypt	= meson_skencrypt,
+		.decrypt	= meson_skdecrypt,
+	},
+	.alg.skcipher.op = {
+		.do_one_request = meson_handle_cipher_request,
+	},
+},
 };
 
 int meson_cipher_register(struct meson_dev *mc)
diff --git a/drivers/crypto/amlogic/amlogic-gxl-core.c b/drivers/crypto/amlogic/amlogic-gxl-core.c
index a1aff009f913..2c8387906655 100644
--- a/drivers/crypto/amlogic/amlogic-gxl-core.c
+++ b/drivers/crypto/amlogic/amlogic-gxl-core.c
@@ -282,6 +282,7 @@ static const struct meson_pdata meson_gxl_pdata = {
 	.status_reg = 0x4,
 	.setup_desc_cnt = 3,
 	.hasher_supported = false,
+	.reverse_keyiv = true,
 };
 
 static const struct of_device_id meson_crypto_of_match_table[] = {
diff --git a/drivers/crypto/amlogic/amlogic-gxl.h b/drivers/crypto/amlogic/amlogic-gxl.h
index cebdfd81f6e2..de11e174f03d 100644
--- a/drivers/crypto/amlogic/amlogic-gxl.h
+++ b/drivers/crypto/amlogic/amlogic-gxl.h
@@ -24,6 +24,7 @@
 
 #define DESC_OPMODE_ECB (0 << 26)
 #define DESC_OPMODE_CBC (1 << 26)
+#define DESC_OPMODE_CTR (2 << 26)
 #define DESC_OPMODE_SHA (0 << 26)
 
 #define DESC_MAXLEN GENMASK(16, 0)
@@ -103,6 +104,7 @@ struct meson_pdata {
 	u32 status_reg;
 	u32 setup_desc_cnt;
 	bool hasher_supported;
+	bool reverse_keyiv;
 };
 
 /*
-- 
2.34.1


