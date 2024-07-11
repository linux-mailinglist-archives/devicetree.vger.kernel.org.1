Return-Path: <devicetree+bounces-85121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 367BB92F042
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 22:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9D1EB22411
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 20:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DDE19EEBB;
	Thu, 11 Jul 2024 20:20:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A140016D4CA
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 20:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720729234; cv=none; b=uGyjUW7oaiJLEruGxjuXMa036rZlOlbIjtbCWxXdZtLRE4ykliz/rUpQ1CNFAH0z7UKSg1L8q0q7xb6TsLwBwwZc45etv1RkAMUr/sdrpWyWIMWLrh9T5MZ2yldA0tiD5wFwwIIhG1GACzyKdYkypPBarxLz0WmIhbxHfTZ91Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720729234; c=relaxed/simple;
	bh=KM/WoPF6j28Y14gBvtypguPcjub+gGWxc8/USBq3+1o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rn/SJMm5xGksBjA6BKXwklmcJL5G6xVFHm2QGwldDuUu6trQ119XhoSnXl7VTPSBTIADNdJxqVU8zuq0S2fCsQX7qfMbMFju6iJMTMb2oWy58IKwJIsp6ezrlEKGO6U/zhS65HblxuEC5DgLwQdaBvAM6j9lpG4GofGWizQbRCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46BKKIqP002209;
	Fri, 12 Jul 2024 05:20:18 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: amlogic: add support for Radxa ZERO 2 Pro
Date: Fri, 12 Jul 2024 05:20:12 +0900
Message-ID: <20240711202013.26573-1-naoki@radxa.com>
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

Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 0647851ae1f5..66745b4f5eca 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -157,6 +157,7 @@ properties:
               - bananapi,bpi-m2s
               - khadas,vim3
               - libretech,aml-a311d-cc
+              - radxa,zero-2pro
               - radxa,zero2
           - const: amlogic,a311d
           - const: amlogic,g12b
-- 
2.43.0


