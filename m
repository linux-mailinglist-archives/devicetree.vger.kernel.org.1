Return-Path: <devicetree+bounces-44160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9622D85CF15
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:48:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9C8F1C22467
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A2543F9F9;
	Wed, 21 Feb 2024 03:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EgfhxhlJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26A03F9EA
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486989; cv=none; b=AMWNHoTzIONigli6wjE3+XW6D/zGqLpmCrP7VtlP6fm9zrQih2JGJhmaamFE2D64PGa1JGyCgHEqZluvvm4XlECKrRxyH6IMTaqWN7HprNSEZalRB/AAzOVEjEiMJ6JRaHvplzY9HFg0myDdUfXls1jib0Hoh2QmGx51diyxexc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486989; c=relaxed/simple;
	bh=WgAHSHEBS+WPHpzKCuKbWd6zQ7JQttxC3Rezz4uCsKo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qT+xHerRB/YXAFI8I9E08AGadBtTH/YHZPcnaXxr+1mPg6eLBOMjcmmCkgwW7ncY8EfBTQfQwhtZVEJ2KcnfInR/8sDY/ZfEWTMnbZk0xHCZahqNBHseuG9/UqU/fBDgt05AEuVqMgKfIdScCw79uie9qZpZwDDYo94FEFh2rZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EgfhxhlJ; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e45bd5014dso1245272b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486987; x=1709091787; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jqTTWkO7wb0/aHORfRcfU1fgshn4zr5mjp3j8EXBQlM=;
        b=EgfhxhlJu70FtX+lSLtNHPrbkJEJqz2U89cEe4R8VGGVwaDtcrhNpF4ID3G5lJo0rn
         4wwePCtMV89tXYtig0zmUAAl7FlrHurYdxZU75eaj1/gteRNTYp/9NvywmgPr2gnosUP
         wDTpfhdF+Rmf9EoEMtD9F+CzukZn3JkcM+YKGcNHpWTlwohdAXGaTgs0np0v+6tMopdQ
         0v39jaBV1OZw5HFAKhXP10euMqso8DErjRcp9Ev7bdEoN56nWBYlUqrM6A1Bc2Vuu7tu
         7GYi940ebvVwMnGyl2wicL/hX7aL5Zyihqow1XC9wU98RZEf4CIANT5Njnzdjl1NTYkV
         JGRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486987; x=1709091787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jqTTWkO7wb0/aHORfRcfU1fgshn4zr5mjp3j8EXBQlM=;
        b=xSEUyu+9rJ3cPohBWdK61nj1oj614+xqdWOiJHsn6KwxLfcrH/2mKY4ZDrAou/Ftdr
         iVaDQHqiD+4Po90B2PTLwVlLL6ESIUONi5Zf/84U+snKxCJk+QsWH6zgOCrxkhds7CN/
         ueVN/Pz2TUoxXi0w6E8K0DfirmoJ4wtGMXwg42dzu2k1ehhSOi2nt+qkymZHrXhGoM7f
         JUeQT8OBiLRGzTeopRX8Oxiqptu6DITCE6xoeYlsakOWRKyarSFzHCdc22AJWa6Ty1V5
         sGD07fwDTbNZbRAcFnUaszXeaJg14J76nXfGllOq6nmxIeAKVHWWrbLLYzGfQu1Z7RM3
         Se0w==
X-Forwarded-Encrypted: i=1; AJvYcCW8so41PG16GENAhh0PaxNbobmh8w+7f0FHMk7hIYplY2KeK6ivgrPi/XeYhzP1xqnwxVndVvPyofj8/MFsnsU4EaPMkeiCt7nscA==
X-Gm-Message-State: AOJu0YyBRNFySxFmXVcDMWQHsuX3Eyo3g3OZGbZQTaLb+STqiO+OsxQn
	eNLmhnOSbM3qrwpUKlyK+Ay4f1rZsvttnQP+RNelbFCXl7V1CEktVIAhR4ENYA==
X-Google-Smtp-Source: AGHT+IE3shMOMlafFIGY6Q+VTfpMTFzlivckWMpFfeWH+Xc+MBvOj/M7a3gdfP0EHK9PcBrj3lvgnw==
X-Received: by 2002:aa7:8a03:0:b0:6e4:62ff:d74 with SMTP id m3-20020aa78a03000000b006e462ff0d74mr7427870pfa.3.1708486987166;
        Tue, 20 Feb 2024 19:43:07 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:43:06 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:12:03 +0530
Subject: [PATCH 17/21] ARM: dts: qcom: ipq8064: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-17-6c6df0f9450d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1664;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=WgAHSHEBS+WPHpzKCuKbWd6zQ7JQttxC3Rezz4uCsKo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEJ3hJUl2zeUGvykR59nE7EJUol1/NGPC+WF
 qpk+24wV9WJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxCQAKCRBVnxHm/pHO
 9aaSB/9uagosTtJLUmQD1vD4GU8InYag5R/MDKqz1MNyJAtIYsO9vNh7H9UkBSnTirnVS+mFi4M
 mukfdXM4atkpzvkPQzWEnqn/d/EfIVOPHhmALeHVPWFRUOVKGOag3zRv6IjdovifRPIC0PDeA7E
 6b4+KGzsLhEWj8LgjnS/B68YJoGSbmI0zOY9DDZNuWrWKkq2kYXS/vPwEwI+xic06apHLu9wS7L
 7TFp1qRQLdL6VBAF+veOJm4XG1WTKV2NkHG2koWRlKrrcq3b2AWqQTBkDrww5ZV8T2haveMKPT7
 sUJHn8vNZ4ZcshIFaJ32Li29f+G7J9J1lw6bwv9zAOs+cnlO
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 6a7f4dd0f775..98448ea6ffca 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -1125,6 +1125,16 @@ pcie0: pcie@1b500000 {
 
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
@@ -1176,6 +1186,16 @@ pcie1: pcie@1b700000 {
 
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
@@ -1227,6 +1247,16 @@ pcie2: pcie@1b900000 {
 
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


