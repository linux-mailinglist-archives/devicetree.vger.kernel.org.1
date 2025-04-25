Return-Path: <devicetree+bounces-171069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BA7A9D243
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E7AA3BF192
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD356222580;
	Fri, 25 Apr 2025 19:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TuVorXgR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC55221F03
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610527; cv=none; b=NTu2U+QddSTTUtmJX2ZHPh5MIajfwYX0M9pPSf9VbGjG8CGLJR89uBBPo9bvic+Sixa3w2UTi61EdoVM7XRMPyR2+bhV1+ptiVqwCwcYdHBkISX/f6AAEL8GszCCt1sbu4YN2hw1kfYJNoD4KTdCx2U6998o06cGrv/tj2Kf73k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610527; c=relaxed/simple;
	bh=kSuXk+uGBBo5zpL4NHaxiMuuyBwuMVMpicPj/p6ATbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f5HKmwk13o8BJVE7xdY26s9ybk7cuwpV6pQVpnDJVr2sRcacRHzd0YTPGrTKFS31FW6JxeELCHIvmhS3emictvBolJsDaI5riWgULwDaQVzsfonBEvwK84m13Q2cWrgRVuFo7eSe7/eASlgE70Eyn9fVJoIuG/v4F5XFBEcUp+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TuVorXgR; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-44069f5f3aaso3794275e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745610524; x=1746215324; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4JA/24tCVPu/6qLUwk7l1K+rvMBJ9EigZtYSNdrSX4=;
        b=TuVorXgRFzojpOWwiM176HC2wWixK8JHv5wfrS2yFPsRKWcKhIumU70VGjUjQj71i/
         iT3hJayInukIHcGzMoQfnsDDOGjD6Y20CJFBD5SKV+TaojSnHtOe2+QrgAztsb4X+/CO
         HBquod5N5CDSlkqWHhqlBYGjLZ7VZJWSm7tihm9lmV9JffCb0nbc1oWfKvuBfX7CuBUu
         A4rQyVyCf2cmnjO9GSOm0rbbfYvbsYfov/fsXBS1uMvBmtPeIsaBBZwpRiqWhjXu4+7u
         vTgmDE978gXiNrKrAc30eQ4RTbvDIdjTfLcYmVck66G34wxnRSZFdh+u0APBbJMLpbRE
         uU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610524; x=1746215324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q4JA/24tCVPu/6qLUwk7l1K+rvMBJ9EigZtYSNdrSX4=;
        b=OBvkOsCJZOi7tZGny886qWd9ppuCMy7F9zoCDZYCBtJBSC0Edb0TsTYwJX/fpFNWfs
         Qrl0BtumdCNTyc6COIvxwBpruUMltWi3daH0s6rk7U1MYRuqqY/ItycwkOsUvFo289kd
         QcB83FPpVRXu313n6wjfB+ownFsBK/RhwUQDd8Jb0tYurWaVNV1VewCKtDpF6eP6I/M2
         biOPCmxWQuty8SGWTAYSeKUFdFtTHcpR5rVDm07FOL7pH+tivxvv1N8AF5K/4Eo9IOs2
         ZA/V8yMI9FRQsa/lHfQVpbzQR8M7ZMU8OZNPBlhbsyLKi1YFynW7Gtm3W5cvMs5WvUYr
         R5qw==
X-Forwarded-Encrypted: i=1; AJvYcCXv4bbignmM5lIhaqY7f/mWyxvoxkCxBBczwHheF9HyZXuY41L9+31kVPRYQtoAQKy0tZ2wIhYupGx+@vger.kernel.org
X-Gm-Message-State: AOJu0YxMUKdvVskWhrVc8Onk1v+WYN8KVvivY27KPAyR4sUe76GRZy7R
	0o+t4kGakqjgpwFiIasCfDopO8LEMOjcc93ApkPTqmt9Y9/yDcY1LgQTBlq2fK8=
X-Gm-Gg: ASbGncslKC1aqiosh0tKYaTTMXSMJwPIhM4ZvvjjxP6ml2TqzcI9uVoRF/wiGIg9ml9
	0WyWbqpeGoQlmWwzxOrokBwVl79N9iPon2C6/uaTKE40li8Xg4QyR5/zB30/X2rtRIbGoati7cO
	V6O3lcrhMHFx+JyaxpqCHHy0QaOeJ8yNhF9YQ06gwDodCxTTPSChg6Sf2TTkPljuDS7lNAlA1Rb
	YBvBSiPQCjDvfRMzp0InMgZNlvaxordxIgem77/WMpwG6zVgqv0GABhqxR6V0TlQ8XmAuUeN1SA
	ebR7odB5uBocDnXIGzfhF39jRyL3GxKaGRvnHjLOFBcdZsMY5hlhUnfUlok=
X-Google-Smtp-Source: AGHT+IHe+1D/CKQHTHjSQgvbqI1yOD06loQArzvvujsE39fAx26XWsGVL+Vp/lnDEP0KbawfeUBn7w==
X-Received: by 2002:a05:600c:4685:b0:43b:cab3:1fd1 with SMTP id 5b1f17b1804b1-440a65bb7d5mr12401725e9.1.1745610523980;
        Fri, 25 Apr 2025 12:48:43 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2a2e59sm65922335e9.16.2025.04.25.12.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:48:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 25 Apr 2025 21:48:27 +0200
Subject: [PATCH 4/6] arm64: dts: imx8mn: Move Ethernet aliases out of SoC
 DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-dts-imx-aliases-ethernet-v1-4-15b9d5cca611@linaro.org>
References: <20250425-dts-imx-aliases-ethernet-v1-0-15b9d5cca611@linaro.org>
In-Reply-To: <20250425-dts-imx-aliases-ethernet-v1-0-15b9d5cca611@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco@dolcini.it>, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux@ew.tq-group.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3688;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=kSuXk+uGBBo5zpL4NHaxiMuuyBwuMVMpicPj/p6ATbQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoC+cRBRi68ut6cV5Tjk/mdUsM1uGe7/fx6IsUo
 4s1b2prBRyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaAvnEQAKCRDBN2bmhouD
 1x9kD/9kquaUkWYhMNfhh+Js8oXV3Gat2PvlLz909ZtYnRSsHanzuUuyao1qvvPUc4ck+xR5hZ/
 zCqZaUCIIlm8MsDuA7c1YUGDAtqyrmwadhrp446TLcrM+apZVTt0xz6/jSV37ojsw2rYEemJ4vn
 ubDfeH1rURYsbPyCJ5DZMw0/nm3TsC7yDZKnTUG1DX1gZkngD3s05iIi9REF3HyNmnqO9eD3NGj
 DL5+ybWKrtOEsgdlg1260km5GsDCiS0cPmELEFU8MftrY9ngvG03stvGBih/L4OlQi+Vvseyndv
 b0XrCF09yqpzwxvmH3eMjblz6I4TzlLB3OT3TG+EoXJvpGqOmETVxlr2n5twLh53low1F8keKrn
 XBKlIwhLfLOTLy2ut6LDjuGqBJ6ExTAKXBlZysino9YfYpFauEH0wTj7Hk2vCFJsdGBpeNPmPMm
 gCn6ZgzNb+LGlfGEN/eakIkHB1wLr2BzsSZXMG2njxwjgbDxl4r/B8Y5b4PZhswCm903icm8xoP
 9NWhxjaT06hiHqYFB8hIRZAN0J1fV9mjqj6+ZgpYdDNJNlcbUSBcEudDHRIeLAFB3gAc9Gr8FJD
 Bs9aumoTLQvZ+Uyj0nb/yrCXaUs+Q8rJw6EohsDzj77z/HShc6eRm18CXI/qBttjbFZwyhVydAI
 fKvVTAEI0bAFMpw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Ethernet interface, like other exposed interfaces, aliases depend on
actual board configuration, e.g. its labeling, thus aliases should be
defined per each board or each SoM.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi        | 1 +
 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi               | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi           | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts      | 1 +
 arch/arm64/boot/dts/freescale/imx8mn.dtsi                   | 1 -
 6 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
index 2a64115eebf1c68b69eb0076aa08558eface5705..625a647e1e8d603ad9399d87d74159da33cb013a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	aliases {
+		ethernet0 = &fec1;
 		rtc0 = &rtc;
 		rtc1 = &snvs_rtc;
 		spi0 = &flexspi;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index bbb07c650da9c273a540976142197d9ff1bd5389..d34d37a4a09f328ca19ded10c36aae740196eeef 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -10,6 +10,10 @@
 #include "imx8mn-bsh-smm-s2-display.dtsi"
 
 / {
+	aliases {
+		ethernet0 = &fec1;
+	};
+
 	chosen {
 		stdout-path = &uart4;
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index 33d73f3dc18759295207fae76d67100387b86461..f91ce0d9b015f49422aeac9517b4e486e44e4956 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -7,6 +7,10 @@
 #include "imx8mn.dtsi"
 
 / {
+	aliases {
+		ethernet0 = &fec1;
+	};
+
 	chosen {
 		stdout-path = &uart2;
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
index b364307868f25eb05507c651afa6fee8d0c8423f..59fc9ae613bd3aa047c30776ff1bc1f556a53562 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
@@ -11,6 +11,10 @@ / {
 	model = "Variscite VAR-SOM-MX8MN module";
 	compatible = "variscite,var-som-mx8mn", "fsl,imx8mn";
 
+	aliases {
+		ethernet0 = &fec1;
+	};
+
 	chosen {
 		stdout-path = &uart4;
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
index 30c286b34aa535e1ac7ef5affd3b9bcb6a81b633..ed91f73802379d63c4b302c7b1d6baf91b8e962a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "gw,imx8mn-gw7902", "fsl,imx8mn";
 
 	aliases {
+		ethernet0 = &fec1;
 		rtc0 = &gsc_rtc;
 		rtc1 = &snvs_rtc;
 		usb0 = &usbotg1;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 848ba5e46ee679166e96327f089904f317b0cf95..93a78b40dd41b804707dfce53ed2abd8586b0312 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -19,7 +19,6 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		ethernet0 = &fec1;
 		gpio0 = &gpio1;
 		gpio1 = &gpio2;
 		gpio2 = &gpio3;

-- 
2.45.2


