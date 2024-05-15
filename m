Return-Path: <devicetree+bounces-66965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6350E8C5EDE
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 03:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E58BD1F21F04
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 01:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56ECA1FC4;
	Wed, 15 May 2024 01:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="sggUrQLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894FF1C17
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 01:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715737615; cv=none; b=jovrlrhCgCpOLVvv5/q9tIGHmm+ljoW4QnoApXVI4ikirHPrzbLhVkBm5hvsQ72HiyB/ZN1BlOfqCCjSGxmd6V3GZDATkpq/7sYmV9QGHZS1+eZR+B0aQJNXtJyM1HowhWsJ/ra9ZwRBC+c7QvWFlSYty0jBXPGK0d9TuYusJ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715737615; c=relaxed/simple;
	bh=9EKF1ImUZDRBXNrKQFrZ5ZZ7rezIgztZA02Arlkb9Rg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uhiAg2h4EZ6lLLqS6iggJPEkFZsn6xg3UJ0G122MY3gXezVDxnfFgVomcp3Tz91XzZnFeb81REv+duiCY5Rv0aBuFALB+xx4gjPvDhij53dD69iocRMw5yxCp2aPEuDYHNKKY6krjiaoXDxvPZdydABU9RJTX/PEXu/I2coEjW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=sggUrQLl; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1ed012c1afbso49709825ad.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 18:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715737613; x=1716342413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qatb2ki/gRFcDKjjv1lZSs1b2qoB9BBw3fm11JJ23aA=;
        b=sggUrQLlUu1mBEfmebSK3BpDlzrTnghNgj5Hqe4OrUqRP1SMErPgExe1qEC5XbM4Dj
         fjYnUnzOwzuXqwrsMwpIjKkc8O1lc+qZwaww35/ifTq2tERQTqThWMyjTpAkL+i+TWCI
         qLtLsW9xcIn1Lk68GtAbavQ5+XyXlnn7pvCqQKULaq66qyJ5ACv3/zHKymU/loIUF0QN
         MY7QaFE26EyjrwnCEAZsZ/kSdCR78Pu8dWEtxWmHc8+rxoCuRPgNF6vj+lr09cKqiH+b
         +iBDbUwBFJns8F93koFYgRtlfNm1JsIRcWfPBWqGqxFDDFphdTwNnlWMzTXeL6eDfPlk
         OLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715737613; x=1716342413;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qatb2ki/gRFcDKjjv1lZSs1b2qoB9BBw3fm11JJ23aA=;
        b=J70WuN+FMHb/QexOGBGk4vYm3FJj4WP3U+0wSYz0S+xq0ez8SRU/F1JwQeHxNMdDF1
         DuY3eP1Jz01bGtqvwOlBwjEHDXPZgqOdZPWbNwPPgvGabuVg6KR6dnCXHii+Opr1Y8f4
         sRwXThJ8Ud6Dh9gHzTp3etZ60tRmn+pmCpQSysUt/fQT9OgYqX2bVPz3SjGT2Y0H9FGr
         o1I/2NW1rpKOpTQsBqu599Yb+sgXniHAU5/b+DZz/SUvBls0btuuJa6JyX7lap4JFYcc
         yD8khTnjxSl49E3Yob3G+8mM6iZ3zL5PAlktdUK4M1IesRTDcKlO0w+ZCz9YV4xOM+Gy
         q9iw==
X-Forwarded-Encrypted: i=1; AJvYcCXgaISu5RdQ5FmD08N0dfk9rdHvSo4Xqa/TuCP2zRcVI+KEFGgyEYvNmL1O7Rao4P0aylE+vhAOz4Vp+dp2nvHDhdLZ40XXw1e9MQ==
X-Gm-Message-State: AOJu0YzG8dNtfPEE63lggbjSGxUkABlaP2pugTEMn9YrzV38o17qPXGX
	wCfwixAFWXHEu8++Mc+IhsSkMwc1mj4VekMfAErOohfJdxFlYgI78V4LEOnmz5Q=
X-Google-Smtp-Source: AGHT+IHuHlNOXteEjWxaNKLT8UAoUjFeJ097JUC3Dhx6T42V42lC/KHOF2FJ5cLfZ1t5lIKOny42GA==
X-Received: by 2002:a17:902:6f09:b0:1e2:bb09:6270 with SMTP id d9443c01a7336-1ef4329f94dmr170026115ad.28.1715737612801;
        Tue, 14 May 2024 18:46:52 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c1368desm105582145ad.233.2024.05.14.18.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 18:46:52 -0700 (PDT)
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
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v7 0/7] Break out as separate driver and add BOE nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Date: Wed, 15 May 2024 09:46:36 +0800
Message-Id: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
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

Changes in v7:
- PATCH 1/7: No change.
- PATCH 2/7: Fix Doug comment "return ret" change to "goto poweroff".
- PATCH 3/7: No change.
- PATCH 4/7: No change.
- PATCH 5/7: Fine tune HFP/HBP/CLK to increase the frame rate to 60.01Hz.
- PATCH 6/7: No change.
- PATCH 7/7: Fine tune HFP/HBP/CLK to increase the frame rate to 60.01Hz.
- Link to v6:https://lore.kernel.org/all/20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com/

Changes in v6:
- PATCH 1/7: No change.
- PATCH 2/7: Modify Move mipi_dsi_dcs_exit_sleep_mode and  mipi_dsi_dcs_set_display_on from enable() to prepare().
- PATCH 3/7: No change.
- PATCH 4/7: No change.
- PATCH 5/7: No change.
- PATCH 6/7: No change.
- PATCH 7/7: - Adjust inital cmds indentation and check accum_err before calling mdelay in init().
-Adjust somes inital cmds to Optimize gamma.
- Link to v5:https://lore.kernel.org/all/20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com/

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
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 738 ++++++++++++++++++
 7 files changed, 826 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83102.c

-- 
2.25.1


