Return-Path: <devicetree+bounces-148816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEC1A3D806
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0119F19C0A19
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 964371F3D59;
	Thu, 20 Feb 2025 11:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iBKVl2Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C358D1F37D4
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740050103; cv=none; b=OWI1n7Bdg8tXkBvS4+Y+AThUtmNYXmmxmq5YgJzW1AMljgnw2TERzqncb7WP5vbstn4ot5FWmYhD/GG5bNmCwjfUS8Mg/b9RxRsBhTxsalEsbfgA+w1UOErFdF7Faof8F1EHWbfuflEeOd3AcCwLXg2F16v0UnD4RBLO7+5oOWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740050103; c=relaxed/simple;
	bh=Iuu/rih2gTkZKK6Ghs6dsVuCdf8xwLg/vMhkHtsubTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d/S6dnU9W1ttljj/q1J/CY79a/pN1UlxlTTrl59yZcK1jcnfEfROuzktNW+MsYVSN74lf1A5ENMzJOJCKKpAzVbScPsAlU7dVOkb5ywnPG3TR1Z8NMQHlFpffeeHR4kuKyH41Z5wi/oYs0+F+HJapkOnrn+2KqT42GgLdiyZvno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iBKVl2Bt; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54622940ef7so893295e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 03:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740050100; x=1740654900; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v2FT69grsgtQGwodtPuDBrmjAJehPRULckabnrzgeOM=;
        b=iBKVl2BtZMiXiv6oqXoZt1UyyEDPhbke6aT3kMtbhnoK5P0kQG4inAsIyTaEt8EOsV
         W0gvhZ/GET1RpJHWhaQY1/5LLYxbSmVTpdz2qH1z3XZmrpcVAUuQsBUCASfFYDjcV92l
         fyu9IR8N4qe4U4amrtRip+6F08s0IJvwmF7Ai9W7Tyyd873sLvyqVGVKyTOnOf01lQOy
         IZuiYj/Qs8X3217mTJsU+1rjxiYSXPZqO3oed86Mc/EyP0aZqQjhCjw0G1jl9q3NmLUD
         mhuR8nofnP55d2yGrvPzNaQPRPtx7R9aCWRl7BqvwucTJDcFJH4H/tE6s+nwTcx1OXSC
         4DYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050100; x=1740654900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v2FT69grsgtQGwodtPuDBrmjAJehPRULckabnrzgeOM=;
        b=UNkS404qTUr9o9lPRvWXafImkfrTurBerEzTO8gafDulsT+or5bLdJEV0KK/XJrG6e
         YDaDzA2BywZjB5048YzicyUVpoImit2U+iobIPWGMJgIyOzCK6O9IiMoN/4l0y2aLrhK
         Sv3pIteZdsfZH6SCsEC7XYaJIrrQ4JAIkS59LthizPm7nmW5xrgmrzNb4HoQ/nEu/SDv
         hHOu+gTzRLUaZunIcmcPnHQqzhWd9svBtfD4zse9U0UKU3DSBA8hP9oZoeHhWJsiE2Qo
         xE0L3ValAJlVaYojzL7KezjXYcnS0O24i+5JIx38MzXjVYivrfO2SaIqziLbyDUDnOwu
         e4lA==
X-Forwarded-Encrypted: i=1; AJvYcCXDGW4r53dCk+OZW0SyMcJruxKRwYLe7DYp9TRLtU4Jp/uyZOFNW7Od4ZPJ8pkkWEe3Nxhj5dGiYQ+o@vger.kernel.org
X-Gm-Message-State: AOJu0YxRy9KYI6wBecfdioESynktNuvqA31dWdFcBTjY7UhSoQdOlNsP
	FBUf5Yx36YgfZJFRdiXX3S7crxfhp/vKu1j3qjoU+MJ32T3T4Mqt7MKeJlg1b64=
X-Gm-Gg: ASbGnct+n+hqHIZZ/wV/3U2ffLviwxgxF4b5uD98srThYc6IMXpFVpciy5Br2GZPvoE
	IVhIRL2VM14Fjl1M8uFBt4fgrULgy/xw3qeiZEgyqTHKBvDnLvAbxnwa5jLl4j8zdNmhHumqriX
	gYoMqUzyezUnWtYQyoDqGgvbr1V5RXKICadP4CSyqJhyK0eq/cBbyAuh5ADxPtmfY+1htbHBTYU
	/gVk97lOsT7uuMoK1NJx7k55SQYmRKCZV+W8/9lgWABEMbEl4Pslpp6IO+WUa2/y7MCjqcId4BT
	sNG8a90mQ/V8cMox1QOyzA0=
X-Google-Smtp-Source: AGHT+IEK5YepgQWPALUfLRJKi3C8erOz++2sLryCYJu3ofhHXWr7LbJxyrpPkJIZbnwDfcXCA7dAIw==
X-Received: by 2002:a05:6512:1189:b0:545:bda:f17 with SMTP id 2adb3069b0e04-5462ef201a0mr3010127e87.44.1740050099792;
        Thu, 20 Feb 2025 03:14:59 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545297856c6sm2056164e87.142.2025.02.20.03.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 03:14:58 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Feb 2025 13:14:44 +0200
Subject: [PATCH v2 2/7] drm/msm/mdp4: drop mpd4_lvds_pll_init stub
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-fd-mdp4-lvds-v2-2-15afe5578a31@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=922;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Iuu/rih2gTkZKK6Ghs6dsVuCdf8xwLg/vMhkHtsubTw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBntw6rBhceXrSdx0nb7uB53zSoFWDO1AkbXhVhq
 +gcl/EdOZuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7cOqwAKCRCLPIo+Aiko
 1YGzB/0Xno3UiIYTOdud4CEcJfrYiPKQ+eDCZMrq2/oZ3IKWU8zODmyCDhFLUcbZQ0C04pdG40O
 rYOSy2Jg8WQNkxq444ypAAVL3fV3LD466bkbnE84alabWsqUc95eCsbpatXcR1zt5C0SXGXZiZc
 Md04vbC4VX36PjRWVJigYfHQbbINZ7pG28jzX3Sk3GzjQ4frPc8PlEI7NBw+0T9gPcqfovjJp4a
 j+JLYqZ2LQFVh4CThB5jajAT1whTWnjZZNxaUgEld9idFUVCoLrRLazh8ADiIT3oMEBF9UbJt2J
 FY1lN1Ofmnmmuw+OeJcGqDv8RkS5ZlbAx+7roaozkAtlnVV3
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop the !COMMON_CLK stub for mpd4_lvds_pll_init(), the DRM_MSM driver
depends on COMMON_CLK.

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


