Return-Path: <devicetree+bounces-149449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6EEA3F8A6
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:28:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 683A219C797D
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01999215791;
	Fri, 21 Feb 2025 15:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IVriFvaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE6421519B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151509; cv=none; b=aEQY0Uf0cQQe7muD+9xmducuSQjQEeaEzYrgDt8dWpfVYsrpRnzp1J2IOpCX7O/iqlqAEKmBSOAjFXA1LOExfVbVR0pYnvn82WWiun1J/zyaHeH25MR591sqNkYOSkM2nmkptFo5+ZOvNnp6Fu0tcvS+bC9hjchDOAUo8uiBUyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151509; c=relaxed/simple;
	bh=5SEX46PHo6rdxc8rxQ+3AemVnzaGSDe6os5wm+Edk74=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=evvpZzJWUvs8dVEg1/DhWzFCR3e5KH3HLEUBg830ULhNhfYpQIPHsNaMJoEmLjlry3aSbvTEDbjvfld311ipZoT7G1uFHFUZgejIZ/L+pu4PS2eg1SPqVyJNWclVOw9QpZqV661e1hyuQ28O0uQbyJXKQu31GAsEr4+5PePhBTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IVriFvaW; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ab7098af6fdso34130866b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151506; x=1740756306; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wtb5xbzJihHa5zYeOHJhlb/GZLCIbKav4btEFERQ7UQ=;
        b=IVriFvaWz8uOtaJPtGpX4VgBZSwupQuZ4bxJnl3K5TWGtCR2DJUVZnJ1XBlw9Avlwn
         xqnvXrJCBRFGDKBrM6NKfHvW3E+hW4xrkvL6on1YOa1dgEqZRr6EzfYdblmAD+j73QVe
         3urawHcvBbCl9H8X3M+S8xSATHKSex6os+mdzGMegTtc7uBKubSzTJbLkzX8O0/WaEhR
         li7AlrpRZs9mXhFR/dRT1B2uOFMA9NDeB7XCx2mCN6FRHPne9AqTQMUcy9CkLMaF8q9z
         x19CCoLJ0fpT3e21IDJxOf5LSUp32SrYWgXXo8ba7bJELvY2CVWZFXGExmvrhHnGnCnQ
         zLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151506; x=1740756306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wtb5xbzJihHa5zYeOHJhlb/GZLCIbKav4btEFERQ7UQ=;
        b=Avh4PQaZiEBtuGoHzufdvFcS8KmXoU10P72SCvYbl25HG8RqmcoA1543j/92LX7/zw
         mTqoQT4FKuLa+qIm+yBfD0xk/ikjrqQMBIrP4rFbr3DTXRQemhBQEkrNwEHCCVYJwo3Y
         aFUpSIjL0zrv4Tiog1+dhE0CzbXZapu7MIwMSrP73PpWc+u/NUrupJ9EpBHjbP5voIhi
         CETy2Zo5f2R5C9J6vrBZTQWdO/E8I7p1mzCV+84LHGyq1Bobh1qCX1lDEB0sL7w+QmQZ
         Q7j941ANN4pOvde/IY6CML3uSr5x8mr/tWyp5h+Q7zZqh6J+NNKbUX1spRjdG8i7h8yw
         pK9g==
X-Forwarded-Encrypted: i=1; AJvYcCXf+ajXfzHV02Tws2OHg03ia7B4REqXBoWi8YdsLLYKMQPaKcDotg/ekXdzVgm5RtgRdbW+4cdBlubn@vger.kernel.org
X-Gm-Message-State: AOJu0YzXBOCJLkT5kmGVmhh4BHecfR5wfMMc1K9Bx4IabeDzA6djWvcD
	7M33A7awPKOX8d8vQbycn0CcxaPS1QPLEPxpF15BF7K6uYAmDcxKN+LO1W3IoKs=
X-Gm-Gg: ASbGnctClbb4CuAhBaRhtt+FRvS31bFz1W6rbvtBozOuWVMxH0KOCAPlnjg/FgVIxix
	kl9L5oUIYYp1rbXlFaUSRIjIYC/jrcOWJpJ06mVCh93yr1KX0EXesMUF26SdASTVi9+p1vHg/EN
	QikcDF/se1D45vXWl0IMXxHdf+6bfnqdmJdqJcQfT+bvcQYd72r+KId4V6S/3EbB8ucwdTih9TQ
	jXXAr/Q4zinqsVLXQQZsyRTa8dnRlyIdg8BIIZm3sNwwP0vV1spUtETuwfpLjhxluHSOHfnxWF9
	LUB29rvPlKtvoI33YtPyYopTUPd9/iP5dpB843mzKqNmoM6cHcu7cI72PMCD1dOQb1BqihI1i+U
	o
X-Google-Smtp-Source: AGHT+IHz3sgB11Qnr01cYEn7UYrOc/1cyRFAQ2bELKwbHq5K3MMzShw8YUP5+Qr6SvkoCzh14rk7rQ==
X-Received: by 2002:a17:907:6ea3:b0:aa6:6f12:aa45 with SMTP id a640c23a62f3a-abc09ab4ad7mr153654066b.7.1740151506185;
        Fri, 21 Feb 2025 07:25:06 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:25:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:18 +0100
Subject: [PATCH v3 08/21] drm/msm/dpu: Add missing "fetch" name to
 set_active_pipes()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-8-3ea95b1630ea@linaro.org>
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
 Rob Clark <robdclark@chromium.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4099;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=5SEX46PHo6rdxc8rxQ+3AemVnzaGSDe6os5wm+Edk74=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJqzzOwWI//ovhTAyozuG5vOfaijy2RUZn5uL
 G93/Sv6d+mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iaswAKCRDBN2bmhouD
 1/5mD/9+utYyvYPLNBTboQf+fEu4VzIUJVptiC51/3kU1eWXv7Cy4w54XJNlqXKb6I8Y7lexsbM
 rOqG23z1oG9TJgAeA3iDetZTUVnzs0jhtpr38WS3le9ex7C7TXYgMerj4vCwxCI/tncoUG60BcP
 tHevqCxFMV5URPMf4zVscmQN3F8TO8LiPe3WQ1q8EQuE/vPJLL7v6JXbSCXHHQvmNbyyMeUQPL/
 P4rp1Vu48VqJVHUPRhK6Ox2cHOfXuoAbYVZQD/loraD4o1qHyoGmKJktbfSFFvsUrgNJKaxwtQo
 cPI+zAalwvP4tIswaZF8dtqVaoUyrIv0nss8WkVBFGYc3X0aVDNDZdRf1p0NsiT1OEAlGqIlRWk
 tJWQcnOs3xxeA8BQxTVAN3VsaEDumxtJQMRRFqyVC7PdeJigX5aDYzN4vru4CcT4diEdyp9hjoM
 XK5CKhzLGDBSkYtCJwJykFjywt3e5XpFcxxlN5I6FbVQjSdTlncF+ifUGadKrXV9/vufErwSdCC
 l216dyFThRqmLpMahs3kgyI6QAQBo+fMNtR4bBZcki9L+heKp+w+VyiUWEndKJxaO4ZnhtNZYus
 Ql903gNYR5Ee3TvkA7Xu5sZ3S43bb9/HSxLK+HO3z8CgPcp/MP6A4uaMqlAYtfyN/dZwTNbA1vX
 jl6CuQruIpOVhhg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The set_active_pipes() callback configures CTL_FETCH_PIPE_ACTIVE and
newer DPU v12.0 comes with CTL_PIPE_ACTIVE, thus rename it to
set_active_fetch_pipes() to better match the purpose.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v2:
1. New patch
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c   | 12 ++++++------
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c |  6 +++---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index e5dcd41a361f45be20c7d4414de4bf7a42ce3d3b..4e630d3ac7effca2c2d4ff8801465c7a8d3ef136 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -445,9 +445,9 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 
 	uint32_t lm_idx;
 	bool bg_alpha_enable = false;
-	DECLARE_BITMAP(fetch_active, SSPP_MAX);
+	DECLARE_BITMAP(active_fetch, SSPP_MAX);
 
-	memset(fetch_active, 0, sizeof(fetch_active));
+	memset(active_fetch, 0, sizeof(active_fetch));
 	drm_atomic_crtc_for_each_plane(plane, crtc) {
 		state = plane->state;
 		if (!state)
@@ -464,7 +464,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 		if (pstate->stage == DPU_STAGE_BASE && format->alpha_enable)
 			bg_alpha_enable = true;
 
-		set_bit(pstate->pipe.sspp->idx, fetch_active);
+		set_bit(pstate->pipe.sspp->idx, active_fetch);
 		_dpu_crtc_blend_setup_pipe(crtc, plane,
 					   mixer, cstate->num_mixers,
 					   pstate->stage,
@@ -472,7 +472,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 					   &pstate->pipe, 0, stage_cfg);
 
 		if (pstate->r_pipe.sspp) {
-			set_bit(pstate->r_pipe.sspp->idx, fetch_active);
+			set_bit(pstate->r_pipe.sspp->idx, active_fetch);
 			_dpu_crtc_blend_setup_pipe(crtc, plane,
 						   mixer, cstate->num_mixers,
 						   pstate->stage,
@@ -492,8 +492,8 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 		}
 	}
 
-	if (ctl->ops.set_active_pipes)
-		ctl->ops.set_active_pipes(ctl, fetch_active);
+	if (ctl->ops.set_active_fetch_pipes)
+		ctl->ops.set_active_fetch_pipes(ctl, active_fetch);
 
 	_dpu_crtc_program_lm_output_roi(crtc);
 }
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
index 0021df38f8662683771abb2cef7794c3209e9413..757411f8ecec2eb7096b323a99894a5d0cc37fd9 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
@@ -669,8 +669,8 @@ static void dpu_hw_ctl_reset_intf_cfg_v1(struct dpu_hw_ctl *ctx,
 	}
 }
 
-static void dpu_hw_ctl_set_fetch_pipe_active(struct dpu_hw_ctl *ctx,
-	unsigned long *fetch_active)
+static void dpu_hw_ctl_set_active_fetch_pipes(struct dpu_hw_ctl *ctx,
+					      unsigned long *fetch_active)
 {
 	int i;
 	u32 val = 0;
@@ -758,7 +758,7 @@ struct dpu_hw_ctl *dpu_hw_ctl_init(struct drm_device *dev,
 		c->ops.update_pending_flush_dspp = dpu_hw_ctl_update_pending_flush_dspp;
 
 	if (mdss_ver->core_major_ver >= 7)
-		c->ops.set_active_pipes = dpu_hw_ctl_set_fetch_pipe_active;
+		c->ops.set_active_fetch_pipes = dpu_hw_ctl_set_active_fetch_pipes;
 
 	c->idx = cfg->id;
 	c->mixer_count = mixer_count;
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
index f04ae0b1d986fa8f73e5bf96babfca3b4f3a0bf5..b8bd5b22c5f8dadd01c16c352efef4063f2614a6 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
@@ -243,7 +243,7 @@ struct dpu_hw_ctl_ops {
 	void (*setup_blendstage)(struct dpu_hw_ctl *ctx,
 		enum dpu_lm lm, struct dpu_hw_stage_cfg *cfg);
 
-	void (*set_active_pipes)(struct dpu_hw_ctl *ctx,
+	void (*set_active_fetch_pipes)(struct dpu_hw_ctl *ctx,
 		unsigned long *fetch_active);
 };
 

-- 
2.43.0


