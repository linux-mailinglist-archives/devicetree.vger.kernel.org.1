Return-Path: <devicetree+bounces-232816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C5DC1C117
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A0B075826F7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B23634888F;
	Wed, 29 Oct 2025 15:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sYgTanQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0552E346A19
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752472; cv=none; b=ekMjAgM7jmKebW4hnrMuYL92rmJqW65RuRHuFOUK9BhamNMv5Wdm7QtPTgT2hbN9TQsW3b69Jd/kXmrmFWvMOvDwaBA2BRRjaScX/QKCjO1w5/5O2tnWmn/+1tmsx1iAlhSHb23jHa044VHRjanFN+4jvEm7zN7xr7ihzN+VDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752472; c=relaxed/simple;
	bh=zsAEyeg1jfIl+cCh/2Hdx2ueebnP7hIfBxaXs2Ojz8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NyUOblbYwuvn8wUlPUxvHE8hNf1lEm+zElBFlXTgemGrIbU6AGi7zDO1miqJIhaJzci/zYPGnaofHtDo8wgD8w01Mljodz6QA3IPqoHqym9UhcC1U6XRLWFccroTy8uQCspNCJfPU6xmMcho/M6MD3aMfllaS3h3a5X+OmspiJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sYgTanQb; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4769bb77eb9so3107395e9.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761752467; x=1762357267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gdb0lDefddMt0D6PbK/m2suv0ruD4zoj8//MvUeYLmY=;
        b=sYgTanQb0O9W05ljH+kp63iPy9w9PTZcBTP4uo+QRsr5llLFeW17xnxyEEKjfYNUp2
         kFiHJg7cbbrNT8C11NYvtAem9IVrgzek1C9/aUf6EjLwE5F30lGdfDCTh21hv4s4Veuu
         VYO+GjUiSsNrWmCEYytFowWx3ZX0C26yd7+pBHN1OXehmXXY11ELTW64V8oUKXijuj3h
         AeRxa36uAwjHB8YDHkL17mLcY4ruOyhUizLIm+apzDV+Sev3cZ72sF6mz90rsuVSocwx
         MSdBgKuSOinM94cZGncoywVQcFEwvoyMK9lahLW3nkY/llxblu/iHZC7haXpYP10XrbM
         9asA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761752467; x=1762357267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdb0lDefddMt0D6PbK/m2suv0ruD4zoj8//MvUeYLmY=;
        b=QAftx4xkoNpVWIwqT+zHGQjlCJDleFh6wdlR/xb+n+YbILGOo8zGItfQrEqGm1IIDy
         a8vmmBQEvAYm5Vfyr6hZCJSeNH0aMZksyKuMMQl8aeFS4w35ArjMtato2mMThW6JSyHH
         clr6gzVrNOPbAx2nO66s3GCwu1tOZVLUe4Ey6H9Vr2qy8YsD7PCTnT6nEzRkocdfUSSu
         sErFRkaKaGLCfXPsuOUDAq+wp0xp71A5HUWTno0Q7UdoyDiebtWVhzh9UMCefzSw/I83
         iF20dcGKt7zuZ2nKq5aaCqTfkSrHSNXVeHoszegmeD/HUD0ZVyhyIKFeR2mbiC5Hyujg
         +8IA==
X-Forwarded-Encrypted: i=1; AJvYcCU53AlrCswHRHsvck1gltHYQ36UOi9BEfephupSmvtUuwGSk7T6EE2UoDmXJ7sHigAn6kHZxCcJrI+S@vger.kernel.org
X-Gm-Message-State: AOJu0YxyZiojAzqPm10/7Pf18Zi079ksG1kdRS0tXNoLgxu5SKFgiN8q
	x/DKBEPSXxYMtvd5F/S/U/5kLofJVgo+l1DPl3hNjPhpDncgmjwMEoD+EG9CXOtCzgA=
X-Gm-Gg: ASbGncsa8pTjBrIWzNIm5YC8K1DXYuBFUKElAM0yzMyMha1PkTEdughwy91lwEagCFB
	a53SbA1OiQi1yKtdqRttZl2RInSACQryvpqS5saRAT9GCHhoaNGOcdLINFX5v881FK0QBBNyJ2+
	VFrZfjxSEitSbPLmj4Skv9A8ZsS0wh2RM78aiAm4YlZJAw8PHE1cpM2u92lA7sKzsVUwSLKuohh
	TjJTnIOLlGBnMwsVKU/yYzNSb6G3ALi2tvoXniog0poTDOIIew1IbEMCzTmp4TbwqOZtJeEtvde
	yGDu67UEdQcWxdcBebcFZzBF5fyzaZyxd4acUdMWvMyLj3yesuQLWD3K7BDxPREWZpkgxY8g+A9
	qwhNylQOgp2dRZlHJQHlskVkd9jIXBayyxinZ6uhjW8JiN/0WBQJsSEabVs+BqvOBiXJMapMkbt
	AcS1lTn7xtN3lvt0zJh/tCQBp11T8=
X-Google-Smtp-Source: AGHT+IE8hNgr9g8e2Zz0yvPQFvK8mKgX9oJBviH/t6Vo3EOFrgHFwxbAGI5abfNG6aNB+j6GsgJgNA==
X-Received: by 2002:a05:600c:350a:b0:471:1387:377e with SMTP id 5b1f17b1804b1-4771e1e6562mr18386975e9.6.1761752466984;
        Wed, 29 Oct 2025 08:41:06 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm27006875f8f.41.2025.10.29.08.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:41:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 16:40:44 +0100
Subject: [PATCH 7/9] dt-bindings: PCI: qcom,pcie-sm8450: Add missing
 required power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-7-da7ac2c477f4@linaro.org>
References: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-0-da7ac2c477f4@linaro.org>
In-Reply-To: <20251029-dt-bindings-pci-qcom-fixes-power-domains-v1-0-da7ac2c477f4@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1043;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=zsAEyeg1jfIl+cCh/2Hdx2ueebnP7hIfBxaXs2Ojz8A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAjWEW+5vYbpfp62UH0yalwogiktQKoiAHGCvH
 Xo2NZoy2E2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQI1hAAKCRDBN2bmhouD
 12tDD/4l8m/Ma4c4hJyxOkubd2iAXysfbP7ZYBqxa12otAQnR6OYqMP6wketKWzaIzSnbjzI/6X
 fwi4G2WilW0GpfX46aHnp+xub7mN+yori+DEGnbwE+M/3UH+wMTuDrHzXOcF9YXRS5qVrF9vw72
 1ue5JLxnJjPvp3mTlGR4bdrivkuVhhuVUtFCD+pZguoDS1/XZ0NjaRjBto1twK1GtvYEnDc+DK+
 uIzrsK/MlDyt69t+SDyF1z9lzOxpY3/yy9b2CvrAcnCoVcJV8NzAdBYSD9EDntajru799aWiufM
 FhxIR998gm1bdDZ4dedeUM1Y2z1lVk9QZG765mZNa1An9mGI7EUVzn1lOr159Xul/VNs9L/RkuH
 fPAWfWtRfRKd6H/6eUETB0VYEScpV7YMY6pltJFg/RdcI4Whns8yIX0OIncjOE9H7agF9WsfxBa
 c2I94hGuA2fZBSHTLE3417OOQzQe3sKMGKXJ9txOxzt9uaqyb4sF5RiavCKVyTfE1wX2ohL0SkY
 V9Q93aV1Wcx9M6fJIvn7w4fn++rvwQO0dTG4DsNQoE2aD6ZCQAxg07wZ+Mdf0QkoOdkd7NXc+JZ
 r7q39Ie7i4vS6czsVt41uv2znoJ7az4Qd9be0xIVPTR/EvJ4bUzpgwUz2DOrJehckLIMngw99r/
 fOBTkYuCg8HZHkA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit 88c9b3af4e31 ("dt-bindings: PCI: qcom,pcie-sm8450: Move SM8450 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: 88c9b3af4e31 ("dt-bindings: PCI: qcom,pcie-sm8450: Move SM8450 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
index 6e0a6d8f0ed0..20c764717800 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8450.yaml
@@ -77,6 +77,9 @@ properties:
     items:
       - const: pci
 
+required:
+  - power-domains
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


