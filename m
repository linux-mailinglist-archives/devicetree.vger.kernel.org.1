Return-Path: <devicetree+bounces-137066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFD8A0769D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:09:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E264B3A15BB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91ED0218E8F;
	Thu,  9 Jan 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSTwfGpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C370C218AC5
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736428133; cv=none; b=qEcJb/k0wMmPZUMruOmmSRwtGAuLiHkfshQMpm8lkNtQj8+F4DVZQICY74qBs/3qWYxwW0HCbGj1bolhjRwCA907JMleytpUv+18UM1rtzxj4ZgNRGnvetSEKlZDl59/YX3f0MlP/C0WGRJT0Kjot4ypLHbZi4XZsiSs3tak8Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736428133; c=relaxed/simple;
	bh=e0kdcE7yovOEd8OkvRzLucewo18gCGxr8FZ8czNmUJA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r0VbTZNebBWbq1rk87V9QiurfDDVHW18vqgI4fKF/qNdqrqdYOvzu+nhvxp/J1Qrh4r1gK7Fl/Z/mgEhwsd7lVR1u+Drt3xbiYGrsA8xDOeU6z/ed7NksyhVw2Bdpzbd3EAddtfPvrc+cyW4csQRiBMyBEVFAQOKvOnTgieOPv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSTwfGpS; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862a999594so29091f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736428130; x=1737032930; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4C8lFM4usc2WCSKaYFakQWoC1zk+7BImjfAxgt/bKlA=;
        b=GSTwfGpSSvZoYUsKyM7Ng0Rv5qICUUQ6MSdqxCBnQKEqFJNrRMIYnyJuTtBX+cnOiw
         9DevAp/1M+W89lolSdWPgV361XaFM+kkR7ubRt4u49lsQ7V602RkdltPs6V+FPzPTTD5
         Gy3IrZfgxxH8OonKrjPce0iVGNv31SfIREx6adkppLbR4qbhkjtCGgnYErWfxt6q02Ae
         UTZ0oIsYq2EZSHsLej0ri/nMZs+r1mQ9b2GcrB9geMPBY7EymfHa2dysMIZoU/rmhW7V
         kBy6s5jKcy8GN4G7GhSe3w+shmxlLkeJh+clFiI8jtecXvtjh4g/5g/iFl5reHkPaAOz
         y4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736428130; x=1737032930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4C8lFM4usc2WCSKaYFakQWoC1zk+7BImjfAxgt/bKlA=;
        b=jlav1HyETA+v9HnrkyGAtVu+C2KXVazHGGLWxXc8XNsRNUF2nLgtbD76iVTIlLmCya
         BpORTX0FAYnEH1fnm1Qvrt4LxotN70atmsaR/wf3auZwCI/o5aC8HyrMm70ajhWsjCxt
         xnPiZRyS9uxTjiffCmQ1zBOvkCClY/graKBKEUX6glVNVC8lYkDsIKOMBfB+K0xmCHQo
         vDvESwJp3D2pXkSNN6FuZtXdxQAKOpBaHjYbpehEN2dHkoZzgwWq4d6ilK//51XfSvrH
         Os6dMDW7EzDwmNbNQ9fxqoPauNrmDnWZWqgz9Nwoiyajq/4oAyT/hIjJT21Ay4oa+IU3
         VuAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr3JsWKlOTDYDKbw9ShsdrbKkR90WIg/ydMYk7dHzSKFTyRcYue6L4m+2qvcuPyxehVdL/g0QS5kVA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6oBdf0gilJ4CBTUgZE4n+N4eoQbNm8OYf297D2+MslHuQGpKC
	pkzH0rNE0pzH/5ygqCAJRvqXSEPc0FzUSvNhX/Y4YiqTEDWJbzUSRrJsfEdy5TM=
X-Gm-Gg: ASbGncuogSxay3P2CJn49z+egL5GVo/RjXuQ46oCt96FycR6GH2fxQY3N4PmPnva7mS
	9PNnZR3YobgvSohB2WA2FwPKKgS5niGrRMiVQKCNGcqjCO+aEXAxabnFbCD2stg9yQ8CvupeNwK
	FRl0UcVEPDjXfGxC5h+f+3BRHh92DhPq/w+7/ciLDZ+mxsffWKklNj9dkn5+jpAKKhbAiEgjqLz
	KI1E3AafeNuPBzUgSHGVQWjQHjbQXSmwBAtwoEZS84XKyK+G8aXdmMhpil3sBEqlc0kgea8
X-Google-Smtp-Source: AGHT+IEUQcwvPKcbMIyP5ZKenACaYFV8nmJntcoucqUL76PjNvM3RVPBbc04BbNpWGPXqI3Qhp3mCg==
X-Received: by 2002:a05:6000:1ac5:b0:385:f3d8:66b9 with SMTP id ffacd0b85a97d-38a873122f8mr1918123f8f.11.1736428130154;
        Thu, 09 Jan 2025 05:08:50 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4b8124sm1789167f8f.81.2025.01.09.05.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 05:08:49 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 09 Jan 2025 14:08:30 +0100
Subject: [PATCH RFC 03/11] dt-bindings: display/msm: dsi-phy-7nm: Add
 SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-b4-sm8750-display-v1-3-b3f15faf4c97@linaro.org>
References: <20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org>
In-Reply-To: <20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=e0kdcE7yovOEd8OkvRzLucewo18gCGxr8FZ8czNmUJA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnf8pSigc0AOsfkJ1vj+FW+h4c8exWR+2AjLU03
 XWEbwBbG9CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ3/KUgAKCRDBN2bmhouD
 18w/D/9j523hP6tsD4X4WpxZoWwq7ujCH3x9l7dPbgGmHHl+HyR+0usvRdMuj7f/q3ivtb1FC6N
 6tN9mdgETOhx7VB97ygMjvjJ1QFxhK4nmjOEmoe/Krsy3Zs5HOeWscofNGoTD5Zpi8zhR1t735y
 d/RLYaGNjybkPSXgeb1rgK2kygDY9TwMX/Ar3qJXk10HzJ27jmpc075iyX0kVywNbBX1hwivVc7
 Q2NvlUl+/Ph603mtdOK+CT6V3sgWaJbqAiUe/cO4UvM4kbvG9fTAt6XAKAVbGSL95yTMpIY5/H0
 eilgDltfq1/4fi8V/l1IfDz5LLZPyFXBJ45v/yu1xlViobbDzth8+kFSmBE6CIq8UNw714il5WJ
 L2hgMqP2+/YrXKvkQt/KjC3tqr7OtM7k+aDChiBqvk8Aa74O9rFRtkIYzmb1PXgLcn/Sn3x5pyW
 t3O7e45CyXFRNshgaqgq4tgOtQyDS1DV9am9enzibdw1GGc1rYWS4UvNaQWDL6rfyJdtIYIXXDr
 QKRcKklKuL2q+rrOZCG7UUYzqoY/0NoJ03aoJrmx00bbrLXtzMlqv+sHJWtKY/9ULc9UsHqSSDm
 ExSklXiwEDeHUUhVU+TvAw3M1wktdjJ36KSvMu2TdwaJybCjTRWMsx1Sz6d3P9oQzyrCFsqOSqA
 gLs4C6IxVhpCPyQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DSI PHY v7.0 for Qualcomm SM8750 SoC which is quite different from
previous (SM8650) generation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 7e764eac3ef31829e745673ea91d4135921d61e5..e356a65a97e901104a29ffe8e5ac04dbaaad6bd3 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -23,6 +23,7 @@ properties:
       - qcom,sm8450-dsi-phy-5nm
       - qcom,sm8550-dsi-phy-4nm
       - qcom,sm8650-dsi-phy-4nm
+      - qcom,sm8750-dsi-phy-3nm
 
   reg:
     items:

-- 
2.43.0


