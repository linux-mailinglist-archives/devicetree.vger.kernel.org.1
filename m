Return-Path: <devicetree+bounces-67233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 229458C71E9
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 09:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A250C1F2200B
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 07:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E942BCF8;
	Thu, 16 May 2024 07:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Dk1sja1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5652C1A3
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 07:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715844068; cv=none; b=KF3w6st+y9LrO1OGWgwDMCpM/nN4CoOt1mm2VMzQZhBc99U+1M1w551oJZ68kJCakfpR6MoDnjuUnJeSVJsW8/xxw08Vy0RAyQnN6EHrB8EjQVxVPadb1NqVRUumluD3s60CKT2njkaDkHzEcJdwegjfEC2gaYOswpkvxW4Yv5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715844068; c=relaxed/simple;
	bh=kUumDROhfsR3afzSHkfjTBxrijudtRLJFt1YuMC6jU8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=AhY8KUs4PtXi2NL7fcZf3j6d8mrRysvQirjUP/wqhF7oItfliRkuodcHRnWnLvPFQKXUgum18rpFgHu7g/Au1yypyacfkbnWEnVrrZkOUIbWJTTnQ0YkwWLErzq2sqzwK02FLXTBGJA8uN4Tw+KpNTq6OlZE9DS06pSr0H4BdSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Dk1sja1J; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-657a07878easo776966a12.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 00:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715844066; x=1716448866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ToSw8/xXq6HjfzbRr5t4Tk0/fieWO/pkI64Nv2v4KY4=;
        b=Dk1sja1JqvFsQy84N0ZRN2R5pV/AjUsqaewylf63uL2QSs44TME6yP2XA/nVsPhClb
         o/QoaNM0XD3axuPlHh7P+7iKQRHmMPtYA64q3TNTzvPPp2dsTv2IuEVqf2zsfJFc0GZc
         k5DPfRotzeglBxfoNYyzbe+NPjKjF/8RLIGBR6rjrLrPOjIMnHBq1fI/1iKNcLDyqGHN
         1kVBugiuvtPK/7vYjzjhc+HZhAUApS3/DeC/TjfXAsySNlihJOmPCt6o1lEEN6KgJLuW
         ALW/hjNaV7vyrZEbK5HwWqg82vQN6eWFY0KXTY+uNdnLQHhwhDGnnsK8WHiIczmZku73
         DKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715844066; x=1716448866;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ToSw8/xXq6HjfzbRr5t4Tk0/fieWO/pkI64Nv2v4KY4=;
        b=m/TuK2q6kiEZhvqKbLXCS6W7gea/knRNewR3GsnKIF4nvDfQ5aFIlz1UQz9aYTrQM1
         Mz9MktXt2tn7o3ke2OhDomQeUYhCzNMSqXKLZNZeDlVpdLsgySWaXNAmvVsXFMIKDGuY
         cyYfueDKS5MmLKIYIH0WNRxHiEdbyU2jVST3cgDWIbc0afPLR77eJZwhtUHs1OeP2CZF
         snmhQv+mHqITTwjF3diLOd4aOGbfttqbfGV2e0dV6wgCQ3/u1yE01m/VLv6UWyEDWhl4
         kKMy7pXzcuE5gpF9j7kbRnL+/0RFJZh9RIi+4MYI+jFLjBznB5mHRa+DWrh5CfhkLmC6
         liBw==
X-Forwarded-Encrypted: i=1; AJvYcCX1LhL6E2+V6hGQvQjx7ZjaKv9jm9BzGjmQY1E3P7yJJoeXf3AqqnDpewqsAWBwMwBsfevzX9XHnPJn7qLHnexkidwagRM+YN0Vgw==
X-Gm-Message-State: AOJu0YzYIy+So2ejuVenmfNSle70GxPtvPdpBFujKX8XW/+l2iKu/WTQ
	IDtMivcFw4KOOOK+j0LG5pkXOy/+u4wmXIcn8Kzlqo+RlyAQr82qnhxuLK7duJ7djWjpXCXDXxI
	GfoU=
X-Google-Smtp-Source: AGHT+IEAnol0Q9MPVD5URxRpCHiFamJ1XGv9zEh1AAJQVhTl/mUtFn8KoAsDgmlwRJtZqBIRf9l4Jg==
X-Received: by 2002:a05:6a20:d48c:b0:1b0:1c8d:5bd3 with SMTP id adf61e73a8af0-1b01c8d607amr6382388637.59.1715844066568;
        Thu, 16 May 2024 00:21:06 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a663a3sm12318724b3a.41.2024.05.16.00.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 00:21:06 -0700 (PDT)
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
Subject: [PATCH v8 0/6] Break out as separate driver and add BOE nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Date: Thu, 16 May 2024 15:20:33 +0800
Message-Id: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
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

Changes in v8:
- Neil think need sent separately to ARM SoC maintainer with "arm64: defconfig: Enable HIMAX_HX83102 panel patch ", so remove it.  
- PATCH 1/6: No change.
- PATCH 2/6: Fix Doug comment "return ret" change to "goto poweroff".
- PATCH 3/6: No change.
- PATCH 4/6: No change.
- PATCH 5/6: No change.
- PATCH 6/6: No change.
- Link to v7:https://lore.kernel.org/all/20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com/


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
Cong Yang (6):
  dt-bindings: display: panel: Add himax hx83102 panel bindings
  drm/panel: himax-hx83102: Break out as separate driver
  dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
  drm/panel: himax-hx83102: Support for BOE nv110wum-l60 MIPI-DSI panel
  dt-bindings: display: panel: Add compatible for IVO t109nw41
  drm/panel: himax-hx83102: Support for IVO t109nw41 MIPI-DSI panel

 .../display/panel/boe,tv101wum-nl6.yaml       |   2 -
 .../bindings/display/panel/himax,hx83102.yaml |  77 ++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 133 ----
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 738 ++++++++++++++++++
 6 files changed, 825 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83102.c

-- 
2.25.1


