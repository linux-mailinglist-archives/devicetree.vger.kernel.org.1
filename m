Return-Path: <devicetree+bounces-165936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3920AA85E74
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA5661896350
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 579AE18B470;
	Fri, 11 Apr 2025 13:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DXvP1l+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4481519B8
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377312; cv=none; b=JMsxP2i8dNtiCLdJ29iXpe/SqnsH0URnqLrCvEEvHyXkhpP/rEPinnX7IygUnGxz3EYlu+riGs/gaclFfcmOrWuY5zh2ljwZoh1lw4LRP8dTxmQGeCGcWd/4CNK04qyi9fKhnJqnYZHU7A8Y1daBNPde5+VPoha4w6D3GHrZ0kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377312; c=relaxed/simple;
	bh=UlAsKNHUgln7eAumKMzvqbycdRrzhxEOvoeet7XkcNU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jtXHeRsARyoyRzVKSjyv/4o49KIUO4ryY+e1AoOjE91MB5CDZdO7WM2L4KBgOenv0Fs8YauOnsxagkFxCu4KXWJhJZb2ycZ/ttClFSAXIxbnlQYAFKJKd4M3F6ieE4jEoeDztwSBMek0tFxQVZxTUPuxe2GxucxLXNINdpzc0Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DXvP1l+R; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-22435603572so18960915ad.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377310; x=1744982110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWAPb5H6B8HVYPSKWIXFA9rVM/O356OndjYJjviUmrA=;
        b=DXvP1l+RztnBGu56rBULaljSaXdM/ENvEblXvAg0Yrd1RSkRTFK6gZYuT/dXIiNFk2
         VndpQVNw+QPnj5YDKNFJu0Z9G7RXroUnlxVci6TAdyDXmkSPNpR+T8PIm+CoLkqR4li6
         9PZyx7dfrsmQv5Q6ZZQGlhPbMWaj6kXQoSCMuAVp++OBJKz8fhcBioY3N5AR6dHovfpz
         yCkNMeN97okI8/TF3CstIR+Irrp9oBTyPXDUI3jcT1rb38Yv7COBq1FaM6qaPrjMQsks
         MZE78a09Qw9OB7wUY0PFMTwJq9kHz+pKOcmWp97txRT5ohOT20FFCqucrxCqbbqyd46y
         39Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377310; x=1744982110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWAPb5H6B8HVYPSKWIXFA9rVM/O356OndjYJjviUmrA=;
        b=oq/mCo7xBnHSe4brMKxc9Uv6/WLI1/JhAagwX0P3QicnEdnxF/tJUCp3H4nPRF+WjQ
         BjL5fezAFlQLUcsUgpUCk5PF9wsj4JbYZ8nPlaqGqpUPYB8FCKxQaAw5GyMMImWvbR1g
         nwR9k4xkv7egT3AkbgulRUtSBPMXyboQ8LwHqbUGWRyUZGbg276zxu/QqROyM3hSVaHA
         LrVoJ07DsVY0Xnqq0sSrAy0tmZaPDTtjblVTlDCmN4e5Mf6pQeL3C5x1kwOmIRz1wIcw
         KFggW+Ah4UuJhjy0vEqbyth/WHcmarfay6IQOz5YL4O2E3K2G/YQGNUwzDXt7/Pjjf08
         p4Yw==
X-Forwarded-Encrypted: i=1; AJvYcCViVIM/IKZckr9RfMXtHtjC9YwPhEfYZ0Xt8P9aR1hHfnGT3LXmjMRRzKgkFzyDj0T07qOWrszmtpyJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzmhLVvaoof6DhsDpxohzqX20Z+Ql2GqUNuHI2gDrcBNNZxzpuD
	OewQi/tpA28rK372AgvWF0nZNzSSmswUzIq4DH/PpPQSuCDLXG/ltDLXWSc22+I=
X-Gm-Gg: ASbGncvD4HyX+5W/Z9ZieAmNjvXNTTQ3w8etsidARL/ZRO2QxiWYX7oh/FZ/BYDeqHV
	xW9j/7EPllx7CIP8VjLJNZOipGMmY/7l5gzHc/X+1sop5VVqgiugUShvngTWmBrkYpkgTV9MP3Q
	esoCaJVCLwqYRJg3EC71WdkV/FamJmZ/QvgevV+giQ7TTRc03M4Jz+yu0ENd3gZQkEHP9x4Iq1C
	UjP+iJR5biZv7P2PSqOvoO1aH3b2Uq7yx8aobPuEaYbpb2qoY0RomjtccSs5OqpLBtpLfQM0O3o
	wsqkdSUJeSyzL1cUfdZrTXaQfroDluo=
X-Google-Smtp-Source: AGHT+IHIndEecRT3AvZxYCriHYkwaE37vFsVhEAY5FozYiaAsXwZj9EbWpr4y1scyShWVdTuh6BCLg==
X-Received: by 2002:a17:902:dac3:b0:223:66a1:4503 with SMTP id d9443c01a7336-22bea4bce88mr32987205ad.30.1744377309837;
        Fri, 11 Apr 2025 06:15:09 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:15:09 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 2/9] pwm: pxa: add optional reset control
Date: Fri, 11 Apr 2025 21:14:16 +0800
Message-ID: <20250411131423.3802611-3-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support optional reset control for the PWM PXA driver.

During the probe, it acquires the reset controller using
devm_reset_control_get_optional_exclusive_deasserted() to get and deassert
the reset controller to enable the PWM channel.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/pwm/pwm-pxa.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-pxa.c b/drivers/pwm/pwm-pxa.c
index 430bd6a709e9..dd9c6af0f672 100644
--- a/drivers/pwm/pwm-pxa.c
+++ b/drivers/pwm/pwm-pxa.c
@@ -25,6 +25,7 @@
 #include <linux/io.h>
 #include <linux/pwm.h>
 #include <linux/of.h>
+#include <linux/reset.h>
 
 #include <asm/div64.h>
 
@@ -49,10 +50,10 @@ MODULE_DEVICE_TABLE(platform, pwm_id_table);
 #define PWMDCR_FD	(1 << 10)
 
 struct pxa_pwm_chip {
-	struct device	*dev;
-
-	struct clk	*clk;
-	void __iomem	*mmio_base;
+	struct device		*dev;
+	struct clk		*clk;
+	void __iomem		*mmio_base;
+	struct reset_control	*reset;
 };
 
 static inline struct pxa_pwm_chip *to_pxa_pwm_chip(struct pwm_chip *chip)
@@ -179,6 +180,11 @@ static int pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(pc->clk))
 		return PTR_ERR(pc->clk);
 
+	pc->reset = devm_reset_control_get_optional_exclusive_deasserted(
+			&pdev->dev, NULL);
+	if (IS_ERR(pc->reset))
+		return PTR_ERR(pc->reset);
+
 	chip->ops = &pxa_pwm_ops;
 
 	if (IS_ENABLED(CONFIG_OF))
-- 
2.43.0


