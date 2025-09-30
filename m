Return-Path: <devicetree+bounces-222680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A25BABDB9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C2741C7DB9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35F1A288C12;
	Tue, 30 Sep 2025 07:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iYZtEVSt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0792BE051
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217998; cv=none; b=TxN+Izt1eBuXQS4eICZugOdu9ZIHk/pnX5QEnWcmck1Jl8fwNCLh1546zSsbjPTETSIVVkvbzaZ8QYEmlQF3flL5wWRrf3mIGj8H/64uAYIOv66Zk8mU2RENRosrAC7YV1uEljN6LazfmpSYsM4Lw2kwUO3iUXvAbsam1bFR+xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217998; c=relaxed/simple;
	bh=4u/xRvsm43ERIC9SDhDBDVZyzLfWUriP1xNe0S9I9zU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bAa2JW9QiyAbyRl7G5FLnvVuEUgTzK53x5lqa9UTw2Y9t2yfiLD4+U3WG0bMx3ERt8NcN9AQyDTUuOeNM52uRhKJLejubm9/3/YLFNl4uqb4yQfovoj0kHmDOLART4r3ifOrdO1HJXSow1PaAIj9XxJ/EFvesitV1jS5QRONR2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iYZtEVSt; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-414f48bd5a7so3593106f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759217995; x=1759822795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w4/5+2KyLFZ3ZfJPaqaIqqrNGfnS2dbwNYpzwCpd1bQ=;
        b=iYZtEVStWhWtTfTve/5NnBpxEqgrOpco56rUNs64p4WnIZI/7a9b49tiTb/6SvANa4
         gen2OQgGTi1z8hHrEP+ncoOkCt6pf8sAVZQrf/P7s51KoLVSmC2zYNM/IpaiLxLOcqK5
         8losdHQfGKrqeKwGmpFL0wmWGOtV/dv6M8tTuJre93N1lR/3J433m6VV0RUFGVu0x/jy
         491cTJZQaqv5lWueCX0TGQ4bS/FIqbLtpq52crXzV/8q02NUchJteqxJ2KIjawJHznSY
         XPhXkLVeEQlij60zXL+8+3EqpZVwYmxetqYMLJ7er6NLP5q7ONrLQDGvfz1r6jIdWnnr
         PAUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217995; x=1759822795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4/5+2KyLFZ3ZfJPaqaIqqrNGfnS2dbwNYpzwCpd1bQ=;
        b=AHOcQqk23ra0PPcWYK0RhY5bNRlde/JeuzPWBnabJ1KVnPXq1/P5jD5glKvEM+mPD0
         5efYasuCHrMhnaYlh6xU6ClQiTAt9M5nUygeZBSxLy7tkqqXsL3lmUwMl0EOrUL0CqWY
         RgZ4YNcR37I8AajWS7OjHJqoEtYtqybDdZqrC+8PkJecqyqNRwjm5gIuMxwKd2oDAz/M
         GKtrxSeDkRgWUD78dwb1quC+DuXXDVPASKRKl0m6JLDw+I5Ink/U+x2G1JRFotEz8pgV
         iy0gHq5Bfcwdr8cYZaYGm1MnOE46mhEFzCp/A1AyBP9ex40PPlhGJLM4tYEwRc1Va8g5
         RLrA==
X-Forwarded-Encrypted: i=1; AJvYcCWYKKCY1fQuwbPzEjKtT4SLXT2mc2ks1byzsJ17ENpv9s2rNJa2k2uHtB5+gpws2aC/ycFVSzUWrXt1@vger.kernel.org
X-Gm-Message-State: AOJu0YxDWkJQVYeNwCMxdpDo5sGJK7MSRXYxacCCLpDRk5iY1SiN266g
	V51LWh3Q90bgmmBUMvihYXCQIwA5e35gNd3tUTbQZM+aw2eyNDkzThdNR0aXKgqHdEE=
X-Gm-Gg: ASbGncv6rOlAE63jeDYdtAI3uE4VhVs1yzoOs3eCeoTICHilX2PVGnP8tR2f/GtvnoH
	+PwoJOMoUmMiLvWiWoDkV+aUgo5iA/Em18zFuhGiMM6h4qd8s4i1qjFgLA4gI1NjgB32RaCCZ9w
	GEjtVFvVBDwHlKkEIeQd1mNLWJimvu/dem56IB3O1JtPYS2h/J0fMhZ1dZoU2OXXQbU503Jb6eg
	V1YWA+ll7cdcmOWKgw1k8WwJJC5NZF+KNhs6y+8ctKzEzQU2SUnP3/BlVcXaxuw/oeI0o0+QoL3
	dbgkUVPmLkv0sNwrWjU206KIl3TBPKh3xZOZHiRnpOYvAmogEmeS2lNga0ULWhg08ZyI67lt7tM
	cH9A+YO5N/5afVuh1OL0PXGdbkQf2lzXRIRDbaJdZ1PfUBjPiirQJAH1X8GEGO901u+7pd6xFvf
	lqNw==
X-Google-Smtp-Source: AGHT+IEdY4kXaWrkpRUHd0zfnXpxz3G6OEB7NwckGjCQu01y/9rdMkD7WQVgcG3T62llFVeefNX+eA==
X-Received: by 2002:a05:6000:184f:b0:3f2:b077:94bc with SMTP id ffacd0b85a97d-40e429c9c1bmr14602664f8f.4.1759217994713;
        Tue, 30 Sep 2025 00:39:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5707c1e7sm44021125e9.21.2025.09.30.00.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:39:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 Sep 2025 09:39:49 +0200
Subject: [PATCH v4 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2973;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=4u/xRvsm43ERIC9SDhDBDVZyzLfWUriP1xNe0S9I9zU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo24lHJ7BpPNhok6jIjnY3wiCZ46nr8Kfj3b3N5c8v
 z47+RpiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaNuJRwAKCRB33NvayMhJ0Yo3EA
 DFBx0pl3oCucSHqRN7Qm1U0wHR3Mrw6+BYAhAtk1A/HcYdFsepg36+PknedLaizw79M3K0PXh2lXpw
 dgmIDxxlk3knPqL/zWBopJ2iX+kqOB/HlsnkdUFN2mN48HpVamGls2YrCQOcClYYB92u9Y//uhIqKu
 8t3+SGG4QfmVaj+LWHMQlaY4nIGFWbAMy5z11p8uMoC24jG/hPtGYX4xikPggl13YOtEHKOB3lAfIS
 ddu/43oiQaC4EdnQOllC4dm0BHcs6hAW5Hc3cR3Uf+DqctDr7XUVcZuhWSUMhrBg4eWfgEEGW6jgSE
 OaBCqDCdl4nqMTRVIE6VFQKxHD9Rx8vAUC6vtTlgJSaPeEdo7G3Ngfu4Pw2Zbhq6DjJhFiQINQ9bdb
 KmApOwOAoeTDT7gAD6BhoVShU+18VZ7oGdCloCe+IcXs+QY4MibB0Lzc+DJno5lmGBQrcC9YnjQGVT
 ehckPdxxDhW7yjTXX+xYDRqpkLksczg0KNybBoZkVhdOb6vdfG4RZ+QiCZjO5y8S73YieP/F1ICVCd
 0uRZT6RUXW+THs3+xIHMO7q9MSZGisa+PsjvUPqFyt+zwzxrPhUYusNbCSt2HSvCneEU6lj1AFJeF8
 e+63lppzSagEEacQH9sHARNXtmsfU5Wa4WW0fywrbKv1i/Ejv8jSlxIpYe0g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

Add all the data routing, disable mode switching and specify the
QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 81 ++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 654cbce9d6ecb61c8a6e874d16385d66e362e439..37168b6214b21ec51918b44cc400581ba8ca4cbe 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -62,6 +62,45 @@ switch-lid {
 		};
 	};
 
+	hdmi-bridge {
+		compatible = "realtek,rtd2171";
+
+		pinctrl-0 = <&hdmi_hpd_default>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hdmi_bridge_dp_in: endpoint {
+					remote-endpoint = <&usb_1_ss2_qmpphy_out_dp>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hdmi_bridge_tmds_out: endpoint {
+					remote-endpoint = <&hdmi_con>;
+				};
+			};
+		};
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&hdmi_bridge_tmds_out>;
+			};
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,x1e80100-pmic-glink",
 			     "qcom,sm8550-pmic-glink",
@@ -1028,6 +1067,14 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
@@ -1317,6 +1364,12 @@ eusb6_reset_n: eusb6-reset-n-state {
 		output-low;
 	};
 
+	hdmi_hpd_default: hdmi-hpd-default-state {
+		pins = "gpio126";
+		function = "usb2_dp";
+		bias-disable;
+	};
+
 	tpad_default: tpad-default-state {
 		pins = "gpio3";
 		function = "gpio";
@@ -1516,6 +1569,34 @@ &usb_1_ss0_qmpphy_out {
 	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
+&usb_1_ss2_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	/delete-property/ mode-switch;
+	/delete-property/ orientation-switch;
+
+	status = "okay";
+
+	ports {
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/delete-node/ endpoint;
+
+			usb_1_ss2_qmpphy_out_dp: endpoint@0 {
+				reg = <0>;
+
+				data-lanes = <3 2 1 0>;
+				remote-endpoint = <&hdmi_bridge_dp_in>;
+			};
+
+			/* No USB3 lanes connected */
+		};
+	};
+};
+
 &usb_1_ss1_hsphy {
 	vdd-supply = <&vreg_l3j_0p8>;
 	vdda12-supply = <&vreg_l2j_1p2>;

-- 
2.34.1


