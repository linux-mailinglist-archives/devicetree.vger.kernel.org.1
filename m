Return-Path: <devicetree+bounces-84838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 039E792DED9
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 05:42:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E0BC1C2118A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 03:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BC11C294;
	Thu, 11 Jul 2024 03:42:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF65617597
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 03:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720669335; cv=none; b=nkyduwCJS2lA2izyUi92i57v0ibXPsu/hA95oe5z+mRGLsZBWRPXtQGdS6XcSvJrMGwxmYKksWQpVfvPJg7JFfWgFDH7iOIODUJvT3KQttbRfkf6JzKBTUUmOxvdyp+NaneVyDt/i4clHyF4RpO6Pl99y5ppwuVjpd8CoP3Wv2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720669335; c=relaxed/simple;
	bh=vcRzBiQz7plafE8s+z6gsmQxyAq9SY4jSuy84Fy2t/g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tmiZFi9RAUKgbnm86qkJvLSclZ35tV/aEWhxavPLSCT5g2M0rj5eDmd74VxziKoPhth+gQ5JY/AASAGgbeXk8nV4zyhue5kgMI9b9z+NfJ8v5Z5ZTnwBbMlywYzueBJVZuBuDRaGvYWKzfLgB2zuW8t96TrGp/ML/xWKY4l/6qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46B3eorg032509;
	Thu, 11 Jul 2024 12:40:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: change product name for Radxa ZERO 2 (Pro)
Date: Thu, 11 Jul 2024 12:40:34 +0900
Message-ID: <20240711034035.3921122-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

a while ago, we changed product name (hardware is same),

from: Radxa ZERO2
  to: Radxa ZERO 2 Pro

this patch reflect the change in dt-bindings.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 0647851ae1f5..25f509b943af 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -157,7 +157,7 @@ properties:
               - bananapi,bpi-m2s
               - khadas,vim3
               - libretech,aml-a311d-cc
-              - radxa,zero2
+              - radxa,zero-2pro
           - const: amlogic,a311d
           - const: amlogic,g12b
 
-- 
2.43.0


