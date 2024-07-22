Return-Path: <devicetree+bounces-87177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F23FD938C02
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9BAF281A48
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CDD16B38E;
	Mon, 22 Jul 2024 09:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="aSB9LwDf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F8B16B397
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721640289; cv=none; b=hnHWD82xg8XaGEZNe9SXrhPdKi5+XZDHmIRx8tnAhRaDusIgIJrCFpMsDBxAbF3/MefLWFnqC3oDeH7CYld6wnlTykpihn4ShrNZnNULW3m3rOXwsd1wG2PmiyWTBIUcevCOjZHK2XVFLwBtpCJ4Qb8PYC9V/GhqCNAsN9YcOkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721640289; c=relaxed/simple;
	bh=FlP2wdxDnO64bsZkCAlgwvDDaTDtZXrhsF+LLRdKESk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=CU++Yoj1e+E8WSE0iRvQJ5I9VKqUBBLGcfc//nkdb57sOhRse0vyPZP5vd9R9EKlfW9RqizuMJqZv20aM6M8zmgLgxwC1qdbSNFWS/YtB0UYG0cbcQcfh4hnF5+uCkHTg2aysbl1G0pHRrA5FKO/7tckoXLAZmWtEM20C6aGFSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=aSB9LwDf; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-260f1664fdfso1791870fac.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 02:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721640287; x=1722245087; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TB89ZlKNnXu3g5oV+TfDlJrKIEZjcQAqTnoqfzrRSzQ=;
        b=aSB9LwDfNQcg0bYuwc2Z5VUzHexH2T4Eqig2SixVCrSO0w6zaHLEDaVfJAkD4PLsLL
         +u0DRGRVwPmMGPhMRlqbKLL9NRZuOyCYAJSpoDEcyc0Lh+gp4ANGxaiP+e+OMKhpk+KT
         xIpLHBUkz0ULVGyFFclEgV4KoWC+y0wTGp8LJR+4Z3a0i7F1hpNOH9wr89tvD4tTcGM0
         UA2gbYWhJ7JJ2Yip0UTEeLj5PkX10eIwjDb9T9bCAtEAUOMcEMqJbYj6JN8TDVQWPfsm
         bUl1/7DiufgfO3pNmUoS9ffbxgjkbJ0WLXXSnzNlE40OAIKPO5GQsLCLTRlin9e1tPzn
         a68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721640287; x=1722245087;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TB89ZlKNnXu3g5oV+TfDlJrKIEZjcQAqTnoqfzrRSzQ=;
        b=p54UGHzKMfPYaEEca15RA/tvZZuq2Q4cPET2o9IQMID7+Pxw5iVZwVqgcym8SkGRbg
         hCgKjOzKutA+kF0DeyJjkAJ88dl5gecFVZmoDaEMTcsmObSQ7e8cYAnMQj+GF3vPcsc3
         wQPcq4AgCU7b96g2L2yxB8abHjpwGIAoeg78qvtIfMiug93EVIWxP8r8+ZHtznFXC/Wq
         SnbuTSOTeBOJWzYPjvOWdRpOX+9wg9X+iWDZ9HWuZLL8znwigrbQxqpWr0lJjs/PFnhP
         uEQ/TSmyaG+pwnOEsWZCCUJvha9NqRdhB/5qZuP60PTgrjcFvWstzzdSvg7S8GPycXLo
         507g==
X-Forwarded-Encrypted: i=1; AJvYcCUxuusn5uZF/3EvZpsWktlJe3YmB8/yXJZxuI6D3i/WODCoX9vTScEcdt0hh230dQnX39Bd6OLvEzXq/Zn4KgS8+HF567EtClLNWg==
X-Gm-Message-State: AOJu0YwUzQqtZDGDlgW0NpGGLMTEXqybargEOFhGkppLTBF68LkAuN8V
	Kn507DGE8+xqK2DvChW3x/P6stj+Aa4un1yj2Nm/uujEk4+v5Y63KIWc/nr6z4g=
X-Google-Smtp-Source: AGHT+IFfThZoo9NFJtDQgeJWtBACTXjfL99jN1cVv6gplQuuD4LIHLvJVra5GuCL4Hfsc/oHk1k2mg==
X-Received: by 2002:a05:6870:4714:b0:261:fd5:aa34 with SMTP id 586e51a60fabf-263ab54f89amr3032889fac.30.1721640287279;
        Mon, 22 Jul 2024 02:24:47 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70d26efe61dsm1639901b3a.149.2024.07.22.02.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 02:24:46 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/2] drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters
Date: Mon, 22 Jul 2024 17:24:27 +0800
Message-Id: <20240722092428.24499-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current driver can only obtain the porch parameters
of boe-th101mb31ig002. Modify it to obtain the porch
parameters of the panel currently being used.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V3 and V2:
-  1. No changes.
v2: https://lore.kernel.org/all/20240716121112.14435-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1. No changes, Modify the commit information format.
v1: https://lore.kernel.org/all/20240715031845.6687-2-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index b55cf80c5522..d4e4abd103bb 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -312,15 +312,14 @@ static int boe_th101mb31ig002_get_modes(struct drm_panel *panel,
 	struct boe_th101mb31ig002 *ctx = container_of(panel,
 						      struct boe_th101mb31ig002,
 						      panel);
+	const struct drm_display_mode *desc_mode = ctx->desc->modes;
 	struct drm_display_mode *mode;
 
-	mode = drm_mode_duplicate(connector->dev,
-				  &boe_th101mb31ig002_default_mode);
+	mode = drm_mode_duplicate(connector->dev, desc_mode);
 	if (!mode) {
 		dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
-			boe_th101mb31ig002_default_mode.hdisplay,
-			boe_th101mb31ig002_default_mode.vdisplay,
-			drm_mode_vrefresh(&boe_th101mb31ig002_default_mode));
+			desc_mode->hdisplay, desc_mode->vdisplay,
+			drm_mode_vrefresh(desc_mode));
 		return -ENOMEM;
 	}
 
-- 
2.17.1


