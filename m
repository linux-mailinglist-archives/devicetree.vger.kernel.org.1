Return-Path: <devicetree+bounces-221479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DF2BA01E1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:05:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB41D384ED8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC8D3019BE;
	Thu, 25 Sep 2025 15:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SlDC9D/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B8D3002D7
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758812587; cv=none; b=WGc6vuDYEjb31oVOowURFjNsVDX9s5+dzg45skGtMNSiHGbQk6KOwkVJkh4VX00S0HtyxaRoR+aqp9r7Ba2Mg4627sGp4jgfjqWAd6JdtT+q65qH1ZdC+z6Rmf5LH6F5MtM4i1okXycRcykAMxabBw3vVtzWnUCh5SmBuJErsr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758812587; c=relaxed/simple;
	bh=cll6RmG9F61IQLZj7T9DX3710/Yd2WMaGJPdyftpPfs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TlWHdIC2YpPJXUP25R11vxo8tXteoAYcmltdke98hvoHUgD2BxEIu3MBCefjguH1DJl2t6qg9IhfFOqCOgVFrqrfHek3rbUMt2weYqhHW3cgs8h5YxRuUFxag1DuCiFkNAtFumFtWc+MIFP6BzSYe4RASv/HE5R7Dch9gwm5+eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SlDC9D/G; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45dd505a1dfso6101425e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758812584; x=1759417384; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gi1eRdEJXvClWuxUZuRxNe+R3NGOl5GmdU1BbBRBpBM=;
        b=SlDC9D/GgadHo1LnIYw4pMRoBt9X/Ph/GubzwlWsaS1lC3oty+zBiTfHfVS0EkrXGS
         8rwOXUyoUwCr7w44bh5Lo6RCtazmsl0/TgsTM/f6BSgKaUFv0BN9PTUFr/G6AbqkvPsd
         1IkcbjVsfkYt7HAYZOpSvW4f0sl+AIqN2ojFtmFHzLnISRFr7X60Hmfvr7nihSnXXdxD
         s+KC/TCqI6tOlQhRXajFhbyd7ai69MmRtf09dUsmwP8XQn55Zp9+AtvG/HdDFbZ3orjv
         VuBwfRnHA42ylT7ceYn0n1uSkNkYnJgbK1Z2nrUQHUJa+yj8x+dzNsRFbO9aULkJbjL8
         KmLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758812584; x=1759417384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gi1eRdEJXvClWuxUZuRxNe+R3NGOl5GmdU1BbBRBpBM=;
        b=VpJToR1KW348eMLVl6c1MPFOqNjQOuhQRIVLF0PTodUHWujRg90XVamI2MqiUv7W4U
         YygdF+bpCxS4j3Ow5bP/CWSbWSsdCWNe/sZkJjYisHMfpPJznt7WvDd75HzkFhP90qSz
         hGhVdRjtipPemfY+XuEskmJYzVfm7FgdhfOf2cGJUeBFPYAbvqqb9nyTmf/u3lIcWmJU
         jfWpNZlTPbiv+mlSae8ktN/C1AxXQGyWuS+AE0Kv+vCRJkYKZPgj/EpuaFJsygneKyq5
         Q7sPcH44qFF9MBV/uaqHW+3iQdJ69XslQxTHJw5Pzfjr4x0p+UTHMLwaY3uAAcc3/IfO
         /2rg==
X-Forwarded-Encrypted: i=1; AJvYcCUcP8XmxiT6mVct+FG1ojWS81vcCs46e4ism/JWTon0bjcTsNRqfDIFE3d2iXw6FSBdCtUgLWgPVIMk@vger.kernel.org
X-Gm-Message-State: AOJu0YwaGm3Ox2RI9LFCMGi/TOMQ7B5WpK5kGUp0dTtfQNpQ0BoUx1IX
	qAAKhojsv/lqhpZBqmT9zG0ZPJ76nzLPnyeASoF12FyjJelRoUcD1hDYkGMuS7KQ5yc=
X-Gm-Gg: ASbGncsltxLr0Im0QkoWldUCmvZwU108J+vla+vw+UgyFKQBWaeKvA7miar8lI1gJQm
	W8KhP/0AxA4iCKRJ/ERLgr0SWCAXoQNc7GnkcxJ5Q1fj7YBvkf7Lq2EFM5zJy3M+vHCFiyEZhcK
	ylFdsq93E3kBStw9Clxcq3AN1V38mbGsJ8Bl0XWXEinkz9Iaw0C58/3pJJ8c8lqjNS66YXdCLn8
	s0XTYTnFiiELawG1Qp1ZjKwdYMoivbsEQpfqqLBskKs6M7OsgHegnfVAfLCLgZNo38xbwlLMmfM
	NjqQVcTzQ5DQp426XbPYx5A08a5fsYyxHEHoavz1ATnjpVy/7okEGnjHCE0TJ4EXW2n5lwg5kjI
	jbSzp8LcX7caV5HVAEc3gjhQ=
X-Google-Smtp-Source: AGHT+IHpQ2Hlf4I/dZJBfR8iD59u34OSBItelhKA2bMauRgkdeoQK8uO3/8gWRsk3H8mPhYfGYaldQ==
X-Received: by 2002:a7b:c5d9:0:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-46e329eb0cemr30624345e9.18.1758812583797;
        Thu, 25 Sep 2025 08:03:03 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33baa625sm38516575e9.7.2025.09.25.08.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:03:02 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 25 Sep 2025 18:02:49 +0300
Subject: [PATCH 2/2] arm64: dts: qcom: glymur-crd: Enable eDP display
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-dts-qcom-glymur-crd-add-edp-v1-2-20233de3c1e2@linaro.org>
References: <20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org>
In-Reply-To: <20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2567; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=cll6RmG9F61IQLZj7T9DX3710/Yd2WMaGJPdyftpPfs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo1Vmh04RbXZfHn66jfCKGqelW3BhZqin/x2fqj
 MGblcfCtoOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaNVZoQAKCRAbX0TJAJUV
 VvoHEACNfmHVNfwTzSIdYaujbmfiD0TEAcMYhrXSgnY3tWe9PasX9h8T5BnzPZsz7JOwK24N4x8
 KtEZ3qdPx7GCp494+BA/uiklxxDGiQLpGaTD0+lvDSxaDyF3raFA+3BTe+3FsVZG4C7fwepH5fr
 cScUobwBfjnj84vvnSJjqGY7hY8+VpTfAtVz8BWAobGK9gf6jDGrOZaiZT0loCs/6oTCmmOunXH
 5Ui8ulOX3UDA5e91Jj3x3Pxfv2siBA9J+92WT4F/kPWURHeal2LKnhIaVALKGJAcmNM376j01NB
 RGRSciuwYXPcG484lH6Kl5KxSZ0SskxgFKVBqX2Xe7BEQBejDupPGBvREY0InZ2kwif62jlHVc6
 UW/0i5MWJBwR4BEFTKjeHZt4XCjalKjQ6BzohEgkHKmr2Xfmh8u8czGNE6BD8M6k9tI6862Tdbj
 RQugZjLLiCbgCsWIqA0ThTPMLzuLqGUYM+7ldtv65ayjGlbNzyeUpuVbw+QjE3T4Cwsa0cYIYMh
 PiTNgeWtrTLUF5liuln/1NaTPDclGoyGRIDG9oC3k6vAW8AlvNnMPDvIzLzWWb4Tk+lPfKnqhJv
 icuwlJQt0/2kQqkJrgk+Mm6NAyBBqfuSHw+CtYA7jngJNym3Ru+jBfBuSlIGFt+7pLP17pa8rVp
 dWIYw97TqzRfNnA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Enable the MDSS (Mobile Display SubSystem) along with the 3rd
DisplayPort controller and its PHY in order to bring support
for the panel on Glymur CRD platform. Also describe the voltage
regulator needed by the eDP panel.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 76 +++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 17c8f1a4f4061303982a210b7690783c96ef80b2..1d7e69a27612aea3bfdb2eedad48d8bdb9e7dc8f 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -172,6 +172,22 @@ pmic_glink_ss_in2: endpoint {
 		};
 	};
 
+	vreg_edp_3p3: regulator-edp-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_EDP_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&edp_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -536,6 +552,52 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp3 {
+	/delete-property/ #sound-dai-cells;
+
+	status = "okay";
+
+	aux-bus {
+		panel {
+			compatible = "samsung,atna60cl01", "samsung,atna33xc20";
+			enable-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
+			power-supply = <&vreg_edp_3p3>;
+
+			pinctrl-0 = <&edp_bl_en>;
+			pinctrl-names = "default";
+
+			port {
+				edp_panel_in: endpoint {
+					remote-endpoint = <&mdss_dp3_out>;
+				};
+			};
+		};
+	};
+
+	ports {
+		port@1 {
+			reg = <1>;
+			mdss_dp3_out: endpoint {
+				data-lanes = <0 1 2 3>;
+				link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+				remote-endpoint = <&edp_panel_in>;
+			};
+		};
+	};
+};
+
+&mdss_dp3_phy {
+	vdda-phy-supply = <&vreg_l2f_e1_0p83>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
 &pmk8850_rtc {
 	no-alarm;
 };
@@ -570,6 +632,20 @@ &remoteproc_soccp {
 };
 
 &tlmm {
+	edp_bl_en: edp-bl-en-state {
+		pins = "gpio18";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	edp_reg_en: edp-reg-en-state {
+		pins = "gpio70";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	pcie5_default: pcie5-default-state {
 		clkreq-n-pins {
 			pins = "gpio153";

-- 
2.48.1


