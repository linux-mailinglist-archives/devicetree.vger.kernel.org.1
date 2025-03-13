Return-Path: <devicetree+bounces-157359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FDEA60391
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 22:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEF743BEA68
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 21:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF2F1F8721;
	Thu, 13 Mar 2025 21:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbEhd9pM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D21F5833
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 21:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741902204; cv=none; b=A86LPFPHNtR5b7SG6f9OoSUJiJFc/fdgdtMMH36k1yxu6E9XlnJph4WsQ+CpHi1VyEYZ7JIk7fEVODmgAmFWkIv0ZOHibhEpi6mUBWBMk0iBP3o+4c7bB6qkqE/KtiGI4F3a3KU+C/BCfhQHl8ZxaKScvAF1Mingh/Cht5dmcTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741902204; c=relaxed/simple;
	bh=CU+/XDQ60jyq3i9MimUs3kFmTV8jnj/R31j8nRU/h1U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h9NkZDL1ARdrrH8NRV6tutsNmgan7Cy3CxWx0xREH/x08JV9bI0iFzfK01Szu1BXmzMiPt6iO7RO/YjfAsuGAO+6PIIYYwAPODqWP/BtXSHWYepOqRHD5srbTKOShLbR0+8S/n03IQ2C10GKFtXws+DFZVzAbvmFShbK5NpyYu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pbEhd9pM; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e6167d0536so2758055a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741902199; x=1742506999; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3DObyF/iUzXjPpPEbY0w+cm8oMYW2eB7he9g871AEyE=;
        b=pbEhd9pM8ra3fKyT2RD25J71QAUmiOcCl1UN/Ih1RumGcG5o38g4d00Dwf//mJKKUZ
         J91FTzCrmIFKaQT6oR7WLFqylYQur3v32DyOT9RVk5rueH6RS7PKO2euBG81y6k2AShs
         c7150ofqLXOe8WPWZdu5wjeDVmefVZtMmxTZQ4D1TGHQ9wc5Q+IEtOy2iwKdJ5bSFmLR
         qwwONoOkPdjyBgN+wRidak4xPrgIF8OJDSJeTOiDhT2BXvxiHL6pYhJPn0oKeR93J2mT
         pn1bYYAV7A2T6oPw75HqWisbuhX4f4SyG9j7NdLUi5YEqxURd727OLYyx/Hy380sS0c3
         Wf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741902199; x=1742506999;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3DObyF/iUzXjPpPEbY0w+cm8oMYW2eB7he9g871AEyE=;
        b=hKv/WackKD5ytxxtPJUp7lLW3DYM4eejpwnj998E62tcjHQDEOhc96sCmFhxUBk5aE
         7n1MEplcI5B5oCKzpwjZd36am58FaiU9Y8eyLgF3ZJmuKqEDtpu1IAhdclZFiIgSNPP4
         cbcORHXxtHWDNGW4EMWk3/et959aH5Zk88PMI4DBF5wHZ3+tJP2LsH99MSGqIn3T8mcN
         M539AursmBKZfIOt3nPiaS8MtPRdDpmVspaVqvRTGEtMJI//dzTqwbZRH4YHHa9GsnlR
         uWG7sgiuroXPssh05ipTaUJ8vVUkFekgOe1h/xaWGNetxlHDcLd0v+BR/AO1bzhWb9Bj
         O94A==
X-Forwarded-Encrypted: i=1; AJvYcCUUmWPBQ+iE+cAQkUqFMP2P4jGRNuBiSqXD3OQbXFxtOR3kakyMokGxsvNcdYiOd7g4FARlr/zi2eyR@vger.kernel.org
X-Gm-Message-State: AOJu0YxAp+4Ik3Y+UfYey2IL4GtptRAnw0IddJKomudEKn77ldUQ05bR
	VTZTvZ84Vrc+2b1qNfGBOTSp/bVtMkNGx3st32GcKLb6J/ZH9wrCruZ2gWzHiqA=
X-Gm-Gg: ASbGnctj9+t6S/tMOXbg/MPCq1XlN5rzKtLmx7pJ7H+1c+RaAyypV3VTi4ua08+1epd
	TEdO1FdWP0J9aqCvH2iCj9cbUpJKSuVjP5ohbpgFRRnDREfka1CxB1rtKc3F/1t3rtg1AafaDNk
	2XIDZme/MYBBVVPFmtzLJ+zez0oJKYv60/5QzmPPU5Y2dTamCoUqMden6qV1DgICHVGTyarioHi
	BbftPPNPeTwJmlFlDmSZDt0HheROWedDdcIKIKoC8jryJkpte94I/ixriB+kO6AylahtFEasiUQ
	3UDwwMq/Ej/FpqQLhgfuhF6eNDz91ZNWDZmoShevkaHoT9dJxxMmR4VRFFCXpaO265QIEDR2CAL
	Hj+lQIH1CAZ19XA4rrh5PhkzIacnzBlY63siFb7U79DFpberdOz34jijf4LqC/jP/0rugVcg2RO
	CwZuc=
X-Google-Smtp-Source: AGHT+IGqp9Nz1XfOSp4Qxd087skZCs2Rbdil1yKkGG8XXXQucMNRahCo9RWdRZoOFBRNF3FMGjSfAw==
X-Received: by 2002:a17:907:7241:b0:ac2:892f:43b with SMTP id a640c23a62f3a-ac330376b95mr10613866b.36.1741902199562;
        Thu, 13 Mar 2025 14:43:19 -0700 (PDT)
Received: from [192.168.178.107] (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a489e0sm126938866b.151.2025.03.13.14.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 14:43:18 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 13 Mar 2025 21:43:15 +0000
Subject: [PATCH v5 3/5] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-3-846c9a6493a8@linaro.org>
References: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org>
In-Reply-To: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 46b79fce92c90d969e3de48bc88e27915d1592bb..065a219e69c632eca288c9ade001949e37b92173 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5116,6 +5117,22 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,x1e80100-camcc";
+			reg = <0 0x0ade0000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
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
2.48.1


