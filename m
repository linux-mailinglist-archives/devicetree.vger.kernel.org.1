Return-Path: <devicetree+bounces-34562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 371BF83A323
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB5161F25AED
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30767171D2;
	Wed, 24 Jan 2024 07:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FeS/Mc3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BF4182CA
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081863; cv=none; b=c+eZ5JnoWHmRjpw2Wmub5l/Z/cP2f+WiTvP48dkRtU/zpvXC2Ur8ZbAXO/YyT+1MDa9zlLY4ICyJ+FUzGOvB2EitpRJ57ZDESyGHhrurK3zWX6arMZetXpaMHx02cWpqgsnStae9sadz5Kw83JlK514hLwwdhP1WzIf7gorjb7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081863; c=relaxed/simple;
	bh=q4REQuD/EeSNLvb14a6jAbCKy8un8bWTNayXDrd2sPM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ug7RwP2OzjJ9hHhiTWgcsO1bBumgVFA5gIqtHdd5vgwilYn0mSNMKtW4cAj7IWTp/YMnbbRlR14/58lFCtl4D+CosrDmbz+Lnc1c5OxGcW8lqyzacRBZjqUx8MZq69OXby0Z6jWAYe5CMOj7lZhCs27A5oOvb5JPRZfTcj2FYB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FeS/Mc3O; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1d6ff29293dso34332215ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081861; x=1706686661; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKf4wr/PhU8C8jJcjTd70SR5SaHAZ16yhIfEOdFxtCU=;
        b=FeS/Mc3O+PkDme03Q3I6psF2rQLLGCib4DK4sbfXEQw/clSxP+ZV7kZBEb07olE91X
         pk6agObsYg2eEjfpGpvHI7WWkgYXE2ee0Q4S5l7+sCHiCFkZXl/B810DN9EYsUFI1e82
         2KyszLR4NGW8GwH+Y3A9vZQpWm8A2DFSaygWAj0CEarB9ZjcmjJhABQhcUt7fB+ocCmD
         kQQ6V2HtawQp4l/vey0BwCDn+QBoRLBjJAhueVVIPOmKYMswIWOYOuC2wEPuTlZFTWj2
         q+8p1uVAv0kPkZyoLZEv/hshJgDkpJbV0SId8Rdpo1eyu6CX+zTHwFFJihsCZshVnhLF
         Z00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081861; x=1706686661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKf4wr/PhU8C8jJcjTd70SR5SaHAZ16yhIfEOdFxtCU=;
        b=hNRC9N6DaZE/nfyUu/UvmUsSFmkcjkgOMRPK6aLs8CCjeKxBKMsWdBLiGlrJfFcYT0
         aZIHVLMRcf2sz9pofNCBuwkXPVs3GamIwoB0H0zUImHMNCOf7H3jF8LH1F0Yi8Ke5rLv
         LT4LlXllV+kDw4PHDfEy3tR64zWdxFJEBNmcbEOYWdeGr2v70/KuemVoWCFlsFpEca2E
         3VR9stbSOIR3KlsvX7AsYMi4uVlREUbJb6qzS1TIWaZKcYLtF4figF181adwXKZImzD0
         3IBi32WYd8ytdu7PlfM2pZsJ/S+nmWoYHFj7XmyCaN/l23c3/vUj5UV86EU6YkBna8cQ
         yjjg==
X-Gm-Message-State: AOJu0YxPcl89F0XdVamrlhYDWXPbIAHywavkzRW/ECabff5JUFpHEqam
	G3eqq3aam+zB2vpzVBm3AGhOJmGHhSLVggEYHvAUdckuGEvqPQqNVjaofGWNjQ==
X-Google-Smtp-Source: AGHT+IFzkjDdfXVH1eFhiSZ/tTh3VQLR3Zc4fY3VVxilv+uGwzMM7MRyx1ANpgPtt9PStovNzoxI6A==
X-Received: by 2002:a17:902:d34c:b0:1d7:17ce:cc5b with SMTP id l12-20020a170902d34c00b001d717cecc5bmr300844plk.133.1706081861253;
        Tue, 23 Jan 2024 23:37:41 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:40 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:39 +0530
Subject: [PATCH 11/14] arm64: dts: qcom: sm8450: Drop PCIE_AUX_CLK from
 pcie_phy node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-pcie-aux-clk-fix-v1-11-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1078;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=q4REQuD/EeSNLvb14a6jAbCKy8un8bWTNayXDrd2sPM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4FuIFWugJBxWD5/8i6mcSozobTq0w7ntmVL
 VXJIpEnfTKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9QAsB/9WNzb2oQg0/MVu/Ww+cCD6j6lVrfmW+ehkb9jNlHHSOJbLRlu3JI1T39wTq26klASZlbZ
 +7h2sNu4y+h4T1zNFyxE+sqhAXkOkO4E0wiLMcFaDg2Hh2YOnAC2wMe5ieylobU/Oy33OuJCMTE
 GqSttxJ8dfRJjr8Ks9tH8r02I5kPEGjwHaOg8d3YzlddoOyM8ywBOFiTMHNcqNj6nk+J8FylhvB
 lY96HKZx28DIjqFR8z1vQ2ft8VlwJgjXfK/u2ckDV7GYilXZM9PCSY6Jn2b1tpeVsr8HJR1RGuH
 uCMB1vw4LnwteK6iPQABiiocCqFgYw6wNNC9cZ0mPbTgubXw
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 01e4dfc4babd..1e0091dabaf1 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1830,13 +1830,11 @@ pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
 			reg = <0 0x01c06000 0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_EN>,
 				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "ref",
 				      "rchng",
 				      "pipe";

-- 
2.25.1


