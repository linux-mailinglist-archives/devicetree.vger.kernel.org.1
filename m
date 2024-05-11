Return-Path: <devicetree+bounces-66404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F70C8C2EDB
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 04:13:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DCAC1C20F4B
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 02:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF62012E75;
	Sat, 11 May 2024 02:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Mg/NjLVK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EB9134BD
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 02:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715393619; cv=none; b=l/a3ahURHE+0KXStD4sliBzrpreWmuif4jtJoWlKsO3QyjMQ5ogVcqzI4b89qhN6SZhwi8Cg9mFb5j5S3wiPF88c6JZqpVJ1Cqs9/BLi4jD2ZdJqjHMBhVE9Y35jit3BJpVJx+nHw10IbZR/dlRdqFf+HJdkQDkxXhcyMjxQhBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715393619; c=relaxed/simple;
	bh=qBAOC4KkqVTsAshuHxipdIkwbOHhvzUMvDxIuuHoKsA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XIM7rvB1/MRoBR86VZ34gNRwJNBbUaNUNI6Bp6KwoPJmtKRCF7FuUTBTYFezwDWaNfUqICMCVWAKqEtbdsMb2MPwrkUb+a8v/sL0by6eDdJ18kb8T2SD++yhZVb7PEPPfzgAJyjFL9Dquwtg6HS6VFvYf6Ww7edsAkXAmF0xuyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Mg/NjLVK; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6f4ed9dc7beso270665b3a.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 19:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715393617; x=1715998417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ro9Gj4s2KJidLF5j2cDQmmJU7+8x9Tzsgj7WCx41KcY=;
        b=Mg/NjLVKb0t6qnO3BmZc+9mjeN0KlEMZD+1PF97oyD7d+7dZFQTpk0WVfxaF+6kNLQ
         oBVSoAXPdh+y0Ls6w2DlzrP6bU8CVe4rIjK0crWGlYwI/z6QrGBt/URbj2Dsth1rBAi2
         m9Oeq9P3uw+eo9zRJzEfarAZ/ga52A4KH+harCgxkLPO07GNVgX01sN3gZSCuclND6Qb
         m3vo0Nhezybc6UlHms5ATgtbUT4UCWZ9Qi6kvxwS6/QNW2sM7skHu+q9/cSPCqNEp9Jd
         qQUWhj+XK5BjWBJUfSBJlaJkOpEc4T8wdF5fSzMQH3sN6ZjiJ4vqoDqtnlYHBacbPb2y
         loRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715393617; x=1715998417;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ro9Gj4s2KJidLF5j2cDQmmJU7+8x9Tzsgj7WCx41KcY=;
        b=oUw+v814Qg8Ie6MjSFBV7mdL2CmCvkoZ4BRDnV7iGCsGgKe4xMzsonhsIVzH1rjL6/
         8+6hu7D4ER5+c6MnwwPce7AWvkw0ITH6FEqFcPGQRiCcw5Zpu1l/vsyVOBrZzOSK0hKP
         yWXxfR9Lf7DPQPF8oqx+1L5GnOgwWVYTTmAjJD2Ds0OSZ103hIBdYLLpO1XgqjRRXBar
         d0ArNjqX5uRkaX8nFcnU4mW/egN5P1B+xR28fBBmsKdWBOzpr2hfNRZK2Og8Cq0H1K/2
         S9IUQQpX83/qkdPasNmxXoofCu8doe/3cBn+BzOvaTdOVPT4N7LgJZT//54MAqKHdDDh
         rGLw==
X-Forwarded-Encrypted: i=1; AJvYcCVC/qZcgSGmCo9Q18dxkIT5zGK9ijoxfVGCsMacPFi56ij53EpwVwfsZU7HX5XqHuZba8rzDHGlBib1F8hfquS8Tmx0WNeNXc0Xww==
X-Gm-Message-State: AOJu0YxXU2Ytpzjk6RI9joUDcJ7o9CdcZf8mvZ837CuqhJ2M2yGKNtFK
	CUQFvp7gkrQqo5rTu1v0VgHDETOHSUU6AdoEB4e9UUXfyVizKS0hT4hSma1YpkM=
X-Google-Smtp-Source: AGHT+IH5UAoi6zEEiaiBde4SESiUMnjHXNGfQ6nAR1zwD1VkVFreQrCHTiNI4cjlIrD40CMt7gWQbg==
X-Received: by 2002:a05:6a21:c91:b0:1a7:590e:279e with SMTP id adf61e73a8af0-1afde07d798mr6686077637.5.1715393617402;
        Fri, 10 May 2024 19:13:37 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d9acsm3680340b3a.90.2024.05.10.19.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 19:13:36 -0700 (PDT)
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
Subject: [PATCH v6 0/7] Break out as separate driver and add BOE nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Date: Sat, 11 May 2024 10:13:19 +0800
Message-Id: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
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
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 738 ++++++++++++++++++
 7 files changed, 826 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83102.c

-- 
2.25.1


