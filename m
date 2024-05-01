Return-Path: <devicetree+bounces-64332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA38B8E0C
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 18:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8EA2DB236A9
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0777E1327FE;
	Wed,  1 May 2024 16:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DF2gAxuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCAB130A4B
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 16:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580394; cv=none; b=dX7jllcS4vFtSsKIeOje4xwzHkpL/2sgRbI2WviXpV4oPoleckOUnl+I94gH4Z/7H1t8GsrN4jF2bzpP5HONjPwERES6UrKi8amWgfBXycDHImhAOAEH36v00XnSia1ZruY60irconADAnhbOzubYRxR7HHDTsnIr4bmqlzY4gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580394; c=relaxed/simple;
	bh=v75KRPGJTvZofiWFQUifaPBPxJ84dw2ZsWnNnHjcb2k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jbkS/iYosySJP6wtIAPwg4ZbOX4MGdRniBUXVBwU8AFAPNjMwEUIzw3/TSLIx2K8Tk1qNpdox1DAsE3diERo/JC4/7w8d1r/V3KhHBA2PUkeuNK9k33c5NmoiN6YxZv13GQi1CP0GkGFk0j+TK1AkekiFjEW5WSpfEy0dITY5NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DF2gAxuD; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-516d3a470d5so8753313e87.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580390; x=1715185190; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0hw3jt/ESZ12mRMzPe0JCXtbJkvAHqnRe43cp2kTY0=;
        b=DF2gAxuDqwNr/IHYFMGxLEdCbCsXwfID6Wt+i1n//QMEOK+v/pKg2hEkUxwiaRDmkh
         i7jMeXVKQCYp4GtDfkx5O+VwWU0VDA+hIdpEpAsTZPz9e9d7eCdNku2bepbHWnpCJNpZ
         hj9Y6cYczL0D7gmER9ho3CxgdvCZ5ss8PeodGYUI0i9nkrlStEgX2TV6IMfk4gsYRvFG
         T4K+GDlBoA/xnH4wz9YQCAWPChFsR0YCrwGQkX2GFopWojVygQehWL82EftQLfypOGnw
         0tFYk9zQEzzokApoP0kXfS8JM9OvfcYv8Cf4Da909lIuxThR2pUfvbM19St7+QqGwiNW
         tTdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580390; x=1715185190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j0hw3jt/ESZ12mRMzPe0JCXtbJkvAHqnRe43cp2kTY0=;
        b=H+5Zm42ToUS3ovYSO2WXDahdkFmVDSR9yyUC/1jDkLaVmz21xlPZmWT7Yrykswn2cw
         cEClD8yGK6HD915MBRle2eIcBDUOn+c6+PYwcCz2SUPDufbRoNAIwC13/am26ncWGJZn
         F4ja9m9vO+SwPQ0iwDPaRdovARAa2jH0yGr13fUvv3U3R7VeBYgJlkHcO58PfZYtKVQF
         JBYz+labVBhOsyF9RQeQ6mkBEBFnJ+3lMJpTNPiAqcyW03cVqhfsIiD5IHQcW6M58bKh
         n1QnswBBtKykFv8FxRMicpMQ6RCqrTwfZK68Pf7J7YTc6vhvX4qDQjes+4GOUtJDR8Nm
         ZVlw==
X-Forwarded-Encrypted: i=1; AJvYcCVt95U8V8pohfAHj8Wdv+B6UxCSvGDpncb1qbppN+GNwKlvGzUTqLdCW3AqPR4sJ4vyQ/l62gXiQ3vTM26xg7NWVSxDulsuvXTpeA==
X-Gm-Message-State: AOJu0YxV1aOO402Ofpd6NuB+RfXp9X5jiz8xmSjWRERohQOKxujQsfEb
	Wg4v/CNpVrqRrOLo6pWWrUbN1KRw2aAK4qBZdbJWe7u1FCPY30ewJc1aOS9tan0=
X-Google-Smtp-Source: AGHT+IHbn0ATZmCrTkG805J1yCfXno0/oCz4XkCrrJFKmR+qZAY7zCpYwUM8J23sHr1uKxIPRHhlkQ==
X-Received: by 2002:a05:6512:3048:b0:51d:5de5:8189 with SMTP id b8-20020a056512304800b0051d5de58189mr2893596lfb.30.1714580390657;
        Wed, 01 May 2024 09:19:50 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:35 +0300
Subject: [PATCH 09/13] arm64: dts: qcom: sm8250: add power-domain to UFS
 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-qcom-phy-fixes-v1-9-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=786;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=v75KRPGJTvZofiWFQUifaPBPxJ84dw2ZsWnNnHjcb2k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZkLhep7ItNeEem0QksekwHSJWJPgoJNXPV
 gY4PL/YOl2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1T2mCACbrpJPNbomiyQ95LQspmXzNhzZ8TBqV4Tzi/wJ6dCaqK+3f/qUlriWRaf0NCvwetrkx1l
 J0hW7d62W87h6mQj0IHlfziTv3N9J8KGOz3fIveTQ+CkYZDsZFLyMMBgsb7VRSwKAIaN/Xd/S+R
 WqYaU3V9B+DfOHHzPpF1oeqHDBm8QIdLxx935DNpoTviKHlxUleygeYQxT/2eMuTyBHZnmlrefO
 lgOoIaOdk6thH6fNp3TGi17mjnuXcBYuQ+S76HYR63r/ONMuBBGyEObr4zXvNfkErNAijObnGD8
 PY9g+5CBsHogpb19+OqIRlwZbENg/sG4E/GjLa2TSR3tS3gL
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: b7e2fba06622 ("arm64: dts: qcom: sm8250: Add UFS controller and PHY")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d6c8c6c2eced..425449ffac30 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2580,6 +2580,8 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			#phy-cells = <0>;
 
 			status = "disabled";

-- 
2.39.2


