Return-Path: <devicetree+bounces-146669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7B9A35CC3
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E29123AC79F
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895E6263C69;
	Fri, 14 Feb 2025 11:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qKqaE3Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC89E2627ED
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 11:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739533362; cv=none; b=I78uy6CZUh4LcY84Occc0edEhEWyVnK1tUUD3KickX0nW4cyKGKXQHk2/YP81QzVSWArpnIm/z9noegiHLHpHSXMhzowOfePhH77vNQndlN0+hZf7HXinZBe3URR2QGNwA7+bGUig57IIaRuPyZ7QbUBYZoWJfB5UiJVCUIt9cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739533362; c=relaxed/simple;
	bh=F/zv8ld6hxQ5meu1qeOYsIEsIIqaCJ+HJ4Gs6tRkKhQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YqiJpEBMKz8ThX8vRATcs7JOh/hd70r5uyPHm79BVay6mv5fsk79HAI5qv+5DiXxP4X9cWYoPZAEFRtyT34DKp+BMHYsmSi2XHSwkcOBK+7APkF5HdlXHi2RoJpRuK52aPG4BqxEU6byQi9N4KiW3RGPh8SlqJzJ3oxqgi3I7Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qKqaE3Bk; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4395e234c02so1900265e9.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 03:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739533359; x=1740138159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=je3Y6JE9/0vgfYFp2HTKthP0SuJ3Chwygb5NcOwDms4=;
        b=qKqaE3BkM7marsQxQBxUFZ70JdlGGi7tbaQAEmJl7O548QQIT3N4gPIR0hxlJ40YxB
         s5RJ2pp8s7bnj/C/jQ4mZNqb0paxXAEowkpj0I1gWcnQhroMjQeZ+n4D5e4petutcHeh
         5B1Wbfgu99MCJDxkEbgkKF/sRtqzybdurlr+/PqX51SRA917HPSlSG/VJSzPSqkgf4oO
         MCOpyM0sfV9hBJjgppV+/uWg5n5moIuY6w51AC5klNsUWpK1a03AzgJEKnXvzG2fD8nj
         3LZT1+QO3D9IMt87yD9kXJOh1zWpu2Et893hkxMfT8qd5rFmzbyONgyPbzOlekmEqzgY
         8MDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739533359; x=1740138159;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=je3Y6JE9/0vgfYFp2HTKthP0SuJ3Chwygb5NcOwDms4=;
        b=IUO7m7nXR0OW3+gs7fMelSP95j34+5P+Y3TXuYMoof6wAnaPi3hIDANFJgewtoq5Ds
         t4kTpW5i6fu6bfvNRz5KpE5i3Ffz2xQy5dCAJzZ1EgRXPP/gQpt0Oo3d/CA5fOukKycr
         glT6UrjGKKm/4BJy1gk1JqPFvTll/TG2NHuEGkC4RSl0ihutBdxdJ8iAdYrsdxkREkZk
         voq0RpBRxWWnVYzy0zKzOMF2nzLZIF2me8yyW/2AYG34cItVlyLZRdruDWpZj9pmbv/g
         wEC11icx2sIX1bcTPTmF2SJIbGXc9X8Y8GntN5lhlLsxwUWkXYQwgHb2RVG218N88acO
         +CJw==
X-Forwarded-Encrypted: i=1; AJvYcCVA9/r2EEPbi7aGWFJBkj7L58wP9VP3wH3xURl0+CqPDegYlHRmYshHys896bVsNuXyW90sVMsVL+fx@vger.kernel.org
X-Gm-Message-State: AOJu0YwacJ86aPdbpZzuZVfeZKuRvhxJAbeEZVonHmXIKtQabCL+GHJE
	Q4xp1CP8rnkX770cgvSvKTVmBm2I0kJ6nn+TyZzaBzOZT5i6q9ENE3mxI/JIuAMP9DNyXUcXrsx
	e
X-Gm-Gg: ASbGncvsYjclIq7ZU0xQuCrKpyfx7Yi0JWQtxtCd2xE/BumlRA61xBKdx3EF3ZlJZv0
	UpOvEgmrfzdPL3Qjx2jLmfE3G23Z9w9mSvG8COg2QcwhrMVnkw7A2iocN9vSR7J5MQz4YqZK6Nu
	4mqT7+mait4KxfyjPYx1axOyoWNQ/N0RxHKMeAeo/gbWMYNaAvHinzQLAGe+VouzQEyeWfcfkWC
	bI34Ruv9KjSUptzPGuxZAGWo5DOq07LWNliRW6KICfeyH+nkq5wIHb1zZKzn1Z1JBFbFd+sfNGD
	FqJa+pIXfsrVgvs3LSP7ajS1/KlGPA==
X-Google-Smtp-Source: AGHT+IHD2zuPWbS12hO8QjYVrO+0ZsWls0jxCUOQqd45DbLIATzXSslULpB7tkVtgTvMILaRHe52cQ==
X-Received: by 2002:a05:600c:1986:b0:439:614a:8bee with SMTP id 5b1f17b1804b1-43967111951mr14380305e9.5.1739533358965;
        Fri, 14 Feb 2025 03:42:38 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d8dd6sm4455148f8f.62.2025.02.14.03.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 03:42:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: usb-device: Replace free-form 'reg' with constraints
Date: Fri, 14 Feb 2025 12:42:35 +0100
Message-ID: <20250214114235.49476-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace free-form text of 'reg' property with proper constraints so
incorrect values can be actually reported.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/usb-device.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
index da890ee60ce6..c67695681033 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -39,8 +39,10 @@ properties:
 
   reg:
     description: the number of the USB hub port or the USB host-controller
-      port to which this device is attached. The range is 1-255.
-    maxItems: 1
+      port to which this device is attached.
+    items:
+      - minimum: 1
+        maximum: 255
 
   "#address-cells":
     description: should be 1 for hub nodes with device nodes,
-- 
2.43.0


