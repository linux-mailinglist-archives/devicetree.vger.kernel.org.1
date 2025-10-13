Return-Path: <devicetree+bounces-226291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7FEBD6CBC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:55:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A77919A2650
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 23:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 857E02EBB9A;
	Mon, 13 Oct 2025 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lTkV02sy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17AD2FC88C
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760399723; cv=none; b=T6Qs6hkB4E7T3+RASBpj1WJl1y9sldmIAVozaF4KcLOKv2OPL6m5FQV3vkHXKK6gog3cY2tT1CcfSRDTW3o/4Abi2zdNEt7CXkwpIXQsakvklCj1WmKV4qU7y2isyZjWfKtl0MG0EBiVvvSaHxs7l7d73iy0iiWrcTgS9ZagcIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760399723; c=relaxed/simple;
	bh=z2rAgQyOBPFcVVSSorypkkhezLw5RAdCYmhQT07aWg8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dsT2JCr5oeeJ/bTK7O7GhPxQmaLz1FqJLE2LwwaeFo7pXDJNIxLSCb6/hcEtVzldXNUQPqcPgLlxCjLiEbDoUt62QfmOW0cT0tLqfIOzae+1b7e8Lq9Rv68Sf0nwneJTtmDF1xMDns4iNd1PetbSu+wju0R9q3SSxcqyogefi7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lTkV02sy; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-57b35d221e2so791953e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760399719; x=1761004519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJWa+s3rtzd6mnuJfdQ8PEY5fqM+cuLQHiEGXe9wIik=;
        b=lTkV02syK3IsPjx2pTAl1y6vy2YGHJqOnXwkZgjkKU9B5OdFW40rFNCqNp5SiZHb7Z
         23bvYrVxsyku9qUhLPWgx8Qodgn3NO8hhr3FtLzMoB0FOaxmVeVBE9Sfi79JAsoBJd1i
         JS+Yhd9Y3jyrg9CBYP3eBCfq5GGNrfyEtcizMx+L7X6IvRkOY+51Qi73gkCNFOECsDlp
         7LoB0pMRCZ9sqyds9tKDjnGp1Ei/jgjeJrv8EctWJsRgW+1VZ92ufzmeSJ4TigR9S9yu
         XC+8fUrxzppaFtvSSXcCgMkHnz70qrVkQQG2XzrATupqWA9feGw3/qTHOJar8qC9aOJG
         7Qsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399719; x=1761004519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJWa+s3rtzd6mnuJfdQ8PEY5fqM+cuLQHiEGXe9wIik=;
        b=fcF/IJB3KBQrkHv54P429z5fu+jhx9FFXU7K9RDC037vkZwywZdDmXFXE9zHmO06fC
         93irhT2CVWDgoGyRxI1AfIhwNlWcPNKVZYLnrQghB+CyWs8gLErB8JvaLWDkl3JugkMw
         kwyi756GUiAGoW19omyq1AiIUorxTT1tEWQgbcTZZ3X5+SEKbff2qjiwQmJsbHEH9Wm7
         8MWc1Szo+R3QLAUh5h0gQp6WF95//raO0a+zhcPI2/FcLyolpaulhbNfVvvrMpsXdnAc
         qfRgVNvyP70BOylsJ7K8Kfy9Bvm1ua6SS9TBcE8GNimUKVAuQMG/78Sckcv4dBlP+B12
         ZLuA==
X-Forwarded-Encrypted: i=1; AJvYcCW9uTI4D4v5EBQ1TDi+0GeZhImq5fsORgBoU22biSQHFhBLHwAz+8/I73CVtm5MLILqsuvL/M4+oXIk@vger.kernel.org
X-Gm-Message-State: AOJu0YxtVxtvHiqmKHA9fbTHj+h7H1GWwGh/TnketN3GQCXz1YXf0bXx
	FCzSASwNM6ZK5X+n70VPoT22aPxOnBFokIo8AWt5GIGR762jbOXpym5e8YQLAsKuQEo=
X-Gm-Gg: ASbGncvsBHt7QDQ5RfNmPxtDhRBQsJFIwzPR8eKzqj2t8f5E22JCoS/zeb986dKQycP
	47fZG0X/I3+VFh0RUCbDUtKZmDYK5lcYXa49x4r/5f5OIeGfNoBkYnXqRfdBoKmp0FdeHg6R1M5
	htnZ66vGDDiabqiHjgACvcbXXcHEYTh9rZ4hIpgLdc26dRfqmyb22pKC8ymyK5wzhFSEuJm/MkT
	m9mvdLy/AUdRUAYPi4ktWCM3p0Ah5UEotvJaDGu3NifUDvR+T7JS7bLtV+VRcZubWAH6B4FxfkU
	hzVW2jT+9DLtuyk80/Xtqz1yI4BXSXSg2X8QXlVviRzwGkkyeRDN+OEw3oqCvANxSeojtJ3gtHK
	PMsP3dx2FF2f01WvdXT6HWgOoyGn8F5Y8CDz1F4o8bvumQEM3rEszCXhJJQqhMFLQ19OkXbeVjo
	BjQeJvca9s/syg
X-Google-Smtp-Source: AGHT+IFhblWqJ/hOZslW39XPAtfqw9ScwJ3EIOYpEv0GJWIuX74YXY30HJ91elyLx856wHdxm6RSjw==
X-Received: by 2002:a2e:bc1d:0:b0:36a:f4d3:82e8 with SMTP id 38308e7fff4ca-37609c979dfmr31140421fa.1.1760399718786;
        Mon, 13 Oct 2025 16:55:18 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ee2asm34880741fa.50.2025.10.13.16.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 16:55:16 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sm8550-qrd: Enable CAMSS and S5K3M5 camera sensor
Date: Tue, 14 Oct 2025 02:54:59 +0300
Message-ID: <20251013235500.1883847-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable CAMSS IP and Samsung S5K3M5 camera sensor on SM8550-QRD board.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 46 +++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index a3f4200a1145..9af2a4fd02ea 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -716,6 +716,52 @@ vreg_l7n_2p96: ldo7 {
 	};
 };
 
+&camss {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l1e_0p88>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	ports {
+		port@3 {
+			csiphy3_ep: endpoint {
+				clock-lanes = <4>;
+				data-lanes = <0 1 2 3>;
+				remote-endpoint = <&cam_tele>;
+			};
+		};
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c0 {
+	sensor@10 {
+		compatible = "samsung,s5k3m5";
+		reg = <0x10>;
+		clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+		reset-gpios = <&tlmm 119 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam3_default>;
+		pinctrl-names = "default";
+		afvdd-supply = <&vreg_l7n_2p96>;
+		avdd-supply = <&vreg_l4m_2p8>;
+		dovdd-supply = <&vreg_l5n_1p8>;
+		dvdd-supply = <&vreg_l2m_1p056>;
+
+		port {
+			cam_tele: endpoint {
+				link-frequencies = /bits/ 64 <602500000>;
+				data-lanes = <0 1 2 3>;
+				remote-endpoint = <&csiphy3_ep>;
+			};
+		};
+	};
+};
+
 &i2c_master_hub_0 {
 	status = "okay";
 };
-- 
2.49.0


