Return-Path: <devicetree+bounces-35516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4AA83D9CE
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27262285B71
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF09B17BCC;
	Fri, 26 Jan 2024 11:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="L03Nu2Tq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F7E1A726
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706270276; cv=none; b=fsSjB4X32LwnHzcC2I3Fzp114/5Wcp+R8ffHujNNGJ1y5hAzSGU0R6TRCh45zCyopu/DXlVkuzzgQH/9HiDj3PnTQN/wiA2uFdebU/5C8ENV5QO+bhedrGZlX26MklwmVF2iqsnDqAgGBrZ037drTbjfKq+V4kxgFsq840c+S1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706270276; c=relaxed/simple;
	bh=fww9EB7dHTt266qwXpxXlSuJ7F6luyRDgiG70yImJ/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QD4rKIHAISJ+rZxThS0rrYck43CXb36QbrCUZrfsOa0kmBupdbsnuUCdYQuDdXIGZ9+kSeQrqF/MByDbVmHV0FEMvqFNlcmDv2z0xLT8t17Pw1IfxwkifxYwqhfeQpoNlwLNaOfYAPw73YcFYGyMCrwWkWQuGbo36Vfkc+qcnxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=L03Nu2Tq; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40e5afc18f5so4259185e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706270273; x=1706875073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6igzwQypdxPSe5LiU4uAuaHmPYLT8/p0hJRSsz2288A=;
        b=L03Nu2TqrDfKunvmkedqLYo36Khot4vBn0yMINlhwvf2DW3AkYCLiGjr9MhHThM/at
         Z34K2d9kbmfoQ74FxtIltK8zPpMHcIf4nfWq6ZZ56RBy6fltLquqMSictYTVlMvfF7mv
         3HpsyeIHVulVbFkFQo6MWBlilzTUN5znFe19350v1GsnWUYKszigzI1d4W1ItGOSJnyP
         BsccWyFBn8yhUHMQXdWQ7h+22f3+6+Nk9EbxgWV7lZ7OVLzpQc2IlSJ3SKM1qUfvRBKC
         pZR1QbM7OysDVvHWv+ngOFZkK9zaBmH0fHWNNpKxyDpYyOdubMkm3u+6kkF2wUXOPMQy
         5aBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706270273; x=1706875073;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6igzwQypdxPSe5LiU4uAuaHmPYLT8/p0hJRSsz2288A=;
        b=Bo7kVS1B+DewnVElqAFZgr+FHTHzGsOtbq6cwIpeyNBpiFB20yi7tGPPgFxw+7JlQb
         YO2t0gEANY2/mAyq4Q5tuIoS+8/No6vIIZJh/d6/fIVXXRmEVI/tp6OI5MmcGm9elVmV
         docVubxhtQj5mV/YMwhAA41IH95G8pvxHZ91oovxco5VQdS7KP2GSDtD0hsOIQ3VHmS4
         lMvNAUqA+Q9c14bNm6wv1Tl8QIHSIGcTivRjH/EvJ9Nnp+yogIubhdmEQTo3dwc38kgy
         eStE1iTc9+kcwUqTdmqn2xe/5dRODb/wNmgZL3a5QO29AQWuXwGkpwWVb2Uu4sGpUhBD
         h/UA==
X-Gm-Message-State: AOJu0YyNBdteecFxZ4lzdP0595zfRWuKJo8xLiVw1K4lz/ebQjExEoHT
	TlKKRDNA/EaEOWIEFvb79iGhj6VP75hX+YSALVNvzIviaZjyv3s6Xla1v0aAc/I=
X-Google-Smtp-Source: AGHT+IH/g7DbFsBW/D5Q0U6E+tjhovnYwoTtkSRKVmze6lMSQku+rRgaWgmlm+VXvHeX7yyey18UCA==
X-Received: by 2002:a1c:7506:0:b0:40e:86eb:9e7e with SMTP id o6-20020a1c7506000000b0040e86eb9e7emr823322wmc.142.1706270273511;
        Fri, 26 Jan 2024 03:57:53 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id bd19-20020a05600c1f1300b0040ed1d6ce7csm1682149wmb.46.2024.01.26.03.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:57:53 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Rudolph <patrick.rudolph@9elements.com>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: cy8x95x0: Minor fix & update
Date: Fri, 26 Jan 2024 17:27:48 +0530
Message-ID: <20240126115748.1491642-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update maxItems to 60 for gpio-reserved-ranges.
Add input-enable property.
Rearrange allOf
Update example.

TEST=Run below command make sure there is no error.
make DT_CHECKER_FLAGS=-m dt_binding_check

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../bindings/pinctrl/cypress,cy8c95x0.yaml    | 28 +++++++++++++++----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
index 7f30ec2f1e54..89ce0cb68834 100644
--- a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
@@ -45,7 +45,8 @@ properties:
     maxItems: 1
 
   gpio-reserved-ranges:
-    maxItems: 1
+    minItems: 1
+    maxItems: 60
 
   vdd-supply:
     description:
@@ -85,6 +86,8 @@ patternProperties:
 
       bias-disable: true
 
+      input-enable: true
+
       output-high: true
 
       output-low: true
@@ -101,6 +104,9 @@ patternProperties:
 
     additionalProperties: false
 
+allOf:
+  - $ref: pinctrl.yaml#
+
 required:
   - compatible
   - reg
@@ -112,9 +118,6 @@ required:
 
 additionalProperties: false
 
-allOf:
-  - $ref: pinctrl.yaml#
-
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -133,6 +136,21 @@ examples:
         interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
         interrupt-controller;
         vdd-supply = <&p3v3>;
-        gpio-reserved-ranges = <5 1>;
+        gpio-reserved-ranges = <1 2>, <6 1>, <10 1>, <15 1>;
+
+        pinctrl-0 = <&U62160_pins>, <&U62160_ipins>;
+        pinctrl-names = "default";
+        U62160_pins: cfg-pins {
+                        pins = "gp03", "gp16", "gp20", "gp50", "gp51";
+                        function = "gpio";
+                        input-enable;
+                        bias-pull-up;
+        };
+        U62160_ipins: icfg-pins {
+                        pins = "gp04", "gp17", "gp21", "gp52", "gp53";
+                        function = "gpio";
+                        input-enable;
+                        bias-pull-up;
+        };
       };
     };

base-commit: ecb1b8288dc7ccbdcb3b9df005fa1c0e0c0388a7
-- 
2.42.0


