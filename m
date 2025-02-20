Return-Path: <devicetree+bounces-148779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7DA3D618
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1765D1897B5B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D441F0E3C;
	Thu, 20 Feb 2025 10:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FwPxPics"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38441EC00F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740046108; cv=none; b=GoGs2ZOQKVnYEvM8Gu/xlj5smZt18lcqCUy7tPaT4xF3dVI78U76Ct+YGIVI0Ag3aiBj00ISfo8bj1lBYUeGqsyuqD6UvZ4y1EJeduz76M8MJvN7iScp24WYNVdNKBxdEX8FFVTC0Fzc3B/Wf1755I523O5TSBxgs7jDO9buLwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740046108; c=relaxed/simple;
	bh=hKjATXyKQvv1McdvtRyxOrJ1QBY9gQvAVDuJEgo+cmU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p3a37kLubYPZnQ26+nhL6mbNPhPo4zHU1EDbotI0Lw3XvwYS/k+mADib76cXLGnfHWcO4EHoemryoYYKVMTqTTny4W5uzflD1y2Bus15U5CAKuYOfaF3sqE4pzL+mwrvbTlZD2ugguUMIxSwI66zB+Y3TYWTe5f73JmLPFKlcm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FwPxPics; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2fc1f410186so3192706a91.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740046106; x=1740650906; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/VlfjNAVucjRp1bpDBN6LbVxMwNg8iNsPGxdLh6LJhU=;
        b=FwPxPicsK0e5wdFXt7Gc2eOR5j/mkhJdJFNPBEC3Vl/MnoWBZTytHVif3R0oEw/asu
         JsNT6SX1rtVAv9FYuXLcOCzJMX3Fl/YBtaYomJww9N4F4jlHEst2lrk3nDPJIv1IxU8f
         ES3DUU4P1YgxBwJLAhi5bdl4uYw8nkJhDMM6rsm1a+HAiDI7x0d9qBSzlmiVX0gvSe4f
         4a6/cHW5sic8hIeDjgYIDwVKXtQPISioagxzG6ZvhASjpAIklIK57DZNveW0RqKN0IO9
         EB71ES48k/DYKz0P/nnMdJfjN2UoZv35OIojT/+qb0Z9Y6hNTg7bA+xRm/3JxrLcIkOp
         RH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740046106; x=1740650906;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/VlfjNAVucjRp1bpDBN6LbVxMwNg8iNsPGxdLh6LJhU=;
        b=ozgAiaUOILwBMuxtITQVVc8auN3Vi8AL0pVWFBNH5xU+AGvZ8RUTyKfzr6Rtc1mMqZ
         YmjgXoPBj7TTWGW7DaKJf0Z9JPo2hX5tDR92SRuUJaZ6w/8cS8aeLGnRKX0ladXGUogE
         jX4Sd4WJ6dUNyVGX1rRPZP1aAvFac8fyjGwPFOjwu/ljPNVZXITr4o0zAtOx31kARbB2
         JZXrAdhW5LM7ihdX/u9ko35pVkWQumkXIKArdcC5PHMWMGDxDWSQikdv7cy4TmR3Ec1D
         +Q0zdG8+TDdtRXWxZ9Jlgfhe97qd4y0zOJgUooQJULAoyOPQbA0+8kl1nJMQJMzDnNkF
         EH/w==
X-Forwarded-Encrypted: i=1; AJvYcCV9Gm5lj9RMkJ2p0gNjX40UeWzrsWc1Eb4drG851OYYc338W50i10G49oyoCkdSMKYLLYhHgNvmlRo7@vger.kernel.org
X-Gm-Message-State: AOJu0YyR9rVYAoT/ChH9iY5XuDFWBIsZLBSwHSS0bDB9j2xj3+HQ8lnx
	MZ1WM4lh9lcxUnQU8NpYFZ9SyoQEuBTIU/+n/CJW294c3cAimqlvtJ0GptNL1QE=
X-Gm-Gg: ASbGnctaGPq88vmR4uz/eES23xh2BK8L5HekWqtsmATwGmL/BnkhicBgEpkmuEYKNwu
	1E8eXI9a6WfiBzDJ95VRUr9yNvpPMFS7jHl6yvy6bmynaRCkhQUCArsfEvVBsXv2MMXO0CV6xZJ
	PPR1vNOoDSZQdbQRWad3sE+rlTcFf0iYuuOIiOFmAvWkprHD5e4hYi/SIkilw5UPzZFC90u8A9g
	lb7Hxiz2Tbnt5UuzacYxehPzssUhVKPpbILwnXY8XGqAT8mdrrIXbIUbi78hZSqQiDMF4LJdg3G
	DaMsVqxbYn9e
X-Google-Smtp-Source: AGHT+IFLxCMRudIcVvWorr4RKj/8cYBxLwu8tZJdzz6fVcUHM0ZcwncySmXk/oO/UFw1vBTAIhvBXQ==
X-Received: by 2002:a17:90b:3dc3:b0:2fa:1d9f:c80 with SMTP id 98e67ed59e1d1-2fcccc92715mr4602368a91.17.1740046106054;
        Thu, 20 Feb 2025 02:08:26 -0800 (PST)
Received: from [127.0.1.1] ([112.65.12.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fbf98b3305sm15304645a91.6.2025.02.20.02.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 02:08:25 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 20 Feb 2025 18:07:53 +0800
Subject: [PATCH v2 2/5] drm/msm/dsi: check DSC width for the bonded DSI
 case
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-dual-dsi-v2-2-6c0038d5a2ef@linaro.org>
References: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
In-Reply-To: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jun Nie <jun.nie@linaro.org>, 
 Jonathan Marek <jonathan@marek.ca>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740046076; l=3234;
 i=jun.nie@linaro.org; s=20240403; h=from:subject:message-id;
 bh=hKjATXyKQvv1McdvtRyxOrJ1QBY9gQvAVDuJEgo+cmU=;
 b=17pUwBv+mzfkMK56B94QuKGJ5abm9UfGVZw6OxOxzVqtsJOc1Qzti6XjMCs6YMZ6yjKN42pT3
 fcq4CIFTnJvCLNjFsk1NSHXjb+L9HGGWs7B7Fnq3c6PVYwCgXOTrJQV
X-Developer-Key: i=jun.nie@linaro.org; a=ed25519;
 pk=MNiBt/faLPvo+iJoP1hodyY2x6ozVXL8QMptmsKg3cc=

The frame width is validated to ensure it is a multiple of the DSC slice.
In the case of bonded DSI, the frame is divided horizontally in half for
compression and is delivered through two DSI interfaces. Therefore, the
width for each DSI interface should also be a multiple of the slice.
Currently, the implementation only validates this requirement against the
entire frame width. Use half of the frame width for validation.

Co-developed-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi.h         | 3 ++-
 drivers/gpu/drm/msm/dsi/dsi_host.c    | 6 +++++-
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 2 +-
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi.h b/drivers/gpu/drm/msm/dsi/dsi.h
index 87496db203d6c7582eadcb74e94eb56a219df292..35b90c462f637111159b204269ce908614a21586 100644
--- a/drivers/gpu/drm/msm/dsi/dsi.h
+++ b/drivers/gpu/drm/msm/dsi/dsi.h
@@ -79,7 +79,8 @@ int msm_dsi_host_power_off(struct mipi_dsi_host *host);
 int msm_dsi_host_set_display_mode(struct mipi_dsi_host *host,
 				  const struct drm_display_mode *mode);
 enum drm_mode_status msm_dsi_host_check_dsc(struct mipi_dsi_host *host,
-					    const struct drm_display_mode *mode);
+					    const struct drm_display_mode *mode,
+					    bool is_bonded_dsi);
 unsigned long msm_dsi_host_get_mode_flags(struct mipi_dsi_host *host);
 int msm_dsi_host_register(struct mipi_dsi_host *host);
 void msm_dsi_host_unregister(struct mipi_dsi_host *host);
diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index f59c4cd6bc8cdb31c1302f8e3ff395486c0b4898..908f5f1649d650f1cf152fc0b263541dc566ac68 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -2489,7 +2489,8 @@ int msm_dsi_host_set_display_mode(struct mipi_dsi_host *host,
 }
 
 enum drm_mode_status msm_dsi_host_check_dsc(struct mipi_dsi_host *host,
-					    const struct drm_display_mode *mode)
+					    const struct drm_display_mode *mode,
+					    bool is_bonded_dsi)
 {
 	struct msm_dsi_host *msm_host = to_msm_dsi_host(host);
 	struct drm_dsc_config *dsc = msm_host->dsc;
@@ -2499,6 +2500,9 @@ enum drm_mode_status msm_dsi_host_check_dsc(struct mipi_dsi_host *host,
 	if (!msm_host->dsc)
 		return MODE_OK;
 
+	if (is_bonded_dsi)
+		pic_width = mode->hdisplay / 2;
+
 	if (pic_width % dsc->slice_width) {
 		pr_err("DSI: pic_width %d has to be multiple of slice %d\n",
 		       pic_width, dsc->slice_width);
diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index b93205c034e4acc73d536deeddce6ebd694b4a80..be13bf682a9601484c9c14e8419563f37c2281ee 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -428,7 +428,7 @@ static enum drm_mode_status dsi_mgr_bridge_mode_valid(struct drm_bridge *bridge,
 			return MODE_ERROR;
 	}
 
-	return msm_dsi_host_check_dsc(host, mode);
+	return msm_dsi_host_check_dsc(host, mode, IS_BONDED_DSI());
 }
 
 static int dsi_mgr_bridge_attach(struct drm_bridge *bridge,

-- 
2.34.1


