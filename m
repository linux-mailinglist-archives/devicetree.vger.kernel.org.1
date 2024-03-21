Return-Path: <devicetree+bounces-52161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09010885847
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:25:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3C15284799
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83615823A;
	Thu, 21 Mar 2024 11:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TUcJZFz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C702858235
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711020311; cv=none; b=Bz20q2uTIfzH+IC9nUDCwDoUJHz68IoL1DK2R5D2b17xDtd/RWJMyTSGrLjsgnuX/byTJdZ4TlcHvUq5j35qp/o3VeailU370Eifwuru1L8S2Wj+dXUx6nozb2YvkK09SPAQwEfHrSu6fayObVdfJ9iw0scJXtIBV3lAMVkoutA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711020311; c=relaxed/simple;
	bh=KMWylqW711t7MACsRbN1TvhF6nbAcTz/VLJbxkHR4gI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uDsX3plGdktG6nyZhkg1JfHLBi/QgxW6x7BrMvbu2jXSNMkZ+qyx09ktMS2DkDuqqu/eysov3Mh6krLs9PgclSFuG5p8L2mD8um/NU3ly8ND2DPkR1RY40Coq2HandeIodJnsGeB+0dVpSpYyVmWrlXUJXcI8RmGab3HYfk4zlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TUcJZFz1; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7dacc916452so264706241.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711020308; x=1711625108; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYDoji15P5HsiN/P0wTyX60zAfAmG6vlj4lO2mZaCqk=;
        b=TUcJZFz1ohuweBWbyfdljv67kQ7JNfMhqB61GtzI0F/ad8ACZNzt0fjhB4TDpK7W3P
         pooH1jgckLVElVUGj2rBupwmRoBWG1IzAUIrmCaicTBAjK8lfH3Q2uzap/JeRUctP0Ek
         QlmZDtJVRnw+lcI6PuHFmU3xmuWmOzc4m6D0efLeiLG1NRLJM92Xgn1rw69pl3wL0nR+
         /rDxKi7ZYoJRirMwIWwlaKUTnSK4BBVY7J02hfrQKJjy09u9YbDUl5b0HqVCAQsGOKa2
         Uf46bqSsoimjmHBaOtpsnH8F0eAxn0Li6uFa0w87xJlG9ueBpkTIoBq+yExqAmaZVb0N
         NFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711020308; x=1711625108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KYDoji15P5HsiN/P0wTyX60zAfAmG6vlj4lO2mZaCqk=;
        b=vkxwWaXPqeFciAAXj72frUmJDFfH8qhBS6UchAo/zuNKzuZAQQf9z4kzDxYBkWStSE
         3i3d+oddWmxd75NjKzrYrASKlmM3CHp0vQ/YIa8pdg95KLWeb2nZaKxgKsZ1LYvL037h
         waFB+sLCnHE10W4xn1mc+iKhWftXRfOB8qQ0zTz1SRjkNGMEXy0Q/jd6l9qC6ouVjA/s
         Te5VfdkfDXcnKXApRQe/rLMCsK7hj9EE2yEaXAcGO2tzZk5r+O6fHYDCeU0ZyOkXa4px
         +0f0cHPJ6SG3iEUSNUjXCZqVa/0rfl4vDTZQf3k0r32S9wuqcmS0/QaCQaFDsVpfow0K
         tn9w==
X-Forwarded-Encrypted: i=1; AJvYcCWkU5xLWWGe4Aor2UT43x2f1yEWEsKnbJXkOCG9FQ13kOkI7g5hfVovzG3/C9VGr2lwWGKb/KEJXfzgLrEnONk/e+yakH9e7D0ogw==
X-Gm-Message-State: AOJu0YzdpAE6uF013D3alaK7mvKrZOY2/HsHJJo+8TwtsVPKJXfxNW4q
	gutcc8wlzuy+mb7dOLfY0Zhl0ErIZX224Q7cf/D+85Qrwr1MwJ2hJ5XVhf1XgpSH2LmRlDdwc2Y
	=
X-Google-Smtp-Source: AGHT+IEPtkF9qX1leYPHNRDsFpttA8FXZ0PmY8cLC2e9jIid7J3TwoC8DsN/sCK7Xx/HgMkb1KyXkQ==
X-Received: by 2002:a05:6a20:1582:b0:1a3:64e1:b6d with SMTP id h2-20020a056a20158200b001a364e10b6dmr10529382pzj.46.1711019852932;
        Thu, 21 Mar 2024 04:17:32 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:17:32 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:33 +0530
Subject: [PATCH v2 13/21] arm64: dts: qcom: sc8180x: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-13-1eb790c53e43@linaro.org>
References: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
In-Reply-To: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1867;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=KMWylqW711t7MACsRbN1TvhF6nbAcTz/VLJbxkHR4gI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcMSC6ZcFxTragSwKQJPd9VtucfQCSDZDiMq
 0b5lht1HT2JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXDAAKCRBVnxHm/pHO
 9dz2B/4zFUeB8rvtM8DzqBQbkRT4yKNFxGHi9RQpnuQYpw3H0Fov8cSnLGpDWf3zAm0ABaWuQ8u
 NitXa72HXSjRF/bxpamNtgy8nKgiRMCDbihGnAhjE8dV4AF623fSqLdEs2lzan0FFIE0LJ3C/UC
 sXH/e+NA8EVwgbYBhXRcBMkV5uS8oZEV8rlnwBcTZ5gKnWoehT56HCm/wXEAJIN+4I4MefHhbcu
 CMgssacecJIjBQDYJIfRlogjrJ4vn619b3iS0juhFtJ9pNUb947AaKoQ+7BRo7i14Uc5b7ey67n
 8f8vkhufueWHl+NKrCQbLucTx1cZgWgRvrwv20v0kpjIJGoQ
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 40 +++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 32afc78d5b76..322ead0389c9 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -1777,6 +1777,16 @@ pcie0: pcie@1c00000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie0_phy: phy@1c06000 {
@@ -1888,6 +1898,16 @@ pcie3: pcie@1c08000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie3_phy: phy@1c0c000 {
@@ -2000,6 +2020,16 @@ pcie1: pcie@1c10000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie1_phy: phy@1c16000 {
@@ -2112,6 +2142,16 @@ pcie2: pcie@1c18000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie2_phy: phy@1c1c000 {

-- 
2.25.1


