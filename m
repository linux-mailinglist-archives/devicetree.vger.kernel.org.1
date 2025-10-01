Return-Path: <devicetree+bounces-223053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC6BB09A6
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 253AF7B07C1
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C47C23043C5;
	Wed,  1 Oct 2025 14:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q7HLYlNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41343043B3
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759327280; cv=none; b=tUKC9DxPuhf+dKWfVymmPSYRx+jP/OmFDQO+AJ8/H3uxITEBUKT5FqHRbINWoMOgWjGP6Du9wHJD0RcI1zNUFjvbHLh4TJMpWHIeqjV52xsbj1P6O+mWHgu1YHf3apSIvWetbd+Kx0JMCDNNTY8+5Fi1D/YqU+0lTq2dM+vMNiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759327280; c=relaxed/simple;
	bh=iFoDKGEqMBtBJk9VDF0RT1YA/LVK+0RXAMU5TYBYIbU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VR1ugFkYglzhvAkU356F129pYfXvaBPI01b3IuK3k2XYjFgsD7s/62FdkuQqahtQBMk8OGs1piwehZVoKueVMWVhPRBWTT1zHEX8Bmg12J30HqP+3oaYwRBrqSgk48uLwZIJmHlKohJ9DDID/0vjLHU3JIZtwTy09AZ5mV4PlPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q7HLYlNC; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-46e42deffa8so66019615e9.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759327276; x=1759932076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r88bVkU6R3YFAsO3wz4+pTX+MHJI0oI//rtTqu0aO6E=;
        b=Q7HLYlNCyq1vStuweotD7DYBrzuSViFE67I0aEAHAAdExTPDJBUFKPtmgKVtvJOWXt
         PhEvrWU40prIcuzBScHN871J/Ufaveu4RCni/JmO94tgA5JfubJv3kNR+5oTiQupPuzN
         AJX0JGRvQqSC/zzTY2s70HgcmILYmvsecAb5Ek4TiSKPO+9QG5HWYiYxrAdaaE/W2Smh
         HUNR/UOOOB4OkDB1C8FLsDNkpasTo0U4oBCflxaD54IskTwde+jbo1D9qs/ES1JjbbFY
         zz/xbxC5/ap9iXH/sNf3lsNxKvXcFdQRt1gL28sDmOB0mYGTeMsCCX01fo4kyqlL2NG5
         StnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759327276; x=1759932076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r88bVkU6R3YFAsO3wz4+pTX+MHJI0oI//rtTqu0aO6E=;
        b=qnyOuHzpRceZZWUptVn+xuToKDcVvthjskOPungGHlEcQ2jMLsr1qy0QCpmy8hMqew
         k7RdwtHO1bel+QPNv272uLP0ja9FaQkQJxaVQcbs/7/shppu4cV6JcEn+TXyWFYmf7hx
         mJFELbcgwWjdpt4HCWHBClAjf8EnM71Q/I6ZykNIlQ5gLNjxzOYlOCqZJKmcMJ8Puqf/
         yrTtMYNAxJs6zEgucZAJHviCMUrnvvlKiRrqZ3+1+e8FrrerM7lxzsIIVtrASn88Enpa
         LT6npouhXgnHhkSniElhZPZmnoV6g2xnwzxRXo2vzzizSodRxtartaxHWXhjkfVlnm0j
         ikEg==
X-Forwarded-Encrypted: i=1; AJvYcCU3iJMl5IFzbIgHJNsCnY8jXqpe0pRrTCA0MM2i/sv0317PxsU5yqyt8SJPZ/bVwFMc1DOhSD1BHRPn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2Em3z+6T/vodIbXdJ9GKtzFIxacAxn6mZouwTAp2VM466x+NS
	CTyMAlc9cTbuaaQQUjBVvOsJGZ+ea152IDjvgw8d4YTTI7oCDhUZWOJx
X-Gm-Gg: ASbGncvJla2SN8qvtZL6BgPeloyL21g/s545rKT7Z+3ZBR85s9DzfGAh1N1Zmklbq0z
	J1ypRZpgIca9J0kR/hBwcyv3No0FORr6OXPWdp1oocGriltRyeHFVcmT0R8TUCH1Plcur4oWolN
	xUUQxyzsH6PlMvPSQg+z568Zrwx2Q59Jvos9UsBgHGn5WbTesjvUnzQF+iOhDVyZ9EL3eDj3htd
	ZuWIxSOHO5CDjM3/q/We+CowWBk+qRG6v3dKiDvNXwjnVmji/GvbdjFOUgy4dtkxylXMCXPvs1V
	P2StGzCstksiCGiLjjud7UbesUUGxrLTrUtjIMlukDcve8+pu9ACBhakHtG4mNMx93P242mgsSf
	+HcQeALCdPjG0E775ryudJrljNSwWb0jyIAjJ7TPxQHd6gvjO9anJFoFxmurz/vBpAH9CnMD0ya
	qiXFgBUUHEQ3QxpU0s0ebK17WSmT2LpIFKM6Ucw/LLuYuRozknEeYKlA==
X-Google-Smtp-Source: AGHT+IF6jIPdEU9MFXPhCPUkqzhyaWrP5uY2bhk5OwNgz8t2vPUiheyA7QIaNPR9raR1Aa2Qrunkyg==
X-Received: by 2002:a05:600c:4e4a:b0:45b:9a46:69e9 with SMTP id 5b1f17b1804b1-46e612de19dmr34857695e9.31.1759327274375;
        Wed, 01 Oct 2025 07:01:14 -0700 (PDT)
Received: from LAPTOP-AMJDAUEJ.soton.ac.uk (globalprotect-nat-extbord.soton.ac.uk. [152.78.0.24])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb89065b5sm27029828f8f.17.2025.10.01.07.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:01:14 -0700 (PDT)
From: Junjie Cao <caojunjie650@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Antonino Maniscalco <antomani103@gmail.com>,
	Jonathan Marek <jonathan@marek.ca>,
	Eugene Lepshy <fekz115@gmail.com>,
	Jun Nie <jun.nie@linaro.org>
Cc: Junjie Cao <caojunjie650@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 2/3] drm/msm/dsi: support DSC configurations with slice_per_pkt > 1
Date: Wed,  1 Oct 2025 21:59:13 +0800
Message-ID: <20251001135914.13754-3-caojunjie650@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251001135914.13754-1-caojunjie650@gmail.com>
References: <20251001135914.13754-1-caojunjie650@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jun Nie <jun.nie@linaro.org>

Some panels support multiple slice to be sent in a single DSC packet. And
this feature is a must for specific panels, such as JDI LPM026M648C. Add a
dsc_slice_per_pkt member into struct mipi_dsi_device and support the
feature in msm mdss driver.

Co-developed-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jun Nie <jun.nie@linaro.org>
Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
---
 drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
 include/drm/drm_mipi_dsi.h         |  2 ++
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index e0de545d4077..773ce8520698 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -166,6 +166,7 @@ struct msm_dsi_host {
 
 	struct drm_display_mode *mode;
 	struct drm_dsc_config *dsc;
+	unsigned int dsc_slice_per_pkt;
 
 	/* connected device info */
 	unsigned int channel;
@@ -910,17 +911,10 @@ static void dsi_update_dsc_timing(struct msm_dsi_host *msm_host, bool is_cmd_mod
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
@@ -1069,12 +1063,8 @@ static void dsi_timing_setup(struct msm_dsi_host *msm_host, bool is_bonded_dsi)
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
@@ -1683,8 +1673,13 @@ static int dsi_host_attach(struct mipi_dsi_host *host,
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
index 3aba7b380c8d..2ddec7931bd0 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -180,6 +180,7 @@ struct mipi_dsi_device_info {
  * be set to the real limits of the hardware, zero is only accepted for
  * legacy drivers
  * @dsc: panel/bridge DSC pps payload to be sent
+ * @dsc_slice_per_pkt: number of DSC slices to be sent as in a single packet
  */
 struct mipi_dsi_device {
 	struct mipi_dsi_host *host;
@@ -194,6 +195,7 @@ struct mipi_dsi_device {
 	unsigned long hs_rate;
 	unsigned long lp_rate;
 	struct drm_dsc_config *dsc;
+	unsigned int dsc_slice_per_pkt;
 };
 
 /**
-- 
2.48.1


