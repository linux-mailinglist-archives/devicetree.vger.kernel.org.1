Return-Path: <devicetree+bounces-261538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGOFHb4Lf2mEiwIAu9opvQ
	(envelope-from <devicetree+bounces-261538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:15:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0653EC5373
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BA5930238F4
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 08:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F2731A044;
	Sun,  1 Feb 2026 08:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="K9c/XmC4"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DB241690;
	Sun,  1 Feb 2026 08:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769933728; cv=none; b=WjJW7pf129OCSio+4GVFyyazSoLlnAws6JEnyGCkCMBTEMTfuiL2QM9Sg/w+w0P05FSYzqcrkT9BhiL22TsAN8pBShlVDTvrGvD3n/pYYolv6HekDpcrgsU/SaU1XUCBxA9SqdxMOQmuAE3mGBdDXswbSckRZTi9Fnsu0IkK3BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769933728; c=relaxed/simple;
	bh=48x2CoXYLt1IS7z/CM7iZFIPQ5t6cPmYVU09MbgzJx0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZcGkLfUY7YivWHiRzAR0xgGXbCVWhW8JPnf8DseQXadd6FfKrSm9qt/L6NqtKP2J/X5HAlU8FGDFCnl+OvUKl1KVsnH2VnzrqsyZePcezxcuOC2YPNDyIFsmx4TPQg8t6sS0DStPjWu2DZhDHy9dcKaUQ+SSNPe9UEn9iEYA7eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=K9c/XmC4; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=aq
	RmpHo6XX+cmlEPlSDptfKyft1oOFmzNX1tdW6dbIM=; b=K9c/XmC4mo6lHM5a7w
	RczrDbm3oyC/hrWiARL5cVSkg48QS0UJnNXABTkVK2Tks/SNyVd9+A0yqZe/UH28
	tButDg/N45SPjPtc1yRI1AnA1PIGgYpGKBpZgUXLOs8yaOXEMxnkzg4FU4iF9dXj
	nyiCJFcqicqS8Hdyz0PdjCge4=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3Hz40C39pmxGTKQ--.55310S2;
	Sun, 01 Feb 2026 16:13:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: alchark@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	airlied@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	nicolas.frattaroli@collabora.com,
	robh@kernel.org,
	rfoss@kernel.org,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/5] Add DisplayPort support for rk3576
Date: Sun,  1 Feb 2026 16:13:26 +0800
Message-ID: <20260201081338.407999-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3Hz40C39pmxGTKQ--.55310S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr1DtFy7trW3Wr4rtw48tFb_yoW8Jw47pa
	nxuFyYyrZ7GFWava43Cr1Uurs0vr1ktrW8Kw17J3y7t3s8GF17Gwn8GFn8Jr9rXF18A348
	ur4UJa47Cr4jvrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jDrcfUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7RgLaWl-Czhr1gAA3P
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261538-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[163.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[163.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0653EC5373
X-Rspamd-Action: no action

From: Andy Yan <andy.yan@rock-chips.com>


The DisplayPort found on RK3576 is very similar to that of RK3588,
but work in dual pixel mode and support for MST.

This patch series aims to add basic display output, not include audio
and MST, which will be the work for the next stage.

Tested with 2 lane standard DP port and USB-C Alt mode output now.
For those who want to give it a try, I have a reference branch here[0].

[0]https://github.com/andyshrk/linux/tree/rk3576-dp-upstream-v1


Changes in v2:
- Remove unnecessary maxItems
- Commit message improve: The pixel mode is determined during the IC
  integration stage

Andy Yan (5):
  dt-bindings: display: rockchip: Add rk3576 DisplayPort
  drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
  drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
  drm/rockchip: dw_dp: Add DisplayPort support for rk3576
  arm64: dts: rockchip: Add DisplayPort dt node for rk3576

 .../display/rockchip/rockchip,dw-dp.yaml      | 27 ++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-dp.c       | 12 ++------
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c     | 27 +++++++++++++++---
 include/drm/bridge/dw_dp.h                    |  7 +++++
 5 files changed, 85 insertions(+), 16 deletions(-)

-- 
2.43.0


