Return-Path: <devicetree+bounces-94341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F36E4955276
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 23:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65CF4B20DFA
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 21:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B75F1BD006;
	Fri, 16 Aug 2024 21:34:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AA384039
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 21:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723844098; cv=none; b=VPNQ9szhQznhNQ5CWW/upDSSt1wWeWjYjyNEcB4ygkvDSCENy0yr+cEVgb3tvTRfAtQT/cDlPiGcPmiiGofUdrNMFzo9btERNx9C4WV6uh1v/CrRxvoZv03q0Gj4W+664qePMjoE+97U+Y9e5hHCVGi5Ak7GPz6tlCnked4j9io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723844098; c=relaxed/simple;
	bh=wqNhzZkVg+SvW1D4DOWbk145RC56kXybOnTQDheALlg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JFCdcWzTU7hsTad/mK6sKY9sMYD3xTmDKrTYG3YWlontlLBfYHp5+ByNVKL6BgvXUAsHRTrc2VcM/fop4/7VqlzrL1KLl9T+IP/AvgQLS+E/IPF1eKtk7s9MQm9rdji/uh9pbn5DIsPPTAq0gnCOVwyo8dw/c4jChxmHh8wRR2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47GLYaon026590;
	Sat, 17 Aug 2024 06:34:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sat, 17 Aug 2024 06:34:28 +0900
Message-ID: <20240816213429.1093-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3328 chip.

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- revert compatible string
- describe rockchip.yaml properly
Changes in v4:
- update compatible string for OpenWrt
- drop A-b tag
Changes in v3:
- collect A-b tag
Changes in v2:
- fix typo in commit message
- add missing --- in commit message
- add new section instead of new item in rockchip.yaml
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1f23b8b05a8f..684b779b2a40 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -795,7 +795,9 @@ properties:
 
       - description: Radxa ROCK Pi E
         items:
-          - const: radxa,rockpi-e
+          - enum:
+              - radxa,rockpi-e
+              - radxa,rockpi-e-v3
           - const: rockchip,rk3328
 
       - description: Radxa ROCK Pi N8
-- 
2.43.0


