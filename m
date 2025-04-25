Return-Path: <devicetree+bounces-171067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE15A9D232
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:49:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4DBA16AE82
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E0022068E;
	Fri, 25 Apr 2025 19:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xUgEuqkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8CE21ADC5
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610523; cv=none; b=j8zBmCkJTNYJFRKPArvOPas4B28ezkVGnXklZNSp/CyrvpHSOqTR5/SGsBdpNcZBGMMlwtOspnXPtt48qETolrise8TvMHO434oIlI6ayPQSqxUtA8TKqg3v79WkzYpDiHIDe/X2ajDIp+vE/cvgQmi/keAPSIG/YihNxf70FVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610523; c=relaxed/simple;
	bh=y8pnuSypChq+EHUNb5MJcd+jUk2muea59ryDVeSyLLg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d/5SdiX+paNj7C/pgQZ1INNXpO5o1o54abC3X2v1dVO2BH945RHTePGCXdT4gJD5gczEubHcg6EPbo8TUda2qd/LIRzVe+jiJZa7z0DSt3frRJn3NDjPgYTSDbS3zf6dbO0A8u12Jjz7ZRrj5VPrhrcJp223B516mk+qWJxS6cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xUgEuqkg; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d16a01deaso1822715e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745610520; x=1746215320; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZFGj2aWxZgDEAwEKzLQlupr/akFvJ5yEG+vj1Abayc=;
        b=xUgEuqkg1rq+/iZPTWoRFwfzSb6r56LfNoo30u7Ep5HKpYR8rL/lMsGknyK21yKbKl
         iCpcYvR2AiwXIUT8k3DoAz5hjYk9OYRvSECPNcypz2VovUcpj8PnInTl+P+05P8fbfHf
         WbY4s+ejfH201vsY6cGZ+GU1vc0cnWcBMvQp/pzY1VDTzGMgSdfSooSe9r5Q5XTh4sfZ
         uAm8Q/i7aRvOSOnpF5eXBKQe8cqKElAvcyZWOx7HCH7OtEQnfO+cwWEa7V129gb2kwr/
         yG0yGuTYc5Rdi06Ght7F0D5zrjBVyzxH20I9UaCBbFz+zykMjpKlptpm76tAgMd0btES
         5hjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610520; x=1746215320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZFGj2aWxZgDEAwEKzLQlupr/akFvJ5yEG+vj1Abayc=;
        b=aoQlxWaHNQQCsPNJOdCyIbvI1+UYuXbAJutFMaZSPQKMiolDDmKWZu3sw1Yv7GoHCt
         QeVdiWZdSmfGT87ed+Pi3tY9sneiXD4tfKzRKrezHnzFd7cSEsu34bXlbgcOc4dA2VAv
         cos9kGIJVYh5mxL3RLlPNc8rOiUR9oiln2j6rWI/74fhtUcZVolquFnTlkb/6Sn2tVCr
         eATV6iAlzE3A7TVUfsIFA82p2g69aOBMpDKPzBXM4MoZwxpC2V29zpcXoTDyxwP7BK+H
         +pR1Ompm5G03S5qLJnxMgoMY2NImMkhV+wh1MbCdbaPgLFuEjw+zVgkQn2QHQyhnNBbv
         9eOA==
X-Forwarded-Encrypted: i=1; AJvYcCVs/y8+AyfuZG4B4KdM+o5qMCHDQ8TJaxVLy5pu1T/m2Mi6RbyASNQOKvz3LpjLCWFK969RAoqK0VBW@vger.kernel.org
X-Gm-Message-State: AOJu0YwI4dwGFLq4Wyq7JEG3Es2QHd8SQiR06/PjuG/BNcq7jmHT7380
	dotfqXS/0Ov8sB9sYJZkQEBIuzp5Jg9MKWlsKXdg2JniwMSvx3gW/3nYyWlXwHUvLOZuq2Z3uiw
	C
X-Gm-Gg: ASbGncsZGPRrCk1700PQVJqPbVnPU4JH3UJ2v5Wqe393q6Gvk5D6ENCWStCyiTpO1UK
	6Ie9wFQpNImEgFqBJqBzbpslJxTULlo+swt+fw+UhAY+O6VGMWaVMPikH0f/9P2yRGSNBtJ/iJP
	N7uKG2qYFK2LPbc63MRtP5FdoPOMvmGbP3u19ISIAKnQ5HniwOfuGAtx8QvwwSjBpvsacJ69K7P
	hhlxkMtUI2pMJlXtpOngBr01P+PlANd9GftdjYcJp0KrsVdYg+CdjSANZGcODuHzfFMMQZTt2bK
	tsuZhLubBzhD5o9uF1GE+D1YJeuCNwGD8M2puI05RMTLrKgTfEMuY/X3a9s=
X-Google-Smtp-Source: AGHT+IF5oStNUCQDQK4ELYhXSpBxSOJiVmnisFHwexItUkWhfg7DbrtzoUnP3ThWbKCt20qladK5hA==
X-Received: by 2002:a05:600c:1e02:b0:439:930a:58a6 with SMTP id 5b1f17b1804b1-440a66baaf2mr13261755e9.8.1745610520354;
        Fri, 25 Apr 2025 12:48:40 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2a2e59sm65922335e9.16.2025.04.25.12.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:48:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 25 Apr 2025 21:48:25 +0200
Subject: [PATCH 2/6] arm64: dts: imx8dxl: Move Ethernet aliases out of SoC
 DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-dts-imx-aliases-ethernet-v1-2-15b9d5cca611@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1392;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=y8pnuSypChq+EHUNb5MJcd+jUk2muea59ryDVeSyLLg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoC+cPtesFepKoFEuZUgs/iDcDESYgx2WEgl4L0
 tpj0FAlzHqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaAvnDwAKCRDBN2bmhouD
 13AuEACOw+pS/JbW4N9z8UJ37VBYqyjU5djVsxOY7FDNUJuR8WbIaysb0KZ2ENDackm6iQPItmb
 EgkUI+1Fmr8Scea1IcHpXBRwcCNApOIBII2N2VXexT4SKMgyvMxNXIM1rKtnCeA35Md1M38vz2+
 K5rq3ENcolm8Z2JS1FVTz0zjqXgq+4Vge+p6/ctbGccHAZI0u+Ibc/yZaC0ykMuMX29Wfu52IHu
 Ii3qUYj4vtID6KwK9KJZIrvnGICfdPASxEyUKp3jI8wEORVkCepaQeAfP/9WRz0TUX2NdQY/eXX
 zCLoWQg3jGRDOeQWQRELtuut3nXzIP7vdt1Fi5VT5Mcd5BfInoAHADFIlDLY94aKv3mJ5VwHrQs
 9Mst794gjptnEHKGbeSCQ7A+P62uIEQbcD9MC1RfjzKpX/OeFqCr7z7QR1+C5FbxPn2O/C7b4Wg
 jhiz59fnHQaaxyk31Gh/SBAolVOkM1SBhlgSF/yGoa6HEFTpyjTcNk3acWbfQ+t31YT/mrF5K2X
 LUejbJYkQb086rYFZuoRHRWGJJU65qp9VfDMUfLIgGjvpMOhQ2NhyfkCFxsvlmbJd/r2w47jDGK
 ZuCMBblWigCZdk8LghZWWzRUg5fjdouZM5MGwl8fJgg87CRQ8c/C2lAKrDEZVSv7eBJfRxzDIBv
 C4khUlqWqXqKoSw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Ethernet interface, like other exposed interfaces, aliases depend on
actual board configuration, e.g. its labeling, thus aliases should be
defined per each board or each SoM.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 1 +
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi    | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
index 5f3b4014e1521eb2e226797c77d15951cfde3187..1e23ed3a3f396f65e11fb0e5f575f35aa3b1728a 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "fsl,imx8dxl-evk", "fsl,imx8dxl";
 
 	aliases {
+		ethernet0 = &fec1;
 		i2c2 = &i2c2;
 		mmc0 = &usdhc1;
 		mmc1 = &usdhc2;
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
index a71d8b32c1920bf9d73020ef48eb98fdbe9adc6f..a14cfcc15cd538c387bbdd325a8b951b00fa712a 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -19,8 +19,6 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		ethernet0 = &fec1;
-		ethernet1 = &eqos;
 		gpio0 = &lsio_gpio0;
 		gpio1 = &lsio_gpio1;
 		gpio2 = &lsio_gpio2;

-- 
2.45.2


