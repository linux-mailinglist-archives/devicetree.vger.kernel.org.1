Return-Path: <devicetree+bounces-25887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B5B814F0C
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 830801F254DE
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCED30137;
	Fri, 15 Dec 2023 17:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UKKnEbME"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC593012A
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 17:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50bfd7be487so1038108e87.0
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 09:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702662124; x=1703266924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KnnM4NLYYXQL9h/0MUW7hGGl0ViRyq8ukmFIOJoxzgQ=;
        b=UKKnEbMEKj1eBV1g1ZKv1c+cObyXkcVDWhBnGj0OU53tcpRvqUsu/4fVXfRT8w4LR5
         GVCwcCgzvtA+jFQB510txW2VAHeejyLT1Ywht4eti6Hqy6RA2EH5ZbRcayY2Shlibo6k
         6BUovs1mxarKqAmp3teXzN0852hsxCZlW2y/UPnbVepPOxN6z/gVsspiuOxXTKG4XMtd
         6Nnx9VuO5ByyU4RQ2+N2Jlj6xgQx+I05CR1Hy9MaPYaY8gq6uOdftRmL0PuDhXzc0Tiq
         BnJmugmuHN8d3wLPzHQIo7l5yvHRQBiRI9BwuK2OF3SvVOnIKYZqAd6lcPMyA7ITGTZR
         GE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702662124; x=1703266924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KnnM4NLYYXQL9h/0MUW7hGGl0ViRyq8ukmFIOJoxzgQ=;
        b=g9uYY84uA8TiL8XROLPW+zFPHCF8snjcL9V+IevndehcOBHsFy1Vdoz5ipxQLztccG
         6m/xBexs6GAmsItHTG9muNZ4R9ihac63wJsmkrCAxFujrL/HNI6k+bOXEPIeCaKTwsmb
         1ge3c1o/eaBqod0rFN1mX0RLcrvQti9i6M/8GdYtVv24pk+Sm/dV9g/KA9qn/iAsGAVG
         KHO0I5Lk49qC03ctd4a3wgFNhC9lGHnP3UcWbS8f/tGK8iJGJaSTAMdIcdJpZ8LOhLq4
         Y63E+AWDL/WUwdDZ2x16A51zZ0dmSpNo4piAqjDNxljY+UbB8fF7fb6FE48rGexLnJIU
         z5KQ==
X-Gm-Message-State: AOJu0YyGTW2OQxLMaABW3TA0cCcV0uw5gG/uHVZhG3yiLWy5wIA5tZ0J
	YfKPoJzTW2SrZOwFVTzHAicwEg==
X-Google-Smtp-Source: AGHT+IHkwyZNCl+tIBTF8hgjNJYrcVRsjpKNHb8C2OrOlBAiZNUrlviD7eIsR4mKIlz+PVc+wmHZSw==
X-Received: by 2002:a05:6512:2807:b0:50c:c63:1d20 with SMTP id cf7-20020a056512280700b0050c0c631d20mr6510772lfb.76.1702662124630;
        Fri, 15 Dec 2023 09:42:04 -0800 (PST)
Received: from eriador.lumag.spb.ru (85-76-13-188-nat.elisa-mobile.fi. [85.76.13.188])
        by smtp.gmail.com with ESMTPSA id c16-20020a056512239000b0050dff5bb793sm1389263lfv.143.2023.12.15.09.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 09:42:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 6/7] arm64: dts: qcom: sm8150: add USB-C ports to the OTG USB host
Date: Fri, 15 Dec 2023 19:40:38 +0200
Message-ID: <20231215174152.315403-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231215174152.315403-1-dmitry.baryshkov@linaro.org>
References: <20231215174152.315403-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Expand first USB host controller device node with the OF ports required
to support USB-C / DisplayPort switching.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index d29dfdd0583c..fd50fa79dff1 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3608,6 +3608,25 @@ usb_1_dwc3: usb@a600000 {
 				snps,dis_enblslpm_quirk;
 				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+						};
+					};
+				};
 			};
 		};
 
-- 
2.43.0


