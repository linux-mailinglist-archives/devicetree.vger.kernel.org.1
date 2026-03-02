Return-Path: <devicetree+bounces-270091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC9pB12spWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:27:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 620431DBCEC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D0C8306624C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F68441C0D1;
	Mon,  2 Mar 2026 15:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="INDXboOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D01413243
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464446; cv=none; b=l9Y4zIWn4Y5n6ySYkNjljhMZxlRYsMeSwtvOPxL9qClMfE8KvJaHMJ41Up5YselLVJ+/Al5LKzDObTB8dvr90IHsy9QjDbSn9XuMWicPcD2dAZUSksirgfvwai4Da9Nbz9fje09CswoLjQ5PqwkEI6mxAg2UFvK3yH8w2wy057E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464446; c=relaxed/simple;
	bh=GcZr61TwOvUtUfWMRCxXjJRa5feWxGnGJ1rS2AAyvgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SCL0XfGEh3Wx3URvJuZDKtCQkR5p/YjsZrkHNZ8B6T+e0rFrBMbPlOkJuaki8iWaTozl02roCgagyLIZ3lvVndqkgRaQEvMchWHxS84VMctx31ezPjpQ3BSO9pNf5cBElwNGL3oXNRX9nVe+5ueRxozifDXjAjvr8gWGlJ14bcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=INDXboOY; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-483770e0b25so40010735e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464439; x=1773069239; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sI0ZXWmHjNvtD6IpJHMeOdxd2SjR4noe2NBQlRy+ENQ=;
        b=INDXboOYioJXolxrreFaV52fmM4iqoD0lk6Pwlx3bt+UeLg14GZOhxbQf3X9907AY4
         MonQk9crJxNYC/3qlrNsxFmqOluYwgcZrLpOmCy51Jx5Dx7osYcM3t1+QM+uX/os3Sas
         eSizHUyVo9q93Cg6UIxis01g0NTn1TI3mFVvnqIkUB1EMu/1pR7a7VyyVGZquDysh2E5
         o7u5WzCJiS1rQyD8d78w7dQAtn14aF36T7Ia61ayjYz707h/1fTHyBdgbF+AP/hk0Cvf
         8uKAvFrq3h6htsX9FBUzYkRhHo1linFuYDaMWannWkN873vgLp250fd/90NQ3P+TNUHc
         Cc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464439; x=1773069239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sI0ZXWmHjNvtD6IpJHMeOdxd2SjR4noe2NBQlRy+ENQ=;
        b=VUhmpLjeB1bje8Fd7eFHhbEpgWUFvxNfcep76g5Hjp13BbhiTWG3JHr20dYEjdcJb0
         FMAeO+ah2NItTc6BbRHEuCu65H5DIUZlRFIvcWQ0fgdYXtXcAr+bxXmR3DnSx8b15Kfo
         r9+mS/+U/mAAOEuCDurCVEvmnpW3UvQzACqaesItHuzjfwdnfEHdpcHtK+luq35y72dl
         p3QhY4qyZbBPfVThOxJvUviVwvqm3PT1GYmiTlj23FQ5HbfPMmbpKvsaFxi+SSUkltyX
         /IYJ9qU7vtBH6rDHhp8PCFRM12E9SNGpDi5LCd+TRDZx0fcyQpRkkQbbd125ZeETQKX/
         gOhw==
X-Forwarded-Encrypted: i=1; AJvYcCXN8aCGTLIymRM0SeT4JJWYEb1lWkdqeTGAYdOjdnMFgfJ7M/zmMosrp/b/Lspiz9J8q0hcQ79P051t@vger.kernel.org
X-Gm-Message-State: AOJu0YyLonDubfk+WlMhCFcJ+ZNFFR7m+cncrF2TlgPtvc95qR2iXdnQ
	y9bSW2+lRf6GHaWfnSX/T3WNA+9FOyQQB1AitDSnNaNVaC5RO71j0Foe
X-Gm-Gg: ATEYQzzoeC4ChZGfLCXCae/kFjAYoC0SI9IzjzXa4i3Q1iwwN75oSpekYgeMNu9gyCS
	o+qnRGFpBa2rtwyy8VNYhq9RguwtgKN1pArISd1x0tvnGHQHipcWnAQ/Eoe83B7rPXXy8Dn6mu8
	dSiTvIgpUHf25pcp+oUW9ksIDqQ8+bficgaeuq07ANNemh68bizeZnW/s8+HFQ+/ziWTfv8XSOj
	1RNU9CV+iqkc6S+NBDDt4e6ksPT28Sk05qZBDtGxMlBci+thY3TzvycJrnuCZq290HvIMO8qz7Z
	D2ifAPDrj6IiSVMw23VA8HqTMVLyFS2X+mQ9fIBQSJ/PbscegrOSaItUlrk5xC+ueqLU/hNF6qM
	Cqxi2W5h0HFLJUV2K9QVOglUUDVozw++7r5EYWtinFqPLKL7ylu+jQmQHmaqSVsACJX7UyqUGxS
	LIiyqRJYjtfgIp294AZ4Eh1IfOu3nqaJ1zjYsL8ofjLgbB3NLC/kcCm6iK9o9skRpgCA==
X-Received: by 2002:a05:600c:5395:b0:483:709e:f22d with SMTP id 5b1f17b1804b1-483c9c24797mr190414855e9.27.1772464439170;
        Mon, 02 Mar 2026 07:13:59 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:58 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:27 +0100
Subject: [PATCH 06/10] mmc: sdhci-of-k1: add SDR tuning infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-6-89c219973c0c@gmail.com>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 620431DBCEC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270091-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add register definitions and delay line control functions to prepare for
SDR50/SDR104 tuning support:

- Add tuning register definitions (RX_CFG, DLINE_CTRL, DLINE_CFG)
- Add delay line control helper functions
- Add tuning preparation function

This infrastructure prepares for implementing the SDR tuning algorithm
while maintaining all existing functionality.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 62 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 9425bde6a72541bd628997e91f957072a6266c25..34a1b9c359193be7dd5f07d1f3d6565b5f40e7ff 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -72,6 +72,23 @@
 #define  AKEY_ASFAR			0xBABA
 #define  AKEY_ASSAR			0xEB10
 
+#define SPACEMIT_SDHC_RX_CFG_REG        0x118
+#define  SDHC_RX_SDCLK_SEL0_MASK        GENMASK(1, 0)
+#define  SDHC_RX_SDCLK_SEL1_MASK        GENMASK(3, 2)
+#define  SDHC_RX_SDCLK_SEL1             FIELD_PREP(SDHC_RX_SDCLK_SEL1_MASK, 1)
+
+#define SPACEMIT_SDHC_DLINE_CTRL_REG    0x130
+#define  SDHC_DLINE_PU                  BIT(0)
+#define  SDHC_RX_DLINE_CODE_MASK        GENMASK(23, 16)
+#define  SDHC_TX_DLINE_CODE_MASK        GENMASK(31, 24)
+
+#define SPACEMIT_SDHC_DLINE_CFG_REG     0x134
+#define  SDHC_RX_DLINE_REG_MASK         GENMASK(7, 0)
+#define  SDHC_RX_DLINE_GAIN             BIT(8)
+#define  SDHC_TX_DLINE_REG_MASK         GENMASK(23, 16)
+
+#define SPACEMIT_RX_DLINE_REG		9
+
 struct spacemit_sdhci_host {
 	struct clk *clk_core;
 	struct clk *clk_io;
@@ -102,6 +119,50 @@ static inline void spacemit_sdhci_clrsetbits(struct sdhci_host *host, u32 clr, u
 	sdhci_writel(host, val, reg);
 }
 
+static void spacemit_sdhci_set_rx_delay(struct sdhci_host *host, u8 delay)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_RX_DLINE_CODE_MASK,
+				  FIELD_PREP(SDHC_RX_DLINE_CODE_MASK, delay),
+				  SPACEMIT_SDHC_DLINE_CTRL_REG);
+}
+
+static void spacemit_sdhci_set_tx_delay(struct sdhci_host *host, u8 delay)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_TX_DLINE_CODE_MASK,
+				  FIELD_PREP(SDHC_TX_DLINE_CODE_MASK, delay),
+				  SPACEMIT_SDHC_DLINE_CTRL_REG);
+}
+
+static void spacemit_sdhci_set_tx_dline_reg(struct sdhci_host *host, u8 dline_reg)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_TX_DLINE_REG_MASK,
+				  FIELD_PREP(SDHC_TX_DLINE_REG_MASK, dline_reg),
+				  SPACEMIT_SDHC_DLINE_CFG_REG);
+}
+
+static void spacemit_sdhci_tx_tuning_prepare(struct sdhci_host *host)
+{
+	spacemit_sdhci_setbits(host, SDHC_TX_MUX_SEL, SPACEMIT_SDHC_TX_CFG_REG);
+	spacemit_sdhci_setbits(host, SDHC_DLINE_PU, SPACEMIT_SDHC_DLINE_CTRL_REG);
+	udelay(5);
+}
+
+static void spacemit_sdhci_prepare_tuning(struct sdhci_host *host)
+{
+	spacemit_sdhci_clrsetbits(host, SDHC_RX_DLINE_REG_MASK,
+				  FIELD_PREP(SDHC_RX_DLINE_REG_MASK, SPACEMIT_RX_DLINE_REG),
+				  SPACEMIT_SDHC_DLINE_CFG_REG);
+
+	spacemit_sdhci_setbits(host, SDHC_DLINE_PU, SPACEMIT_SDHC_DLINE_CTRL_REG);
+	udelay(5);
+
+	spacemit_sdhci_clrsetbits(host, SDHC_RX_SDCLK_SEL1_MASK, SDHC_RX_SDCLK_SEL1,
+				  SPACEMIT_SDHC_RX_CFG_REG);
+
+	if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200)
+		spacemit_sdhci_setbits(host, SDHC_HS200_USE_RFIFO, SPACEMIT_SDHC_PHY_FUNC_REG);
+}
+
 static void spacemit_sdhci_reset(struct sdhci_host *host, u8 mask)
 {
 	sdhci_reset(host, mask);
@@ -335,6 +396,7 @@ static const struct sdhci_ops spacemit_sdhci_ops = {
 	.set_bus_width		= sdhci_set_bus_width,
 	.set_clock		= spacemit_sdhci_set_clock,
 	.set_uhs_signaling	= spacemit_sdhci_set_uhs_signaling,
+	.platform_execute_tuning = spacemit_sdhci_execute_tuning,
 };
 
 static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata = {

-- 
2.53.0


