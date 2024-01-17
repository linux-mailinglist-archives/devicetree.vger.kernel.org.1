Return-Path: <devicetree+bounces-32756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 582CB830787
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 15:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E74EC2868E7
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 14:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7B5208C2;
	Wed, 17 Jan 2024 14:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gP+WOm4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A54020325
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 14:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705500272; cv=none; b=fd+4ViYuQvgI+04vSHF2AG3eHkE024zw+3+9JrKd+P7e4HkoE6fKG32B/2BAh0IX6loUHL90uKjd/xlb8f0fiMBSIwKgLMeMxvxokaQ9hpVcLTP5DT6BTh0QAv1FlmUIpgdIoWv54G1SNDJtT6CuA+7oerwmanEB0wUpVCXB5mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705500272; c=relaxed/simple;
	bh=NBmVgz6T2xRikadcDCIPLqU0vzAxugCzfckrrP5Hw/U=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 Date:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key; b=gRVZHJpdO2jLcibkoVigfS5B60z+1nvl5iwDS4Fzik2kQ4hnlzl6YN7PN7pJqsAtQA3L/2j3BmHD6I1YXTFmdXWNBKtHceETG+bPvp9CNS7ZjmD+NsOth1jonKrN3AcScMYadkUkGtMklxgyH2uzIP6t/Em5aMnYkrDO2DQI0c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gP+WOm4A; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50eac018059so14218813e87.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 06:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500268; x=1706105068; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7dcqXSk1rgw9DCHRa1hWGcJ3G/KhQaZBYpq+KKrzSJo=;
        b=gP+WOm4ADZ0DGvPNIRB4qjahsLrnTtUrGqILiwZu6cHjRwYJX/IdG9jYc/bznids3C
         IQxzruluMIWMB0Jfyz9YiHQdeVswf7mFsU3Ii0WHoe2Saw5KXtCcUASN/PINlAOu15x6
         xiOmyX7Iim8Ag7/FGzLdJmm9GXi8bLzjrZF9k9NfFDynf3IfkhUUs0M9T83SGkr7M5qx
         ZjhLOEwFHr+z+xQ339oIaxkKjmfIJ5zufovX2wQy574qcbo6ywo3Pr29KfSYR/Tvpc1z
         ds41SLt4WmfIHfydii8qvIElIyB6lXyRl19VlB11XN04HBhA69HYFT7P9BB6PmDlycbv
         OLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500268; x=1706105068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7dcqXSk1rgw9DCHRa1hWGcJ3G/KhQaZBYpq+KKrzSJo=;
        b=HJVrM4b+FCkETMhM/a/geXFV4iTH/+mHHiokG5dCQEp9+ZKdTUxaefvk9iGBMT1co2
         gnT5VA9osLq97Gn5nR8GyeQHs0JM1Nn9CP4/kAfeVy8jMtrZMgJj5HV+wzSQxXcMCVXZ
         hkLSgRbpuaGVIotP0WLkB0Ax8c3PyURVaNTsossuCGB8LufGRJ2WeLgFqPyB5ZsRGW0e
         X/zDDA8FebK/Edwh/1c17i8qVcfVS11PuGGluAW0hkN2YsiGc/s6jc8Xzp2t/4EvTZYy
         12DqvmkNZ6yLlOMX+cccHPjRIrF0uI7qqdNt1YLpxnHJQh++ONHR4wUZ9Bokag8RKdEf
         Jl4Q==
X-Gm-Message-State: AOJu0Yw2ir3MtoPtyRxcAgkXZaGErypTVg5+z1CrQQr/l/ibTHWYYqIM
	UrrBBsjYhsi7dvI0eJxyJkYc8IyCgkbnAA==
X-Google-Smtp-Source: AGHT+IEuBH7Be/ByM7oNW69Rh3Ic7MZMVCjGkmr1PVTFS8RbyK0x36/q7neSLjxPiiYI2J++HAsmkg==
X-Received: by 2002:a05:6512:3c3:b0:50e:50ee:f378 with SMTP id w3-20020a05651203c300b0050e50eef378mr4154155lfp.65.1705500268534;
        Wed, 17 Jan 2024 06:04:28 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:27 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: sm6115: declare VLS CLAMP
 register for USB3 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240117-usbc-phy-vls-clamp-v2-6-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1146;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=NBmVgz6T2xRikadcDCIPLqU0vzAxugCzfckrrP5Hw/U=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nYEfTL0rbQyBlpAOWkMsd4n59kYFKHJuLn
 GfzbGxz+ZeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1cWwB/4gFZwZL1igYrmLmmj209CRZXEYzmyz+UjKzbyhB+uXefm6F/zqzK8OPoNMAFMiKo8LOud
 A8LhAnp9c2a2I3DQrUBylUeOy4Mjj6XJtiSdhl2MAjPjd2V44T56wWcz+OiF8Q0S8ElaMG/5PZx
 0AsRBdkplWPyAlljw0hTFJEpVftrjqOjcEVBczNx4nOJV4Ar9GAU+zCFamJ95w6RE9igY4S3RHm
 D/4CgMw9og9Im4zDnQ4os0zkIO19v43pZxrXRvc760GvUwl41qE/TaXaXurqgAE0kesoK/0iZh5
 xIEhQNm3Q/ADRsUDWYHgoA35SAxp3tyPdlt7C2n/SrjHRgfz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The USB3 PHY on the SM6115 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 160e098f1075..0c48ea444759 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -614,6 +614,11 @@ tcsr_mutex: hwlock@340000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr_regs: syscon@3c0000 {
+			compatible = "qcom,sm6115-tcsr", "syscon";
+			reg = <0x0 0x003c0000 0x0 0x40000>;
+		};
+
 		tlmm: pinctrl@500000 {
 			compatible = "qcom,sm6115-tlmm";
 			reg = <0x0 0x00500000 0x0 0x400000>,
@@ -879,6 +884,8 @@ usb_qmpphy: phy@1615000 {
 
 			#phy-cells = <0>;
 
+			qcom,tcsr-reg = <&tcsr_regs 0xb244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


