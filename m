Return-Path: <devicetree+bounces-75782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CA99089A0
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 12:20:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2857285DC0
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 10:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3890E197512;
	Fri, 14 Jun 2024 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DY2LIUjp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3DA195969
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 10:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718360314; cv=none; b=Ew4mSVX5sVLzgFQmUFM30hIO7DulB86kUuFe3lE1Ryxpxsppqc6MrZApp/9e43k7/BCKpEoUHFp55IdWJNBdEmhV49rgOb19Mowk5TZz1uWPmymY2XrcUYYvPxRUJ+tb6PQHxF27MOZjBXGCSbi88k07ReVKD1dyjzAN37FNWIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718360314; c=relaxed/simple;
	bh=MZCf8mnQz2wY6O1+pqxmfIEqh1YUFg8IemwSFRmNpok=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MypRXDsi5NObysWnOWF4FLKvSc1G3xqA0gjNE0Vau4N8gdPXLTdH/4qakTMD6B3TZ92o2uRMHitU0e0wmCwbqLWaNgl/KgmGZWcVHuNsLV+Y3rAXY9XMLhUfa5KG6q9aqzgHZpqJPr7o2syHEJAYPpQy5J6wi7f/qNdpUJ3UqyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DY2LIUjp; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2eadaac1d28so19548761fa.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 03:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360310; x=1718965110; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+ZwmUTp38M/O9EH9E3Ps/UD84j3Bczm9KWW6nl3TPg=;
        b=DY2LIUjpaikyX6qhTOtbGASDQ5r3yanR7bgMWs7fKWVP2iBWPgqdfWNvWcnpcmby/i
         M78Ou/e4EcudwyrMXECBC5wu5ZuSbFigRGipafmanUCyGiLUteV+M17c40TVvcz2V9Qh
         df37wV9GzmHGJJegyZXJlwcShbv6Dw+AvmH8EBnC6YnI59D5QdaC2pdLaPg8iYPijtFy
         Z/G/6A2hc1njtUoOuwgd8k5HYnoCliKO4GNTggY4VkZLoIdJDpqX+MzKSkzJwG3pjPpi
         vM/ic96wN83xd9Wf5uLE0fp4qkgtCzC1VzTE3cSob414tAzXrj41N5GI6kE6pxZVZrnn
         6LBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360310; x=1718965110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+ZwmUTp38M/O9EH9E3Ps/UD84j3Bczm9KWW6nl3TPg=;
        b=eH0jmUK3ZzDdgIGGBBzpBOr+KaXMq7ampmeXOHh5TwaSAQ0t6+99IE3kgFB7L04lMv
         RS5WslTkXZkkKMD4YPmScNyUzIrVKe2eA6lAQAt4RSJHdOaQZKr0wy7SWw0woLIizGoO
         eZVJAwI8ldvqiHphHi3cKs1FYQtpJrFsgAw146V5w60uAPAWIywftkZlSvyggPuDWyCq
         n/4Wa6wtkrHhEHPw9G1SHW26CTnoHgbi5w20ynn2v6ZyHi57GBUMcZrwDNymb7S73pug
         ucFX9j7WoNc6nlQWE0O8PSzb2uhrCaCwCjaFEJsqasDY0N4Wj2PxQW/Qkc0J3fdIvjqk
         0dMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsLFpiocb7Pp9FmeLNDl0F/po94bI7Ve2o/qeUUd1qnZ2AX6uJgnR796LhCoNAfGfS5Zke9MI10NxXc0PaCmD/js1D9vcSNDIo5Q==
X-Gm-Message-State: AOJu0YwLjdh1tkLGF5+e3cgPmiBoSrZ0kflThQ0DHUKn6F/7Vlh3mctE
	1R37jHez0sN7Osg9PsalDU9Y20QKY9Cq2OfzJXcLdQTElY4jA5/MiKlRW2KmRXY=
X-Google-Smtp-Source: AGHT+IGf92dHtEW+22pt5cgtgehi6svFPvHQLSs6V182C2BFk+rW9n3xyhEyFztBIaQKHiKxf/4tsg==
X-Received: by 2002:a05:651c:f:b0:2eb:eb7c:ec1b with SMTP id 38308e7fff4ca-2ec0e47a16bmr15923151fa.25.1718360310379;
        Fri, 14 Jun 2024 03:18:30 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:28 +0300
Subject: [PATCH v3 5/5] arm64: dts: qcom: sm8650: drop second clock name
 from clock-output-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240614-fix-pcie-phy-compat-v3-5-730d1811acf4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=MZCf8mnQz2wY6O1+pqxmfIEqh1YUFg8IemwSFRmNpok=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjx9D/ZLq3okDwoSrCY49/FyPtyz1zzx62I/
 J9UpKckPHqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8QAKCRCLPIo+Aiko
 1ZhgB/9UcCMK3aQN+aFhTEGhksL8qodU1DQd+Vxj31SGu75kWZsCXMpKVcpEzKpHAg03X7SYaFB
 gg63kAX5mf4iTMeVIWQfkarMBLqNwrm9QcCSVhgbRz5Zm1c2/DzQ5JtBC2ddVwipQ55LirNH/My
 iS7B2iNdhpbAd0/XEhcdfZagMnr18OMnUX+aiel7wKI6GMcWZNco0F7q95lFog1Sqfil2HyOe8G
 ZlKRlGa/8t+VpINtkx8MghuNqjxxCw21uTET0UL+gCpdeYP4t7fr56/OfUEG7QdhICkRsKTDNK+
 QSw9IRuiMMKeInJsmlO0S96hEjiQzBTCCzAmGwx6fzlgFrPA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system
clock name. The driver generates it on its own, in order to remain
compatible with the older DT. Drop the clock name.

Fixes: d00b42f170df ("arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 5b8b1d581a13..5df2e00fdb5b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2474,7 +2474,7 @@ pcie1_phy: phy@1c0e000 {
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
 			#clock-cells = <1>;
-			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
+			clock-output-names = "pcie1_pipe_clk";
 
 			#phy-cells = <0>;
 

-- 
2.39.2


