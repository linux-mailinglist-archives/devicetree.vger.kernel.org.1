Return-Path: <devicetree+bounces-94752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEED956862
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 12:25:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C36B2840FD
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 10:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A036E1684A2;
	Mon, 19 Aug 2024 10:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fBTiz5Ul"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B181C167D98
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 10:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724063057; cv=none; b=UxqOTlniDEPg27XvK+85Afgtv1HnONoy4wd72M2wlvysHHHf7pjZVWiiKhaxaGaP9h8hHwoJzm7RkL3TKDAc/QA0209gpdm3WFBMjOihbkjpgQgz/eOyFWEv8kWYmf7k8/VBzKnT7CCWfX8/3LUUd3ZbbI7XGZs/JYgDJG8WfbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724063057; c=relaxed/simple;
	bh=An3c/pqE5/PbmMhA8W2JdM3uBt0kGOKbb9t9xdo1QWo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hp7ETUEMjSjIyA2gIjHcjIXhMZTkTBsYQK4JgzYXKYon8aMLRYGoOZjCHDZ5K23CINJLvqPt8mL6ZC/pViA5yzrO2HiCW2YMDWyN5SQ6mp/pdMs6EIywu/VUpuTPrLs+Yci6Ab67wWY4p4Lvpx26aWUPI3Ois0PmWZ372vvmaLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fBTiz5Ul; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-371a6fcd863so1315655f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 03:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724063054; x=1724667854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u02CHV6L9cryd+0ssdjsx+3CtQ9N/LY83YAE68IRG3c=;
        b=fBTiz5Ul8Zka2VUqOeM9vWtZZPd8lyxkPBCimq2BCQxS+8mBjXaTNjgjmUY9h72YTz
         MamfypxmApt3EsFActhSeQqr0dymTTv2DPuG9u9JFECyZOfBt3SNRmfzICRBzj0DLpDD
         rOCQIo7TViGhEYTUJFdkIp1nvZoiFVI5MaagNfzQUJTYi2O/ug7o6Ci/o6dMEsFbYa9O
         d3/jKaj15tSpPnRhBiMQjSlq/zX7WysUoAu+MCjTnJPt6JkLE9GgRQFkrBJRsNmjK8EA
         oOjuw9PD0K6TvWRiQbZ5e2AT2JM0myI3O4PDuWxYtjyirFr/2dcojgihUvcY1Fdf+v27
         HqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724063054; x=1724667854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u02CHV6L9cryd+0ssdjsx+3CtQ9N/LY83YAE68IRG3c=;
        b=apo5HVAUk15WIXJXs1xwAyg4B2W2rCI6Q6Ro7ShnHxoRb+x4xIiI80U895QeVi9r+U
         IxBHAqLOk/kgJS+Ypb8rOh46ZwmQ2pSVCHh9jt0xh6qynuP5oDXe/1t/cC9mgp0Km3yV
         B840hW/OIpiUzHqHzznKKbZ3poWMcPBwv3bduQ6bDqTnYxtJJo8DL0iiGT/q81WllFtw
         CdgxvF/KCQPCnsKkdXl+qJf5vmeens/UT3U/eicMgCgXhmoFMc60WzOjRLYNdskL6pHk
         rpNyQ5Aesuu+t98O071Xk0MM+Hwl9MI9kZvUMGqnZKA/+GRIMSDeoDh4oV68qdTKgK13
         VVvw==
X-Forwarded-Encrypted: i=1; AJvYcCWYRS58kimUzlBdeJPngTUqhbFV4jJgfRwXBqSrJNhLpPMSYucXjqLnsbvSWN5BtKapzQiannyzn3cQ2K2z9e2o5NztYS0zRMccLA==
X-Gm-Message-State: AOJu0YwIyYcS8RYqXnmChQfDXRLAw67BgrHq/eDcruZGSrGczQsrkXaq
	zs/9li3M0lYEeMI4hIYJFzigRPoNWnu3lvxNFDH49fVv/S0ssJP0/AUWhAKcY/A=
X-Google-Smtp-Source: AGHT+IGqeidxunuCaKmJXNScQ/e/6G4TJP2id0hs9rETeMKS6uVLLoTiG8+GlUxM4bSFn7o4jlX+8Q==
X-Received: by 2002:adf:eece:0:b0:368:4d33:9aac with SMTP id ffacd0b85a97d-3719465a479mr6095041f8f.31.1724063053881;
        Mon, 19 Aug 2024 03:24:13 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed650402sm106690275e9.11.2024.08.19.03.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 03:24:13 -0700 (PDT)
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
Subject: [PATCH v4 06/11] i2c: riic: Define individual arrays to describe the register offsets
Date: Mon, 19 Aug 2024 13:23:43 +0300
Message-Id: <20240819102348.1592171-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v4:
- collected tags

Changes in v3:
- none

Changes in v2:
- none

 drivers/i2c/busses/i2c-riic.c | 58 +++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index f863b367fb85..cc2452853d19 100644
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


