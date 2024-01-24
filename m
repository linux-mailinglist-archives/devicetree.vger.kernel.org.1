Return-Path: <devicetree+bounces-34565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0D683A32E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 262561F259BA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81D217548;
	Wed, 24 Jan 2024 07:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BUMJTqUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BB418E00
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081878; cv=none; b=dPGZ5xBTJuhhX3dNW28vVWPDqVzBjIygqFff5zTsTgmCoLGJ5MkWiaeYTfCTQlbIBJnN85tBYj1PKQOqsrAESmkdGncC2QrDbM1J36TaL9H0054JSxJ9K4nGxhEbQnnf4zCkFWckiJrjsFKB8YdgmNmhWPIZXQuCejiPKiRu4j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081878; c=relaxed/simple;
	bh=AV0AQVKEuKDRIth7QZV7qLd22LfBtighoMaozbvkXAg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IxUL08jxct/WIY277zzYkI4UVpDTaT+PWDezhYoi+w+i1lo+Q5ccVhfX7RaJ+hVbp2InGJvB2+T3gJRDyh0MO56yWxzjiWpIIetrtGdSFYMOiBSR4eJ+juHBKLh8rsS8sNfImLalPJt5jnemUGVo0KUOdHJ0/jRNDq3ShwvwTrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BUMJTqUT; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d746856d85so17837945ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081877; x=1706686677; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DJs+PMBAGDBvXkVQNcVnd/NTo5VAtnKOcQ/VzO4TVvE=;
        b=BUMJTqUT5sRYVUQaeLoW2vTU7TuokWuQNP1M2NMeHj2u1OloZTp5TEl2lj7m0deM4e
         7I5nro+ldwNoWH77gLGlQmMSjxTMmrMR/8+sNutxZLD1usBZUVpY/LpxtWJnWxSbMQhi
         YoUdZwZwByYseX4q9vjy9Ko5QaA3P2PlQEa0UmafhyMMsklkh9Jt5but1NoXdBTY4IzO
         H5bnqrC6jOJdVaVH3WVHOdtTogpZvqywCXRwTzckR2xeZpOTuNAID9eOSv3X5+osqGGI
         y3rZVlUX3c42Fg2ew7/xSuOvsNxnX18oJs3vzcTl4Ix25DDOj/cZ039MWzGJMnp9d3Fd
         n5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081877; x=1706686677;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJs+PMBAGDBvXkVQNcVnd/NTo5VAtnKOcQ/VzO4TVvE=;
        b=iQgHe6ADvpZPL404TatCT1Jc2mynuyt+W05RAr7IYwPwLwotEBeDsBjl85KYT6qtlg
         IZkDg0RS33lEzdzLepZpDF3gvIrAsuaGgegD33twZT4DZL133oyMxt14xkre2FqIYg/2
         QGR2cdEkGHH/PHMG8S3WxK71VjxFwHhiuPUeO5aWUOVrI8geG3oifw/vLAnwOwjC+oJ/
         yxk6FRQeUPxzPgqwdz7Wv39o7qvXbLNmzod7BrnOg3TrPp0NLx0ZxxGUNDSxNkREb65J
         EfzacsosPFxiqLjGDCXMleVuxbOVSenijeos3/87960pObvs9EMG9O3k9K8ksYxHATye
         iQWA==
X-Gm-Message-State: AOJu0YwpxB3LuD1/28cfgyxbRvxdrOSXnQm/5gJy6j9Bzslvkq8TEGTj
	9Se05p8kVo6Sfr/INzGj1cqo1KULxHRNBwq9FRLPhGfxAJF+b9T5GYtg8S7mow==
X-Google-Smtp-Source: AGHT+IEE2l1wj9BXbay2mDG16hgBi9RNBmfBy9y9+PIFIVWJ/aOh9+lHuObbBTLFHE3YbFHRDrktmQ==
X-Received: by 2002:a17:902:728c:b0:1d7:199:cfb3 with SMTP id d12-20020a170902728c00b001d70199cfb3mr292163pll.70.1706081876913;
        Tue, 23 Jan 2024 23:37:56 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:42 +0530
Subject: [PATCH 14/14] arm64: dts: qcom: sa8775p: Drop PCIE_AUX_CLK from
 pcie_phy nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-pcie-aux-clk-fix-v1-14-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2114;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=AV0AQVKEuKDRIth7QZV7qLd22LfBtighoMaozbvkXAg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4Fhhiw+ROelMo4VRCj1+Kx7T9cS2AThYZkc
 DknKia3ul+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9bthCACRQjvyFRVJy3hTYxwCqypCA959YVl640Spi+/5TQUxSwUS5HOza3ZjI6ZCE6ZAV0awrPp
 Ma31wRRoKSgL0QcvLroRMpG1W5pN5E1/CJq/7joMoTGV0Gytn1w4fGIB6/kSXkiPqOPMbNMCVFF
 Ngelg4E2chxrplR8oOICcl/mKuhw922a3poiiA+oCWhEqfmYWYYtsF2apAswH19tebHdmBaK1SZ
 R6CuqE5X5TaD+C9YLOpC2/R0IwNZhXa5IF44UqN+Z2XWohLPbBrvLIpcPH81pLIQtrGgFaeeM8N
 gbnY/iNcmWsx9j3N5iilOXhEMCW5MWYCIzifzYfgmlKRHqBf
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy nodes.

While at it, let's also rename "phy_aux" clock to "aux" clock and move it
to first entry to maintain uniformity with other SoCs.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index a7eaca33d326..b99626c52800 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -3590,16 +3590,15 @@ pcie0_phy: phy@1c04000 {
 		compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy";
 		reg = <0x0 0x1c04000 0x0 0x2000>;
 
-		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+		clocks = <&gcc GCC_PCIE_0_PHY_AUX_CLK>,
 			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 			 <&gcc GCC_PCIE_CLKREF_EN>,
 			 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 			 <&gcc GCC_PCIE_0_PIPE_CLK>,
-			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>,
-			 <&gcc GCC_PCIE_0_PHY_AUX_CLK>;
+			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>;
 
 		clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
-			      "pipediv2", "phy_aux";
+			      "pipediv2";
 
 		assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
 		assigned-clock-rates = <100000000>;
@@ -3690,16 +3689,15 @@ pcie1_phy: phy@1c14000 {
 		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 		reg = <0x0 0x1c14000 0x0 0x4000>;
 
-		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+		clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
 			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 			 <&gcc GCC_PCIE_CLKREF_EN>,
 			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
 			 <&gcc GCC_PCIE_1_PIPE_CLK>,
-			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>,
-			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>;
+			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
 
 		clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
-			      "pipediv2", "phy_aux";
+			      "pipediv2";
 
 		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
 		assigned-clock-rates = <100000000>;

-- 
2.25.1


