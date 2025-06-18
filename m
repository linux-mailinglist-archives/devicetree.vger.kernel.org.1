Return-Path: <devicetree+bounces-187199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D28ADEFC9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 16:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 986A11BC426D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FF1E2EF291;
	Wed, 18 Jun 2025 14:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K6t98eCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337C02EB5D3
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750257222; cv=none; b=ArG2PFrEvLaNaVv0t+hvauQiDyc1Mfhc7LfHBXoouXJo8Q4NE/AylpuEFV6+623WBn0oItaPOxQQcG9Cpx1HPPUlgLRnF6zAmqCYxewm1XsE+lQYwQAqAj5mKM80UTVwlcoXkc8xLDZIuxIUL+aZpv3VwKkBf4kvtnYpZV00t6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750257222; c=relaxed/simple;
	bh=PDdJg5qIS7HbPoHRu893zZjvEEa3IuzpHJO/F1Hc654=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QM9I5mkAohS0vD2q4JTNOeH6gBSW256prZu+72sp5x7mfW1Xk0b3NGqABzJU8W/7diZWvSHyg+lxkwpUFC8Fx98LOZiObNCPa+kwRUj4Wb0aVt80y9UIp5INNSivHBGqI/5bwTJpPD1CZIxHkrsuFPRCjwUY/wmkZ+M/og43ukM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K6t98eCK; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ade3ce5a892so89596466b.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 07:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750257219; x=1750862019; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CBcl3mtlA2qXlHBtwB5KJDW+hrhCZib9hqqSTtK3hgY=;
        b=K6t98eCK3CKfuTSTM2cHmCZEE56F0zP1h8ZQlh9rkCmHdgh0Q90/NXX45HoaqRpHmr
         ynmN9twg20vZerZ/ylyHCD1UjL8fog6IoSvv4VVVgIXSmyLe0f5Zr7kP+NmaWt7ckZx7
         Jgqk/bVirMZvU0MBf35gMIoES316G4FNL0OwG+0uRBpgFKrSlYKHQD/ltSjglfyKyqD5
         MDZ63KNE54p1E+sZ2pX4PlBOaHLXj/LNOW/XTqjZTz5kHEQB5aOGWn1dqWf/JMr6KY0a
         tDXX0ou5VGkM939cejTghgipAgLHN9FDZEenkmdX3hPyCS7j10rXjHF4ctPoI8R5PbhA
         8HRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750257219; x=1750862019;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CBcl3mtlA2qXlHBtwB5KJDW+hrhCZib9hqqSTtK3hgY=;
        b=TmimF/yB8jEN1oq9MJM2ZXL36mBCTEYFbEctDnrQ8ifonuLi/bqwsCJZypIYPTZJDg
         3tE0ybrXjnY+mGjSUK14fKzK3GvLdci7QYpBI6VXU05isOPlug9KsMBidTIeZxDGCa9D
         g67dHEgBiyc9lvDTd/3iLUeqdD8HJ5Z8tz85YHBxrm+HQo1zHEqfKLIpbppe7/hZPw2F
         oJMarht9uLqvWniKMl9x89wK/y3tIIemPgeSHGxDd3cLSH/eWWtPDT3szluN3A6YUVfN
         XPUeMMqLyuUUE74feL2n+TKByS2A1HXBOl1VZEmgk62fAoGRJYre1L7qkp8vgUIpXlvP
         EThQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoa12y2jDPIOjHzdj4ntoTTDuaYh2DXpRWL98zNd8fr869/7RGnfhxg20qSSPmFfFDyjpllQSYj1fO@vger.kernel.org
X-Gm-Message-State: AOJu0YzywapydyViD3d3cOhiq2qRlQIAodhMbITy81XrdmtAbgCUpyL8
	/GRaq+bsIscTqt93alggKa8J7Wq2x3qJ9Co39qpLp5nxrpxr4NiLiaLi5io8hXRL2pI=
X-Gm-Gg: ASbGncuih6rbFq5IEhzdgcnkxSkeoNrGwph01R2qyn3tMWXatNIoZqK/Jun+NUv9YXw
	P92Bt8iL2T4sjk/5/b9/jAxN9mV/hLziO8OQmkr3iRV7auMunplu3aLc8f9OYB2Byl3NCicIUkl
	dp8qtwWGIzjRziWx79bz7iKhnjHz0Jn2NEVRxMenMwBH+ZgwmlFrliVfiXOgR3fj5KRbGI7mx2w
	N2HPmS4aaiLj2+61zh4e0p4q+ivkgtGljW8qGqdWMulKD4i0LpJ38guVgARPiz1hX+AAXmOzTRh
	EvdUZpPgusHHiIyUERi6ekDC9oF5vknEzipmXXrMtziIMkBBuYzTvDm67z4ZuVCCjofr2MBRp9w
	lRtulFSg=
X-Google-Smtp-Source: AGHT+IEDspEIRhtyQL+v1bYNmceusUqE8EE/cJvSWeAs7JI9fNPJZisiIQWfjxi8oYxPiXJwnxgdmw==
X-Received: by 2002:a17:907:fdcb:b0:adb:2dc9:ad4 with SMTP id a640c23a62f3a-adffb24769amr264967566b.14.1750257218467;
        Wed, 18 Jun 2025 07:33:38 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0135sm1052257566b.47.2025.06.18.07.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 07:33:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 18 Jun 2025 16:32:40 +0200
Subject: [PATCH v7 11/13] drm/msm/dpu: Implement CTL_PIPE_ACTIVE for v12.0
 DPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-b4-sm8750-display-v7-11-a591c609743d@linaro.org>
References: <20250618-b4-sm8750-display-v7-0-a591c609743d@linaro.org>
In-Reply-To: <20250618-b4-sm8750-display-v7-0-a591c609743d@linaro.org>
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
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6580;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PDdJg5qIS7HbPoHRu893zZjvEEa3IuzpHJO/F1Hc654=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoUs4jKwDzKY4YIrMamAqOlDv4QnZCzfUyeWV7F
 SSoWwT4iB+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaFLOIwAKCRDBN2bmhouD
 18dtD/9xScvjhFAJdSMKlczsAG/gXei7oKxX7qg47m9Bu+WSsMKk+cCmBXUwO0y04VExZdB0XaK
 9424nIdrPCarGPwFnmhSOzn7DHJXrZ+e5CfcqTrTIRobMXFrgMtlxwT5aIzfh4IHVLAzpEfKXb3
 5grqi3yyMiA8EVTEdlr87AvH6ouex6d0S8Ve9PDtIm2IP26RYjaZfk38ATOEgJvSP8arEsOPSwi
 J84skwbFn1XPcgzEio3owqsd3L1aYx1nXycbCug1wgee4QXTsmvZlfKMyWOzq15GcwpgpdpF7Gf
 KoQMFb3Yg8VzJBVnlnfYLmV1iZvAbG0VEwcT/7fSJ3X0pgTneyUId6VfRg3FlpnkElLzLmNF3uU
 kTqxElJ/gQt/UoC3YDtqcFixkHLSCw2In0QdQ6mV+6vEKtVbXoAht77UrCqQm9Lw++RBl9/7Aoa
 Kpj9mlGUskCrRLlz9XotTEVmT7OVczF3Lj+T070bAsy0cqu8QDt+XqZFCREY3FhQHv44tLhmLSr
 AkVa85kdhyqKQs8hjEmD2TFArCty1oPuIYZKkR6oQQtASpQzIrRAr0zho+UYJ5v8yOZFdOYx8LH
 3LbdkUlQ6R3uIQ5FOJAJCWKdc39H9HRVSZQ5Osc+qX6yjg9dOjZryh+ABjHYN+DYXdGjeIj2tmV
 rXmjwPU07qDHRkA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

v12.0 DPU on SM8750 comes with new CTL_PIPE_ACTIVE register for
selective activation of pipes, which replaces earlier
dpu_hw_ctl_setup_blendstage() code path for newer devices.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v4:
1. Lowercase hex
2. Add Dmitry's tag

Changes in v3:
1. New patch, split from previous big DPU v12.0.
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c    |  9 +++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  3 +++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c  | 29 +++++++++++++++++++++++++++--
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h  |  8 ++++++++
 4 files changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index 5e986640c8ce5b49d0ce2f91cc47f677a2e3f061..50897de0ab55c2d8dc2e6547b9f3a033a3ca9b45 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -453,8 +453,10 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 	u32 lm_idx;
 	bool bg_alpha_enable = false;
 	DECLARE_BITMAP(active_fetch, SSPP_MAX);
+	DECLARE_BITMAP(active_pipes, SSPP_MAX);
 
 	memset(active_fetch, 0, sizeof(active_fetch));
+	memset(active_pipes, 0, sizeof(active_pipes));
 	drm_atomic_crtc_for_each_plane(plane, crtc) {
 		state = plane->state;
 		if (!state)
@@ -472,6 +474,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 			bg_alpha_enable = true;
 
 		set_bit(pstate->pipe.sspp->idx, active_fetch);
+		set_bit(pstate->pipe.sspp->idx, active_pipes);
 		_dpu_crtc_blend_setup_pipe(crtc, plane,
 					   mixer, cstate->num_mixers,
 					   pstate->stage,
@@ -480,6 +483,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 
 		if (pstate->r_pipe.sspp) {
 			set_bit(pstate->r_pipe.sspp->idx, active_fetch);
+			set_bit(pstate->r_pipe.sspp->idx, active_pipes);
 			_dpu_crtc_blend_setup_pipe(crtc, plane,
 						   mixer, cstate->num_mixers,
 						   pstate->stage,
@@ -503,6 +507,9 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 	if (ctl->ops.set_active_fetch_pipes)
 		ctl->ops.set_active_fetch_pipes(ctl, active_fetch);
 
+	if (ctl->ops.set_active_pipes)
+		ctl->ops.set_active_pipes(ctl, active_pipes);
+
 	_dpu_crtc_program_lm_output_roi(crtc);
 }
 
@@ -529,6 +536,8 @@ static void _dpu_crtc_blend_setup(struct drm_crtc *crtc)
 					mixer[i].lm_ctl);
 		if (mixer[i].lm_ctl->ops.set_active_fetch_pipes)
 			mixer[i].lm_ctl->ops.set_active_fetch_pipes(mixer[i].lm_ctl, NULL);
+		if (mixer[i].lm_ctl->ops.set_active_pipes)
+			mixer[i].lm_ctl->ops.set_active_pipes(mixer[i].lm_ctl, NULL);
 	}
 
 	/* initialize stage cfg */
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index c0ed110a7d30fa1282676e3ae4c9f1316a3a3bf1..a52d5a74759ed9b1b12a0f00ee2417d9ee37fef9 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -2197,6 +2197,9 @@ static void dpu_encoder_helper_reset_mixers(struct dpu_encoder_phys *phys_enc)
 
 		if (ctl->ops.set_active_fetch_pipes)
 			ctl->ops.set_active_fetch_pipes(ctl, NULL);
+
+		if (ctl->ops.set_active_pipes)
+			ctl->ops.set_active_pipes(ctl, NULL);
 	}
 }
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
index fe4fdfb8774b176fb024d76dc0bd269d9736d226..4299e94351d5e5371a86608f5ec1246f0cbe4290 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
@@ -42,6 +42,7 @@
 #define   CTL_INTF_FLUSH                0x110
 #define   CTL_CDM_FLUSH                0x114
 #define   CTL_PERIPH_FLUSH              0x128
+#define   CTL_PIPE_ACTIVE               0x12c
 #define   CTL_INTF_MASTER               0x134
 #define   CTL_DSPP_n_FLUSH(n)           ((0x13C) + ((n) * 4))
 
@@ -681,6 +682,9 @@ static void dpu_hw_ctl_reset_intf_cfg_v1(struct dpu_hw_ctl *ctx,
 	if (ctx->ops.set_active_fetch_pipes)
 		ctx->ops.set_active_fetch_pipes(ctx, NULL);
 
+	if (ctx->ops.set_active_pipes)
+		ctx->ops.set_active_pipes(ctx, NULL);
+
 	if (cfg->intf) {
 		intf_active = DPU_REG_READ(c, CTL_INTF_ACTIVE);
 		intf_active &= ~BIT(cfg->intf - INTF_0);
@@ -737,6 +741,23 @@ static void dpu_hw_ctl_set_active_fetch_pipes(struct dpu_hw_ctl *ctx,
 	DPU_REG_WRITE(&ctx->hw, CTL_FETCH_PIPE_ACTIVE, val);
 }
 
+static void dpu_hw_ctl_set_active_pipes(struct dpu_hw_ctl *ctx,
+					unsigned long *active_pipes)
+{
+	int i;
+	u32 val = 0;
+
+	if (active_pipes) {
+		for (i = 0; i < SSPP_MAX; i++) {
+			if (test_bit(i, active_pipes) &&
+			    fetch_tbl[i] != CTL_INVALID_BIT)
+				val |= BIT(fetch_tbl[i]);
+		}
+	}
+
+	DPU_REG_WRITE(&ctx->hw, CTL_PIPE_ACTIVE, val);
+}
+
 /**
  * dpu_hw_ctl_init() - Initializes the ctl_path hw driver object.
  * Should be called before accessing any ctl_path register.
@@ -800,8 +821,12 @@ struct dpu_hw_ctl *dpu_hw_ctl_init(struct drm_device *dev,
 	c->ops.trigger_pending = dpu_hw_ctl_trigger_pending;
 	c->ops.reset = dpu_hw_ctl_reset_control;
 	c->ops.wait_reset_status = dpu_hw_ctl_wait_reset_status;
-	c->ops.clear_all_blendstages = dpu_hw_ctl_clear_all_blendstages;
-	c->ops.setup_blendstage = dpu_hw_ctl_setup_blendstage;
+	if (mdss_ver->core_major_ver < 12) {
+		c->ops.clear_all_blendstages = dpu_hw_ctl_clear_all_blendstages;
+		c->ops.setup_blendstage = dpu_hw_ctl_setup_blendstage;
+	} else {
+		c->ops.set_active_pipes = dpu_hw_ctl_set_active_pipes;
+	}
 	c->ops.update_pending_flush_sspp = dpu_hw_ctl_update_pending_flush_sspp;
 	c->ops.update_pending_flush_mixer = dpu_hw_ctl_update_pending_flush_mixer;
 	if (mdss_ver->core_major_ver >= 7)
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
index 9cd9959682c21cc1c6d8d14b8fb377deb33cc10d..ca8f34ff3964c1adaaacdd3f0a60572da53870e1 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
@@ -258,6 +258,14 @@ struct dpu_hw_ctl_ops {
 
 	void (*set_active_fetch_pipes)(struct dpu_hw_ctl *ctx,
 		unsigned long *fetch_active);
+
+	/**
+	 * Set active pipes attached to this CTL
+	 * @ctx: ctl path ctx pointer
+	 * @active_pipes: bitmap of enum dpu_sspp
+	 */
+	void (*set_active_pipes)(struct dpu_hw_ctl *ctx,
+				 unsigned long *active_pipes);
 };
 
 /**

-- 
2.45.2


