Return-Path: <devicetree+bounces-51582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C45EA87FC04
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 579BDB21CFB
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE917F7C4;
	Tue, 19 Mar 2024 10:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B7lmMTyz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2787EF12
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845088; cv=none; b=EJEFCbgM9kS0YiKfrPGF2FA4OH0txb1aD2UN4CP9po3PDuVthYuYC5/dPFn/a0/InyWsAh445G4rHwkN5IZ/N8pDMPs33+h+mDVNPILh9dgZclwyNZOINi/S7Y4SCFA9vZwZGq3NzKO0ZJonWe09R27eODaxYSP1udnDiTiztp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845088; c=relaxed/simple;
	bh=28QU0YMkxsZqPqQJ114lR4c0tKsd6LuTZoqIQzDtKfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U21d8sA6GhdFyUUgyoaKbJfalWofI8Riyr9zIjrkoRL6ACeHFWYoX4j/51nmYtDaj0eLlIrHQ0tiYsfab2noEINF34i+0Ar1/UZJEXBAQJ8CElWyDgGWq4rqTI/eAbETjEK4UqlBBiwtMJNN0pA1tXn/LhS0/yF5kDviNepliMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B7lmMTyz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-414612cfd82so8275145e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845085; x=1711449885; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TKxzKi63wMAR+w/KLt9riuAXy6iLFW71XAlwS8JaxNQ=;
        b=B7lmMTyzz1FqRAFVZEvs9sh67DlSN5oVqXPbEfuudtzfD38Kdholtir/j2YKlp1Fpp
         ofQIxAXNBcx32Lit6LAG2Wxscc5v8BKec/pU6w1VpNt5BE2DWLlNbJpdFkLbRaE2Ck6w
         yquFO0G9KrnfDZtHG2IFwumgwSw9lb31+aaVIVAoJ97OqJsizAmjoCjHb+XbnGreO1BN
         lknF5lfiOWHjEGXAXxZmAoJvzE/6WC/zSlCA6NHP3PFASkGwRJPUtIlOVboLKFFos2P3
         Xl6TlBGNt5S10m4H0IBq5KPtd/JM6DCNjfzGSi6rJA9rPWKmoYQVLmYqQO1FhfVL3pi4
         HNLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845085; x=1711449885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TKxzKi63wMAR+w/KLt9riuAXy6iLFW71XAlwS8JaxNQ=;
        b=fSjUtgJez3YAOIqxccjTR2Za+uavfYmJRLE/LNl0rVxC2YBjOWotCJ/AuHylzUGli5
         XvVSgQWbYGSTTXtPvbHX+UMQP3CuGhfIvNAjqHG3tggS+OfeVmxwTaJFQx+OqPQgOUOT
         e+V6Z99ZuDrsvFw1LsB8REhy+0PsYaXTE0aFmImivK4W3TAsCsQzc+5hhqoKKPA8jI7U
         6knhZekjRTL1PgAGSgv3jS5AYs3a06lFfQA+a/tulcmWc6pYJWje65/JYZMK2luKvcQM
         MoaMZChgtqU3TDSSK9y0qEq7aeQsAmAKFKU6vr8B98QXx/unEvMAh5Rfq5MzZuzlr7D1
         56Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWvfVRPCpgowQtxUq4vkp+9lsqqHnIamRM0SbkV9jXwnbbii5BYt5x6Pws6g3pF6WfMHV4+u/g25txAirubxmgkKMJJWcG91mH74Q==
X-Gm-Message-State: AOJu0Yxk+MDEcDpm3o1rIYGF8vBP4Y1fWGZ2JXfFKjTwv+ZyQAI6GM5n
	xWmedC/PfSnVltyWqsBRBXP3rzdiGnEpLON033D03xnp0MU8v6CYwz+meG3lqhs=
X-Google-Smtp-Source: AGHT+IEDFC1DurTYuBJ7R06UovGCEH/D9ddBQhJH+4Ic+m3CHU6PMj8rujDEUk3Hdr2MZJazyqb7MA==
X-Received: by 2002:a05:600c:35ca:b0:414:1a5:2085 with SMTP id r10-20020a05600c35ca00b0041401a52085mr1629807wmq.31.1710845084932;
        Tue, 19 Mar 2024 03:44:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:31 +0100
Subject: [PATCH 5/7] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-5-926d7a4ccd80@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=28QU0YMkxsZqPqQJ114lR4c0tKsd6LuTZoqIQzDtKfA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyWRDFCl1NGQlpfuEOp55FUPam2rC6jwM7FxeDO
 MtEgG3SJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslgAKCRB33NvayMhJ0X9SD/
 wImYyLETMlaFFSv1nqApfKP20/9bFzojePtu6Epe8SlATlT20A1aPwVSrKm19mn11fsm54l8T7V80h
 0Lb+K0O86nMZaJihw6+pdkFgu6CxRzt8ZNcCmaqcuOoDl3EDtiDlNaQ4pqMMSpylyNgS15r9gl+T6h
 azbpG/8GqpuQsw5cq8xq+oiZ02IOlkHif5PqwQdO3IgcmgKkm8wg9XhJXxk7PhZfSJn1SVpnIDxaNv
 +nmCqm5GM8Yes+cRgbKRQCJfsJBo1KD+sFbKRarmrq9t2IBzeGUEITOzEIRlP0ZtrLA9C9JngyFgdX
 La378Qqw1rhQS5rlom+0fs4ahwDuUDR8Af7rVP7Qi2XbK212sRQcwTvGTrUoNbliL6a6AK/KvHWC6G
 DiYaUl0p3BURGVPyBeOaZJTfP/tm3AQNBeit6Ek2cFHdv7uYlj7ySw0KjUndbuTS9U2fVR2D1ZfksX
 inE/BJ+VYwAoXF0CJSco6wnlneofjHmM7LNwvNLcyxMUYHmYJEIgXTfdqBsVL67jeoHqEf6vKfD1yL
 y4vpofGRjqk2UcEYN1NxFgceC7EI2Q6Kiv17YueQfWFyYugTlEYZTBPr+JTDMgmGbUX3HmF6dGeZ8X
 2QoLRbxoex+eaI11httmhxNLYW3IdpaGY2KC4+dAxRAC2M3sSUZuVgsi2HVQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index b86be34a912b..32361af98936 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -754,8 +754,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <0>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1988,8 +1988,8 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk";
-			#clock-cells = <0>;
+			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			#clock-cells = <1>;
 
 			#phy-cells = <0>;
 

-- 
2.34.1


