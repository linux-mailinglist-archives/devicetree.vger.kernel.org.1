Return-Path: <devicetree+bounces-130276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE8B9EE770
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 14:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D42B8282896
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0A82153EF;
	Thu, 12 Dec 2024 13:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GsQjTLrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037F02135BE
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 13:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734008931; cv=none; b=Gvb7v5uUaH4AP8A1DdO0IVRXdkTx+mThUliudb2Hvjtm6Oa2MRs2LDGT36ZK4rECS9LD6APZasKpw1Z4jUUzQKu9ab1ceIaaX2v6oDGIibH1b+4qjSkdUnTOLaOySxqkru+2zxP0KisfIlFM/pLFe5uIdeEk7pqcPEwnUoCVMBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734008931; c=relaxed/simple;
	bh=VtMKVUgiuFNrjD+MOUtkdFqKPINjhq3zvD6DSKRrTCQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cy4vbYqzwHytq16z8FYTPusFCfzoynysK6moeyEc1DPxFDzYVLlb8cFKMsrESnhEN3kLwXC/ayxWGqHDsCkDdOEfaVU2BFtljhzTULMtkdYt9813PSvg/cUG2h8XOrPXcfPnMKrYlAWIvXr6NruZqYYRGhWazEuM+wyE/iy+ZOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GsQjTLrg; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9a68480164so84237166b.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 05:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734008926; x=1734613726; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+CFAWmD+WHNtDn2sWiPUE7SCXR+4z8SWkq0gx9HvZo=;
        b=GsQjTLrgU+pXR8S076PEqRG1O/s9YRMYxrkj4sX0v1AHUE8v9GnuJgRhcBVTYuGnzV
         Qd1u/pqY9W+FKyVI7smCOS2Q1vfi/YBmuBPwgOGizBHu24wAFZFM78xx2zAAn55oewPM
         4KHwegCb5p8nbfeQY0fHvKxT14zMoh7YTMI8tgIX6mdeRUkWRqB07vwHrQsIoghMBhGs
         V8T9IajlnnqokC0cAXO58HW6nGoWLhq6WUvIPv2DdV5aum8m/euPe976Qsgui/iwh2nx
         jleCgqc0JOgP0+73f2YmZ46we6NLpb8QREaP5Xhjtk+yhbKew5JfcIln6PlBYWSXNruI
         2HlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734008926; x=1734613726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s+CFAWmD+WHNtDn2sWiPUE7SCXR+4z8SWkq0gx9HvZo=;
        b=Wlc2oDNOWHO2lLW8dN7BTi+eu+n2Vu5ppamLiqBGL17z5KLbYbq15g2fOJvXsCOWBd
         v5bcP817wTMWwWnFpion4ppy0O5nwlyo5HI/Yd6ZpJ0LQgQVYCN91E9aWBisSroPsJQY
         UexJ0IqADTsOmrjDY8xaBx7/J9xhQvWvjP4w65nIba7zAWQa0jEJWdBmijTVGhxrH3Jb
         R+QmsHkk6LaK7CB4Sj+mkYy9lVVWImeWEtQGiY6HGhLI9vHihXEXwlb5GmI5hpMHGpiX
         K/N0QYWBLlrssJNJmDdbAaX5N8J/TKJiUvwcchv9kYWTy2sHQmmx9bMB5ulJN4A9CwFc
         br/g==
X-Forwarded-Encrypted: i=1; AJvYcCVUi5oeyxRI5fLyFdf/qzYpQAK4DL3CwyZleHGiP37/XyI3D+GgAzDIOgH7blYADL9yoad91dHgoRRm@vger.kernel.org
X-Gm-Message-State: AOJu0YyrWRNvsJzZuO5wIVUNaIYirVJTOr5tniQi328K2ruYPkAY/+K/
	iD9FWKhmu2POkzCx7HxoZLUQfTnDE1CTEA0+Ke0iXPHE+cA8JOJfQkICrf3JqUQ=
X-Gm-Gg: ASbGncuyqVFJTJv6r7gyvzXD8RO4c/XcxR4AtBkvAJDPNXkw20hlG20aoR5pDnWCO8u
	rZpL3qsCIX1fIJgvEi3BcNNcB0fUAjOpqVDK2g7BqG8XQRq9P9LlDj2hV8eBn1/z7nqWws59SKP
	/mGKUo3X1LDk/suL0Xh2EErV1sr6QQtdVE0C+pq5V1RtezEOlVS/4wy2vpZl5XsgOBY10K86K0a
	iInlJQ2eL4Rlo7+BWtI4R3K+LRBoz+lYMXhaN6E9Lu/JKA0dsZrGhN+y59iweiBDWC7dw==
X-Google-Smtp-Source: AGHT+IE3enyxAZVTqzPEUAe7qjEY3Y3tdXWOW27/BAvY2zKNMjeRl3maRC1dSdmgDBrCWszACK6JCg==
X-Received: by 2002:a17:906:1da1:b0:aa5:2a57:1779 with SMTP id a640c23a62f3a-aa6c1d33ccbmr351498166b.59.1734008926316;
        Thu, 12 Dec 2024 05:08:46 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:3c0e:7a2d:e7e3:9cf8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6845ab4absm605843366b.73.2024.12.12.05.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 05:08:45 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 12 Dec 2024 14:08:24 +0100
Subject: [PATCH 2/3] arm64: dts: qcom: x1e80100-qcp: Add FSUSB42 USB
 switches
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-x1e80100-qcp-dp-v1-2-37cb362a0dfe@linaro.org>
References: <20241212-x1e80100-qcp-dp-v1-0-37cb362a0dfe@linaro.org>
In-Reply-To: <20241212-x1e80100-qcp-dp-v1-0-37cb362a0dfe@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Unlike most X1E boards, the QCP does not have Parade PS8830 retimers on the
three USB-C ports. Instead, there are FSUSB42 USB switches for each port
that handle orientation switching for the SBU lines. The overall setup is
similar to the gpio-sbu-mux defined for sc8280xp-crd and the ThinkPad X13s.

Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 154 ++++++++++++++++++++++++++++++
 1 file changed, 154 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 5ef030c60abe2998d093ee60a6754a90cd5aaf72..cc0561debdb0b5c89f5d7f298d34f1feaf183b61 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -84,6 +84,14 @@ pmic_glink_ss0_ss_in: endpoint {
 						remote-endpoint = <&usb_1_ss0_qmpphy_out>;
 					};
 				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_ss0_sbu: endpoint {
+						remote-endpoint = <&usb_1_ss0_sbu_mux>;
+					};
+				};
 			};
 		};
 
@@ -112,6 +120,14 @@ pmic_glink_ss1_ss_in: endpoint {
 						remote-endpoint = <&usb_1_ss1_qmpphy_out>;
 					};
 				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_ss1_sbu: endpoint {
+						remote-endpoint = <&usb_1_ss1_sbu_mux>;
+					};
+				};
 			};
 		};
 
@@ -140,6 +156,14 @@ pmic_glink_ss2_ss_in: endpoint {
 						remote-endpoint = <&usb_1_ss2_qmpphy_out>;
 					};
 				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_ss2_sbu: endpoint {
+						remote-endpoint = <&usb_1_ss2_sbu_mux>;
+					};
+				};
 			};
 		};
 	};
@@ -256,6 +280,63 @@ vreg_nvme: regulator-nvme {
 
 		regulator-boot-on;
 	};
+
+	usb-1-ss0-sbu-mux {
+		compatible = "onnn,fsusb42", "gpio-sbu-mux";
+
+		enable-gpios = <&tlmm 168 GPIO_ACTIVE_LOW>;
+		select-gpios = <&tlmm 167 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb_1_ss0_sbu_default>;
+		pinctrl-names = "default";
+
+		mode-switch;
+		orientation-switch;
+
+		port {
+			usb_1_ss0_sbu_mux: endpoint {
+				remote-endpoint = <&pmic_glink_ss0_sbu>;
+			};
+		};
+	};
+
+	usb-1-ss1-sbu-mux {
+		compatible = "onnn,fsusb42", "gpio-sbu-mux";
+
+		enable-gpios = <&tlmm 179 GPIO_ACTIVE_LOW>;
+		select-gpios = <&tlmm 178 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb_1_ss1_sbu_default>;
+		pinctrl-names = "default";
+
+		mode-switch;
+		orientation-switch;
+
+		port {
+			usb_1_ss1_sbu_mux: endpoint {
+				remote-endpoint = <&pmic_glink_ss1_sbu>;
+			};
+		};
+	};
+
+	usb-1-ss2-sbu-mux {
+		compatible = "onnn,fsusb42", "gpio-sbu-mux";
+
+		enable-gpios = <&tlmm 171 GPIO_ACTIVE_LOW>;
+		select-gpios = <&tlmm 170 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb_1_ss2_sbu_default>;
+		pinctrl-names = "default";
+
+		mode-switch;
+		orientation-switch;
+
+		port {
+			usb_1_ss2_sbu_mux: endpoint {
+				remote-endpoint = <&pmic_glink_ss2_sbu>;
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -872,6 +953,79 @@ wake-n-pins {
 		};
 	};
 
+	usb_1_ss0_sbu_default: usb-1-ss0-sbu-state {
+		mode-pins {
+			pins = "gpio166";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+			output-high;
+		};
+
+		oe-n-pins {
+			pins = "gpio168";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+		};
+
+		sel-pins {
+			pins = "gpio167";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+		};
+
+	};
+
+	usb_1_ss1_sbu_default: usb-1-ss1-sbu-state {
+		mode-pins {
+			pins = "gpio177";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+			output-high;
+		};
+
+		oe-n-pins {
+			pins = "gpio179";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+		};
+
+		sel-pins {
+			pins = "gpio178";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+		};
+	};
+
+	usb_1_ss2_sbu_default: usb-1-ss2-sbu-state {
+		mode-pins {
+			pins = "gpio169";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+			output-high;
+		};
+
+		oe-n-pins {
+			pins = "gpio171";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+		};
+
+		sel-pins {
+			pins = "gpio170";
+			function = "gpio";
+			bias-disable;
+			drive-strength = <2>;
+		};
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio191";
 		function = "gpio";

-- 
2.47.0


