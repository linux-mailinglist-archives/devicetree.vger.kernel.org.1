Return-Path: <devicetree+bounces-44156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3579285CF09
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A8111C22819
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 780F739FCF;
	Wed, 21 Feb 2024 03:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R++d5Qgh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB26C3E498
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486976; cv=none; b=E5etU2sCL5tX24LJ9z+G+p9bU58VNOS85YEVD7B+mouD54m0diV3jBtDrR3x9kcZHVrRsh5LfY5+9ETZwbQBnvn+Kdtpz/l/3vAPPvHXROf8OBsu9jccNkFeqPv+ou/FSJomWARSC3Rtc7b04p+cs1BVzGOrlAxk/SmgbfJT6Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486976; c=relaxed/simple;
	bh=ntCfHbJqyHo2IKloDJny626bPqnVLcdHkMXuobbQPMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WZ589vmbvAGPyQfG0DRQkFtz3LXB0yuFX/M18S/7rAKTD6iapWvgyETbLTrBzJmR6wr5XMNi9hiQH4IYIT9oiualKHl5YLvgTJ4IRkilr5KlTaE6mbelAXV/7YKa0cApcPp8Uf5IeJbppxOxpgqZJXQ8lIIKSLHXt0vxIoJStNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R++d5Qgh; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dcc80d6004bso231661276.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486974; x=1709091774; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Suncx11lO3ECFLV2Hth7On+VVCqpX9h5Kh51+NyuNk8=;
        b=R++d5QghGbCGGtwHzPcZRdNA3X+wkcMhVb/Gsy89tP+lFIltlyCae/SU+tOvOzgZfO
         NqKy0FJNEuJm2207rncC/HaYygJ6sgcShfNYFTKpwfrnAlOioz4oy2o+BSMBPL/O9nko
         RqGYNYD9xbRHK9ou4Kf7oKSTGX06mxmgPYLVVxHC68TqJFfLs/toKx8fa127D1+9RL8h
         O1OTIoTSLETSGk/WH2Dwjh2lhy0Mols1B9Cvrg4YQAy50oNm//pk6MS2rHWvX4fFtgd9
         azn/MjoMbb532dEUv61TB0XU9XZyq5UBjLT1vUPWZMK1lwnK+sFS6g8qfg/j1fagnL4S
         nUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486974; x=1709091774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Suncx11lO3ECFLV2Hth7On+VVCqpX9h5Kh51+NyuNk8=;
        b=FffLzjp1lBV57zZrTUtrx6eFeCYmoZeOuY6gnciFbo7UJ/pSGsR7H9r2+kujvZjwP8
         bnc/zh+mJ3jO5p7OgpehvLfnSuExaxoiawNdlpwjhgSHh0DK+JNxND9qs9FMknVhJRSL
         A0F8ZYOUJ6xLBgdW5w7DHmy1t/eWDGGDRXr8KYJTuJvLQw+aGrFMvm+JgHFo9UyqnKxM
         eGfud/9aAl3lVHwueK9DC66vHHl8LX2DKH0nEiIdpj61530UdQe5FM2WbTaYA9M2VLCh
         Odh0WJyroxkSachuoy/+RKF1sQnxr3qqEctlLjIfLiErbtY2SpPSYivBtQPJXR/OpHmV
         p43Q==
X-Forwarded-Encrypted: i=1; AJvYcCUGjyZ/0KRHhucaOzJoyuOo+3NKP2Ibej26T/siV3CeL47+omGiimX/WPEPkgF4Z7MJS7NoJ5IHyTuLO4bVTnboG35RWDjAI34B3w==
X-Gm-Message-State: AOJu0YxI0GDsaJ2SW+AK/jGQJ76msHiyqiQgLHY3ZaYaEGBSmqilR2n/
	jBBcoCVDt05lIIal2tjpQPnp7+OgCz0g43xL+glQ//pMMRze7tTipT3bE+iOAA==
X-Google-Smtp-Source: AGHT+IF/0bdGZzQ42OnqydeusMagmlKeABAfSOtfKGpJYhW/ULtYgnY0pxFeY6MKIE2LezE4V3eQxQ==
X-Received: by 2002:a05:6902:250a:b0:dbe:9f4a:6bb0 with SMTP id dt10-20020a056902250a00b00dbe9f4a6bb0mr18319925ybb.56.1708486973847;
        Tue, 20 Feb 2024 19:42:53 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:53 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:11:59 +0530
Subject: [PATCH 13/21] arm64: dts: qcom: sc8180x: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-13-6c6df0f9450d@linaro.org>
References: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
In-Reply-To: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1867;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=ntCfHbJqyHo2IKloDJny626bPqnVLcdHkMXuobbQPMI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEIB2OO7XO/U6sELwLIt1TGK59monBn7moxn
 6dyHg9lzGyJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxCAAKCRBVnxHm/pHO
 9XX7B/94Zww9TR1j1Q15e64KFzc/uZLpFwM34IIZB95PjFpVYogq2AQWzgy3naGxRLAyHkl0d7W
 2Bu9uCBLquvDI9nK5DyjS0qvy9Cx7UExTMBgUGfJt1Ix8hzpEc8gAING+JMwnBwjxPEv+msS3X/
 MIyCYPEx9xaJjombvLjqkCkYsqDnwsLNoCWb+rjNNJqaAOb5IIasDG3KVBReN8dqLFOu8sYcPXF
 GSCgIfXGB97dnz2qIxXyF0SQLunP6hKSZZ6qRZBtmW5xwma4NFG3+j9JXowBJJgBnYAhbCBbeLc
 i19l8ti+zudL1i7KbRHEjzmXiTar/3jnKbUCAKAJqSOEgyJi
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 40 +++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 0430d99091e3..a6134f454e53 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -1754,6 +1754,16 @@ pcie0: pcie@1c00000 {
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
@@ -1851,6 +1861,16 @@ pcie3: pcie@1c08000 {
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
@@ -1949,6 +1969,16 @@ pcie1: pcie@1c10000 {
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
@@ -2047,6 +2077,16 @@ pcie2: pcie@1c18000 {
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


