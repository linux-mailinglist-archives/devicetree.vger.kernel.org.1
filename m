Return-Path: <devicetree+bounces-64328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF208B8DFF
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 18:21:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E115B22EFF
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79040131725;
	Wed,  1 May 2024 16:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="goWmVKwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0874130ADD
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 16:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580390; cv=none; b=KRkjmG2ouJ7yMo0rb+4ZDjAxJRw3t8abn7RIUZocKSyS04O8TH8moFF7wk+GQctcBYDRvYGcI8krRjfKxJq4jtuH/02pXDOBawQYLP1dcT8nFs8z0fKSsO3YtcWUntH/j7ddRlzeaC3BODiLcqFX5+2DnDtRzTgpQ1KLyKSAbNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580390; c=relaxed/simple;
	bh=U6Q+67PbdRpsMf2p+D8ZYXA8/GLgExMANFnZ5cyl3DY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nqp7lNhjySysbaEztpUpPQRF1dDhnmOYVdWOXHo2vgE2MpQAeY5Fg4NyISKday6z2Ma5nD7B/3KAVZrzAv6m5vB66RISUjVv7iKccyenYFuLmdjSU/QcQ8IBNQNh+9kA2Hwsd6XGYs+86KIrV0+JqCMDhCWkl94kmNfxXAxNVpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=goWmVKwk; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51e75e7a276so1886503e87.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 09:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580386; x=1715185186; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eE064Tt+USwNcWBmC/lxuVCrqUw8m0WdQguIAwzhth0=;
        b=goWmVKwkUS9DVioTKGz+w1txm7qUoJtakA4llUW3vZVsydW6EDJiPFM5v0/8HoYxrp
         3AzCKt6MpITLeb3asSI1tCEriDSzcdKjLNGakNGpTFTGgXSMPPFfOeRvoyv5hcl35hm0
         OirREV15sfjpZ7ab1YI4UDGB//JBRTDPdttyvthxGoKZkE8abXDVrw4l855T5+HOQMO1
         HfP8vlCbfewHfkLsKd+zck+LfqAMPi6b7vQQE+l4mKJwsemMOYc5P6UoX9yjXaaWF2EF
         YzGdPPDZZPo4TrABdexgdGfsxJ9Lrislvvs/jfRLKguCS2beQBnlGZbk5ad2Pl2i6dxV
         cmuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580386; x=1715185186;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eE064Tt+USwNcWBmC/lxuVCrqUw8m0WdQguIAwzhth0=;
        b=QZP8YavhNjgLDGAJkLbT1WLt+pU9ZaQ5MYV57WW6qP1Jx2L3g9NKUSaByhxO7MwmdD
         U8p9K+KPaXoEa7iwi3TOn9zGGeDJTw44PEb2SfWkVa64UzrAdeuBMjv+zjQCTHkYIYKR
         Rn69E2LeHZ15SHZAG8XTeXYBsLkVal1bEG8sIrrx+P0j9D7bkKXLpcaJY+H+8fCNOkFt
         kXcw6ABofxQVDzjhs/1nkgxS/802f8PuAhUxpEhLKJ4+HwCjQQ3XUJC6u7p1Dw3i3xMa
         sSyFyFgIvbsUzsCdrM/0/dQu8aYDJrRIV22V+Z3U/CTjbJ2w5aI/5rZGgA/5loDoX4lz
         felA==
X-Forwarded-Encrypted: i=1; AJvYcCXpasVK2NuKkH8ZihXNpfK667xmoCG4DtDWJXvoDokraaEVgpA5YqbXbFQlR3KXbPUetMTvDUPmSNMguQhj8+qTy3HOgEADRIw03Q==
X-Gm-Message-State: AOJu0YyRaMaeby0H9bYAc7Jl2M48NpIUI9JlkS6W67D2MsmqBtZfVOgk
	p1kDpjWFkn7vsucegeOFzogfpMsUkX8PL1ZvcS85uGOHnLeEiGja6c36yJTeARI=
X-Google-Smtp-Source: AGHT+IEnHEMgd22v1vl+7LrjA8FxR58Rh28ET7FfsJrLD0nC82cLpCy1mqy1OAB887vwzp/Kp8luqQ==
X-Received: by 2002:ac2:4299:0:b0:51e:fa9d:a532 with SMTP id m25-20020ac24299000000b0051efa9da532mr214449lfh.37.1714580386060;
        Wed, 01 May 2024 09:19:46 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:32 +0300
Subject: [PATCH 06/13] arm64: dts: qcom: sdm845: add power-domain to UFS
 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-qcom-phy-fixes-v1-6-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=772;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=U6Q+67PbdRpsMf2p+D8ZYXA8/GLgExMANFnZ5cyl3DY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZrozUCTRszRcXBdCdCerl6UKTSZO2E+q7F
 fmL1NsYLa2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1eHvCACUhDO18VR4nX6R6vpsu8U7wzpgKsXJ+Vqw/2jx4g5XL/T0HYlIU8MqX2LxmEaacWUFCfp
 m/lZTwf3VJ8Knn7Gjs4YnCPiy6BHQlRxUB39Ga0U6ycewNEGqYIQRt4nQltgNzMWAY4Nd2vS1E0
 si04S0hx7S7Da4RcRhDp8WNZ0usr4sNx+a7DbZ3XW6YOKKSJ0gSLXzaNccD6iAB5iOirRpTR9Hn
 H3W12LX2hyBfkxhe2a8n8jfDyDVA9rw16GNUPj0eJDiu1cNc5K/01vi7Nyh3Xko8O5vXXg+xcMT
 r5Gf6iiP5bD1u34Ohkid6Tnk76/xBO4mehG0KgMmBA8QiQo4
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: cc16687fbd74 ("arm64: dts: qcom: sdm845: add UFS controller")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 10de2bd46ffc..26b1638c76f9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2666,6 +2666,8 @@ ufs_mem_phy: phy@1d87000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


