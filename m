Return-Path: <devicetree+bounces-12494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 722B27D9B2B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C26028241D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB7837152;
	Fri, 27 Oct 2023 14:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aHnZV7dV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD0636B08
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:41 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 654E31AA
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:33 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9c2a0725825so344275566b.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416432; x=1699021232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pY5w7Bh5EYkfQAkYpZoq0bZLBNjbmv28cc4lnv8Ll9I=;
        b=aHnZV7dV5+yi+0oU2d6hlrnfy1rMELaNvyKZPuEQlJwz/vZHHMFXNaAqsY00RvFtMF
         7Q+sF5Ma+tzzS+mOdaZu3RcTsa0VoR0q1uyAfQSczDE+Y4FvmhPQXsT6I4X0fEdVXF7C
         VTxMjvdw/CWRGNBdednjTv2DcwrBsH6pQFSeWykMuz4mWGt+tfu1rTt3/ziTJpwWV3M0
         uh/eKse9RnzjrF4+qq+ihe7TZwuPiIIEYOQeibbJI88gm9HK8WqBl/ykHd8/FJlfPSv8
         DetYLASWaQ7BIcPS6My9/vEupK+CpUrQVNcQHZfOuXtqwVbBcxkIDmA+USSU1dm3Zsrs
         ZiyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416432; x=1699021232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pY5w7Bh5EYkfQAkYpZoq0bZLBNjbmv28cc4lnv8Ll9I=;
        b=k4zhSTCgy4vkODaKoIG7JImH96dQhzJrCSJIWzfccm1ixE9l8BTRIqMm90lQA+9me6
         trDII29n6kj66ujgXzHGopWj3vr8sUgjKz59pMDBNfndNPfgKlYN3ftUvjfEUvfX7obc
         21m/9ebAV7FT7AzU5jNfgrQj/tEj0MpT0Ulb5N68it923RxuxnuwnM8D/1JZTEoSnkCi
         5XaHpra+ewAUcWmlF532C0cJBOae0URYriFybiOM5aXqEnTfZyBYhwaGntqY3Hw1p2Bg
         UsjjHxZsE1pO7SA7GiqAb0es6icakZmxHmzzjLGKxbUGgSuB4c0P6bUKlskKNnmXrhlY
         pHxQ==
X-Gm-Message-State: AOJu0YwpmLb7yN/INP7pnwKaQmY8Ob3BeINvuYPwCyIGxkh9rlDpAGq7
	KjEmZVrWwN+6SGuhgx3rXX4ivA==
X-Google-Smtp-Source: AGHT+IGW4u2KfBM90vMKxhLrcqy8HbkaqtvIK0ZxxsXDMDiAWz6lFDgrjRgnZjEl4dWhiMUeVF29PA==
X-Received: by 2002:a17:907:940b:b0:9a1:f81f:d0d5 with SMTP id dk11-20020a170907940b00b009a1f81fd0d5mr1934297ejc.54.1698416431800;
        Fri, 27 Oct 2023 07:20:31 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:31 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:24 +0200
Subject: [PATCH 2/9] arm64: dts: qcom: sc7280: Remove unused second MPSS
 reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-2-05ce95d9315a@fairphone.com>
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
In-Reply-To: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
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
X-Mailer: b4 0.12.3

The bindings for sc7280-mpss-pas neither expects a second reg nor a
reg-names property, which is only required by the sc7280-mss-pil
bindings.

Move it to sc7280-herobrine-lte-sku.dtsi, the only place where that
other compatible is used.

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
index 5db468d1a06e..0d9cc44066ce 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2848,8 +2848,7 @@ adreno_smmu: iommu@3da0000 {
 
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sc7280-mpss-pas";
-			reg = <0 0x04080000 0 0x10000>, <0 0x04180000 0 0x48>;
-			reg-names = "qdsp6", "rmb";
+			reg = <0 0x04080000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
 					      <&modem_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.42.0


