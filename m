Return-Path: <devicetree+bounces-182360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD45FACBE9B
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 04:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF1C67A4DC9
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 02:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC7212CD96;
	Tue,  3 Jun 2025 02:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="J7BS7qSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m10246.netease.com (mail-m10246.netease.com [154.81.10.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051AD3FE4
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 02:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=154.81.10.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748919086; cv=none; b=OsjxGMQlhSxORfiWF65gzM+eeDeHKwDtlds4iw6DWxxJhSpaFz4+E36CParS81k44eqcCRcaz9poLIMGJeHdFIb9mz39fWK55BPNWCdCSknNsADuIU5HJgo0j8dQaN0XIud2+WJGPdh+Yao2YKS/n279MN8GC3J/QJd9E5JB9eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748919086; c=relaxed/simple;
	bh=I3AXdW3L07xTJ+ChPi9WNvxNjEiul0hNZVhivbp+Euw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Ro1xhWRNmZSTAjYRtWpdAu4QEj4FxR6t/yDaZNAgGNWb7qFZ7fmX0UOIv0PThhmj+IRt+Rjyay8t6ve6J365Sl7YWYcQ2SSoXVenS+RASv9OkrEVlOEnlEJ0T6tD67ZYDKOUqLztcxWgrghsa12kVhu5MreaAuULhaGLvSxiWGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=J7BS7qSm; arc=none smtp.client-ip=154.81.10.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 174acead6;
	Tue, 3 Jun 2025 10:35:55 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: fix rk3576 pcie1 linux,pci-domain
Date: Tue,  3 Jun 2025 10:35:40 +0800
Message-Id: <1748918140-212263-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IZTlYeGEtJSUlISBlNSB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9733a5387109cckunm317c226d6e59fc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NyI6EQw5CzEwPTAXDgI2Kg0f
	TUswCTNVSlVKTE9DQkpDSk5MSUhNVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpOTk43Bg++
DKIM-Signature:a=rsa-sha256;
	b=J7BS7qSmTtcYdFCNZAPDRWz2qJdPwnLO30fJU2WXhzv3y6LidnRvKoVv1XeeVBvcJhrs9NwxfZLwy+FmrImuX+ZRslBc/bt+BT1hchf+57s4xqQWRKOXxKRtuPAiEtRFhFnG8b37P3O8dpcK7LyELjV0f9RR1ih3THP4YlFYmfc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=PHmx6slCem1GwS3t8N+DGxSghkYZfo+obqna4TpnPCI=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

pcie0 already used 0 as its pci-domain, so pcie1 will fail to
allocate the same pci-domain if both of them are used.

rk-pcie 2a210000.pcie: PCIe Link up, LTSSM is 0x130011
rk-pcie 2a210000.pcie: PCIe Gen.2 x1 link up
rk-pcie 2a210000.pcie: Scanning root bridge failed
rk-pcie 2a210000.pcie: failed to initialize host

Fixes: d4b9fc2af45d ("arm64: dts: rockchip: Add rk3576 pcie nodes")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 1086482..64812e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -615,7 +615,7 @@
 					<0 0 0 2 &pcie1_intc 1>,
 					<0 0 0 3 &pcie1_intc 2>,
 					<0 0 0 4 &pcie1_intc 3>;
-			linux,pci-domain = <0>;
+			linux,pci-domain = <1>;
 			max-link-speed = <2>;
 			num-ib-windows = <8>;
 			num-viewport = <8>;
-- 
2.7.4


