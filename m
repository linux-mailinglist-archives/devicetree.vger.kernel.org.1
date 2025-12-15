Return-Path: <devicetree+bounces-246792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E48D9CBFF06
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE2313038F6E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E710432ABC0;
	Mon, 15 Dec 2025 21:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUaXO1Mm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF63B32AACA;
	Mon, 15 Dec 2025 21:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765833978; cv=none; b=ko4wmEKUTLSHPH9qzEdEhipTR9je9eft2Sh2W31ZSMSWj10U2dbLEBvefaggv+Pk6CnkksLwEguJRc85uIA5hr7VBVvCnNwtQ1WR0UxB361xaaUYr1Q9QUqm9/yYv3IVWDCCAd2eEL2FixWG6UN0TNsCBn0u28NjiSvMEmrq6Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765833978; c=relaxed/simple;
	bh=qW+J0TQSffz7lEd1Su404eSJR1qGFWahPOvcVuD8H0g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kgex1tWRpKBbE7O01ZlIqXeGQFJazjhUU4MdR8iL7WpGgBgVM0G6vhFV1bPNDzYM24KTzjhfczDzWZiWeFiN2xmXGHV4ulRIeyuuTVyhWl8kkuehe24jIQuaC2rPnJYk82HSXekZ2y+cLh8ot2GtNX2hLM3raGWAdIwsfXFXddk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUaXO1Mm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28408C4CEF5;
	Mon, 15 Dec 2025 21:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765833978;
	bh=qW+J0TQSffz7lEd1Su404eSJR1qGFWahPOvcVuD8H0g=;
	h=From:To:Cc:Subject:Date:From;
	b=LUaXO1Mmogzvsgnl8TOoxhHfgiXR9IKuU1jZuSCZ4+Yw1lSF9rCkRGvcl3PhUCLcG
	 tnaMHo+OdldBGEuhqpHm5oGAB+K1qRRznj7b5udex5AIuy7VUH5rqPvwTJ7IegTFBo
	 SYW/RhUiLVmw4Ksis0FAIS1s6hvIxcHp7km64Xo+sksr4lCV3dGKaKBCFLhWF1MV68
	 oSh1o5aBPf/zhaGN0ZtwMD3FcrUQdtjmv6097JVnAZsxtZVKHguQz7mQbEGsyf0lF3
	 MVrmC/nPeSlmdY9lW6WvI7hbppoXP06p3chGE2aEKU5qKDxr9PDUS5FjdFu67fZODl
	 KbKEj0KglfOug==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>
Cc: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: raspberrypi,bcm2835-firmware: Add 'power' and gpio-hog nodes
Date: Mon, 15 Dec 2025 15:25:54 -0600
Message-ID: <20251215212554.3319105-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add missing child nodes for the RaspberryPi firmware. The firmware
implements a power domain provider in a 'power' node. GPIO hog nodes are
also supported, but the node name pattern was wrong and failed to match
them.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml       | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 266ed6e61cee..983ea80eaec9 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -66,7 +66,7 @@ properties:
         minItems: 8
 
     patternProperties:
-      '^-hog$':
+      '-hog$':
         required:
           - gpio-hog
 
@@ -92,6 +92,9 @@ properties:
       - compatible
       - "#reset-cells"
 
+  power:
+    $ref: /schemas/power/raspberrypi,bcm2835-power.yaml#
+
   pwm:
     type: object
     additionalProperties: false
-- 
2.51.0


