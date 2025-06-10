Return-Path: <devicetree+bounces-184320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 535FCAD3A9C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA8FD7ACFB9
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33B1E2D8DC2;
	Tue, 10 Jun 2025 14:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HFbUKNOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67272D8DC0
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564401; cv=none; b=J0yfq8gGL7e6Ev/N2ZlYoZdag6k1H4BKdWcWrC1LsyMruztNSPmNRoJB/rdny/Hk5QKe9o2bHGIaJF1tqsEwMVITbzl0UDvW9DBoIwuaY1khP0Zcql2io0CWov5XU7aIGdaDQS56HotChnmN/PjIl44x5uqVMwqU3kugC1FICwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564401; c=relaxed/simple;
	bh=Ez4rm6PFGrlujB66CVWxeGwNOdP1q/LlPEEBuX2j8C8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iwVIgRfauEDnsyA1gVBKq1Dl/SeIlfS3UMnI3LqH2Og7nYHGuKjvfZfBHVLHdqKSQE6W2uhNl7YqAN9CdmOYRJHsIWXCvL6Tdav2lf6cj/WL9BypdagGHy12fQafE0BI0T+dNtSpeplxgC518M5FLBk2tTFMILqSb499njw2mz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HFbUKNOn; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4531898b208so1003235e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749564397; x=1750169197; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fhJitdsInvgOOCf0kNoqN1nTD4JPV3++bcIAyD0Ca8I=;
        b=HFbUKNOnumaRPpCOBpghWfX7K/MNC+w2rIYpKBU3RsdunyHaUNz+7d4XzjGAuoGuhI
         7L5dd8Uc3QVzO9QutlZbXdH7vg0duauNK9KnRQEomJc2BgmMKzMlBSfbpYJNq3CF+CE1
         GUZrQzmgE3rdVeOXDbcq1jYp6eD5L2N+t6Pm/nmNYwuGD8ZV3A5BegKonZTNb2DPXV5B
         Dys3gFmfRv+AfzT3IhsWAKfxD972EZXdY2NrwwUgfCXM4HwmkMGAbG6noIDHY+KztkMK
         nr1hh4h7A1OlZ0Bd6f+XOFueEAOwOwQgIZgYDjpHCZ7T6F6ai/d2eETIEUZiZDS6yIKZ
         9XEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564397; x=1750169197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhJitdsInvgOOCf0kNoqN1nTD4JPV3++bcIAyD0Ca8I=;
        b=jcwyXUJrOhOt5QDbjAYNlQdXCtnkH5mdid1ZxDPcrMsRUy/Jiy8hrOwwaLaF+O5HlJ
         pn+tWh+G8LlycbrAi9xq914zVp0sWXCUg3zkkjWF37N6EC7yAZoYK4/OvSKlCmIYbm2a
         eSn2IOboMbsn8h8BZitpAQXSGe6T3OioQ4GgwsmPRdTwcfDvP1Qio2z1falInd3ru9iP
         6+dzdEWTGzoW/Vv5us65fCgyrJrUB4dkzvqNKGV4ralOCttiep296rSfR+bnW3pfRaXP
         0T9iAguigdBVovQEg7+qTohfHgUfpvXYL+XPAkNSkwOibcfaZ/Ud679IDPFh9TX4rKLG
         +YTA==
X-Forwarded-Encrypted: i=1; AJvYcCVoKpWXHtOvs294xL31RFMSEWyFj0f+UgJ8xGrQ5ia990lLGHM1Zp5uNbJXELicXdxzwS1Y/iS8MUwX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4ZDHsnq3je+KxcDtj+K4V/1G2CW0/duDN6i7g7pCroSoVVmAZ
	u+lX1XQyeeC6GHWDVECGalSHEpk5JPcwpBKHzNov0BOgxm58lId3OhEMsCX8LdSuhrI=
X-Gm-Gg: ASbGncv9paRi1cnI2spqoCRuvRijLeCxPoqsngzIc57QWoNPOy+KcYwsQzU9ej/tCsF
	ABQWMit2bqk9YbvsFK7d9Zq3FYdk+1539d3wHSVh054maKsfHKBn2qj1XHcg/dz43ws1Sx5bgyb
	zoqsguar2cR4ARecNXBFLw2W1N8/Ly9n0QTQXY5W/cJEod6aRSQ9JpgG9q9qJswziisZfzCvkXP
	3mTGfPb/qha2at4XeW9o01seWPCaUL8f0eM8hwVBT5G2nPdIxnsJQ9rGZGb79IxT1DXIvYriHG6
	3i25HUQw2WRDU0Jak2v1AWpZ0sEwVLz3G5g+6a6YdV9xq1RKBYfxCinjjmsy6i2pSbeJGStGwlZ
	8VCkAtA==
X-Google-Smtp-Source: AGHT+IEkH48jxAjPmiEs0V1xdB1+qZh5Jetyjq3/Ap+Rl/OUN1o0Eg/cerOxzkAbgtRzEPBpAjOIVw==
X-Received: by 2002:a7b:c4c9:0:b0:453:bf1:8895 with SMTP id 5b1f17b1804b1-4530bf18a02mr23985445e9.5.1749564396855;
        Tue, 10 Jun 2025 07:06:36 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244df06sm12734469f8f.69.2025.06.10.07.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:06:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 10 Jun 2025 16:05:51 +0200
Subject: [PATCH v6 13/17] drm/msm/dpu: Consistently use u32 instead of
 uint32_t
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-b4-sm8750-display-v6-13-ee633e3ddbff@linaro.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
In-Reply-To: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
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
 Rob Clark <robin.clark@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1621;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Ez4rm6PFGrlujB66CVWxeGwNOdP1q/LlPEEBuX2j8C8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSDvKYX8JuZ1utyAFUJbhgbb79o5eUdq4TvxK1
 hFfk9Ce+16JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEg7ygAKCRDBN2bmhouD
 19NHEACKFn9KQdCuFYHuUiAx1SJj6eWYi2vMCctzJy0GkaTeERePkDCenqfQWHqMJqqGadJIt01
 beXorV+bpdEiyCuukJ2gh16oYGdLswG4iyUIlqD35bMqNv6OXQgHA+AfRoq44t/QPJwL4yu4eQU
 UjdTG+5B2AyD8RfNX8FfdUaOh5PPOjyvgcWeGxf4m7ZFNVOB2ar33N9nvwLupa9ecRX6z9wRchB
 6RTSdwwUn4kc7pwnOn3Ei0eorgR+VreMbzEi6sXDkOYJ5Ghat71CissNbX7lSBqofFjyBdMXMsY
 pgRx9IPqUbyVhI+4IpS0ntiYI/WysKbLt5dyD3HJMpb03iQZ8dDJqeBTGuquJ2YW6gwx/KSI5LI
 X/xL9Np6O5MesXjYg39F+DNK4SsyZE5HMRpNqP25BNWVH3fuRla3f36tS1Xswr6uWwajfsyal6G
 u1ksimaH4DA7MIgnq7CT3sThAqCMKuYiewP5+KHR6pw0DpijUS2cOiEmv7SQQOxktzlUrjdWvtO
 P4yEAIMQqRJpN5WK9Tzsdo6LUbLi+hYj6oX/M3W2ECeq1JNV2htKxnkAmiekL1uDnOkXuyl3Hlg
 3yZvxfv5wQndm/A/+hk3LfZgnKLgnavxakOlW08NB+ZcCvgKVJLM0FecSicaxQZz8aHE5nfa7Ja
 ambj9gvO8vvfGDw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Linux coding style asks to use kernel types like u32 instead of uint32_t
and code already has it in other places, so unify the remaining pieces.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v6:
1. New patch
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index a4b0fe0d9899b32141928f0b6a16503a49b3c27a..92f6c39eee3dc090bd957239e58793e5b0437548 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -323,8 +323,8 @@ static void _dpu_crtc_setup_blend_cfg(struct dpu_crtc_mixer *mixer,
 		struct dpu_plane_state *pstate, const struct msm_format *format)
 {
 	struct dpu_hw_mixer *lm = mixer->hw_lm;
-	uint32_t blend_op;
-	uint32_t fg_alpha, bg_alpha;
+	u32 blend_op;
+	u32 fg_alpha, bg_alpha;
 
 	fg_alpha = pstate->base.alpha >> 8;
 	bg_alpha = 0xff - fg_alpha;
@@ -402,7 +402,7 @@ static void _dpu_crtc_blend_setup_pipe(struct drm_crtc *crtc,
 				       struct dpu_hw_stage_cfg *stage_cfg
 				      )
 {
-	uint32_t lm_idx;
+	u32 lm_idx;
 	enum dpu_sspp sspp_idx;
 	struct drm_plane_state *state;
 
@@ -442,8 +442,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 	struct dpu_plane_state *pstate = NULL;
 	const struct msm_format *format;
 	struct dpu_hw_ctl *ctl = mixer->lm_ctl;
-
-	uint32_t lm_idx;
+	u32 lm_idx;
 	bool bg_alpha_enable = false;
 	DECLARE_BITMAP(active_fetch, SSPP_MAX);
 

-- 
2.45.2


