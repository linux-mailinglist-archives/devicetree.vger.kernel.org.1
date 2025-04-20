Return-Path: <devicetree+bounces-168803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F187A946E8
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69DC718970E5
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 07:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6324D1C3BE0;
	Sun, 20 Apr 2025 07:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="mH+FpoEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B8D1BD9F0
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 07:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132704; cv=none; b=EEH2QjDAd3ktMFYLhbDVCinrJCYmDrtbVT/ZKXkXZxs8la4MBIwUe/gBAdMTlW+RDHmA8hFSGfqjTElLAVyUtGxaGI9f8CPgA0S9uS8wwVODsRCGOqlZGLeC3VP5idgQy+v/lVRHF3+x1Bh2OuibpbvaC/x07Ej/LWFVw4Pj+m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132704; c=relaxed/simple;
	bh=W91bQpfXNZR8c2bsacU3SIoLVlODdZYgId2qdCM6s58=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gii69TGHKcEezzHM26do3bWTUw9RYEyUsL8YYfEMJCZnfH0ATxHk5xdFyzBsymG8k3VTuBAzCcUeP56v3ThgKW6HueRajs+6usYUHEApmkm24lu+NUeQrUeGCyJrf/v6SC4XVTogkAZVxPNkQHZT9kQ0A2r2dRywxaz7g+O+SUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=mH+FpoEL; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-736c277331eso3654771b3a.1
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 00:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745132702; x=1745737502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CmeaXxUVGYcoGAVjJ4OOwtWzTNoCxB6YzSoPVdDhvp8=;
        b=mH+FpoELJIu9mo55Lw8AXvWImJESyA0aA1M4d8jk1TYvQQxFb5lDX+jMFY2ExjypCO
         v4oz+PDGODI2izlYf1uw/aewByT6lUDxbdgDAd374HxQ0r6Vie7HIlwfIaMlxA+tea6g
         XEHZQo8njB/KGnIBFB7zCCm41h8PsHxcFGtSUZ7WHVziNzdXDYZqxxDTmThd0z7Ksd+M
         9YLWQJ5BpycuPsmDdinX4cMji2emL67m0eVvUySZdKFt7sm9mBJjdZ1fu7EZAijAp8z9
         NoEYsetGU1avbORIal3vPRMk4xyk5zVOcnVyJZUdoxtLpV7nsQfJawmgDCMvoyveoCq5
         /hrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745132702; x=1745737502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CmeaXxUVGYcoGAVjJ4OOwtWzTNoCxB6YzSoPVdDhvp8=;
        b=FbNvLYTrTdTZlhPE/hQsmLs4SsoLiBAl0aIZYYpNMR/3aMhEUnJ7vRh5pDEi/wjMAs
         5eVB2rh2yRZLhF+CQXCYz9sWm93DPStKnpdYcgQJFj7Bf+RC1XorSHH7hpA/B9pXCKTm
         zulfOTF3Vy2RmiqoEO465rsuNPRNRsaiAV8oCrUDJico272p847hCYtRHBqrRlvLc2dy
         +rAHk9XkViMNBYwgipwhFAHBfRGlgRLfcjZn/sem6NY7eoVGXwv9ENHPK4JEozjULy/C
         nU+7pOlxDzm1RfC+fwMERT0WDdatrq1HoowUAVK3phtkVjs7KurZ2pEr28vbVJ4W5ykv
         r/Fw==
X-Forwarded-Encrypted: i=1; AJvYcCXdXW+g5ABILYyVZ0fmeU4EuxB1aOppT75qp8+mQqoquoHCLwcVzCwUEW2MzZ94AGgENEHlB0AdGdia@vger.kernel.org
X-Gm-Message-State: AOJu0YyXOSV0JqglohtjEF2RpHmdYhchsLqULy5/aYYP/MrU9MaW0BCr
	9bQnSmkb5j0SRRrdPEA/HNn1nuV+8KxVkwxA91OWbRqTmvFTQhv/co/QjvQsCog=
X-Gm-Gg: ASbGnctUUDFPJqNxs83yXAXWIQ9j09606DwvlItKP8LTAN6m4uaWNFv7hbe57N6q7LG
	ZrV1E2o1z9cctcr+ck3uvQ//SzKLdB8y4URVV2z+qefJm7+BEPFNv6MZKBWCjeNc90qxB/hc9Uq
	dIziPGrvo+nzXEXaooyIdMBZyTRfQRaQyt7gt4+ZhVi/tce0oQghGZ5P1QmsJPWpXO9bInAIOCi
	lB8IMdbnBlqVU8ZXQ7x64wZarMTG84xGLWW/7C0pp/e6cBpGz267nEc4Q+mGfyISdjysTWt6e3E
	DZs1HmzqgFGL0b1ZLkqj4pNi0FA7Ew==
X-Google-Smtp-Source: AGHT+IFx8mnkCm3C+pdkB4oHWAvoXoy60Ij5qZBakPGfhlMZ/vRsdrSNmQaXTxpzNl9oHvgKDHi1sg==
X-Received: by 2002:a05:6a21:920d:b0:1f3:3547:f21b with SMTP id adf61e73a8af0-203cc5ce2bdmr11487230637.5.1745132701993;
        Sun, 20 Apr 2025 00:05:01 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::40b3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db12743afsm3742626a12.16.2025.04.20.00.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 00:05:01 -0700 (PDT)
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
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v2 2/6] pwm: pxa: add optional reset control
Date: Sun, 20 Apr 2025 15:02:47 +0800
Message-ID: <20250420070251.378950-3-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250420070251.378950-1-guodong@riscstar.com>
References: <20250420070251.378950-1-guodong@riscstar.com>
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
v2: No change

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


