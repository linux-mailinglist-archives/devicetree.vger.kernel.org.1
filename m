Return-Path: <devicetree+bounces-253119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D95FFD07B19
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8572C3067061
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF3BE2F8BD0;
	Fri,  9 Jan 2026 08:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="cp6MUwpT"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D9A29C35A;
	Fri,  9 Jan 2026 08:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945730; cv=none; b=bhVkVU7HYvxghSshZgS09nusKII2pcxukvy9yXwIJ6OfZUQvvck2wC09Zgac+Z3sNs6fiQZBaG7voEYzg1rS1tls5Ybx2TpOG9dF78pSf2KPVNJqJeWkE95S0yandxj3Ms8zkrhxBRzemJbf230Sr5GFNpFqLQP4jwlaNAqv8jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945730; c=relaxed/simple;
	bh=a22xdy4BohxjC/3rBhOEYWzN6BfQgBj8reBoR9MLVJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uXII7ZE54pFEe/shxRVPlE5h4GizBleDN9PbVo+WWO35+vmcMWa3V2aaHtWjgSCLqJGw6rlZ8liGloR/wSTDpYjAccPPqYpsyS4bCOVSQq/NyFj6ILr+MitfsMppD7gOJ4HoO4FV0XDGZlJeJBZESC1ikH+k0S7+FszTlwx/HrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=cp6MUwpT; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=TY
	9NaayU89CoKZv/Al0hXplZdNKRptCSq4jtA5Ipmq8=; b=cp6MUwpTTQje8UEuVi
	wo8BYefyGRDytrHbfBBctcyRQJcYuMO9HD/Rc0Afhcvowgwrl2CtUg8HOk7M19c9
	YTjgMiorEgFTJ9rEVPFdkTuEdnuBSN91esvdYmP3p2TIuYt2H4wgftsPoORtVhPJ
	x/LPZwJtpP22Sm3qsezDx7Eew=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDnzlW4tWBpx1iBFA--.64397S5;
	Fri, 09 Jan 2026 16:01:03 +0800 (CST)
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
Subject: [PATCH 3/5] drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
Date: Fri,  9 Jan 2026 16:00:46 +0800
Message-ID: <20260109080054.228671-4-andyshrk@163.com>
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
X-CM-TRANSID:_____wDnzlW4tWBpx1iBFA--.64397S5
X-Coremail-Antispam: 1Uf129KBjvJXoWrZFyxAry7Ar47tr4Duw45KFg_yoW8Jr4xpF
	srGF1rtry8Jw4I9FyfAF18AF98ta4kGFWxu3yjgw40kw1xKF109FnIy3y3tr1UZa4xWw1f
	JwsxZ3yakas29F7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jddbbUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7QAQbmlgtcD1-QAA3n

From: Andy Yan <andy.yan@rock-chips.com>

The i2s/spdif clk are mandatory for rk3588, but not used
for the upcoming rk3576, so make it optional here.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index eccf6299bdb7..93e3efe18957 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -2014,13 +2014,13 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
 		return ERR_CAST(dp->aux_clk);
 	}
 
-	dp->i2s_clk = devm_clk_get(dev, "i2s");
+	dp->i2s_clk = devm_clk_get_optional(dev, "i2s");
 	if (IS_ERR(dp->i2s_clk)) {
 		dev_err_probe(dev, PTR_ERR(dp->i2s_clk), "failed to get i2s clock\n");
 		return ERR_CAST(dp->i2s_clk);
 	}
 
-	dp->spdif_clk = devm_clk_get(dev, "spdif");
+	dp->spdif_clk = devm_clk_get_optional(dev, "spdif");
 	if (IS_ERR(dp->spdif_clk)) {
 		dev_err_probe(dev, PTR_ERR(dp->spdif_clk), "failed to get spdif clock\n");
 		return ERR_CAST(dp->spdif_clk);
-- 
2.43.0


