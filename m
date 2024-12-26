Return-Path: <devicetree+bounces-134051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E2E9FC90E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AFC31883937
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102641C3F00;
	Thu, 26 Dec 2024 06:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="McH+MVFC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15589.qiye.163.com (mail-m15589.qiye.163.com [101.71.155.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF4F1BF311;
	Thu, 26 Dec 2024 06:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735194841; cv=none; b=YLXaeZggG0cTG31oHCNoEIOVWvE4qGQv56xHfeDSHLogsP2hOVBZG2WEqTCfgCukIPFk4izCFKtfPzjWvTAc8lFlCbV0ZFUERlYgmNkcvpr95KkOIRhE9XKYGr/Ea2xSiSOeJsOh9Z170bKPrBPk7KAHzZL9DmxGTRB72S9tZbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735194841; c=relaxed/simple;
	bh=ICs/5bvfY4PDZtn1r2oAcZBbla8juIzKrnln62kOEv0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r0/bb3pnE7TVZjibRBg0jt6yO5bIHeHgpxYjryTyAWjY4C59okbiTkq/RUMCeMg7IqkcRi0I0k+LJ575sV56In5jf5CD/CNfooiZq6GrehKRBhAxbNFNXembYYD7snjcht+rKhty2uAjL6W55+pfam0t55nzJ9C6sSXB5wEuuvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=McH+MVFC; arc=none smtp.client-ip=101.71.155.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc51182;
	Thu, 26 Dec 2024 14:33:47 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v4 11/17] drm/bridge: analogix_dp: Add a new member aux to struct analogix_dp_plat_data
Date: Thu, 26 Dec 2024 14:33:07 +0800
Message-Id: <20241226063313.3267515-12-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241226063313.3267515-1-damon.ding@rock-chips.com>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlJS1YfSEsZS0xKTxhLSk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9401abdc4a03a3kunm6dc51182
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KxQ6Vio5MjINLkwiCTpCK09O
	GTcKCQhVSlVKTEhOSkJPQ0lCTUlDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCQks3Bg++
DKIM-Signature:a=rsa-sha256;
	b=McH+MVFCMlLaxvdy9YIx+//j7qFgWSnbqnbrf7WVVNghO5EP8XbwFQ6c1BuyKWJJubLfBSawZ8HO5c1jXVKF79hgHz498+j6T3xiwcf/u0em1BAZXDge4nymPbW9r8L+zF7EGgeMONqaCC9yYali7MH2ySR0DKMmooR18v50VRA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=xFn9WNhIZrh97636o3Cx6G1eC6K6jAagGXa9qEDTNUg=;
	h=date:mime-version:subject:message-id:from;

The member struct drm_dp_aux aux of struct analogix_dp_plat_data can
help to get panel information through the DP AUX bus, which is the
more recommended way to obtain eDP panel compared with platform bus.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 include/drm/bridge/analogix_dp.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 54086cb2d97d..d069852f3e7d 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -7,6 +7,7 @@
 #ifndef _ANALOGIX_DP_H_
 #define _ANALOGIX_DP_H_
 
+#include <drm/display/drm_dp_helper.h>
 #include <drm/drm_crtc.h>
 
 struct analogix_dp_device;
@@ -28,6 +29,7 @@ struct analogix_dp_plat_data {
 	struct drm_panel *panel;
 	struct drm_encoder *encoder;
 	struct drm_connector *connector;
+	struct drm_dp_aux aux;
 	bool skip_connector;
 
 	int (*power_on)(struct analogix_dp_plat_data *);
-- 
2.34.1


