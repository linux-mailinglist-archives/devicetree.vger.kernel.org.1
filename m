Return-Path: <devicetree+bounces-48263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEAF871254
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 02:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 630AE28200F
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 01:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CAE5125CC;
	Tue,  5 Mar 2024 01:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="cifhY5Eh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795E3125BA
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 01:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709601979; cv=none; b=VmJFYE9qexoED1nJ0VG8jMYQ+hcUKj/QaA5XwMDdLKpIAcjmL0y++mbBlV5dkRnHR/2/IyrRB2f5bf0iDLdCfsm8IEdYIlkCHIGmmKmkLqpGVUPlQM6J1ha5KswIS0zu7jQR0YcNs1XueacGFgCe1tuJIqz+UE5NCFMPWd60NuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709601979; c=relaxed/simple;
	bh=v6v9rdi0NaBtdH5uaFls6ao7F7yFXQTD+dGYq5SNjCo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Jcw9ZCWij4eEko27l8inG30gFZebbowQ81dtIRD9o6QsmBGLOpBmPYhu4Kn0XF898CF1x4uqVXzzfjTU3TF3yJI6gHB8z7yCq/ZhQXkok+k3JGoSBSe4sdVwJcnUe1K3km9kjg7hnr53qEV2X+kPjM3S7eNyCutSK1Fy7GGIE7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=cifhY5Eh; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-22007fe465bso3075826fac.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 17:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1709601976; x=1710206776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FCqXLrmsXLG2D4x9zpckaAUzUAFfK9PrDtc1e9Xqif0=;
        b=cifhY5EhNytLhBzxgk30+L6CSa5cj7d6FofP+C2wGnPlhaA+AgGbm3kqRkUTQ6fCK5
         bSoYCv7BIcgbg3fSVatw2sIaB9rf4DmXmz7RDVETD4/QwYDzgPrH0nD5Sqw+ddPaIKPx
         EeVpfn/GHTimTOCIrnv0A6i6uXV8dJdtwoqj47HW/ixcBwma3ca1H7Y0Wu+KZpP2MEEE
         boyxMYyRWBfi5VGjkLg5OwOsgLRPsW5Xuucrb6f2wuGj95UcH4KG4ds+yoQWptmWqDGN
         yVPCdkE/oAHYYwM3ZmBQ8leHLNHB0gM8xxD2sSA/fxdKbGnYD+4QxSYHDZQZ8hDdZ0li
         VgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709601976; x=1710206776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCqXLrmsXLG2D4x9zpckaAUzUAFfK9PrDtc1e9Xqif0=;
        b=nKvGPULMVxDgeqq6+LFizh9Kb0uIF3OQ1UCB22T6MdO+OjC5rcr3PEFwvgucGpAzYL
         wkvIQjMp0Ve9zIXLTMPw5nzoK26fonBAOc44H2pBtPIWMF5m7N3HeufMWZ/llkjgxuHy
         tyCvj+LHwD45PSGUzU7OrpXbPK8FjfRq5dg2H+RPCKnuXUy/CfIuvsxlE+KqBwro/F9U
         UYr+YACFTnW2aHGuxJ0O8jVE2vFFv2H6PPa4MVTfOHZBBGgv4MTMip5wAOmMFgs4Xr7e
         3EtNjm2Nl2LrTUdeZ+6+ym8DIdcQLgCIFHW4gC/Kc0vV8tuCWLtxzqcJhymBYy8b0fJF
         +Dgw==
X-Forwarded-Encrypted: i=1; AJvYcCU1cRscK4WvVYHZ6YH/t95cNYoUtRNz9POY+pjJ4So3LuE1UQnBEuyO99WGmLSVm/0ifljWZc4BZSdbkr36qeJ+arMm+iifjJ0N1Q==
X-Gm-Message-State: AOJu0Yzz4VguRWiAlrGzwX82KH5pmyEtCrjrqZ/N5LrFR3QO6mDf0AMy
	RaYVBeAYmjMBeWtBzjoxFNlHmP2zr3PxjLDM72WPLWDEeTwKRPw33Cx2bMRe/mo=
X-Google-Smtp-Source: AGHT+IHyQxOyfE25xAVDnFGbiegMVyflG/2eJe8BkB+GsFEu5dvJBtmADvmtxwigO1e3MzoCQL1vWw==
X-Received: by 2002:a05:6870:6c12:b0:220:c885:b817 with SMTP id na18-20020a0568706c1200b00220c885b817mr495468oab.10.1709601976584;
        Mon, 04 Mar 2024 17:26:16 -0800 (PST)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id ka16-20020a056a00939000b006e559c41679sm94655pfb.2.2024.03.04.17.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 17:26:15 -0800 (PST)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	hsinyi@chromium.org,
	swboyd@chromium.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH V2] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02 panel HFP and HBP (again)
Date: Tue,  5 Mar 2024 09:26:04 +0800
Message-Id: <20240305012604.3869593-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current measured frame rate is 59.95Hz, which does not meet the
requirements of touch-stylus and stylus cannot work normally. After
adjustment, the actual measurement is 60.001Hz. Now this panel looks
like it's only used by me on the MTK platform, so let's change this
set of parameters.

Fixes: cea7008190ad ("drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02 panel HFP and HBP")
Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index bc08814954f9..0ffe8f8c01de 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -1768,11 +1768,11 @@ static const struct panel_desc starry_qfh032011_53g_desc = {
 };
 
 static const struct drm_display_mode starry_himax83102_j02_default_mode = {
-	.clock = 162850,
+	.clock = 162680,
 	.hdisplay = 1200,
-	.hsync_start = 1200 + 50,
-	.hsync_end = 1200 + 50 + 20,
-	.htotal = 1200 + 50 + 20 + 50,
+	.hsync_start = 1200 + 60,
+	.hsync_end = 1200 + 60 + 20,
+	.htotal = 1200 + 60 + 20 + 40,
 	.vdisplay = 1920,
 	.vsync_start = 1920 + 116,
 	.vsync_end = 1920 + 116 + 8,
-- 
2.25.1


