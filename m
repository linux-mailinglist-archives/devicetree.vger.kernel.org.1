Return-Path: <devicetree+bounces-105837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E62A1988196
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 11:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C30171F20D4A
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 09:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1411BB69D;
	Fri, 27 Sep 2024 09:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="qiGcnj7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826B841C63
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 09:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727430236; cv=none; b=J8YnZlMMH4rKviRTW0bAm2Z5QRxWBm9r9U7VBuIE47VzLYGxFAK4vmkxIYA+n9vCrLfGDncKve0NRQxZv9xxX9ypOruP67Ni9FwglzuhndZDC3StNr1xnFYl+0ZdXlmYzsQdOhFuDGPLHhl8RZ2pSpwP1s31HEtsh4m7+QYuCg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727430236; c=relaxed/simple;
	bh=SZ/WjC1lIsk4JRRqJ7vEbvQWyYdy8NWTG6kVixPdzTM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=LEjO3d7BtZkWTzLk4frvXcTS0Z5+6wDSGE/YVnJo/q85/Hv5Ued5txkCpGHorIGBI8lLwwQ+2Qfev29ix9PT4Y1JOHuvXpor84gnBkXaVeKbZAP7LCNdJWJ0XwqmymPdEIpOjJA3kNlxAB4iARqOXymNqOUJXukLtYMRBa8G5NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=qiGcnj7i; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2e09a36f54eso118323a91.1
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 02:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1727430234; x=1728035034; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k+EfgAcgWmuWiqbNHjJcsLkV7bQteBK+Xb+kdKI2dEA=;
        b=qiGcnj7iTyKcf2At3K1KhONqwRTNKkkSQHnxqJkFWyzGleaSB44xdh03eGvKjqxNTu
         LwQzJgb0W75bfwjDMREG2xlXL4LMDonuxriwDK44skqxO2YZ1mlI+WCJzify+UYlZiCl
         XIVvEkCNlX1wcbcnM51oBzP9PPpj/A9ELeAEeF8ZBlx1+qbGf+AXgXV88YgBDVHEooe7
         WJ8G9pN4rKDe+NVxsZSY5tVVBmfyzUdjhOx9Ise7nbOg28B7GBEY8vDb7llCPtVDNX8J
         NGUak1D5m6wkTFu//Sio3HsFcydaAp7OfvO7PYltIyGmN732+50EEhGlxT2780p+Fiwz
         PS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727430234; x=1728035034;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+EfgAcgWmuWiqbNHjJcsLkV7bQteBK+Xb+kdKI2dEA=;
        b=S2NihM2flTixrHkO3jWV42T3nghZyCJP+Ghd4zotIFVI2XR9RfPDDnkH6CnN/L0Io2
         WRlZSljplwZm2YDTjfFSNmhv+dqMo0mAhp+pJi9+KcfvqJs7chbSwwceTKGLOxy+mNus
         wVWDmIEwh3i9J3738gMnZLUpfTIcvJRk40SFA4vX4SZvatmvW17NPt32+01NLyRiPsHq
         m7CnNPmy01EvsgyZYJkm5EQgfutUOyt3uU75xeqL4w+/FiNIFYpf9+9DTh1AxkAfwqZq
         W2YLMUSXGXHH+27WH5T7ssakTABGxdd7yt2Z0ygOBuxW/wMTV8C334rho/I1cNpoYr3d
         jybw==
X-Forwarded-Encrypted: i=1; AJvYcCWk2iI4indawA1gzYu38QaGRLoJAzihmcwL9j1Zmlr2olHL3hn4fpSuU3BZxgfTWhV+YZ5ZTdQ13XLP@vger.kernel.org
X-Gm-Message-State: AOJu0YzKg+K7GRUV1Hhu+9FnHuCZcbWfohZMmJSfBg6I3DBMtH4rhiJa
	11tkgTtk+HEHdmk+T+IzuJA/UiirV3LeeKtmRIHWCNsUN9FtWjXiMeove1VGnh0=
X-Google-Smtp-Source: AGHT+IH30NwnGAhwR7roVzndyBVM3XwwjJV1ZHPSohbZoxqPt652ZKf6bv+RWhQzpm+v0Np+G8T7Dg==
X-Received: by 2002:a17:90a:a78a:b0:2e0:876c:8cbe with SMTP id 98e67ed59e1d1-2e0b8ee52a2mr1300086a91.7.1727430233845;
        Fri, 27 Sep 2024 02:43:53 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1bae46sm5105895a91.22.2024.09.27.02.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 02:43:53 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/2] Modify the timing of three panels
Date: Fri, 27 Sep 2024 17:43:38 +0800
Message-Id: <20240927094340.18544-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Modify the power-off sequence of the Kingdisplay/Starry/Melfas panel.

Changes between V3 and V2:
- PATCH 1/2: Modify the commit message 
- PATCH 2/2: Modify the commit message.
- Link to v2: https://lore.kernel.org/all/20240923134227.11383-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/2: Modify the commit message 
-            Modify the value of backlight_off_to_display_off_delay_ms.
- PATCH 2/2: Modify the commit message.
-            Delete the value of backlight_off_to_display_off_delay_ms.
-            Modify the value of enter_sleep_to_reset_down_delay_ms.
- Link to v1: https://lore.kernel.org/all/20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  drm/panel: jd9365da: Modify Kingdisplay and  Melfas panel timing
  drm/panel: boe-th101mb31ig002: Modify Starry panel timing

 .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c    | 13 ++++++-------
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c    |  4 ++--
 2 files changed, 8 insertions(+), 9 deletions(-)

-- 
2.17.1


