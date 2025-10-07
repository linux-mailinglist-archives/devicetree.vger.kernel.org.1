Return-Path: <devicetree+bounces-223997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A0EBC0014
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 04:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DA0FD4E2853
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 02:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F184321C9F4;
	Tue,  7 Oct 2025 02:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="osb74vfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094F4219A89
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 02:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759802630; cv=none; b=gmy+lPm+9+peoFTRx8eTI5p514M58f/QrayF90hdWL+mOkUZ5ByiPMyRCLpZhgMQsGq8L90M+NmZXKN0ZnVI0IYn6RtdAtKzLNuCMRanCPvdvX9AP44mNsy3CzhUxFsNsU4zgYrPi08okzjY93nHws5m93anAlV6uDnbSDpE2mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759802630; c=relaxed/simple;
	bh=dinlYOq4GNp8S92cG3IIG6xQe9bDgEHO1mWnzU7Enuo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C6ji2q4LFiwvYIFjL/DAoxcv9rI3FBSyotYCFYfMxOfqPxgMB4xUDNxfAjqbDveO8/KMFHEyQ5k+YBMGxQPHgEkghktBT4yx7q2GGQzX8PI/gRMd0p1kcBdSEyrZD6ErHvsmJMsX6hJkrXEZ0NBy//SsTb1F/NbZ1FI9MSj0V2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=osb74vfy; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3635bd94f3eso48505601fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 19:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759802626; x=1760407426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dh2P+1S/rGMae00So34IFmR5edBimGYszi1sGivuL68=;
        b=osb74vfyTFtNpbUrt6ea8gZn4J+VeuJAo7XMmuAdTmvgaNN/zeedIWkisYRjkRCUx1
         Vn5qPyUN8rzlUpEM8s95QHkChU9nfmHQBmTmiQGoBDiHBTlwr8DCb5QxAQ5loQ2RcROD
         NWtOwtX6wetJxP/izoKPGntwXuAFEhZdQJE4NHMXc3iTMyGPO9WgGg3znbapNGYxxLtg
         IFJ3/fIsQiypP2KpfB6xmxmjuimLQtQZez+CK54Y2/XGhNj/qjrzihTvk1IwfPamWDDn
         sGcaxUAEwaC1QUn37TJWa+8zcfWaMkfQL9pLcRAM7y9RntHmcIA9PQE8Z8tw7sXBJkOf
         eQqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759802626; x=1760407426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dh2P+1S/rGMae00So34IFmR5edBimGYszi1sGivuL68=;
        b=EYjqBx/5A515/lPE9M7RTPS22Yy5BPGhNBDMWjFW1tZJbhU0rSdapRXO0OzCWKOzmR
         eOKzCCIu5ruDmLNtW3LD4sRaVV431TmUoI/Tfyl3badeTN7srPKlQHG5Pp5/VsFyAHM1
         ZMsHnDe/Raqbi9puKHDFJR40ZssmoX2eyLjDU1D9DGQlaNQbtA25fyKu30XY5yXjdPyk
         xxVefQAUBeTQC4jnkFsRPJZg6mfyXt5BNv9+G/TX0jqJzgrviYT1QFKR6MQToxhqc3WP
         N5/sMsE0iJAngiE7LCXcrZ9rXNMmqH+yzcdBfEy6g4iNNgnYCBvGCAyfbmvp3brqLaQO
         bjtA==
X-Forwarded-Encrypted: i=1; AJvYcCV3T/9zGlhOfGOwPG2sbQBY8u2J2BYTUUtZBQkNbJDEQ8rDeqw1dmQmH0kDDG5/KDD+Kd4SOtZhdyX6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/Kivqr54n5IKMyMaXiJs2zWErpZUh45KCFxfL5Z6w++1tL5If
	8qDXaeJZummAsbgltuhrAJCCkn9w1Pdar7Qux3UuPnQYPXlQchsugudXL7H1BDrOITk=
X-Gm-Gg: ASbGncuEJn5uzUELMAXwrEoymlODg0srdajenFUp/8RNfY95W6o1Rju7XTM3dF1zI+I
	C2VCPL3/wNOgvaw4Lw/eKIWWmkFIUg2cdzLLcqli3hAS6mv/7B6q2rsA0VxlZUZOS1zvS86052f
	6lp3a/jIMiIYWaO/Nkv6vjct1d7jAOjqJR7sj/xs7YAt5/3PbIyojBjihsmpWZ9FDxxjPVb0e6/
	N/jFmcQdh5LW1a46yJFgqFo6N2mlL77FHk4JFwz4HK6tI1i4nm4boKFEcsNwYXp6mp9iP7fosRg
	cWxnmMhAW5E0GTSFXnxDupLWBJJ/95WMc+EOxAG8R90j2CyReZiolo7p/44N24ddBZAwA2e0q1n
	q3CbTn/26/bif1YkkI8Pi6krK0M6nuFd2pkqfvGi2dG3jyLiacH3Ctfv4
X-Google-Smtp-Source: AGHT+IFI9nX6DVmCAMZ3FKDjnGx6oV0QSc0nIDHxs6ctW8TRx/vmNB5maIOBRka6gVB6NnvAv1QDrg==
X-Received: by 2002:a05:651c:25c7:20b0:372:8f03:b73f with SMTP id 38308e7fff4ca-374c384e19cmr36666571fa.36.1759802626183;
        Mon, 06 Oct 2025 19:03:46 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:22ae:baa0:7d1a:8c1f])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b81e45sm5150391fa.46.2025.10.06.19.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 19:03:44 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Tue, 07 Oct 2025 03:03:31 +0100
Subject: [PATCH v2 3/4] arm64: dts: qcom: qcm2290: add LPASS LPI pin
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-rb1_hdmi_audio-v2-3-821b6a705e4c@linaro.org>
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
In-Reply-To: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
controller device node required for audio subsystem on Qualcomm
QRB2210 RB1. QRB2210 is based on qcm2290 which is based on sm6115.

While at this, also add description of lpi_i2s2 pins (active state)
required for audio playback via HDMI/I2S.

Cc: Srinivas Kandagatla <srini@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 41 +++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 7303aff33814f256a2ea09a71a640db466370eff..02eee364e618358e5ead78c2b97fde12a57ede0a 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -19,6 +19,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -673,6 +674,46 @@ data-pins {
 			};
 		};
 
+		lpass_tlmm: pinctrl@a7c0000 {
+			compatible = "qcom,qcm2290-lpass-lpi-pinctrl",
+				     "qcom,sm6115-lpass-lpi-pinctrl";
+			reg = <0x0 0x0a7c0000 0x0 0x20000>,
+			      <0x0 0x0a950000 0x0 0x10000>;
+
+			clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 19>;
+
+			lpi_i2s2_active: lpi-i2s2-active-state {
+				data-pins {
+					pins = "gpio12";
+					function = "i2s2_data";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				sck-pins {
+					pins = "gpio10";
+					function = "i2s2_clk";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				ws-pins {
+					pins = "gpio11";
+					function = "i2s2_ws";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+			};
+		};
+
 		gcc: clock-controller@1400000 {
 			compatible = "qcom,gcc-qcm2290";
 			reg = <0x0 0x01400000 0x0 0x1f0000>;

-- 
2.47.3


