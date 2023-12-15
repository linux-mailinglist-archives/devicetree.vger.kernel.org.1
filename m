Return-Path: <devicetree+bounces-25885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DFA814F08
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:42:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6C2E1F2530A
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6BD3011D;
	Fri, 15 Dec 2023 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uEBIgFuq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413D430109
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 17:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50d176eb382so1209616e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 09:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702662121; x=1703266921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jb3yyT60JxfN3wtZfqwGr6jtCxjpRC2WofuVNBbqItw=;
        b=uEBIgFuqPzfjKvP7GY3qWkFuXCQIE5PBGffr+b7YkRHeVs+4oD7jSXcwrlQJ0+qHfx
         vEtY80+nn3nNxsBWY2vS9EqbLRm8DnVidFx5pa7la0MYTTZZXtZvqIaP2i8zNmJm1hDP
         o5g9eYgfhHUl4bV8STk3ny4bfhIUMi4FSpBrcwZqAM9BkujMBPI2KwFSr1+Ktx/fBz0v
         wKpu4vWx/CnHcfP4LHfjZf0LxGicaVXMveB408RjgN1kHRNpPC0O5Gmo0MgQRN7GiN65
         h2PW3e8V1So8MgAHPUWiS3NlekLA9wgIz+gp+iZn8wDJcT4UkggUNVjEXyCX1U6f0CMz
         WQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702662121; x=1703266921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jb3yyT60JxfN3wtZfqwGr6jtCxjpRC2WofuVNBbqItw=;
        b=g1OTX+4N/J/cXjIM7yFry1MkFvo6rA+QlnNPIuZ6hFrZMi2WXfjNHkoEwEk5HtwsTT
         Ma78lZ0+SQHi20QFFthw+nhCcTeR6I1AV4r8z49JVotm0pxJV1UM6Mo4muO9sxKSRpX6
         wzAqsMqE1EmMHsv2iTJTu58HPhyLV7zgST524ttXysiIqs5WD5JKlILS5W1mrTD8oPU0
         HyQ6AMTjGaA0sMV+8ISah2hjiOwJHfslogXft1EmRDFRQ11RRO49XTIk+i8F8x2sp/01
         5JcRalfJToHX9G2unX3EM39H8zz1IofkWl2Z+3dKrQTcdZcpsrxAFvRAPP2R2czSqiS4
         71Nw==
X-Gm-Message-State: AOJu0YwaF1VaW/+QHy+ZyfqM+YAJpuOjyzNBl9HRhR5vSAFZhYaZ0vbO
	mFGba2pK/iSdFNddgS8TOXkqmg==
X-Google-Smtp-Source: AGHT+IG+QLXDAXKKgY6LgrZ851rUXPmXG2u94e0dOIK+um/QxLnD+u3sgh5+dYP4UwoEbHFk6s1aSQ==
X-Received: by 2002:a05:6512:36c4:b0:50b:ffb9:7a4e with SMTP id e4-20020a05651236c400b0050bffb97a4emr5039637lfs.46.1702662121338;
        Fri, 15 Dec 2023 09:42:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (85-76-13-188-nat.elisa-mobile.fi. [85.76.13.188])
        by smtp.gmail.com with ESMTPSA id c16-20020a056512239000b0050dff5bb793sm1389263lfv.143.2023.12.15.09.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 09:42:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 4/7] arm64: dts: qcom: sm8150: add DisplayPort controller
Date: Fri, 15 Dec 2023 19:40:36 +0200
Message-ID: <20231215174152.315403-5-dmitry.baryshkov@linaro.org>
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

Add device tree node for the DisplayPort controller and link it to the
display controller interface.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 87 ++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index ad03ede906bb..0a002ac744e5 100644
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
2.43.0


