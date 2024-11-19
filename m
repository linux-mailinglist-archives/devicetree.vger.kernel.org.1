Return-Path: <devicetree+bounces-122947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CBB9D2D89
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 19:06:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A323DB3EB49
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 17:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC821D7E41;
	Tue, 19 Nov 2024 17:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J2zYMKTC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCA61D54E7
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 17:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732039017; cv=none; b=N/tFngewNTl7fuldb1ghKkw/VB4iAvh7rRpLRFQg7GUhB7+g1K8FLPMbeaHe3ujTs1lqZ19o7404+fsCUcJF3wx/BdrXirc/MXZLld4t1gX5t6JekAPKv5x0rjQB/Dy4rxA29N+XudmCtlhS5hnZAKkqqRZ6q1y5tY5NoezLjGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732039017; c=relaxed/simple;
	bh=8YGZ9WKDiwlY9CXdycHEn+g53UomsCDyNV7cpV/GbpI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t4GsNMo0f71g5ikXpG3CGqKydj4x3ZsYLBmK9CXk4WDsthFyvaJKmGQ70UDUeGlAdAZSa2ICkreo+BZeloXTbgcrLpPoBg2lQy/FmS7QsdmVcaqJFN0rS/mCVZYW2gui7hWvpbfNnR/qxbkZWNFGWRcM0XeULvFHi9XLgN5jeyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J2zYMKTC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43193678216so11558045e9.0
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732039012; x=1732643812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zN/NhtIKWV0JWgHtrKAVVv8gpmbYvF+U20QAevdC0aI=;
        b=J2zYMKTC62AsxtBtRVYwdAvkw2t8XkWj/ecXqJ9hAju1pGiMjZx/HGs6PtfnQMqgLJ
         RIu09C4bW6159g76eBCcKcwmiI3t6aDkj1pi/sgKHTzsv4OKXBDIQiHILyrPqYCuE7m0
         0A+yh90BTRMc6p9nP9DDvOe0bXTCP675RSeBQm1Wj7G6Lm2QwlAj5RLQxHWTzn/N1IvV
         35blm3gbzClryGkTnhfKEvMezPwjtWm9pWY4ARsJe4I+CeKrNU9Akntf63EeNQoFuIdB
         DRYgZFJgNNtaCCP1E1+pEEKQpNmYrni6Pk9LEzO7fxceCCBaFmltbdXr8T+6FP/hnMah
         qePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732039012; x=1732643812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zN/NhtIKWV0JWgHtrKAVVv8gpmbYvF+U20QAevdC0aI=;
        b=oWmKW/3kjtzdEmKGgZ6l+rc9L0d5pBj0Wx0k/d7wZO4x0XTedkAzrtRHPIgbs6ujVt
         sNy2GAi/JeQ8ySHVd5WOGGIW4IkNOswIOxtRB2pmudmuuxVnAGdU9GVuFXmTOl/StuO4
         KfVPByyrHMmxyyTE/9UKee1zQXAa4bGyBNE0d3DX6aIZCH4NEfcbwukX+PyrGY48MKuI
         rn0o8jUdEGvLtxLJo6+6tqpgbZubd+w5sZ/V73TIB8usdafq3ZyE9kkzgRKnzW6rb6CE
         lJiyx1zEdfnoimwZGCxIf/XjbPckyCvxKyAlnluy5kb1KUjNGcZskQulXqHFPyGycuaR
         reTA==
X-Forwarded-Encrypted: i=1; AJvYcCVDbBrr6E+2EnBHHOPQ8Hf6pmSJ+Ro9elVHE4UwunVAW1zLzR9MMhvGa8T/59tSGF3jaKG+ah2tkjgo@vger.kernel.org
X-Gm-Message-State: AOJu0YwSufen+v//gMNOBVItvK+qvtxDmbllhUMCxyx1rZF3zNtGYGeQ
	ja6q0j29jG4wRvzANroBz8IV+K1vcsiUr7RWT5T5AudSAvFN4ftrYhXdRoNdAkk=
X-Google-Smtp-Source: AGHT+IHbURW1yV1GM9BVVgDb8HTgtd4EPVwidgPIsYm8KnFRO+oKjNCO959EqmNWOulCKA3bRMMHag==
X-Received: by 2002:a05:600c:4689:b0:431:9397:9ac9 with SMTP id 5b1f17b1804b1-432df746a1bmr163880285e9.15.1732039012427;
        Tue, 19 Nov 2024 09:56:52 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da27fe68sm208302275e9.24.2024.11.19.09.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:56:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Nov 2024 18:56:41 +0100
Subject: [PATCH v2 06/11] drm/msm: adreno: dynamically generate GMU bw
 table
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241119-topic-sm8x50-gpu-bw-vote-v2-6-4deb87be2498@linaro.org>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2755;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8YGZ9WKDiwlY9CXdycHEn+g53UomsCDyNV7cpV/GbpI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnPNFZkDlMgucCKOVG3spwNDcQZ0ZydMSrArihhW/Y
 vFgoe8OJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzzRWQAKCRB33NvayMhJ0bjFD/
 9Mm8Si6vY3yrr2jLQmK9hIOxIo7VQGaygEeTkajDIJBFkFAFPQXGV5BNeb7ZEWXTXcNYlDIqs0qRb1
 JOF/h1vPRq3pDdOEnG5JcF45su6IX9V935mkZDOhynF9D4dfaVySkMl8vSYI8PbBxLQSzj/vLcVd8o
 YGiWIm+8ZzZ5yT5UxZLeEeyjrBP5tOcyw6EmgiLf0snPQYsDadgXnpDO3+E71tmdcUHMsVGwJsEqTr
 g0uYhy3CsZK9eGEcyH3BvnjPQg2xP4ln6pEXC49Et1S9kpcpRzlZ6NPvBK5Li+TNX3GCL3eg3/ciUw
 0x4TkUHAtlTQl2K7c/Ucm6rhadLnn8y86WWnlVepGCHZx1K3upgvczZbs/6mtob5xrp8xgfJWH/vbB
 BmTy+I6vhg+a9nle+Scw+KpcTF2L7UMam1Kiu4vKcXiniSHVO3GMwAp4845Mpc4PrwYiIofLS/0mUX
 zdMoAGfH8G7hzfQ/B4YNsXQAZ3cIuvC5XESP35Whkjtd635QbmeB6XFkhUrkofR6A8bY81WRuWltqP
 XuTJ4hq777J3vSZB/xSkBbj6T40vviF+j+CiwcJOLnja5qAYzgbmbi1jNRDstLj68//tK3vEU/gKW6
 menmwvCUhLMg4vKU3j5zhTxgQRw3ZlwdCmTDWchXJnGvzssONP8cVOc1nQ/g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Adreno GPU Management Unit (GMU) can also scale the ddr
bandwidth along the frequency and power domain level, but for
now we statically fill the bw_table with values from the
downstream driver.

Only the first entry is used, which is a disable vote, so we
currently rely on scaling via the linux interconnect paths.

Let's dynamically generate the bw_table with the vote values
previously calculated from the OPPs.

Those entried will then be used by the GMU when passing the
appropriate bandwidth level while voting for a gpu frequency.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_hfi.c | 39 ++++++++++++++++++++++++++++++++---
 1 file changed, 36 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
index cb8844ed46b29c4569d05eb7a24f7b27e173190f..0c8aa9f8cabe1d9cb20445a4274b728236a99fad 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
@@ -621,6 +621,36 @@ static void a740_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
 	msg->cnoc_cmds_data[1][0] = 0x60000001;
 }
 
+static void a740_generate_bw_table(struct adreno_gpu *adreno_gpu, struct a6xx_gmu *gmu,
+				   struct a6xx_hfi_msg_bw_table *msg)
+{
+	const struct a6xx_info *info = adreno_gpu->info->a6xx;
+	unsigned int i, j;
+
+	msg->ddr_wait_bitmask = 0x7;
+
+	for (i = 0; i < 3; i++) {
+		if (!info->bcm[i].name)
+			break;
+		msg->ddr_cmds_addrs[i] = cmd_db_read_addr(info->bcm[i].name);
+	}
+	msg->ddr_cmds_num = i;
+
+	for (i = 0; i < gmu->nr_gpu_bws; ++i)
+		for (j = 0; j < msg->ddr_cmds_num; j++)
+			msg->ddr_cmds_data[i][j] = gmu->gpu_bw_votes[i][j];
+	msg->bw_level_num = gmu->nr_gpu_bws;
+
+	/* TODO also generate CNOC commands */
+
+	msg->cnoc_cmds_num = 1;
+	msg->cnoc_wait_bitmask = 0x1;
+
+	msg->cnoc_cmds_addrs[0] = cmd_db_read_addr("CN0");
+	msg->cnoc_cmds_data[0][0] = 0x40000000;
+	msg->cnoc_cmds_data[1][0] = 0x60000001;
+}
+
 static void a6xx_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
 {
 	/* Send a single "off" entry since the 630 GMU doesn't do bus scaling */
@@ -690,9 +720,12 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
 		a690_build_bw_table(msg);
 	else if (adreno_is_a730(adreno_gpu))
 		a730_build_bw_table(msg);
-	else if (adreno_is_a740_family(adreno_gpu))
-		a740_build_bw_table(msg);
-	else
+	else if (adreno_is_a740_family(adreno_gpu)) {
+		if ((adreno_gpu->info->features & ADRENO_FEAT_GMU_BW_VOTE) && gmu->nr_gpu_bws)
+			a740_generate_bw_table(adreno_gpu, gmu, msg);
+		else
+			a740_build_bw_table(msg);
+	} else
 		a6xx_build_bw_table(msg);
 
 	gmu->bw_table = msg;

-- 
2.34.1


