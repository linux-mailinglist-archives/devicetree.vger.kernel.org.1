Return-Path: <devicetree+bounces-157910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A8A63605
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 15:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71F2618912A6
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 14:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30151A0BFA;
	Sun, 16 Mar 2025 14:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="QLXIhoWr"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20FA1AA795
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 14:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742134612; cv=none; b=J27yncRw0Lki11Flax42BPpyRByL290HaG2d3ZFNw79ud/clCOi/kc43iuUl21EPu7jjxWOBNZ+x4xBIHsoh/vb2aMufZ4a8/TYp4r1UVIlgRaDtjr/77uyPEDc7w2uswyJRxx7/FbHX9Wrrz21m/FrFhPk39eIVu+1ce9wGw4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742134612; c=relaxed/simple;
	bh=jeWZqavZfRXgYYX4zP2y8nZT3UpxazVrUKQLq8DvLd0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rt+VtO+++2ZKtgZ8G01QdfdQpD8Q5BaGFEKK73o24yOLWmRGvbRQyhO5/6aTgclKakydy20ZK5NTwTO2B2AoegbXnQpKhjWyLc0HCgvr7Jhks4ibf2MU0JhAwl8V3h0ASBHn3ba6HBkQPS6lkzyX4vYoJ48Mu+XDmgknfIg7Wa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=QLXIhoWr; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ELXYN8DbWtgn56Jg22wiL3THsOObl/QQKHwLwJdUE+A=; b=QLXIhoWr+uqOxdqiSbeiicz9RV
	OU24vMwykgPqymnh2+EfX7Oyy+XGN8qUk48YGSZ+y+BZ/rGdLZLcDTMoF8mwcMMZ3TjxNnoYjnN5b
	V0/yypmIA0mHYWqDQb/kEAXDZl5/K8AB/FUXjRPGzzKzrbF29E4WipX/If05OIPz2hn9FPcSy2Cxg
	47fgiPkk5ODG6+3/f+7b+yy8S2CcvqU8655c0kdNylGAfHNwgqIXgVzQUwGjWsUt3y0IeolSnjkbe
	HW0/Pfh0RUJGdXVZ6Hoxm3hImRAwxljXgfza2pXrFa9B+3BM+I2P0sGQqdKUXcTsXqPEWE0zrstRU
	u1YjL4Xw==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ttonD-0016D3-AA; Sun, 16 Mar 2025 15:16:43 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Sun, 16 Mar 2025 11:15:11 -0300
Subject: [PATCH v5 4/6] dt-bindings: gpu: v3d: Add additional examples to
 improve binding checks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250316-v3d-gpu-reset-fixes-v5-4-9779cdb12f06@igalia.com>
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
In-Reply-To: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2035; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=jeWZqavZfRXgYYX4zP2y8nZT3UpxazVrUKQLq8DvLd0=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn1t0yn1ETNWbomfxZiZ0UgCscyYueza8uBl6s+
 mZNBNSbr0qJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9bdMgAKCRA/8w6Kdoj6
 qr1MCACaFdaQJvOD/GrrERMb5AAGguigA3/qibtBitwxqN81n2uUSXGElZhtUQXEUQy84OF8GnV
 dDgljfIdtmWnVUNvUCj7YfAFS6tVPZrAj6NnsLhVL3fr8jFf2BaIIr9aa0CbkT8QbE7K4RLqG+6
 IDAw2yPnwaABd55szFKirVIyheny7Xck3xnLAn+hGvxlxYG4yWRp2fQngJCHfR8L/Z8gqI6Sm5Z
 dc/muPJaQOy3vIsVLdIGeY0/fxmNo23ozVl2yNU3N+tkfrXJbRBkvNNTPhk8VeTivVtu/i4P0sU
 kQZGb2/zbjxAbUAiWLDIxyQ/04QBLZ+4lcKXe7LPqKmCb2eE
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

To prevent future changes that might inadvertently break the ABI, add
more examples to the binding. These examples improve coverage and help
ensure `make dt_binding_check` produces more robust validation results.

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 34 ++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 766a310ab653855d7cc9a80f18c2083218fe307e..39b8f0ee1f727628307d758844008ae1189902b2 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -123,6 +123,38 @@ allOf:
 additionalProperties: false
 
 examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/soc/bcm2835-pm.h>
+
+    gpu@7ec00000 {
+      compatible= "brcm,2711-v3d";
+      reg = <0x7ec00000 0x4000>,
+            <0x7ec04000 0x4000>;
+      reg-names = "hub", "core0";
+
+      power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
+      resets = <&pm BCM2835_RESET_V3D>;
+      interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/soc/bcm2835-pm.h>
+
+    gpu@2000000 {
+      compatible = "brcm,2712-v3d";
+      reg = <0x02000000 0x4000>,
+            <0x02008000 0x6000>,
+            <0x02030800 0x0700>;
+      reg-names = "hub", "core0", "sms";
+
+      power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
+      resets = <&pm BCM2835_RESET_V3D>;
+      interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
   - |
     gpu@f1200000 {
       compatible = "brcm,7268-v3d";
@@ -134,5 +166,3 @@ examples:
       interrupts = <0 78 4>,
                    <0 77 4>;
     };
-
-...

-- 
Git-154)


