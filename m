Return-Path: <devicetree+bounces-149451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE49BA3F8AD
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:29:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4492819C7C92
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:27:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE4E216E19;
	Fri, 21 Feb 2025 15:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p6I5c41R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFE7215F6B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151513; cv=none; b=ZxaCk4vDP+PJFY11K/bVNg3PwkcWlave7hFxKL0BeYyR6UgiauWUwO1131uFECfckEDeVxx9CHBD3XW38V+zvhifJHL8XcI5KVpj/ObFyr+FYnfeVD0VJ3QxVHgoA53CG+pHhAmjIim9VDiIDeH6mr+Gr+Ini7Au9Fwl1p9WJ1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151513; c=relaxed/simple;
	bh=ESNFAo0W8bIcHw5ZPbGGU0/A64Vmk44uaAkW3dodBRQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GUW/4rkitWjw/sWyVe3JfpiLAogKaH6/t34K4TV1u/TwXAfJZ76imi0uXclEU8Q6JHybKTAvHt7dInWnx9pE2OG4ypHCrNbEgEPSAaNOOg8vc03SnTgkbqxK8gS2MOHhlqTE3pwYiN/Pvr0jcFkSqRaxPzQ8apoqWXCRIGefY7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p6I5c41R; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-abb9fac29d8so36114666b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151510; x=1740756310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bEw8TbcK6Q3ctC14U9SOir0rvTkUsaIx3mimKGEmrWk=;
        b=p6I5c41Rj4YINB6fwUWEnhKw4h4N0EeNS7CjnntG1zSxAPqFIBjzBuTR0liS/yObNs
         oeA7eoZoryuYioA8OI+UZ114XyEYurknIlTtlIJeRs5C0vSvnmO2i2G9yaUmA3zo2so4
         6mqj9nGg0y+mdTxIMxsqu+wqf9LGOjTB1amAVNtGDHeCBZXVxXArmHH119XUsyUD1XEB
         CdAySzRqKPoHUGqH/wpU63CtTWo0grz8zO5Y510f5KdKoqIkSdxgFTgSW9GsXQKQexRl
         HYpVpeiR9KHP5MXiA5ukO5zREixl9BAzRXNiC+uFr1IWbYYSnAs/CuUXgFnHkWXI3J9d
         Xk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151510; x=1740756310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bEw8TbcK6Q3ctC14U9SOir0rvTkUsaIx3mimKGEmrWk=;
        b=ZGWfseKptx31JNmckwjRCEV27k3KOX0aM8heLJfgZ4BGt4IJvhOS1GJGGNYeUg+u3v
         903B5gEsC07Lu5OL6Kihsom/5f2SFqIHenUo1ptzUqj5w6lw2YN/0F+yiq8/5CxYTHI1
         GkIHtUlp49fW3VepBv/QHXTRawkXi9F4m22Wz8uKo/2DVLrsttsI8HmwIUVjt2oNaQf1
         y1ioqj5wL9ObX/eWILlD1mgpD46lZ9CGDwn/oPDS7geLRlOVboZTDxLB7Pgc8aFSN9OJ
         k6GzmzrZFozLdfM4IK1BwOrhFV//k+4+/8eF7YkQajeNDQfyTjGhisbCtVG7jGI4CkW+
         c9WA==
X-Forwarded-Encrypted: i=1; AJvYcCX1vSnvH7OzDEnUwcuj1qwvI3gGTq201ii6ObBlLOQyT4VXRZrvoR7798oqLFau02i98rt0PBN6w6iu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+VbG64TWqD1qTMSQ44VJT1YX4yBR7TCiGiS71T8WlNw9qmjIp
	+F0BWZfVNXbxbJ3OInyrjBbpbNuUF6oiKDKefsOmTcZ13oQi/MEkCglN/oQF/yc=
X-Gm-Gg: ASbGnct/C9UfiwTRSGSMGH9csS9CkCZc4utRqlNlsWO8ytos2xesXUMic+sY6eVls8f
	O9YnAXxcOrSdJamtBwFmFYuDupf14bsRWOlM3fwbe6N9yyqQrdcWsrwLf2NKgCFSvCIupgCh1ra
	EeYz9yuTClFxfAC2g/1oKc+3QKJHXEf/QcZV4glv7aSxJD6yfUPMiY/sO3xPNb0oj1t+Cw9cs/A
	dsl+ToUxaJBq1pV5OOiiLIDe9LqgDPcUsNGUFTn2oQFalqa74pM7DYxPMiH13QKJNAlR9lRHXCm
	f5wDdwaewaUivTcK9tGa5yYShyiFcBYTqa28tgzwhwee5CmLIoAMjJHjdwezzGFBsvg71lTYA5e
	a
X-Google-Smtp-Source: AGHT+IFMiyoijhhsN/r66rGa3gdxIeiogjo+gOS8owC4awJmR9PjmfqBaix2rAFdUv1+W8Bs+pHTyA==
X-Received: by 2002:a17:907:2ce2:b0:ab7:cd83:98bb with SMTP id a640c23a62f3a-abc09a3c1c5mr142336366b.5.1740151509961;
        Fri, 21 Feb 2025 07:25:09 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:25:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:20 +0100
Subject: [PATCH v3 10/21] drm/msm/dpu: Clear CTL_FETCH_PIPE_ACTIVE on
 ctl_path reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-10-3ea95b1630ea@linaro.org>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
In-Reply-To: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1056;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ESNFAo0W8bIcHw5ZPbGGU0/A64Vmk44uaAkW3dodBRQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJq16yN8kEhw7drJLPUlvodxfwFeC/r2eVwDW
 WjtMKuMWWGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iatQAKCRDBN2bmhouD
 1/+sEACGJReGDn+b3f01/aVELZif6yYJJ+SA6Yf266CzmM/U9rNv6xCkX1jnrgfNjDVdScFkSCT
 +XFtYc1C5WkoH9zVGxJ6e8nn4tVBnUQQ6JTseswL1JEW/U8tCd0JWZdiC110M2dDTt1FERCNH7/
 M6jyHhX/wgenyGMGn+vS0IrVWlGmJyqJal/7zhASirLtsF5svm5ARV4kUpjuPmM1dGaNWIli+pz
 sTgI8Cn2Pu3pf2ZODIfaoBlWGvREKN8BnTsPTmU7luLLe+dThw/9ujQBU7WRUIKEaSA8BsfoLe8
 ZFI1ZA+0J4foWj6zw3JVu9F0rgKby7wF56NgVssD5AYlydwMNYvMhAadjAanmm17MoXituoBwhE
 B1Bwe8H29yFG4uXSemzj5Mw4/VvT0IOzcK0TzuREtFjdKBmY20nLrM4ZjLVrRB/Xeaic458aPjt
 1QL86hQ8sl0ZBdFw19JRUbmIsZVBktJBc9QewRnURgDJehfrvUO5Ti4UID4l/w2G8MH7e7IzyYP
 sU7zxSLb4n393BRm1XV1KzHgRFpG52hVnOuNFcJIuEuvVpVIjZM2zo4QtzgQFzd8eEu7vY/TRM7
 +odudo4ZW8C55I/iXdluEBKSUBLFEnVYhr/fNPoLhoRmb6rVVITxo1qF3zG+C3jT0lkPwN1SK6z
 28cs2UOTVRqOM5A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Resetting entire CTL path should also include resetting active fetch
pipes.

Fixes: e1a950eec256 ("drm/msm/dpu: add reset_intf_cfg operation for dpu_hw_ctl")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
1. New patch, split from previous big DPU v12.0.
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
index 757411f8ecec2eb7096b323a99894a5d0cc37fd9..1c14770865b4b5f83a95feb35d8ca6b0c87fdb53 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
@@ -644,6 +644,9 @@ static void dpu_hw_ctl_reset_intf_cfg_v1(struct dpu_hw_ctl *ctx,
 
 	dpu_hw_ctl_clear_all_blendstages(ctx);
 
+	if (ctx->ops.set_active_fetch_pipes)
+		ctx->ops.set_active_fetch_pipes(ctx, NULL);
+
 	if (cfg->intf) {
 		intf_active = DPU_REG_READ(c, CTL_INTF_ACTIVE);
 		intf_active &= ~BIT(cfg->intf - INTF_0);

-- 
2.43.0


