Return-Path: <devicetree+bounces-236587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61402C4595B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3B603B693D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 358B83019B6;
	Mon, 10 Nov 2025 09:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h9PhwnKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF6430102C
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766135; cv=none; b=OT4MCaM0yHF0A01cVgz+jEcwSwxBY4iPVRPZ+pie7V9ccRu61YCVafShOXnC7xFz8Uk6UAXSjMmYfl9+/Pe38BXZcQMVtChgaA2Dr0nNm5VxL8TH7fqwIxKQq3i5M+7jrasQxq3JpWXBSDD4iw0jQ4emZR/aHf2BmUqh5fgB868=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766135; c=relaxed/simple;
	bh=459dlBPh3LInR8NOH/R4UDIusnkt1kveYPqleYn7ivo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eSrd3GxDeE3xtcq4SyjMKkDNNFej0QN0+q30FE8VZHdfB1JM3iDiqPqUqUhbRRfYty4SAA91H29he2ojI6Q90zC7tTnjVvlLj8/n5RhiMVLT7IpgipRUu/urlVXkAQmD4PNnVrIuhTXq/7Pqs3h3Rv6VWoMzXdl96abdUbGKLvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h9PhwnKG; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59428d2d975so2830335e87.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762766131; x=1763370931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=h9PhwnKGqK8eooZcjVt/bP7w6Cn6tMOMKltrRTOCBsqSMihDpCO7i+p5CmMJEKwIEo
         GMRuBjNes1OTTMqzCKHrTzvpPGMQV6pM7iqHSz+OFVGM69ofKmN8X3en7h3yylfP8aZA
         q+xSihJy2i6+3o8Ka9Um1HYQc34ZG5a74HAnRccoZjrzyBH/M19GuSTzvrkbAQCdJMPP
         diZ04qk4v67Rrumj5qLL4tgyGaSy8WnHHVJji7pVkM0oRwCYvchPYya0UaejVuXznWmY
         8SLKML3xlQdqqq35f2RtrUx81qmSnd4bd5+aMWrqVR8MGOPWSzwayDfsXep3YUokYGfx
         Fm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762766131; x=1763370931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=po5AGAsYgubrbOUtSBQg/IKMR2McNN/WX28+CW3dzQ55CBK1VdyIXtGujp2KwMlrgw
         CHEg+xp4f9PNh2GGWN/JYe69SauPJwXLjHLaR7vn1K6BUnWQ7OjK7droxuZpC1/GmGQu
         WHLCEF9pK5qrLx8qTwL023IeE+gIqD9Rws5ukZBanB008wBMAcQadumvJ9tKVLoC/MPH
         mbG4B5OB5Gse7qUzqGMfkl5pOr+06OAn/JriMJjNRY/tfB/a22QmuR7P6IphE8AsA5hr
         fts2DUL990+AooFbYoVBaeTGM4sKmfebwQqDp7yf0Y8E9xp5wfecrNCt1B4zq8VPYJcF
         Myew==
X-Forwarded-Encrypted: i=1; AJvYcCWWNYTZcz+R1bsGwIZbXQFauPHie8XW9Ol9JmMlvtUIAxUQzSWH7hOk5mikqoaoKxMIc+yUxOfv/Qxb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf8/jf3CIhA9KY7CER5aFiP/BMoXCeoqUpg7U7QfGvfMFoAFq1
	zQo82gnIvnfHB5EOw3xV8Mb2ORts/QyDNDPMHm1VNJTUeSZJrK2JTcIV
X-Gm-Gg: ASbGnctsb+xVAe5dUmbY5xI2y/oKapkPzncwV5XO3kZdM4Yw5YvGw0+FngGcXbqOcHh
	vPpmT5kxv0Ykjo5qneSc/FN/LDx1oiCHGEdmGTuD62/01QHYIZKvZwtR0qoAE+Tjf2UYFrB8vBh
	eUrwurc59rcY641SPf3Fd4WssF8GDDZvWkaowR2NjMgNy+cCLLBQt0d4C+f5k9ZOcQVf2Y8rK97
	D+o3kH48rhZEwP2GSzu9GWQ7iOuRQiJqglgg0MJvSMQt0OshL8i3GmDVO1tDU/EHOjCbvkE9OsE
	XtHm3cJyg4VDGHTvriUDJWChNAG/scnPyQ23Q1vWKyL+p6YSnrG5vv6fYn9rkERoAMv1z0qhznp
	5chARuWzzz/WJWF5Pd6tyt8vW6ZFyIfz4yLYqXPu41PcTcKA76QjO35QAeE9vMUrj
X-Google-Smtp-Source: AGHT+IGz/i0ncWwddIJ+2HVNMQhgm/XQg8Srr9UXcEYDpRdQ63zZfLAICmPWS4NS9Y2VhpYWQE8GAw==
X-Received: by 2002:a05:6512:158c:b0:594:341a:ab1e with SMTP id 2adb3069b0e04-5945f1b74afmr2232518e87.31.1762766130847;
        Mon, 10 Nov 2025 01:15:30 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a0b76f4sm3852006e87.73.2025.11.10.01.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 01:15:30 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v3 6/7 RESEND] dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI panel
Date: Mon, 10 Nov 2025 11:14:36 +0200
Message-ID: <20251110091440.5251-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251110091440.5251-1-clamor95@gmail.com>
References: <20251110091440.5251-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung LTL106HL02 is a simple DSI which requires only a power supply and
an optional reset gpio.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index f9f1e76a810c..01ac0af0e299 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -52,6 +52,8 @@ properties:
       - panasonic,vvx10f004b00
         # Panasonic 10" WUXGA TFT LCD panel
       - panasonic,vvx10f034n00
+        # Samsung ltl106hl02 10.6" Full HD TFT LCD panel
+      - samsung,ltl106hl02-001
         # Samsung s6e3fa7 1080x2220 based AMS559NK06 AMOLED panel
       - samsung,s6e3fa7-ams559nk06
         # Samsung s6e3fc2x01 1080x2340 AMOLED panel
-- 
2.48.1


