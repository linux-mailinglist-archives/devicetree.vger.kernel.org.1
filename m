Return-Path: <devicetree+bounces-275874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0O2cLFpZt2nQQAEAu9opvQ
	(envelope-from <devicetree+bounces-275874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:14:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 233D4293557
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A10B9302A52D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D81244694;
	Mon, 16 Mar 2026 01:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sr+qn4In"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE6523EA8C
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623578; cv=none; b=Zh+hwo2AVi7GEMB1JhQOf6aRwyDlKJVdAl/JN7ZjLp6oqUkN5iz2dCg4AcszNU/wDpRzrw+PYbGlmVUQkbOPE0GdutXylArmL+fxhbsdTOJbyOWt3demSyxfYRwg2tjs8xQB46FYnfDGtJabINIr1gRidckD5RbM9QtMdBqi0cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623578; c=relaxed/simple;
	bh=hEF2lN1urW8zssRTsEXfW+Q2/UUrb+UsBDx6A7JIpcw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fN30ra6PE7eh5fftnIyfeOTwmipkeSDtDScU1HCXIH0GC+FE7toiRVEzXFDKfJyPnO1ErsbVDcXNJi58HDpe0F5nH+XgLuGixu0qh8y7UcqKyFENiFUoxvRwm/dBXyyMZIGvHRpZLHsU5Wkt9+5Cx1EcvCbOu4I+0WmoGzfsh84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sr+qn4In; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-485410a0a8aso36785425e9.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623574; x=1774228374; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AaHjvPVX0M1ignoKX3wED0qfw279poToSpNFs+EL0eg=;
        b=Sr+qn4In9MuVGfniExcfAdr1IcoilkJS+X9SpvItAJ+YyscRxpofGZ7E1Ee5EKsywL
         VDCUg8eu9FBuFHW9jfYtH5I9u27n5uogXKAfVUx3I1AwTRqVh0/QOJ75fKYuqwmtNRqr
         gXkFY4QGnwBPVvxP1/jnNLCdrXv0aTtcVH+kidyB97/p3eQKd7YKGaMTmEmnL7ILg4RX
         UZ1ky1a9DLwKRSsv/gNaq6qjLThpBXZEqbdboJW4V4VhIxRQ+srB1kbSwexv0KFI3iIB
         1blDAjib6sHckqhN5zlLA3xlM6kGs04C9DM+pyav9qkNZqQAHs8bO4vATpYRLjIrsE0o
         lBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623574; x=1774228374;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AaHjvPVX0M1ignoKX3wED0qfw279poToSpNFs+EL0eg=;
        b=BUUefYNOvmbfbrFlDsFg/4u+4HG2hhacFn4T04oLa0Dg7+Fup2wHLSqeCNqzeO38p3
         8iMCNhFrh8MjIYGIQlSgotwaui4DkqWgfbMwX3+u7hAXmLZdSqghUfaT8rLiP49g5BfG
         iUbsUHXxNjws0M6kcJIK7u8SOHD6otI/h8rcVmGaqet72SkXasCsmj7YaC4Jq4xH5nlr
         OH3N0ekoQGNuap0hgvtWL3f5aCS76WKupxIo1y/OqPi7xTTV92CjBauFiRmjLuS1Kt47
         mrZJe7jYwnF2FpKy+msERXoedEN84Rkiwyti52LAw3++VhsN5tod8nm7lO/stxAuTlWG
         8nHw==
X-Forwarded-Encrypted: i=1; AJvYcCU837qQpCe/y6GmVbp4fLJTJvQNcGdZlygNKJr8a+g892tJJwFgzPeP/imqDF9E6g4S+fShS7M2HGGU@vger.kernel.org
X-Gm-Message-State: AOJu0YwBYQDrXulD/Zi1zTcUwY3ZZa47Q12SidziPAndbhJHmqAKdOfg
	oUo9LWHSfDeADrvMgmhl9mXHkjzMvcFiFnN/ptQi5ChmyjS48+rnVhpm0SePOcRkwlZHGW6aRW6
	/sgah5qU=
X-Gm-Gg: ATEYQzyRdlRBGaiE16SNkeNLk9Vt2M7pKCynbrfKWcLiX9+Mv3GeHJGsVHT+dwVU6/W
	mLAmvsB/fkNUF3qAI2u6irOV2OmCfvl/4L3JQ/zAQBvp20wVwZzT/wQwtwoLKETfG61xJCKTPmc
	Xs9QXUz+kaLwhfToTwfz/0mke9C9lB4mfXg5ybVD0FXCXdd0tgB2UgUhLyAGBnrgKHtgI5LPnKo
	CmWrGYSIcE1E7LcS+4koiii5jSm2+46bCZvu504/cnqy/fgFy1eP6fAeE0i0Sm9BPrItGa7+2dD
	TG34u43gZ4h8UgW31ZeyZTr9WhyBka2B/q7qKB4QTg6eegirukU2v+IrxZkWGhzmKY4MCMxw+ON
	PLt5R3y5BYFDb/xHuM/4a/Tn0Wvepy8QLZeWRz2x2ef+dMtK79Rml7Pmen6dvTecmVqcTOim/7E
	nMtKpgr6Nhu8Q+VE9jV5/9C/jkm4Z8gUk3vNFo1wdu6krVLw==
X-Received: by 2002:a05:600c:3590:b0:485:3b34:2f61 with SMTP id 5b1f17b1804b1-485566c9464mr214130105e9.7.1773623573955;
        Sun, 15 Mar 2026 18:12:53 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:53 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:45 +0000
Subject: [PATCH v2 03/11] arm64: dts: qcom: x1e80100: Add CAMSS block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-3-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=11119;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=hEF2lN1urW8zssRTsEXfW+Q2/UUrb+UsBDx6A7JIpcw=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1kZTf8O5Wx1HVkb2CYmFUCoVtHoUqAFB05Vv
 ZAnf4QI76OJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGQAKCRAicTuzoY3I
 OrlpEACVhaB+UlzQc3cmoyjHH8OlKi7gCQIWQLVwILOKtvUuUyS3fnBEwHRwxMV8bk2gDXVtxuG
 /7yycak2tho9aPl1Thwk0q/AY2/FJ8OIoI++nXEZZ1f6AjHIDK0dc1AlVSPA2TvDoWgV112+V1M
 9+rNcwqm4HxzJ/Sva+2FSq28tpG2N4hzyRo7YAX0nAYW7iXSKGvVkG7UtMkO1uZsLWkRVJlAmyg
 s5AtFUpcFgJ9a6rIqgc24GhL1PdDRiqKO1s7VwU8BsUYM6VsmYLeD9fFMOzCXUX1bS8VqoYI5rZ
 9ZFTzI+KECkMMEtJV3EGKcW43/dow5iprWEZfJMeUl9dzgxmBewLlIC2SxJJ8tEITu/HM/CogFg
 qnoseoWZc2YHm0s1SBrnSlSwsIjgMyAiLTLR+9oYab83AkweyKxSrShRfs7xSd0pobNVFmYwjTX
 29agVhowlnwMtvMlcDCqaLtAPpUc4ohVcReL7fgYSmdPRngXKkhQT6Ie0AkoQ1qyosIT63pPAHE
 L4Gpi32LTQBmG4XJFh85ENRVBIUm4/WgUZFXRe0Gr7QXduwfl7fT5p98cLXzyx6niOcR3syl87o
 y7Dg1lHZNe17Oz2BPkAsWnOfavz/8gBev1diy+i4LpjRjrm3qOOZtHXj8zXLTy3NVn6MBzp0vDY
 VE57N24JXCVfoDw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275874-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 233D4293557
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add dtsi to describe the xe180100 CAMSS block

4 x CSIPHY
3 x TPG
2 x CSID
2 x CSID Lite
2 x IFE
2 x IFE Lite

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 367 ++++++++++++++++++++++++++++++++++++
 1 file changed, 367 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 38f9da6ad9ca5..c62187856a451 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -16,6 +16,7 @@
 #include <dt-bindings/interconnect/qcom,x1e80100-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -5543,6 +5544,372 @@ cci1_i2c1: i2c-bus@1 {
 			};
 		};
 
+		camss: isp@acb7000 {
+			compatible = "qcom,x1e80100-camss", "simple-mfd";
+
+			reg = <0 0x0acb7000 0 0x2000>,
+			      <0 0x0acb9000 0 0x2000>,
+			      <0 0x0acbb000 0 0x2000>,
+			      <0 0x0acc6000 0 0x1000>,
+			      <0 0x0acca000 0 0x1000>,
+			      <0 0x0acb6000 0 0x1000>,
+			      <0 0x0ace4000 0 0x1000>,
+			      <0 0x0ace6000 0 0x1000>,
+			      <0 0x0ace8000 0 0x1000>,
+			      <0 0x0acec000 0 0x4000>,
+			      <0 0x0acf6000 0 0x1000>,
+			      <0 0x0acf7000 0 0x1000>,
+			      <0 0x0acf8000 0 0x1000>,
+			      <0 0x0ac62000 0 0xf000>,
+			      <0 0x0ac71000 0 0xf000>,
+			      <0 0x0acc7000 0 0x2000>,
+			      <0 0x0accb000 0 0x2000>;
+
+			reg-names = "csid0",
+				    "csid1",
+				    "csid2",
+				    "csid_lite0",
+				    "csid_lite1",
+				    "csid_wrapper",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "csiphy4",
+				    "csitpg0",
+				    "csitpg1",
+				    "csitpg2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe_lite0",
+				    "vfe_lite1";
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
+				 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CORE_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_0_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_1_CLK>,
+				 <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_CPHY_RX_CLK_SRC>,
+				 <&camcc CAM_CC_CSID_CLK>,
+				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY4_CLK>,
+				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&gcc GCC_CAMERA_SF_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+
+			clock-names = "camnoc_nrt_axi",
+				      "camnoc_rt_axi",
+				      "core_ahb",
+				      "cpas_ahb",
+				      "cpas_fast_ahb",
+				      "cpas_vfe0",
+				      "cpas_vfe1",
+				      "cpas_vfe_lite",
+				      "cphy_rx_clk_src",
+				      "csid",
+				      "csid_csiphy_rx",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "csiphy4",
+				      "csiphy4_timer",
+				      "gcc_axi_hf",
+				      "gcc_axi_sf",
+				      "vfe0",
+				      "vfe0_fast_ahb",
+				      "vfe1",
+				      "vfe1_fast_ahb",
+				      "vfe_lite",
+				      "vfe_lite_ahb",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
+
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid2",
+					  "csid_lite0",
+					  "csid_lite1",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "csiphy4",
+					  "vfe0",
+					  "vfe1",
+					  "vfe_lite0",
+					  "vfe_lite1";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_mnoc",
+					     "sf_mnoc",
+					     "sf_icp_mnoc";
+
+			iommus = <&apps_smmu 0x800 0x60>,
+				 <&apps_smmu 0x820 0x60>,
+				 <&apps_smmu 0x840 0x60>,
+				 <&apps_smmu 0x860 0x60>,
+				 <&apps_smmu 0x18a0 0x0>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			phys = <&csiphy0 PHY_TYPE_DPHY>, <&csiphy1 PHY_TYPE_DPHY>,
+			       <&csiphy2 PHY_TYPE_DPHY>, <&csiphy4 PHY_TYPE_DPHY>;
+			phy-names = "csiphy0", "csiphy1",
+				    "csiphy2", "csiphy4";
+
+			power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
+					<&camcc CAM_CC_IFE_1_GDSC>,
+					<&camcc CAM_CC_TITAN_TOP_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "top";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					camss_csiphy0_inep0: endpoint@0 {
+						reg = <0>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					camss_csiphy1_inep0: endpoint@0 {
+						reg = <0>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					camss_csiphy2_inep0: endpoint@0 {
+						reg = <0>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					camss_csiphy4_inep0: endpoint@0 {
+						reg = <0>;
+					};
+				};
+			};
+
+			csiphy0: phy@ace4000 {
+				compatible = "qcom,x1e80100-csi2-phy";
+				reg = <0 0x0ace4000 0 0x2000>;
+
+				clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+					 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+					 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+					 <&camcc CAM_CC_CPAS_AHB_CLK>;
+				clock-names = "csiphy",
+					      "csiphy_timer",
+					      "camnoc_axi",
+					      "cpas_ahb";
+
+				operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+				interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+				power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+						<&rpmhpd RPMHPD_MXC>,
+						<&rpmhpd RPMHPD_MMCX>;
+				power-domain-names = "top",
+						     "mx",
+						     "mmcx";
+
+				#phy-cells = <1>;
+
+				status = "disabled";
+			};
+
+			csiphy1: phy@ace6000 {
+				compatible = "qcom,x1e80100-csi2-phy";
+				reg = <0 0x0ace6000 0 0x2000>;
+
+				clocks = <&camcc CAM_CC_CSIPHY1_CLK>,
+					 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+					 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+					 <&camcc CAM_CC_CPAS_AHB_CLK>;
+				clock-names = "csiphy",
+					      "csiphy_timer",
+					      "camnoc_axi",
+					      "cpas_ahb";
+
+				operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+				interrupts = <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>;
+
+				power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+						<&rpmhpd RPMHPD_MXC>,
+						<&rpmhpd RPMHPD_MMCX>;
+				power-domain-names = "top",
+						     "mx",
+						     "mmcx";
+
+				#phy-cells = <1>;
+
+				status = "disabled";
+			};
+
+			csiphy2: phy@ace8000 {
+				compatible = "qcom,x1e80100-csi2-phy";
+				reg = <0 0x0ace8000 0 0x2000>;
+
+				clocks = <&camcc CAM_CC_CSIPHY2_CLK>,
+					 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+					 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+					 <&camcc CAM_CC_CPAS_AHB_CLK>;
+				clock-names = "csiphy",
+					      "csiphy_timer",
+					      "camnoc_axi",
+					      "cpas_ahb";
+
+				operating-points-v2 = <&csiphy_mxc_opp_table>;
+
+				interrupts = <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>;
+
+				power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+						<&rpmhpd RPMHPD_MXC>,
+						<&rpmhpd RPMHPD_MMCX>;
+				power-domain-names = "top",
+						     "mx",
+						     "mmcx";
+
+				#phy-cells = <1>;
+
+				status = "disabled";
+			};
+
+			csiphy4: phy@acec000 {
+				compatible = "qcom,x1e80100-csi2-phy";
+				reg = <0 0x0acec000 0 0x2000>;
+
+				clocks = <&camcc CAM_CC_CSIPHY4_CLK>,
+					 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
+					 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+					 <&camcc CAM_CC_CPAS_AHB_CLK>;
+				clock-names = "csiphy",
+					      "csiphy_timer",
+					      "camnoc_axi",
+					      "cpas_ahb";
+
+				operating-points-v2 = <&csiphy_mxa_opp_table>;
+
+				interrupts = <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>;
+
+				power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+						<&rpmhpd RPMHPD_MX>,
+						<&rpmhpd RPMHPD_MMCX>;
+				power-domain-names = "top",
+						     "mx",
+						     "mmcx";
+
+				#phy-cells = <1>;
+
+				status = "disabled";
+			};
+
+			csiphy_mxc_opp_table: opp-table-mxc {
+				compatible = "operating-points-v2";
+
+				opp-300000000 {
+					opp-hz = /bits/ 64 <300000000>;
+					required-opps = <&rpmhpd_opp_low_svs_d1>,
+							<&rpmhpd_opp_low_svs_d1>;
+				};
+
+				opp-400000000 {
+					opp-hz = /bits/ 64 <400000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-480000000 {
+					opp-hz = /bits/ 64 <480000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+			};
+
+			csiphy_mxa_opp_table: opp-table-mxa {
+				compatible = "operating-points-v2";
+
+				opp-300000000 {
+					opp-hz = /bits/ 64 <300000000>;
+					required-opps = <&rpmhpd_opp_low_svs_d1>,
+							<&rpmhpd_opp_low_svs_d1>;
+				};
+
+				opp-400000000 {
+					opp-hz = /bits/ 64 <400000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-480000000 {
+					opp-hz = /bits/ 64 <480000000>;
+					required-opps = <&rpmhpd_opp_low_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,x1e80100-camcc";
 			reg = <0 0x0ade0000 0 0x20000>;

-- 
2.52.0


