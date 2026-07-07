Return-Path: <devicetree+bounces-321691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V5mdK72DTGqilgEAu9opvQ
	(envelope-from <devicetree+bounces-321691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:42:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0696171745C
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:42:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=Sx33ZGqH;
	dmarc=pass (policy=none) header.from=rock-chips.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321691-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321691-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FA523011BE0
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 04:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2233750BE;
	Tue,  7 Jul 2026 04:42:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49212.qiye.163.com (mail-m49212.qiye.163.com [45.254.49.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17093372045;
	Tue,  7 Jul 2026 04:42:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783399324; cv=none; b=VnlKxYgy0x7C6tXBqFXFDRNkdGVWmLOKjB0mBGPkoA1qjKfSRmkCxEYE1WWcRnz+uCHA8ygfx5r3JMOw00ZcIMoiwbENOuhuFCLnEKf/JDUqMgo2pvzUCAjsM4ToycQeqQRlWqUhfh2sF34nI6va6RYQj7TPFhM0nTxjszfsD+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783399324; c=relaxed/simple;
	bh=CF3+JVfxRKO1xELynVL87Sy21AEE2w2QteHNVp3MVIo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Eg4oHIEHj0HfGqFeR6jgcMIsCMbe6JaIulJUoOK+Qi3Ynj2RZKSDTdBvPwQWkKO79Y1lWncdeGnEXdvWQrbczJ0TvJJ+pAz0wbDCMXzUVb9Okk0LGlaeBiIhP0zKxamwX+RH5kJ/mbG0vtNCtmzHtBuUnS4//qpIBgt0cjuxV80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Sx33ZGqH; arc=none smtp.client-ip=45.254.49.212
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 452ef57ae;
	Tue, 7 Jul 2026 12:06:21 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v6 0/5] Add eDP lane mapping support
Date: Tue,  7 Jul 2026 12:06:08 +0800
Message-Id: <20260707040613.1992841-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9f3ac1689c03a8kunme8126cdf5ba9e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGU8eVh0aHUxMHUoYThpPSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Sx33ZGqHIYEoNfsJHKkE0OINX2wBzKjkOMzYWYxUDoOGnUAK8bXZKSFOLdokRjp+4q0F0ps4pS2DhnZeLUB2STpRxFDzayv6geipaPjhlVy4gdYrA5v9Izem6bQkTTR1FwHWXdEx8bQhDJ85uxmRrklxDMIDvtoGPqrNiGT3y+I=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vPjxRse/vdk5ypsjWtri2lfod5vl14N63wdWeNui8y0=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:dmitry.baryshkov@oss.qualcomm.com,m:m.szyprowski@samsung.com,m:sebastian.reichel@collabora.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:damon.ding@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,rock-chips.com,sntech.de];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-321691-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,oss.qualcomm.com,samsung.com,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,rock-chips.com:from_mime,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0696171745C

This series adds configurable eDP physical lane mapping support via
device tree data-lanes property.

Lane mapping is mainly used for below scenarios:
1. Correct PCB lane swap and differential line routing crossover
   without hardware changes;
2. Adapt mismatched lane pin definitions between SoC and eDP panel;
3. Support multiple panel hardware variants on the same board
   by configuring data-lanes in device tree only.

The series includes driver implementation and device tree binding
updates to support custom lane mapping configuration from endpoint
node, and keeps default linear lane order if no configuration is given.

Patch 1: Add endpoint data-lanes property to analogix-dp binding
Patch 2: Add DRM DP helper API to validate DP lane counts
Patch 3: Restore mandatory for samsung,link-rate and samsung,lane-count
         properties
Patch 4: Add validation for samsung,lane-count property as preparation
Patch 5: Implement lane mapping in analogix_dp driver

Damon Ding (5):
  dt-bindings: display: bridge: analogix-dp: Add data-lanes support for
    endpoint
  drm/dp: Add helper to validate DP lane counts
  drm/bridge: analogix_dp: Restore mandatory samsung DP DT properties
  drm/bridge: analogix_dp: Add validation for samsung,lane-count
    property
  drm/bridge: analogix_dp: Add support for optional data-lanes mapping

 .../bindings/display/bridge/analogix,dp.yaml  | 19 +++--
 .../rockchip/rockchip,analogix-dp.yaml        |  1 +
 .../drm/bridge/analogix/analogix_dp_core.c    | 70 +++++++++++++++++--
 .../drm/bridge/analogix/analogix_dp_core.h    |  4 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 15 ++--
 .../gpu/drm/bridge/analogix/analogix_dp_reg.h |  4 ++
 include/drm/display/drm_dp_helper.h           |  6 ++
 7 files changed, 101 insertions(+), 18 deletions(-)

---

Changes in v2:
- Add lane mapping application scenarios in commit message.
- Remove redundant deprecated property 'data-lanes' for eDP node.
- Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.

Changes in v3:
- Squash [PATCH v2 2/3] into [PATCH v2 1/3].
- Add unevaluatedProperties: false to both the port@1 and endpoint
  nodes.

Changes in v4:
- Add validation for samsung,lane-count property as preparation.

Changes in v5:
- Add DRM DP helper API to validate DP lane counts.
- Apply DRM DP helper API to check the validity of samsung,lane-count
  property.
- Add Acked-by and Reviewed-by tags.

Changes in v6:
- Add a seperate commit to restore mandatory samsung DP DT properties.
- Add Reviewed-by tag.

-- 
2.34.1


