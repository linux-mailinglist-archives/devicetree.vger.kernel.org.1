Return-Path: <devicetree+bounces-171895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBBDAA076C
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95BB416D027
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86EAA280A57;
	Tue, 29 Apr 2025 09:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OvSqyyzR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897DF279347
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745919280; cv=none; b=H3qxF5+mjusdYJ6PsFKOsa8VESjuN+3+fXaXix0Q1p58NW0ONtyZUJNFh5L2MNI5RewU2aq1NdSLbhF9nDGiFVlQAZxr218hAyv9G+tjy1eNy5+ADC73D4bn9Bxsu7zXy+FMoEoJP/NSu6tdc3VT39dvFeuCAQSK3n+0qNCKhNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745919280; c=relaxed/simple;
	bh=ZNA/YfWSdVwWVC2UvpKCFkOunox/kHXL7eFHYnV//XY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uPgaNCx9d3rGXTxiHSArLYU/O+1WfXkPtfPlOBQNG1tx/VuUZ2GAOuJky/m1CumplFFArJWgDsGuxGLE9tWXviPu7idTOlWIzeNF2FDVRMIo8yrW9LM83he6EevPNt3dAiCil21NzzevD07xjIvJC7HtVSdEqz9b7/oihIDVIks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OvSqyyzR; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c30d9085aso4216654f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 02:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745919277; x=1746524077; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Za4U3xRAsortMbeBuio1B55CAmLpnNgYQPUZfqFH4oU=;
        b=OvSqyyzRrkHyD9Nr/RQByUFY0XaGG+U8N16oQm9zK+akUt6IzfDdEeqGDd6wOY+Fam
         Yfs3cz5xSm0GTu+uwYi0SDL3LOg3wzBVP1uAZQ7tJIo8g5V/t/6CsHsd4b2UGlmpeOXr
         vkmDQKUoxwWMyI1eUYrIV2CUonadfWOpR6vlPuQrC2WmIbKWOfzixZDcWrQ9p76v+JKD
         k10GBs8WL324uzxb1pYJ/TPBRe2nwP6E4OTaWLOgsGXHNDQ1TQQfGmJzXLbN2EsUKAgY
         UZoPqwCxIepyNSW3cJUXjFTS6HBvixFD8fuuoxyI6kfTYhZEINi/ZLy4ANUhyhvxKcsU
         vZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745919277; x=1746524077;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Za4U3xRAsortMbeBuio1B55CAmLpnNgYQPUZfqFH4oU=;
        b=LWWTLCWUBoxViR9HenfcvjHcWagzUtc7b7OwWG6YrEWBIGZMbIquqA5CPFttiLPodc
         1kHlpBSiGG0p1d5jwo91f5WPbDipdsTs6L6Buz3NRgyiCyNC28A/dWbv7kfEm6rWyXpe
         RB9B8yhaiuuk3J0A0U/glYuCOLAI79RKxLAJyzjhVU0PFFAbbYkNwSjVn85axpkZSlt6
         J61A0KF0u47PTRuccN1oor/+OEjwrVBeMOX2iYBJoVcTH9Xmal73ktowsZMRiQ6LIRct
         MQl9EnnPtKAsvYAnR0wCoi98pYVFGt5oru8SLL0h+ZSDy2v0do8h8sxM7ao8jNO20LYL
         IKeA==
X-Forwarded-Encrypted: i=1; AJvYcCWQnCrWhtvrmJsoE1EYgxg6S0fBJJSPUcfpBmstW1HQ1Fhf7ONj58/g/mQabf5WKs2jp1CEkNzKC9L3@vger.kernel.org
X-Gm-Message-State: AOJu0YydBAJWxbTeNte/NICsFAJvO+SA7bRMY2oqS3jUR70zxoeBasa3
	9lwAn6u+YuCTeJEEq6vDTLpYrtcAvPk7iHqsHYhuYHLkLw1Y1wtc5LYQ+3WUOfo=
X-Gm-Gg: ASbGncvSHbc+UwwSC8bYz9cHYoLaP1rSaxpU6CjgWVekb/0zOEMCerHJRA3jKqOoqKa
	4nXnNHZt/KblFMDMycJ/ErvNA4q31up803IeDJNbKjKik1Gts6Qck+as+yKICr/6XuBo1pUTc5c
	Fe6Q3B4g9XbRwXflo8yikO/ucAZBoQ4skl3vKBPlEyoYQE44BZ0eA4obnQW131+Edp6Lg3nz1Pr
	yNHbohhW8ju41V0d4v9GIkrI+Bb7yAs3i2jStouOCE+yVjlOgJeeulWmeIKNZTeGOTSu9kNOFMU
	Cy2xOtNxl7cYpOrQ1IGD/ElNzlEt+W3lRgeQB9yciF4w/aN1b9VxDz/sgcdZ4+SkqsFeuijcvfi
	0RqsFYA==
X-Google-Smtp-Source: AGHT+IGVw2ZBwIFw8ZZVZzgJZsi/4nV3k/NK0Kh7uHF7vho5Ug5zLb1wnxqp1qar9eVXOIxtUTAlMQ==
X-Received: by 2002:a05:6000:18af:b0:391:43cb:43fa with SMTP id ffacd0b85a97d-3a07ab8c3d0mr8438370f8f.51.1745919276760;
        Tue, 29 Apr 2025 02:34:36 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e46a54sm13677677f8f.67.2025.04.29.02.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 02:34:36 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 29 Apr 2025 10:34:34 +0100
Subject: [PATCH v2] media: dt-bindings: Add OminiVision 0V02C10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-b4-sailusfor-6-16-1-5-signed-ov02c10-yaml-v2-1-7f9946f2c8f8@linaro.org>
X-B4-Tracking: v=1; b=H4sIACmdEGgC/52NTQrDIBSErxJc9xU1xv6seo+ShTGaPEi1PFtpC
 N69NkcozOabgfk2lhyhS+zabIxcxoQxVJCHhtnZhMkBjpWZ5LLjSmoYFCSDyzv5SKBB1EAHCaf
 gRoiZSys4rOaxgD7bdmhHbb33rP49yXn87K57X3nG9Iq07uosfu0/lizqdDFKC6m8cafhtmAwF
 I+RJtaXUr4SxqLF4wAAAA==
X-Change-ID: 20250426-b4-sailusfor-6-16-1-5-signed-ov02c10-yaml-68c3b3d6cfff
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4533;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ZNA/YfWSdVwWVC2UvpKCFkOunox/kHXL7eFHYnV//XY=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBoEJ0r7+cdhBucbidk3RNPLVQrcDwlHunhY7/G4
 wUgVUkyBq+JAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaBCdKwAKCRAicTuzoY3I
 OqvAD/48m6S7FG5H9NOllxSytTUGIvsN+VcjZ87J6wPc6T4eRHw/3hFM62mqn3LtK9dtHuVvjLg
 lT5Fw9mR8q5yVOvlvOASTxtUxe3aId4RNV32WBh+mvhRbH6iEa3so2vuufSaOwoISyUxuj10iTq
 dyPre8eucun5EVOtNjVGz1NrccnD1S3h20VpdsBDP2JfUQHWD8jSbfKsy30FOd6Z6aXXPcjOaZr
 zRDqtOBNutVR5VnN671fEVu9+nFKInRvtwbkpNs+IN/oAGlJq2kFTrEq/sOgh9rwCK/O99Xza8F
 xubBSwiLhDJJnW+EoqD+nSUTGV8qjfWxCg2FY03U3sud5rIUrYG3hXew0X8sBoV2Pro8O7EKUup
 cJRYKtQlrmjrJze2xH375MMuLHMZobC1ZsuXwY5PoS202Hi+TXRUOOYkOCOCxx1+rfgSlq2khFD
 7LvC31ABk961NrspDf6P66io5LCSSmijEQQ+mqFlBB2O19sbranRRrAFDIcuM8dpVRlApEG1fB0
 3seYTbKNeajdgkbCtBVIw2v0Ls/BdUJD3GIPLXmXhFozXgyL9GkpUYP1dO0/nGOcBx3VY0dnoR/
 cbB1gKVqigHIxMn4rWlG81dQ/P3xTDPWN8eq6P7tbvkhtEWifngYFJBjRtKskIzisNFIe5boO5f
 G/BZzcmre/yXkng==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

Extend the ov02e10 bindings yaml to describe the ov02c10 sensor which has
the same bindings with a different compat string and different i2c
address only.

Other differences in sensor capabilities exist but are not expressed in
devicetree.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
v2:
- Updates the pixel formats in the description 4c1 -> Quad Bayer - Sakari
- Aside form the i2c address there's no hardware level differentiation
  I can think of to document ov02c10 (v) ov02e10 - Sakari/bod
- Adds RB - Krzysztof
- Link to v1: https://lore.kernel.org/r/20250426-b4-sailusfor-6-16-1-5-signed-ov02c10-yaml-v1-1-9a46124fae7b@linaro.org

v1:
I previously submitted a standalone ov02c10 yaml file but, it was pointed
out to me by Krzysztof that the ov02e10 yaml has exactly the same bindings
and we should therefore extend the ov02e10 yaml.

Link: https://lore.kernel.org/linux-media/da93bf6c-b4bc-4c4f-9373-583fbd0c031c@kernel.org/

The accompanying patch:

- Updates the overall description to differentiate between the two sensors
- Adds ovti,ov02c10 compat string
- Adds an example for the ov02c10

Once merged we can also merge the ov02c10 driver, which contains a compat
string requiring yaml description as precursor to merge.
---
 .../bindings/media/i2c/ovti,ov02e10.yaml           | 47 ++++++++++++++++++++--
 1 file changed, 43 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
index 4ac4e11a16c8bb7a53db0c44289b1004dbdc282a..0eb769708e2727776eb8a832bb0a765dd6facf9d 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
@@ -11,12 +11,22 @@ maintainers:
   - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
 
 description: |
-  The Omnivision OV02E10 is a 2 megapixel, CMOS image sensor which supports:
+  The Omnivision OV02E10 and 0V02C10 sensors are 2 megapixel, CMOS image sensors which support:
   - Automatic black level calibration (ABLC)
   - Programmable controls for frame rate, mirror and flip, binning, cropping
     and windowing
-  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
-  - 2-lane MIPI D-PHY TX @ 720 Mbps per lane
+  - OVO2C10
+    - 10 bit RAW Bayer 1920x1080 60 fps 2-lane @ 800 Mbps/lane
+    - 10 bit RAW Bayer 1920x1080 60 fps 1-lane @ 1500 Mbps/lane
+    - 10 bit RAW Bayer 1280x720 60 fps cropped 1-lane @ 960 Mbps/lane
+    - 10 bit RGB/BW 640x480 60 fps bin2 or skip2 1-lane @ 800 Mbps/lane
+    - 10 bit RGB/BW 480x270 60 fps bin4 or skip4 1-lane @ 800 Mbps/lane
+  - OV02E10
+    - 10 bit RAW Bayer 1920x1088 60 fps 2-lane @ 720 Mbps/lane
+    - 10 bit RAW Bayer 1280x1080 60 fps 2-lane @ 720 Mbps/lane
+    - 10 bit Quad Bayer 960x540 60 fps 2-lane 360 Mbps/lane
+    - 8 bit Quad Bayer 480x270 1/3/5/10 fps sub2 288 Mbps/lane
+    - 8 bit Quad Bayer 232x132 1/3/5/10 fps sub4 144 Mbps/lane
   - Dynamic defect pixel cancellation
   - Standard SCCB command interface
 
@@ -25,7 +35,9 @@ allOf:
 
 properties:
   compatible:
-    const: ovti,ov02e10
+    enum:
+      - ovti,ov02c10
+      - ovti,ov02e10
 
   reg:
     maxItems: 1
@@ -109,5 +121,32 @@ examples:
                 };
             };
         };
+
+        ov02c10: camera@36 {
+            compatible = "ovti,ov02c10";
+            reg = <0x36>;
+
+            reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_rgb_defaultt>;
+
+            clocks = <&ov02c10_clk>;
+
+            assigned-clocks = <&ov02c10_clk>;
+            assigned-clock-parents = <&ov02c10_clk_parent>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vreg_l7b_2p8>;
+            dvdd-supply = <&vreg_l7b_1p8>;
+            dovdd-supply = <&vreg_l3m_1p8>;
+
+            port {
+                ov02c10_ep: endpoint {
+                    remote-endpoint = <&csiphy4_ep>;
+                    data-lanes = <1 2>;
+                    link-frequencies = /bits/ 64 <400000000>;
+                };
+            };
+        };
     };
 ...

---
base-commit: 8b5b11babc761c25602230260fb001267645b9a1
change-id: 20250426-b4-sailusfor-6-16-1-5-signed-ov02c10-yaml-68c3b3d6cfff

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


