Return-Path: <devicetree+bounces-52154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D93A885810
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25E4E282150
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F560604BC;
	Thu, 21 Mar 2024 11:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PehXj23H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD6D604A6
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711019873; cv=none; b=aSlinsnH3HW6Mgrnz5jni+U9yqd4jDyZAbqPydR4NKF45V36nDl4c/PikI74IaQnjlBujOigd65gO6G4IgNYpN40Hw4FUMS3hJ31wqNyLmmTT3JHdQ0fDa906k8x/RU0g5URumgTWGB+BrE7u/i9EJy7UeBBs/Qht8cPAeOd4lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711019873; c=relaxed/simple;
	bh=KjpPaq3Tdf3ZjRn5Po5VTwhcBTSqeOi7fK0s3Jjshf4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DexCWI6kv4cxSMpQxUXNqbjaOnyBzH/oiddFQTLSfAML7o4Gar2P0DzagvroUOvyJnVWcDqMbChm88yh9QqveFW+fXv9GGXHZuUTonqKb9hPmoqUXz4WzUICS52AZzDw3TPJe79AQLy41MoZs/ElqpCFXpc0q90m2bIh1scpZD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PehXj23H; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6e88e4c8500so651954b3a.2
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711019869; x=1711624669; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=my8DZiXu5s4dyrHMCCYGwXTqlVzaG+d45u4ZNS8yU/M=;
        b=PehXj23HaYYdd/NYwgGhlfcmfhsEw/Lx0Cti5Mh2vb5wRorqs4D3P/QUlGeWx+2RvE
         weUou7JtHaPl8+lDoiMKX3H++CCIgEKtukNygm3c+BIlQzlotIMCcoPu9BPw3Pf0g3NP
         TkKXGNHAYfFgj0b8FkkLK4Q/mPlAhJmUNjEPCNjx5ZIiYPkaHywv4ySD3ekPI2SfowSY
         pxe/V0Ably0rp+icKNXJfXyHH1WqtxZxA7xnmvmOoeVCm1yLlFKHnZlloAXlGf9fWOgW
         Yu5579F2LXy2qhxQknbgsRqje9r73nBsX/umQl+NDlEo2JMtXVAsmkdmNbCIymD3bk1e
         Tg5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711019869; x=1711624669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=my8DZiXu5s4dyrHMCCYGwXTqlVzaG+d45u4ZNS8yU/M=;
        b=Jpz8atB10LEPsCGBPM2GpQe+Cweodjxo9VjuJFz/fJj2Ue/I+eAhqSfcO1UTM6XeUJ
         EMGo4ece/O7pAqbMufWhgBRC0xBrigFvnFZHTwjQfgPtss8IFIBhYpvmg6Fw2TQjYJ1U
         RtJLX1vMHh5yp71jz3/ImQwpHcAhjgglLaLKYVzvpyAaNABQ4N4i4osNA/SD68G3i8v3
         qgzNaNdGuZAbZdrnrztvbbHp3IwcmdH15v7GmNr4f8I5dRGNZBaaze1WlarLHJoWCzW+
         9/PJ4k4E+V4LnuYdxUHmzN4C0sQJA3khw+q+XGQv9R5cM+WybsbwNLR4WUOg6IfFa8F0
         Em7g==
X-Forwarded-Encrypted: i=1; AJvYcCWPbYR3rUwrV00l/bYF4XKEJ14sIzkenvK64EETKwJ6BDgbzXTwJnFKVvCPghRxkFWC/6x1ADkbQfqRNqdarh4aPhKnP+CT7a8GUg==
X-Gm-Message-State: AOJu0YzglxDNpXXYCB4pMPmjYXgch7q9UiaKQnoMrsygI7bZWhzrmqXv
	JTLwvL+yEtoNNKFZEA0HZvRxSE8y4YNR2Jrsql3HQaCxS2T77Mbg2LYMNvZmQQ==
X-Google-Smtp-Source: AGHT+IGLqLpet8+ooQdKHsLib/gqP1ROWDAvkcK/wAAgdkKD1KhSiwuAZFhJf2G02D1Kp5Rbz+Y8LA==
X-Received: by 2002:a05:6a00:a09:b0:6e7:936:117a with SMTP id p9-20020a056a000a0900b006e70936117amr17924945pfh.6.1711019869495;
        Thu, 21 Mar 2024 04:17:49 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:17:49 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:37 +0530
Subject: [PATCH v2 17/21] ARM: dts: qcom: ipq8064: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-17-1eb790c53e43@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1664;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=KjpPaq3Tdf3ZjRn5Po5VTwhcBTSqeOi7fK0s3Jjshf4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcNmMSToGQrBNnsBYz/3NjS5ZECR++qgaCku
 tTskx5Pk92JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXDQAKCRBVnxHm/pHO
 9fEKB/9U+okU0KVTZFqjiG+rdwVIyTEjYZCjUIyS7ASChCL0M2A0NS7xTlPXD+lDeQIWbVXqgoK
 tzF+4skw8OdD5pnRqV0Xg5LicnD6ECRuQ5dwaztVcIKAxozaf3f1wAaPxUPDpzc9Eu9nO8rMmjQ
 HPlfun/n1D75HkSiguSe/oXuCpNa3mAlDh18a3gVJmvsAysaIUJU2JSSW0SMMldhjUPbQw8xWKs
 u2R/Hcqih8Gcj40eP36Sm5ije+h+D1OX2HbA85yyZ8BpaIpvGi+unuAXiddGI3JB48BmJXGetoC
 UpXRDlb1whuIxQLI/gqP2tPPoEBdg9hlVfmSEmpPynRf0ZnN
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 2eb6758b6a3a..f128510d8445 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -1121,6 +1121,16 @@ pcie0: pcie@1b500000 {
 
 			status = "disabled";
 			perst-gpios = <&qcom_pinmux 3 GPIO_ACTIVE_LOW>;
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
 
 		pcie1: pcie@1b700000 {
@@ -1172,6 +1182,16 @@ pcie1: pcie@1b700000 {
 
 			status = "disabled";
 			perst-gpios = <&qcom_pinmux 48 GPIO_ACTIVE_LOW>;
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
 
 		pcie2: pcie@1b900000 {
@@ -1223,6 +1243,16 @@ pcie2: pcie@1b900000 {
 
 			status = "disabled";
 			perst-gpios = <&qcom_pinmux 63 GPIO_ACTIVE_LOW>;
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
 
 		qsgmii_csr: syscon@1bb00000 {

-- 
2.25.1


