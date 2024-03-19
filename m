Return-Path: <devicetree+bounces-51642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AD387FEC5
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 14:26:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E82A284368
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 13:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6F6D80BFF;
	Tue, 19 Mar 2024 13:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QZlfMIUR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF40A8005C;
	Tue, 19 Mar 2024 13:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710854774; cv=none; b=FxK3VbtdpyTFGLO+RJ9+upfud/VT4gUkNX23BO09p2npCXc1f6gZrXRci0wdbXFrub+QRuaG+YgHtbYeV+HvrfvtXBq/6GfWIl4d1sTOgCLVeTae8H/VUIKh750TJgkrghwfNoBdNoAMqxY8+oXQHEzcmyQb+HmI69UvschdXE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710854774; c=relaxed/simple;
	bh=kd2RmNKFvIq1wxtY9YCEbC7//ee0vMk5dpipRsCVUXc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=d15NPG0CIeFWV0cokS2UGEpp26PAWWHj/ce8QPBOVIhBgfGMvc2+810ODfQTlgkX1bANlAanzccTlDU2hG5bTIsmXvWl5oeap8+PLcm8U39777cZt7vhjcDAQxd/8Me3jk91jNxu4q4MX4/TefczPIjhAylSJo3Is2QFyTpUB9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QZlfMIUR; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-513cf9bacf1so7015406e87.0;
        Tue, 19 Mar 2024 06:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710854771; x=1711459571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkCyUMD3GO/K9NePHyzEWpQMwt6j9UPNlQM3LFOvqlw=;
        b=QZlfMIURNCl2DqU6mS3U6YElZaJh6kuySBEcUplZEkRy1T0Uk9DPb8wTWUDM3L4RwZ
         Y3q8yu2rVd8u9tnKtHuB80TNmirOq/b3uJgrIbawvJjEW6ivXhGVMWapewJRfpP+0CWz
         8kY8yFs35gpAyXG2InA8m7tyJWu2LRRoyq/SOGU0dUn4d1yujJR4v5hhZY8W5z6hBfHN
         OL9xFDvnZ6sG+pdmnFK0lxA4EElHpKcannWfWTN9YI8tcG1AEkmuGjYFZdj1VZzV16Yh
         FmcjAX96+JTxwVNB2h2vr2/+iymE/N3eb6kqn9YWIqkAYanTBJqTefiXHuN6OZJdQYOg
         dg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710854771; x=1711459571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CkCyUMD3GO/K9NePHyzEWpQMwt6j9UPNlQM3LFOvqlw=;
        b=EUsD+nxxmAgsNOytgHKMEIZ7w5x/1YWdxEDM2TlTBfkyz0uW+Ik50fuCoA5ncDlxxA
         a176zgemWtwSSg5a+Snpre0ijm2H+PbvEZovBf7tzGtjI5nTNcOIgIw6Lp6tDe7ZYM8u
         JRgPeJK72eeUDdCCdcd8YYVYpp/JTTQBRsaFe2rwFi5n0GFkA1YaL5aA4YXacLo9PlqW
         aCYxnFa0Jw9s/oL/ayRueJIkOG4t1PY2v+237vnODv84/trW9S/9AS8Hp05ap1dnWVr0
         7yRj7LOwk7Z04WBKaIbRb9yyEPzYFf3ZxtlJ954fFECxD319wYxZL7/tfjcYsyOj+n2V
         kg+g==
X-Forwarded-Encrypted: i=1; AJvYcCXv7pDpnrtC5cMmJKyxyGbZR/AXX4CNfd9aJMXF0o2IwRUVwAoMkNP7hIM2kd0frXpyzUOnNds5ZYfNXBftyucQrLAT7msZARTv5mxViU8QII70/GnXz+QOCP0RTyq/Ynrp491i9q034f52ZBoZJC3Sx4tCy9/G1PS0AP88lb0CtlDUTQ==
X-Gm-Message-State: AOJu0YwLxpz+LmrxTskMC1APWYtGD1DqHBKOqIKWL06V9Jqm95e+tILz
	EyLGUFpHoF4o75JGUbaND9yYjVI7L31Nh8eh4pRlQ25Xi+Bmv8aa
X-Google-Smtp-Source: AGHT+IEsC0NN01eMqg3NATrpbCeHhHEKqbs1Qo1IGUX49R6ZlGAJZKLqgYcfjjGzyaDkju1DiN6/Zg==
X-Received: by 2002:a05:6512:3c88:b0:513:e63c:cfe7 with SMTP id h8-20020a0565123c8800b00513e63ccfe7mr6543804lfv.66.1710854770595;
        Tue, 19 Mar 2024 06:26:10 -0700 (PDT)
Received: from prasmi.home ([2a00:23c8:2500:a01:3c11:2c6f:3ba9:bab])
        by smtp.gmail.com with ESMTPSA id g4-20020adfe404000000b0033dd2a7167fsm12370020wrm.29.2024.03.19.06.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 06:26:09 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 2/4] i2c: riic: Introduce helper functions for I2C read/write operations
Date: Tue, 19 Mar 2024 13:25:01 +0000
Message-Id: <20240319132503.80628-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319132503.80628-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240319132503.80628-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Introduce helper functions for performing I2C read and write operations
in the RIIC driver.

These helper functions lay the groundwork for adding support for the
RZ/V2H SoC. This is essential because the register offsets for the RZ/V2H
SoC differ from those of the RZ/A SoC. By abstracting the read and write
operations, we can seamlessly adapt the driver to support different SoC
variants without extensive modifications.

This patch is part of the preparation process for integrating support for
the RZ/V2H SoC into the RIIC driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
v2->v3
- Made val as second argument for riic_writeb

v1->v2
- Renamed i2c read/write to riic_readb/riic_writeb
- Made riic as first parameter for riic_writeb
---
 drivers/i2c/busses/i2c-riic.c | 56 +++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 23 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index e43ff483c56e..ef35e67839fa 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -105,9 +105,19 @@ struct riic_irq_desc {
 	char *name;
 };
 
+static inline void riic_writeb(struct riic_dev *riic, u8 val, u8 offset)
+{
+	writeb(val, riic->base + offset);
+}
+
+static inline u8 riic_readb(struct riic_dev *riic, u8 offset)
+{
+	return readb(riic->base + offset);
+}
+
 static inline void riic_clear_set_bit(struct riic_dev *riic, u8 clear, u8 set, u8 reg)
 {
-	writeb((readb(riic->base + reg) & ~clear) | set, riic->base + reg);
+	riic_writeb(riic, (riic_readb(riic, reg) & ~clear) | set, reg);
 }
 
 static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
@@ -119,7 +129,7 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 
 	pm_runtime_get_sync(adap->dev.parent);
 
-	if (readb(riic->base + RIIC_ICCR2) & ICCR2_BBSY) {
+	if (riic_readb(riic, RIIC_ICCR2) & ICCR2_BBSY) {
 		riic->err = -EBUSY;
 		goto out;
 	}
@@ -127,7 +137,7 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	reinit_completion(&riic->msg_done);
 	riic->err = 0;
 
-	writeb(0, riic->base + RIIC_ICSR2);
+	riic_writeb(riic, 0, RIIC_ICSR2);
 
 	for (i = 0, start_bit = ICCR2_ST; i < num; i++) {
 		riic->bytes_left = RIIC_INIT_MSG;
@@ -135,9 +145,9 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 		riic->msg = &msgs[i];
 		riic->is_last = (i == num - 1);
 
-		writeb(ICIER_NAKIE | ICIER_TIE, riic->base + RIIC_ICIER);
+		riic_writeb(riic, ICIER_NAKIE | ICIER_TIE, RIIC_ICIER);
 
-		writeb(start_bit, riic->base + RIIC_ICCR2);
+		riic_writeb(riic, start_bit, RIIC_ICCR2);
 
 		time_left = wait_for_completion_timeout(&riic->msg_done, riic->adapter.timeout);
 		if (time_left == 0)
@@ -191,7 +201,7 @@ static irqreturn_t riic_tdre_isr(int irq, void *data)
 	 * value could be moved to the shadow shift register right away. So
 	 * this must be after updates to ICIER (where we want to disable TIE)!
 	 */
-	writeb(val, riic->base + RIIC_ICDRT);
+	riic_writeb(riic, val, RIIC_ICDRT);
 
 	return IRQ_HANDLED;
 }
@@ -200,9 +210,9 @@ static irqreturn_t riic_tend_isr(int irq, void *data)
 {
 	struct riic_dev *riic = data;
 
-	if (readb(riic->base + RIIC_ICSR2) & ICSR2_NACKF) {
+	if (riic_readb(riic, RIIC_ICSR2) & ICSR2_NACKF) {
 		/* We got a NACKIE */
-		readb(riic->base + RIIC_ICDRR);	/* dummy read */
+		riic_readb(riic, RIIC_ICDRR);	/* dummy read */
 		riic_clear_set_bit(riic, ICSR2_NACKF, 0, RIIC_ICSR2);
 		riic->err = -ENXIO;
 	} else if (riic->bytes_left) {
@@ -211,7 +221,7 @@ static irqreturn_t riic_tend_isr(int irq, void *data)
 
 	if (riic->is_last || riic->err) {
 		riic_clear_set_bit(riic, ICIER_TEIE, ICIER_SPIE, RIIC_ICIER);
-		writeb(ICCR2_SP, riic->base + RIIC_ICCR2);
+		riic_writeb(riic, ICCR2_SP, RIIC_ICCR2);
 	} else {
 		/* Transfer is complete, but do not send STOP */
 		riic_clear_set_bit(riic, ICIER_TEIE, 0, RIIC_ICIER);
@@ -230,7 +240,7 @@ static irqreturn_t riic_rdrf_isr(int irq, void *data)
 
 	if (riic->bytes_left == RIIC_INIT_MSG) {
 		riic->bytes_left = riic->msg->len;
-		readb(riic->base + RIIC_ICDRR);	/* dummy read */
+		riic_readb(riic, RIIC_ICDRR);	/* dummy read */
 		return IRQ_HANDLED;
 	}
 
@@ -238,7 +248,7 @@ static irqreturn_t riic_rdrf_isr(int irq, void *data)
 		/* STOP must come before we set ACKBT! */
 		if (riic->is_last) {
 			riic_clear_set_bit(riic, 0, ICIER_SPIE, RIIC_ICIER);
-			writeb(ICCR2_SP, riic->base + RIIC_ICCR2);
+			riic_writeb(riic, ICCR2_SP, RIIC_ICCR2);
 		}
 
 		riic_clear_set_bit(riic, 0, ICMR3_ACKBT, RIIC_ICMR3);
@@ -248,7 +258,7 @@ static irqreturn_t riic_rdrf_isr(int irq, void *data)
 	}
 
 	/* Reading acks the RIE interrupt */
-	*riic->buf = readb(riic->base + RIIC_ICDRR);
+	*riic->buf = riic_readb(riic, RIIC_ICDRR);
 	riic->buf++;
 	riic->bytes_left--;
 
@@ -260,10 +270,10 @@ static irqreturn_t riic_stop_isr(int irq, void *data)
 	struct riic_dev *riic = data;
 
 	/* read back registers to confirm writes have fully propagated */
-	writeb(0, riic->base + RIIC_ICSR2);
-	readb(riic->base + RIIC_ICSR2);
-	writeb(0, riic->base + RIIC_ICIER);
-	readb(riic->base + RIIC_ICIER);
+	riic_writeb(riic, 0, RIIC_ICSR2);
+	riic_readb(riic, RIIC_ICSR2);
+	riic_writeb(riic, 0, RIIC_ICIER);
+	riic_readb(riic, RIIC_ICIER);
 
 	complete(&riic->msg_done);
 
@@ -365,15 +375,15 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 		 t->scl_rise_ns / (1000000000 / rate), cks, brl, brh);
 
 	/* Changing the order of accessing IICRST and ICE may break things! */
-	writeb(ICCR1_IICRST | ICCR1_SOWP, riic->base + RIIC_ICCR1);
+	riic_writeb(riic, ICCR1_IICRST | ICCR1_SOWP, RIIC_ICCR1);
 	riic_clear_set_bit(riic, 0, ICCR1_ICE, RIIC_ICCR1);
 
-	writeb(ICMR1_CKS(cks), riic->base + RIIC_ICMR1);
-	writeb(brh | ICBR_RESERVED, riic->base + RIIC_ICBRH);
-	writeb(brl | ICBR_RESERVED, riic->base + RIIC_ICBRL);
+	riic_writeb(riic, ICMR1_CKS(cks), RIIC_ICMR1);
+	riic_writeb(riic, brh | ICBR_RESERVED, RIIC_ICBRH);
+	riic_writeb(riic, brl | ICBR_RESERVED, RIIC_ICBRL);
 
-	writeb(0, riic->base + RIIC_ICSER);
-	writeb(ICMR3_ACKWP | ICMR3_RDRFS, riic->base + RIIC_ICMR3);
+	riic_writeb(riic, 0, RIIC_ICSER);
+	riic_writeb(riic, ICMR3_ACKWP | ICMR3_RDRFS, RIIC_ICMR3);
 
 	riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
 
@@ -481,7 +491,7 @@ static void riic_i2c_remove(struct platform_device *pdev)
 	struct riic_dev *riic = platform_get_drvdata(pdev);
 
 	pm_runtime_get_sync(&pdev->dev);
-	writeb(0, riic->base + RIIC_ICIER);
+	riic_writeb(riic, 0, RIIC_ICIER);
 	pm_runtime_put(&pdev->dev);
 	i2c_del_adapter(&riic->adapter);
 	pm_runtime_disable(&pdev->dev);
-- 
2.34.1


