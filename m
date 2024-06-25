Return-Path: <devicetree+bounces-79694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAF4916750
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F5F91F25BD2
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23ECE16C842;
	Tue, 25 Jun 2024 12:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="U4n+pnlQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B24816C6A0
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317682; cv=none; b=r1rV0T5FInY+/2XRrNAH66+iWeeHXDP3X+vW8ouJ7f57PPeWoHC8/tj21AQtyVJcSHJuXqg4G1nsf/AXxjSlk76EWfat3E2nfbR7Q6PBMp58k5M3OBmW+TUoM4846BUgdBPd8WTy3UYQJZrcEqVxJpB/cDSGteja0nZDVx1MHP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317682; c=relaxed/simple;
	bh=8OOGQkFNrKja+OgdNYNCZMmYErNv7LdtJ9ioV2LOyqk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BZWjGGWP4Q/7Qlwc+10hzxKPf1EY9vcw7piSaDVGhQd3jPHVIgcTwQK26lHLXKJ4qPNpMNQQh3T3VnYrBs8iClrpDJCuS6HlNk6iabFjs2HjJneJN0Fxelju7w3ccl5S7WCBPMQtDIDRtcLYiywvot1AZ6pwXqRNWhN6fW6AAcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=U4n+pnlQ; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52cd628f21cso4602810e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719317677; x=1719922477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FBC9PF/qNCadSMYXHpaAT5j9fObF5TmfHpetsQabb4M=;
        b=U4n+pnlQNxaQnevAUXEpXBspaHMu5UmPrj3oKYTQ2od7j0WP3K7jbBrw/f35dyneEj
         +lo/WUuymj1V/BMZyPLfTLV4FHP2A1MiPsN+F+tGiXNtfD5M7V4Gm+Aae8/qeC6AmGQr
         ZZfHejKNs09ffp+r9F11VkbAaFvqpvDVvsnpcsSNAkfc9ZR0ROhXpU92wQtIql5p5rbx
         J3lNA+DdWwL0BD7V2NEIREu/VHXuqpcXa4woI8XMHT9v8t948vnxvRQpVFRC6/8TTdfk
         tLomM5AdQjkJ6NOQ7M0Er5iJv3zh+JH88gCwQRodel9r/M55o58kZC0eAnY68WzV1AoB
         dQPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317677; x=1719922477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBC9PF/qNCadSMYXHpaAT5j9fObF5TmfHpetsQabb4M=;
        b=IAS5/phyJ4hQNhygSI2oGUWl9TAdf7566Eiw5wB+TxNydbpuTWundaLvAE1ye38nqL
         /0tohd7K20wjow/ViTDWJj3uj9rHlkFTDgf8nj93YqO2tO0e9XbXWXVoPmkUqd2YG51j
         D5kboQXkpnCalOcbyQS/N9hLcwRGEsv1ue6garTrwkYABUIfkBbao4PD4Wxc2h9S5fX0
         wWcRE3kyc7O+fxZ90hNxnvygU8CRdfd/rW3CfPuUkH/rvz2ZlhAgTRk7+9hUCrMfW+ZL
         IaGcIkUlB4iyFXGa+/WtAO/+jzRz2x1w4K1hnJiqnzO9xmeZcBJEKtWN0VQGnmZJw6LJ
         A6TQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZrTucxW53MAO0TQErCA48JontKUJzePljhbyoXM2X8fdl92Gy7MzdMDrP9JjF3TLAp7Wu4fH8F7Rv+W5STHOutG/5Z8IMgFH42Q==
X-Gm-Message-State: AOJu0YwtCFwQT6BE4DATiFd9bTk8iDEZ3L7RsEDXL90/rdBEJAttSe8z
	0EsNQR5giSPZwYcJKFO1d7ltsXh3rqQjvRvM4rnSEE6X/9I1N5fbb6FC9wPFoAw=
X-Google-Smtp-Source: AGHT+IHMqb4IEfdfY2dYV4JrjRaSTKsUzUM7nebCXduc+8dWlesGPxQ88MnLQCHwrnG1emHWvn/XPA==
X-Received: by 2002:a05:6512:402a:b0:52c:8051:5799 with SMTP id 2adb3069b0e04-52ce1832b57mr5353096e87.11.1719317677627;
        Tue, 25 Jun 2024 05:14:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8b32sm12798437f8f.92.2024.06.25.05.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 05:14:36 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 09/12] i2c: riic: Add support for fast mode plus
Date: Tue, 25 Jun 2024 15:13:55 +0300
Message-Id: <20240625121358.590547-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Fast mode plus is available on most of the IP variants that RIIC driver
is working with. The exception is (according to HW manuals of the SoCs
where this IP is available) the Renesas RZ/A1H. For this, patch
introduces the struct riic_of_data::fast_mode_plus.

Fast mode plus was tested on RZ/G3S, RZ/G2{L,UL,LC}, RZ/Five by
instantiating the RIIC frequency to 1MHz and issuing i2c reads on the
fast mode plus capable devices (and the i2c clock frequency was checked on
RZ/G3S).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- dropped code that handles the renesas,riic-no-fast-mode-plus
- updated commit description

 drivers/i2c/busses/i2c-riic.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index 8ffbead95492..c07317f95e82 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -63,6 +63,8 @@
 #define ICMR3_ACKWP	0x10
 #define ICMR3_ACKBT	0x08
 
+#define ICFER_FMPE	0x80
+
 #define ICIER_TIE	0x80
 #define ICIER_TEIE	0x40
 #define ICIER_RIE	0x20
@@ -80,6 +82,7 @@ enum riic_reg_list {
 	RIIC_ICCR2,
 	RIIC_ICMR1,
 	RIIC_ICMR3,
+	RIIC_ICFER,
 	RIIC_ICSER,
 	RIIC_ICIER,
 	RIIC_ICSR2,
@@ -92,6 +95,7 @@ enum riic_reg_list {
 
 struct riic_of_data {
 	const u8 *regs;
+	bool fast_mode_plus;
 };
 
 struct riic_dev {
@@ -315,11 +319,13 @@ static int riic_init_hw(struct riic_dev *riic)
 	int total_ticks, cks, brl, brh;
 	struct i2c_timings *t = &riic->i2c_t;
 	struct device *dev = riic->adapter.dev.parent;
+	const struct riic_of_data *info = riic->info;
 
-	if (t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) {
-		dev_err(dev,
-			"unsupported bus speed (%dHz). %d max\n",
-			t->bus_freq_hz, I2C_MAX_FAST_MODE_FREQ);
+	if ((!info->fast_mode_plus && t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) ||
+	    (info->fast_mode_plus && t->bus_freq_hz > I2C_MAX_FAST_MODE_PLUS_FREQ)) {
+		dev_err(dev, "unsupported bus speed (%dHz). %d max\n", t->bus_freq_hz,
+			info->fast_mode_plus ? I2C_MAX_FAST_MODE_PLUS_FREQ :
+			I2C_MAX_FAST_MODE_FREQ);
 		return -EINVAL;
 	}
 
@@ -407,6 +413,9 @@ static int riic_init_hw(struct riic_dev *riic)
 	riic_writeb(riic, 0, RIIC_ICSER);
 	riic_writeb(riic, ICMR3_ACKWP | ICMR3_RDRFS, RIIC_ICMR3);
 
+	if (info->fast_mode_plus && t->bus_freq_hz == I2C_MAX_FAST_MODE_PLUS_FREQ)
+		riic_clear_set_bit(riic, 0, ICFER_FMPE, RIIC_ICFER);
+
 	riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
 
 	pm_runtime_mark_last_busy(dev);
@@ -536,6 +545,7 @@ static const u8 riic_rz_a_regs[RIIC_REG_END] = {
 	[RIIC_ICCR2] = 0x04,
 	[RIIC_ICMR1] = 0x08,
 	[RIIC_ICMR3] = 0x10,
+	[RIIC_ICFER] = 0x14,
 	[RIIC_ICSER] = 0x18,
 	[RIIC_ICIER] = 0x1c,
 	[RIIC_ICSR2] = 0x24,
@@ -549,11 +559,17 @@ static const struct riic_of_data riic_rz_a_info = {
 	.regs = riic_rz_a_regs,
 };
 
+static const struct riic_of_data riic_rz_g2_info = {
+	.regs = riic_rz_a_regs,
+	.fast_mode_plus = true,
+};
+
 static const u8 riic_rz_v2h_regs[RIIC_REG_END] = {
 	[RIIC_ICCR1] = 0x00,
 	[RIIC_ICCR2] = 0x01,
 	[RIIC_ICMR1] = 0x02,
 	[RIIC_ICMR3] = 0x04,
+	[RIIC_ICFER] = 0x05,
 	[RIIC_ICSER] = 0x06,
 	[RIIC_ICIER] = 0x07,
 	[RIIC_ICSR2] = 0x09,
@@ -565,6 +581,7 @@ static const u8 riic_rz_v2h_regs[RIIC_REG_END] = {
 
 static const struct riic_of_data riic_rz_v2h_info = {
 	.regs = riic_rz_v2h_regs,
+	.fast_mode_plus = true,
 };
 
 static int riic_i2c_suspend(struct device *dev)
@@ -613,6 +630,9 @@ static const struct dev_pm_ops riic_i2c_pm_ops = {
 
 static const struct of_device_id riic_i2c_dt_ids[] = {
 	{ .compatible = "renesas,riic-rz", .data = &riic_rz_a_info },
+	{ .compatible = "renesas,riic-r9a07g043", .data =  &riic_rz_g2_info, },
+	{ .compatible = "renesas,riic-r9a07g044", .data =  &riic_rz_g2_info, },
+	{ .compatible = "renesas,riic-r9a07g054", .data =  &riic_rz_g2_info, },
 	{ .compatible = "renesas,riic-r9a09g057", .data = &riic_rz_v2h_info },
 	{ /* Sentinel */ },
 };
-- 
2.39.2


