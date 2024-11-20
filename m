Return-Path: <devicetree+bounces-123350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C96D49D4277
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 20:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75C1A1F23486
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 19:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0A51C304F;
	Wed, 20 Nov 2024 19:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="UQGRTx8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CD61BC9EC
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 19:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732130254; cv=none; b=UgwRdBTwHFiH7fADtFKUokmC8UNpIfM7/F2onY7Ml8CQF01IV48RFVPtiUxuXJjco7eI0xm1pNYoUAXCxMLkpX1D9h8l2WYzMKbuFwXJdnm6B9sKvxLjfKcB6rZubx8bzmIMhylzTZKpLq48Q2jsPLxMRO+2V+K5sNRwkILnkW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732130254; c=relaxed/simple;
	bh=qU/BCtVEF31P/c3SNLO19S/y0k70QJXixpBlPsGMgJ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gH76yy2pglAYQTENQPwlAuExGJEqPcBGkcRu2Z09DhH3RdHU/RbxuAldL4VJkRHyn1+4QBkU5LKmrVBN3lZtdSmk2ocpd7Tip9mlAmG4Wj/aJoEFDj6Yav74c0vL2A+4QIa52ivFGk+X4e5fbHavAl5rwhPlhQx8uoTP8nmd/CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=UQGRTx8k; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43167ff0f91so310805e9.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1732130251; x=1732735051; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9/cR/dqviroqX2VCS26LbceoYUIdqbcsui+WHfkKVw=;
        b=UQGRTx8kY4S4yNsI10m2iMdHRU2aSCXydrZKBp+KM9pYJsaJD7CVu22VPgF2lXYnuf
         tUd9Ri9mFP7Hsu7SJashedF4cEJUI4aP3Ba2hQ1Qa5kqZ/J9ZhUP+my5WFZK9bEcRBXf
         YiH8j6Im8bJeXtL6Mr05FwswRjWtc12PVsKdXKEKvm/a9ckU1W9tMvXh2dtYPiq0NF0J
         O3ly2Xlapxt4zoXvmENnsCTnQ8Vc0arT5G8jKNpWwfCsJFPhRZKf+gxaa4y+NFS7EVjS
         nUzPQrVTrnHhbe06FUhiEAb3rN0CHGKqjA/5YbWsB5HeGK9HxdYqRMiRxJhJsTcjlINh
         qfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732130251; x=1732735051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w9/cR/dqviroqX2VCS26LbceoYUIdqbcsui+WHfkKVw=;
        b=F6AZTm1TGoMSiZargM+Gf2Tfmmkj05pnS00hvr4v3TwSJCkBqgXGXmufbwOAlJzZuF
         T5xZFQTlpK0APB9qRwz0zH/oT4Q5okjM4KR1g+dBZCvsaq1hGhCsuCig05WOmcaIVVT3
         GxYsnL2Cup95pt8cl0Sa+pU28IbFB2zOpYah9mEfQHH1cYeGuYwkEaFdtcqIWiEW01GU
         wLxXyne3P8gX8xY9Sw6jTOZSQqyAXSFNWJjPo20R2ImCHbeZTWeO3DwPYHodEwS0E7J0
         to5bW+MNDcTu9eax7JfZUlkbL3GlrUwoUffDFDzdRvar56TpU07vk8d1+1c01nScefuk
         sq+w==
X-Forwarded-Encrypted: i=1; AJvYcCXkNW1WdihoyS5/q+9fqOB3mXr20RM1M4GfhA4KixFvi+cn9KVraaY2uaI2rvalm0ePT7MnDPwXK+FS@vger.kernel.org
X-Gm-Message-State: AOJu0YzSaqSknl25ozal5T7nJqG/12J8J13dhgyaBCQhXxIIyE7EF3vF
	ZNUJmc3+jH0oPiMJIsGV8fiWJEdTsI6k4RV10KyU/FIIWNqGuXlEiVWQ0ChxAjI=
X-Google-Smtp-Source: AGHT+IHPj9lIQrPiRfD7rVN0tVOtOkEexmIO3vjJFqQ8BVd0pibyDdS6UXNk2coAs2i3XgIY5wW6Sw==
X-Received: by 2002:a5d:5f52:0:b0:382:47d0:64be with SMTP id ffacd0b85a97d-38254afc606mr2848672f8f.29.1732130250837;
        Wed, 20 Nov 2024 11:17:30 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3825a2c5ef2sm172457f8f.53.2024.11.20.11.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 11:17:30 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 20 Nov 2024 19:17:04 +0000
Subject: [PATCH v2 2/4] media: i2c: imx290: Register 0x3011 varies between
 imx327 and imx290
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241120-media-imx290-imx462-v2-2-7e562cf191d8@raspberrypi.com>
References: <20241120-media-imx290-imx462-v2-0-7e562cf191d8@raspberrypi.com>
In-Reply-To: <20241120-media-imx290-imx462-v2-0-7e562cf191d8@raspberrypi.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Reviewing the datasheets, register 0x3011 is meant to be 0x02 on imx327
and 0x00 on imx290.

Move it out of the common registers, and set it appropriately in the
sensor specific sections. (Included for imx290 to be explicit, rather
than relying on the default value).

Fixes: 2d41947ec2c0 ("media: i2c: imx290: Add support for imx327 variant")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/i2c/imx290.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index da654deb444a..7d794a509670 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -268,7 +268,6 @@ static const struct cci_reg_sequence imx290_global_init_settings[] = {
 	{ IMX290_WINWV, 1097 },
 	{ IMX290_XSOUTSEL, IMX290_XSOUTSEL_XVSOUTSEL_VSYNC |
 			   IMX290_XSOUTSEL_XHSOUTSEL_HSYNC },
-	{ CCI_REG8(0x3011), 0x02 },
 	{ CCI_REG8(0x3012), 0x64 },
 	{ CCI_REG8(0x3013), 0x00 },
 };
@@ -276,6 +275,7 @@ static const struct cci_reg_sequence imx290_global_init_settings[] = {
 static const struct cci_reg_sequence imx290_global_init_settings_290[] = {
 	{ CCI_REG8(0x300f), 0x00 },
 	{ CCI_REG8(0x3010), 0x21 },
+	{ CCI_REG8(0x3011), 0x00 },
 	{ CCI_REG8(0x3016), 0x09 },
 	{ CCI_REG8(0x3070), 0x02 },
 	{ CCI_REG8(0x3071), 0x11 },
@@ -329,6 +329,7 @@ static const struct cci_reg_sequence xclk_regs[][IMX290_NUM_CLK_REGS] = {
 };
 
 static const struct cci_reg_sequence imx290_global_init_settings_327[] = {
+	{ CCI_REG8(0x3011), 0x02 },
 	{ CCI_REG8(0x309e), 0x4A },
 	{ CCI_REG8(0x309f), 0x4A },
 	{ CCI_REG8(0x313b), 0x61 },

-- 
2.34.1


