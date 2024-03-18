Return-Path: <devicetree+bounces-51119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9B787E402
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 08:19:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 990D92814C0
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 07:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03CA24B5B;
	Mon, 18 Mar 2024 07:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oCXTHpq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2454924A12
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 07:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710746358; cv=none; b=HaD/QhXFwPoXrKwuExZF/8H+fgPiVeRW/nyuTUxXSBtZNUFH2rLNLO+yD6VM98FdVcxL1TUyXuVzuMDI46M8HafaLfe7bSyLsVIxmhARQpcnGqTWnVq0aIOU/WxEpzRf15YRO3cVTsPG4T0n8F5o5BqK2eBXOjjzQU3aQ8fKQWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710746358; c=relaxed/simple;
	bh=T8yctEwOPXumvWXkHLXlcJBaV/u14z5lA6ODl0lFm9E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jj20YSHLfkR9GINS5Htb3HkYmH4HuVrq1yl/hKvgtbm3SHnEx8O6tyJz1It4N7csNE21ZOgzLp1JmN61fS28ljJm2AlcJRHNWK5A+ZHY7rBCz70rnW7FgqHdTJyKzGKU2tf9tbczCDlbIhcfUx4zjROuQjPEyj7ZTr3MgIuwLhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oCXTHpq+; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-22963f0e12cso127572fac.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 00:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710746356; x=1711351156; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kH/SjGlGieE/UE0Ur3+4AtAfyoXMqizrw8NzFP+1cro=;
        b=oCXTHpq+tFaBzF425NcV+fNK/l272zvU3UNU8MTTqPfEjQf9KvQzdSg8uaijVfYlqF
         tEqLdqqcHwtOh8Ft8+JPGibpBE0gOYrKWN6jjyZM8KJSCGus2FwUldvIU8wQ4kDT4cn2
         jRgVWDw7JaSRDncW7rdPYfg22MZfU7OYYOipSEvyke0RIMj3ajCXvZQQSQ/MFvIuO4hW
         +DXDMiftZGP6jlXbYnMlo3GJPtoPeCOkrFSDfftgnUUIGITSHNUqrt+Yh3xzEcdM4ZNc
         kWR5gROyoAnnsnj784ZV/BkgB3PxHj3Ergelkz0F21EncX2rEe00M3sChfMcvmst7l8u
         9ZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710746356; x=1711351156;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kH/SjGlGieE/UE0Ur3+4AtAfyoXMqizrw8NzFP+1cro=;
        b=bZMGTEY7XXKIv6ALsT1tAkpOVcrQ13CF47YlmIjLgTHxCQ/HblFj7zJDy2P06XN0Yl
         IkroixAasjLaLFH0i504mnQaHGfMdNNol5AQs1tJuWx1HeKrTps6NKP7fS6+a98TRM2E
         esJXtvBJjxjZ62w0fVS+xgAMLWIHzRz6KxLE2BPFg53LZO5KzqymM9O5vDAt0BeOt/rb
         z4a9S0quNtPcl31PsAKbtibsrKiU4mqAip1kmZBC0SDSDhLaNypMXKuRQU/YRFLvM/3O
         eHUB7Id6peMr95/WQsEOMZLzEXLL6634VfDODu4Bb0XZabKfLmnilOcVDf8E5p9FAXRV
         9Xmg==
X-Forwarded-Encrypted: i=1; AJvYcCViQJFvvuKLuK3VGR1Gtpes5aE4bR6KwA2YP6PU35F6wYLMwvZuuyUbIru/om5+LSQGkoDgmRYw+MX78e03HS9VUAEZ7tJpKhxX5Q==
X-Gm-Message-State: AOJu0Yyf1Fqbg9ogeNJDiRfWzgg4J0O21KMpd5bB4s1JD9Ztm8veQvx3
	Uy8G5WLiRrxfLayQ77rzK/+qgUZfSugGdwh9RYYB9wBS0KCxI5U1JxdbEOVITA==
X-Google-Smtp-Source: AGHT+IHxIQYzpr8+IRSVJKRQ1OUJWPiVuU+PBuEqfPt1lpHXTTs1DYOuDa4MdLLc0F7nvNoFemUNmg==
X-Received: by 2002:a05:6871:64e:b0:221:6840:d131 with SMTP id x14-20020a056871064e00b002216840d131mr12314329oan.58.1710746356117;
        Mon, 18 Mar 2024 00:19:16 -0700 (PDT)
Received: from [127.0.1.1] ([103.246.195.160])
        by smtp.gmail.com with ESMTPSA id x16-20020aa784d0000000b006e66c9bb00dsm7387515pfn.179.2024.03.18.00.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 00:19:15 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Mon, 18 Mar 2024 12:49:04 +0530
Subject: [PATCH 2/3] arm64: dts: qcom: sm8550: Fix the msi-map entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-pci-bdf-sid-fix-v1-2-acca6c5d9cf1@linaro.org>
References: <20240318-pci-bdf-sid-fix-v1-0-acca6c5d9cf1@linaro.org>
In-Reply-To: <20240318-pci-bdf-sid-fix-v1-0-acca6c5d9cf1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1920;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=T8yctEwOPXumvWXkHLXlcJBaV/u14z5lA6ODl0lFm9E=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl9+rpAPsEYVnQhIgS4XnxvfwLqtT1wLbJRKpe2
 7uJrOvc7IeJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZffq6QAKCRBVnxHm/pHO
 9d1TB/9+1iI7pQ3wD5B9FCFbbI1bPHp7Hgji13iYVbWt1Enxa7RJY1mGNo5a6waNiXyGNH77GPZ
 trh92uH6U8Ogdsa/gen7bSlpQu1895kCKDuXZ9VBWeJeiVGsa/84Y8xT62HuWk7Tf3bC+temrF7
 6URzlYlbT/Aq3X34zsWumRfOX9kbM/IooL50T9gaAH8fgEUrwuAjAybVkgk9Nhq7CpbVQxa7neY
 lFxgBjW/BPd3+NknijLFn9cu6FZytJ1C9Xb30uo0iaXoAfxGNEYjPaX4uLeSPExjNvV3xv1wkQL
 e7r/tpZLFX8tNfZFbWKhhVJm4UNSUrqJJhbxNMOjxpIfQoB7
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

While adding the GIC ITS MSI support, it was found that the msi-map entries
needed to be swapped to receive MSIs from the endpoint.

But later it was identified that the swapping was needed due to a bug in
the Qualcomm PCIe controller driver. And since the bug is now fixed with
commit bf79e33cdd89 ("PCI: qcom: Enable BDF to SID translation properly"),
let's fix the msi-map entries also to reflect the actual mapping in the
hardware.

Fixes: 114990ce3edf ("arm64: dts: qcom: sm8550: Use GIC-ITS for PCIe0 and PCIe1")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 3904348075f6..3348bc06db48 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1755,9 +1755,8 @@ pcie0: pcie@1c00000 {
 					<&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_0 0>;
 			interconnect-names = "pcie-mem", "cpu-pcie";
 
-			/* Entries are reversed due to the unusual ITS DeviceID encoding */
-			msi-map = <0x0 &gic_its 0x1401 0x1>,
-				  <0x100 &gic_its 0x1400 0x1>;
+			msi-map = <0x0 &gic_its 0x1400 0x1>,
+				  <0x100 &gic_its 0x1401 0x1>;
 			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
 				    <0x100 &apps_smmu 0x1401 0x1>;
 
@@ -1867,9 +1866,8 @@ pcie1: pcie@1c08000 {
 					<&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_1 0>;
 			interconnect-names = "pcie-mem", "cpu-pcie";
 
-			/* Entries are reversed due to the unusual ITS DeviceID encoding */
-			msi-map = <0x0 &gic_its 0x1481 0x1>,
-				  <0x100 &gic_its 0x1480 0x1>;
+			msi-map = <0x0 &gic_its 0x1480 0x1>,
+				  <0x100 &gic_its 0x1481 0x1>;
 			iommu-map = <0x0   &apps_smmu 0x1480 0x1>,
 				    <0x100 &apps_smmu 0x1481 0x1>;
 

-- 
2.25.1


