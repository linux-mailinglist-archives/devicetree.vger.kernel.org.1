Return-Path: <devicetree+bounces-186533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F9ADC48A
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:22:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96075168BC5
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D28A52951D4;
	Tue, 17 Jun 2025 08:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dycxxRg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD05291C1E
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148418; cv=none; b=MHPHZnSwP9eoqJRT2PUyCRNoZQ6XdsNNrC8rHlGxOcJqyjFPqhWNH2Tttc2Nje0T4udC/AQ2SMsUsmhqNQrMpuWWrhV7A5sd/4A57sedoOgyfLxhILwoqnU8fUdPxvjf0q0QDr/W0NopB8U9HbqcmzV56mkq016puzLRC5BSMLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148418; c=relaxed/simple;
	bh=UxAuiy3peyOlwLJBGOPsPiR8T6DVdxWS7Est9l1Frw4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YBcrtnt1PYyjjfkNSqQN7WUwRGPjFyvOE/oPh1OswbQ9NTJsmcj6WlJ84hQxkb/FoQQtgnt3FnAWf1T/2+W7nwi3MiiaLwrXy8HwbMyOJjx1GJwfxU6gfWG8WY11sNL+wbc5McZnWxxwbltsJmhhHGO3mhV2sxPlWQJAs0fOkf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dycxxRg1; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-234fcadde3eso68739615ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750148416; x=1750753216; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/boR19WWVB+LDycLFRcC7qjbHGCqTpzpia0XTcyCZes=;
        b=dycxxRg1MQFA+QY5WXQUEmRBQCKew+3Qv1hNIdOhEyqmjsiabzW5aiSMJXy9CJ3HHr
         DwyltDia5ZJl6M0jbflsrENZUlilBPKvV2aP9vMoVcuT2FtD1kUSG/JgRevQGoPo9qxb
         09Sd0g/xpTLPtRyz/H6C7Xw/ElgKmPnDkEzVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148416; x=1750753216;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/boR19WWVB+LDycLFRcC7qjbHGCqTpzpia0XTcyCZes=;
        b=MZBdLBnu/uIxjFnvaC/19c0S8KXT+S+RjAPE3dsXKH9/sqT6xVLdh+Nc3g1bgILOH+
         YJDQyRzvRrtKNVkQ71umI1BpBoW99jljNYKWJ9fjAdZIBaNcLbn365h3wL2LQuVVsQ7o
         m+tE/aBYJ8qzdPW13dT2Vwi+LF3TwhSTlEdo+VoGvKx7EqgBHN009I2HYIM45cj+ifn/
         VkMgo64cU8zUJSGLTsf8vOPVim+iXOFI2L3k9gWFLiY1C2Is2+oraoTgGNSfdKU7yysy
         3BlN1nZRwJMcHv59KQaL9WtiLJd3SCHY22DdkJOxEbRKAzwGLzEyC9R/ZuIL7TrzozSS
         MT5g==
X-Forwarded-Encrypted: i=1; AJvYcCUG9fMMlHTgx82au5CpNqVwMmVE2snT4nHhyxNTKacqAr0hJpcOwu869FnXwoUge1iKdnzwoS/18evg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw50v2XmKrcGcDDydUvfO0eNbrOeWRWYiB1ziYKkjA9AfNa66SV
	Pwdc4HDyR77r2VYw8/ieaIfAQfA5DYRCPyUjIOrc6kdFnkgHQJt1ibnOmSs1FYMJww==
X-Gm-Gg: ASbGncuzwy5gSLFEjHOztG4uconZ0rrAGX9cChj4L3YIj06MQsy9edFWnM3yrE+577A
	QsF/+yWxY15v9W5fHPfD/sIzHlWoCY2HKLPstS4qSofHjikJ1ZTam9d/IpnfDFBDo0LjFascPk9
	8WrICoqTcgamJYYiyUEWcOwshcZktdFfARwowwUFRJtsiULrdjY9ibJRQVKUp6SBATwbLv7kisT
	M5Rs4ShNgR5bfKv1f3fHVl1d+GAXdQedxJfi0LRYnG97tO+PAnSWOc8VOAoCmz8wjttG6CqGj2k
	UMg/Y41Ve+toGAGWiOm5X1F91zk3p1x4yFpFVLJMnD31B7Rh+E6XYM6LjT3HwxdCbyJIdTqiFNd
	FqCeP
X-Google-Smtp-Source: AGHT+IEDu/d0gvLMPkfg382ZhcCdbDKZbFxmgqE3AqPSqBv9agEnIVcL4Kq6GKfMPiLzVnBd6My2XA==
X-Received: by 2002:a17:903:24f:b0:235:ea29:28e9 with SMTP id d9443c01a7336-2366b3c35b0mr200531685ad.38.1750148416513;
        Tue, 17 Jun 2025 01:20:16 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:24a1:2596:1651:13d8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781f7sm74598885ad.110.2025.06.17.01.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:20:16 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-input@vger.kernel.org,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Benson Leung <bleung@chromium.org>
Subject: [PATCH v3 3/6] dt-bindings: arm: mediatek: Add MT8186 Squirtle Chromebooks
Date: Tue, 17 Jun 2025 16:20:00 +0800
Message-ID: <20250617082004.1653492-4-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.692.g299adb8693-goog
In-Reply-To: <20250617082004.1653492-1-wenst@chromium.org>
References: <20250617082004.1653492-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Squirtle Chromebooks, also known as the
Acer Chromebook Spin 311 (R724T). The device is a 2-in-1 convertible.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Benson Leung <bleung@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Added Rob's ack
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 2032b0b64ba7..a4d9c72d10c4 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -302,6 +302,10 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Squirtle (Acer Chromebook Spin 311 (R724T)
+        items:
+          - const: google,squirtle
+          - const: mediatek,mt8186
       - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
         items:
           - const: google,starmie-sku0
-- 
2.50.0.rc2.692.g299adb8693-goog


