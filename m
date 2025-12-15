Return-Path: <devicetree+bounces-246805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F0BCBFFC1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4FEE303C9D3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F3E2E36F8;
	Mon, 15 Dec 2025 21:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goeXrmN1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEE1299A84;
	Mon, 15 Dec 2025 21:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834645; cv=none; b=KlZBLkU3Hrdos4copOCeoqdPyVCNGu8Iy/2mt0tf1FX/8HGKltinTEzOJiiPt0Oyd3PnL+mEmA2vD11J12imRIZCT65xsgeUjFLiqD3c4rAa7TVYrrhpSbA8Vpy4lQ+98sHekdjY/Hsyvo0FlN7vl/5FFy/pb0v5o7yGbiK2tbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834645; c=relaxed/simple;
	bh=wmjDBhckxO9cRIHd2f6bnvjoFkSVEjiuEsebiJDC2DE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jjiGbrVaxEvGSjTxHXi6cCO/vq/IyA99PgBgJt7DQFLwuukZv27SEb2XmVT3lhcRbAtxPBuu+F9yvMZ0jdNdoD0ZTTEytHrCZOHOWdssVDt4gYhSH+JJIl3bYWTS53R+31LeFEO9aMwxrGep8T1AmP3cU0q7mihn5k1Lp0a+O/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goeXrmN1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E23BAC4CEF5;
	Mon, 15 Dec 2025 21:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834645;
	bh=wmjDBhckxO9cRIHd2f6bnvjoFkSVEjiuEsebiJDC2DE=;
	h=From:To:Cc:Subject:Date:From;
	b=goeXrmN13YhUySTuMj4Nrbvpzs8W3dpD3jVhIUfys8R4l3kkEK9v0BZy7CCNYBlBP
	 xk93RAEiKW3TycTO8GAqJbDNxlL9r50WMbS6NEbBfyBEa8Cbw0lKWEGSY46I1emFCj
	 V3qWgalKiUV2Jx2QoVu7hiOItVAyZd0QVSlCbjs/d2jknO+sJd7BVZ0vQ86Ci8P6SN
	 qRPF/Z+AIrA/ZPIte6hIJF+xX+lS4/wpPjKoHWc1dY5e9BuLFjWeyP4DTRZkc0gM20
	 HKRv/BY1UqAKr64NpTMjaLjZCzKpwO7z3dQdl+2VMJsmPHaeWl8eT9bHH2nPPsLk87
	 R3oRSkCQdk0TQ==
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
Subject: [PATCH v2] dt-bindings: raspberrypi,bcm2835-firmware: Add 'power' and gpio-hog nodes
Date: Mon, 15 Dec 2025 15:35:14 -0600
Message-ID: <20251215213513.3331128-2-robh@kernel.org>
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
also already in use.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v2:
 - The error in the hog pattern was from my own bad addition, so fix the 
   patch to add gpio hog nodes.

 .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 8349c0a854d9..983ea80eaec9 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -65,6 +65,11 @@ properties:
       gpio-line-names:
         minItems: 8
 
+    patternProperties:
+      '-hog$':
+        required:
+          - gpio-hog
+
     required:
       - compatible
       - gpio-controller
@@ -87,6 +92,9 @@ properties:
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


