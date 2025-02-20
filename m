Return-Path: <devicetree+bounces-148815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7393A3D800
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC2DC3B14FB
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9FD1F3BA4;
	Thu, 20 Feb 2025 11:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QTOQ5b5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCFC1F152C
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740050102; cv=none; b=Fh2xZtrM+q+y1DK2Ycg3fad5S8xS6yy6kpVq3E3LFiQhWMfrCnXjP0i6wUqKu1nk1UG4mSlmtK8ne6unBTusrlRVE9f3QsOz8/7rIWJQJGgN6w/qwnmBORBIVT8kAkZRsVJhhThk/9KuGkO4rZOvLEH7FFX/Xc5WV7yMVlvX+NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740050102; c=relaxed/simple;
	bh=h5+bG7QnOGzKdNB1OGuaSSBt1fw1j+BI9wMBVkvkoFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L6ISdFza6hi3wlu3NafXI7AgrQW8r8m5Qwrw2zlrWljh6Ug5f+pmMRwiBeH0WCdVhdMY8JHs/KDe8GH1UJmnku/sjarp5lW42LzmmLCh/A0S0oo/XJymz0v7W9NJloOwf6neqjBdIqdfXiDa8GSt7zKbdT3F1jf2uRGBlhoTM9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QTOQ5b5l; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5461cb12e39so813714e87.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 03:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740050097; x=1740654897; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kmi5qZiZT2PWJkmQW4SIR2YbWKNMaLc2hi9Q1PeeMGU=;
        b=QTOQ5b5lY/sPEsTI3MEib34ZDhz2LgLEfMB04ceN4HFTYp9qJwuH2BMMnEijO9s277
         dS+u2GckvHxsYvqgre8mb705Qy3bTOv/wV4TA+A5oboouNQ0fnUxdg7u026BqVklvPMl
         mJkVW/UxH+D6M72iU+naVMEoMVT0VoVeKqiA6T2Tj70LCSdllTH+HQZSdqVwjmY/sAok
         nW2UgTiCOxD9iuw8ldD8Sk0tTmwxGeUWf8TSS6bREkXH8l/VsZi7Xcunq9EdKOO6awVG
         oyw24LUZXbzIX+1HgtpfRzEaObenlb5STcFQxsrmYjO9OgekSmlQCp779OGIeT4W4rNB
         AkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050097; x=1740654897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kmi5qZiZT2PWJkmQW4SIR2YbWKNMaLc2hi9Q1PeeMGU=;
        b=a6DI+5Iplw1oAjffJdXPkk53Q+gAc3bl9ZfeFBhHRv+pxkIiuUZk3gOR9iWJgNJf5z
         wXbL1ZJptiopYumYZl6Cisqnwc6zunODkLmAjsp9AXywBBK/ITr5xoJ6NmUbZX6nuYrv
         9m4nud4X1f/+7aJ0kytNlr/py7HHxkSQ/tVsBUY9KRrc2x42AQiG8GwErBGKnQVt2s/F
         XSnV06NtvU5eMpicbJ7ocvK7AaXEfwiym91FH+/Hqx6HMo26gtxi/bdyR2oQZ4IRakJQ
         PYfugxgPpxH20C2iFKazBJJTbrS9kw0FiUCn4ki3WKIEPE8AJ7wupNNdRdsHpLA2lOFE
         2J8g==
X-Forwarded-Encrypted: i=1; AJvYcCWfUVoz1/qgeD0mn3ZHj32LT3yPB28Ia+rdXQkwhJClAIzwROsetHoVhRNm3GKmXFnxZCOcAtg45arS@vger.kernel.org
X-Gm-Message-State: AOJu0YxLxYHCtbqGJST10GVuYa17mz+iWtjw01V2KJ5RXZki1Fh3yMcX
	n4gmFdyA3Fu0Ki2+qNZJcM5bMJvo2b7DiGKI6q89MqF0tqG5A2j/91BRAZwwLO0=
X-Gm-Gg: ASbGncvDBOsMqNQvBLVjdFCwSPhVQozZzXLaFlD/+GWIVY6PGPNk4vNJn70gaJNaebz
	zCvgsOm2T4tyyIhhRThHGkLtL9O3fOnZ7jJ+i+iuMQWIGFbtTH00ME9nrmw5F0kY5+q/LZ/FE5t
	AeCPQUAPNKJQooDiNbfTGkabQ73yde/LHLAlD4cAmh04vo8cUbabEBIL1d4Stf5zDv2mVgw4sQt
	CtCbTpsp4tvnh0uDm98Mxc91lMkOO1IK/NpK4rpDXslF1q5atSNNpuVeZ9wbcLARMIBDVC2coDa
	fJG9oH1StO2Dhqua1dQuXA4=
X-Google-Smtp-Source: AGHT+IEcT8WbQ5vEweEAYBbOtxpJnbkkjGYmd95cHUJt/YZkrsXFT+WC5s2N5eKXQwAqzYTMpYUmmA==
X-Received: by 2002:a05:6512:3a8f:b0:545:cc2:acd7 with SMTP id 2adb3069b0e04-54724a7b458mr785756e87.27.1740050097280;
        Thu, 20 Feb 2025 03:14:57 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545297856c6sm2056164e87.142.2025.02.20.03.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 03:14:55 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Feb 2025 13:14:43 +0200
Subject: [PATCH v2 1/7] dt-bindings: display: msm: mdp4: add LCDC clock and
 PLL source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-fd-mdp4-lvds-v2-1-15afe5578a31@linaro.org>
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1242;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=h5+bG7QnOGzKdNB1OGuaSSBt1fw1j+BI9wMBVkvkoFE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBntw6rLFo5o/3jAn6PLBBB8PgMmUUthGTk+MMz3
 InhVdiOND2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7cOqwAKCRCLPIo+Aiko
 1T+3B/wIyihaqmkz1M8Ue/9XefuiaGR4R8gc3Nvfhww3ydt5DSX5EZw5UVzMInfEP1xG4CPoA4u
 hKzVa8HwQouiKCKBbdX5vF79BlHcquloeI5Y8JH6w8VLkE0JCiCm1swqbq2Ak52Hi8zWgVMaZ0N
 /4iptmF7mzSgUYBc/4uQVWvhGzUVB/MxxldvDVJF/ETZHcAK21P7ej6V9VbrZG2QLDAaP94Gz2t
 2WGe08QpbdMkw1qz+JWHeigDBpghXOuipKUNxeWdHH3v2spRexhSKjgHaMVb9113vqi9ss/DvkT
 EZgReHrtG6NJUbt410Dl9MpFn/PHtEem1Eo7Use0eqzsNWEF
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add the LCDC / LVDS clock input and the XO used to drive internal LVDS
PLL to MDP4 controller bindings. The controller also provides LVDS PHY
PLL, so add optional #clock-cells to the device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/mdp4.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/mdp4.yaml b/Documentation/devicetree/bindings/display/msm/mdp4.yaml
index 35204a2875795e2c1f7582c8fab227f8a9107ed9..03ee09faa335f332259b64a42eefa3ec199b8e03 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp4.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdp4.yaml
@@ -18,9 +18,10 @@ properties:
 
   clocks:
     minItems: 6
-    maxItems: 6
+    maxItems: 8
 
   clock-names:
+    minItems: 6
     items:
       - const: core_clk
       - const: iface_clk
@@ -28,6 +29,12 @@ properties:
       - const: lut_clk
       - const: hdmi_clk
       - const: tv_clk
+      - const: lcdc_clk
+      - const: pxo
+        description: XO used to drive the internal LVDS PLL
+
+  '#clock-cells':
+    const: 0
 
   reg:
     maxItems: 1

-- 
2.39.5


