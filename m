Return-Path: <devicetree+bounces-66001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C90A18C0E6B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 810E4281B51
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E4012FB1B;
	Thu,  9 May 2024 10:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dWuTFvrq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A55712F5B7
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 10:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251679; cv=none; b=thoJFnTQWABtpDd9wainHb4wc6rvZ5fkw7UgxA834hjAVzXopHuFTuhu8irOiGMxyB1ylSGMu6nRN83Rj9CDZxB0/l4POrDy5t62aBsVGBynvRdmpRGwy79XPBIndiyA8tY/yILWVs0goS4tBSRiIJ8LPsum3BN+bwbYZnJkdjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251679; c=relaxed/simple;
	bh=OQni8xvnYy9WGLxuioB/twwX1etnlijk5yX08S2h+Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pMIjNY/mBCsZIeqCFXvkCUZ3zI3ybBuGjHICx3ExXcLL0gdjSzuJxI6b7Oc0ZAeOuZJHbNdJ+osiGF1qZFxD5vq/D2OdflMAlo43BKdFKTcRqnAUTFXRbrjmxgWQt99YcEY4OtW9+G1APsYnq3p98BNkakYqnoRdFLivTUYgfhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dWuTFvrq; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a59c448b44aso169779266b.2
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 03:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715251675; x=1715856475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FR+x8sKExGfyELSBtCHiRo7zGgjRFCGjuQW294Rt+84=;
        b=dWuTFvrqOaHm4EOefjAct63wRausS/vS0xBZ01eIbZ8Y7LI2B/ewqQsusYxZAr0W5f
         Nq9XXJ+J5prbW6Gnjy7L+BvIsUVXpXKWbP4EReI5RpYirzfbsL3anIoU7FD8GZVxhGdG
         zSq+yO6rv1CtfGsl9tMiN0p5FQ3tikyKrt4QkfEzJmCxYEjAIQgi7g48yPsDEtt0+4Z0
         EQGwqBhopoYmfsyAhhOER+konyKDCgTJbVhBIMslJZ82OTHIq2Hf9Z+1YEd/12iYfVDs
         8Y2EMmYukQWihWvEoEWorm6iKy8gmYvMeoc3wVX/a4airHXTrMzNR3i4DG7c76IjcsSo
         5WFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715251675; x=1715856475;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FR+x8sKExGfyELSBtCHiRo7zGgjRFCGjuQW294Rt+84=;
        b=HCSPCjokdFc7tBEoIhObsP6HOWBu1KrjK5SUuiUoGfv57pjO77QZg6R01jA2tNBMzi
         vHvIoaXycac/yTojt2A9KxTyubR02Vg1TeRfJuFIeNzk/f2meNBxkOPRv82ho00PYRsQ
         p7chSAjRyS7SePeYtIhRd6cFuOT0NPFiLRakYCZ2wFR5/58ppWUyTSbojeRWaUk0GjRG
         yarKVRlBtng3hVr8vUvzsFsWFK5+hCkZsVIgA0eSDwWEGJ7M0sx95j/3LUYVAZjW2fq0
         tM7sOa1B8U+s+6Fs71x++4stuZjYlU4lICvX+FrJ4O91wxmZrd7oAb3146OMwLs+bxQa
         Wy9w==
X-Forwarded-Encrypted: i=1; AJvYcCX/dJ/c1iZN9fXhroN9Kl2SWHV/Q4jMV5XGJbLhgsB8drAMZzMx0mI1RSuR91GOOjsUX0CFUQQUWX+IsdnXZjdkTsNa0lbGzOQ23Q==
X-Gm-Message-State: AOJu0Ywjh7t4gzM0OYO2HSg4ULCorwNUw33x5suEBl6l4/gLCbEK1BdR
	zwY6qVf2Xrf+3VEP8c//V0Js210CM7ej7iw1I4kX+9mM/MfvfUFBNkj8SkRUfK4=
X-Google-Smtp-Source: AGHT+IE2edGeC5X3qKaBM4AttahM0ZV4LqNcNkCLMrXATw1Lh+N+0G/Wq2ZQZT8l7qjwdwAJ0EegoA==
X-Received: by 2002:a17:906:455a:b0:a59:ccb9:846d with SMTP id a640c23a62f3a-a59fb95d605mr322034766b.37.1715251675192;
        Thu, 09 May 2024 03:47:55 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7fc4sm60588666b.135.2024.05.09.03.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 03:47:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: vt8500: align panel timings node name with dtschema
Date: Thu,  9 May 2024 12:47:49 +0200
Message-ID: <20240509104749.216605-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT schema expects panel timings node to follow certain pattern,
dtbs_check warnings:

  vt8500-bv07.dtb: display-timings: '800x480' does not match any of the regexes: '^timing', 'pinctrl-[0-9]+'

Linux drivers do not care about node name, so this should not have
effect on Linux.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/vt8500/vt8500-bv07.dts  | 2 +-
 arch/arm/boot/dts/vt8500/wm8505-ref.dts   | 2 +-
 arch/arm/boot/dts/vt8500/wm8650-mid.dts   | 2 +-
 arch/arm/boot/dts/vt8500/wm8850-w70v2.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/vt8500/vt8500-bv07.dts b/arch/arm/boot/dts/vt8500/vt8500-bv07.dts
index e9f55bd30bd4..38a2da5e2c5d 100644
--- a/arch/arm/boot/dts/vt8500/vt8500-bv07.dts
+++ b/arch/arm/boot/dts/vt8500/vt8500-bv07.dts
@@ -16,7 +16,7 @@ &fb {
 	bits-per-pixel = <16>;
 	display-timings {
 		native-mode = <&timing0>;
-		timing0: 800x480 {
+		timing0: timing-800x480 {
 			clock-frequency = <0>; /* unused but required */
 			hactive = <800>;
 			vactive = <480>;
diff --git a/arch/arm/boot/dts/vt8500/wm8505-ref.dts b/arch/arm/boot/dts/vt8500/wm8505-ref.dts
index 2d77c087676e..8ce9e2ef0a81 100644
--- a/arch/arm/boot/dts/vt8500/wm8505-ref.dts
+++ b/arch/arm/boot/dts/vt8500/wm8505-ref.dts
@@ -16,7 +16,7 @@ &fb {
 	bits-per-pixel = <32>;
 	display-timings {
 		native-mode = <&timing0>;
-		timing0: 800x480 {
+		timing0: timing-800x480 {
 			clock-frequency = <0>; /* unused but required */
 			hactive = <800>;
 			vactive = <480>;
diff --git a/arch/arm/boot/dts/vt8500/wm8650-mid.dts b/arch/arm/boot/dts/vt8500/wm8650-mid.dts
index f6a42149a0a0..7977b6c1e8eb 100644
--- a/arch/arm/boot/dts/vt8500/wm8650-mid.dts
+++ b/arch/arm/boot/dts/vt8500/wm8650-mid.dts
@@ -17,7 +17,7 @@ &fb {
 
 	display-timings {
 		native-mode = <&timing0>;
-		timing0: 800x480 {
+		timing0: timing-800x480 {
 			clock-frequency = <0>; /* unused but required */
 			hactive = <800>;
 			vactive = <480>;
diff --git a/arch/arm/boot/dts/vt8500/wm8850-w70v2.dts b/arch/arm/boot/dts/vt8500/wm8850-w70v2.dts
index c7a6fe0ce48f..5d409323b10c 100644
--- a/arch/arm/boot/dts/vt8500/wm8850-w70v2.dts
+++ b/arch/arm/boot/dts/vt8500/wm8850-w70v2.dts
@@ -28,7 +28,7 @@ &fb {
 	bits-per-pixel = <16>;
 	display-timings {
 		native-mode = <&timing0>;
-		timing0: 800x480 {
+		timing0: timing-800x480 {
 			clock-frequency = <0>; /* unused but required */
 			hactive = <800>;
 			vactive = <480>;
-- 
2.43.0


