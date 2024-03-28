Return-Path: <devicetree+bounces-48745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E7587351A
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 11:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 435FF2853E8
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 10:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3713176022;
	Wed,  6 Mar 2024 10:56:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [195.130.132.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17A6763FC
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709722578; cv=none; b=kbXBOQq4GG6YRjKViDq8l0FZfRM+yDl0SlqawQSwQWTtO7eRogvC58I8jjGtXlbo7rfUONMv4LW2DHUW4ROqi9bhnnfKDrOoJYG5rd2mbAON88mioqgCQ8p4iAtAg0Cv89adJGnaspW5iKtqhWf3q83yWW6BS3qQxN+snbBtRNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709722578; c=relaxed/simple;
	bh=TJ24aG+kXCjYheKsA0o5PbfPeY9Fd1hO9Wj5VYe2+Hw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HebJg/QoaTTCpJ8m9U533t6Zbzt2ZD9P905UussO1Wz2DyVgcw7GDqXBQSYOg1qlvbQSMwCkvP+WboqpV2fCkcQTfHQVpjIGy7en0niZPTxcMc0qfAXWj8vtveT02rqPbgkiIo7vw4uhxdjx/yWRnuBRqfVt0KPEnBZ+6E+Dv2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([84.195.187.55])
	by xavier.telenet-ops.be with bizsmtp
	id vNw42B00T1C8whw01Nw4R6; Wed, 06 Mar 2024 11:56:08 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rhowB-002Y8k-1m;
	Wed, 06 Mar 2024 11:56:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rhowO-00EMJg-8n;
	Wed, 06 Mar 2024 11:56:04 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Duy Nguyen <duy.nguyen.rh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] dt-bindings: thermal: rcar-gen3-thermal: Add r8a779h0 support
Date: Wed,  6 Mar 2024 11:56:02 +0100
Message-Id: <b3d135f8b63b9fe2d0f0aa2e48c8a2211b2e947e.1709722342.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1709722342.git.geert+renesas@glider.be>
References: <cover.1709722342.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Duy Nguyen <duy.nguyen.rh@renesas.com>

Document support for the Thermal Sensor/Chip Internal Voltage
Monitor/Core Voltage Monitor (THS/CIVM/CVM) on the Renesas R-Car V4M
(R8A779H0) SoC.

Just like on other R-Car Gen4 SoCs, interrupts are not routed to the
INTC-AP (GIC) but to the Error Control Module (ECM).

Signed-off-by: Duy Nguyen <duy.nguyen.rh@renesas.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Changes compared to the BSP:
  - No interrupts property, as interrupts are routed to the ECM.
---
 .../devicetree/bindings/thermal/rcar-gen3-thermal.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml b/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml
index ecf276fd155cfb27..6a81cb6e11bc1e14 100644
--- a/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rcar-gen3-thermal.yaml
@@ -29,6 +29,7 @@ properties:
       - renesas,r8a779a0-thermal # R-Car V3U
       - renesas,r8a779f0-thermal # R-Car S4-8
       - renesas,r8a779g0-thermal # R-Car V4H
+      - renesas,r8a779h0-thermal # R-Car V4M
 
   reg: true
 
@@ -90,6 +91,7 @@ else:
             enum:
               - renesas,r8a779f0-thermal
               - renesas,r8a779g0-thermal
+              - renesas,r8a779h0-thermal
   then:
     required:
       - interrupts
-- 
2.34.1


