Return-Path: <devicetree+bounces-83053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A339270A0
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 09:30:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57E961C23366
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 07:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4079B1A2FD1;
	Thu,  4 Jul 2024 07:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="PwVme4Ve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8A81A2FD5
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 07:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720078225; cv=none; b=J9EVsTYdDfzxLVublo+o4MkwbImE0sNrZa1g0hY6dUUliPzEC9eUPUE+39KbRZ99HiR8JvcCbyp9hRgxJaqtw06y2fnyD5Q5AjZyLenzUOh9zJTs6LwUjTL2AWgchBdb70W6G5kSKwYwU0+zEYGSYR071MP2SRIA21v2AsP/r/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720078225; c=relaxed/simple;
	bh=1HtQIw/F554XqyBf3fxv9byew8tC9OUoFF9RTeTPC6k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=FSeuYisnWY7VVTesTZpZXH04Y+2ARHtjNIh90Le/UDADPTQuZ/b2V0RY9tiB4q7CMuXTPHbhPWjwZyn7frVUJ2C+ZHdCmosZ+0a2cYN2rnqZO35oqDIDqTHFYh4GK8fVpu41khY4ZVYuePo0TVNMbrEUk2FQnDr7A2YRqJvJmTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=PwVme4Ve; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-375e96f5fddso1318435ab.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 00:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720078222; x=1720683022; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=njjqiW8Ns8mYNrJ80NgEfDcYprJVubWaVkRJskWAXIs=;
        b=PwVme4Ve5yV9ti4U8XiLFeaHS7pE923fpGqFl1e85YWFr4rdw1u0ya1nDBrE+I5q29
         czK5i+fRk2TPA7ixuzHVXV6grEyNAr70hI+D6UjE6pX2v+s8tI2c7JyJzCLOqJtGb0nS
         EkU5sc9MOuepJ+KIi1FOy3LBSJbDAlpXGecyFhonITYC9eVIMu88o7AWbGWxXoOALsCj
         Wfu7FJBe6V/jbAfrBGAmmgNpLbRT6aTKTOQwk+nPQh+UBsEqmu0SV7yi6WlyEVOZ5IE4
         ndS4hS9IQTF3GKKOxeiVTvojKtsYCSODimFNOPMrOc6U8p0phQAjrwTTvugcEwxAxhYn
         Q6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720078222; x=1720683022;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=njjqiW8Ns8mYNrJ80NgEfDcYprJVubWaVkRJskWAXIs=;
        b=Zpp69nJllBBWKpq7CqXW4A7zEWZUeTPRf7IUgP9btBLM6doX3T+FadKhnxdw5IEGnP
         nDSemc2ptbYnxjlgwwJ2e18kg5j/zSuWbnYa0ejU7Zi+BDG9RCcUkUjZr08gjIoA8zrv
         id2BoR4blovbchUuLzOMnYZy5lAjW6o3RGVy0fhr3vVW1XEMXJWN28vSH0XMLXXk6Ctx
         icfTygSnwBOWeJZGpxi/7u/o5P2dYFNCUfj/GgORApYOfXZYx/KS+Xn2OXZK0vkWG5KA
         a1NVo8Aon9CHp2Jz17xMiSJSu72oLj++S0IaEhP3xQ+KjwNnEw3aMIZqzPVjHv281jVJ
         UHiA==
X-Forwarded-Encrypted: i=1; AJvYcCXPxf6/PPvaqQ13S5tPUDvUJaGqAjr2FJo5AQjbNOWEFqRkhjNWYQSj/UH8350ONJg+YPVtgoAEP7+77QsXeqkwlpy1tBEz30Y7Cw==
X-Gm-Message-State: AOJu0YyupcEZz6dJQycxxbLOtL3/04wAq89stKwLGEPkIXWLUtP4JA8h
	xLBlCNsoJwQFIMpc1KDwjdy58IiyCU/9U2KL7lLCu5w61aTToXheCT24s2QlO/s=
X-Google-Smtp-Source: AGHT+IHq5LpUPHgza6khej7OkvBbetS3RDUKCfz4i9ClMIDyTpJOLGhpWp+pTp8XNe59IpOUtdzLfg==
X-Received: by 2002:a05:6e02:160d:b0:383:8ec6:6d0d with SMTP id e9e14a558f8ab-383953e2419mr12869495ab.0.1720078222348;
        Thu, 04 Jul 2024 00:30:22 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-72c6a8dbb2fsm7735699a12.31.2024.07.04.00.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 00:30:21 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
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
Subject: [PATCH v5 2/5] drm/panel: boe-th101mb31ig002: switch to devm_gpiod_get_optional() for reset_gpio
Date: Thu,  4 Jul 2024 15:29:55 +0800
Message-Id: <20240704072958.27876-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Switch the driver to use devm_gpiod_get_optional() on reset_gpio to avoid
driver probe issues when reset line is not specified.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index 159e401ad0e6..9f225c15b21c 100644
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


