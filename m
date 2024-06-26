Return-Path: <devicetree+bounces-79964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CA691778A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 06:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E26592839BD
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 04:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4231214EC59;
	Wed, 26 Jun 2024 04:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="R6kuCHw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4656C14A4EB
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376942; cv=none; b=BEJ4P5pXUNYmpEwlZZaiAKcmnm3A/LWL2KhmntTvdQXUphJbwc0+wvSdtJfhx0XPWZwjDVO/QT+VlN31hQB6ZMY6nwPSn7u5eZHml9gxVI4oEjXxE4fg6O/wl1HbuV9kaXc0HuxDsLSHavAre7FIvDRYPVCgByKQ4mte7Wcq5EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376942; c=relaxed/simple;
	bh=J/PLgkHkOsr2eBTn5nMQzSYBYyLV+wS3IDQLohuTDiY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tEnLbVHaHbeE8qkYwmx95H6B46fUIOAqT9TklWkoP1UGM3WvXP8IjnrUsAyOsKvj9ugEPX3ouseq+Bzo/XeBzSf/F5N3nmK13fq8DeP1V0ej72uJtE8NYmInzSvz5+jYuB3uZeolZRq5NXTUJyT3DUe6T/jpmIvHybjb5pSf+SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=R6kuCHw1; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 20240626044210251e66100b6cb17880
        for <devicetree@vger.kernel.org>;
        Wed, 26 Jun 2024 06:42:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=PYDTR3Dp5LCkhODZw+ueFbI4XXSedtoAqEfw3je+soA=;
 b=R6kuCHw1U+lzDmCfio2GiwZFZGb2UDreXyxQp3KJ/8SBZsr7SMh8AOZAs3sg88a/+MaYuS
 5vgehQp+NEBkZ21fo2uH/6dQ2HX8arlquUWLwA4Uew5es28iNZ0XeuKcTqcyqmzsC/pn4a6d
 MvD+5x4gnesepP03GhotsYD8rYVxI=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v2 3/4] dt-bindings: soc: ti: am645-system-controller: add child nodes used by main domain
Date: Wed, 26 Jun 2024 06:42:07 +0200
Message-ID: <1ac6bf9ef2d77dfc606a825d768bd4d23853052a.1719376928.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1719376928.git.jan.kiszka@siemens.com>
References: <cover.1719376928.git.jan.kiszka@siemens.com>
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

Expand bindings to cover both the MCU and the main usage of the AM654
system controller.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../soc/ti/ti,am654-system-controller.yaml    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
index e79803e586ca..a03e13cf2677 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
@@ -34,6 +34,31 @@ patternProperties:
     type: object
     $ref: /schemas/phy/ti,phy-gmii-sel.yaml#
 
+  "^mux-controller$":
+    type: object
+    ref: /schemas/mux/reg-mux.yaml#
+    description:
+      This is the SERDES lane control mux.
+
+  "^clock@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/soc/ti/ti,am654-serdes-ctrl.yaml#
+
+  "^dss-oldi-io-ctrl@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/mfd/syscon.yaml#
+    properties:
+      compatible:
+        items:
+          - const: ti,am654-dss-oldi-io-ctrl
+          - const: syscon
+
+  "^clock-controller@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/clock/ti,am654-ehrpwm-tbclk.yaml#
+    description:
+      Clock provider for TI EHRPWM nodes.
+
 required:
   - compatible
   - reg
-- 
2.43.0


