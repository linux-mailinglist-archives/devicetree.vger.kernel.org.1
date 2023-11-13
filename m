Return-Path: <devicetree+bounces-15288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E047E9843
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81BFC280C04
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 824B318632;
	Mon, 13 Nov 2023 08:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="HMvEqzIm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D2418047
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:56:26 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E9410F8
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:25 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53ed4688b9fso6198655a12.0
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1699865783; x=1700470583; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7LwuWo/xQR19drDlZX7ccinmtAJFTBRZl3P7VkhCjE=;
        b=HMvEqzIm3huRRk/LvVMyldJayReJUcIvxGNx6551nf/ecvuReoVKyPJYDRc90kO5D0
         4ti8Svgmr4NyuuVql0OtmxNYh53osg0cNqB2uul+sNjsv34Sr5Z2XD+5y+/S724wU5Zu
         RzPFWBIXQ90vubdusccSXjhLxWlkNCANazc4OuTRcQCiLB7qXPCHb3bao3gWWBAYkFdC
         eltMxQm3y4ZZR5h9nBL9sAQnoiERgaqI9h9Vpg2Ahio80+z1ekgGNQ1Kq5htWmebkfj1
         ICnGXKUe5DvTm4iO0bE36ELYdJ7bh1RA1CY52h2vSIEmyQWDO7c9W0GZZhdt1OEUXp/k
         XkoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699865783; x=1700470583;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u7LwuWo/xQR19drDlZX7ccinmtAJFTBRZl3P7VkhCjE=;
        b=dvL5wvXy5w+yLrMtVrMtAIKZK2O+lvkZP5E8pBj9EpLqqIzQszpY2gqpw15ghwFHRM
         qvmK05erneIVvK4KHbDHLNsWOvkGfQZhYw88Cv0/en3fbRW3py18vEkh5OLSUlrJ/b6Q
         TatgpCZGm+fQidmGb9aL48mTIWzzX9Kf9PnaUdO2VtDyfmMJaZNcX9l/o4Rn5Qz7rFLe
         Ns3FbJWn4VMgU0AxwqhtfXUoo1lI7VXk4qTEWA0D4KaswuAPMiUYRA7hh6mFQe8IxiKn
         OfSyTGmC+akrTWxoW6QfsILv3bvTo8dee2Goz2BsDTNkisoFXjjHN9+/kwdkQvey4tQk
         FLUA==
X-Gm-Message-State: AOJu0YxcC5IJCEblkxiXSSwXQfoCXG5U7O5MWDSNvqmx/cP53cMHQDyR
	R/rQ2oY2cQfZ7MDi0d01Q21coA==
X-Google-Smtp-Source: AGHT+IG2SPX6L+vKzqIsrr5ZRHSaYCS1SjrAy3heGkk0fWSk/LQ6Ns4+4rDVY1OcAqIObc2tESSX3w==
X-Received: by 2002:a17:906:44e:b0:9e6:c845:dba6 with SMTP id e14-20020a170906044e00b009e6c845dba6mr3579811eja.66.1699865783665;
        Mon, 13 Nov 2023 00:56:23 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id kk22-20020a170907767600b009c758b6cdefsm3673538ejc.128.2023.11.13.00.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 00:56:23 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 13 Nov 2023 09:56:13 +0100
Subject: [PATCH v2 02/11] arm64: dts: qcom: sc7280: Remove unused second
 MPSS reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231113-sc7280-remoteprocs-v2-2-e5c5fd5268a7@fairphone.com>
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
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
2.42.1


