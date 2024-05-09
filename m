Return-Path: <devicetree+bounces-65904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2788C0952
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 03:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 600C61C20FAA
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 01:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EA013475A;
	Thu,  9 May 2024 01:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="BgDyuvIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654762C87C
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 01:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715219582; cv=none; b=A27TMhRavizVtkf8T4arSJmEm2hc/wzcjj9rf95WR0yS6/lLbMZBKoBY0Jp8hm+DwyE3n9EzLir5I6d3RjIOLSZnZYql7efj7BYPEbGWV1I4g5t6yv4Retl3pzUI1nk1tQ6hHnP5B853ihXXI2iGPjs0kYv+LuyDjG8XEsdRHsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715219582; c=relaxed/simple;
	bh=WmBCzROU29L4Oee9Jc+s+stjWLiroAz12OuehSPI9Ls=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PemYU8N/GbNVisnQuIqPNEBE49K9cfrUfVFw8GR3b+VELJsvc53J4sy8mCF6smPps/Nk7AEjyZkbIH5wuizX3DwDtrZP+18mpKojWLJckuT1udw2LKj9QGROcTsqPd8NN7M2e469ApshXprqkIHswdxVwTp1fyPNgD5bGsEWo+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=BgDyuvIQ; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1ee5235f5c9so2575235ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 18:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715219579; x=1715824379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AejsLaCzbwpbDWAv67krM3DXciW/HoSlXwb2PZGM+iY=;
        b=BgDyuvIQYvNEPIfvglxlAWGwOvSAGZjQxfll3t4UJSzx+Jg+0IsxJQsw6K6Yha3uIJ
         p4S0SuFsXSWgKkriUiLaf56TurabA+rAYrKaQI2R63ezHsCU7PNzDULCl1k+JP3JPV4M
         6UGEQRYr9r2GUMaHCYQrOOc5sxzjGqYFxjrQpHzC5vHE8RQsTxo9sdd7NIHk3uxvBw50
         PveLjTZefX0itHSso4U1mJrJPVvELYgYJ99dWqfXWr7Yy37OpQqdziW/s0uPan1/UBcr
         j4op0wM+b895Pywvq5IrA7ADAFSAVVl2vvE0DO1kVjF9HTY3iaBQYJxLjRCyb84W5tF4
         bdLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715219579; x=1715824379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AejsLaCzbwpbDWAv67krM3DXciW/HoSlXwb2PZGM+iY=;
        b=w+i2t1/CAKgzOIAqCri38XLCjtbpMs47DeHgyqdo/FC6T/uTSp0kheRwubkfX1m9+k
         udpydKhaZNNYdXpGLU+aYUVVH6sAFzR7gnaGa77NGRyNxP5S0eaPY+etAc9piAKlwf8E
         kHy2vnxlx6LoS6zZwQHKRKBM6kSXZ8MqKDKRQkvCfP2D+VT8a30BMVCvxcgIyzC6AOTn
         ivZBVvmnfbTceDK6IEffs7shVmH1Lee7AnXVgiw3IgP6p6klt0KJvGLw0LRisndbKNCc
         1J9jLI6Z0OxhhdLawpwba7A5MZxa0x78g8sAFcK/0Y9DQezpVPbnCwUpgP9XIPBgK41i
         KdPA==
X-Forwarded-Encrypted: i=1; AJvYcCXgABhx8aKz/HffbQKB4W8aVX+jWC8SLS7u7IxF7LiC/sQw4Uhwz1WwcALrI9NOta9kuP9tNBu37WI6aDmETT8K9RWTQZwy27mu0A==
X-Gm-Message-State: AOJu0Yy8DGHwLJ5c9Vnw+ZlaMSDD6zBbLMTZ7tSa3as1Rl0744QFOasi
	D4LFlzqrhteAzMrGCqCv0VNyUxyRSfG25361hR+p/6lvOYETALg2V3GQ3e9JX6w=
X-Google-Smtp-Source: AGHT+IEjM13ZPoV1NupXDuAVvkC7M+5+thdgpXEjeB3u8/oO45tZ+DPDXvzZqOH7SKwdREZkkhLekA==
X-Received: by 2002:a17:902:c3d1:b0:1ef:9b6:d03d with SMTP id d9443c01a7336-1ef09b6d05emr5235085ad.57.1715219579596;
        Wed, 08 May 2024 18:52:59 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b9d15dfsm2117465ad.62.2024.05.08.18.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 18:52:59 -0700 (PDT)
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
Subject: [PATCH v5 0/7] Break out as separate driver and add BOE nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Date: Thu,  9 May 2024 09:52:00 +0800
Message-Id: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
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

Changes in v5:
- PATCH 1/7: Modify compatible format.
- PATCH 2/7: Modify hx83102_enable_extended_cmds function and adjust inital cmds indentation.update commit message.
- PATCH 3/7: No change.
- PATCH 4/7: No change.
- PATCH 5/7: Adjust inital cmds indentation and check accum_err before calling mdelay in init().
- PATCH 6/7: No change.
- PATCH 7/7: Adjust inital cmds indentation and check accum_err before calling mdelay in init().
- Link to v4:https://lore.kernel.org/all/20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com

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
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 741 ++++++++++++++++++
 7 files changed, 829 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83102.c

-- 
2.25.1


