Return-Path: <devicetree+bounces-89997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2A294371A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 22:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 149D7B21E8E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 20:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4352A167DB7;
	Wed, 31 Jul 2024 20:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="ReTkS81C"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3430C39FD6
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 20:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722457743; cv=none; b=VcNrw3FkQwHS8RzVkjnPUz8byDoh25ut5cMzKfMTTtPmNPpljSDw78pvMkW5vB6kvUxWDWOkzs5hwSYQ3TrVSOxebYpEXTNPbfjUf1jr6QO6uAMK4E1pjhhpg6syemVf3//+D0W4NeWqPMnR73aHspUoQ5MxaRqipmFtigAsG9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722457743; c=relaxed/simple;
	bh=CGKMeIQa+DswDjqPvPGrT1iU+xUvqELae77loCXpDe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aiEfLC0z2g1po0qK6yenM4nLaztHQjborLzAJNKkdF1HmGHlVVshXnz6O5/FyM6FvT69FkF73sgVY/J92D9VTnjTXjj7HemQ3UUzTJ5ElNaSQ8Z1zEkFuZeiz1AIlyJ2hXZCrAJ0YV/Ju50wt6TMMTfkzJIeL6ieCyKY+oqvxxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=ReTkS81C; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 2024073120184436d9c86b37dec12a62
        for <devicetree@vger.kernel.org>;
        Wed, 31 Jul 2024 22:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=XuWSafTJqaueVcFk2YDwRANMa4TvCIZ5dW42gSq/JL0=;
 b=ReTkS81ClDctxkCCZdavcnAnLidOLfLpzOsuB6CsAwphoN6ZuOp21ev3CsshrA/EACYX/v
 cfiUoDHenQEhL47UhvxNR2LWyTski6jTWUP4rM+5I9u4pL/b8qRfiSgiE8ZNk8wFxf0MVKt/
 wnRqMnYgspm7OaaPBneal4JEDjmJlk/8aUx97Q/2q2IaDHgNxc9rFDDMSmbP+Mys9B9vp/SF
 JObj/OW8MMe05ZXHgjc7XI9oEIp9qQwVDdhSCpvoIh1LsARZEdVZPyAYHHKRSXgZzBHmN0fY
 kxKB+04cgGK9NE0N7O93TgM/2/as9S3jLTJcsAVR4/VPdgB5MN49EtsQ==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Minda Chen <minda.chen@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: phy: jh7110-usb-phy: Add sys-syscon property
Date: Wed, 31 Jul 2024 22:18:41 +0200
Message-ID: <ebcfe039b13097e53b3721f56a45d99807f2925b.1722457123.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1722457123.git.jan.kiszka@siemens.com>
References: <cover.1722457123.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Analogously to the PCI PHY, access to sys_syscon is needed to connect
the USB PHY to its controller.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
---
 .../bindings/phy/starfive,jh7110-usb-phy.yaml         | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
index 269e9f9f12b6..eaf0050c6f17 100644
--- a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
@@ -19,6 +19,16 @@ properties:
   "#phy-cells":
     const: 0
 
+  starfive,sys-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to System Register Controller sys_syscon node.
+          - description: PHY connect offset of SYS_SYSCONSAIF__SYSCFG register for USB PHY.
+    description:
+      The phandle to System Register Controller syscon node and the PHY connect offset
+      of SYS_SYSCONSAIF__SYSCFG register. Connect PHY to USB controller.
+
   clocks:
     items:
       - description: PHY 125m
@@ -47,4 +57,5 @@ examples:
                  <&stgcrg 6>;
         clock-names = "125m", "app_125m";
         #phy-cells = <0>;
+        starfive,sys-syscon = <&sys_syscon 0x18>;
     };
-- 
2.43.0


