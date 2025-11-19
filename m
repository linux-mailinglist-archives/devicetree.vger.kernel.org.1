Return-Path: <devicetree+bounces-240458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6694CC71663
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 23:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 06D0B2965B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2102FB62A;
	Wed, 19 Nov 2025 22:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PyYu5TTA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E2F2DECA3
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 22:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763593077; cv=none; b=KMmPYyTLTPDc5UaI3NYoY9TuFb2yIAA4B1D0vJA8cOIKNy1Ga5HqGtBpiUFfScVmsiLa8tgxDF/cmeNtCQJeW6Qb6x8tdGapwGQ6z3ovI0Bo7WDjHR57s5b1G7TMgnCY6w4vlWrr34cJfFOAFkolax6xOz9yqExuPIUpUxZ9gtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763593077; c=relaxed/simple;
	bh=gfZ+9qza0oslxvUYRIE2rlGpRbRddHkI+sSpZF6zbdw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m/+Arh9CMUUfSZ7glO5Crc2iN2pw5aJ+fNo9dGtIx3svNlvD5D7sf35IXL6pzWmoSUbNEIWr70iAqx0G06xZj9ya7/5MHIlxG3K3/TZy9Y3YBXpmGhrpcMMC7UZGZ/Tpjf14IKng8SSg28mw1eem6ZfFaqEkstTChzueLKgDzS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PyYu5TTA; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-3e2eeb85822so90457fac.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593075; x=1764197875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h36tUBqnvI9yhQ8wG7TJEWs6puqGdITr1kLVhg1nmeM=;
        b=PyYu5TTAH30QoFa2AuE3lxjn/sqgyW49MeGWy9XmFEgjCqwT9LCQMYRSDaThcLoZQx
         7ZSPJDedSwq7q9OJoS0VC8DitIb8Zvt/r6L3nCyAT8vw/STO9usQT2xWoQzAsRCUZzbL
         F6YvY5zYkOMz7jVSGgfwbgd+2Yx14fT25PR9YAAs+Q4V4KO8G7uiI5wg0YSRSiE/bm2h
         Hh8g6/EoV1LEEv/KoD7Zjo9DLD1QwcEbwuW+LEtjdeZPVGUu7PlmjlSYx6Jqid5zw/Mc
         mfFuZlgfNx/VcgHidpWdGDtSER0zsZ6N5jWaHsE8fLrGYx2dKuNcTNRSO5d2mM2vb5BL
         WGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593075; x=1764197875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h36tUBqnvI9yhQ8wG7TJEWs6puqGdITr1kLVhg1nmeM=;
        b=KyjBlHouPzC5h8dbRJrIho/JJEtPkvthD/Ptr92Il/lNO1ADcNtfa4jY++kqg/EGss
         UXECQS9CpAVaDq5ky/3q8dCxlFEsL9oApiqgM364bWMyDNkKWdxPAfcWdG4fqFvSxxbz
         XgNGsT5wXi/pGLqo5L9LedGftEjntRHsKXKooLAPhVv5y1ZkObJPsOXnS3ljwg1Z/36J
         R5yzUE8jaEmw9APHpg2i+LvU52t9MQWY74grAnOTkMGBerb7XwMon+Yi84Ecl6gBgNtL
         zF7EnRAvrfx22fh7a7B0N+eC3Sc3qIUCmRKYBPls522AHv0f8UIbPIleQSx0hn0soyWy
         aB0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXJZByNA1T+2NoVpxW+bl3HrossKc4qizPvvCGSqsN7xPGJwhyJ7s4XIeMiMscjgPEkOJC9JtngOUqw@vger.kernel.org
X-Gm-Message-State: AOJu0YybpCmkzPP2NJaJ9KBwhpw82z4YLo4VE8JbtuXkGce2mabvGNvV
	/dPlAsr1VSdbDDypLkj27WSVRIZ7iTnkSYGoQ531qgfHcdJmFTbBZjYj
X-Gm-Gg: ASbGncsoRaYORKIVkn5bWg58J4gaIrVoWYD5kMS7RYWWjCg8FIZwv5iWxF95oAQaWsD
	FPd+CUJngOoQqoWUsZQYeCOnzsKhl2VXvUoBb5fuLCEOR2KNUNb9cbWoc8dpAFRqKtC2Uwh34G5
	30udbljHfaalFQrYYoIaD/WDVu9lPxOhW6xxjv5zIwDQAsoB3I1rkbTE/gsczTjvtM351AyhRHH
	AYVf56a78KXLIBuN+jSG/ylAe40yIKOwBqAB73ed1/4iIOj7RAlbPtJKqxvxQQ/NVs7INgFK+N5
	UxVY8uy2cZATzkR6Id6EQy3/52hd7k2/Jj9zy+0mWBhSj+tZI5S4N32nAUZCy9jARjsBByw5Vey
	L3taK4WkN2nlnp54qzXUcmyyKEHOlWBxlatt3Tyopj/2emnb3NIVLm2+ZxdM0+gDhmJ5NXjqSkq
	022Rkinz+YeSjx8qeEjaY=
X-Google-Smtp-Source: AGHT+IH9wEc6Xu5Y63+EI3sJOazQtxFAgXXLwWcD3isoAJkSTUE+rwJ88T80ylQPY6WT6pNzdbF2mw==
X-Received: by 2002:a05:6871:5206:b0:3d4:876:34b1 with SMTP id 586e51a60fabf-3eca16ac768mr138953fac.33.1763593075407;
        Wed, 19 Nov 2025 14:57:55 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:54 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	cristian.ciocaltea@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/3] Add HDMI for Gameforce Ace
Date: Wed, 19 Nov 2025 16:55:23 -0600
Message-ID: <20251119225526.70588-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the micro HDMI port for the Gameforce Ace. This port does
not have a HPD pin so it requires making changes to the HDMI controller
to support this configuration.

Changes since v1:
 - Simplified checking of no-hpd parameter and changed to
   device_property_read_bool() function.

Changes since v2:
 - Changed dev_dbg i2c read and write errors to i2c_dbg_ratelimited.
 - Added a TODO: note in an appropriate location to disable or limit
   the ability for this driver to enable scrambling when no_hpd = 1.
   Scrambling is not currently supported by this driver but the author
   expects that it will be soon.

Chris Morgan (3):
  dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
  drm/bridge: dw-hdmi-qp: Add support for missing HPD
  arm64: dts: rockchip: Add HDMI to Gameforce Ace

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  6 ++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 34 ++++++++--
 3 files changed, 99 insertions(+), 4 deletions(-)

-- 
2.43.0


