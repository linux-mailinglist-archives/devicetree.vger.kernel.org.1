Return-Path: <devicetree+bounces-23512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD3680B787
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FBC7B20ACB
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F6731E513;
	Sat,  9 Dec 2023 23:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P6L07Sln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E97813A
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:21:41 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c9c18e7990so44532471fa.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164099; x=1702768899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3GZgKuZu+RtdOCNxwqqoLLGadbIzwEY8PzUJoUplRZg=;
        b=P6L07SlnEgChUfUwO4R6S/pANaQtN2mqJWRRI6fQSYF7fbzsUKCQWlo62wYnWXEMEg
         gQfyad8NpdLkv6uA1mG+U70gViz0p8aIATua4cqsMggrMrGn4yJWI7YHvy3o943YcCdB
         /5NfDKa7h0wgSfj1O5UVuFqZLwsQyB7vXplY7SDCnt6irz9VNuCbtIZb+5qNWsFkhKtv
         D5l5Y24lMVH61EqhqvIQTEuEVKzMHkFlmCeQZMNL6IFB19iHaneWjIqNjACoytgH3LZt
         yhMe3gjPNR6f5cckdgk2LtLGnHwSbSTlA6jAEBBxJBw241h58HXMOlf71FDL2SAT2mB0
         NP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164099; x=1702768899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3GZgKuZu+RtdOCNxwqqoLLGadbIzwEY8PzUJoUplRZg=;
        b=lXH1J5wYwZjiTx/ulLKWPsXkXwKXJSOAZ9BZFfysy+wcPov5XJQgSva2Ui9NKuFb+W
         6hOCQ+TdRjVajAGNNU4nprn2gfoGFYHAtaGeiLJCFLqUQJtFIN2DG9HwH94q4a7TOX4o
         z/07yk2ppf+3wQwobW6ciAbxpThQdGJgXGFnCCiHAsu9PtqXuHKWGQ8cZewHSUUwy2o0
         32vZdUsIw+8Ni9sbB28TxTlhGuHBlJes5/3mcDf/R6AQzYaXC3o+rh643KbrsPrvgcZt
         nyjN7Ue4E/G4i7AiEIcEM27DWhac+8PT8wtLRAreO2Za1O7o4iM9ZFHRcf4lZINRgVKa
         IvaQ==
X-Gm-Message-State: AOJu0YyUO0TK9EFeK1WcTYZG/bH6ckirIiAfP1ReiyKwVk/n4pNMN8we
	TB6HOXpgkh/O2GS+9tPMGfZErg==
X-Google-Smtp-Source: AGHT+IEYSsMk9cOndMCGOckOeg7OcH8sDXc9AxxmkfBY4lvASvw2U6bIWjPnfGmMGFoIvrwOAtRbbg==
X-Received: by 2002:a2e:b013:0:b0:2c9:f4c5:7f1f with SMTP id y19-20020a2eb013000000b002c9f4c57f1fmr764271ljk.74.1702164099406;
        Sat, 09 Dec 2023 15:21:39 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z18-20020a2ebe12000000b002c9f59f1748sm685258ljq.7.2023.12.09.15.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:21:38 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 7/9] arm64: dts: qcom: sm8150: add USB-C ports to the USB+DP QMP PHY
Date: Sun, 10 Dec 2023 02:21:30 +0300
Message-Id: <20231209232132.3580045-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
References: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Expand Combo USB+DP QMP PHY device node with the OF ports required to
support USB-C / DisplayPort switching.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index ea7c92c0e405..38423a9f8408 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3447,6 +3447,29 @@ usb_1_qmpphy: phy@88e8000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usb_1_qmpphy_out: endpoint {};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {};
+				};
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.39.2


