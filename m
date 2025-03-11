Return-Path: <devicetree+bounces-156658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B81C5A5CEC7
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 20:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50765189DC7A
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26F0266EE7;
	Tue, 11 Mar 2025 19:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o0FPoqb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C80266B62
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 19:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741719765; cv=none; b=BrW/Fu46TVnCIm3ZWVyhpgI321NlaL0sO4DxKE5fjLbs9JAMOGv1PguRAGwoOuKJO5qcl8tmLhIIawVTAfu6Y9FZFSMyUHN/B0UTjzJokjGP5O+91dMcfqaIzHQwvB3f4MntyifShW4cm1kDLgWuMeBZd+kajMILWAnffdYKISA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741719765; c=relaxed/simple;
	bh=3xk0pyKS4szEe/9MhLY0udi1S0AkDYWMQ5qVNXd7KNA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dkhpo6qjKPMlri1kWKHSJXXAfCfDr2nKAbyj/zl2sQ0DF9Q4scqRDsjH9RlSvL2riJObD2yB2stv3y/ktF0+1DJi1uzeUcclZDscysV/0pBYX0MvUgjBolUOaa9yZPkGUXZa2Ygno98wcvQrwCiXfaY0E1beJI2bCvD9jjf/mkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o0FPoqb8; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38da6a1a20bso335768f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 12:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741719762; x=1742324562; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FoHt8+Qv2KBvycEBRbSOT+7Q4Tanwbir/+be358nDD8=;
        b=o0FPoqb8CGFAPN/T3m50tuCyT81T6oSpLPhVBdG3Z1wwjTtiBbgCgs7t9Bb5qHr1I6
         r+K+u97mRlXv78ZMIZTu6cXeCAJZovcZDt20liOSRwsqBvHgMbQ6Y8U4cN10ZfkfwRLl
         OLSut5hmJBeZXEM9bc05J2iEfvNz8ItAC7jUa22/c8vzMwibhGfo96oklNctKjMP6qiN
         cR6lql6vQeBAndOTAApeAg4f0/4g6h4a5w0WyDp/H/iOtc+RAec9Ka03zrIUsEHAK5g7
         /+KkWQAmYwXeSn+ugxJjVLR1GvgcxnjSLWVV4s6S4Xs0eu+u4Qh0ADxSUF7Zs+GlJFXY
         sVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741719762; x=1742324562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FoHt8+Qv2KBvycEBRbSOT+7Q4Tanwbir/+be358nDD8=;
        b=rqPc2l5jBCza11wof+7IBWjlo/wZoYXjTxh6pyeoBjPm8bipxlXbbnRL1HDz2A37lC
         rknDqStObmEGV3MJtqoaNu0t3/Ia1j8pU99hsHmOwLNdDbmU0xebYu7N8CG/UrOnH1yy
         sbGBPIPP/gpCxu+H1T5oppB4mG6/LNaFBMa+BkVrrmYI6+zkiOgDeUOqTKp33PbWuu/q
         A8RKlQkWGF9m8OQqCTe3Nzp6vvlVL8NMx5h/Vr6gWzj4519UqeMToR2kWxzVgZlsuH4Q
         rrrC9YKJLWOOeERNoZ1rWg23Zv54GrFeMunkqhRjVSB0T2LhfoyRJl7BKwjkoO2sSEgL
         ebpw==
X-Forwarded-Encrypted: i=1; AJvYcCXWvdGm2aliXSdmFu359irJlSYiPrWzT0WJ6sO+Gy3zU1WXr6dtwlbB06GxTlilEkVZdDb4XaV00fEV@vger.kernel.org
X-Gm-Message-State: AOJu0YwbGiacAnKhGJ4HlBnCfPChSuCRmkXqAnIzSUxyTceWuD1BDBY0
	qC/RtxlzoLeGvvleSQo+Rl5RRtXe/ROVqq7YkkwylxMnBCU7UpMoWApGS3QZ2Tw=
X-Gm-Gg: ASbGncsC+9y7pCkDbw8GvIS9w1QZkerdKwmfIy/0vAdo/gsO1hr6fDa2TXSiZFzBzoL
	WiC/eja5GLt6WfFScpIBK2pM5UfrKB9hPO9L9sTt3n+1cw+VwLZjUXLiqVRGEM5Ml7yM/SU7IlB
	gdUG3WrAak/DGZm0bwo/vzt0sctsXYGdVZjG7IQa0JMWTuif7CBEoJgX/a4ldXTFUrNbSI75VuW
	0ZLFVXa5qGxc6XZHZ7Dk/rQ4mW4j9Fy++wq9M1nw0GHVvLmHBlxgdm+UENTU5gOUVH+2Se0/XL0
	pViDcDYxPKX+WFL+MLVCtJPW8WHnS9kSqvBHnKW2AnhAQinOZNdKAtpwSdo=
X-Google-Smtp-Source: AGHT+IGtubQYzLqe6qMHPh2YhYmcldjpGkwHVseYKBCi8jZBCwCNslEBMj62gHB7lTtanzJPhgFk1w==
X-Received: by 2002:a05:600c:3113:b0:43b:d547:6336 with SMTP id 5b1f17b1804b1-43d01c3105dmr22168095e9.8.1741719762312;
        Tue, 11 Mar 2025 12:02:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ce70d13b4sm127681155e9.38.2025.03.11.12.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 12:02:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 11 Mar 2025 20:02:00 +0100
Subject: [PATCH v4 10/19] drm/msm/dpu: Drop useless comments
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-b4-sm8750-display-v4-10-da6b3e959c76@linaro.org>
References: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
In-Reply-To: <20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1894;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=3xk0pyKS4szEe/9MhLY0udi1S0AkDYWMQ5qVNXd7KNA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0IitXyBOAqRPMp/KeWk+fUVdkX6Z9R8/hGg9S
 IEiI9aoyTiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9CIrQAKCRDBN2bmhouD
 1/VkD/41O3QOWYZQCz/a0hGAcXFdCxiwdt52Ij6fy7kFN9HC8l+eoOd3C+t73FbxyP7vOOpTEB6
 ldE1DezPsO3nMYCBNS6xWz2nfXKkZCPsD0yQFauOBzlr9DlY7vSj+be9QELlrCtQ9LCvGLL3ofC
 9m4IenWnpfH0nCkPEPeB7A+BizuF9GFMTqLIIauaHYiGtkieTPZ0c5eSV7Cb9WeEbirH4+WqM6H
 huEJo6H6WJinBZ2KDBNyO9fGP+XgEpkZSHSvY3VLdsXiPO5pkxfKyM5C9c+iYuGUeJzmKjRB1vb
 qDcGUrLd4xCX7CaBXqX/92oeIGIcXOoAIY/KO4ScEcoIMoyvvAFYCZm/L43vJpST6F3Rq2hEKdP
 sTGrMWlRwfWPAbCx6ROKVSUDrSyCf/n+b1KWfU82+G8X5NSYC/YAiW/9s4gNXsU45AIC4ZHtCPz
 K2VH3kaOFUulwd+OVtqnvv29bFVuliq4DP8BGw/FnlYPpVokRPc5DjCbNYvxWzdXmS7Vf2wzW9d
 w++w+S9/b86Ls8p4vmJ+mwbXWy5ZYZJtld+2KOgAZ7ITmlyMVghTehYUGfC/hBz24V5L1F85fkn
 IjLcdFIxoIE+lfmrr86j0xbqzyPewR1QmPz7twsAfiQi+WdIINP/+wsn7V/JY5uy6Z+5fUzqY9O
 AOHbyo42s2JjvQQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Drop comments about SoC before each 'struct dpu_lm_sub_blks' for given
SoC because it's duplicating the actual name of structure.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
index 2db27c55787791309962acf796d5c49aaf018fc1..a310a5234e99ea4886e82ac2100c4099e6a1841e 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
@@ -331,8 +331,6 @@ static const struct dpu_sspp_sub_blks dpu_dma_sblk = _DMA_SBLK();
  * MIXER sub blocks config
  *************************************************************/
 
-/* MSM8998 */
-
 static const struct dpu_lm_sub_blks msm8998_lm_sblk = {
 	.maxwidth = DEFAULT_DPU_OUTPUT_LINE_WIDTH,
 	.maxblendstages = 7, /* excluding base layer */
@@ -342,8 +340,6 @@ static const struct dpu_lm_sub_blks msm8998_lm_sblk = {
 	},
 };
 
-/* SDM845 */
-
 static const struct dpu_lm_sub_blks sdm845_lm_sblk = {
 	.maxwidth = DEFAULT_DPU_OUTPUT_LINE_WIDTH,
 	.maxblendstages = 11, /* excluding base layer */
@@ -353,8 +349,6 @@ static const struct dpu_lm_sub_blks sdm845_lm_sblk = {
 	},
 };
 
-/* SC7180 */
-
 static const struct dpu_lm_sub_blks sc7180_lm_sblk = {
 	.maxwidth = DEFAULT_DPU_OUTPUT_LINE_WIDTH,
 	.maxblendstages = 7, /* excluding base layer */
@@ -363,8 +357,6 @@ static const struct dpu_lm_sub_blks sc7180_lm_sblk = {
 	},
 };
 
-/* QCM2290 */
-
 static const struct dpu_lm_sub_blks qcm2290_lm_sblk = {
 	.maxwidth = DEFAULT_DPU_LINE_WIDTH,
 	.maxblendstages = 4, /* excluding base layer */

-- 
2.43.0


