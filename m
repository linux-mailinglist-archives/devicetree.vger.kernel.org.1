Return-Path: <devicetree+bounces-261536-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sI3OOZ0Lf2lziwIAu9opvQ
	(envelope-from <devicetree+bounces-261536-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:15:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD58C533E
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96CF93010165
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 08:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6DC241690;
	Sun,  1 Feb 2026 08:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="qBHsPxq7"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3314E13D53C;
	Sun,  1 Feb 2026 08:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769933721; cv=none; b=G/6G+9MLzhoa0nHC2t7MmiC8r2LJCcsRefK0FhJZJRf7j/KLSr1aG34NljmWBJ6hcCSjZU0nSSmIX+Bd5AawFoO0WeOoKFN5AEcpzmEHiS4QYZV2KE0wkcuHq4r6WdjJdjetyU5ms5/BA8qiQtXg78rGv/qHkmE/h/ZOWPVMAhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769933721; c=relaxed/simple;
	bh=UYURmv/YK0Lci9Y2W/wr3SBUyUWV7vjhDFEyxJicCHI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YHD4+rYmXwugoyZh7qpWgo0M51wvfkzjHKOMJlyGoYJ2VCAHc0OeDmZHRfsjgaeMOv5bsBD7/h46F4aFMSZtPisNuY55l4t5HHU8gg61dBl5eWiTd1NZsFWKQLURMh6hoX6h9bOPqo0U5B68XBGONjgbd3bgqu+b7u31TaZ8c3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=qBHsPxq7; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=m/
	XW2LDrF07MmdRlAaEu9X1m0f7azZC8MoM77XmYfbo=; b=qBHsPxq7f25rNgkgbX
	P+W4teQRngNu6RYgD02A6fj0pCgPb90yLSWW4FH8pEhRi4ZKLJR7Vn1r0jITE0ea
	aACCc8yfIKrSL2jjyeqyRyhD/d1kfbSTDo/h87gtSfSlL8wv/bP9bN2532J9qMB5
	f8GTAuMtVh22iWsJMFr+VQ9Iw=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3Hz40C39pmxGTKQ--.55310S6;
	Sun, 01 Feb 2026 16:13:51 +0800 (CST)
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
Subject: [PATCH v2 4/5] drm/rockchip: dw_dp: Add DisplayPort support for rk3576
Date: Sun,  1 Feb 2026 16:13:30 +0800
Message-ID: <20260201081338.407999-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260201081338.407999-1-andyshrk@163.com>
References: <20260201081338.407999-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3Hz40C39pmxGTKQ--.55310S6
X-Coremail-Antispam: 1Uf129KBjvJXoW7Aw48Jr4rAr43uw1fCr45Wrg_yoW8JFW3pa
	nrGryjqrWkWr4Yva4qyFWxuFsIk3ZrZay7Kr4UG343tws3KryfWryagw1UGr92q3W7ZF1a
	krsrW34UJa1a9rDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jq38nUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxh8Maml-Cz-UIAAA3p
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
	TAGGED_FROM(0.00)[bounces-261536-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0DD58C533E
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


