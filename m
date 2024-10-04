Return-Path: <devicetree+bounces-107770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3218598FF51
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 11:06:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFF44282764
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 09:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954CF140E30;
	Fri,  4 Oct 2024 09:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SzRlZEJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52DF13B7B3
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 09:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728032808; cv=none; b=K4ebbJZLxNKQeO+kGfMTc/i9nFvORNtvyGc8FHHz8Xz2Ik/5KRTurJVYCIxgRep8gXS0Rk1TKmOfxkFBc6bY7YlhpjyX9cUoPlc5CHvj25fC2m89E8+4h3nyhdpIXmnzHKfRCsHOV0pHYAUDJjGiR5QWwc4S0DCPlaxHVysH7R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728032808; c=relaxed/simple;
	bh=YcnxH6pwVZlWuJx4JlhC4U68Nd6Chk51DuZD9AleuV4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kuiIao3/AzWGvJbnN6XewurmK1mH/AiiidPGAGU6uNsRUp7hU9X8KWYdqNjRWyDRAiEUc+Va7dnTcLM+egB2ekYaOpZfiTp1erdY4pBXZyNXZK3xfRWrws0TxSyCPII8YeNb1C5MwDwHKsgOAuymYP+Fg74dm2lJQfURa6yfw0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SzRlZEJu; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cb6f3a5bcso23951025e9.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 02:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728032805; x=1728637605; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pWXeQyRxHvPX0fhQbX5R25LT6MNkLrfMd1+Y6m5Df6I=;
        b=SzRlZEJuuNRB5IK+hvYQjT6kK31DeIx73e07FTPoUI7h+a/lWPMS6xvpnlRbYAxXre
         f2T7yhaSvrtTp9QuhkjCqJY2xKgHg+84txWn0sn0DSRMlMIFMdv/vS0wZ7Mywiv0ybRh
         dQLpgjZXxWdbG+mdzNfzib4+HCPYKAayprgnEYRGP+f5XBFWWkVDj9Ohnbf6vCLlhT74
         Z6ykmpJ91emTKkJdebSTh9k5wgjnYn00rwnBT/Sq1P890DiwbyEVzE74YS0DL76LLq7u
         rnyaljFJOMro6gmcau0g1omu1ReCEY7YRw4Z6ggpDmtD07eA8/bNO481tRzTUO8h+wPU
         svrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728032805; x=1728637605;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pWXeQyRxHvPX0fhQbX5R25LT6MNkLrfMd1+Y6m5Df6I=;
        b=pozYUCSlmO0uiDAL+M64SLsVefvqbeLORTWCnXMa3hLckdkNsXgrd3pvg1m9yceyQh
         u/2bKvLBBYsN2tq3va9mS4xeSyWA/fqxlyB+hLlTF/9uqsVXLu7ZZomH9Eh4UocZahcq
         G8+qkBVRwi5sgxQU5DB3ivICIW/5Bqke070/qZuvVkwTLair/4PGcHneVtuckOa5ZeXx
         myARg6wjcvtyI+dRPk2U8eV4kO5dEnQ0eRx3W3Do2xRf0KzKifnDsMFiXFKBoYwVFGgu
         XTaNuzgtIM4tSf1hxPMj22FtETudm8EdbEmjnzkMs8zm1X2dt1C+B6kps8tc4qgICNlt
         2Umw==
X-Forwarded-Encrypted: i=1; AJvYcCXdB7ubVpNu5GVllfeSR+oXr56G6g7TEA2HQ/bOtbvbnohDwp0F6lQO19adtK4C+0Y5VfE3p+wtTKIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyJEdjomCDwzqqr9GoOQ0yFMMFFHcewZKUUVE8uiASneFVt3p0l
	K7eeKCIHg+vmhO06qq/OjzTVwfELgxCnYMv8dYnDAApx7UWfq2mtdktRPykO/b0=
X-Google-Smtp-Source: AGHT+IGIFRhul/R6B8ZiDxLXa0zGSUWpMYsGl0icdU/9oUu0HqOT/5snNaObw85s33fzHKexS8gHEw==
X-Received: by 2002:adf:fe8a:0:b0:374:c8b7:63ec with SMTP id ffacd0b85a97d-37d0e73742fmr1815109f8f.21.1728032804886;
        Fri, 04 Oct 2024 02:06:44 -0700 (PDT)
Received: from [127.0.1.1] ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d081f7006sm2833945f8f.13.2024.10.04.02.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 02:06:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 04 Oct 2024 12:06:33 +0300
Subject: [PATCH v2] arm64: dts: qcom: x1e80100: Switch PCIe 6a to 4 lanes
 mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241004-x1e80100-dts-fixes-pcie6a-v2-1-3af9ff7a5a71@linaro.org>
X-B4-Tracking: v=1; b=H4sIABiw/2YC/32NwQ6CQAxEf4X0bM12EVFP/ofhsAsFmhiW7BKCI
 fvvVj7A27yZznSHxFE4waPYIfIqScKkYE8FtKObBkbplMEaeyFjStyIb0YVdkvCXjZOOLfCV4f
 +3hPVGneVB+3PkY9c669GeZS0hPg5Xq30c49VU5X0Z3UltEhVXbJvHevZ8y2Ti+Ec4gBNzvkLd
 9wGRsMAAAA=
X-Change-ID: 20241003-x1e80100-dts-fixes-pcie6a-b9f1171e8d5b
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2467; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=YcnxH6pwVZlWuJx4JlhC4U68Nd6Chk51DuZD9AleuV4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBm/7Ad7B1YQMjMCcdawWM4HbT/w5V4iq0mlagDf
 8brgzkj7v2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZv+wHQAKCRAbX0TJAJUV
 VsVxEACIVzceQx5NX2x/r/fIgjQ7uAlpbUlmhCJwHuxBS3CIpVRGlDFb5HyZN+4DUzK5jAkdn6N
 Jma9TNklFqREMaATMET3RWHG+VJulVx/oSrWDTuz4L798OVqhvKUT9Fx0dc1rRQ8UF505y3lIvY
 qSKxjhoqDzSFafb3h9iFyRT38luNxhFojmOw8opexWh5BeHTkH5snazFgTCX8DlNpjKNXnaiUJ6
 y7sfPI5e9zBKVZ8QZtbkVp+SEQ+sFf6j1d9IGqIcO8LWpf1ccqLScVrTURKGyak2p1w4vnIdQHd
 JjoISQAubJc3+70qk3R2iBRHK0TPtBpliSiK4WtMgT0VayNPJlhtRcxr6739DgAISaE7uytgYgd
 88FeG3hzG7ydlrDnt5M9lzlXoADr6u/ZbVWPBkgV8G9HUI7+1F3X5GyrWetxMBqh/S7pNYUfSPc
 E+95TlZM6TG4cdTUVkiwGp+NlfBcIHxeMOz81nQO+r/Y64/5cCT32N3n0XZjhzqAD/evL4L88zo
 ztEMArIJjYdFBIFCVfx0qDR2A+uaQaC0sgtwMDyelFsn/5ijcq9tJcjI3zi0L7mliXkXpfU/JW2
 xxqu3OAHuWVwC14QGgryKmFDd/klaIPMyPNkuWhxdDROjF4CRU0yvRkmK+3xau7jlw3d09kg2Bp
 ojv4K2gSAqvnblg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The PCIe 6a controller and PHY can be configured in 4-lanes mode or
2-lanes mode. For 4-lanes mode, it fetches the lanes provided by PCIe 6b.
For 2-lanes mode, PCIe 6a uses 2 lanes and then PCIe 6b uses the other 2
lanes. Configure it in 4-lane mode and then each board can configure it
depending on the design. Both the QCP and CRD boards, currently upstream,
use PCIe 6a for NVMe in 4-lane mode. Mark the controller as 4-lane as
well. This is the last change needed in order to support NVMe with Gen4
4-lanes on all existing X Elite boards.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Re-worded the commit message according to Johan's suggestions
- Dropped the clocks changes.
- Dropped the fixes tag as this relies on the Gen4 4-lanes stability
  patchset which has been only merged in 6.12, so backporting this patch
  would break NVMe support for all platforms.
- Link to v1: https://lore.kernel.org/r/20240531-x1e80100-dts-fixes-pcie6a-v1-2-1573ebcae1e8@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a36076e3c56b5b8815eb41ec55e2e1e5bd878201..4ec712cb7a26d8fe434631cf15949524fd22c7d9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2931,7 +2931,7 @@ pcie6a: pci@1bf8000 {
 			dma-coherent;
 
 			linux,pci-domain = <6>;
-			num-lanes = <2>;
+			num-lanes = <4>;
 
 			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 774 IRQ_TYPE_LEVEL_HIGH>,
@@ -2997,8 +2997,9 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 		};
 
 		pcie6a_phy: phy@1bfc000 {
-			compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy";
-			reg = <0 0x01bfc000 0 0x2000>;
+			compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy";
+			reg = <0 0x01bfc000 0 0x2000>,
+			      <0 0x01bfe000 0 0x2000>;
 
 			clocks = <&gcc GCC_PCIE_6A_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
@@ -3021,6 +3022,8 @@ pcie6a_phy: phy@1bfc000 {
 
 			power-domains = <&gcc GCC_PCIE_6_PHY_GDSC>;
 
+			qcom,4ln-config-sel = <&tcsr 0x1a000 0>;
+
 			#clock-cells = <0>;
 			clock-output-names = "pcie6a_pipe_clk";
 

---
base-commit: c02d24a5af66a9806922391493205a344749f2c4
change-id: 20241003-x1e80100-dts-fixes-pcie6a-b9f1171e8d5b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


