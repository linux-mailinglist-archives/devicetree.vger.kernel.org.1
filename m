Return-Path: <devicetree+bounces-251692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C297ACF5A27
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 22:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B6E730B5DA4
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 21:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0B152DE709;
	Mon,  5 Jan 2026 21:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrX9IdgL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D9F2DCBFD;
	Mon,  5 Jan 2026 21:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767647590; cv=none; b=WbikJ1Rx6dOlCkpDETsRy/poGKpN3U+LfcWFbLbnoLdb22aZGY9zhmU4IA+om36T2+HZ5q8o1txeWu2oZ6zT1y0AR/L+/qj9G3fE8M44hq0QQBUrLzI/BsqL65ATQAV0QZBmNcU0O7nc5jGtfL5xrrThzmDW5xVn2v0pTizfcO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767647590; c=relaxed/simple;
	bh=ZOsnvAfKrpaoK0R9lNdOOA4UQsB39sIw2cHsrDaEZZo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xabmv7ojR6ulVKhkUBrOOXA9T16tnhNBgqYwx2XrsBC/Ze/ueIrAUWJc9xcPn869/p8wJEcF8OBdWpYmTgSrWgGLjqFxBNx2HXqmb8OWrvZciIoFAkPbeo/KDYOxr7ics0TiWAjjDNTpqUurI5hKqj/TElhk+NwRSe/2HK50TFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrX9IdgL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D5A3C116D0;
	Mon,  5 Jan 2026 21:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767647590;
	bh=ZOsnvAfKrpaoK0R9lNdOOA4UQsB39sIw2cHsrDaEZZo=;
	h=From:To:Cc:Subject:Date:From;
	b=SrX9IdgLfVDGS2/8KosytwgTNoCRZ1SMKKAU3je7d4//CS0NOE2RXcSmZAuNdotnj
	 nogrm6OBglhoxwK+iXEhteMIvSJ6F4hnqERuFjoDtzz5FjzHxn4ETzIeT/j2lY1rAp
	 bGnU47O6wmsBAZA0v+sxA+uFnGBYq70tBR5TUne46Bt3FHpigYLP9G7a6W8wNQ5nOY
	 egzbXOlLTGzJJzJLD7ZLU/zsQUb5ix5VhHaujUnynO2YcqTzqWvES9BRz9BFWhdzEl
	 nG7tcpJ5jx77pSRWhoquWhQVZDd+pe+hp9+DHAZXbsc2GPPcqerh4ej86nRh2D42nj
	 wKFpbZa9xEq3g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: trivial-devices: Add some more undocumented devices
Date: Mon,  5 Jan 2026 15:12:54 -0600
Message-ID: <20260105211255.3431856-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a few trivial devices which are already in use in Nuvoton
and ASpeed DTS files.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..6f98ccd6cfec 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -91,6 +91,8 @@ properties:
           - delta,ahe50dc-fan
             # Delta Electronics DPS-650-AB power supply
           - delta,dps650ab
+            # Delta Electronics DPS-800-AB power supply
+          - delta,dps800
             # Delta Electronics DPS920AB 920W 54V Power Supply
           - delta,dps920ab
             # 1/4 Brick DC/DC Regulated Power Module
@@ -133,10 +135,14 @@ properties:
           - ibm,cffps2
             # IBM On-Chip Controller hwmon device
           - ibm,p8-occ-hwmon
+            # Infineon Digital Multi-phase Controller
+          - infineon,ir35221
             # Infineon IR36021 digital POL buck controller
           - infineon,ir36021
             # Infineon IRPS5401 Voltage Regulator (PMIC)
           - infineon,irps5401
+            # Infineon Digital Dual Output 6+1 VR12.5 & VR13 CPU Controller
+          - infineon,pxe1610
             # Infineon Hot-swap controller xdp710
           - infineon,xdp710
             # Infineon Multi-phase Digital VR Controller xdpe11280
-- 
2.51.0


