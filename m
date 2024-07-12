Return-Path: <devicetree+bounces-85465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A49301BD
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 23:52:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C627DB21685
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 21:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8D804CDEC;
	Fri, 12 Jul 2024 21:51:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AD6482E9
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 21:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720821119; cv=none; b=R83BXC7rSwUsHK96R8RRrzVbNbRuokyHsMGzzV1wT8iXWYHyPYycpeQ25q3fJgd6VBbDE5GQZw/mJjPfDhRYvelnO13++DJQ9bN7oXMyOtEFBLNiyMed1VElUwnskMArjyqroPMoU3ysq7M4UNqRltOIJvrTKz1CgXRE+d3cUtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720821119; c=relaxed/simple;
	bh=sR9qoj+X5sdHjbRvrPfeFM34z3o6EQhwl6NvjVeBXuI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o7lx+kzskk2Akh/s1p4zg/Z8V10kmeQKaDovVvcg9ne0w/fNEAyRh4psEfrsgW0XlLBknv44MmqI89OB532l9zk3MmyyovS6Fm8UEIU9lMmQr6g5FckUONfVh6yVsUKvyFic4jNiMpkmpsEDxBsZkO+42VXvUajy81VzzhfGJ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46CLpKdR005671;
	Sat, 13 Jul 2024 06:51:20 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: amlogic: add support for Radxa ZERO 2 Pro
Date: Sat, 13 Jul 2024 06:51:10 +0900
Message-ID: <20240712215111.687478-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
Amlogic A311D chip.

[1] https://radxa.com/products/zeros/zero2pro

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- fix compatible string to use "radxa,zero-2-pro"
- fix subject in commit message
- add missing --- in commit message
Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 0647851ae1f5..5c8ac8cc2452 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -157,6 +157,7 @@ properties:
               - bananapi,bpi-m2s
               - khadas,vim3
               - libretech,aml-a311d-cc
+              - radxa,zero-2-pro
               - radxa,zero2
           - const: amlogic,a311d
           - const: amlogic,g12b
-- 
2.43.0


