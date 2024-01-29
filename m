Return-Path: <devicetree+bounces-36278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4201384069D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D09EB22780
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4236518C;
	Mon, 29 Jan 2024 13:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j+tGPoAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444DA6341C
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706534358; cv=none; b=RiHzISJGAGFOXuWMRurVNM+2IxgZ33YmhOojKsXxTv7z7TjF5jy9vVBaSH4oGDj51WWKrewJwaI7XBb4op8cCHprgc1BwSclddWSzgVFxQj8borTTZ87HPezdPfWXdzQ14TTVup9MS8OCzAl27X5hCW5N9q3si3MCHuZ0pALheA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706534358; c=relaxed/simple;
	bh=wgSiImckiJ8qa00M68hk7JWvYR1gElqFwEO6rTowkMY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ECbwje7bqk8wDAZx0UAOXbaM4iNhPBXhyYVyzF8Jki1afiBjhNh/Rhjn1HNR1JJmzjx0Fgu/nUfGn2OeHsnR/1vSLXVGZqtnIP0Vzg+qgZmVmAvtUV/ub17sKCTxUuRdiwB1ysS5XWYDglQqaKXBQkxyGJA1QH4swxZX65UWpUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j+tGPoAn; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-510221ab3ebso3531371e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 05:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706534354; x=1707139154; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWwiTr/qnDAzOyN1ZIeUmWZuI8cqSNjnEru1E8IQTAs=;
        b=j+tGPoAnF+f3Em0cjjBK2bY4arVOs6gqanF2P7NgZQExCAacS2pD/F+MgZhyQzcbZ7
         eLPkYXW766biDRJuRseg1Ia4AsielIxT3qy+Da1WTluQ6OYtX5SyXf1AtjZ8L54jz1E6
         +JjD2E34HcV/Sz/WcBqk1sQBlNdDpQuUmvfvbIvd6DsGLBIcrkQE0aNV58DADR6fGMph
         nfcvOanyk6UBuVA/WHlErCldA2O9QCJgd8DCjmr4Zrmd8pFsYzUlvZTgd+2wlW/m/4wt
         +3qP3qFOFimc7FBgH/xRuCw6CjJZs+dNw4fq5PgscJgVKX8yMsB/IoGboaf4QwieTIJE
         GVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706534354; x=1707139154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IWwiTr/qnDAzOyN1ZIeUmWZuI8cqSNjnEru1E8IQTAs=;
        b=wpNgKVPWEwgsH516AUiPAR2vVrVKqSa6m+UpquwYUmzcks1Gd+3HVxVqMRldnEhiWk
         hjBNnvuQsQ7lGlE56Cgun1tV3K0unLChMqr1ToQQnPyZmeGfX8I3EQmshBMphhofp4wV
         KINY0ien1U6uqCCip173odpvgbBMxJiMhutWgIuhOB9abJwbPCqmL7F4VhXnNOA9duO2
         5hIT28I1jcZxVviJF1DiLOU4VbGNBYXswD4tL4XjbG+BA4vHRcAr3nsTDhrtj4RMzjaJ
         4AYgCgrM036fODdE1b5DgimvvEjW6q0d4U1QaAkOh4V+f/RRpC6dY1nTUR4NKH9uORhR
         SDbQ==
X-Gm-Message-State: AOJu0Yx8BaJ5F1SwluoZi0p6aURMLE54Eo3R0kp0L43lF5a+9uBCxDwu
	lpbUAkaZE6cNo8IuSQofSRoeSaUPOFiI/9t3z96JX6swsQFXtxi5NbIsVU67gXg=
X-Google-Smtp-Source: AGHT+IFibSkzWPlNZYum7bt73woOcQnisCcMtVsGtkcNtFgHDXqPazyhHfU3ryc8HU16VuNT5kBpIA==
X-Received: by 2002:a05:6512:3241:b0:510:2582:5590 with SMTP id c1-20020a056512324100b0051025825590mr2972920lfr.12.1706534354353;
        Mon, 29 Jan 2024 05:19:14 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id q15-20020a17090622cf00b00a359afad88dsm1591658eja.10.2024.01.29.05.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 05:19:13 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 15:18:57 +0200
Subject: [PATCH 4/5] drm/msm/dp: Try looking for link-frequencies into the
 port@0's endpoint first
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-display-v1-4-0d9eb8254df0@linaro.org>
References: <20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org>
In-Reply-To: <20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1044; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=4NAUUPZm5ur5JuJjuRYW2tY5EYsPBHl/ThB5Q5y9Hf4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt6XIM+Gy/wq9U3eInsS2wKTzhV6qPJQrmy9gF
 d0quBpgXMeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbelyAAKCRAbX0TJAJUV
 VgFaD/9lPl9ej3uDJTPjZl7MlJOKfbL2lTxybs+rMdOroPikktBYVb/nexVm3A202QLAsSvZj1B
 zhJ2Guz7azWmoqXs1Sp8Ec/nad4IECJHOc3iUs73+K+qJRSwU2VbGZuHt9VxcWQxI+qqLwRFtRa
 FHATWGmn9zQd5EHoGXswmnQ7y4K1XSxhl0qDnSJ/TmEzHjV3s07ti/s+VU0UYTfva7dF3LPOH/g
 1XDQExXZzZrEJLIuLVhY3WGFUNKWdfiaK0VQPs6sdmw3KokUZPfM/80G08svBsQf77gv4HHaqw9
 nF/ppWGfKoE33BsRpauJ2eto3ESSAdU7UVH1AMrvrcIhh31f5aVkrbTE+GXDOJWfJSgVv6ui40F
 eBnfTvKPleLgSuWZCdYKtKCP1tyeiJfjy0PE3Co3rNVXt5PpY40SPqkyGnN9UqRS6TElnkDy4WE
 NcTjY/qxOUswEBDLWHU3dSLDxh89CivyCuW5g0yQnXOV+2qAoki/tFRwvPlhmx5q6RDIJUu/F8l
 N6fQmErWFDfrJ7ecbMob9K5etuhoCypH09IRW1nRYQ0mMDncUJEE/lEXFYkuUNhXasi+S9kCBCv
 O07trgD03O/sYWVVBNksV0wadeUSEsUdcM9BPuqC1G+kEu6sk3oqQI4Ur9nyWxD3I03JPe6aZBV
 N9YwAS2fNbPm6OQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

On platforms where the endpoint used is on port@0, looking for port@1
instead results in just ignoring the max link-frequencies altogether.
Look at port@0 first, then, if not found, look for port@1.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_parser.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_parser.c b/drivers/gpu/drm/msm/dp/dp_parser.c
index 7032dcc8842b..eec5b8b83f4b 100644
--- a/drivers/gpu/drm/msm/dp/dp_parser.c
+++ b/drivers/gpu/drm/msm/dp/dp_parser.c
@@ -97,7 +97,11 @@ static u32 dp_parser_link_frequencies(struct device_node *of_node)
 	u64 frequency = 0;
 	int cnt;
 
-	endpoint = of_graph_get_endpoint_by_regs(of_node, 1, 0); /* port@1 */
+	endpoint = of_graph_get_endpoint_by_regs(of_node, 0, 0); /* port@0 */
+
+	if (!endpoint)
+		endpoint = of_graph_get_endpoint_by_regs(of_node, 1, 0); /* port@1 */
+
 	if (!endpoint)
 		return 0;
 

-- 
2.34.1


