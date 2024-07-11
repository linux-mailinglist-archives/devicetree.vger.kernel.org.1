Return-Path: <devicetree+bounces-85129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B5992F0A5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 23:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3533B21336
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 21:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240E919F473;
	Thu, 11 Jul 2024 21:05:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FEB019E7FB
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 21:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720731953; cv=none; b=VCWNB3S8Xynj+2p4NS+2vku+wyLpZpFhwIxxU00RGcpmO4ZWfHiX1O4GKK+rg/xiZ+YBuVevCG4VXsgHomUhbGjBIYwW/GV1iBI8Wx2M+fyis9uThzKDCNmRSm3dhV3QEFNz3pMPxSo3pC68r0W/MdgvaabPQ/KX3C0zsOC2wio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720731953; c=relaxed/simple;
	bh=FUC4+YgL7UpuP60uGC5sNSA5bovP9fYj8ziun3rj56U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ArXK20dJqk3SMxfskNncoLM8lu+sfgOpnsIxs30OHohMEqbFF322taN3XspdgNYAk3rM/1rVQE5G1Eu1VLc0nfhA1QeB3J59tRAEQj82VWKfijyFYHGay0C/9txSPg8obqkerYkER+fc1no9tsueUWUtmObeaSisUmiPMRzix4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46BL5VZm002297;
	Fri, 12 Jul 2024 06:05:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 06:05:25 +0900
Message-ID: <20240711210526.40448-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3288 chip.

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..3caa4e6428be 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -782,6 +782,7 @@ properties:
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
+          - const: radxa,rockpi-e-v3
           - const: rockchip,rk3328
 
       - description: Radxa ROCK Pi N8
-- 
2.43.0


