Return-Path: <devicetree+bounces-73230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEAA8FE488
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 12:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D21321F227CD
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2976619581C;
	Thu,  6 Jun 2024 10:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sKGI3hRH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513731953A8
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 10:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717670534; cv=none; b=fLbTT68O5A3oO3f+2tENKFDKWxHICsUrk7oA9XrlajandScIZRLphprFSP1v6PswV1sSA5BZCXPSzzCW11ustaL7JGjJvrFjxUtUyM/SVpaifhEjbbea8IYsbrhdzF0j4TBM0zP9EWxEChTji7GXeTPi/pVc7WPmFF4NgJ35Py0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717670534; c=relaxed/simple;
	bh=aJ9OjcTgat+F6sTE/hsja9zDEG32gQvtNbnEwIjisvc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QDStyykro7/A2QS7dj1irQ+N1nWSviIKHeGql9ZUfPFmdkpiXXW71u5dJucWw6v75TO/2SUTkkbH2JnGFB6gSfdNtc9a4AjwnyzDKddXK+RI34u22NWA0I2iu3oZyolv3qayWJYDWLzgexFUVKSgrksxP0LEIPN3AW6Hb0OxDb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sKGI3hRH; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2eabd22d3f4so9224861fa.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 03:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717670530; x=1718275330; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gIJHJCpT+527V6EZcYZp/w+XcLy7CxaeC7wb+8Py1Zc=;
        b=sKGI3hRHReZa6DjRfP8HILrfE5t0ikaJj782vmKFhpyJt0SB/2M7YQ24jz0PJHbiie
         nbo7zNT/YsW/fqOdhhFE4r0nDengMESXiv0iulB/eZ6szMrQ5pm0KoYAyVoytWDB9Y46
         Os7qObbLloQ5u3sUsviW3LWh6gVNUSI+tkgY4QI1MoiBeNul52E0CYWzsI/V8iM6Rage
         GtKqYpkeuEWV/Ggn3FKumguUtDeWIRROwLxNjcjK5gfFM7wQF16HZQKiNdMgaGE/95ae
         8gY59lBNEx9ob4hiwkA/j/khDjwnfAdC3XUbgg9VO3ofEDhAvqlj3vdlNoWubmDTKklr
         ez5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717670530; x=1718275330;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gIJHJCpT+527V6EZcYZp/w+XcLy7CxaeC7wb+8Py1Zc=;
        b=bKOKgOLsF0sXZG4Q/YRRzta+fTENYUy0vWHY5ItaWUTUULkeSmgPME/j2XxHmcBYJF
         yXIwqjdTzMdmavymZyZuU31qrA9DMZ75i/it/GvMLWve61mOwF8II96X5bpJUvqkpilU
         zusnVasUA+HuKHLdKWPdwAaiSdcx0xgO9BD8ngAreSxn8TOT3MnA+ABh9PVPGePB8Zjd
         sXwq34Ueoe3IT9rlyebvfSZRLMiqw1xWLu+DU9elXzwU8xIOGDioIKcJoNazp7WpeIZD
         +7v8G8jZaSvd5G6+Q3JYgITfrmx5DoT37j4ReS+yJBrhPVoPWBs1RDns087ynk2Dx0U6
         C7Hg==
X-Forwarded-Encrypted: i=1; AJvYcCX0779P6vSop8oIAMXtrG1dNZby4oCdNif5q4MiVQeq2FbYOG2DlnGH2w/cE5ivTXTRgiIyVFYT7/segXWVNjx2JcozOirjWKPRpA==
X-Gm-Message-State: AOJu0YxBo1AJmqoW1jKQGlDmR+B4UnUGGgeoSTYcdUWosK0J/2tS71yS
	JC408xiwZA7ecGzMISGOAThaf08HvbC0UAfE6sOzVNAurWr8P2oF1c0FlJ8BlKw=
X-Google-Smtp-Source: AGHT+IEs4nyIXOwiybt87yuy7bldf+hQUEp70WtOT+9ymEQUzmQMAfNfoUNzWpQZjWSvXpoI66m8cg==
X-Received: by 2002:a05:651c:1028:b0:2e0:c81c:25da with SMTP id 38308e7fff4ca-2eac7a09e27mr30904201fa.30.1717670530235;
        Thu, 06 Jun 2024 03:42:10 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae0cc36bsm871477a12.26.2024.06.06.03.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 03:42:09 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 06 Jun 2024 13:41:54 +0300
Subject: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-qcp: Add pmic-glink node
 with all 3 connectors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-x1e80100-dts-pmic-glink-v2-3-972c902e3e6b@linaro.org>
References: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
In-Reply-To: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3442; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=aJ9OjcTgat+F6sTE/hsja9zDEG32gQvtNbnEwIjisvc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmYZJ7DxpONl0Co5WG2H3c4LtBBfMdHpyX2Drqo
 B/lDPAenI2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZmGSewAKCRAbX0TJAJUV
 Vq0iEACgpJlxfXrSiB0ReWnhOTCez4jdHpNYc5vUP48qKi9S3bUcGS2Ut4tlMpu2/OiAO7/Fn3+
 +T6GbqLQl2+G6JTmRHwAtR0hys+Ab65Ewvs4Tuzm17s8E0fa0CSN4L79Wuy/JcqnLQEgYhmnd6u
 /DiT6HjL3pSkAB6O8mCimvfZaaz4nu9s0yDamClTn/d5PbfixtzdsSqly36nKqJRDNRuoA+wzgy
 ikdLqtbiPnZv8dCrKVfNy6T5rSX0h3uouefKvVPSY8FkzW7sPodUWJkBdUTFXrvp4GnsIXuC2lk
 /XAEc0uI6C/GFD4KMVb8sG5vulZ7MqkETpZLGb5zOWhwKLhYUHJ5Aq/L1WGQd2sQ3hMPm5L5JQz
 Flso3DU5olvDDgdvrB8AwF5UDpy3k05JfcbG+Q9OFUHSCltApSfvFFnZrQtz0osZKL2prUoP60p
 c8niBI0VX3V5RMorn+6keNEHaSEjUq4lNsSx2b+Bnp7FbD/nrkvo2c1t3lWkp/kYlg18ntfpIvT
 J4T0iV+nzW5y/QXWcOwEX6rlARUrFAnQrLWOvMy4nXzTxNujGOnklEq8b6TAnYKcoyK+ZEpaKSw
 +xAqcheN0iQBwlilD9/7YHnWCjkDiMl2WyP6f2Nr0oPrxwXCTUU0wwuwei8+yIbSCvetCfacjtB
 +r58ZKLa7dWm1GA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the pmic-glink node and describe all 3 USB Type-C connectors. Do this
for USB only, for now. The DP ports will come at a later stage since
they use muxes.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 119 ++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index a8d0f743228a..e021af54e643 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -23,6 +23,101 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	pmic-glink {
+		compatible = "qcom,x1e80100-pmic-glink",
+			     "qcom,sm8550-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		orientation-gpios = <&tlmm 121 GPIO_ACTIVE_HIGH>,
+				    <&tlmm 123 GPIO_ACTIVE_HIGH>,
+				    <&tlmm 125 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_ss0_hs_in: endpoint {
+						remote-endpoint = <&usb_1_ss0_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss0_ss_in: endpoint {
+						remote-endpoint = <&usb_1_ss0_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		connector@1 {
+			compatible = "usb-c-connector";
+			reg = <1>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_ss1_hs_in: endpoint {
+						remote-endpoint = <&usb_1_ss1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss1_ss_in: endpoint {
+						remote-endpoint = <&usb_1_ss1_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		connector@2 {
+			compatible = "usb-c-connector";
+			reg = <2>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_ss2_hs_in: endpoint {
+						remote-endpoint = <&usb_1_ss2_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss2_ss_in: endpoint {
+						remote-endpoint = <&usb_1_ss2_qmpphy_out>;
+					};
+				};
+			};
+		};
+	};
+
 	reserved-memory {
 		linux,cma {
 			compatible = "shared-dma-pool";
@@ -611,6 +706,14 @@ &usb_1_ss0_dwc3 {
 	dr_mode = "host";
 };
 
+&usb_1_ss0_dwc3_hs {
+	remote-endpoint = <&pmic_glink_ss0_hs_in>;
+};
+
+&usb_1_ss0_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss0_ss_in>;
+};
+
 &usb_1_ss1_hsphy {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l2j_1p2>;
@@ -635,6 +738,14 @@ &usb_1_ss1_dwc3 {
 	dr_mode = "host";
 };
 
+&usb_1_ss1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_ss1_hs_in>;
+};
+
+&usb_1_ss1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss1_ss_in>;
+};
+
 &usb_1_ss2_hsphy {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l2j_1p2>;
@@ -658,3 +769,11 @@ &usb_1_ss2 {
 &usb_1_ss2_dwc3 {
 	dr_mode = "host";
 };
+
+&usb_1_ss2_dwc3_hs {
+	remote-endpoint = <&pmic_glink_ss2_hs_in>;
+};
+
+&usb_1_ss2_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss2_ss_in>;
+};

-- 
2.34.1


