Return-Path: <devicetree+bounces-148780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 304E4A3D61B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:09:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E79C218997B6
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA17B1F03E6;
	Thu, 20 Feb 2025 10:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k045eu8B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6331EF0B4
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740046118; cv=none; b=rDjWlFbeJ4Lt4A+0YYHBAxsGLqwaQOn3iAgmEHBYWz5BWsPYKZXq5fjBE7fEOfx3Pq6Qj//VR4yp3t76uDd7uQjugb4tBE52IhMUUzkt9rUrX3KSQs1LCXKqKPp6GgKefi2R8AogxE2KnU73sd+q7nYaIwgGenI6n5fKD1G9n/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740046118; c=relaxed/simple;
	bh=y1LcRbi9IxHrfqru+iB9M02tuGxZS/RP9o/BqRSO94c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hmnAQMj2expncJ35MxDDXO4qI2kYmSCF+F7LpVW9yJ92Ma9Z6NnSALtXhz2Tav/5hbE9+sXCfbm4aAJoiyLSeDuSzbkjfcUsjBzetlUK/NkmQGJzmb6yHZB68l3dlEccd7PqOUzqyD6eGLY0jUJeOYOEzh1j1ZsjwWnojVNouyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k045eu8B; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2fc4418c0e1so3159517a91.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740046116; x=1740650916; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kSkCVd5LUxAUyX9NrstLbvjZXotPNfmdtqi1iMTXbDI=;
        b=k045eu8B0TaKk9Yfs7uGbKxMCmY9cuxYL1T9ivJ8lpTJLtRbqXM4rB3g1034hljOA2
         7bISprDyeCz7EyR3sp0nGHdXMpj9yr/8mWG+NaB64U9HQUfOe6vmb+o/LP4XK7G0xesX
         yTMgtULpQmo2d5tuw+W/eyHUyMvUZFdIeuxlPw2GGmPzBuNzFpsXItTq1RR50Ne3SyjR
         80yskdW6rGxU8KsfsOVPm7c7jqvnMtkzl9o+g7Not5pb0/GXbHC3Efkcdh2URHW5iXQ+
         B+dwlwZVPQE/rG5ZL5fa8O7eOW1w7dhSt0UK1H5+emk5TDPEJDcTYDoQRCSLlKDlFtfj
         2y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740046116; x=1740650916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kSkCVd5LUxAUyX9NrstLbvjZXotPNfmdtqi1iMTXbDI=;
        b=Yvu0/oKb737Vc7E/R5m8y6KQv2t7V8iWDp2DnlYEgpCJ1v1FsGzpz5yW0sgSgrZvAe
         GjrLQidVOmuPAM/GnDx/VbCtgPdpXm2oS4Ap5ACj3bab321XDzY3FkH0UYCGGlWIt/FG
         ImO/Lg8bx/MWHvcLSkp58dtni8E5XVUfpt9ItU7RfQJk4OCqMXkPXWtviNnIp4ZCv0I7
         5QohmEe8mopLIa2F53/DJc5Se3CowHR8kxgngyR+dtr9S1KUHx5S+P2zMEXgQYvPp9aM
         7I13yF7TPsPWTiYK2OZKeSUWLByEtas/EsA7IijeRCYOp5gaByrs+5vXsrKDPd5MJZKP
         kJfg==
X-Forwarded-Encrypted: i=1; AJvYcCVefvhCHP7b/defnb5gK22MLSCq/aKhzCmqDilS9/WKfLMnQM7Qxt5TzmANTwof499E5lyIi2t8bS/y@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa1Bc0RYJni1CoXFQgupRUviS9HSVXHaTfGKv8cIaE/hF6tQIU
	R3unSnTEz0opeLw6ntUh3xVDhlMijaATUkrwXebs2ZZYKNL8M67TxygNm/J3mYI=
X-Gm-Gg: ASbGnctqkkGqYeN4Fplzia45h/tDu+WdQpxaT/FlgW/86ribq+q5MmMl2lISGIYLI5p
	xqUln5cTiUwOx0p7gbRiuqb0wjnCz+s1290Z04JOcbX1nhrA+TBXEMWALT+0upHzqycAK+rP8gI
	xNGbYHQRhg24VTtAnG6u8B3p5/uG7WbQjpiqewlEEGH3B1WlvquzvhG5yMUqYNBhuEcbhPDViWG
	QRyRHfbanugL5cwTokXiOc1/g4oedzfUFwBPdgQPR4Vwy7IwqHu+/a0thR3uMiNw+gVtqO/NF9X
	Z9VToDa11RzO
X-Google-Smtp-Source: AGHT+IFzj/xwznLXRFqC+C83ybLhwwV/mxtSKzwSxHqW0v9brMeQgIoHXZpn1wk268OK+8d2OehMSQ==
X-Received: by 2002:a17:90b:53c3:b0:2fa:176e:9705 with SMTP id 98e67ed59e1d1-2fccc15a991mr4563107a91.10.1740046116545;
        Thu, 20 Feb 2025 02:08:36 -0800 (PST)
Received: from [127.0.1.1] ([112.65.12.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fbf98b3305sm15304645a91.6.2025.02.20.02.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 02:08:36 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 20 Feb 2025 18:07:54 +0800
Subject: [PATCH v2 3/5] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-dual-dsi-v2-3-6c0038d5a2ef@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740046076; l=3811;
 i=jun.nie@linaro.org; s=20240403; h=from:subject:message-id;
 bh=y1LcRbi9IxHrfqru+iB9M02tuGxZS/RP9o/BqRSO94c=;
 b=TVJ9dgwDkjUei05ilR8Ttmo9k48qbl/iKLv9heTWcvdJszQRCDBhXNhMOY0Rso7yLwJ9duJDH
 6SBsBVj86DqBMWnnRbNoG0v/GSpzE6JXH7I+dJT2rlUh04eyxEXvZxK
X-Developer-Key: i=jun.nie@linaro.org; a=ed25519;
 pk=MNiBt/faLPvo+iJoP1hodyY2x6ozVXL8QMptmsKg3cc=

Some panels support multiple slice to be sent in a single DSC packet. And
this feature is a must for specific panels, such as JDI LPM026M648C. Add a
dsc_slice_per_pkt member into struct mipi_dsi_device and support the
feature in msm mdss driver.

Co-developed-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
 include/drm/drm_mipi_dsi.h         |  2 ++
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index 908f5f1649d650f1cf152fc0b263541dc566ac68..976c5d82a2efa0fc51657b8534675890be7c33a6 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -157,6 +157,7 @@ struct msm_dsi_host {
 
 	struct drm_display_mode *mode;
 	struct drm_dsc_config *dsc;
+	unsigned int dsc_slice_per_pkt;
 
 	/* connected device info */
 	unsigned int channel;
@@ -861,17 +862,10 @@ static void dsi_update_dsc_timing(struct msm_dsi_host *msm_host, bool is_cmd_mod
 	slice_per_intf = dsc->slice_count;
 
 	total_bytes_per_intf = dsc->slice_chunk_size * slice_per_intf;
-	bytes_per_pkt = dsc->slice_chunk_size; /* * slice_per_pkt; */
+	bytes_per_pkt = dsc->slice_chunk_size * msm_host->dsc_slice_per_pkt;
 
 	eol_byte_num = total_bytes_per_intf % 3;
-
-	/*
-	 * Typically, pkt_per_line = slice_per_intf * slice_per_pkt.
-	 *
-	 * Since the current driver only supports slice_per_pkt = 1,
-	 * pkt_per_line will be equal to slice per intf for now.
-	 */
-	pkt_per_line = slice_per_intf;
+	pkt_per_line = slice_per_intf / msm_host->dsc_slice_per_pkt;
 
 	if (is_cmd_mode) /* packet data type */
 		reg = DSI_COMMAND_COMPRESSION_MODE_CTRL_STREAM0_DATATYPE(MIPI_DSI_DCS_LONG_WRITE);
@@ -1020,12 +1014,8 @@ static void dsi_timing_setup(struct msm_dsi_host *msm_host, bool is_bonded_dsi)
 		else
 			/*
 			 * When DSC is enabled, WC = slice_chunk_size * slice_per_pkt + 1.
-			 * Currently, the driver only supports default value of slice_per_pkt = 1
-			 *
-			 * TODO: Expand mipi_dsi_device struct to hold slice_per_pkt info
-			 *       and adjust DSC math to account for slice_per_pkt.
 			 */
-			wc = msm_host->dsc->slice_chunk_size + 1;
+			wc = msm_host->dsc->slice_chunk_size * msm_host->dsc_slice_per_pkt + 1;
 
 		dsi_write(msm_host, REG_DSI_CMD_MDP_STREAM0_CTRL,
 			DSI_CMD_MDP_STREAM0_CTRL_WORD_COUNT(wc) |
@@ -1630,8 +1620,13 @@ static int dsi_host_attach(struct mipi_dsi_host *host,
 	msm_host->lanes = dsi->lanes;
 	msm_host->format = dsi->format;
 	msm_host->mode_flags = dsi->mode_flags;
-	if (dsi->dsc)
+	if (dsi->dsc) {
 		msm_host->dsc = dsi->dsc;
+		msm_host->dsc_slice_per_pkt = dsi->dsc_slice_per_pkt;
+		/* for backwards compatibility, assume 1 if not set */
+		if (!msm_host->dsc_slice_per_pkt)
+			msm_host->dsc_slice_per_pkt = 1;
+	}
 
 	ret = dsi_dev_attach(msm_host->pdev);
 	if (ret)
diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index 94400a78031f1b5f515c4a1519f604c0df7f3e0c..f13ed73b54b0af6d93456f4b8c8257c4f8419023 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -182,6 +182,7 @@ struct mipi_dsi_device_info {
  * be set to the real limits of the hardware, zero is only accepted for
  * legacy drivers
  * @dsc: panel/bridge DSC pps payload to be sent
+ * @dsc_slice_per_pkt: number of DSC slices to be sent as in a single packet
  */
 struct mipi_dsi_device {
 	struct mipi_dsi_host *host;
@@ -196,6 +197,7 @@ struct mipi_dsi_device {
 	unsigned long hs_rate;
 	unsigned long lp_rate;
 	struct drm_dsc_config *dsc;
+	unsigned int dsc_slice_per_pkt;
 };
 
 /**

-- 
2.34.1


