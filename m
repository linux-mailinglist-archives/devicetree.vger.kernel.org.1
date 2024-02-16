Return-Path: <devicetree+bounces-42534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62144857AF6
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 12:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8357B1C232DF
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0CC58AC6;
	Fri, 16 Feb 2024 11:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PGROFv7B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB29858212
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708081440; cv=none; b=qV8GS2ZTM9N0cRKj25HE2fWkFvzDU5HoyVGw/aiN0sGplidHfEghwTn08bzbLpTiYdVmmoYGPEy7beLD/vR5bsoUaFle+1o7Die4ahFSmdAeb255XmTcvSS0Py+fzKckjB1JrxWm0t/3UueV3Dz/4VMzRv/k6BOjJc2L6wj6TSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708081440; c=relaxed/simple;
	bh=6iOcnqwhICNEx1Y6vAHfd+4RDSuZsONu8Es38mDvAfI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z38IUeHcw2H51gYjj87rW99tGekAyh9WUB8WTG1eAYJexNHwfnzA+a+4cv4iXyCDb7Yoo5B4iNuxCvHCIsyjDf31QMCYZ+2ZQP7q+pmj0YzFj7td6VHvjwZl0Feh6qgADkkAr6TPRV15DbnkF4m+tGB9XhecRRK5g0ufAJgZXH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PGROFv7B; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41243d19ecaso3265755e9.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 03:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708081437; x=1708686237; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R8jQXdAWc83YqnRTlVrzU/De4ogxASBLVUqo6LYFo1E=;
        b=PGROFv7B3+9hX2yR/kn7V3V2d00OkJvGVNXBqj1H2UrOdf1iR2c3s1wy8NUnpIjYG6
         7GX2IEC6ISQOdgHIWewPbQboQFFndIN0hJuZikuEKWZP4J0ZF+1aGG3uKNiPNvOuelMz
         CpAEWYq9K+GVx+3TkMCfn4/ooyMFOjYm+OKJOWs07hTVpnbdg2yP6ZpepYMEjiP/UWq4
         Xf/ZRpPsuQPdb4Ok9uOf4y7jOnKZ8Hv7XgPnz9s5UjGzhN02lAV1fPSzx+bxa67PhlwU
         Cw0sAuB51qXwb5nzGiqxDi+Y5/SmmMr9JppGhhFVo1Z/OMFVFU+IaI1bYXIkXyaIxhIB
         A6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708081437; x=1708686237;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R8jQXdAWc83YqnRTlVrzU/De4ogxASBLVUqo6LYFo1E=;
        b=LI33vaLxXmy/nPJ603xf0LPMtzPhad56xf2hMHv3uyKxdTLVhzmoHboEPvQG83C5QP
         XbWQqTcj5W1poswOceKAIiUqEEQYv5sEGD0tzJlh+QghDPfWgmFkxlAFKNwoB9Ylo3D/
         SeieMQCsYyPhWYqLFQa6EwvwxqA91n+kF8B/bfom556c2EpdzmX/H8mzR9mr7x7/x8fr
         k95qdLigkFuJab1DnddWIC475Lumjfo9OS2jKkhjDIKR5CBI6S+5RNdnR73oAXU5jbnV
         3+VD9aeFUgBC5yCpe/sxNt4qVGc3UKny50WiLmp3uGuvm66tgh/ynVpQf1CKMSsD7nTC
         ONVQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8iUuti7MWrzcSoyRgd4axlscA+XwTDb3ZXa2IApafSucZdfPSjvEHaplcAbRWQ0EYyWctEEPN57ZLnX1Lt2B1tSeIpNPt66sPlA==
X-Gm-Message-State: AOJu0YxJ+My2njntM9AeHEeR9GTEB/BD460tPEHeGFdyxlJS0g6es7u/
	cMRHUfatWX38+zX314O4E7A3Uus/fdd2G7Vq5TSg4fFDsQCgV4ttYDv+g8m0bBs=
X-Google-Smtp-Source: AGHT+IFzz9cIIZTolTBZ+3VO8UaeUFnQ9Pv0L3AFv1B/Cdpl3JFGoVyw6+dpFPhP+R/v9EVwpKUaqw==
X-Received: by 2002:a05:600c:4588:b0:411:e0f0:7a71 with SMTP id r8-20020a05600c458800b00411e0f07a71mr3644178wmo.33.1708081437101;
        Fri, 16 Feb 2024 03:03:57 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r2-20020a05600c35c200b004123b049f86sm1993174wmq.37.2024.02.16.03.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 03:03:56 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 16 Feb 2024 12:03:50 +0100
Subject: [PATCH v3 3/7] dt-bindings: arm-smmu: Document SM8650 GPU SMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-topic-sm8650-gpu-v3-3-eb1f4b86d8d3@linaro.org>
References: <20240216-topic-sm8650-gpu-v3-0-eb1f4b86d8d3@linaro.org>
In-Reply-To: <20240216-topic-sm8650-gpu-v3-0-eb1f4b86d8d3@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1438;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6iOcnqwhICNEx1Y6vAHfd+4RDSuZsONu8Es38mDvAfI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlz0EWWkZTzHjh7vkQKJ9hbFCgC/WFN7MzqEHvZaxY
 8sk4gjyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZc9BFgAKCRB33NvayMhJ0RvZEA
 Crl2phZ1jwOzdI4NighnxwfVUB8UXbrQi2GpTJhQkO5V+FITUCJ7L2gAkxXOUPc+U3nyAuKEcjoltT
 J42WrBFVTMuOApzNr/jXoJE4o8uYVPLbeFsz29N8byY6FSUSQ5bCmyAY8d7KtE5YiHBTyIhAzy28XQ
 C/NCVlTbQFRELxV5xFOyCzFdR3KDEoUvx1CT3J1ZnUVYAaMzAT67hju0duvjxzZ41IHVS3nR6QD7bQ
 JJRe3hOYw1yIKfzbV/R7nJBEQCa4JGiBh+CMlapH9gpELgXgpI3vsS5ND1xxS++m1cnIA5enyKpha3
 ESG8nJ252LOKDPSk2FyhoOQFKNaPfbdnk2btPGRdQHM0dtYuSZcJU+cajnDwavOFHJLhWLosoi7Gly
 ABqQ/Sf4KX7dFVCLGAOeoI2kC5AKjTMyN2vAObTttURE8LmYrg66hII1WQGAIQbRmtsZFvVs+m0EX5
 3hbl11a6AEJ++2Q4+XIbpbiuSpqm6uOqLll92/+Be7DWhCfpq+V4mEeRCbRnLK08GSGvHhgohmf/sZ
 hcKBZ5qWJjc/SU/Bo3ishf62Vi3fDL6DOkFFjOcgfjW4Uvrc3llb31nEdfwdEYRBSfWizuMZ/4afOz
 5xz5YmhER81YC4D06c9p+f4wX2tDWXp0WY7T3lUiu3qIbOGSUzRN9pV55bOQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the GPU SMMU found on the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 38c48131e6e7..740631782540 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -93,6 +93,7 @@ properties:
               - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
               - qcom,sm8550-smmu-500
+              - qcom,sm8650-smmu-500
           - const: qcom,adreno-smmu
           - const: qcom,smmu-500
           - const: arm,mmu-500
@@ -514,7 +515,9 @@ allOf:
       properties:
         compatible:
           items:
-            - const: qcom,sm8550-smmu-500
+            - enum:
+                - qcom,sm8550-smmu-500
+                - qcom,sm8650-smmu-500
             - const: qcom,adreno-smmu
             - const: qcom,smmu-500
             - const: arm,mmu-500
@@ -553,7 +556,6 @@ allOf:
               - qcom,sdx65-smmu-500
               - qcom,sm6350-smmu-500
               - qcom,sm6375-smmu-500
-              - qcom,sm8650-smmu-500
               - qcom,x1e80100-smmu-500
     then:
       properties:

-- 
2.34.1


