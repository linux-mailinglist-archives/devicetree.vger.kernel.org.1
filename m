Return-Path: <devicetree+bounces-54154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE09188FBE2
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 645AA29BA78
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9E67C6D4;
	Thu, 28 Mar 2024 09:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="uezifShB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ECF6FE07
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618989; cv=none; b=cCE4GOgOCAFz/6qmXRuT101a9iH2vTdKG9NhwZs//UYjUpqdE0RL3eYOF92BX4W3lQbd41LCpWS9doOGi8ajiFejfyuZkFO48SGvjxTQvJ6VwjUhIo9iCNBczfEYbIBF5HP2dO4FolEXdqb6kAwWIROCu/9boEafHonL8s3TwNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618989; c=relaxed/simple;
	bh=jS0gUBcbIu+ubLTGyGNXFxfk5voz45VrMtkV8CJFN7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TFsHsSL/trt2FZEchLyVk9opL5pmUzJwN4TA18s4wpqX0sO1nDfeuBF0V8XPMEnXTuMjFQEsMB6zMLxLcKpNuPLvjZoQyCdruc7+C2uotzmjA56HJPqXv2r3B0KXXw1DIQ3xqXuGlTMqI1UwVAI7KJVPX2sBHdc0MnFBrY2LrRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=uezifShB; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56bb22ff7baso803530a12.3
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711618985; x=1712223785; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mMlfiDzriuD+cu/wjObegNb+/syb0i9il2tTyX7RS7Q=;
        b=uezifShBlSM/+BjlXimMZwxeD8ucKhZm8FeO91hzzezNwdmiZ7etVOTGla0/vJMZKi
         5ffhpDGXPT32GTrpkRuh1KHHYstyGVA3lZ9iPz3UwlR2J5+E3NgM1O2ApgVBBnnEQkgt
         DUKvSjBJjZiQdcPVZ4JLJtwhtMr4fWT0N3FAKD6qUFEG+Ivtts+Jnc74L2LHjOgd8ZJv
         6VBhjvq4G/QQwBvG6sbHMlenZJa0IKj6eP8ZiZQIM7XVWI0wgX/UGbokgPsIdtg8v70M
         mkJYAwNDDQOd0px0nYCegZpxvuRI3usYiBMzxVSNukfZmN1qzOEiHAvwIbJBcd11bQ6f
         SYRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711618985; x=1712223785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mMlfiDzriuD+cu/wjObegNb+/syb0i9il2tTyX7RS7Q=;
        b=OK+/cQFBQP5unw6e2nL2X7wpmzT5JEbYgCwlVOwM2ZSYCkH/YxcCAUydUNfsKzRut9
         mkB7B+9lnls7KPRoY5r9AuoTLo4Qs+06YbOcGkF0OjG3Bk/Y8xed7ok7nN0AhFWRnfx2
         0dD48ckHSqJcxnwa3aREnV8OtawLmZmSq+udRJmqsYZW2fK3mucy7AAqZOWXELtOOzAs
         uIFAeTnwdw5VV9TH4F0Z9AXwajIA2MEum6t4ygNmTY5UUU+4CJxQHibRlSF4x1HkF5DO
         KvJsQ39tZIHJCrJk93LXjfb2RqBZ7vuMZ8GD3AhyQ6EAFJMy0unHEy1B6PxT7GTa9rlA
         2ZJw==
X-Forwarded-Encrypted: i=1; AJvYcCU5KEJS0khlTPSPvYvUOmo+w4/c3LM6cXc5s2CmDmb5Q2cL+E8yX1sW7QDT20iX8Uv3AekLV4YnDecD9NBvmjJqYjh8BGDyShnsJA==
X-Gm-Message-State: AOJu0YwSdkq9c+9YuTigKB3rijWBIjQMHhqSQX1qHGG46+TmHj/BDj0z
	/aqBSqGUZh32tiLHAPhdEjoWwdh/ZD9PNvOCEXZam/uz+PTSKN2xylCoa9jkkic=
X-Google-Smtp-Source: AGHT+IHdcM/mh0t3Gi4q9lyyrXi7Rv7pOtysjwB3fu9r0BHc1uHuutv4DERQBvDamLZ59FU09Yffcg==
X-Received: by 2002:a50:9e65:0:b0:565:7ce5:abdc with SMTP id z92-20020a509e65000000b005657ce5abdcmr1494032ede.10.1711618984945;
        Thu, 28 Mar 2024 02:43:04 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id l2-20020aa7c302000000b005645961ad39sm631362edq.47.2024.03.28.02.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 02:43:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 28 Mar 2024 10:42:46 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm6350: Add DisplayPort controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240328-sm6350-dp-v1-3-215ca2b81c35@fairphone.com>
References: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com>
In-Reply-To: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add the node for the DisplayPort controller found on the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 88 ++++++++++++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 24bcec3366ef..d7cf4b5ceea6 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2033,6 +2033,14 @@ dpu_intf1_out: endpoint {
 							remote-endpoint = <&mdss_dsi0_in>;
 						};
 					};
+
+					port@2 {
+						reg = <2>;
+
+						dpu_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp_in>;
+						};
+					};
 				};
 
 				mdp_opp_table: opp-table {
@@ -2070,6 +2078,86 @@ opp-560000000 {
 				};
 			};
 
+			mdss_dp: displayport-controller@ae90000 {
+				compatible = "qcom,sm6350-dp", "qcom,sm8350-dp";
+				reg = <0 0xae90000 0 0x200>,
+				      <0 0xae90200 0 0x200>,
+				      <0 0xae90400 0 0x600>,
+				      <0 0xae91000 0 0x400>,
+				      <0 0xae91400 0 0x400>;
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
+				power-domains = <&rpmhpd SM6350_CX>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
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
 				compatible = "qcom,sm6350-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;

-- 
2.44.0


