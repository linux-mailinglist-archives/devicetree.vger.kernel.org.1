Return-Path: <devicetree+bounces-93402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD001950CA7
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41981B262FE
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA1AA1A4F1A;
	Tue, 13 Aug 2024 18:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RX3y3c9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079031A3BDC
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 18:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575518; cv=none; b=G5QHkEYGEFlDy2tjOv4lBg/XBGJQy8KwXy4dWpRtBYBwuxP+Li1z9R/QzD3qVFdCVEBLS9/2GRh07EK10a6grsvR/65hbU81Q7oo4eGSMwyaxZnNczNUlonjFTZknX6kpNYGjF/kWnT07iar9/mn3W6PjMwXwW1c22xfurZaD2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575518; c=relaxed/simple;
	bh=VjVpCXhdprY8yAPr5q1xpO89FnUJgWu9bWelY/MfREs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AwOIKHQd2tA8I4Est7ILm4TneDZRBpfPrCy70i+fvUlJ8NZ/ek60aA6qlrm2byTw5u3hw2lUaBxD5UHuW9+CGwzL4RXJi10r09d/JaofGa+5UTHrcMItAkMHU5QQxkorl1cfEtGYk1RMopCQYkLIJSHRvuvggGyF8K+w2i8RK/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RX3y3c9C; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-429da8b5feaso7466835e9.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 11:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723575515; x=1724180315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=etIaN+U0WiI8zpIpI/yy1cpDhwtG331HdZOmJAhsY+4=;
        b=RX3y3c9CC7MM3b8yE7dP3UM+1EXDjXChm8geasOX1oOvPdYRIzeBEasfHPS69VrwST
         2iBu6+Uq7MsqaD8KI44SI3/MtXH4JXaTL2wfyM/j4Bqey8tIHDQ8CtsF+mE1coxdqimR
         4gVAKgGUQc+CpXIjqv11OEzuVCar1I3YlbyVWELt+yW23x5nTTmvepqRP50bsrGsreFW
         rxbsmffGh1Rvwfb3jlHqOcBJYXElgsZ0KLwk7SEsAh3FHTB/RCWlKTFI8v1EjyE+Y/aK
         vBM56Q64dGjNo8hki/mbtPpDNrXIZe8AfPFQrXtRnsraI1C+OiTQRKFU+dd5YuLiGLFn
         QIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723575515; x=1724180315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=etIaN+U0WiI8zpIpI/yy1cpDhwtG331HdZOmJAhsY+4=;
        b=GaOjDD/pEDekb60NZkWaEjViyuF/GivHmHgOeXFdZFkQjcgaXMle0vQ85LivZrVSqL
         9zLoLj4h3a5SrL50XJaFAOYd1SPZ0UO9EUMaBVthUMDxQRuMWFaZviyyq/90VqVxQS3I
         1dkagcxDJvUJI7w1BLByMxQXKLmhhf6EZ5pG6e9S+suBvXeMkCYd1JZTJdU1mrzEx3Na
         OY4NI/ger/41aOccF3UhDNqaqQOZ7RzQCrLcGdMbRyC7Bh7SbGloce6psdvHx/OEGl5u
         bsAtFf7Eqe7NOwdJQmOMHoN7R1KdaJx6bsQF8O4L3qwAT7MUxaLlOaLptP9yk4a6JZvO
         zZjA==
X-Forwarded-Encrypted: i=1; AJvYcCXQerCJAkSl9ymF7SdHOgqo5yoNZ4pWji++RnQQToBg90WuSNpHXvMuO8LJ4T3qeRr68AUt73wtJAmkc3IkPMmoMqBIw7DI/mR96Q==
X-Gm-Message-State: AOJu0Yy3qoOIj1C6jeMa2Td8+s1esRWZz50UkgLVlu91YYz9Db5dFl1s
	pcb/6Co9L/qxRlfODKpZAJUZbpFrH4rP4qK46EXMaodbzqmIuEtsBnIRTDjbNJU=
X-Google-Smtp-Source: AGHT+IEy/ZjbXzN9pK5GQhzOFuJMOZ1u7SAEu8Uz+qQh0Yk2W331GPyCG+wCDY1nhz007Yqf/Ab8Nw==
X-Received: by 2002:a05:600c:4706:b0:426:6fd2:e14b with SMTP id 5b1f17b1804b1-429dd2365c1mr3967065e9.11.1723575514278;
        Tue, 13 Aug 2024 11:58:34 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429c775c509sm151208145e9.44.2024.08.13.11.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 11:58:32 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 1/3] regulator: dt-bindings: qcom,qca6390-pmu: fix the description for bt-enable-gpios
Date: Tue, 13 Aug 2024 20:58:25 +0200
Message-ID: <20240813185827.154779-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The Bluetooth module is obviously not an ath11k so drop the word.

Fixes: b5cb34c93bd4 ("regulator: dt-bindings: describe the PMU module of the QCA6390 package")
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,qca6390-pmu.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index 3aaa9653419a..ce7771f9fa36 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -65,7 +65,7 @@ properties:
 
   bt-enable-gpios:
     maxItems: 1
-    description: GPIO line enabling the ATH11K Bluetooth module supplied by the PMU
+    description: GPIO line enabling the Bluetooth module supplied by the PMU
 
   clocks:
     maxItems: 1
-- 
2.43.0


