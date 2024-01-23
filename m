Return-Path: <devicetree+bounces-34067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A097E838922
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AF2628EC4A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B637D59B48;
	Tue, 23 Jan 2024 08:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oIU6KZXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF1D56B90
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705998901; cv=none; b=konmFcupO0O9ZIVI4AhexaWnlM4yfbD0yNPzbuMldhDsOpalKn358JZpdD/FCffpHiA5YJZx4fiJ1bo0PwTZR2H6OxyB8jbi2DnaPT8HdRkK6PUHlPdjdwMPYAiCs4pFthDRs54hwxDlQJyL0DgQzdPetRY/FfK6dYJB7JA7wts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705998901; c=relaxed/simple;
	bh=FHXdH8mw1h3Z49oeSgMQC9W3uag6VoccVDYYrZS4VX8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kw1+9SY9Hh4+xFfqvIkbeUMU+YopSdfKBaLOG8MermFHn1zJ+GVLEBW+SUGuHSJWgKx8b2CvwzVe6Yx1DhKjwejQay6TAMg9ZfIif5ZoAGX/iekdqgbOCZkmJywxA/V4flkSXfQiUOGhVdgUNyCJFX+VpYmDPfnGKwXAdWABoyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oIU6KZXM; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e60e137aaso44755535e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705998898; x=1706603698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YbtYsrAEnDnBNGvU/KXT8oQTPUspz/hEFAbpuyKJTvE=;
        b=oIU6KZXMEvOig4Ky6DQ+6tQVsdD32BXmzOnIpmYeG3D8iRji4kEqq+PMV9hqbUcRvy
         e77/w8LWb4VXyDSDLfQrSEh9TrMrGDey6J5DF2Nw6fjlut6xR1zkYT6Rgxa2GNyyRemX
         Bc2tP2zO3EhN4+3rK6Fnlw3mM7y6GaxV0i+1CrKURzjofZpy87F9K9FO2sysc+uWiB/e
         aeFopaDliquH4WczDbKK0JREKEqhuy0pU/AGCiQMD9XkyR+XM4NHtVUsxFY9Vmvwdp2O
         31xnh6zVZbqTw+cAYFVTh6N6baULiFSN0HkwFvoulJ+XWC5uWDGHUtHdU4m24aQUoGCx
         VjTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705998898; x=1706603698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YbtYsrAEnDnBNGvU/KXT8oQTPUspz/hEFAbpuyKJTvE=;
        b=XMj3GoPL98tWqpipUsVbqMPIoy/dbcv7s0cX/Z4UK9QaOxCxhlJedrsqYXSdeyRuSf
         s7JWP+sBnZZ4NQucVwM+YQNy2sE6PO8BYdhPg5Xuf5NaDbinCdBz16BB44pFdQIB6gsb
         jpi47PK19L5R4yk+mMYrPwHOap8VAFq8aDN7UcHkPVE3v0LyViJ2dQ0tFkNucz8541Zp
         QWC/5v5tnFosAmOYwHq7budyXNqUs9orrckWurU5ERw9JBEjsa4hPPscbOOkOuR/XE/R
         F0XKoEby6TFWEyKiIEchFuRR780CFsmWkPc4aLq6pZou3uRrkqiQ62+wiF5ImC5WkbSv
         nbvQ==
X-Gm-Message-State: AOJu0Yw3FUYqZfv4KUgTSBgzYe/K5vF0aNaSfwYsLZeUIGcHwRfLnMqe
	a7mH4HpVokHw1o1f6T9J3GQg9TLBC4sUc7mgWLTkmtVlbYni85VbQ6vuZZRrwuc=
X-Google-Smtp-Source: AGHT+IGpSfiqLObRXf2pI7cfDcFLxyLN4hxeQLwRatDoxpu6xOq/MqtFPVGkf8qYd6ARxAUb+aUvdA==
X-Received: by 2002:a05:600c:a06:b0:40e:7af8:d49f with SMTP id z6-20020a05600c0a0600b0040e7af8d49fmr274423wmp.121.1705998898262;
        Tue, 23 Jan 2024 00:34:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id p3-20020a5d6383000000b00339307d9d31sm5840017wru.112.2024.01.23.00.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 00:34:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: sram: narrow regex for unit address to hex numbers
Date: Tue, 23 Jan 2024 09:34:50 +0100
Message-Id: <20240123083450.20996-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Regular expression used to match the unit address part should not allow
non-hex numbers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sram/allwinner,sun4i-a10-system-control.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
index a1c96985951f..cf07b8f787a6 100644
--- a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
+++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
@@ -56,7 +56,7 @@ properties:
   ranges: true
 
 patternProperties:
-  "^sram@[a-z0-9]+":
+  "^sram@[a-f0-9]+":
     $ref: /schemas/sram/sram.yaml#
     unevaluatedProperties: false
 
-- 
2.34.1


