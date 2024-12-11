Return-Path: <devicetree+bounces-129662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A16CF9EC74F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E83C188C264
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C9E1DC9BD;
	Wed, 11 Dec 2024 08:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XjZ1cHdu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5851D8DEA
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733905808; cv=none; b=sSSyPeXpeHFNZfkGHmt/4qftTGMtvl5vpH2sp622avd/IIiCgNX4vUn8fEutqHPKSfVHAin2w1Nz6IRMnhgo9YgXdMwopY4KWWPhuBWI+Uq6XCIIA/MOKivoJTIbR7v05utQyb1bRtkr+bGBaKqjORVLJXMnG4NqY3Z5ElEUYJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733905808; c=relaxed/simple;
	bh=HwDocDUkhgOfD1IlB5zGqmjPJaEeewUJn9MRE88hfiw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cYGQLSOmvQ2m9pKe2ED1MWQktce0Z4Ezaam6kMbs4Jt6dByvhum/QIVOVoy6cFB8bsIPGZbU07A+KFSpXcOXWZVOgEFPPIRoYMLKBR/pB2qr0NTGMnDQu8wbpwf/kNqAWhgL6SwWQX+gFiWGyKAc9QgbdCbe9CWXoC/nU4nd2Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XjZ1cHdu; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a742481aso55796275e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733905805; x=1734510605; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=froNOEJ5fP4HPjSwjJSIEMf48laX07a0dnLFUTX+430=;
        b=XjZ1cHdunkFo/m3dmX/4tvsi/7jVrgUOChdqHWLkXy8HRRmsjezrLRSfltBbOtrczO
         7O80aoKBECWW7YXjGSuhde6b9hSbwDYARtR34FrXe4XoWNDZmC5NsoOXCr9R8adOHVmU
         aoSiriJ8NZ7pnf4wBHYcsLy37TrehyORgePvSgsnzhDYeFbb57EjKZSu+7i2Z79T3T7P
         xt2vq9fSpUsDsuUVliFvEW5Ptt3pdTFV3kZR60SqskZleohQm9HhdAIhCN1hV9WMfiAN
         5b+HczomXKm9KfYwjL9y4qCZMHTpOmtD6vq+rSYcpc8Tlu0Pyz4L6kaOWnRpZqeZPQ9W
         biqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733905805; x=1734510605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=froNOEJ5fP4HPjSwjJSIEMf48laX07a0dnLFUTX+430=;
        b=OoEafnr1a7YIu08+iF0ZetV4alSrqXEu50P+ayCQea/FDfY2bhyv5tUwbZbNzqHT2f
         eqwg8pQDTOf903dMS5VM3H6/5qmEEijmX+iUcUMgcaJq3cJHxvVbcjI+FrHSykmRH+ZP
         g0AC80XOtstxOEb9bLFWGDRIEd66lEn/v2EdoFen3voxionjV2tenwzJIcYg664K2RtC
         uGTWhucy6vHqYDcFy+EimjgJXECXJNX+Fzeu7bp4Kvk/TdA0yVx/vef5xfjHB8/2ILMv
         Nt4wK6rJzhqf2Io9hu2GAf80h2WSRPMiEPVymhWxPeyStr6wV5W7lKAX1Dqum3XHCgoo
         Rr1Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4saWxEx3pnTc/T3ISs/4KNqLCEmSzeeVSoUOOo2301QLnqc99P9K4NGSYd+A2KbFD0F6pORCifDUM@vger.kernel.org
X-Gm-Message-State: AOJu0YzEY02ouHooNvxRtkAZzrtym7LbPvuJB050KTUJKsPKv/UYMpVv
	bwwWwQvLyz8afdxF51EDEObTY1v3dFduzQwzHkhPefoPDmp5K+KzVL5z+4Zi+oQ=
X-Gm-Gg: ASbGncssV8IsMS4jlbLOpCH7/8LzNdYIwDaVcHbd9iE4QqK3F+xMgBmqrW7s1dhqP53
	WXiHDpSO8b40T8h903y5yjvmgctw8LVvTKzsittq7mNifRqCYVc1VUR/X3/E7FYLrgcGGwR3b6+
	3lLuRd1trzR6P7fLP2Ewr80p2ohIbl+oIM4loxGopiKcoCGlCbnTyQHCTAARfeaI/ry8omu80aE
	57lpJ9yI++Ag8/e2E7XcGZgBI4Lr6fHa+5PnkMvfc/R2sATuxtFtEidAJ/Fd0Yi0JES0QldPeo=
X-Google-Smtp-Source: AGHT+IGSwDAHYbnw5S2IK3PrmYkN6EG/ZxWl01dgNYJZ1WOshMIaf3xBAqPQQalIgOFUQFPOGjdAnA==
X-Received: by 2002:a05:600c:a011:b0:434:e8cf:6390 with SMTP id 5b1f17b1804b1-4361c375be3mr11052565e9.6.1733905805266;
        Wed, 11 Dec 2024 00:30:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a3e38sm735687f8f.23.2024.12.11.00.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:30:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Dec 2024 09:29:55 +0100
Subject: [PATCH v5 5/7] drm/msm: adreno: enable GMU bandwidth for A740 and
 A750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-topic-sm8x50-gpu-bw-vote-v5-5-6112f9f785ec@linaro.org>
References: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
In-Reply-To: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1853;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=HwDocDUkhgOfD1IlB5zGqmjPJaEeewUJn9MRE88hfiw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWU2EHqgkCKVKYrWHVmNIXex/RLBqozejaQeTXpj8
 kUBYk4yJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lNhAAKCRB33NvayMhJ0T3rD/
 9FVpn1zNY11iw2SqO/QGija56WN3UAmzifwdqisQKqIk3Nftezf9LgNpv6iMwTf/TzFm88pBqVpdOU
 2zsK2aL/PuSC52aM8UqN2wRSr+TFXkbdcw+2UiGEr1FU9Lr8EX16nbg5uxHQ0duIAT217kFXDuhuG/
 2CZ5oUAd5JCN3ngw+2CRxWWAheksuFTc82nqs24au/SZCks53k7ZFZv16ibNtmvm0HdOI1P+aecnS7
 4S9LDFcdLk5hRdTKB/SNXBsLVtuVt+AFW0rtT5GTP5bEozbzL1pf8/huJWgSlzlvtKFBByOtPi6YJ4
 KTGMoCVLINhn08nt3K/9Pw4nDSlVAOqN98nPQPCSEKw0iIPyKCQR456aGCwLs20cAzjIMhC5UXdQrx
 Rutu3430RFGdvrNwlhW8RxL1HFu5gXnhYhX8h6ggso2u2WfykTgDLrloRw6f+Lhyw1YFn6+INKgcuK
 sfDmLi1Mln8KgAagtJjvFOC/dv0R806q/t2MRIguFFWL8CZ308dmSAwQIkL+mrVwj97AY1snoDx2yH
 p60KPgNSCdfUH0QdfFQzVgq9D83JOZBQyXL9Q3eleNc7jmNEGCP2v7VjL/HaOqK+UDiUTGw+Cmmuu/
 5NCrPiIxU/Js8tzXNPlVJbMIzH4RyzPhW3EstmpefIbW7Eqx43GkCabuHvSA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Now all the DDR bandwidth voting via the GPU Management Unit (GMU)
is in place, declare the Bus Control Modules (BCMs) and the
corresponding parameters in the GPU info struct.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 0c560e84ad5a53bb4e8a49ba4e153ce9cf33f7ae..edffb7737a97b268bb2986d557969e651988a344 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1388,6 +1388,17 @@ static const struct adreno_info a7xx_gpus[] = {
 			.pwrup_reglist = &a7xx_pwrup_reglist,
 			.gmu_chipid = 0x7020100,
 			.gmu_cgc_mode = 0x00020202,
+			.bcms = (const struct a6xx_bcm[]) {
+				{ .name = "SH0", .buswidth = 16 },
+				{ .name = "MC0", .buswidth = 4 },
+				{
+					.name = "ACV",
+					.fixed = true,
+					.perfmode = BIT(3),
+					.perfmode_bw = 16500000,
+				},
+				{ /* sentinel */ },
+			},
 		},
 		.address_space_size = SZ_16G,
 		.preempt_record_size = 4192 * SZ_1K,
@@ -1432,6 +1443,17 @@ static const struct adreno_info a7xx_gpus[] = {
 			.pwrup_reglist = &a7xx_pwrup_reglist,
 			.gmu_chipid = 0x7090100,
 			.gmu_cgc_mode = 0x00020202,
+			.bcms = (const struct a6xx_bcm[]) {
+				{ .name = "SH0", .buswidth = 16 },
+				{ .name = "MC0", .buswidth = 4 },
+				{
+					.name = "ACV",
+					.fixed = true,
+					.perfmode = BIT(2),
+					.perfmode_bw = 10687500,
+				},
+				{ /* sentinel */ },
+			},
 		},
 		.address_space_size = SZ_16G,
 		.preempt_record_size = 3572 * SZ_1K,

-- 
2.34.1


