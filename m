Return-Path: <devicetree+bounces-194482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8AEAFE55F
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 12:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E60A188BBF2
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 10:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BE828B4FC;
	Wed,  9 Jul 2025 10:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tGuV/SXl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671B028C2B2
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 10:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752055799; cv=none; b=ZOu88xppBVdbBN+LVDiEZgRgFpyzS8FJTjmfpxzE1xAzlBve6zTMYd7wBJrYdFUecB0d7VQkgO3Nyh42Mm/Onvj20Xj6xlP3/n4oEcQJ2BW+YJI0UwWBi1YwpVXHv6cqm9uAAc54Ygo2zNaDJVurZX2oRL08XIOpq/lMqBQadzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752055799; c=relaxed/simple;
	bh=kEp8ajy62MZOHSH4vdUAvdUYasBeiMz2bnbhckb03PQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ks6XgDo5dkFkrZhFAm79Lu7k0nJdpC3xiWZjhTMNZxBdZ+pEtLmcL+K7vmJ5rPYR3cS6AdSOgcS4ZpCVAMMMb+ryPd1LbygfA09QUdqSYBYQu1NlPMrMdlThc7vOeiR4TL+pRwI5fUnpK9MKIz8OwkuSZWxzJHrZiCiVYqKysc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tGuV/SXl; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-453066fad06so38981095e9.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 03:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752055796; x=1752660596; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLhy8LF1T3t5VE0CX6s+bDnMumndzyjwTeUrHHk11bo=;
        b=tGuV/SXlVlEMB7kKnJzKwc3WYQOvXwnxmg8W2K73YSpVCxBjvcaMSZBFpc19ZxdXB9
         eNeGtMyhWfRt6modxcc4evTcTuta9XK/IsT5xQA05fOigaP82x1TX9JF/RyHxu7ISlwf
         kovU5foBkJUpYhHHYnl59WxaVVAeJUK9nfFC4+LBnotaIH6kOcIKGSzzwBMe8l2wjgsf
         +0PlsiqJ6j6/71ycIg6D4d6uyq9LZkUdtga/WUI61KEqpTAmbFMVaPpC48LD292UdLLE
         Xyrp32KbwGnLPPduEfwj8+jCXZffJTYV6PPubzWLEYASundrSDmiCTb9KlUV5rMbHOOh
         RLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752055796; x=1752660596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FLhy8LF1T3t5VE0CX6s+bDnMumndzyjwTeUrHHk11bo=;
        b=sePaTUVOH7WNcelH2Ig4EcBTWEoUS+sRY1AnHGRhPXODDU8P4Q79Pl7+dy758wJbwo
         4RwbLQTiyiSjKHVejXZtb8+bU2pwtFuYmF+NyWAtQEVzqYA8S5cm/0HifcHXHB8tHJgs
         cHLLoO59F6UZ5ow9YtJH8Z7+uyFEY0JUm4VuoMwrdfN1Zrc6wW6TAaz77wCO7JDdgrHm
         pZ1dskkBjjl8WE/0RXS0p0PaH3jOWwiF3mNQd71w3AwfeGZBTTBV7LeNH7pQ53Pznhag
         iesMcxTSpTsaTw3IpqVT/7sO6oFBP2pL6F3r6hA+NUYZOZCV0U3k+Jd5iSvxdO4jfbhl
         lr9g==
X-Forwarded-Encrypted: i=1; AJvYcCUOXXenSJoCme0mc5S6PXlUE33itb3UJEQ52UZutqvvTcb+8sduXRQP4qQ2spn/Fy/XSsXYQoexiyMH@vger.kernel.org
X-Gm-Message-State: AOJu0YxgGlI3NsPIEXc3GWegbGOC4CwUnyKmHte36Fg/HSXF7ZJx4gfQ
	OgBpya2PgFkl0nz66klD4YCr9JUwrdFjdOyiiu6o63Tl5spxdtNzCjSI5H7XQjJwjfL90KQhOb/
	h+d2C
X-Gm-Gg: ASbGncsaQIBcCzHdZOKkU0LPhAbPWKFlAyjFPyNSNRNVmu4YVy/J4pQg2pCwBN/Xs3M
	uyB74tFyYG7p6ZaQ8EfdJP5Bc0vv8LG3njLIhK9XFb79XxkTuUXxcUK17HnXE8aRo46uU1o+DOF
	n3S4ZMaCWLTJmgY2gf8Rw+6Chu6VwfRN0IyhLub1fpLK1I9b47btBIX37mXcAF8WhRvvYg2rKPy
	IF/BptxcREYHG7m2GPAbiKSO2XeHGWfQkFQvZXrfxcqNWWVPfX9XpdBGDK/PdxZTSBCFgkhkVvy
	KHM4HjCW7R/YOK/zKETHMg3TXAwVaHhpirsPPLvm5oz0CjXkFEGT7uZFaCvqUormolqs5hmRSdp
	YEw==
X-Google-Smtp-Source: AGHT+IF2k3MuNyMIclFNnkmRXnyOQl1bokRyuIriXi7yVmy9QjQfQRXhFOeP4vV1kIll5IG5M3PkXQ==
X-Received: by 2002:a05:600c:4f95:b0:442:f482:c432 with SMTP id 5b1f17b1804b1-454d536c70emr20256535e9.18.1752055795625;
        Wed, 09 Jul 2025 03:09:55 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:d3be:a88a:dbb9:f905])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5032997sm18342105e9.7.2025.07.09.03.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 03:09:55 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 09 Jul 2025 12:08:58 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: x1e80100: Add videocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-x1e-videocc-v2-6-ad1acf5674b4@linaro.org>
References: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
In-Reply-To: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

Add the video clock controller for X1E80100, similar to sm8550.dtsi. It
provides the needed clocks/power domains for the iris video codec.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a9a7bb676c6f8ac48a2e443d28efdc8c9b5e52c0..92f53bf13cfc42268a165dc9697e5fa062e35742 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,sm8450-videocc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5171,6 +5172,20 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		videocc: clock-controller@aaf0000 {
+			compatible = "qcom,x1e80100-videocc";
+			reg = <0 0x0aaf0000 0 0x10000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_VIDEO_AHB_CLK>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,x1e80100-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.49.0


