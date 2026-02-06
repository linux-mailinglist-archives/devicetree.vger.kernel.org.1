Return-Path: <devicetree+bounces-263188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJw7GXU+hWm1+gMAu9opvQ
	(envelope-from <devicetree+bounces-263188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:05:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1CCF8D09
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84E5B3013A42
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 01:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDB6212566;
	Fri,  6 Feb 2026 01:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Eu57EWPd"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9086A22F01;
	Fri,  6 Feb 2026 01:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770339954; cv=none; b=oYjDRJDmjrgUonHuks1nU6/mJ/arVZc2/jJ9/dJ3BJdS9mpaDXerVPLF75DFN7X5o6U/Fz1aaTI3sCCD/OOkZBIo6/bNWbD2u8jfV9DqO+dYrVB0wrE/de89q0tOoy8YwVWQt1gsAUy07zvgHAIPsVXtigGaJ1KXwMfPYiGS5nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770339954; c=relaxed/simple;
	bh=UYURmv/YK0Lci9Y2W/wr3SBUyUWV7vjhDFEyxJicCHI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tImn+LbNJPv3o9EaCK1RxhNcK8Cq0O6drOtOsFHOfpXrbIc+ZVb6h04xTwkj+yItLVgI9EmaRxZyqPbF7Ckc17GWpIqalnz2JYVpCbFTM63Bga3LTaMuHgqJMWeyn+a37g7arNm+2If8ZumE0yGTBrRL2twuFuh2fqJkLrjSkls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=Eu57EWPd; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=m/
	XW2LDrF07MmdRlAaEu9X1m0f7azZC8MoM77XmYfbo=; b=Eu57EWPdOVOGn3S1S8
	RrgODHIUF7l58O6uDNJxVnm6a2bjQnmMaoqey+GQBGulXmbm48Iq0xBuIjtw9S9/
	Kzp6G4ArOu7T5cKEW2e8dEw69jn5wEqH0PV9z7AnaIXNjP4GMvXrBMW5/lcZqLAB
	fS1Giz50xXCUUT6yWO4e/FwRE=
Received: from ProDesk-480.. (unknown [])
	by gzsmtp2 (Coremail) with SMTP id PSgvCgD3_+0XPoVpQ5VfQQ--.20291S6;
	Fri, 06 Feb 2026 09:04:33 +0800 (CST)
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
Subject: [PATCH v3 4/5] drm/rockchip: dw_dp: Add DisplayPort support for rk3576
Date: Fri,  6 Feb 2026 09:04:14 +0800
Message-ID: <20260206010421.443605-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260206010421.443605-1-andyshrk@163.com>
References: <20260206010421.443605-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PSgvCgD3_+0XPoVpQ5VfQQ--.20291S6
X-Coremail-Antispam: 1Uf129KBjvJXoW7Aw48Jr4rAr43uw1fCr45Wrg_yoW8JFW3pa
	nrGryjqrWkWr4Yva4qyFWxuFsIk3ZrZay7Kr4UG343tws3KryfWryagw1UGr92q3W7ZF1a
	krsrW34UJa1a9rDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSoGQUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7QJTsWmFPiJt0AAA3A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	TAGGED_FROM(0.00)[bounces-263188-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.253.10:from];
	DKIM_TRACE(0.00)[163.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[117.135.210.2:received];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,collabora.com:email]
X-Rspamd-Queue-Id: BC1CCF8D09
X-Rspamd-Action: no action

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort of the RK3576 is basically the same as that of the
RK3588, but it operates in dual-pixel mode and also support MST.

This patch only enable the SST output now.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 89d614d53596..dac3d202971e 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -142,10 +142,18 @@ static const struct dw_dp_plat_data rk3588_dp_plat_data = {
 	.pixel_mode = DW_DP_MP_QUAD_PIXEL,
 };
 
+static const struct dw_dp_plat_data rk3576_dp_plat_data = {
+	.max_link_rate = 810000,
+	.pixel_mode = DW_DP_MP_DUAL_PIXEL,
+};
+
 static const struct of_device_id dw_dp_of_match[] = {
 	{
 		.compatible = "rockchip,rk3588-dp",
 		.data = &rk3588_dp_plat_data,
+	}, {
+		.compatible = "rockchip,rk3576-dp",
+		.data = &rk3576_dp_plat_data,
 	},
 	{}
 };
-- 
2.43.0


