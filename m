Return-Path: <devicetree+bounces-51584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3C287FC0D
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B155BB21414
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0714F7FBD0;
	Tue, 19 Mar 2024 10:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="REDceqpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECED7F7D3
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845090; cv=none; b=HWK6w3gpERLckD29b/ih5Mz7axCrnflYFLo5sbZpdDXJa4LiVU5ZOyhUF23bPpRWuMpWJEE6QBb5BAjqaRlV+sOQ7dE+INhWjUHRX7G8g1webo5nPIXcrjORHkyoMJChbZBfXRfGaEkuOZFH6V3uz6Dw02vYXqJOw+hxzJJHLgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845090; c=relaxed/simple;
	bh=xL8h4eyyWci29QidVxDLfR9l9WmgeWgRBwZjFy3/qKU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l9Yu7IVFGl2fUH1Dh1jJEMYUA8nqgk2OaLY8OVv486IndTc6hGW94ocMDCesRZDspUZ86br5VfQUvYHrvufful1mW1Z941GfkFRlgdEsz6xmOX+OTD3Php2BF4T0mRiRr0XmbssBPnHMNtxEXx4GuoY19tMlvj21nrex7sOiBEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=REDceqpZ; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-341808b6217so848017f8f.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845087; x=1711449887; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ty3VrFMi2Un83tZJpEiaZ9eSHCnRrlGoPwQ7PufQuP0=;
        b=REDceqpZIRF2An/v6ZtIxjDZ8yw7eJV7QBNSetNUGnREGK+wR3Bc298nvwHeA/VuWz
         LuammWX4ilRBnoWNFnKTZNPQiAsCK+A3TWdJ2iePbQd2pcZnsLtLiuMNt+2e8ifm99uA
         Ps6qs9o1gUbApIXf39zZn/urGDZomrERFaqAQZpkAs33oBzbp2AND0YspmZQr86AhMOB
         46YO3YmgYpjTbJ1zVv22aUQatkSVuKPxXw/FSzchPEj4SfIfj9Yg7MT99iWmynnO4PZW
         Gfd2WA9ZbhurYRS1KliPCdDak5Ey/t0R7OmZmFrWHJuR3rhmMy2C1fVvHFIb87h/m5mO
         rbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845087; x=1711449887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ty3VrFMi2Un83tZJpEiaZ9eSHCnRrlGoPwQ7PufQuP0=;
        b=itkjBbuFqd6A4SjSIhPv7ZwHJ5BpDzdB5aWwQaihyEDUjUoY5eXV5MlQTqG7KDfXDV
         am6ulb0JyTWnmNzdPakwLTPDq2tzgnVob/GZnCf3qH1gTPPJbxtbygsk/hL2BgCkRVC1
         BRv0HtgKythb76EMgSGs/lwPPyKf1OAyBDHwfy3+ODit/xBqSCmWfNLwG5h8EavJA7UP
         sVyxiWouv3ZEaGd3CFgRhWuxIjNbSNNqrFC2ieK3uyah9Y7lF8J3kINcBPlWjsK21sMi
         egRIkfZS+DiSJhbMwaMKz9GQAVktJeJMWia/M55QOWAqw/TqoX+WOHgtb3XyZ+78Mg6h
         erIg==
X-Forwarded-Encrypted: i=1; AJvYcCWpV26DAGlJzTIvwVF3WQgzmr2+jyhLxL1V7P3wXNndIAk+5SWheawFGB/7s+QW0QcB/G/EQAfoHL2o57J2oLqY5c+fQ8WxmIEvsQ==
X-Gm-Message-State: AOJu0YwzoI6fo60y6aYC7z5BsrafmVFDp8sMPm4usSOo3HUBCEmZjMiZ
	6nev3vEZngQC/Y6KwsLiiQuCFQafCmA1gL6nz1NX5CLaxrNrQPTpn2mEbL2F9Ec=
X-Google-Smtp-Source: AGHT+IHDUjCnXWox7pyr/ZefGE91CNvjYVpHS8QiFFtd707Y/0mFvdcstW0ixdbZPpAvgibXV9v+Lg==
X-Received: by 2002:a05:6000:1805:b0:33e:5310:820f with SMTP id m5-20020a056000180500b0033e5310820fmr1468072wrh.67.1710845087159;
        Tue, 19 Mar 2024 03:44:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:33 +0100
Subject: [PATCH 7/7] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-7-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2393;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xL8h4eyyWci29QidVxDLfR9l9WmgeWgRBwZjFy3/qKU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyXSPEU8h87XAYp3k8Wphua7O1IBTEZXA2fRZKA
 csAIZCyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslwAKCRB33NvayMhJ0a5REA
 DFLrlJVrlPgp1qAFKTSAlhaK8VNJVQ+cWx3mJfZbntkamF9yQRQ1MAzJyMi+LP3WPCddk2lbXwl4Bf
 WdZ7wOFJ2gDBBZX3j5NlfWeHlWHh2eybHELJzsFou6loQO9tuPnzIfSOw1iQ/9Wp006ieX88hwyP4b
 euTBxe1EgZB3bsSVt1fmfWRu0cXxarjjKg8kWYKofFL+bZVLXEAdf1O/PR8J2WE4oXLc4WA5/7llWQ
 Ao4pfNsBZFuSzPoDzoBSebX5kyvLMSJykJcsPxTzzz4QQI1110E+a9LMlh5D+kWkO6f2+d0n9z700v
 Nh528LWb0zUPeGbibCmZEgQGv6oLtkxPSfqf1bMU5tW+aKWzLrw+MmBAb+JA1lZOcQzoeDHRjXmaDP
 OIYWiM9skcAYfFCPmz5yhkgdCQB3Av/7mMbLHTh0zMXLFbxllRBEtdQYBWNrznYjqhre7QiRTlRkjc
 m9aw/7icsNc8x1Z0oTTdK/NmpZQhDSrc8W+irx9A/WKIcAELwMOwcqio/F4tkj3J86ZihL7XuFEi22
 UE0EKl7NrLf/KfaYqNOTQHIA8y30RbM0UOc/HefZFiDWiLPG87+ubw8VFnZn2US7A7q0STym7O7V/c
 p+l3viI2yKkkbijvh8ma182IGqDdIzWd797/LNn5qj0ZSTkeqWWq2hQPKSpw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index 4450273f9667..95d0c2baef2b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -645,10 +645,6 @@ &mdss_mdp {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index b07cac2e5bc8..c6e907e40af1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -831,10 +831,6 @@ &mdss_mdp {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ba72d8f38420..6e4362bbcc3a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -60,11 +60,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -758,8 +753,8 @@ gcc: clock-controller@100000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2449,8 +2444,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


