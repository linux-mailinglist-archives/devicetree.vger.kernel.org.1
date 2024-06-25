Return-Path: <devicetree+bounces-79743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C536916A53
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23EAB289B3E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A7116C87B;
	Tue, 25 Jun 2024 14:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zmBgx1tw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299A116C437
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719325581; cv=none; b=uXLRJg95zYmuIvWqVSRPQY0tbpu1MZxWd+7D/Qcls1Rhef4ww7FVXMHO5eWufofKEGSkJLCI2LMirgDBJ1rMk/uHrXxLYdFk8w2RI49D1EQ3KQAzSLzNDVEVGC+2Z5rSvfX1as7Rie3r53oAHQrEWhUBb9dEMlkzaURzYVw7Gjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719325581; c=relaxed/simple;
	bh=UBAehqCBvC3J8tMyhcNUF54AEy0mIS8da+jiNg/1Zw4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fjipQf/kBJDLFbeN6m0sDjw1aIczF2yD/4Ga2jTZSjh/HeDrMYJobTBITkYBzwWKIFcl76leWS5DAEBWByJsK4KYtGOfFR2/Br/+R5mrpD7PB5ij41a+Rzqf8dZjceq/kjbmWOWsU7T/0fIJrSZGweYrY35UQkpm+RzMHkoLLO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zmBgx1tw; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42108856c33so39313195e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719325577; x=1719930377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FV4CE0/NkRPUyACNkq6PofDWaP+2ii4ghj22mjGmlA8=;
        b=zmBgx1twI6ra8tu4yrY4ezFDG/cuaLjFpT7eANn7gtJCFrzAqcAUoExU6HKa7YcSKw
         IxXlJanOQRFEMV4Oa4InenYkns97xm+xdf8x8/ZZfkLSTYva4tpCXLRtSa75lI3pv94Y
         ZiIicjTUwZEKud+VEHkfaI+OzcTObYyQPaIosid6ruuf45DiMQVrqQ2o4TCZDRbd37q/
         cP55Sj/AYBTlQnlwkLe7NuHZ36w++PUzeJ/Iat4WX2t15h5eJ5NugFoWHJyMSMSkF3tw
         mSrxRcr2pjBdS3oTOs4nfBdtMJxbDJTRUqze9yTqhlibn2XD2sko7GHDxS2WozO5dpr8
         ChUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719325577; x=1719930377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FV4CE0/NkRPUyACNkq6PofDWaP+2ii4ghj22mjGmlA8=;
        b=P+aCzevV9M8jJed4Su5V1MGs6y+kbXqp2kbvJH1flrXG3l/PSSkdnMjKHEKpd2fgGc
         JxlTf1uQ5wTiBTMgBqBCLMpJgotGP9QWjeezSkuIj6RbGkIJcYp4dZuk1odrzu6kBDm4
         d+WPU50OO0YIkAV0Y+HL/rEfoM0xrAn1wT5G8lU3ofMhvgmGjjYCIvu8WvnxHxQYPghp
         daAfmASzft8yU7QBwsik2jA1gq9t0yL8J0Vfs/sbQ3calsFc0AUNamedgrxRfQd/KMyO
         QC67H7FSaTH06CVagT2gu8MhswH/2Z5JNKYNGc6Tj/GY70J5EeDFlMoKavMkSqQIDgpK
         JBhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqWaLyeGHtwyFlsxI/6+puCj+PENUrKTxdDsr9kkGnLtISQe3uit0/gBY9T0YI7RRC9B1Lulg/OfORHJ2BXCpXTbc9+obfwq59rw==
X-Gm-Message-State: AOJu0Yy/sE3UTqgoB5dnS/XPLvdw+dXaSfje1dYCScTNh2bb+pwcL5BC
	qsVmIKNvEsVVBbW83HN4pZg6xHXlKtYR6apyIvStH/6ey2gwM7Yly4hnBxlDhi4=
X-Google-Smtp-Source: AGHT+IEVtt66qRDBgXfqzQWK/I+SwGGKWIhnesSejwYHsrjo/RZj+BSNt+XAKeYLuJg9PnW2qsOOIQ==
X-Received: by 2002:adf:f806:0:b0:362:56c2:adb4 with SMTP id ffacd0b85a97d-366e3294403mr7027132f8f.18.1719325577668;
        Tue, 25 Jun 2024 07:26:17 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:b30c:4c5e:f49e:ab33])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d211881sm213770685e9.46.2024.06.25.07.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:26:17 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add prefix for lincoln
Date: Tue, 25 Jun 2024 16:25:48 +0200
Message-ID: <20240625142552.1000988-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240625142552.1000988-1-jbrunet@baylibre.com>
References: <20240625142552.1000988-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Lincoln Technology Solutions is a design services and LCD integration
company

Link: https://lincolntechsolutions.com/
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fbf47f0bacf1..dc7edf8c33c1 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -820,6 +820,8 @@ patternProperties:
     description: Lichee Pi
   "^linaro,.*":
     description: Linaro Limited
+  "^lincoln,.*":
+    description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
   "^linksprite,.*":
-- 
2.43.0


