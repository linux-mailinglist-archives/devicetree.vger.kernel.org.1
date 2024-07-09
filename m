Return-Path: <devicetree+bounces-84294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D6792BBBD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:48:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FE701F23174
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E842417D8A4;
	Tue,  9 Jul 2024 13:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="rFhzhbGG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32EC17D37B
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 13:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720532909; cv=none; b=ojix2w1Z67Wh02KVGlqQt0bIx8FwbHMvSdL0AwecP0TrqNAS4E/zWkJlm6q9dBfh7Cu3LSvLQdOfoBbuLINnU6dlVU8UnYPlVI8dyZiXp5aPgE2capYT5VHMVsmWH6DAcisfS8jOdoz3n/btmzKzsou1X1mfj9+tkJhlPDGOmWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720532909; c=relaxed/simple;
	bh=pYPTNY8X4IxGHrR0aSERyjf84J9xMrNFhAnJJZV75Tg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=JqnU4BJ7M5FpZyL0gT6ToSIMDPgbOdn2l5Eh5C0Zw0fNz60XHFyEahlaEwW+o+uKHpGfjcqKTyVf899WzEEvPfmSQDcDNYOckcaBt/E5etROy0R8BBBHCVa1olrnEnCMNN8o+z9P8idgH0Nne5C89eo7bKIOuLPyRKXIualxrWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=rFhzhbGG; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1fb70169c23so17673185ad.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 06:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720532902; x=1721137702; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EcZGfscxWH1cfj2JazAFXoJC02WpocVggpq54m1oHTg=;
        b=rFhzhbGGNorhXYF/A5bwxIO/XkFdwTiqdKRPSUG/Y5uxbEr8UTQ9lQ+UWtBbu0Bjyl
         xlXPVIDN28YM3FtFXdzSQyO2T3+DP0UFFq5Kk7NsEG7e+ZHypP+IwfkxrJAYzQ5/r8bb
         RlVtFBjnFQuniR5qAuxTgvGEx6lqh7IGCgbr7GRarG7DYDK3iR9yKOUo3JPTn2jpQvmy
         lu51t39ktT3utHuC1Kt4/pJAfK8zpnytutSF0yviSJi4OIfdJdDCAfG1AhGzOkim9t2r
         Rl+UlirOf9f+uJWE+sGyLwJ+LIHfw3yBAdTUPRORqv8A4LmeKPpvgJ5OjQJ5iWHNyOrR
         t1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720532902; x=1721137702;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EcZGfscxWH1cfj2JazAFXoJC02WpocVggpq54m1oHTg=;
        b=gCnMBdCR0Bub0VrR+h6P3HOmPL6HzigseJynkdSTmOV6Y7V9OJBDBOmiORgaW/nsz/
         QW0lSad5J31GJA87hRvgCr6CKDyppIc3a0vCArZxxmnWTtNcMg4dCadxrCallBe8TLff
         Zht1FCbd0h1p1hwz3Ac77K2EcBBbpELBYrgZ0Wj4KQcAO7n9aEqO+asxf503WD6kVQT3
         p6qPJYoSVVIUpZnXjuwg2+4+U9QL/KlWga1CQGXUcLmX6nVl+4BLxBeFD8sQ90GUcHte
         MMf0N/MCL5T+EtIN9iSCjNbWJfytWbSQtviT7biWsrrkCJd/IMwpGipjusg0bLe3xYc3
         vgfw==
X-Forwarded-Encrypted: i=1; AJvYcCU3usZZyTWp96uRz3uzRJll9CF9dtHwW47kiTengeQxxTyV9p7o80l8gT3qY4JdkL1WqinAG51b0xAYLDqYirOykkCxnfaKOSUCQw==
X-Gm-Message-State: AOJu0Yxj3OOGyU+mG6BkFiBthKbdflQsVVDEdw+27OsU6gDVpwskxy1g
	zjGYKYPy3c7AlAYjM5/3VHbJHUC2cna5ZM/Gg731kSpHG9zI6b7/BkVeMdiFzYg=
X-Google-Smtp-Source: AGHT+IFX21o+X3VwRasdQwyrEqH0PuWe1B+40bbzeOg94dAYx5KftRVmTty5gE2r5cIfdyuv5HR6pw==
X-Received: by 2002:a17:902:d552:b0:1fb:90bd:afc2 with SMTP id d9443c01a7336-1fbb6d2516emr17327055ad.36.1720532901816;
        Tue, 09 Jul 2024 06:48:21 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6ab6b9fsm16211685ad.138.2024.07.09.06.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 06:48:21 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	mripard@kernel.org,
	dianders@google.com,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v6 2/5] drm/panel: boe-th101mb31ig002: switch to devm_gpiod_get_optional() for reset_gpio
Date: Tue,  9 Jul 2024 21:47:51 +0800
Message-Id: <20240709134754.28013-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240709134754.28013-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240709134754.28013-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Switch the driver to use devm_gpiod_get_optional() on reset_gpio to avoid
driver probe issues when reset line is not specified.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V6 and V5:
-  1. No changes.
v5: https://lore.kernel.org/all/20240704072958.27876-3-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index 8f03920e3503..b92082bfc932 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -286,7 +286,7 @@ static int boe_th101mb31ig002_dsi_probe(struct mipi_dsi_device *dsi)
 		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->enable),
 				     "Failed to get enable GPIO\n");
 
-	ctx->reset = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_HIGH);
+	ctx->reset = devm_gpiod_get_optional(&dsi->dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->reset))
 		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->reset),
 				     "Failed to get reset GPIO\n");
-- 
2.17.1


