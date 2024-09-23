Return-Path: <devicetree+bounces-104569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7A797EC7E
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 15:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CAAB1C210B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 13:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9383819993F;
	Mon, 23 Sep 2024 13:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="wViNjgi8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4AE199230
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 13:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727098962; cv=none; b=eoN5eyMkR/h8gneUQb4xUHK6ojjM/DErFdoAI0XqOjh+7Q5cEZbGpD2yLnmOTn/0kSs1ao3kIXmhpjTgG6Thk/bTRuFANSj/5foSQJzjvccZD1Lct8ZVET/h6OEKTg0sCj5U4qzE8NR0rNmW+RGMP4KmS4J5BXRqSirj9GVtE6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727098962; c=relaxed/simple;
	bh=lvHbvaqI3NHHXd2QvdN04N2uQskKb2usmi5o74nqMRg=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Q97fBeHB9ei2RcDjYKSxsAZKExIiOsk4vA7zyhr7Gpp4l0v7csBdP6Zl5bblcfA8ouO2wyPMb7g5LJeP5Bacay2DH0xwsQeBEXIVuOXTFZOZYPNo3/gIc/qkCheObgWPez3M6KT8SGbagUR6dUhK8C2aY5iiUvkcSaFyGAHodcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=wViNjgi8; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-717880daae7so387026b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1727098960; x=1727703760; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MauEvGZKIi80AJIhpX9GBqvR/KkW3DC1LQXpbagt1zA=;
        b=wViNjgi8pF9Yf0YUS7wNbsZDD4EO+5x4WJDSX9R19/Nzwgb4WDuXk8RKqqDkXbGimp
         CdJhqWQGjAL1B0dzRsGjJJgNfS1l4VZtKvMXQFaMSDfPtiiEOXP4Tnfd1JNCLZgaSpFg
         jyQqGKHH3ANeGOm6QZ5mfe4t/BQOZPihy82oaxPgQCNFQvTHz1QVhTg2JgMoIF95wRcv
         Xas2MqWyUQKJTI6hLphhhDv1mNdjBRT/WnSdwa1/WYTsSkixBWJt15vReo2kcfKvLLl2
         YgI0O82eL2dgApVq/+0retsvht53f2adl47kcmBBqSAEbqD3OZjXQfoiPp3+kd4j9R+Y
         wREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727098960; x=1727703760;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MauEvGZKIi80AJIhpX9GBqvR/KkW3DC1LQXpbagt1zA=;
        b=wnF6vhlJqeBVTBkzfrB6OpnTLKcUaVIc6HJpEbDGDxj7bKhUeMNb0OHAPtbVDPJxB3
         803HmraFzWP0wFaS4UvjQEG9F11Mns33wAha5gPKR2T9A/5tT98zTifOq8KFV9UmW7f1
         1ZoHLiABAEp+d81ygyYN8ygp5fJLX/VhJLcLcHVv3toPj4EHDbD7LKwSLa4Qj+etkvzv
         YMil15qKxqWK7lCYVFGOGHngPw2Aj023xVCNS9NwYXVT7Z7sg1NTTOTOkxaApR7EdiBL
         nbtLgSJrZYpFdX5/FdnIB1P1/Ego+gXyFoJEZG42bZV+Vm22sCoaXS12XPwuf0qnT7Xn
         8yFA==
X-Forwarded-Encrypted: i=1; AJvYcCWIIhXffiubof2ifyE9LY4e8Bcy6gTDhTD2EdE/We2qumFOIpIOLuD3jG5ez/VE+3w8j22jAlcS5bm3@vger.kernel.org
X-Gm-Message-State: AOJu0YwqQOUxx4Uu/CYi84GFeCsl1e2Vv1vrPlt2AuEyIZ/M+3M0567w
	rI96BbRRutfHWNEy31g7PQddxgGa/iK41xxGZdZGKMqfx5Sfal0SKf3gzfAM5fI=
X-Google-Smtp-Source: AGHT+IG+uvpL+c++gnazNXMbcsE8W6pFaeYRRhj2JaWv+y4hmgtatOe4eP1On41DSLthoyWEmAlshg==
X-Received: by 2002:a05:6a20:7351:b0:1cf:35db:2c3c with SMTP id adf61e73a8af0-1d30a8bf315mr7383954637.3.1727098960354;
        Mon, 23 Sep 2024 06:42:40 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944b97302sm14376009b3a.147.2024.09.23.06.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 06:42:39 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Modify the timing of three panels
Date: Mon, 23 Sep 2024 21:42:25 +0800
Message-Id: <20240923134227.11383-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Modify the power-off sequence of the Kingdisplay/Starry/Melfas panel.

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


