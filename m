Return-Path: <devicetree+bounces-241588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A33C80046
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FD794E4C98
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBCDB2FB085;
	Mon, 24 Nov 2025 10:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="oPs1y//7"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11142FA0DD;
	Mon, 24 Nov 2025 10:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981690; cv=pass; b=Ci2WNoWh9b53I/cxsOnq4lxXRIfgrMuCwTA4UxFck7MGrMoARULZLshIu4W9UEGnOIjqV6XCnsT/kVsz96Bj/eQZd1iigXe4bHkX69X5GdrRYz0XbIoD1zRcHfmqmz4c0z3m/Ni4+skfhRIDPal0wQmawzVvnNIHJG3YvJ9Y+Fc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981690; c=relaxed/simple;
	bh=tUH5ulJnybP19Sg4txMyfOkfzh1Fimrq4cyTo35UwPU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U7RrOEnOTqfUrHGmMeL82XACD6g6Lig5OLDDXelqDIorDpo42lNbZ6gUuZ3lLzxKOPLSKgmjqG++cti+6y5SQoxqz09H+WxMCipSO4a3fqzvYJe6jAD1BiVMhzTZCdlA7prR1evqAujhtkjE6Sf5ZqodEU9+zGIjLYXcWXpaRrc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=oPs1y//7; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981656; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XpU39++R37qlJp2d+Mp1cCGlpyCF61ysYGpDrvcHmz8Dr6fpNZHSL170E9WbEbRac6CO8ZjvB1S+mLKc7gVbzq/mEpqWNDK2DQedea6mo6dCLL2kl+WBM2t6PiKCesMa5fYFaF/XVQNYVtBsg21F11d7FICDH+ZV8x3qDWHyK44=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981656; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=yCmapMaLaNG37xTznoB5gCrEYAm4J91BwEmE73mfTLw=; 
	b=RuDgVNyZBuE7cYaHdxWmG6jkhM863Bh6j3l2S4GsHjNqSLOVlOQ9qxRwFHzJRLbL8jZ/iXELTOAlR2WIJtys6S6tAutf72Ms9/5QBGo8kK+6ja+rChbKcLUrgsuYf7FWHQtMy5K7xgieAvJkXz/oqiaHjKQ08e2Uer7s6v2Z20E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981656;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=yCmapMaLaNG37xTznoB5gCrEYAm4J91BwEmE73mfTLw=;
	b=oPs1y//7t+6M89Qq/XCiFuXX1y2rnNzNZFIhOYDMRkryts15hWFoPFr+uzlpqjoN
	r+DIw5f6T1U39RfVgOL1Kq5th73OiUWA8KnDEW00l2coqMvrxp7LQ6jnlhINRa7r0i1
	luKMKAJv3SKmECD3apfhJF5iEhMhO+7TGtZtN+2Gax3H4QZ7SMfUYjueKg54cTZ3Byf
	5wbPjs/iBTmczggJqQCEmL5moHxbmbv5VPQw7gn1eqTqJXP2JWRba2DaGZ8bEW7Hfrr
	BzFPGemJ6rUO84eDmS09t7cCcWUqBWae17CDaigjOMzjvXeC4LpeazStY5vba/LjWqZ
	vrMicdgxBA==
Received: by mx.zohomail.com with SMTPS id 1763981654092198.7339131486251;
	Mon, 24 Nov 2025 02:54:14 -0800 (PST)
From: Icenowy Zheng <uwu@icenowy.me>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH v3 8/9] MAINTAINERS: assign myself as maintainer for verisilicon DC driver
Date: Mon, 24 Nov 2025 18:52:25 +0800
Message-ID: <20251124105226.2860845-9-uwu@icenowy.me>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251124105226.2860845-1-uwu@icenowy.me>
References: <20251124105226.2860845-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

As I am the author of this rewritten driver, it makes sense for me to be
the maintainer.

Confirm this in MAINTAINERS file.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
Changes in v3:
- Switch to my ISCAS mailbox.

No changes in v2.

 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 32715100a1e10..45f879ee02dc4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8538,6 +8538,13 @@ F:	Documentation/devicetree/bindings/display/brcm,bcm2835-*.yaml
 F:	drivers/gpu/drm/vc4/
 F:	include/uapi/drm/vc4_drm.h
 
+DRM DRIVERS FOR VERISILICON DISPLAY CONTROLLER IP
+M:	Icenowy Zheng <zhengxingda@iscas.ac.cn>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/verisilicon,dc.yaml
+F:	drivers/gpu/drm/verisilicon/
+
 DRM DRIVERS FOR VIVANTE GPU IP
 M:	Lucas Stach <l.stach@pengutronix.de>
 R:	Russell King <linux+etnaviv@armlinux.org.uk>
-- 
2.52.0


