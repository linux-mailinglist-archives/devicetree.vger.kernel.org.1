Return-Path: <devicetree+bounces-273469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP0aIZb7r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:08:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68657249FF4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B8A7030A5335
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76FA4386454;
	Tue, 10 Mar 2026 11:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="YjU5ZYhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3271.qiye.163.com (mail-m3271.qiye.163.com [220.197.32.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F543859DC;
	Tue, 10 Mar 2026 11:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.71
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140408; cv=none; b=WfE96hh29eYLBgIl4gu3qabKmM6hWIR+tyznOJM7veHpzBbWsf7bb4KcLdtRcS9ErxicRlOK1h+TC8E/dFpM4Oxt70c3CXRmKVSjTKEvXc9OPeiNxg2kY9kAe7erx7Q83OQzLNdVMCug+JbvaqHlj4TNmqcMpXNWWcEWaJQStVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140408; c=relaxed/simple;
	bh=l6M3JzXC7NrR2pfr7YFGLKJ4mQa4dHpwAdeY62iTgcs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uvG4l9uV/+75Y5UzPtF9it6w9AYVoEizwy6BWpb39B5Yosf+Zuhfh7z+xz9QEJ4WGUQn+iwsIqOOaQSOJPL3TZug+ui4bLp6yhydn9mTexaxWad226MLjYidJWvWzUotlzNwXDKwCVrAj90HyyTXL/IzynD8KE6AXJBstJEZD6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=YjU5ZYhk; arc=none smtp.client-ip=220.197.32.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 366858a4d;
	Tue, 10 Mar 2026 18:54:47 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com,
	alchark@gmail.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v1 0/4] Add eDP support for RK3576
Date: Tue, 10 Mar 2026 18:53:03 +0800
Message-Id: <20260310105307.309765-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cd7628fea03a3kunm866f47e7374c04
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhhJGFYeQ0hJTh9DGktJGkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=YjU5ZYhk800jrdAf3wByeCDk5mJyVYv3fsw3MBEj26IblLDEsgscryftL/ilV+gAucWKzs1T9MSmCOpM4+0iMKd/cax5BjpWFJyeOtP0vRJxoydRn01UV+wS2bGV7LH2aEOXaQLZ8ELkzORb1x0vXYZfkAeIZJAE+oxqpXirti0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wtwKbDCYEYbWJ1+AjIvX8amjBKFQOPqxNimGoabF6Mk=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 68657249FF4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273469-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[32];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Action: no action

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3576 EVB1 board (hardware modified specially).

Patch 1~2 are to add the RK3576 eDP node.
Patch 3~4 are to support the RK3576 Analogix DP controller.

Damon Ding (4):
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
  arm64: dts: rockchip: Add eDP node for RK3576
  drm/bridge: analogix_dp: Add support for RK3576
  drm/rockchip: analogix_dp: Add support for RK3576

 .../rockchip/rockchip,analogix-dp.yaml        |  6 +++-
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++++++++
 .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 15 ++++++++++
 include/drm/bridge/analogix_dp.h              |  3 +-
 5 files changed, 51 insertions(+), 2 deletions(-)

-- 
2.34.1


