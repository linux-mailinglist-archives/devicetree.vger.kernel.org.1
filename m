Return-Path: <devicetree+bounces-151811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 659B8A47322
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 03:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CEDE7AD95D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 02:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC221BE23F;
	Thu, 27 Feb 2025 02:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZqFNocb2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBBC1B6D1E
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 02:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740623122; cv=none; b=SZz1VFQn+HtQDri7sbFUf2th+sxcQgVc/sYDELoVbOrncbqUyYmcnMl9su9VqewYjMoYFFelmZtLEdvIdEcGqtY225lXHGHMxPnNVENYe6higGZ+OnfuozUJ0SVzOthHhBb109LawUqJWqa0SO3RFGEdT9dImyMrK3x2KcM76q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740623122; c=relaxed/simple;
	bh=ydZYZoA0TUi+Gh3S8eUOrsgEJcPFXVh59QDIeik/wpQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qd4ryYIA8IHbD6vTUsfpAEcB3R4G7wOcDgadGFfkTfi1rNTmu7WGKIo/Gq1GbXznEAgf+ETaby9g6pTx99WlSFP7kB8YIq23RFxy7wavT6o0wKawUe3FfDVVS92B55ew70tHtYWU+I6l/I/ZFRKP9a9dYl6M+uct4f9UPOUkE1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZqFNocb2; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-547bcef2f96so444265e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 18:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740623119; x=1741227919; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nwMJpPPmQJzExGwtrw5qRSd6mRYkoPvcGAO5V9qYYKM=;
        b=ZqFNocb2k5qAzVZmByJuPIFHSjw2eZIPbxvu1rNlAPYMP8hXE4keqpJJ6FuYIFqA1n
         /nGRl1Kru8avYqAD1/6Nk8WEV97HATzBpzhTJ6Nx5OxxZzDL3EKjLJdXDvXL+hRFgkOP
         Uxs7YQfM4T+/z6LiCdSom+NPhNts3EXINDA5ke8+cgu6UAUBT6bzoD7xsNvGVrVlbDvM
         gKGxn0QerWfl+lmR3uuvrOXWzXaKouLGzZL9flQdE1xh32bXpZo/SRJQ9IancZUJx3r8
         47vx21wDdO+d9zz2VdR0bebTIjTs1YSBUXq4H/PibrJNwEN0ZImn5UYjY8mIviLk8SrM
         qYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740623119; x=1741227919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nwMJpPPmQJzExGwtrw5qRSd6mRYkoPvcGAO5V9qYYKM=;
        b=L1/CYcQK+0Sg3HTJAI4GNK4jwrSPALtzm6Ho3/B8GL0T0/vOK9pBMs+PmZo2eYE4uQ
         RfA7ekGbv5FSzbuD7wdCUsAY8pzPFUDHqPxJEgk1VVT3Ou1HOvjugYyMq9qBQTqgNrIN
         H6SXZnLUN+MK0tBRH4KXju6n6I6ohCmuAAmGDrrFrWaahO5Qp//xN0BS/bLT6w+2RlIo
         lUJ8VEHx5j1tBUswW/tr9A3HOmrjfaChQJcvIl+0kypz2Z1B2AsuEmCiWBO/hraTj1P1
         gO1BVjOt0PA7PGXdth0LOvp/yiXIlUoLLaUZkqRCrGYn7QPbXdiHcMoYrKVyxJES1+z1
         Juuw==
X-Forwarded-Encrypted: i=1; AJvYcCW/5C9FOpeANgIXwkxGbu1FjkN9rbgnJkGtyrKvMu6Gmwi9wsKgqDyKGGlx0Dyls0e0yFbcCRQVrIRL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1EOoEY9cV0i0YeTJUBniPIEsYowKA5F/FWP8Zon2NsXvCylXQ
	KXddqgVcz5fwmTg/synzuexDJjKJf0hTQIja63KKpKyuD4hmr73GS1S3b3J3nkM=
X-Gm-Gg: ASbGncui2x26yxpeRoqOKQswv8VBOx4eQLP6JOF5SLQB0rsw4Z+teg1kyq9X8po1Xzw
	jlosypNJX86qWLs0EUjsbXRxpVfIac6FcMjFBSZj2tNf6nwY96I1uWzORE1JMWUkUT4QKEyl+70
	Fdnejjlw7OjEUzfxa0laLdzrxdH/8AtEpYzcCic8BKnwIgTCj23Biw0MKnklX9Xx0zQK30lCKnH
	81ZM/5tjjLHXDBpmDFOS4TxbkSbGjhlfnrtmQzobtONaLx56T4tdvZ2QACIDMUzrB05mFLYlJAS
	Qg/P6VwxvVvS22IMb5HETTlbeSqAhNxhTg==
X-Google-Smtp-Source: AGHT+IFMFzSt2wsG3oOm+5w5wwMdb2DuK5Yp/Au+CFco5T/pzSUdUvjy0J4YD00jtRalqEX70RhAkA==
X-Received: by 2002:a05:6512:200e:b0:548:794f:f9dd with SMTP id 2adb3069b0e04-548794ffb8cmr4463137e87.10.1740623119107;
        Wed, 26 Feb 2025 18:25:19 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549441742a0sm48067e87.5.2025.02.26.18.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 18:25:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 27 Feb 2025 04:25:10 +0200
Subject: [PATCH v3 2/7] drm/msm/mdp4: drop mpd4_lvds_pll_init stub
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-fd-mdp4-lvds-v3-2-c983788987ae@linaro.org>
References: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
In-Reply-To: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
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
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=983;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ydZYZoA0TUi+Gh3S8eUOrsgEJcPFXVh59QDIeik/wpQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnv80GyadA2VzNwTHLQ/rRvBiE8jpMBgAfbiyde
 YCGRYQ0O/2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7/NBgAKCRCLPIo+Aiko
 1ZDVB/90aFrmR5KOT95tmB3pWLZEsq87+yhuvUptiF1UJSOURslGc6sVg9ydUx9NCix6I56zEbW
 3GyGXkGhjaQdfQhmFp7u32GGTj7dl9MzYhy+0vcprVXVPn3wkOfwYoL+ZP8j7EKEO0azkfZxNBo
 APuBMtzFjaX8PRcgo7MeQMyxLv5di8a/xaX5TF/0FE9FPAE3vnL4erAXNQvSqw1i/dUOr6BMqOs
 ysFDUPsAzvwcqlgqBgJav4+a2KJLzJrt2BDDeH+wsQ+b0SJ/koY1jFvs9pQR/VQ73GVc9rsWqjo
 G5DuZIKjsVNaD71Is+vFt/CQYparpNF4JOOIxVg1hnWhc2bD
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop the !COMMON_CLK stub for mpd4_lvds_pll_init(), the DRM_MSM driver
depends on COMMON_CLK.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
index 94b1ba92785fe55f8ead3bb8a7f998dc24a76f6a..142ccb68b435263f91ba1ab27676e426d43e5d84 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
@@ -207,13 +207,6 @@ static inline struct drm_encoder *mdp4_dsi_encoder_init(struct drm_device *dev)
 }
 #endif
 
-#ifdef CONFIG_COMMON_CLK
 struct clk *mpd4_lvds_pll_init(struct drm_device *dev);
-#else
-static inline struct clk *mpd4_lvds_pll_init(struct drm_device *dev)
-{
-	return ERR_PTR(-ENODEV);
-}
-#endif
 
 #endif /* __MDP4_KMS_H__ */

-- 
2.39.5


