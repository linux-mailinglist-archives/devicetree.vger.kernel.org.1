Return-Path: <devicetree+bounces-75780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2135D908999
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 12:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5BA83B28C5A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 10:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 938ED195B1A;
	Fri, 14 Jun 2024 10:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sMLIBsXX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC7E193099
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 10:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718360312; cv=none; b=oHIR1pVbzAn0/zTGY65HI54Qu6LJTkBuYUHSt3e70ECWCgaHQ7kspn4l9hJTNukSk5S4i6LKaI9lyU+jxDJaAoaJUkCmafPkoJPUSMbFluaNIOSf6BiS/qxny/Q+SLsU1bEqqlhFM+SS6Xtxr1RRqI2Kxmv0EEgRGJT5dh1jf+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718360312; c=relaxed/simple;
	bh=I093xTrSybfnOucPVkUB5qR7/j0+qKZEXXwZD3HnmRI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HKskNDbwvq3sfDksS7zhiVBWjEs5ybebXxdcTTrok0LPo6FmuBCWg3gvG1glfRlzABDe//ZvC7bKC8Y9B8e0t825LI3XyEuGXwtY+h2VtD/4yIFVI+3R7SXxOny4mxI8MR89v4m+nL99gpdfv7s9pOZxzrKNDwloQpEeaSRiV+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sMLIBsXX; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebeefb9a7fso19977121fa.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 03:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360309; x=1718965109; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKJIxPh3iwWiGBYCC8CzGF4wzG7kkW6ofHLM9pChGMA=;
        b=sMLIBsXX5UWD/nW9F+QpbSZOH6qWw86+KU8lVL+FOzvWy939UFg5a+zXOc1U8MovYb
         WPjvSH+LYQ1c381VB0Z0WnbGUWeP0FX8WSaSEZ/eTFeci8WM8UQfo61DSjotqW7MPILI
         vutE3o8EKRR19xyLCuyoOt82+Q878A9ahyc9VBasn6hDl1McCpg+LPxX5YC5IbuU6nDq
         nJH1uAmm74LwJKcuJCLktJoZQ8X9buZzW0dTSSXONCVUBS9qxGT5GTZXJQv6Ndm9BXKm
         L1U5eaCA3K8XsfBj90wAbNLsOejlJkFmg7c1QVH5nNQpsMHElii7VYv9hz6WYg4nWfmk
         8YHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360309; x=1718965109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKJIxPh3iwWiGBYCC8CzGF4wzG7kkW6ofHLM9pChGMA=;
        b=rK8SxuMB2qCpSaf5dPXchTr651WE42HXOTpNsygjEAq2+048nwAMnUd+q0GzN/BDNn
         Jhy6NH1eY2jE71CVOauzy26RGkSHbrYSa2Bw7U9Tm+fHwK1+PpGhYyGkenuQ2dtHgUI2
         55KLVBFxatXn2uHrIJzEy8/A8u2LlqWDS/gES4Hkw6SgfErutm1cHgzJnknW9sphoAOk
         Jb4joa1pOh80/MFTrJYSNJkAgWgKIoij6Zfl6E7QYfS9x+ZHe+8mjgexp7f3Im7nQTtC
         TXwP5/uNlb9zKs1lIYGB89XuGPUWx+bKoSwvQSNs6WfC6/CYMH0hY7qbinDu+k7pOVoy
         PDmQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7M/s/ug7UPhl6D3VvldEsHU3ruTPvFMptelBaDtdfzWiJ4bdz/14Zt49L+x67dx5r6frCAtm3yeyUHGMFkIqe4A3BdVwhm0J6Ng==
X-Gm-Message-State: AOJu0YyCnsDK77C93x5PR6Vdkqtl1iML+sdm6MT9TMBLUHxi7kwvE7U9
	rPFE78DAWhdD5PrRBTNFU7XYWFIzRgl3WiKHpyZmrjiQuNJLwRPStus1QIZ85piyb+OdcjqKN7q
	qK7E=
X-Google-Smtp-Source: AGHT+IG2Xhy8zoMyn7PzdIprOC8LYO9YizVZn9DB7Ia/oMmzN+EjTODxUR73ikqqNHxvMjtjLRiGTQ==
X-Received: by 2002:a2e:2c13:0:b0:2eb:f7a4:7289 with SMTP id 38308e7fff4ca-2ec0e60e119mr13872251fa.51.1718360308967;
        Fri, 14 Jun 2024 03:18:28 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:26 +0300
Subject: [PATCH v3 3/5] arm64: dts: qcom: sm8450: drop second clock name
 from clock-output-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240614-fix-pcie-phy-compat-v3-3-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=I093xTrSybfnOucPVkUB5qR7/j0+qKZEXXwZD3HnmRI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjx+BrBaGMaaPRDhS7jLrNy1Rtar2xIcCN2z
 msnF3D1TV2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8QAKCRCLPIo+Aiko
 1W6vB/4ucABTtla15D+BBWE9tmORhfqnB46o6atREi46/FGipL1s0qcH4paXOk3a6cY/7FOzscm
 YvUHltJ6hJ0RV8Bky/IHSilPZ9kqMMXDMaVmossRDttbBwmhmW/Ad1OVrF5J7h/EJ8k9W4UgdD+
 MshRl9IrqD5zGRoUa2fHB+6CaXpuICZE3C/4J9fAo5bo+1vZbXJ8oxVUmJwEXimCMTl4ZmQvWIX
 dyU9NyxD7iflpfEma92EuWmnNEtWvznU8dwGgl8j2zxSysqZ6VhSrel2CIm/mdeZnJMw+0PvM95
 3E33ce7fjovm+Y3hIPllA5hx9Asd/wbcrmXqLR8jpuiSn/rs
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system
clock name. The driver generates it on its own, in order to remain
compatible with the older DT. Drop the clock name.

Fixes: e76862840660 ("arm64: dts: qcom: sm8450: correct pcie1 phy clocks inputs to gcc")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 1e762cc8085a..9bafb3b350ff 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2087,7 +2087,7 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			clock-output-names = "pcie_1_pipe_clk";
 			#clock-cells = <1>;
 
 			#phy-cells = <0>;

-- 
2.39.2


