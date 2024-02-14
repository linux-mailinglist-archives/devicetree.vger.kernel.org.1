Return-Path: <devicetree+bounces-41690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C81D9854C23
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 16:04:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 850B028A700
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 15:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C565C5FA;
	Wed, 14 Feb 2024 15:03:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1055B671
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 15:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707923029; cv=none; b=E5aiz/PRNSD76x3gPIVfmJtdUy+/mJwbdpqlDs60+FR5tieJ/WjFDzJr7hu9Nm6o5qaWdsjVRQahAZFgDiz3khWZwH5rHLprGmF+7mwUDStVAlg1idDV8TFHhdRTUSSSCMLVhOV53kogl6xMVrP4Z2QEKfTP8U8PYqDh65zqlb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707923029; c=relaxed/simple;
	bh=3vcGEY2nCwbKZOblmIruG0DS1Vlu/ShsWXJ73KL92qs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UZR4AET44/f3hORHqTERG9BKzTdyoScq48GDZ+JroOm+FnT5p337TSQdUnlsatHNLndFWPCSYf3THZ6tTCiUvEiOX2Vz8isS8KKAI9EfeKMp6FTKOkSt/upjRdc0HEXBPJ0MzafSyjw+jcnJNPXV+sbhEi4+gSldjrSq1DYpLrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:ac52:3a54:2a84:d65a])
	by laurent.telenet-ops.be with bizsmtp
	id n33k2B0060LVNSS0133k12; Wed, 14 Feb 2024 16:03:44 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1raGnR-000dDp-Bj;
	Wed, 14 Feb 2024 16:03:44 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1raGnX-00H2FP-VY;
	Wed, 14 Feb 2024 16:03:43 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Support Opensource <support.opensource@diasemi.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Steve Twiss <stwiss.opensource@diasemi.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: mfd: dlg,da9063: Make #interrupt-cells required
Date: Wed, 14 Feb 2024 16:03:42 +0100
Message-Id: <2212567f4c17251011e5e0bfa4ea0126d9815d39.1707922672.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'#interrupt-cells' is a required property for interrupt providers, hence
make it required.

While at it, move '#interrupt-cells' in the example to match common sort
order.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/mfd/dlg,da9063.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
index c5a7e10d7d80e8d7..e5ccc2708f0bb0f8 100644
--- a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
+++ b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
@@ -87,6 +87,7 @@ required:
   - reg
   - interrupts
   - interrupt-controller
+  - '#interrupt-cells'
 
 additionalProperties: false
 
@@ -99,10 +100,10 @@ examples:
       pmic@58 {
         compatible = "dlg,da9063";
         reg = <0x58>;
-        #interrupt-cells = <2>;
         interrupt-parent = <&gpio6>;
         interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
         interrupt-controller;
+        #interrupt-cells = <2>;
 
         rtc {
           compatible = "dlg,da9063-rtc";
-- 
2.34.1


