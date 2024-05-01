Return-Path: <devicetree+bounces-64326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4268B8DF9
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 18:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B08981C20B13
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1D8130E2B;
	Wed,  1 May 2024 16:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vhs8RVtY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF32130A64
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 16:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580388; cv=none; b=iJlHtNjztFHngb/B7EVJHUJNuqE7+SPnNQUlgroS/m4v2vOnY/KZQtx2hU3YDjmjQxcyLEqUaFbZlPx5kY8EIFw8PGqBmR76IR/O088xdB8F89TYZOVXPY9gFqjYPquXoKbfg1wztk3gPrw0BrsUP5G5oyysFbCAebkRe/vM878=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580388; c=relaxed/simple;
	bh=rlPIxlI5gdNvSgl0pBH6f4cNs0y9HMlaG1lqaxfSHzc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PQXDP8e/H3jpbddgwzQj8eHR8J0iKi+222YqL5TXvrR5YDhb8oETVeeGqJY/PJ+lIBo6s4BYXKs4EYtpFgusvVyFxtHa/FI7GPQGcYpyyOWvk0oljLyqSjzIxFCnbSYsjLh6SD4FijTHK/hTT4MKXszXKaFMknL7+8zeoKPMViA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vhs8RVtY; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-516d68d7a8bso896230e87.1
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 09:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580385; x=1715185185; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R1LGjwu6MzdUaPKjH/XiZET2m/eVi/2jDASuOiEvjq4=;
        b=vhs8RVtYfhxL8uwhjdATG54hAL879UV93jNH4YmQ7harZQj1POFNXRg9/SgyC5WIUD
         vKuGxhJs68s2wMRVGGWEstjb0Kjjs4HQbaV9IbQ2eCDCs3X39N2e/MY+vegYjjEfGVKD
         dcA5HqmfXqErNyrvdBAiPS+BK7XJyDS3onyGK9M+HoTl1VtIgZaMpeb5oMUdflYDtO1U
         7Yq9k6fQbOk5tvRVoRjgC+CQaRy3y0T+Bs6pKLsEsCxX7zAnxL5jAfH0sdUVTvEk8Mgn
         Tii3LLBFVg2K49hs/7XIhhl6PEuf9iAOYXL6+jHdbSK+lWlc7gkBkBFkREct1OTxeRbx
         bnYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580385; x=1715185185;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1LGjwu6MzdUaPKjH/XiZET2m/eVi/2jDASuOiEvjq4=;
        b=koabMBb+qe1f/scdIl9xmX7/Zk9raX90KMohKF7okkIZ4igkWD50Pa0wJZqatUcSuJ
         LhqntTBFzOuMQjf+aMEW3rvoQLvwHJauc5XjBxEy38KLFa0oqxGJCglzkUIgCoaqV/0D
         Vce6uHDFyzWhIG8YUOwSV8giqMts40ObaVtjDXc2R2bYm5tjE027TYnpQOC6qqgwtxOb
         VxzbgRGvPlAOFuQh/ayX6yxvrKIldCVEM1rvKLltj7Z4KbdirS0aepWIMbOvoo9CYBfp
         4AlKlo1IrjhNJedHOAo43xxJ/aTJ29ggwrUJ265TWcwB78lZaooMJE8jSkyyZFxw9xNy
         XBJw==
X-Forwarded-Encrypted: i=1; AJvYcCVUv7mujLW5G/8mq4tqCl8JnJl9ZcH63zp6OR1Ih432qpOWIkaKuANW9YUBPSTd7vo6Nm2lAUtZxVKlmKUSHf6uq/4FlkL+5O76oQ==
X-Gm-Message-State: AOJu0YzuCNGYlUX2+J4dfucsM+ksGKfb3CTMGQyYDAMxq/YC3m6uvXN9
	1D9gdKDO91K4EQmeMxsgGWwh1yioVgu7SE+Ou9TOVrmneJkgr5d2NscX8z0pCkE=
X-Google-Smtp-Source: AGHT+IH3E60kzfiMlELTC/hNkguntyDCheuWPkVrC81ZyNy3wIgVczhWGMe5SUFJZ+3XRjAYYqlG/w==
X-Received: by 2002:a19:4304:0:b0:513:dbcd:7b8e with SMTP id q4-20020a194304000000b00513dbcd7b8emr20829lfa.24.1714580385326;
        Wed, 01 May 2024 09:19:45 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:31 +0300
Subject: [PATCH 05/13] arm64: dts: qcom: sc8180x: add power-domain to UFS
 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-qcom-phy-fixes-v1-5-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=795;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rlPIxlI5gdNvSgl0pBH6f4cNs0y9HMlaG1lqaxfSHzc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZrkU7RCccVr5fxxcKJu0/+NwDnrejC4MnY
 l9KXgJNBjqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1V4OB/0XXfnlyOiHQ8kKWuNpT53Yz0hVFoL0ULg5DYUTwTF+/ZMfbHzxmY/2kF35NcnasEB5hH0
 GYQfdgSgwopA4o+2ujJ2WW996MXOpce2Y9COy9/p8XUqCSAULK2ikvkSAaU2gC8nbYw2RaOv0f6
 zRkmpVKsIK41+jOTe2RLCSPuArsO/d58evA5BxoBm4lGScb229ApNkAt2Bu/b282ggPHU1/QGNI
 bMgAOhPT61cp+cfCtRKyJzcSXaVRi5TyEThgkjaQQ4WX+p+dWiqf+Q+pu0I7CPZeGZJjFWQ54Dz
 /be9XNMnAaR8zM6uG8TitOsCEbD/UTZhvURVCMNugUCTBWsD
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 2d2cbbff4e13..87479057adde 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2246,6 +2246,8 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			#phy-cells = <0>;
 
 			status = "disabled";

-- 
2.39.2


