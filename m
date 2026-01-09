Return-Path: <devicetree+bounces-253115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5FFD07ADC
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 287203009D41
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7522EC55D;
	Fri,  9 Jan 2026 08:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="RD0Kf+7W"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF24D1925BC;
	Fri,  9 Jan 2026 08:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945721; cv=none; b=JdRgtyP65kZfpp3VCIqzdjAuHnuwbgA9n7ycmVjOi2w1fPENDhxNLxRaEOKn7O7mVk7DssG8CquKk7y0fkIfzkz+Y26OifO3jhOLEFU7r6YropI4dyQBYZokAEudxU9nBs0+kYDvUgi/QzFGkWpK+EqzkTeiWQEuhYhg5HrwVxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945721; c=relaxed/simple;
	bh=t7MowRTDsJYnHGpD+CE2iGQoU4ZJGJVQOeU93QVRiYg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dPVsFOgT5sNhI9WXpJ93xAudqnEOTkTL6NwtyQX26z5MhubRjI9queZX9oOThLSuuwd/1wLm6h0gQu17b/ZdJdJVhAb/op+CKiTsl9CVWcTlCZtrGCVoKF+r69geBZx1jbONLgcQmpqFsnUIrw+kCOcDTx5Z6sALmOENM4wSDA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=RD0Kf+7W; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Qz
	CE2MSivZxOJ1rbSr2C3xjv/6IK0O9prRxNJhHmRcM=; b=RD0Kf+7WQaUfpGstxZ
	ffVReowiCMj0D1M6Ee0m6Rx1TYC+cTJAvU4NUe67+/qnfLBpiWGk3e/OjFapVuc3
	kuR1+Z3lBZt+RoBphTIk2n5vSvXgAi+oGCTmPxcDOVRba68ZXQAn0B0rNd0PKP0k
	w8ErSOEOcTbOF3pN5qRlpcpbM=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDnzlW4tWBpx1iBFA--.64397S6;
	Fri, 09 Jan 2026 16:01:05 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	dmitry.baryshkov@oss.qualcomm.com
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	hjc@rock-chips.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 4/5] drm/rockchip: dw_dp: Add DisplayPort support for rk3576
Date: Fri,  9 Jan 2026 16:00:47 +0800
Message-ID: <20260109080054.228671-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260109080054.228671-1-andyshrk@163.com>
References: <20260109080054.228671-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnzlW4tWBpx1iBFA--.64397S6
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrWxGw1UAFy5Kr48trWDurg_yoWkWwbEk3
	W8Xr1DWw4rGr9IvwnrAF4fCayIy3W29F1kG3W0q3WqyF97Xr18XFZ5Jr1jqan8AF17AF97
	W3WFqr1jkFn3JjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUn0D73UUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxgEQbmlgtcGcoAAA34

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort of the RK3576 is basically the same as that of the
RK3588, but it operates in dual-pixel mode and also support MST.

This patch only enable the SST output now.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

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


