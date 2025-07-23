Return-Path: <devicetree+bounces-199000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A892DB0EF25
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 973193BDCDC
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A4828C029;
	Wed, 23 Jul 2025 10:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="buxXO2mq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20A128B7EA
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753264940; cv=none; b=RgD4ZUWoXw6QHzIDIcQmf08vVTq0SvYfHpGBYsWFDsxoaXeNCuy5g+48IitN5eMXJLLIN03U7UGkwhCVK3dHuFnSOeJijoePKLDGtolsntUqS2bgoRH6jHkGGWhOaxz5wLD9IGI8J2X8nMpR0Xx85nVr+YY65szDigArFRcX8+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753264940; c=relaxed/simple;
	bh=cc5BZaAROg3hR6jmHXFsW2REoH4SgVJ71CzqrNwe0HM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cNlqPAY4cZJ1qH20rWzAoqmly153Yq/bsREljF2nUq+rnjEi2qeO8DiSZVaUGO0pXD9a1YqpGnSnqqFUloge7T+TKOoT90lHgXpCPrS/777326+2z3d0bX4mCpnizKZ01UReHA9QXaKamFth4w1GFXUoV4WP4h6BhcYY4XpoixA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=buxXO2mq; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45619d70c72so6749105e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1753264935; x=1753869735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WlqSkXY8/eWL8QswhAWWKjIEfwL5h0gj2X3KVSyjUzI=;
        b=buxXO2mqfMNMQq06B4iZRrT97+cYd13dnwwCHDR8UzK9lyz8uoGSI9bxH3C13lyi/K
         wL2/8wBS/EqWmYTo4QxepAY4vIAn/0pa6rPi8odM9oa2IZ/sihi5vQAP/wO5PhDkbjys
         YYtyCZ2BmojA27OqQ2DKE03znAfJRQMDkS2cIK77Zxy3jGFRbRV5N/WZSK+K3gF6ACdW
         HcUUfg/XZUpnf1gKx1kEG3WdFSUk2xNphjffaLSQ5YiXq0cIs61z4GKAXVwZlBtZqKa4
         BKUYCx9lir4J3hxgOv4ZcOL4G4PD17Bd/2VSe+Cg6223b9hLwLZSIt1WKIUtuVVqCMIr
         bRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753264935; x=1753869735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WlqSkXY8/eWL8QswhAWWKjIEfwL5h0gj2X3KVSyjUzI=;
        b=pRqoUGg0SRvE70BVy6Qax2r3RXf9eOJjBkbyEjiNnP3Q2QaaGGB9cl6+KlVmkxmXPp
         YH5YMjQq+wZ29mXWr3Jv5dRTfWvpsbda5Cm9Zo7z55pIaGKVULWn9fG2qSQQjgqCKYgb
         q5eM4mvpd50WiMici2bq0N6pD96R6mv3rMGfP1OmWB830SunVlGnNKT2ZlXhD0JjAG8g
         +Vl+2eM6hB+4BwXqsiK0NvYwIpio9dt7lBislVD3+ax3lb7FDuynLIZPyY3UFoRjE/UU
         NY4/a9vtQ54++C/y4vlRmnU3PIh63+iNdyHmTbyYveVsOqh9jTqieWAiPqcXSNEdf1no
         bs+w==
X-Forwarded-Encrypted: i=1; AJvYcCW0buitKHcqkKueNMUhUL1c/IhGTNDqw6dgy3peV0vhuvQHY+N3iL39gCy4U1bcP6ly9w45n+F7p3i1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6aoxz19ZijkZ61E7RtX+nqEaDXqMIXy88lgfICRXVJMpA1tHx
	tbx3mLepG83pcDPb4iTAV6CUHYDLIPZlptY6igYrEC++7Bu+Sk1t8uleUlyZ87SrXiA=
X-Gm-Gg: ASbGncukKCRThKPZBdu8mzIdL15NgT6wziRcwr0+SeMoaJQZEJKm4ttv1p7Ge0JNTNc
	9adljYqBpYO18Tu5weYnMx5RXNJE4xHNeFFa/U/5ogwLsiO9+mys6AKvPjLizS08/Nrl0E985K1
	sCTvztEuVwyFd/TttyGTTBRAard1mmS1bv/tMceDf2cTJa9RoQkXdsTJRumQTlPiZRy4p2owFjb
	MMTC2gmfmqU7F3DhmGasfsiTjvuQq0CEHDnxVUlEs7UPlaXmVXeyRtw+hs5wLhkF4ArYq6Whow4
	ZQW6XOv/pZjEPftZZRIJK+HG1owG84ftllRVWelTTM5BzgJuuoo34oOIy2WsCb+u1H+hwJD+NcY
	Dj0LiT8oU374AUWOayGHucOUwO+Uw/ZIV6MGmwQ==
X-Google-Smtp-Source: AGHT+IEhgsJzsV7IfravQSqZYJmOjKxH8Jaad3zEB+E4m32fhG3tLEMWBLJlEsgKuzSLLBJCvm+mrQ==
X-Received: by 2002:a05:600c:458b:b0:455:efd7:17dc with SMTP id 5b1f17b1804b1-458627512c0mr63332405e9.11.1753264934992;
        Wed, 23 Jul 2025 03:02:14 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c7:1d1a:9c01:6066:6737:c27:90a6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca31394sm15930793f8f.37.2025.07.23.03.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 03:02:14 -0700 (PDT)
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Wed, 23 Jul 2025 11:02:07 +0100
Subject: [PATCH v6 2/3] dt-bindings: leds: issi,is31fl3236: add support for
 is31fl3236a
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250723-leds-is31fl3236a-v6-2-210328058625@thegoodpenguin.co.uk>
References: <20250723-leds-is31fl3236a-v6-0-210328058625@thegoodpenguin.co.uk>
In-Reply-To: <20250723-leds-is31fl3236a-v6-0-210328058625@thegoodpenguin.co.uk>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
 Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753264931; l=2144;
 i=pzalewski@thegoodpenguin.co.uk; s=20250625; h=from:subject:message-id;
 bh=cc5BZaAROg3hR6jmHXFsW2REoH4SgVJ71CzqrNwe0HM=;
 b=6bJwpk+Lu4obClf839BR+6undZ9888r4NE0TXX8Fb6fHr6oeacfp5DymQu0D87UOBw3ezj/Tx
 bEbKz8564wcCpkZn2fVeW+DMRQqYp3cQ6/dn49+iDB+cNpT7GbfWlek
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
index c778866d51fe6ba947631ee80741f0d8a02f82ee..3886a67dca71a5030fe90e946b1dcbfc9d727cf7 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
@@ -20,6 +20,7 @@ description: |
     https://www.lumissil.com/assets/pdf/core/IS31FL3218_DS.pdf
     https://www.lumissil.com/assets/pdf/core/IS31FL3235_DS.pdf
     https://www.lumissil.com/assets/pdf/core/IS31FL3236_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3236A_DS.pdf
 
 properties:
   compatible:
@@ -28,6 +29,7 @@ properties:
       - issi,is31fl3218
       - issi,is31fl3235
       - issi,is31fl3236
+      - issi,is31fl3236a
       - si-en,sn3216
       - si-en,sn3218
 
@@ -40,6 +42,12 @@ properties:
   "#size-cells":
     const: 0
 
+  issi,22khz-pwm:
+    type: boolean
+    description:
+      When present, the chip's PWM will operate at ~22kHz as opposed
+      to ~3kHz to move the operating frequency out of the audible range.
+
 patternProperties:
   "^led@([1-9a-f]|1[0-9a-f]|2[0-4])$":
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
+              - issi,is31fl3216
+              - issi,is31fl3218
+              - issi,is31fl3235
+              - issi,is31fl3236
+              - si-en,sn3216
+              - si-en,sn3218
+    then:
+      properties:
+        issi,22khz-pwm: false
+
 required:
   - compatible
   - reg

-- 
2.48.1


