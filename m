Return-Path: <devicetree+bounces-65417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE1B8BE4D3
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 15:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AFA31F21A33
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 13:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E06815E217;
	Tue,  7 May 2024 13:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="LXc8VvyY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B56015B116
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 13:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089980; cv=none; b=nPtJLOjbM9q74FVPCeMu/lWRpqskYg2Qvph21gwPPOx+NFUFHJ5qOiZYqMltF86KyLSlOu+jJ1PLSuue4uY7w6xLzk+m4meMmksj/oZzKw+LUs+Husy77SHJrfBK+J1lpRB3cTuAvdSlxsMWRi5E+zgvGOYXpP0UKYQHmkx1ypM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089980; c=relaxed/simple;
	bh=qPrMZjWO5HVjnBR29tCYiWMSAFUHZ/gOaIW5YSmrBiU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GGnu13VkNpODQLrkKAjjNmt6m1wysjnyC+rbmaE4v0x4ywn4CnY84x83J8K3ZiAUxVurs3fW1V8xOWFtbxGXhMMT+Z02BYk51Dguwe3r4uhJ8f4pMMg3QoQkAryDBGa7UhayCWnj2mGFkVwOAQlfBgbCnX0esgBCcoiMH3UTRLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=LXc8VvyY; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-36c7bd2586eso13640245ab.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 06:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715089978; x=1715694778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k5+qhtemQuDetUKDZ0kkjHy0frQuoB2GgS1mbo9cFfg=;
        b=LXc8VvyYtEj6pL/44MV2dDfHX/xi0jgF/GA1Yl9ai4L//iJflZiPHuCWznAdbS3aX+
         7LBBp502MK2jMi3lqlnRGG9bTVuFPP4vkqluabrfmOg3W4o6fow4Zjqbfd3b3m2jrXyH
         68Qz7wT+a7sMiVo7KYhrhCohkcjqNtuywsTVl50xc8bzxcSlgdCAeUVn9lbuN6yExcOq
         +Wr5KtaFCqgI+8znOxybQeOpCxCSqKh/4uEjmOcWtT3jIE6nJb7jzzckF8xxwfFgb35P
         u2qwiCKSvGKMuMjfv1hfespZAc7ik8JWIAKzVvGgTL26fyyGjmASFlCs+2brhoLMaglY
         xYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089978; x=1715694778;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k5+qhtemQuDetUKDZ0kkjHy0frQuoB2GgS1mbo9cFfg=;
        b=Xh2GygggweuV3KF0WrzAMjXteLbwBx2+TZMBJOXJa4lNQAVzP+HYokFwlmiqpHpGBe
         FM1ZQBP4y1AiUjY/ifnhMVNR8s5ofO9Pm8EVeb+3dNgo4KsUNMRnHlQzrg7SF05nbrsf
         faEY8gFFbFstsmHcWMKCO0mI84Q0Z6IilUWMaYEWjclMM0COSw/Rzs6T/HTvwp8VKycR
         rnZdwYiLVq1fgzcLP+tabXC8TN0iwfNxs0rq6+MfMfvb8uz7EKJKZH//sTZestqlZGPr
         JM5drAxae5oW8/uvp/M3dF92XhbByAok/VTaXh05C73AyFQvZUDsdCgnvpJrs1ZPm0nk
         jRpw==
X-Forwarded-Encrypted: i=1; AJvYcCVd3PFJhJZgJb39kvjj23DFx/J4mIthfAEyKc2Xt/XtRPmVqXxEj6ijBVeDVhu4uHalB0E7DzAduO1vvbuioqRXESK6+YHPDqhUSA==
X-Gm-Message-State: AOJu0YwrkQdHoSaj5Dx+hpbjz/Meidz4tyErsgSVxe446eFgGzHvaqPG
	Dci2FHZDYvhruTXQnhSYHWKa22FraXQwlBiwa9p/ZknthmlHcVh7tuKL3hqDehY=
X-Google-Smtp-Source: AGHT+IFUIGk90awM+hDKTzEkI00KDIi3N4ht72BCJWbyJgi7KmKbd5CwDa8bL4YmPb1PbjhZ2gCxKw==
X-Received: by 2002:a05:6e02:1c4a:b0:36c:c8f:893 with SMTP id d10-20020a056e021c4a00b0036c0c8f0893mr18930433ilg.14.1715089977787;
        Tue, 07 May 2024 06:52:57 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id e7-20020a63e007000000b005dc8702f0a9sm9850542pgh.1.2024.05.07.06.52.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:52:57 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v4 0/7] Break out as separate driver and add BOE nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Date: Tue,  7 May 2024 21:52:27 +0800
Message-Id: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Discussion with Doug and Linus in V1, we need a
separate driver to enable the hx83102 controller.

So this series this series mainly Break out as separate driver
for Starry-himax83102-j02 panels from boe tv101wum driver.

Then add BOE nv110wum-l60 and IVO t109nw41 in himax-hx83102 driver.

Add compatible for BOE nv110wum-l60 and IVO t109nw41
in dt-bindings

Note:this series depend Dous'series [1]
[1]: https://lore.kernel.org/all/20240501154251.3302887-1-dianders@chromium.org/

Changes in v4:
- PATCH 1/7: Update commit message and add fallback compatible.
- PATCH 2/7: Add hx83102_enable_extended_cmds function, rename UNKNOWN CMDS and depend Dous'series [1].
- PATCH 3/7: No change.
- PATCH 4/7: No change.
- PATCH 5/7: Depend Dous'series [1].
- PATCH 6/7: No change.
- PATCH 7/7: Depend Dous'series [1].
- Link to v3:https://lore.kernel.org/all/20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 1/7: Update commit message.
- PATCH 2/7: Drop excess flags and function, inital cmds use lowercasehex.
- PATCH 4/7: Update commit message.
- PATCH 5/7: inital cmds use lowercasehex.
- PATCH 6/7: Update commit message.
- PATCH 7/7: inital cmds use lowercasehex..
- Link to v2: https://lore.kernel.org/all/20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/7: Delete Starry-himax83102-j02 from boe,tv101wum-nl6.yaml, add a new bindings file.
- PATCH 2/7: Break out as separate driver with Starry-himax83102-j02 panels.
- PATCH 3/7: Enable HIMAX_HX83102 panel.
- PATCH 4/7: Add compatible for BOE nv110wum-l60 in dt-bindings.
- PATCH 5/7: Support for BOE nv110wum-l60 MIPI-DSI panel.
- PATCH 6/7: Add compatible for IVO t109nw41 in dt-bindings..
- PATCH 7/7: Support for IVO t109nw41 MIPI-DSI panel.
- Link to v1: https://lore.kernel.org/all/20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com/

Cong Yang (7):
  dt-bindings: display: panel: Add himax hx83102 panel bindings
  drm/panel: himax-hx83102: Break out as separate driver
  arm64: defconfig: Enable HIMAX_HX83102 panel
  dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
  drm/panel: himax-hx83102: Support for BOE nv110wum-l60 MIPI-DSI panel
  dt-bindings: display: panel: Add compatible for IVO t109nw41
  drm/panel: himax-hx83102: Support for IVO t109nw41 MIPI-DSI panel

 .../display/panel/boe,tv101wum-nl6.yaml       |   2 -
 .../bindings/display/panel/himax,hx83102.yaml |  77 ++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 133 ----
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 730 ++++++++++++++++++
 7 files changed, 818 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83102.c

-- 
2.25.1


