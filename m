Return-Path: <devicetree+bounces-132556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D839F772A
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57EAE188CEEC
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D57218592;
	Thu, 19 Dec 2024 08:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="PbC2+UZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12774.qiye.163.com (mail-m12774.qiye.163.com [115.236.127.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F0C21858C;
	Thu, 19 Dec 2024 08:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734596521; cv=none; b=S1RNdvG3YQFwhVOi0mpktnNcsGoGOjEqPdrmls0n/iI1RPu0hu2Il+9knI1FkcO3yS8noEZ12HhYytDveR22Rm8bK3CZ+V/Gj9nJIlZAhgFw+71moEbeeGNJva7YzV2VwpBb+oGDILaw8lpqtI/ntRk47k6uqF/YhvufoP8yysw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734596521; c=relaxed/simple;
	bh=d/ME2FFGJIgRL3gbWMySpptOkmtzZaeXsGejEQN77hE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ixS42Xle0jxa7E1EABcGgfPL/WhumPjsviMbjPg6QYJRXGKo54RiiZ4NXFCtxs1kQztBhpqdy1xEIvOTcx9Sfq2h7mMjeJhK1ubIivy/ROx2k5uZnOCCMzPrUojdND0OkDtsh5ScV7MxFAtSkAOe/ku4uxE9U28U8lZkRdObhP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=PbC2+UZ5; arc=none smtp.client-ip=115.236.127.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd684;
	Thu, 19 Dec 2024 16:06:39 +0800 (GMT+08:00)
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
Subject: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp: Add support to get panel from the DP AUX bus
Date: Thu, 19 Dec 2024 16:05:59 +0800
Message-Id: <20241219080604.1423600-11-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241219080604.1423600-1-damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk4dQlYdTExJSE9JT0oYS05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf45b8603a3kunm633dd684
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6PDo5STIWPhU6HzkDDB86
	AxhPCyFVSlVKTEhPTkJOTUtLQkhLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDQks3Bg++
DKIM-Signature:a=rsa-sha256;
	b=PbC2+UZ5ue2tIuXkb1z3GNOb7tfnQf9ktP+fPC6SE6KZjNO/Ghxtohp7/N8ugEPwVn2zbJR4TFRSTb0DxAvnbV1hM45nqXJ/a3BUGR5Lzao5onqN8RwgcRw1aCpMFDveunOOfCPHsuPfPnRd011VXamn69fqC5lianD9MC+UIhs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jdZLRbj5Qu9T/Yq8V2XQTDpxqJDXZsuKPPN9ZHB0moQ=;
	h=date:mime-version:subject:message-id:from;

According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
it is a good way to get panel through the DP AUX bus.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 4f84e8849876..c45d92a2d901 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -49,6 +49,9 @@ properties:
     description:
       This SoC makes use of GRF regs.
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
 required:
   - compatible
   - clocks
-- 
2.34.1


