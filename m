Return-Path: <devicetree+bounces-68593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E54F48CCDA0
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 228E11C2101D
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 08:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F1413D2B6;
	Thu, 23 May 2024 07:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ea8UkXrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B92013D284
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 07:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451189; cv=none; b=XR2m1PFRZDk0nzerZUJMKUh/qKt5zYwAM+JFV6JxaaPULfBVeDp1Udc8wRWdV4FO9T7ZElrVc7lzY2e+hsEOiy5fHSha5kZcqcnhhn4Pa3JJlEs6nXoF3dRMfbR4Zmw/BpMZA27tP1Z+vz9KySFnzG4VFHPe3u/qU4HuaWGjPFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451189; c=relaxed/simple;
	bh=ilS9/urat3r7x1lnhAo5NEEctqUaqIeh25qT8NExnxU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SZkDQXFKQtzyLChO/39U6MWHvMbUfYIRumtCGLdj9gf0k9su3+xZTUYQcG41bNyYNidcT3sdX/wknU7OmE4JdqUU+XO4LngL9pHyh5JETT6pXKKyGtE9pEmcOjc0V7m1QWyS017zdBUKyMR2eIl64tN8qoZY9lt7tBuPgWYcjbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ea8UkXrI; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59c448b44aso1093537266b.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 00:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716451186; x=1717055986; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1l8AveQIqcO0cLiCCKIDbAyj5545roxssowTDaQ8/wY=;
        b=ea8UkXrIGDw+6Z4rBxiIh5p2p0gPSNkdGE1lY63KJhueR+5FmEnxViPozz+NNKwcjX
         X+ijDi9VSPdvBdbr8he6iKO35kE/Dk+8LNi+eZsaQEqDW57FFMjGXygjQJWvIr7WBMUG
         T7OmLUCs/ANmsje2vIWnjKv6Y3Em8EeR++I/KNgbbBSoZ3mKy88LUvLQSkvwiHu9Dsmq
         yCok/6mecfiMW4a2QgzB0nuAc97QFscWKKNmPogycx/R0+wkkeFqYoOouEv6p1Yme4bt
         0N9WgfxMY4f1aVGqY+NFCLBDlOsi33sgE8uRuE0TL6995ZwKW7y1emrR9soyfFapNO/t
         wYEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451186; x=1717055986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1l8AveQIqcO0cLiCCKIDbAyj5545roxssowTDaQ8/wY=;
        b=t0++iceFnj1bUpfGCSjubWk/xuyND9xuZnZIuCXn7NQEXuTnGaGHfu0EkqTUTJLD80
         csWNkpDyW5DSayYfq8ZavM76jD+dGQtmrVkuI1XKHKjbgg9CuqNl8zYqyXJ/1Hs8cgx+
         DndtBGefLrSsK9pX5aC5QEkPqIeP9fM+U8CHjy2asM2EEmjciW91XDx5T1z46eN5WWeN
         FKrHpFuSp1ZVJ4+gCBoo+rXizyACKb3VA3Yt7rodkjU4zd6PfVbbRNCtwKjpQZ2EFq8O
         1i0L3siEIJmjBrNmcb6oNXtvWppApczL1SCRe+6k/Cd4UNrI+9IZDKFaC58ekUZ+pAs2
         cgAg==
X-Forwarded-Encrypted: i=1; AJvYcCVP6QSteNAyDdskGPW6kyFpG/kA+qy6zw7qaD/JsdWaszEkb9BSPsVP4fi+s2fc8SC1EnLbF+x71Kp2l09LnX4x8V/DZ8taFgOSiA==
X-Gm-Message-State: AOJu0Yynlbv8JZGb0WSPqivg/csSj9fi6O9g+OWsgkwBcoQokhX4Ks9O
	6ovs6PZZvzxxC1MPs/y4jGq+5lw9ns7yClEYXOnvohUxwsTVF0pU7AmD84JhCYU=
X-Google-Smtp-Source: AGHT+IHDUDGPoRmhzc1y+HdVOcNh03PVPRDhzhnYtKagrooXx9KHPlgrjlbWS9Y1S4MMVW4mAicMaw==
X-Received: by 2002:a17:906:8d3:b0:a59:c9ce:338a with SMTP id a640c23a62f3a-a6228055763mr265081166b.2.1716451185963;
        Thu, 23 May 2024 00:59:45 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:e0a:982:cbb0:825d:600a:c16:a973])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5ec2a8f320sm719100066b.170.2024.05.23.00.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:59:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 23 May 2024 09:59:34 +0200
Subject: [PATCH 2/3] dt-bindings: iommu: qcom,iommu: Add MSM8953 GPU IOMMU
 to SMMUv2 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240523-topic-sdm450-upstream-tbx605f-v1-2-e52b89133226@linaro.org>
References: <20240523-topic-sdm450-upstream-tbx605f-v1-0-e52b89133226@linaro.org>
In-Reply-To: <20240523-topic-sdm450-upstream-tbx605f-v1-0-e52b89133226@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, iommu@lists.linux.dev, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=866;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ilS9/urat3r7x1lnhAo5NEEctqUaqIeh25qT8NExnxU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmTvdrgwWMsuwD5nqBiyBc1hr/qz7nPDXlwLE6C
 b0zXVm0OcyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZk73awAKCRB33NvayMhJ
 0f8aD/9exaigPI5V82THskUmRLc8QOw3F+N765LIxtZ7qjjK4d1h4nmbmOpW+gmbJ62G2XJzr1L
 RAgHHF1HVrR9QdLJc0n11LCmxam08hb6ALcGrG/z9W75bemeVewyTDptxjFplQ00G9yPUbhOJBC
 ecDt5zHVp2J0gZQZHdrLpk94REOlgNKGAxmFye7MY89ZkE0rlQDByKpMM+8LhrOReyr8WzIxpWX
 33LfDaQz0pUYAdJfcJ8B+A5M3jJbX+XMcS96GRdgNYVPbMZoRn6c7gycqdoFZmRp4NfuAcy8XL7
 ImoZ9QIneF1QYkCrME2j+uSbPKFrcgzApXu1EqEnN7vA0C4frcowKJ8tS9vvzBTEZpUfm7S69xW
 Vxcyoyor9R1FAkx0Xm8pz6rUEx4nyqE7zVbAarrkJD6JrKFj0TeCAAN4t6kS9vAxuTKBenQFqot
 wIxFxfvfiOlBcFO7/+RdkadD7mn0wDm288zZbAMjmcVDDhTwM0kgiMmEexwtDwSERX/6Gcr9vWg
 D4M9j3yMTuDGHZrRko9C708x6e0OagpK96oNWtRvy4gC9p8OpNb6aZ6DOvHEGvBqLurCSJOVDyC
 LQgjS1awT5iC+fnt3N5kKv20bXnop0mDqz46fIrdrrd6sMBPZslKiXrG5olSpYeI9dzHj6V+SMv
 QBKSazFEPds+KLg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add MSM8953 compatible string with "qcom,msm-iommu-v2" as fallback
for the MSM8953 GPU IOMMU which is compatible with Qualcomm's secure
fw "SMMU v2" implementation.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/iommu/qcom,iommu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/qcom,iommu.yaml b/Documentation/devicetree/bindings/iommu/qcom,iommu.yaml
index a74eb899c381..571e5746d177 100644
--- a/Documentation/devicetree/bindings/iommu/qcom,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/qcom,iommu.yaml
@@ -25,6 +25,7 @@ properties:
           - const: qcom,msm-iommu-v1
       - items:
           - enum:
+              - qcom,msm8953-iommu
               - qcom,msm8976-iommu
           - const: qcom,msm-iommu-v2
 

-- 
2.34.1


