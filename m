Return-Path: <devicetree+bounces-37005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B81A984375C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E914B1C214BD
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C6473168;
	Wed, 31 Jan 2024 07:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vypw+YZr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DC56EB6E
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684964; cv=none; b=ZmONXG/HGdNLqI9L6g5Ewaz3oJgkweP/wBxDNJ8eezKdrPq5zW2jqqlNpxcwAaxXvwGBCdxfy4xG7j48iMv2z4czZpg0FDZLAsk1OtYal1bmDPxr0vpEzPeXKh17wknlfL243UcwZrmAvfOncp0xkiVZj2RsFybc2aRx/om+On4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684964; c=relaxed/simple;
	bh=5wbR3f4WW33GGHcau/dlVX6ejvxsZODVew8hP0iyu30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PzvL97JyIcZL3ZBTLtAj8iM7ZtHfOzBRGVqKvs4XimiVltfgoDSA23JlCf+GUBg2ker4rtEevAMcb41//Htl+8zRLT0CwTXai6zGJJkJ9FAva6SzUV6nTZYObxqeiONDeUnlyw0V2p43N0Q/Ae821I1ieVEl3ordnBHtC8HnPyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vypw+YZr; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3bba50cd318so3935660b6e.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684962; x=1707289762; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=By2qz/vvhRjEPGW0+7mtr6OKhriVYbn3cusAD58pKKQ=;
        b=Vypw+YZrz/aSEfwP8MmY6H4bZ1e/vAkw0clqqzOFaQK56w8IrrtarTOEEpUZQdtzls
         Jwtb3VwrsbHWQpWi0oxNZY/qf2oVVtXMigAfPBPm8jv5/ejQgz4+XSw8x9t7WRIIac4b
         xXptcoQyb1bjfj1RJGpkSQodvi+PQHD2SA6Uy8MJuM3q4mYcmC637b9dJBQsGj/yov8v
         ajcEwxLybfeZpz7Fq0qqrO2XZU0PHU7S6ZzYO0AFU9vdD7XP37YVb68ukBzCWqBrezyo
         2IxZiYU9eA0bLXTcoForTB1jJmFe2h+DRBXfh2fQuFvGkqurlDRqsAfhUBi+tcWqoK7n
         3nsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684962; x=1707289762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=By2qz/vvhRjEPGW0+7mtr6OKhriVYbn3cusAD58pKKQ=;
        b=pu6TDD8L+l1Gj91fJTE4/DXh3PI3ZG1ZkOTCB174VE1/t+Yjf0K+Je9IYlznQMxGh/
         uSn6+zYCWC+EsbniDRmSSVmUiKp68ckk1ix4Y0bdYA4X74sfACEa2ShphXgDLHxkWA9o
         LDJsXbZxaes2FMe8iTY5+Bn8tzZqO13Nv4kWV2k3kaQ4Ful5byIP3CTpWweboz6wke/5
         /DW9cAYOBOdmvrYh6+9SuvWQXWX4Unk2mBelReWBNlv/gKJOYfHnDTwXOpBp7ko5VRde
         rhLZyJB/huu/E+7M7ZdV3r6wnDazj1dkODXg8UxSVGoWj/pJcbSnSl3/hgej7n4v6/uL
         E+zQ==
X-Gm-Message-State: AOJu0YyOJau0JcW+IawUrEvV4JEWgChdnDi2MO5sbth5NX6dAH3uqzPP
	Tghk2sxxZckbJZ/05NX7iDz3XvajECEXo4uh4Er1tFRJrEZhhB6Oj0oi5/Pd9g==
X-Google-Smtp-Source: AGHT+IFc7Pb2WMzbrtd7ampAIBoyCVgaoFRQIr5Fh3lsPV+AX2fcxD43nyyuB/iUSnkSJaBI4ZhFmA==
X-Received: by 2002:a05:6808:220d:b0:3bd:c19f:2fa3 with SMTP id bd13-20020a056808220d00b003bdc19f2fa3mr972423oib.51.1706684962159;
        Tue, 30 Jan 2024 23:09:22 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:21 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:38 +0530
Subject: [PATCH v3 15/17] arm64: dts: qcom: sm8350: Fix UFS PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-15-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1273;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=5wbR3f4WW33GGHcau/dlVX6ejvxsZODVew8hP0iyu30=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG+ICNR7eXSqIf5LkQALNH6WwX5hS65s0f1P
 gR4bRoFmd+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvgAKCRBVnxHm/pHO
 9ZtdB/9rx0FMamEyvNE2jqwXSD23OtJPpAeAr9uHMNnP1rK/dYROtanBVFSUFFJBTE1YtKurm8M
 GmB4ukc1uVBQGraGxO2K2m+shVq8/Mfi9CeDe2rWF/F4+D8ObSrOkyGViInOxOye2qDXOEMGHO3
 lvbtm1+BNv2O62BDqePZk2u5S7ugjxeS163tUCEbJCHTfUwuWHScpuGkHE5XorYoSxCiFT5yOCG
 qQs/XnNQyc1i5XLyi0iOkOtXgk1urCndOUplRbH5WFWgIS0dF/UZLahpTRItvVo4MDCUG0pTYbJ
 GkkOBT99n6i69R3ksSt4cw+FXmhAO+QsPrigtmB2zRsj2YSC
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

QMP PHY used in SM8350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 506400992596..65d425f56583 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1746,10 +1746,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8350-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


