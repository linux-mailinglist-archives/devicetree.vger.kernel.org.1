Return-Path: <devicetree+bounces-198241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5AAB0C1ED
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 12:57:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5592C7B018F
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 10:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE60292B3A;
	Mon, 21 Jul 2025 10:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="pT0ltWUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6049128FA9F
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 10:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753095343; cv=none; b=GaS/psEhmGKo+gY//UsCKVEbECCm0I8ZVWsgmWwZ3WKDIj/ikjuQh9nz+cDsY2HPxgdOGHLVJ4ActQK48Ks6sWOsK5tIQq7aRTCLwKuA8rAfQqDib+086d7o38vHjvCw716hkBemc0VDxB8cO+mjzOhH2qoJKlj0pNQ0hZsGlb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753095343; c=relaxed/simple;
	bh=QtNA1Zw67oY6g9wXhby6BPpqc4kJTg0rFQpE0bGv9MM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HGOHatijkbNPuxGp1zcYfecCLEfVb7X9cE1gF3kSHuG61B5Rtu2Khs/yOwCfsjKEzAG/HH1IapLyX0kdoHVYaoqgMhunQKhq0CsbRhQP3+UgXWyH4BJNi6jnYadA7qRgHPC5ylJtkhWmlOCLsTwbM7dpEbjuKqPpcf7Ri0RFkxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=pT0ltWUY; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4560add6cd2so33944705e9.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 03:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1753095339; x=1753700139; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mHC9dKSjhgDmCS3Dc0Ob+PRUH+xtz/BK7VzlQay8jS0=;
        b=pT0ltWUYe6TkCAuKWAeopr/nLRLmlB0Dknr+5QhNuaJUBhqC4ELiWsnPXh0s43/qgZ
         NBjzLOSF/3Qspr/MIbWEVIib8WXZE7HWs7l1ntqss3nywoOnI3EMUqAaEDoopCGFVAuX
         A3KlEGyXy+boNDvFrCprRAT8E5GsuQ2MD1e6cLhaLjBjqxB6MXYXiuIwEGPVUPAC3sIh
         QrvwGOi8K0mRcx+FMBadG7vGrqTs8H9CjvbkrcroS7dr8YSdi/m5f7B8hOtO2IzXgEiY
         RDzHlPMrDxBp+9Zgf0pDBeETtQOJGAPvWMDqmQ0QQHZ/yD8PxuRgPsKGofUUqhoLCTG5
         ScmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753095339; x=1753700139;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mHC9dKSjhgDmCS3Dc0Ob+PRUH+xtz/BK7VzlQay8jS0=;
        b=SOMLl1JL6PTWsHofHMWFQTCuoWDlV5Xg8WLsOrx8eF+Bzdi5Aq1o8PZh288lUKE6KO
         GFtCyhWa4MnFHUYJKlZVHAvtctilhiMKZwb0OwT6SZIjm2SfH1jBevFWeEuhSKWDLNWo
         MbKg8B131DuVjpTmoJQjAdCtFFiX9RN5gX5NIyEF7dDm1zvE38jNcZft/1l8p5g1/fCW
         zFylZaWrnZXzWyEBnvvAX0c9ljZJb1/1z/sKq5Stj5gRDC8J9GcNsjH52OZ3feCvdgWD
         plRAldXV95zEoojeQnB7gUBLeuUMYGs6dygKu24Oevx2v4HpZwIfw08ZU4w4cxX19ASm
         Szcw==
X-Forwarded-Encrypted: i=1; AJvYcCWJWFO4q/ZxrycE1NfyPzC3NyyQyveLAk9+0HxrEv17eaPa/kMRgTBoCCFhDHXR9XwAvodMD2aXw2pA@vger.kernel.org
X-Gm-Message-State: AOJu0Yykj6ViRhDrhkxIxqbwqeg1AokGzqof1rdU3DQ5vtswLJUA7b8X
	kSvvpAGPxaNS4jFuGfvmeHP+hFTQkenVnexpL5EZnB/6U5vpta43+BWrmxY/YRek26gHZCMxOMY
	2EhLz
X-Gm-Gg: ASbGncsXpV3gY2l/YBdYiCiMrJH1ptbq2G9Zg/v4b0ZXvzrG2sZ40OCKpWWW2OQVeg8
	bdDq4yEqe5lWxayv+/b/LuRzP1C4UiL+hVF/qy2YR+JYwd7nf6Cr+ljxabi3Mh++Tt4uxHPSnfW
	AJRznOmhGDo2oLJKb3sIS+FG7miYn7sK+Cg6dFENaJV9l4m9jeevPH9O0Eb6vk/rJT7GcfThGcd
	CjcNLzmsl/pA41QfJ2uHyS608fA30Tci6awQ3DKYZ6YwoMFxOts/56bvm/h1iM+P0hp/wtfEZRO
	YA5fxEZ5O09cWD/sonnBRYjToZE+ctH8/Tc/Jo/lWDHTskNckiGX6P85oaGnEPlK9flY2vvV0ok
	dn7xfM3urEDPPWtV8/OQudmDM5xDCEjdQFpdKby8=
X-Google-Smtp-Source: AGHT+IEMnp6KbrZ/evTevPv2kZc+1Fdq1BSnaHkk6zE9iOTVsYyUW2/Ifq29t44BarT0k46Gkbj4Pg==
X-Received: by 2002:a05:600c:a113:b0:456:18e:eb7f with SMTP id 5b1f17b1804b1-4563a4fcf8bmr96958405e9.3.1753095339250;
        Mon, 21 Jul 2025 03:55:39 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c7:1d1a:9c01:f373:f0d1:903c:a9bc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4566dd6b8bfsm18141065e9.35.2025.07.21.03.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 03:55:38 -0700 (PDT)
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Mon, 21 Jul 2025 11:55:35 +0100
Subject: [PATCH v5 2/3] dt-bindings: leds: issi,is31fl3236: add support for
 is31fl3236a
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250721-leds-is31fl3236a-v5-2-264e841f4da9@thegoodpenguin.co.uk>
References: <20250721-leds-is31fl3236a-v5-0-264e841f4da9@thegoodpenguin.co.uk>
In-Reply-To: <20250721-leds-is31fl3236a-v5-0-264e841f4da9@thegoodpenguin.co.uk>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
 Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753095336; l=2235;
 i=pzalewski@thegoodpenguin.co.uk; s=20250625; h=from:subject:message-id;
 bh=QtNA1Zw67oY6g9wXhby6BPpqc4kJTg0rFQpE0bGv9MM=;
 b=kl9gQTsUW6V3nUgx7XzUBEW8xg/8kh7RSP58BqI2GETCvvwvvwT3kfXLGwKz3vr5oecVu+B8C
 LSu8L6wqtEhDmtZaFE5ShDr9kOIaUm6zZWTQBGNdariuj2bn1izZyGu
X-Developer-Key: i=pzalewski@thegoodpenguin.co.uk; a=ed25519;
 pk=hHrwBom/yjrVTqpEvKpVXLYfxr6nqBNP16RkQopIRrI=

Add an additional and optional control property for setting
the output PWM frequency to 22kHz that exists on is31fl3236a.
The default is 3kHz and this option puts the operational frequency
outside of the audible range.

Signed-off-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
---
 .../devicetree/bindings/leds/issi,is31fl3236.yaml  | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
index d8164876611f5e629215fe2715ebff1745f93a26..58f5aa4d0b644fe550e2c48b141c41c37fdf98e9 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
@@ -17,6 +17,7 @@ description: |
 
   For more product information please see the links below:
     https://www.lumissil.com/assets/pdf/core/IS31FL3236_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3236A_DS.pdf
     https://www.lumissil.com/assets/pdf/core/IS31FL3235_DS.pdf
     https://www.lumissil.com/assets/pdf/core/IS31FL3218_DS.pdf
     https://www.lumissil.com/assets/pdf/core/IS31FL3216_DS.pdf
@@ -25,6 +26,7 @@ properties:
   compatible:
     enum:
       - issi,is31fl3236
+      - issi,is31fl3236a
       - issi,is31fl3235
       - issi,is31fl3218
       - issi,is31fl3216
@@ -40,6 +42,12 @@ properties:
   "#size-cells":
     const: 0
 
+  issi,22kHz-pwm:
+    type: boolean
+    description:
+      When present, the chip's PWM will operate at ~22kHz as opposed
+      to ~3kHz to move the operating frequency out of the audible range.
+
 patternProperties:
   "^led@[1-9a-f][0-9a-f]*$":
     type: object
@@ -56,6 +64,22 @@ patternProperties:
     required:
       - reg
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - issi,is31fl3236
+              - issi,is31fl3235
+              - issi,is31fl3218
+              - issi,is31fl3216
+              - si-en,sn3218
+              - si-en,sn3216
+    then:
+      properties:
+        issi,22kHz-pwm: false
+
 required:
   - compatible
   - reg

-- 
2.48.1


