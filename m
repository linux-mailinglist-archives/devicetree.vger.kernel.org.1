Return-Path: <devicetree+bounces-23179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B1B80A6B9
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E92F71C20E49
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C3D210E2;
	Fri,  8 Dec 2023 15:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YKDVDN7K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E112B1BD9
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:08:51 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-54c1cd8d239so3037548a12.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1702048130; x=1702652930; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Td8GK1EIxCCDRTZZeGpN9dcJOwX/POq3AChRSun4xvc=;
        b=YKDVDN7KQClyDvfH7YRrxZMz3msS+SyFkLUVmQLpAiJZUVArUaSkLm3TSyVGJ0vgUp
         soysBYc/jsTZnWnr4/eJEFJ27lS18+xuVpw23beMvdKonWHKvaXPMRZwhVKcHjL1K5Cb
         q/3aNFwSbXeC8xgm91VQleK2w6+TbCVbVLzi0KZ9eN+aH3sEyQjGjIm+plsnT4brMh/g
         d3qbsmOMn12ubAIVzZcddzJadggpXMb4HP+Y89iCeGAexMQVp0pbU5X2od55g9iVHm6C
         XgwRzq9k5os8MdC6mmEXGSwtfk3Z7Rc+dYm7n6OsPXK8hq67RN7/9FbQSI0J/TGUvNkE
         uLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702048130; x=1702652930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Td8GK1EIxCCDRTZZeGpN9dcJOwX/POq3AChRSun4xvc=;
        b=fLKYWVuoxi1DGNv/qRScMY/pjlJp52RIUbSrI898n0rHd0ttK7Ykp1PnOGyARg6GBH
         mcYR3cYF8IX4/kjpe9s8LLDqNSzBcST3fdvcz106Zt/v+8PtAKFSsUCplmKwXYmnTbRf
         vea/UPxVoQHuxkHFsp6bwGuMEcF1bbebk5s2/8PKOtPV0lFTg/OhqiWT8FdZFWtmS0Ba
         RTL6pBAnecAo67ocSuFMmdNrBhCz/tZ8bQRF0YQFHWC7b6OccTTMyFetJ0b6HJJrL+FM
         VARRDTGBz71DIE5dx5ZV3ZbYbEOeMqLHjmbG7dXnsZxyHmvYcV4jbM3df5f80j6l1ZyZ
         Hmsw==
X-Gm-Message-State: AOJu0Yzmreeg/fmuTBdpY498snHMWJVv6iiV1FOQwrE92oxdc9nikQ76
	k+MiZXvVzJt6lb0X3wVIL65H2g==
X-Google-Smtp-Source: AGHT+IGm8lL1I7ApGVxuP0X9hWodDNQ8kJi+6CvDt3WbF+Wa45GZg4U7TqhogZpovS1pZkaGw/wpVA==
X-Received: by 2002:a17:906:cc10:b0:a1d:2548:f713 with SMTP id ml16-20020a170906cc1000b00a1d2548f713mr26984ejb.261.1702048130382;
        Fri, 08 Dec 2023 07:08:50 -0800 (PST)
Received: from [192.168.55.221] (tmo-113-102.customers.d1-online.com. [80.187.113.102])
        by smtp.gmail.com with ESMTPSA id r25-20020a170906351900b00a1cc1be1146sm1096114eja.217.2023.12.08.07.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:08:50 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 08 Dec 2023 16:07:58 +0100
Subject: [PATCH v3 02/11] arm64: dts: qcom: sc7280: Remove unused second
 MPSS reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231208-sc7280-remoteprocs-v3-2-6aa394d33edf@fairphone.com>
References: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
In-Reply-To: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

The bindings for sc7280-mpss-pas neither expects a second reg nor a
reg-names property, which is only required by the sc7280-mss-pil
bindings.

Move it to sc7280-herobrine-lte-sku.dtsi, the only place where that
other compatible is used.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi | 2 ++
 arch/arm64/boot/dts/qcom/sc7280.dtsi                   | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
index 95505549adcc..203274c10532 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
@@ -33,6 +33,8 @@ &ipa {
 
 &remoteproc_mpss {
 	compatible = "qcom,sc7280-mss-pil";
+	reg = <0 0x04080000 0 0x10000>, <0 0x04180000 0 0x48>;
+	reg-names = "qdsp6", "rmb";
 
 	clocks = <&gcc GCC_MSS_CFG_AHB_CLK>,
 		 <&gcc GCC_MSS_OFFLINE_AXI_CLK>,
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 35208248f8cd..1b40e18ff152 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2860,8 +2860,7 @@ adreno_smmu: iommu@3da0000 {
 
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sc7280-mpss-pas";
-			reg = <0 0x04080000 0 0x10000>, <0 0x04180000 0 0x48>;
-			reg-names = "qdsp6", "rmb";
+			reg = <0 0x04080000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
 					      <&modem_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


