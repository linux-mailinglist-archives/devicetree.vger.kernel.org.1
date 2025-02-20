Return-Path: <devicetree+bounces-148818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A84A3D80B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:15:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61E253B132B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB9371F429C;
	Thu, 20 Feb 2025 11:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t1XDyR9T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB94E1F4262
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740050108; cv=none; b=EdagT1RffDhkHvAc19X+ai79VH+ufyj4CSh3pP1jnAcnNysIosqA9jubjpG3ONZnDKmIPZVkYttFmBH+3ZYh2cfi4BqPINFV9x5aOnX+lIBNMrrjeKb05/YzIBRF2BQfJohhj3Zy+UrEZ/DpwK/zhv3pePSApoxzt/ElJii1HK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740050108; c=relaxed/simple;
	bh=gCK+JqgYnCP01PtEyqufWSc/n0zhfsQsxdJ+Ud3negE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ezOFVoCPNxrGl/GTpTt4u/eD8W35pJflU9QpGV2/CrVMzyzMLCA9HI2p7eIgjzEdNoiwGft3CCBa89GkiPp+s/C3u/4tF6iLMZqcqMeATXMg9Lxd8kqre8nA6KkiXO1ab7EiLBimldXTnHnUS/eySOnGfntPQkV7v9CIAms4Vhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t1XDyR9T; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5461dab4bfdso987530e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 03:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740050105; x=1740654905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KX85e3cYE0QI6HqN7XA+DGsKC7NKCz4a8QkfcGXFNn0=;
        b=t1XDyR9TxEYGdB7O5W4LWddE7+BKL6nRqeRlsqAwGsswZisS7/hJJu5VijaZzkI4e3
         YSpunAXOqMM++4y98K2JFg93tAbggWEFQSimCp+QDJrvfK4ogpwLDYNBVmcVFDM6S+P+
         CJ5NSASxnKW3d2XAJklwNV1vkUVN7QPC5fA+ZAX/2EiOJFiXKMhBoGFM1uhhcAA5+Dsu
         Bt+kPWUIU8xlZ+RWud0Dstj8rv1MxEp20PXyvEIcrx679M42EkXgA/G4K+6dNiGRnLly
         TtSi8g47CCAvdgFzIp/d9IF6ALA6VtJYr6LMLzHv8iJedYraIhpWkpNONnjB2H5YcfnA
         3jTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050105; x=1740654905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KX85e3cYE0QI6HqN7XA+DGsKC7NKCz4a8QkfcGXFNn0=;
        b=qZ3QDNH8iV8O+nYvu0io77PyAnEVmdz5hPRzLE8bxFtLDwK8VJpPV2rX+7cLzXZd2z
         VI2fseQyu8H16ZMUzzU0WDZJf0qqA+vdC2ua44t/SAJPmJXICTlJzUVBhLq5ay25iCHR
         0ewKYmxFV+mWmv6/WLZmqbmx496QxAAsyP7u6nmKdq3ZQc1WpJ3wtyvos5Mh7vTqxKrk
         xe9s14oXehKAQkFGp93Bzd+mc6/PrxQbIVY/wa9vU5kRVG0t+6ogWDe39CTBFtlrXvrU
         mm/ByT1/BLlBdXsMJVUP7ZfSDKx4pDtVGFwKKLIg3vbNVHtlkkG/3q3T2fLw04L05xwj
         eNtg==
X-Forwarded-Encrypted: i=1; AJvYcCXGQJPNWAmy+Aq8T2jT9r6mDWARhA982VKzcSf5lAllo5vOV0+D7ymP/PXxtN080IHy1ZAL5XjBEv6x@vger.kernel.org
X-Gm-Message-State: AOJu0YzuuVmAVhaJ7rRMnR+9qof02jLnwP4+hjls7H3phfBjPU7PjMkS
	QeEm4iNFneB6619GHzDstdX9AVWBj1a1duNrC5jauYmYKICrpuNLYA3qokxmgOo=
X-Gm-Gg: ASbGncsTpK2L83M6WIdsZESWI3F+tVCzwsZzXKdVzO4wvb5lnHinvov9bQOC42bct30
	C6H94Xt+nu2OvKpkgfDFZfiKiMUCf1t3HlToLeKrLxeoUfs+oPUpiQ9cab7utdz+e/+GXZwGJwp
	NBdMIR8sadjj2wbg9v6kKgaNNtPNSOsDwgkYG2zLn91CVUrVVaQbqpvi2XN2Y0/OCsMT7OL+9Q/
	m/XonuA7eak2aOiVNqkCR8Ef/w0wxRap4EHhkVMAZZ51jab5a+TUOSNlyOJK64XbcLHjfpTaX+e
	QdK+CZvEmGCXxXWUwkSRbFw=
X-Google-Smtp-Source: AGHT+IG5EZ3MbgXrnnf2FkcjlwzeGF14xhIhWRQXhiEeQQCNYMIhTxtVaUCFD3nFrIpgoLw26AvRGg==
X-Received: by 2002:a05:6512:224e:b0:544:c36:3333 with SMTP id 2adb3069b0e04-54724a7b447mr799283e87.30.1740050104821;
        Thu, 20 Feb 2025 03:15:04 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545297856c6sm2056164e87.142.2025.02.20.03.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 03:15:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Feb 2025 13:14:46 +0200
Subject: [PATCH v2 4/7] drm/msm/mdp4: use parent_data for LVDS PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-fd-mdp4-lvds-v2-4-15afe5578a31@linaro.org>
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1210;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=gCK+JqgYnCP01PtEyqufWSc/n0zhfsQsxdJ+Ud3negE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBntw6rEbJHBbORbIefZc6iISdAFhieGQ33v4LyZ
 TdCorO1c32JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7cOqwAKCRCLPIo+Aiko
 1fjdCACP6GLXiufCQ9UEpsNvSB7qNK9i1JDaj/ntqy8bB6XhsyXItB4E00m3PRNBAO32QhZ/WnX
 nktwAb2tH1j0Sg2HKU0CW0Y9y8l5jTX3oLQoKh+wVAXrXdpUum4qRBndE88/7xaSa3x+p85OzzL
 xWXcDJkFVKUPuNj//5AF0s9+33Pyfp2sgqUbSKltUCjoNEvj/5XSvD45MaEfhAfp3k7I1skaPE9
 a1SwxoaY4Sx44nleZaJ7xvx4VAThvuBbUtyQix1OGjk5hqBlK7y0cW/iDzLKf30qxM9lvBY0Jk8
 fOYobntzAK8ViKS88/mj+MvhbEgHl+1nuplkxzdDW0tswKXM
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Instead of using .parent_names, use .parent_data, which binds parent
clocks by using relative names specified in DT rather than using global
system clock names.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
index cbd154c72e44c848fa65fe01d848879b9f6735fb..a99bf482ba2c02e27a76341ae454930a13c8dd92 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
@@ -122,14 +122,14 @@ static const struct clk_ops mpd4_lvds_pll_ops = {
 	.set_rate = mpd4_lvds_pll_set_rate,
 };
 
-static const char *mpd4_lvds_pll_parents[] = {
-	"pxo",
+static const struct clk_parent_data mpd4_lvds_pll_parents[] = {
+	{ .fw_name = "pxo", .name = "pxo", },
 };
 
 static struct clk_init_data pll_init = {
 	.name = "mpd4_lvds_pll",
 	.ops = &mpd4_lvds_pll_ops,
-	.parent_names = mpd4_lvds_pll_parents,
+	.parent_data = mpd4_lvds_pll_parents,
 	.num_parents = ARRAY_SIZE(mpd4_lvds_pll_parents),
 };
 

-- 
2.39.5


