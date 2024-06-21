Return-Path: <devicetree+bounces-78410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDF2912362
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ECA21C24760
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7FA9178383;
	Fri, 21 Jun 2024 11:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OfOAIeJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBF6176AD8
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969014; cv=none; b=hR8jXMBjwPf3J540PdN88FTKOp58HkNNPOE7jgC3eTaHZq+Ha23FLFB6VJaChAE5yBGIbpwIVpUhp+CGDs/WdWICXzw15+XFJOJ6xGgC/PgBrZdmxdgr0B1QLzXkWfuFKVsa5fqr+dZjLqF7Wl6nPNyjtKPyPsssl9Wjav4JwoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969014; c=relaxed/simple;
	bh=RfYez9u5Ak2SMIO0DEHAa2+9k5wdFaN5G9kzhpx8cZo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uyrm+lo2lz0jqXzNOl5hENeSjyRaBhmh2k7hclQz5L5G/HLbgcgKOyj2xmdw3lzYq2AFK91Qn6ljn2A5iv8qDoeoWrnDq0Qn8lKY2vbuy5hBebclceURiIR+gD4+jMbvzQsHNdESE0TWzxrnjCUf4Ip6B8PREjufFOGsVUWszWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OfOAIeJ5; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a6e43dad8ecso322688766b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718969010; x=1719573810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kPhmKh5jKgJmuUvvPetSNlsnz5DPCDUj94A1k27txko=;
        b=OfOAIeJ5F+54whmteMS9xrDZDP7rZV5fI9cAb6a4Jn6AbUzHX9Jqqy1pXUXoWuY8U2
         hennh1NLa2fGRyK3jRmFH+Bh1mMNKrpFlZErJxEzkjcWufrh8vP50IUfmAUHo1AVJ0vm
         ryGWXbH8+D7iuyUQw9wLDDb6Q7uNbarDpByElsVTp3KcQF8sXIBsB6TEmk4evkaUGPeo
         Z3JNY1voMdaUfRad7KQdkV5ReTUmjV92rk1Ewt7cwaHYt0sT/+Yf3Kb/MR0FDQubkqyV
         yWM/pbQjwlfal6KoO2TC9FTYi+pOdfJyet59hNAULGXIpS3Qm2Iqfu1AJqUlAIo2NYOA
         a/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718969010; x=1719573810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kPhmKh5jKgJmuUvvPetSNlsnz5DPCDUj94A1k27txko=;
        b=GsGb/qGJlEHWAnBBcEGNG6sOgpoq6Ji1Lu75YtY7iIJX3p6y/Az/SenO72rHO17tYh
         J9m6j1iwwLUfABLa9ctSuZWVQNix6eNk4zunSR5s3T+BkopHYcyOcdRbrE8yvfW6XMTN
         EHyI6tqZ+6W64IhUllam6RGj79+IFc4tIoJcL7sqqFgzGhqwRoN0rzq+qdJ3Kpa8kPuM
         sT+yhKqieMJvcxzZyEUkkSHOa5bWCCQUTKao8aQNtnS1403NVz/RNmvok04Tu7D/R++j
         /kZYG/5Xr3zpMSCc8RtrGCAOuflGMjOd9N7r3uN4R8x6slf//jcX3A2hl8xj0hwjOq+q
         zY3w==
X-Forwarded-Encrypted: i=1; AJvYcCV35FroA8qoGsGaOUAn0PdQ9wzPsZ9PipRgEmod0LYh06nhOsASNi+SVwR+IusUrbmZG3FcQDejnKaMsJss67Ca/vWifpUOA7zYmQ==
X-Gm-Message-State: AOJu0YwjpFTtXkdbp3PAZ3FuC68De9OqYe84A5Pjd6tqgOJkGWeel/M3
	ey//mfup49CpbGlnPIjOQYnFKdOt5KozHO9HzU8lWoZuu6/gnstBrP9e23H4uRc=
X-Google-Smtp-Source: AGHT+IHBTxiQrf0wAKOR2ezweJqHlvILVoM5bIbyJNw7cBRiSN/Ej9U9o9S0APKYUNMc2fthSYB+Pw==
X-Received: by 2002:a17:906:b318:b0:a6f:259d:9a5f with SMTP id a640c23a62f3a-a6f9508e83cmr703320166b.35.1718969010055;
        Fri, 21 Jun 2024 04:23:30 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fd0838345sm64498466b.99.2024.06.21.04.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:23:29 -0700 (PDT)
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
Subject: [PATCH 07/12] i2c: riic: Define individual arrays to describe the register offsets
Date: Fri, 21 Jun 2024 14:22:58 +0300
Message-Id: <20240621112303.1607621-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240621112303.1607621-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/i2c/busses/i2c-riic.c | 58 +++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index f9b9e92570d8..46070f323810 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -91,7 +91,7 @@ enum riic_reg_list {
 };
 
 struct riic_of_data {
-	u8 regs[RIIC_REG_END];
+	const u8 *regs;
 };
 
 struct riic_dev {
@@ -530,36 +530,40 @@ static void riic_i2c_remove(struct platform_device *pdev)
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


