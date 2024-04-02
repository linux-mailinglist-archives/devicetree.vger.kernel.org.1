Return-Path: <devicetree+bounces-55239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4323389499D
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 04:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82B251F23868
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 02:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F257914AA7;
	Tue,  2 Apr 2024 02:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V2bdwpa3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C751134D1
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 02:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712026310; cv=none; b=LYwvFm6CjGHJG26CFfxGiNydEWAF4Xx2S0hBv+KHly/j2MfXu1RnVjj6g2SZ+ogk1GdblZc3J+2MYdggw66ZBPRJaMYFuC8+l5UA5ziCI+MquAywE0Z98YgcywkERT4c+eUZcQOxTBgyz2bqMR1Doq8LEXjmujQJ5muB0hw5aU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712026310; c=relaxed/simple;
	bh=yPu9lShLWjrX8FbgY01q1INaNP1kyI/7w03v1seDbHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yzm2vmbNwxNNTAYsTEdBrRYaTH7OH0skqg3dn2qF/eaAWufKqAeuElPBgQGtMZO9Bnpndl/NCHPbyt7mHtJK1lntP7laZIXhz1Qe2ZyNNJ0gxIOlRaJ8ZM4EJ1VUAY8Q+H8zVs2xXIGTapUffIoMGokH2+r4icfeget0D97/Mvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V2bdwpa3; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-515c198e835so5271931e87.3
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 19:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712026307; x=1712631107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nAoWwlePI94p1y2muaLUzxrPgMrou5m/LTN89EwtK0=;
        b=V2bdwpa31fZi45Zjtjad9hf6MMJEOt4eyNSD0jdu1artOfW6vQhns4CeT1PMwdMB56
         7dtyT7yctiGVL1u92f02QPqQpfJ0sOW6y8rz42ADH0uWNPwCv++jZTR3tndJd9fMkSSj
         mHjKO7KTh89y0lYkAaO2BJAT+ku7DPggri5/fWeBnUAKl+BOlpqQxrr6T/bcGORRMvvd
         1spj7GXWyWjplq0OTm2FSxbmCOzh/LFByoCaCrFExT9EmU6gJJAvQVRLg/3EvteAopzc
         kHstR3W8kFb11PhD51WzhlsJzOYkacvK7yl/FGA6XpE03URe9D4R0hSDAEqxiKPRHjiC
         qfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712026307; x=1712631107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8nAoWwlePI94p1y2muaLUzxrPgMrou5m/LTN89EwtK0=;
        b=PzO1OXuuGZ4hMBnwF2qQj0YV6o6DX7FTsQV0HzIe5kmGuUOEdRfGZO4dpV1n/PZsNX
         npA8yMgB81fKwgW3T0DpsDAGokZXMO2t1i+cXNCQryqMpgBJ176IP5nubYksgHNvUWuA
         Spuu7+Tm6wYLqc4F//cJajNXDjwJB+NIPg6wlbA1NJrrc9hSW+EhPaqns1oCgGB/gyq5
         F5Fwdeop6XqfycDo2+PmddassGwHl4cU5ryTeNZ2ZCTmrDehT4Q3CjHPNFBy+PRoGuMA
         ha+RDk0LNCCLMHEbz1pady+WhHOGHW14xsaXPZoPcOIQH8A4wQkIMumeDMLc4hQuhjto
         6ObA==
X-Forwarded-Encrypted: i=1; AJvYcCULIQ70i0Bmzo2jDrt9skZtbpUd49db1hAlXfj9CF8X0pp1C2FZxenG64djmYk7zwYgg1G+nGKnDdDRBOe2+H1wlCcARNaP1+5u5w==
X-Gm-Message-State: AOJu0Yy+k73cX774FWNuexWnwdoykCLGAWjDExKSuh0vJcFs/OfFw1p7
	xwHv2sRc4GoAaIJOlwlkCQ61IzksJYLiyUEnLtlQUwBKmiPOqVbBQBIEoRW3lLE=
X-Google-Smtp-Source: AGHT+IET2m9gjZhGc5OFILt6GqKIA3041PJsDcEchORoLXq729R52Gnp28l0y/Wvu5IKew3O/PE79Q==
X-Received: by 2002:ac2:47e3:0:b0:513:d640:ff16 with SMTP id b3-20020ac247e3000000b00513d640ff16mr7317518lfp.29.1712026307344;
        Mon, 01 Apr 2024 19:51:47 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h26-20020ac24dba000000b00516a1e2a6fcsm738824lfe.256.2024.04.01.19.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 19:51:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 05:51:45 +0300
Subject: [PATCH v2 3/4] arm64: dts: qcom: sc8180x: Drop flags for mdss irqs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-fd-fix-schema-v2-3-39bf90051d83@linaro.org>
References: <20240402-fd-fix-schema-v2-0-39bf90051d83@linaro.org>
In-Reply-To: <20240402-fd-fix-schema-v2-0-39bf90051d83@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1495;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=yPu9lShLWjrX8FbgY01q1INaNP1kyI/7w03v1seDbHM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmC3K/+s6D2Mv/a6xTE3hAK7CO3aR3c7PdH9/z1
 +f2F8W/QfyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgtyvwAKCRCLPIo+Aiko
 1ZIPCACrEOreU1YwzolZIv5IPL5fLijl5LGwROYqgPHaQAd7CwVQvnEHjCzc6fukZv1RNrNeamU
 50dMOIn0oLKHfkLSNznbMSfBbRh0nKgnYUJvR90HLPp2xfJguu2uB8wpIr8iV+WKkIvvvA5bSgA
 sN1yPCPnZTF6S9A5gmfgr/HLYtsErlEuziswTFDb8XIMdcUWblfb95w2SZ1spLVrKeAcFDBN5Ja
 cGiLF2CMSIaP5jkrBGyjqFheG979zaWjGbFigZesCQSBtnpdVftsquA8JLVcUc+TaY3AxRoctCv
 FP6j2lZ4G9BY9u8zdXRAVxt5aSSA0WnQ1jRVA/aoW+t3ZvxQ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The number of interrupt cells for the mdss interrupt controller is 1,
meaning there should only be one cell for the interrupt number, not two.
Drop the second cell containing (unused) irq flags.

Fixes: 494dec9b6f54 ("arm64: dts: qcom: sc8180x: Add display and gpu nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 99462b42cfc5..6d74867d3b61 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2804,7 +2804,7 @@ mdss_mdp: mdp@ae01000 {
 				power-domains = <&rpmhpd SC8180X_MMCX>;
 
 				interrupt-parent = <&mdss>;
-				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <0>;
 
 				ports {
 					#address-cells = <1>;
@@ -2877,7 +2877,7 @@ mdss_dsi0: dsi@ae94000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <4>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
@@ -2963,7 +2963,7 @@ mdss_dsi1: dsi@ae96000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <5>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE1_INTF_CLK>,

-- 
2.39.2


