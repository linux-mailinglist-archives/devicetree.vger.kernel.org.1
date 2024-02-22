Return-Path: <devicetree+bounces-44830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B006885FB01
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 15:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BE8D1F2230E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 14:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3106814A4E7;
	Thu, 22 Feb 2024 14:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fI+Oo70D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C00D14900B
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 14:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708611601; cv=none; b=gLk0eWnHwZ1UT4bDFrC82aaA6WZB7FZAlJ5FrWN0KNPrbenu5lIHb5BYv37wu0nFUOpVa6yvyKl8ahZmP1d5Lv0y3D5Nx+fC43KZ58a4SeK8ZSlSAifWpeaEGu4X+Pz70sVw4ptcDaU+hfdJiwMDFJJVFL2WK//1T/XIu+bsy/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708611601; c=relaxed/simple;
	bh=sYm4UC59pFYo9TF1jdp93oOV6v1Lqp4RwJmDvWwLvFY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sWTbJDclAnVVoy48OAjjeSBVW+Gfc7xtD8ARjnTNNKB7Ef0QXEHmUyK3EgXK3AKaMgzXzscCbJPKIz5l3yXlLDQEGqaJEtsu4HyNtFv7Eyggc3FZr4iczBxyIqKFRddsgfVqBcc533qYGgW9o0kQCfceB/uOHLXAkknrHn8GUMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fI+Oo70D; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3e8c1e4aa7so233244366b.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 06:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708611584; x=1709216384; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RcPhEN5B+MkzblfBdXZtUZFZ+b4Uq+YeLmjHGeuzy7Q=;
        b=fI+Oo70DP1CMSvm2D1oou2nWAIbyuPdJHO8EQ9vhaCOSS4EC7W1FRMzpXCXaBFdysA
         ktfCvuc83YWD2NDc/qeWBYSeoIuukg2dQH3Vkqs0GhbA+vDkXDffJWC5uDrfEUgodx1p
         plxrr2f7gWe3Y+fp2X2bHrLIPH9ErmxIs9l3WRsPu7KMEJE3gXksF5znOSIzFeIpUTY1
         ZxAmjcFenn1rRV6H7XLGwwXWoAHv/pw0eRwqWN6gTeEBpYOyquSpdhLYXpykZfaYImvb
         VhUaPnuwgKDvhW9CO5m4xz+h9T2+vHQMrJxIgHeNO08w4dePcmZ1o5AE/l6YNZ2CS7cQ
         eZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708611584; x=1709216384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcPhEN5B+MkzblfBdXZtUZFZ+b4Uq+YeLmjHGeuzy7Q=;
        b=bNtZJUdzgaIj9Zit3EP6q3LiSXWoA5bV6isM21ow0E+n9UOL3JK76242nAjxUFCgKg
         qqbAHQuYCoJPKipmTE+x6eTbO1FMs9CT9E+BP30ixomtJU/8TBT1cgQEBcTwsEZuJBpU
         1rNVz+KhYsopqJEL+2dDcdKqWl3G/kdOvPArBoLkTI+NEy0HTmDUL4Ki2vV89dCKsOmm
         AmYPuFwVNKCboSt8W8QLxwwOkXWmkUXzLpMrcqXO9w7umXgKbC3em6rzZO089BLbalgH
         xDPwJl2YUg98ZqWI4woGX1mR6Bh/M11DgklgUoAGa/+lO0Q+n+LLK5qZYCPMXe1P0x2+
         3hCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFIbn1VG19oH5D6StAtATssOPk1yOXlhnQ13YpWTs3CnlvsxVezbRw/oO/WFUVT2ZT1n/+P89dP3VNlA0f070lUOxe8l55iC1syw==
X-Gm-Message-State: AOJu0Yxb7lyrIwezp2j/Jq9d4kOtsVcPp66tQAkS7lscBmfKLTvV5tZU
	PCFBhx2zuI9fJx/P+o1d+AFJMzIdKrQwuMc7dketfjCFH7Hojz89TzqfbPa9ab0=
X-Google-Smtp-Source: AGHT+IEvKpVcS8T/fuVD4sb/x2XQkV4EKLGn2d5ooUGx0oKGT//PXJ/YcB6lH+FCbi/nrPP892kZfg==
X-Received: by 2002:a17:906:138d:b0:a3f:1530:ab16 with SMTP id f13-20020a170906138d00b00a3f1530ab16mr4738063ejc.74.1708611583979;
        Thu, 22 Feb 2024 06:19:43 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id lj7-20020a170907188700b00a3daf530fd8sm5992588ejc.210.2024.02.22.06.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 06:19:43 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 22 Feb 2024 16:19:22 +0200
Subject: [PATCH v3 4/4] arm64: dts: qcom: x1e80100-qcp: Add repeater nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240222-x1e80100-dts-smb2360-v3-4-85a691d4f68a@linaro.org>
References: <20240222-x1e80100-dts-smb2360-v3-0-85a691d4f68a@linaro.org>
In-Reply-To: <20240222-x1e80100-dts-smb2360-v3-0-85a691d4f68a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1855; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=sYm4UC59pFYo9TF1jdp93oOV6v1Lqp4RwJmDvWwLvFY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl11f5BpiniMpJWtbbmEUe5uzO3PTVc9S/DQ/Nk
 zdeapc72SOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZddX+QAKCRAbX0TJAJUV
 VnVeD/4sqGocK8wd+bpM6ANoUcZY80lWfMK0B/i+zeCOwT7eX1mSG+oodwW3WMpt+XoQbwPStKl
 vJBcqtDbsji3kn6jGV0eoseAzPPaLXVQSpSGTwyVff7yovJhCBV0TzFNAWQkZfhcr7NBFGorIA/
 8TujCxbfao9jnB+KyaxtleI4JAKlArMRTAti1PX+ZRv7F8v+hz8OuAi0dfsn1YrYzM5aW5Btwbv
 Z8XocEFKQl+HrvDwj0oibM/qUuqRPzkqEhMEBVvZ0MO4Ga+gCXKTpJWHDjV6Fi1eHXWtKuNTg9V
 YT27aWuq5u/iV8Zik8/xLR4+YIsTAS1CpnkaxFRUaoMhsz+PZH9y8adfATUiJfwEiEluODQi99g
 eLWks5MZswgDi2+WlK9FcbHz9LMwQGv9dKawIrlQIoUM96w25Dz4JI29WKK9zmSSBnDfW8kxLlU
 evmFs1nA/F8zl1ZvNwCkk1Iw4PlQCFguA0ThyMf604uVWBj5Z6UFwJeY20L53DfNJ05YM8MxKjd
 sreB4z3Qk0SQ0O0AglsvNfUwg7tMghaJ4fGjONuj/VhW+zJe7qQlG+F1XomcFaK8HjxI2U6o7Jg
 VFnh666YafKBUaXQOxja6p/Ml4HkS/QFxGp4TOyV1dVXigfEezupsPDIL9CuU1TWcee2IYQ8jUX
 DwEAihgTi8DF5vg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Include the PMIC dedicated file and add regulators to each one of
those 3 eUSB2 repeaters. Tie up the repeaters to their corresponding
USB HS PHY.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index e76d29053d79..35580ac3430d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "x1e80100.dtsi"
+#include "x1e80100-pmics.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. X1E80100 QCP";
@@ -491,6 +492,21 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&smb2360_0_eusb2_repeater {
+	vdd18-supply = <&vreg_l3d_1p8>;
+	vdd3-supply = <&vreg_l2b_3p0>;
+};
+
+&smb2360_1_eusb2_repeater {
+	vdd18-supply = <&vreg_l3d_1p8>;
+	vdd3-supply = <&vreg_l14b_3p0>;
+};
+
+&smb2360_2_eusb2_repeater {
+	vdd18-supply = <&vreg_l3d_1p8>;
+	vdd3-supply = <&vreg_l8b_3p0>;
+};
+
 &tlmm {
 	gpio-reserved-ranges = <33 3>, /* Unused */
 			       <44 4>, /* SPI (TPM) */
@@ -513,6 +529,8 @@ &usb_1_ss0_hsphy {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&smb2360_0_eusb2_repeater>;
+
 	status = "okay";
 };
 
@@ -533,6 +551,8 @@ &usb_1_ss1_hsphy {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&smb2360_1_eusb2_repeater>;
+
 	status = "okay";
 };
 
@@ -553,6 +573,8 @@ &usb_1_ss2_hsphy {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&smb2360_2_eusb2_repeater>;
+
 	status = "okay";
 };
 

-- 
2.34.1


