Return-Path: <devicetree+bounces-134050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 540A19FC90C
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E81D21630E4
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B001BC069;
	Thu, 26 Dec 2024 06:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="JFIJFFgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12747.qiye.163.com (mail-m12747.qiye.163.com [115.236.127.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43B21B4F3A;
	Thu, 26 Dec 2024 06:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735194838; cv=none; b=F9ZwM0wNAg7nHA/H1KQPgCYYVJ9fHNs6PQDfEDws4M5MkGe9xn9NHt18Rbkxu3WZdnCxGriMH90UTKqmVol1E0CXHaaX5d4618M87aAxIFEGrkQxZiqT35JjlPsdktPCK50rFGVJjwv8ueM2ynO3X46K3PCKTRaHoH1W+W4qTro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735194838; c=relaxed/simple;
	bh=BEDrVg/9RzXfFGQ08o7KrGNSBx72rKW+NLphGBtnHtc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h1hXMtHhby0V+xizJ9bXW9UHy3InIbi4x+J3dH2pkpkPOqazrNtHnhYd5DIslDSAUoNgcUnLRbQ48gDTyifL+yrFoXvQC/8+FWrYOZuaRDM6A9iu172eHzzM0Hb6ThGo4JRDL0pY17gQJKJ3hmk7vldtfUoz7vxX+Dx6Q58TKBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=JFIJFFgV; arc=none smtp.client-ip=115.236.127.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc5117a;
	Thu, 26 Dec 2024 14:33:45 +0800 (GMT+08:00)
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
	Damon Ding <damon.ding@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 10/17] dt-bindings: display: rockchip: analogix-dp: Add support to get panel from the DP AUX bus
Date: Thu, 26 Dec 2024 14:33:06 +0800
Message-Id: <20241226063313.3267515-11-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkpCT1ZITx9NS04ZT08YSxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9401abd44e03a3kunm6dc5117a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NlE6Qyo5MTISTUxPCTkpKwJP
	TAoKCi1VSlVKTEhOSkJPQ0lMTElJVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0hINwY+
DKIM-Signature:a=rsa-sha256;
	b=JFIJFFgVPs6Cx1B22KzFWGq4xm5Gl3WjI+KFpjywZkCsTlnVnQaNJcISBQwA/NkQMw2a65ICbow/Se/vU7xqSId1vruvi29/mqhHMS9smz4B6ooaZ5Vt2u0w/4tn2AhlR2cGnxrFl0LAXo2LOJF6QyfgvaNmJboJsnr8Bi1wDpM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FUoPGB2ofRkGg6bFBe+sKON64GQupCz5j3eQ7S5zDIs=;
	h=date:mime-version:subject:message-id:from;

According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
it is a good way to get panel through the DP AUX bus.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Changes in v4:
- Move the dt-bindings commit before related driver commits
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 200703905b29..e0434cc6e43a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -46,6 +46,9 @@ properties:
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


