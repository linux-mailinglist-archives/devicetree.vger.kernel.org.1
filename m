Return-Path: <devicetree+bounces-23511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4AC80B783
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC8641C2081F
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C4D41F92D;
	Sat,  9 Dec 2023 23:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WlhbFpLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5793910C4
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:21:40 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c9efa1ab7fso40122111fa.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164098; x=1702768898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNYp3d1ic8j7Eae+I7H4QEOmaR7sG5mmr/TaRL+G3z8=;
        b=WlhbFpLSO75cyPs+kNpE3aslehIQt7IzA/y8t9i3865obChiIgvvDGdOLtsphTOnxu
         TJTGSIGzOgGb9C64LXs3nzZ7EDSaaPRWf9ZMmF0GXm1T4047gEnsZQouIFl6qINxqzhF
         Qi6UazdEMwUZK6ua8AHHFJokIIQn+eA/dj9izOXFZ3ggQVyVbwQ3OU1VdmxwU5xsCtlv
         OdJ5ZnprVVXYgKrDSKmCfuCsIpyDRmupF1UtVFok3/Gq8Celz3CZ+wKBUCms+bgYno3I
         7N0VFh2I/AD6Ps8epCfWWCHI6Jmtad0TSsGGYHSSCMbtVQtGjIXbdlc8qePHPYXRmfYT
         lvew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164098; x=1702768898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNYp3d1ic8j7Eae+I7H4QEOmaR7sG5mmr/TaRL+G3z8=;
        b=ejLHCMm2LIvxKbmgbAFpOEEpYmYvXHmDR6P+AeDBEZtBtowA0EPfqdqvu8P1npeKhh
         sH2P3eVDCAhkF5qJj+zOcxA6ZT66VV+ddYlFMX6kyayzlFh1pDLvH9BuhNiKAwiZgat+
         b6iMo1fzEag7OP6oJwTxEzfqGRhC8fOM1Z5J8dK3EqPYXYFNr4PvaJCGoDGbkGIAWSPM
         lJ+6icC5FhOyjmyvOrC8N4oey2A8d1k5VkR48emwzRCAUwVYjaq57jyTXM9Jr+OtiLV9
         spbnqykeaqnL4kNIrzsg6GZrcTypyZeEwPYx1sKjQZ4bqEnCvT02RocsXXwfbjVpVPG8
         09vw==
X-Gm-Message-State: AOJu0YyW3tt+nIkn1DWGDyMdv9ayy7cAHK/kJzZ535BG/kbxqaPOLshN
	rYL5BSCeasTkJVFvYWpyd403uQ==
X-Google-Smtp-Source: AGHT+IEKN7Ff4C9uGUgDJ2n0EVzbCQqIPNVYTm8yWNs+FrppKiFaOj7gJepy4WcJFJ3UY6gLmiMo2g==
X-Received: by 2002:a2e:82c9:0:b0:2c9:f83c:5bc1 with SMTP id n9-20020a2e82c9000000b002c9f83c5bc1mr322829ljh.58.1702164098688;
        Sat, 09 Dec 2023 15:21:38 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z18-20020a2ebe12000000b002c9f59f1748sm685258ljq.7.2023.12.09.15.21.37
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
Subject: [PATCH 6/9] arm64: dts: qcom: sm8150: add DisplayPort controller
Date: Sun, 10 Dec 2023 02:21:29 +0300
Message-Id: <20231209232132.3580045-7-dmitry.baryshkov@linaro.org>
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

Add device tree node for the DisplayPort controller and link it to the
display controller interface.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 87 ++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 153c531c1d41..ea7c92c0e405 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3712,6 +3712,13 @@ dpu_intf2_out: endpoint {
 							remote-endpoint = <&mdss_dsi1_in>;
 						};
 					};
+
+					port@2 {
+						reg = <2>;
+						dpu_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp_in>;
+						};
+					};
 				};
 
 				mdp_opp_table: opp-table {
@@ -3739,6 +3746,86 @@ opp-460000000 {
 				};
 			};
 
+			mdss_dp: displayport-controller@ae90000 {
+				compatible = "qcom,sm8150-dp", "qcom,sm8350-dp";
+				reg = <0 0xae90000 0 0x200>,
+				      <0 0xae90200 0 0x200>,
+				      <0 0xae90400 0 0x600>,
+				      <0 0x0ae90a00 0 0x600>,
+				      <0 0x0ae91000 0 0x600>;
+
+				interrupt-parent = <&mdss>;
+				interrupts = <12>;
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
+				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				operating-points-v2 = <&dp_opp_table>;
+				power-domains = <&rpmhpd SM8250_MMCX>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss_dp_in: endpoint {
+							remote-endpoint = <&dpu_intf0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp_out: endpoint {
+						};
+					};
+				};
+
+				dp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-160000000 {
+						opp-hz = /bits/ 64 <160000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-540000000 {
+						opp-hz = /bits/ 64 <540000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-810000000 {
+						opp-hz = /bits/ 64 <810000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+				};
+			};
+
 			mdss_dsi0: dsi@ae94000 {
 				compatible = "qcom,sm8150-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
-- 
2.39.2


