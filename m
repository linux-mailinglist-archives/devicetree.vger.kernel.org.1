Return-Path: <devicetree+bounces-220792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20915B9A786
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:08:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EC4414E0664
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED0130BB87;
	Wed, 24 Sep 2025 15:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kgt+g+y1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB7E30B522
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726517; cv=none; b=BVwCY/dGJ9I6PL0H2wMiGfts7D4qwj+lzM+nnsaQV7XXsBphdaD9fAiEvzG0nl1WwhhHXLQlPPyZ9d3a3vEMjyhRxkgIcoP37kvHKgDUe+wKcC4dx7Yn3j40dXF2YzuCXUWthfQ0EnhL0zPIwDPh1VoGLrD12TpATmEVem05yv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726517; c=relaxed/simple;
	bh=PTADnA0LADRWGW6ihK0MzVzHyCbS7FLm6geROUlYFeE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=StM0V2Wha9fBWqiNRUY4RJ4o58A4bn+qx13AGSjuD8RB54U+mAAIoDEUPBqn+0BJTUh/g85YLlZ3FJNb35maqodT9eF2eP99wllbPuaeptf2Wf+rFsl/wCYouNVhgcyRboJWDFyACK0UiRG5uUeiOfsOcldPa0umL8ojZYfMlxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kgt+g+y1; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b5515eaefceso5435018a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758726515; x=1759331315; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+m5vlhNwunXS3NJ6FmDWyfCPUSXUtwy+/7tRflWyDU=;
        b=Kgt+g+y1ew1nE2FhjHDP1/SbRn52z2SCBYPgmBAl/idMuWXNtS91vt1aw1svT6vpPl
         oKd4heW0CssB0Fcs3sm+yYg04TvZ5MOl914ewKky46Jl82P0M9+x7O/NHJcxh7R0xZNY
         1eComMG8aQaOXvU+5CigCTHKOodXPQbyW/iBbtwGrMO7jhUCYl3GdBUp88bUhLRQxbAg
         3tLOhMLCGzgIRrD7GC0BYsa1pKNtNa4Ivk4yZJCULdPkLY5PLUDHs3LYyPq3KH+58qV3
         IsWKwu1MyhqzKrFHggiHOPgGQwussiwIaSc9bpTX7ao3LF+D/cKxqDtUuSIjd4S7vjOb
         kgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726515; x=1759331315;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B+m5vlhNwunXS3NJ6FmDWyfCPUSXUtwy+/7tRflWyDU=;
        b=iL5skRn87kNC2KxxE/N0fMVqkbfHqQ8dqxWihxfW/efjGgC57z+AGiLMIEIdpxQyKJ
         qnoFoDoNKTrM9JlcEKTbjj4XqAYT8/KhJehATZSZr/M14bg0USA/srUTKwm960oK9k+0
         z9TLrVNOWy2PoQER6Se6BMhspsTR4UO8vvT4D0ssivSXXhcwg83/jR7rf2z20aelk+El
         jlPlBMGj+00q92gDZWmIvDqXeplS405QsejPDnIqM71njuNa+axdgHkPCFLfGLU8c/P8
         NoG+XmdFgswobUX1BKmIIKfKRSmRpAD0UbtAHvrwENmNAQe/rtTQZUoIvmSxDMSpKcRW
         zCVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfVaVJ6DNnJXlZH3OM4eIoFPf2rH16Op4LKdX2KLNh46BV65b20D0TFz6+t+HeaksmUbcrl9zXHd43@vger.kernel.org
X-Gm-Message-State: AOJu0YzMosArG3o15Dmf+VVnU/EPP0oWKEc+j+3Hv0uGCgcea/3N+ojA
	9DK3cbRVo2JYfwxerZBny00sueiiWXSqcr3gyW8+tSsbBzLwJroYP/hltLIo4FIcFUY=
X-Gm-Gg: ASbGncvLv2klBZTkJYRZEAFtEnSEv1OtnXEQnGqmHtHntplsMuDNeo5rGTODTRxsA0K
	trKxYCUEzfquBhX3UyyVlKZkJ8FXDtArs+fa6uaChiCu8K2gHeJ/XMve9BYfs3jrpPS9Y9deCCD
	1MmbJiWcyze597yYmss4Gqhdq/Fo3jqcERNMgeKBz43NxphXQSWDPLvqsZYCmANOPdMNOWPcdxD
	eP6F8gja4Qtr3/5ahCSd/XOm1WEOvfDuets1OKYttipp/zem+r73rqnKn2xl2CidVFlDODySrTa
	MW1sHH1qRgUv1+ORepSFLyTMli4yyXIdp+k+CPFuGLdCdyKYotWjZFDi15Ew9RLDX9Vgm1cEm/H
	kEyOkzqshXk05wBLO
X-Google-Smtp-Source: AGHT+IFiyjrTclsNn9tPuvEEVJ9Cj7y7SUK7Sjpx8qt64CmQ70ylZm8IikptBEeoSu7N0IEZVVDOqQ==
X-Received: by 2002:a17:903:1a85:b0:273:31fb:a86d with SMTP id d9443c01a7336-27ed4a4929amr602205ad.48.1758726514821;
        Wed, 24 Sep 2025 08:08:34 -0700 (PDT)
Received: from [127.0.1.1] ([112.64.61.5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26b59d6538bsm158717445ad.82.2025.09.24.08.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:08:34 -0700 (PDT)
From: Jun Nie <jun.nie@linaro.org>
Date: Wed, 24 Sep 2025 23:08:10 +0800
Subject: [PATCH v3 1/3] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-dsi-dual-panel-upstream-v3-1-6927284f1098@linaro.org>
References: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
In-Reply-To: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, 
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758726499; l=3811;
 i=jun.nie@linaro.org; s=20240403; h=from:subject:message-id;
 bh=PTADnA0LADRWGW6ihK0MzVzHyCbS7FLm6geROUlYFeE=;
 b=9s1hagBRl2nfojsoIc6t6lqJydaDeozos2jpTYSSwNCUNLBec91ZvR3LGnrNT6lUKs4WYT/LZ
 a20IkJSHHkVBu8BCcLR3NOHM6tq4Wvzn2IMIkZ+TjdI+cFbNqlSdun+
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
index f297e3de8c3dc4e1326e70c78c046b5a19568cef..de51cb02f267205320c5a94fc4188413e05907e6 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -157,6 +157,7 @@ struct msm_dsi_host {
 
 	struct drm_display_mode *mode;
 	struct drm_dsc_config *dsc;
+	unsigned int dsc_slice_per_pkt;
 
 	/* connected device info */
 	unsigned int channel;
@@ -849,17 +850,10 @@ static void dsi_update_dsc_timing(struct msm_dsi_host *msm_host, bool is_cmd_mod
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
@@ -1008,12 +1002,8 @@ static void dsi_timing_setup(struct msm_dsi_host *msm_host, bool is_bonded_dsi)
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
@@ -1623,8 +1613,13 @@ static int dsi_host_attach(struct mipi_dsi_host *host,
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
index 6d2c08e8110151a97620389197f1ef79c058329d..5a85ba01f402a3866b70828391bb417bb8dd5956 100644
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


