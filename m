Return-Path: <devicetree+bounces-196751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D979DB06F62
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 09:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA0A74A2E1F
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 07:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB6F28EA4D;
	Wed, 16 Jul 2025 07:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sSbui4JH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF53C285CA5
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752652211; cv=none; b=T9WlgwROD0wdqBQl0/SpDHGAjQGRVtzK3tVlYHKy1fRYos/D0/TTYuciRPQsMLWN30gSR99N8HyCARX1gmTTotrAEdrsp+WEPaG0B+TFlnJNZbaGKdIxzl9cz/HEXXYFrxppELQVN4WQJRwJmIAFpslSH2QOHPdmAlTsYbP/dLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752652211; c=relaxed/simple;
	bh=1ZRb0G6cYOmLEfHqu50vnKjcHuLohcwEx1xHyXDSWDA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oiIQh4dqghCWO4gZHHFXS0rTPCOkaOsJljXbNU5hG7V7tf2/rss6nhzsJHl+OLjBKLH1UU77QFymE02YPH9sUBiILYGmXzDph11oJdkFH87cNmjHJ8iR9Ux99yw+jBBtrCDvO5GdX/QxPrkf3szu3/fPv3JnKdq/cBiaf5wdoKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sSbui4JH; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3b60565d5f4so285178f8f.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 00:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752652207; x=1753257007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=If6iFrnbvf7J8sBEQeb31M79uFX7ow0o3Z1tlhPnI1Q=;
        b=sSbui4JH8MlOmY9u9YHdckm06ySzbU8uUioksY8GS2Tz+//kVARuoYxmuwMQGqXJzq
         eRpDGFH8TuD9VzEWaKtg6o1Cap9703US22CGKboRYBbzSacvRVz2wEk8e3kXMhkIV6A4
         cUBOMNhvXhbtl88WBv+Xpb6Q5fW5pKBTSNAUcsK653ysWAehDfi1RINttsTqmTCM2S+8
         5ANgA38bsYOqmlB/SpMQoXjXWOZ80ej2pRgnsw1Y9kzoTeWtLz5CBLSeCEH3DYM6QZ0C
         qRMSS0hMIv2GREH1/qh03rA6CIO5jBv6A/NKKZSmEbh45W8xbZ9A/+NraXvZCNULCbUL
         roNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752652207; x=1753257007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=If6iFrnbvf7J8sBEQeb31M79uFX7ow0o3Z1tlhPnI1Q=;
        b=UqJsCueIyRMdrPiQqKLFHIBbducm9rwuu03K6KITjjP5iqrdyMkGW7EBoJq7T/IgRK
         2xtyPWTX/PBdQkfIPC+YJhBZW6tysLahhmmLmGskvqlPRChWP1/CtsfTbirOqUInqOv+
         1bAdHqmW6nbq5+x7Lsx4wq8rpSBBoU5NDigEqMNVGzCemg88UoUoVCWrYMaNJzh1KgN3
         Lp5Vg5MleQxap3qxofjZp72fDu53T67esbLSgaz+Wd8grQ83UiFkk/EYEtb/EF7GRhBh
         Vm5CCUZVaDrn514mUWotOAQ4LzjwxxTITpFC78K9cbSoHFwF/YKB3Nk8ujNyQY8GmQyG
         b6EA==
X-Forwarded-Encrypted: i=1; AJvYcCWYiWto8sF3hyB/a9kj+kVvVmQ4SzhcWAeSsfXIP48rgIBQ6jlCv67s1p98uItO8EMGgAwUkkCvC+ek@vger.kernel.org
X-Gm-Message-State: AOJu0Yx96k50v66hMjSFR0WsFXmnDFFwQaudK38gO0cb2L6N6PIHIlcT
	7TEV73MOyIThvQeY6lVKSuXxMRQL3CtlnMeh8cIfQofUp2WuydBGaOyzxflizD1mIAs=
X-Gm-Gg: ASbGnctbl5FHM5diPxReVPApaAqQpUViqVEtPrtXxUtEmyAPnBB0A3dbTujkui+kVeG
	meLLaZh6WZDP5iVKV43N9HGukSdeMBjM5Br0wov+d0NIWojGWHyRjC7yLFnQ8WQxh0fivpH/Kc6
	zsvJVrrHIr1aFnX+iiqXJJ+bnN6Lne0RJSW1fZhR8st+A2o7S3Uuyg7FFgfsLpt7tNtUHDwiqXK
	CMw8X9WX2g8r/6QhA7jrN+tF2g9Auns4oduodx5gL4pHkFg23TmWPMVKN7FTAXZFaKGtv3/Z08J
	mERvWYHjCo5gHTH+jA/mGBUqodz47iJwZEwDDu15qRhpBiVeD6UP+hRXcduaIVsiMJeDDbmLoHA
	JEslkhzC1hPBPg1Q08Ih5TmwPSrTJefiPAH0=
X-Google-Smtp-Source: AGHT+IEUjEk985nnWZZmAjTTpQ5LEJO/pws+gSqB87/tDY1yUfuO7gwUbG4RBQkqZqYe4K2BbRRygA==
X-Received: by 2002:a05:6000:2387:b0:3a4:d0dc:184b with SMTP id ffacd0b85a97d-3b60dd52efdmr606087f8f.6.1752652207043;
        Wed, 16 Jul 2025 00:50:07 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e1e2fasm16842269f8f.77.2025.07.16.00.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 00:50:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: qcom,lpass-va-macro: Define clock-names in top-level
Date: Wed, 16 Jul 2025 09:49:58 +0200
Message-ID: <20250716074957.102402-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2427; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=1ZRb0G6cYOmLEfHqu50vnKjcHuLohcwEx1xHyXDSWDA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBod1mls1BxkwzpHTFJNzDPEYinCzt8GBFEw8y/7
 rmPe1g8IGOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHdZpQAKCRDBN2bmhouD
 14DEEACVjdwsw5u44zs/5I8/ss8mI6u8MGlbbKxxIOP5ouNZGmAuXUUZ7qu0fN1KLI4jmMpPdfV
 L/7ML2TZYpHDBAa7w1chRYO05GCoYsIBcIXEiabwiaTlRgVCO4cfFlcfSuMPbmOIT8B76nAixp4
 62tz0Hwf+8EtYDcrnjpC1rbVkZHapdN+fKy8wpzIUHAuqqFNJBvRQ3d6Z2q1qrcYfcSb+wU3Hns
 G4+68mMCTM/+RGKiGp+v2jdTXDuqHyGjDjLkxU2PiG7JJmykxaouEfinR8PQHGlTaZ6A+enKbd2
 R2v7Xi2OVwOhyDHyTaFN5NfXHnizpB4CwZsCywvoESX18sr1s8j+vfQJpTmsGXeHt9cx/vDfb8p
 QPgkWQyFZd7o1IW3A5YBRGdPT2jtxPv8IU2oI/DKxJGLV2ft3qm+peSeQrJHisfuX3F4ZElOFpH
 rkrBbWsjV/fUa4J9l3DJmSmfuilpbh2uA47cBqFL6Xde/eITEejS/NoLfz5L5wusTLuXIZoCyoI
 7tW9Eu3d6EK3NiMWjJpkYFRi81uga0ENgDs3fs561HoqH4Y7cMA87mF+4avKpTC9Z/ovq1CdbEi
 hRk5mahclOFOW0VBWC7jxukO4KcLf+poQmUKgJf0NOJ7sXkCFNKPJEtC0nEALqkiUYcECzYiN3N fWCqVyklhP++ivg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Device variants use different amount of clock inputs, but all of them
are in the same order, 'clock-names' in top-level properties can define
the list and each if:then: block can only narrow the number of items.

This is preferred syntax, because it keeps list unified among devices
and encourages adding new entries to the end of the list, instead of
adding them in the middle.  The change has no functional impact, but
partially reverts approach implemented in commit cfad817095e1 ("ASoC:
dt-bindings: qcom,lpass-va-macro: Add missing NPL clock").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-va-macro.yaml   | 28 ++++++++-----------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index f41deaa6f4df..dd549db6c841 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -40,7 +40,11 @@ properties:
 
   clock-names:
     minItems: 1
-    maxItems: 4
+    items:
+      - const: mclk
+      - const: macro
+      - const: dcodec
+      - const: npl
 
   clock-output-names:
     maxItems: 1
@@ -80,8 +84,7 @@ allOf:
         clocks:
           maxItems: 1
         clock-names:
-          items:
-            - const: mclk
+          maxItems: 1
 
   - if:
       properties:
@@ -94,10 +97,8 @@ allOf:
           minItems: 3
           maxItems: 3
         clock-names:
-          items:
-            - const: mclk
-            - const: macro
-            - const: dcodec
+          minItems: 3
+          maxItems: 3
 
   - if:
       properties:
@@ -112,11 +113,8 @@ allOf:
           minItems: 4
           maxItems: 4
         clock-names:
-          items:
-            - const: mclk
-            - const: macro
-            - const: dcodec
-            - const: npl
+          minItems: 4
+          maxItems: 4
 
   - if:
       properties:
@@ -130,10 +128,8 @@ allOf:
           minItems: 3
           maxItems: 3
         clock-names:
-          items:
-            - const: mclk
-            - const: macro
-            - const: dcodec
+          minItems: 3
+          maxItems: 3
 
 unevaluatedProperties: false
 
-- 
2.43.0


