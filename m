Return-Path: <devicetree+bounces-64470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0908B9719
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:04:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CAD8283561
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E73B51016;
	Thu,  2 May 2024 09:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="elXXJ7Qy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26C354646
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714640628; cv=none; b=h/JSVuwu19v3nWZK0hc+MzxDC/is2jjG72TnZi9vcXgTydyv2zLcp9AENIwYxlfgjNNZyJMnCycVpx9UeedrTiEdbYq04pp4HvuzbfJ+1hcLs5qP2KT8VGEfk0YN4f1q51J56EdzWpv7e78cbj++j7ty58kF7kVtcAdMVPPv6OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714640628; c=relaxed/simple;
	bh=4PGjFnYS1Tn3QA5kerObdvNBnqGr5E86ZSozMvjg5qo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pp5vVEcNUqloK0vVuK6VY1M5ObpqwQPp3xwPVqxez2DIn4C6k7YLbI/1+VfSLyJlu2Z4Ro1+Iw9Gcv1lhHKwEQVZvMcRiuBNkPtXLmq4GCzwfFBCLbqyIPVlnaNilM1Cot/ao5ibmAMmZVUZ00J3lmrv5rB1gGLwYUMIJmCvitg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=elXXJ7Qy; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1ec4b2400b6so23452935ad.3
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714640626; x=1715245426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mSBBp0xVAK2Nv+uiyQY9w2gt3jv+iQ6l4RIpa967w98=;
        b=elXXJ7Qyu6YM/wKVfPSJZcF3fSUj3tureIyd4bh4TX+s9rX/xL5LtN5h2AX66bgwJ0
         413QCuTowaQ4+yfY2MQiSIXM9KhcFJUYm8zSSVsfs9BXLn5BqgerSqSrXZenVOQ88nwU
         7zCewU3W6kIvqx2BBU0Amhw6x1bVs81w443qY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714640626; x=1715245426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mSBBp0xVAK2Nv+uiyQY9w2gt3jv+iQ6l4RIpa967w98=;
        b=eI8wFpcgqKhikHk8eRR+6CTan/1S8vt1k0P3jDFzVDE5rQMZv80xAR9JXCNnXtM5HB
         FAvh+M9z62oSlRo0eagnneiDiESNoTxV0j7SDmpMErDA9jshmOqcmsLCuXS/yrtJ8w+2
         ZueI87cj+IDAYtALyO2dKyfub5CSHXU41M6NjDcaa6h4aLYnwKXuV5Q9lXezP05WYMOq
         cuOmtkdY2xtw+CHEOwf2vNSOHQiflOGejj8SMNvQBE/AgQlexauSxsfU4CnmhifldqU+
         V3vFpKSCpQsPs8BtF0EtLWR5bTWk3WPqce3PngzfcTdG17iC1fMbK7ikNR4z2jSwm9jU
         vRLw==
X-Forwarded-Encrypted: i=1; AJvYcCXbwawMGMqnLdvDMr2T2N1qh1JJC59g7bS3/TYNdcu/Ez1eRIOSNFVQxRW6bLtFPu3mATcfo7dYYgu5DvnS9Ft2QTLO1UHckL5O0A==
X-Gm-Message-State: AOJu0YwclmDogezOX7riStSJkSK//u7JUn1w0+Do4KLP/27UfOuXtFoU
	BZBnfYOIegIu6PhM2miAnYQjCiHafF012dXB1OGHuSw6NxawZINgxgglJhcJYw==
X-Google-Smtp-Source: AGHT+IEBuAfvynb9BlBVviwdLBMz5FWVRR1coQ299RAg2o7gZQK05GKLeQOsAHksMZJ/R+wmVm710A==
X-Received: by 2002:a17:902:db01:b0:1e2:1df:449b with SMTP id m1-20020a170902db0100b001e201df449bmr1720490plx.69.1714640626252;
        Thu, 02 May 2024 02:03:46 -0700 (PDT)
Received: from yuanhsinte1.c.googlers.com (150.221.124.34.bc.googleusercontent.com. [34.124.221.150])
        by smtp.gmail.com with ESMTPSA id c17-20020a170902d49100b001ebd73f61fcsm764983plg.121.2024.05.02.02.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 02:03:45 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 02 May 2024 09:03:32 +0000
Subject: [PATCH 2/2] drm/bridge: anx7625: Change TDM setting accroding to
 dt property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240502-anx-tdm-v1-2-894a9f634f44@chromium.org>
References: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
In-Reply-To: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.12.4

For some SoCs, the TDM setting is not to shift the first audio data bit,
which is not the default setting of anx7625. In such cases, the TDM
setting should be changed according to the device tree property.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 8 ++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 29d91493b101a..538edddf313c9 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -1709,6 +1709,9 @@ static int anx7625_parse_dt(struct device *dev,
 	if (of_property_read_bool(np, "analogix,audio-enable"))
 		pdata->audio_en = 1;
 
+	if(!of_property_read_bool(np, "no-shift-audio-data"))
+		pdata->shift_audio_data = 1;
+
 	return 0;
 }
 
@@ -1866,6 +1869,11 @@ static int anx7625_audio_hw_params(struct device *dev, void *data,
 					   ~TDM_SLAVE_MODE,
 					   I2S_SLAVE_MODE);
 
+	if (!ctx->pdata.shift_audio_data)
+		ret |= anx7625_write_or(ctx, ctx->i2c.tx_p2_client,
+				       AUDIO_CONTROL_REGISTER,
+				       TDM_TIMING_MODE);
+
 	/* Word length */
 	switch (params->sample_width) {
 	case 16:
diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
index 39ed35d338363..41b395725913a 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.h
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
@@ -441,6 +441,7 @@ struct anx7625_platform_data {
 	u8 lane1_reg_data[DP_TX_SWING_REG_CNT];
 	u32 low_power_mode;
 	struct device_node *mipi_host_node;
+	int shift_audio_data;
 };
 
 struct anx7625_i2c_client {

-- 
2.45.0.rc1.225.g2a3ae87e7f-goog


