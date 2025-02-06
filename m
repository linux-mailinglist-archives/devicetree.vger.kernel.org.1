Return-Path: <devicetree+bounces-143616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B26A2A93F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 205023A747B
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B600022E41B;
	Thu,  6 Feb 2025 13:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="DgpG9RED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A99A22E41D
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847595; cv=none; b=ll7YK3rNZphiTs5uk5fPfRL2weDFiiAoZhngf8IpBLXR06uBDD8QEDXxcDjw9gJI5RwJtM9zIyo/amhq0cszN58S/7ftsEM2AZtZzsvwkXKLBBdCOZzDv1A4L9c2bIY8eemSyp2wJJZOHPdim44G8FBH8GOkvZRXFzaWzPZtwgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847595; c=relaxed/simple;
	bh=K9HkvI4uN9Uo+e9aX/9cHbyPDpUHNNB4CZUEDwOkD+Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RpMKoRi71klNZVTqWm3M/Bc8ZPFG3+5lQOdwO1TeS0ZqLdJTWpERQDVGA2FkNzl5Qn9CrxXkBMvWkEJlNxdAt+6hFBTOYbcNpWd98EZoISn7/zQd0x6zfRCMMY49rgnJ/rMEOF1toh6HQEcuovqaJcagKMgq9bZl4QTQ7X8R1oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=DgpG9RED; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2166f1e589cso21245305ad.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1738847593; x=1739452393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRpcrg83W4YC9Q6eBSOmMfqvqVxhGz5np6EgD/qHnrY=;
        b=DgpG9RED/rOxvgOxcyN9N6uyqH5YNjvFljFynFcpML/I2BUYCRtt07wLnIi9U0Pfr9
         SOGY+Yft2/zdg0CZBsebxgLG9SGWJ4ZG4pgB4hPS3gutUELlxJ4dRU8mmwIVmbP0amAb
         QB8uX+tJGwZRCsKtjs1z25g2r9jriih0GdWC1RKqCImfvSwbLpBDnGECgoSCbxzDtROH
         Ms3N7V5J/1zaI7UoYsa1a0uQDNtgvnDuiXQt7mbEis5y4cSapbyM0ly7tUHjDtu7FKF6
         ctZKHUgFn2+q2TbqPYwwxD+5azEcSF7ferkt/N6itnktxve+CjJ3NPAs1gOYT/HWrTqO
         yH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847593; x=1739452393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uRpcrg83W4YC9Q6eBSOmMfqvqVxhGz5np6EgD/qHnrY=;
        b=jaIMqLgw19rxVE6gHES1iBMaZRWc57wz6RTWSMR9IEqWnLrxxpbmc3J8u3tQZnVXa6
         ximX1Mus0NNVoY54eFX9stUUZHUtOpFXvCjGGHO/NChwTS4QbGrZo+XUV/HnFmqlXqyc
         yrtsJuroybSU93hjdF06CMC3Ooso5+4a9PRmdQLidXPRQ0bAAwsY3/ng4pQ3tZBpM1wf
         fDXJkF5qfEZQ0JFcwHPCpAwZPNqiafKzbwLY73Ec6dj4xH61dSmLSM4SM4UlwWxEg4Et
         pJAjHtjmeiP6XlYANsefHNP3Rhdp6y5Wkjn5FNfSO9F54Kh0CeWOLeZBaT3u/ypsobzO
         m89w==
X-Forwarded-Encrypted: i=1; AJvYcCWVntzGpllwRl6D5zrQ30Q/KcZpGudKKMe3C5xeQbk8B9EC2ECjT5PE84NV6BSUXmzsdW6aV6D9BKaj@vger.kernel.org
X-Gm-Message-State: AOJu0YzIoWyhqqAcuw0+ZAWskcGBHB02yKopsuIUHKOioWwUefL+cPm7
	y3zy2VUS9ImHMEjb7NSHAwWpjAfP+ACWF+WprI7HO+cJbcKAr+n0TOBlgO7GaPo=
X-Gm-Gg: ASbGnct5fMDnbbPRRc03qNBWMKowshtkaVc1pJGjVk0voqqnheZ29dS2aEP+fmGzIrL
	ubKBYaCB5rYcomjTZYwPbyZYiYH7QaaIH80bVAlPcO06qrsTewAiP10Z1r1mwG+WYUcvOmX6X2I
	9+xq/22s0qEezQfKqMQdv3f4LXIN1PZSAZ8bxAz1HAgTZZ2sRUsEXltzxqvkPQD7UOOjTqbr5Tc
	U1R1/QM3ohbUrwqfbkFp0GybcKm+1hvaE+aUjC08ZJqNnuEBAFT6Q1zFMGVIHDhvVcegBSz1f32
	Z/GoP1LkzbW5bdHlKU7SZ2pSLRo8IcdFawocP3YzKeACtCAtiv4Ylxg8+oplUK0=
X-Google-Smtp-Source: AGHT+IHSlKv+WX3I/TgMDMO34ZgxTwNFmFgGoB+Q3vS2y02BNpmlvXFZebCnCofwbuz6K+dOMWGR0w==
X-Received: by 2002:a17:902:e5d1:b0:21f:3a7b:f4eb with SMTP id d9443c01a7336-21f3a7bf984mr34756045ad.22.1738847593324;
        Thu, 06 Feb 2025 05:13:13 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653afc2sm12237925ad.62.2025.02.06.05.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:13:12 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor: add csot
Date: Thu,  6 Feb 2025 21:12:58 +0800
Message-Id: <20250206131300.1295111-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "csot" to the Devicetree Vendor Prefix Registry.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 42d14899d584..375f1f7c79ef 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -336,6 +336,8 @@ patternProperties:
     description: Crystalfontz America, Inc.
   "^csky,.*":
     description: Hangzhou C-SKY Microsystems Co., Ltd
+  "^csot,.*":
+    description: Guangzhou China Star Optoelectronics Technology Co., Ltd
   "^csq,.*":
     description: Shenzen Chuangsiqi Technology Co.,Ltd.
   "^ctera,.*":
-- 
2.34.1


