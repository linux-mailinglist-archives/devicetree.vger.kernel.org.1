Return-Path: <devicetree+bounces-112925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 189519A3EB8
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A1291C2382C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40B11991C3;
	Fri, 18 Oct 2024 12:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ieE+pvhe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE99242AAF
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729255782; cv=none; b=aLH7NI8FVL+gIWkb6qvZ8iD4GQ22w25uL4n3gPUUuut9jghk4fWiC9YDxrAnYUMyCM4BXJB+6qYaPf/3SVVyqgR2D809pc15OeoCbvsaocwUUmArQwkLt2xBHcOshps6GPC606/22gk4Ty4juc7EFanB14yQUzF2t2y1DgOTZGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729255782; c=relaxed/simple;
	bh=rrx/simViv1NODE67yHcD3U1Ozw1m/MeP1aWLE1fB8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TIjmm5KbTdlG0KdFHAEOe5IgFWaIzDvvlw4QBuAMclRgNnEaQ7Fxdx/c2WXYGHpyFGfkof0puEN4GCkJxJcOAntuNljFC+G0lZhpnsCj+2K1xaf/iiHI3mxVDEfhpuXqBUNqLevfByz3QAedjizD46AxYq9qIKZcVrQ6nXLBUQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ieE+pvhe; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43055b43604so21849565e9.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1729255779; x=1729860579; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJAuWK4DfwAbeny8guOqEvC1p+u6ynguqyS7e6lapJE=;
        b=ieE+pvheyfz8DPnhPF2ORs721z8MlFb02F14WXACSkYSCbaBdCWrI7+vhPxdyE6+ru
         B1Ic3GNVX+Rh7txNFhp9fvcM/VlGy807Fh0Tr/0Adja1XZJm8FTNz5pikZ+GXTigYDRp
         EmEHKWFX+9ek3fHGtiAcdfHjgxhZsRodXrXddwYdMx71CoM4rBA++mihs9GfDPG5oS7n
         AoLcyo1Ban6hrH5Kr2sPx9wL9pNi+8CU2QyO0dCw0VAXgKRhMLNAozlHW2RVlJ5i45Oa
         ghpBYOA+l5oBn6bV1wcvHj83muEDEH1H94CDXtMkqNDCO7gzRynx2VntjJ1lZAjnqZol
         AzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729255779; x=1729860579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJAuWK4DfwAbeny8guOqEvC1p+u6ynguqyS7e6lapJE=;
        b=QS3prGY0WENQNg+0UyvJowi0qssh+156bZpoQTCv43mwGHMiKNuTUveTaNJJW4JzVG
         cl3RrziVisGu2+7L6sNyELhR11mJFam+3go9wfZ0BrGzOLtufamSHbu+svtddQIVHDxX
         cS7F/XtyOBE2/OZU8UZpuRtnEyWEiCfmVVeSRBeYn6hb1aK8VOKvlZh4taCq3oZfgpZq
         o96nmjYm6bBJODmR50K/x24PQBG7/h5Ce3QZl5nOUEAmVcxe8iG5rt8CcnmnPxxiE8LG
         OwMB4EqHyS1eszUV9UKVESXapn9iiAfOaI+ItRS+/p7x3CmQPVK2tuEGJ4tW1gYA0RYy
         lykQ==
X-Forwarded-Encrypted: i=1; AJvYcCWm+Phe1O8d2/V6oKvj6ARq5+/Pt/UPNYdMRRIj01eYZAupIXGhOZV7oMSGlySr4WhlJ2J2z2EyevDq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywiq96bIkBfUXPbTEHYplT7h1asuTMx83F8U9EskfVixl28PMun
	w/sYqiSxNLTWjaPupdgs8byEWBCCEDAwqPquNTgJ9fdaVI9Jz/bNXCuZCYizKUs=
X-Google-Smtp-Source: AGHT+IHRvzgzgoC0ZG2V3ztPqjgVMsr7sMfgSAgx4113SoCVI0XnBCeYTlgZtn8QjZ5I8X2zDORElA==
X-Received: by 2002:a05:600c:5124:b0:431:40ca:ce44 with SMTP id 5b1f17b1804b1-43161691682mr18762585e9.30.1729255779222;
        Fri, 18 Oct 2024 05:49:39 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:45a3:93e:5196:d8ce])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43160695d8fsm26640835e9.27.2024.10.18.05.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:49:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 18 Oct 2024 14:49:11 +0200
Subject: [PATCH v6 1/6] regulator: dt-bindings: qcom,qca6390-pmu: add more
 properties for wcn6855
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-sc8280xp-pwrseq-v6-1-8da8310d9564@linaro.org>
References: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
In-Reply-To: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>, Kalle Valo <kvalo@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1557;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=iGTKJMfhZmNZgHqp0vz7dPEMIpKYQArR47wQOa/Bh6I=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBnEllfSxe0XkR+ByTLtVLTyxungrZBaVtwwbhqY
 +OQPRt0CSSJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZxJZXwAKCRARpy6gFHHX
 cubsEADfjQokexgC/5nBzeS29cbLxchIQnMAOr4/5sarApBrczNjyXbGz5KJMuyZRyHkm6hXlzj
 yibRrUgPQllYXFxUajKt7h9VFhYViYhILka3w6v20VyNlrwmWoTw1lYVhoxGubcJg5QRGwLeB84
 pz8GALy4SLTCqd+8zHHYXTdcfVCx9RW37Jk4qgGjZzd0OTqYOejyBICkeiWLPbzSg6OoHkt00f4
 nSgxOwgmQGqJdQOo44xMgNvOANATY5w90KHxiRwldas/0j5auy2wb27ff9bYj/lm5JbR0wmFGiI
 xQNN9lN3VPY5O5NDBDLtYvc5K0ewhCyyGGVyW2EsCD+3Jr5eJKGR77HLxdls1EyF9NVKjWkK7fz
 YE6vWxQui1fb+xbiPTLB40MXjZ2x6/eomusLFEB/s1o/+QO9+AEPUdJOVTUJ7Dy1PNdjnVUCqQq
 OMRaATrPkpLMECFhdXGYQ4HAcIgFvHz49Gp+fWT2vI/K8LQZWX6/azsmvR3c5NLbM4jxH1dz3QR
 Bvq04p2luWYFKwp2guJ4aaY1OB7YLhU/8bTA27xi3+vhSlDhjN4S3ke/3G/+rJ16rCQfW86Y75i
 30eMEpkNbIp7kCc6215+it7rqrkO/9nd/AT0DE6uWlDKbK5MFhBTasM6pmJffc6WDqaeA+bnkxj
 MrYBlSGrZaJZ8Mg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Document two supplies that are used by this model and the optional
xo-clk signal.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,qca6390-pmu.yaml      | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index 11ed04c95542..ca401a209cca 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -33,6 +33,12 @@ properties:
   vddpmu-supply:
     description: VDD_PMU supply regulator handle
 
+  vddpmumx-supply:
+    description: VDD_PMU_MX supply regulator handle
+
+  vddpmucx-supply:
+    description: VDD_PMU_CX supply regulator handle
+
   vddio1p2-supply:
     description: VDD_IO_1P2 supply regulator handle
 
@@ -72,6 +78,10 @@ properties:
     maxItems: 1
     description: GPIO line indicating the state of the clock supply to the BT module
 
+  xo-clk-gpios:
+    maxItems: 1
+    description: GPIO line allowing to select the XO clock configuration for the module
+
   clocks:
     maxItems: 1
     description: Reference clock handle
@@ -119,6 +129,8 @@ allOf:
         - vddio-supply
         - vddaon-supply
         - vddpmu-supply
+        - vddpmumx-supply
+        - vddpmucx-supply
         - vddrfa0p95-supply
         - vddrfa1p3-supply
         - vddrfa1p9-supply

-- 
2.43.0


