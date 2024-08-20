Return-Path: <devicetree+bounces-95164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F8F95841C
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3A98B25065
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E3318EFDE;
	Tue, 20 Aug 2024 10:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A+I9+1fO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063018E75C
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724149182; cv=none; b=iAp2ik5XYYLVLCkePW3snDoAUh4KmA9iMwDDocdXrBHdLqC3P/nKLtnOOXhWfXTd4DtfXRPn/K3dZsOyWcrm3MUnVGaZSdHqDC+b8XSRWsU1/jnztP+juenFNrh81hrRMoovVO4q9znHXBFQ+B7SZWM1o8SWJqNnhCeeyMAVWwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724149182; c=relaxed/simple;
	bh=tUI85jO7Cpl1pB/o0KZqowvldcpXZzdz+AXIa2Z6P24=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AiIvhQVNe2FkaaOsepzR1HRd3Aisuujm/mTnXOtZOGPC59MDb/wex6UNbYgNcvzuPhrTQv+PR50n7/Yz8xL7dTJHZOajxfpIDd64Ra3vvMbQoTVP0WJjrUJkmes5oJqD5xr1ZksPoPJ5UJVdob3m24e5kaWGdNlGamBFMDbxrDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A+I9+1fO; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7aa4bf4d1eso716696166b.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724149178; x=1724753978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/HlaFt2mfcDs3v7cVtqEFaICLthaNdqu1VtbRc8xTWA=;
        b=A+I9+1fO/JS9or3QqSTjIp8NUTmibDQvAVUO04hAwqeilduu65xNzsQyUTVSL7MoGF
         FvR1n2xL+GZJc0FoKvl6bSpnYPPKHyN+6nV5WBERkeIPth0Jfz+9C+4BD+jSSGtMtVFS
         Cz26GurRKdKaiOdas2oLyoodPGnW9/YjaPEkqWY2jB/imvRNc0aykfPP6dnIQDw2h6gP
         QOwMGY8cCyvgnCjGWstM8u0/Eq8NJ/LH7hvL/siPOFMvTfJEG/qH50b8zBMrhrDKtWDg
         KNb4td8tO8SV71uCBihjvl7z62tK7nyjcxHqw0zrFlA/S/q7LK6LEJkC3HPd3P6Oeaxx
         uyPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724149178; x=1724753978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/HlaFt2mfcDs3v7cVtqEFaICLthaNdqu1VtbRc8xTWA=;
        b=Aoxdumm0DJkBOLrQ/jA3t2/ygwTndzlL6iNcOzON6X7HSRDfScgLUHbName1MzwkL/
         7eGnYLi6XaXtoMhh2FwHORxkGkmVr79VDMFMh1JNxESQVdGIL5VKTWFPRxXVRRYaukHu
         RW8zOWm1qYFKP6HJ0NTDBNm/1GkgWMonkJt9SJxqvHmB//gqfy9DT+r+tILT2WmejOAp
         7t6J/j51Lfn7K5q65+QmPEcf8t0+DLlpSJrimibJyWODLseIB/IorkwqwGBxAuTLnx5P
         utkWS3vDPX3fGeVy0okleqvJtfy6Fo2RjTP4pJy2oazpnpMiB1i1Syj8GwVe5/619Xq/
         HoWA==
X-Forwarded-Encrypted: i=1; AJvYcCUWmn/MD5QKF4XAUG6PxOV7Asq+0X5SXGhVofMswcYWx9SZriHkV4Ts/ORF7Ia5n3/b0JPShxupyJDimXcjuY2mD4Wt0oXqJL8OIw==
X-Gm-Message-State: AOJu0Yw97I8DIeW9bjj0VxXa3R2GgOgV7Z/8XEvgW0Zvdu/4TZc/V9+/
	14XNzUe7K+ZSKjOYLpFyl/2UUYxx80/i5mdG5dCLTo/vFLBnlJurEU3pf4QYRJ0=
X-Google-Smtp-Source: AGHT+IHXhspWPuCSOnb/GLwsDgiKU0Bp/C97L8hMioAeuTeoW28g4CRpcwe1UoHbElZr1QVsv5vZtg==
X-Received: by 2002:a17:907:e2c3:b0:a7a:b1a8:6a2e with SMTP id a640c23a62f3a-a839292ff2bmr915681866b.28.1724149178268;
        Tue, 20 Aug 2024 03:19:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839464ebsm734550066b.155.2024.08.20.03.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 03:19:37 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 06/11] i2c: riic: Define individual arrays to describe the register offsets
Date: Tue, 20 Aug 2024 13:19:13 +0300
Message-Id: <20240820101918.2384635-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Define individual arrays to describe the register offsets. In this way
we can describe different IP variants that share the same register offsets
but have differences in other characteristics. Commit prepares for the
addition of fast mode plus.

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- collected tags

Changes in v3:
- none

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 58 +++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index eb741d4b1005..f7293bf4b585 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -91,7 +91,7 @@ enum riic_reg_list {
 };
 
 struct riic_of_data {
-	u8 regs[RIIC_REG_END];
+	const u8 *regs;
 };
 
 struct riic_dev {
@@ -522,36 +522,40 @@ static void riic_i2c_remove(struct platform_device *pdev)
 	pm_runtime_dont_use_autosuspend(dev);
 }
 
+static const u8 riic_rz_a_regs[RIIC_REG_END] = {
+	[RIIC_ICCR1] = 0x00,
+	[RIIC_ICCR2] = 0x04,
+	[RIIC_ICMR1] = 0x08,
+	[RIIC_ICMR3] = 0x10,
+	[RIIC_ICSER] = 0x18,
+	[RIIC_ICIER] = 0x1c,
+	[RIIC_ICSR2] = 0x24,
+	[RIIC_ICBRL] = 0x34,
+	[RIIC_ICBRH] = 0x38,
+	[RIIC_ICDRT] = 0x3c,
+	[RIIC_ICDRR] = 0x40,
+};
+
 static const struct riic_of_data riic_rz_a_info = {
-	.regs = {
-		[RIIC_ICCR1] = 0x00,
-		[RIIC_ICCR2] = 0x04,
-		[RIIC_ICMR1] = 0x08,
-		[RIIC_ICMR3] = 0x10,
-		[RIIC_ICSER] = 0x18,
-		[RIIC_ICIER] = 0x1c,
-		[RIIC_ICSR2] = 0x24,
-		[RIIC_ICBRL] = 0x34,
-		[RIIC_ICBRH] = 0x38,
-		[RIIC_ICDRT] = 0x3c,
-		[RIIC_ICDRR] = 0x40,
-	},
+	.regs = riic_rz_a_regs,
+};
+
+static const u8 riic_rz_v2h_regs[RIIC_REG_END] = {
+	[RIIC_ICCR1] = 0x00,
+	[RIIC_ICCR2] = 0x01,
+	[RIIC_ICMR1] = 0x02,
+	[RIIC_ICMR3] = 0x04,
+	[RIIC_ICSER] = 0x06,
+	[RIIC_ICIER] = 0x07,
+	[RIIC_ICSR2] = 0x09,
+	[RIIC_ICBRL] = 0x10,
+	[RIIC_ICBRH] = 0x11,
+	[RIIC_ICDRT] = 0x12,
+	[RIIC_ICDRR] = 0x13,
 };
 
 static const struct riic_of_data riic_rz_v2h_info = {
-	.regs = {
-		[RIIC_ICCR1] = 0x00,
-		[RIIC_ICCR2] = 0x01,
-		[RIIC_ICMR1] = 0x02,
-		[RIIC_ICMR3] = 0x04,
-		[RIIC_ICSER] = 0x06,
-		[RIIC_ICIER] = 0x07,
-		[RIIC_ICSR2] = 0x09,
-		[RIIC_ICBRL] = 0x10,
-		[RIIC_ICBRH] = 0x11,
-		[RIIC_ICDRT] = 0x12,
-		[RIIC_ICDRR] = 0x13,
-	},
+	.regs = riic_rz_v2h_regs,
 };
 
 static int riic_i2c_suspend(struct device *dev)
-- 
2.39.2


