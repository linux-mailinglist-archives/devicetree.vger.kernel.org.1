Return-Path: <devicetree+bounces-207925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06134B3131A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D9165882CE
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBE22EFDB4;
	Fri, 22 Aug 2025 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pzUu8PRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 977472EE286
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854807; cv=none; b=tWluWHjJWlxIdmOWYpoVoaAktzkJHetgc8MlHr5wujwPh/lToyaUqRnwAy5X8+2o4kn1aECoo7J5RC1zWDvRTmnnj/ZUm7cRTv6YX3r+iHZK3GwKhXgckWfossciY+5YnAOlk9+AhN4r+DdnLtAki/lvh4Ovqu5aBpl33QdZGbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854807; c=relaxed/simple;
	bh=c5nCDnzpX+ATkXDacXpjm2++VqePkvaLOkkAQSRHD4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nHlF78OiEPyK9x42eQkLCpKTmRtm2P2UBgY3E9VpXa9pstUwIsjDURNoGnAGrqpZaG2HQpfn+W3NTpK4vAZhGJIyhB6GHq0FB6Z3eBsHH3Hzp5dAsIu2QTBO/1S3MgbYjMTdks0lh7cADDf9s+U54spFiYXznhr0NSqkl6pRFdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pzUu8PRb; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45a1b05d252so14473395e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854804; x=1756459604; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JmJhGpJq10EnBJ8Kg5Dray/olE1hm0iqjmmI6M2iogA=;
        b=pzUu8PRbzobdD8rm6jX22YFnTxw1Pte4dXxx4B9tqtRML3v8SMxSiBZZJMS0eDSE0x
         Ya0rO/6P17U0y6WAyW0wnjBWsHw4CYoUH62OPI1wTU210bWJoPmCDQILNo14x/Vsyo7b
         G7Rm45omQejtEYvc9urWUP30HHSKww2tu3ofp1qEJ1vbX1MjnS9a7AVngI3nLQR/9yGu
         1iBinEjAOtnZpGVrsdvac3TgJMYbQQINf1LzjTQFVJMmtkGmdMCkssFij/zFeDcSp59n
         ptUcTX87QNZIMPYGHz9tPR0cPplYMXU45Tw2B+sNxOAErNx82Jk7aiQCUT/m9BhKXLkB
         BpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854804; x=1756459604;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JmJhGpJq10EnBJ8Kg5Dray/olE1hm0iqjmmI6M2iogA=;
        b=vO0Fi/eOFqJYkPGWwFAry9gF/UAunuwUNP2jfznw5NBZcTBSJFqT3jH0H+9xon4PFj
         conXvmbkMaWqvl6r7j4xyoimKH8F+olMHyxKsXHhFFyv8pTeTiOkIwTAg545+gvBwMnv
         wtvr0uwFQqYBDbE13bXHafYGgqUWbwgl1H72A7hHN9PKF+hcCL3pCCe7jhDf679m+ssn
         1pb+J2COtYRh5Ar0E+Ok3MN1WhmIXIVl8CguEs+Ks2X9Jm1ozKxEaRki36IIOgyAPUdy
         p38emuEhaWr3vwQWsJboiSEiC/ZeRTpS+bE26p54G+oCdmnYf5o29oo+j6Fs9cqdBxS+
         sGtA==
X-Forwarded-Encrypted: i=1; AJvYcCUSBV+Zkh+N2nMB2KjEU+W32+YZSy45n7Kl3pRpmidi5QtBv0DDhyXfbGD/DSfwIl8738otEZ+iaDAF@vger.kernel.org
X-Gm-Message-State: AOJu0YyOTU2TGdnsp5NDS0pBHOawbVQJJBceTwI3iblNcOzg+0yezopz
	W+UhPJ+e94R7KCgNwRM8C8dimfRXz815j3p8wJXcRaweGtPhpJmy9jdEs+5BTdMgiQw=
X-Gm-Gg: ASbGnct4TsNudfcS+BBK6cNKUwVsSdJTC9b18/XNb3eKwuTiPMmsb62d54UrIIwHrLY
	7EQQpjQcepsTFJvMvev56HyRmRlpgpzOW+gSyPrWRrSN8CAXw3yWn+fY3Xn1XS1vYHxKAmSz9lm
	FmVsShxnvUlnD0N7OoMG6Edyg58oiOMrUzrGoJo5jEZkKXOy/Iw9rZ84EdK9YioCp2PWCNf/ZCv
	9St78jaU3KhSuFo+ZuBBGEHbRF8kFrvFMm+0cwCT2rm46UhmaO/C6HRd9NBtAlbZSbj9SIvt6AP
	qTEhHxoNAHceCvx3Rp88qDe6qENa9ZVpDroAXCKyD7Xxj98E7G0FoFDUqi21sLdLXw0AWk4o2hg
	vyy53dSB2vc2vQqaVHu/PAhWUgISzkQg1uVurqJltpDY=
X-Google-Smtp-Source: AGHT+IHTiEkRI6ih/TUN7DgrkHCGbHcRJzlF+L6vz8oPxuAgXFD1bJrRq1HHDEGWHWhFpoM6GFWlyQ==
X-Received: by 2002:a05:600c:458a:b0:459:da76:d7aa with SMTP id 5b1f17b1804b1-45b517dc897mr19443915e9.25.1755854803698;
        Fri, 22 Aug 2025 02:26:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c5826751d5sm3297007f8f.14.2025.08.22.02.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:26:43 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:26:37 +0200
Subject: [PATCH v2 5/6] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-5-28f35728a146@linaro.org>
References: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
In-Reply-To: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1505;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=p3QdqtoBgaVHtKLVF+FkQSeR2D7pd7M6X3sVvB5BjUg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDfNtUog+eNSBLeqye9O/q2hfsHyb7Egqbn5CA1o
 Bmk/EeeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg3zQAKCRB33NvayMhJ0YzcD/
 9MY5v2SG9sek/xaeNy5AFPSXeO74kA8pfxyc8TXmV33faN0NbDa3zqJkJ37VkY+X/WHy2O0t3+4JGZ
 agmbseOqMqxVmkr1O5X5kmuv2IW2/arS/H82RaeOemNMEclH43BK8rQLXCi1E1z2t+cLQJfmkYf52A
 IYh5Xrf5IELQX7Wc6gwYcB8GAS5RmZVWSWOFtGD1LY/WC5eXM1UNG/R/aUnMs2cYHlP1DMe8XnTNLv
 mcw/M2FVYFs8dke377i8GRqKxd9AuODN5yEiJ0RlaL1KnZc2drQ7LOUHfG3IHQGNwnne8YouyMHJQM
 l2Iwkxx0W6ssil6aEeb+TbP7Dcu0jPZUJJZURe6T9V5H9QsrOsGWfoftFAGBTLtn2Y81ahaWHed9hS
 Fi4EmLRNa/KKTUzznpyqtwsnBUyE3cotEkNaPih2UZzOSgBN0VkYoHzIztFK1lEG/DHO388qh3wEcx
 ITfiF4bOlAHDw/hkOgm6XQm4LHWnS0YQQMmoKAF2dVxqrobWMkmVnMz5o5grLewCb2ohgWZYoI5hnH
 4C4fAqaJnxns6c9PsMWZ8bJTe1ZSSQhzmyj/jaC1iVVe3e+RRTHk77KDTLmmzK7Yi3ZIb/0jboBav+
 EUdvGA4Auni5OWfmQfcLilDvIu0V+e9AbVYAUtWdOk3UpYxVpI6aozvnRk4A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Camcc requires both MMCX and MXC rails to be powered ON to configure
the camera PLLs on SM8550 platform. Hence add MXC power domain to
camcc node on SM8550.

Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
Reviewed-by: Taniya Das <quic_tdas@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d4bffcc244c98e87464cb2a4075c21f3cd368482..54ea21e1778a7c104cdf6865f84a7f8b5a8691ca 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3625,8 +3625,10 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
-			required-opps = <&rpmhpd_opp_low_svs>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


