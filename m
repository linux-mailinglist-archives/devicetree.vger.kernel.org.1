Return-Path: <devicetree+bounces-132337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF969F6A26
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:36:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5ABE16D078
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B591E9B24;
	Wed, 18 Dec 2024 15:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="QdE88gPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4631B0422;
	Wed, 18 Dec 2024 15:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734536211; cv=none; b=Sp4opOethmyWOCx/btY9OfMGokyTl/EXc4NBO5dHlK+9RaC8ApIytJmuVqmGOixHFfE7/WWL34foanlC41aqFxH7lJKo6ddtG8QCgOWHlmP3gGmf2xq6F0pBuITeT0KP7nLB/uJ/rrRrEqY+uc01q0xt+5DeAfIq6w7oLDYVAL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734536211; c=relaxed/simple;
	bh=BMH5rrhbC+u2jyldBzyRDrD54MB8quvHIna1qavTu10=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gOWFys+BYTa5HIk3xxcWDKBUzcygoghEKCcFx354JW5zY5PzqJkNMe/XMp/BUwQFnBeYfD6BXAfvGKAgfQM3BlBZJhZGfDqgWfnr5Jq3SYgWM2AETvnKtuj2Y2z0UypWeXZTM0YjqYaJvfJ7DFeUIRpQ5EEBl0BfuYIj8QDA1BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=QdE88gPg; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0B5DBBFB6E;
	Wed, 18 Dec 2024 16:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1734535784; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=yh3ZExazNltGzZe8WVzy/cDKm78b5w2/yFmw+OUhd5Y=;
	b=QdE88gPg/ef2/e/VnVc4Spr18mnsN5mupz+vMS2VuFDKS76pX+BqSbXuy5lH6K/UYFSuW9
	dBlw9KKNuTmlwwsUa4TvszkEpzgx0e+Cg2TH3e1XjFiAsqQ4a4wsDKueCgvDBk+Mz5FN+x
	J+fe1lOhM9FiJqfogri3y09S+GBznCEfXFM7iHOvWjzJxGq9iDC27tKmRNeSWvh5Gu3leZ
	boT2UNULs1pDOcA1Dh8O3/vwPM6fHBDlmLJsDJGvjofOXRNV33YjCgRVNvG2vLwFaMLLxp
	PYh45fuYMv+35Ujj7l7FpJPWt744lswcsmIdzsBTgncVJL4fxgTPrkNqXJyPvg==
From: Frieder Schrempf <frieder@fris.de>
To: linux-arm-kernel@lists.infradead.org,
	Marek Vasut <marex@denx.de>,
	Conor Dooley <conor@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Robin Gong <yibin.gong@nxp.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Conor Dooley <conor.dooley@microchip.com>,
	Joy Zou <joy.zou@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/9] dt-bindings: regulator: pca9450: Add properties for handling LDO5
Date: Wed, 18 Dec 2024 16:27:24 +0100
Message-ID: <20241218152842.97483-2-frieder@fris.de>
In-Reply-To: <20241218152842.97483-1-frieder@fris.de>
References: <20241218152842.97483-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

This reverts commit 27866e3e8a7e93494f8374f48061aa73ee46ceb2 and
implements a new future-proof way of handling the mismatch between
the PMIC driver and the hardware for LDO5.

It turned out that this feature was implemented based on the wrong
assumption that the SD_VSEL signal needs to be controlled as GPIO
in any case.

In fact the straight-forward approach is to mux the signal as
USDHC_VSELECT and let the USDHC controller do the job.

Most users never even used this property and the few who did have
been or are getting migrated to the alternative approach.

In order to know the current status (which of the two control
registers is used) for the LDO5 regulator, we need to route back the
USDHC_VSELECT signal by setting the SION bit in the IOMUX.

By adding the according GPIO as sd-vsel-gpios to the LDO5 node, we
allow the regulator driver to sample the current status of the
SD_VSEL signal that is used to select the correct control register.

The SD_VSEL on the PMIC is always an input. It's driven by the SoC's
VSELECT signal (controlled by the USDHC controller) and we use the
SION bit in the IOMUX to internally loop back the signal in order to
sample it using the GPIO.

As the SD_VSEL pin is directly routed to the LDO5 regulator in the
PMIC, make the sd-vsel-gpios property part of the LDO5 node.

SoC                                  PMIC
+-----------------------+           +-------------------+
|                       |           |                   |
|                       |           |                   |
|  GPIO <----------+    |           |                   |
|                  |    |    SD_VSEL|   +-------+       |
|  USDHC_VSELECT ->+------------------->| LDO5  |       |
|                       |           |   +-------+       |
|                       |           |                   |
+-----------------------+           +-------------------+

For boards which have the SD_VSEL tied to a fixed low level, we add
'nxp,sd-vsel-fixed-low'. The voltage of LDO5 is therefore only controlled
by writing to the LDO5CTRL_L register.

If none of 'nxp,sd-vsel-fixed-low' or 'sd-vsel-gpios' is set, we keep
the same behavior as before. The driver assumes that SD_VSEL is tied
high and the LDO5CTRL_H register can be used, which is in fact not true
for all known boards and works merely by chance.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
Changes for v3:
* Merge binding patches into single patch
* Rebase to next-20241218

Changes for v2:
* split revert into separate patch
* extend commit message
* add 'nxp,sd-vsel-fixed-low'
---
 .../regulator/nxp,pca9450-regulator.yaml      | 29 +++++++++++++++----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml b/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
index 68709a7dc43f1..7605a05a9eedf 100644
--- a/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
@@ -42,8 +42,30 @@ properties:
     description: |
       list of regulators provided by this controller
 
+    properties:
+      LDO5:
+        type: object
+        $ref: regulator.yaml#
+        description:
+          Properties for single LDO5 regulator.
+
+        properties:
+          nxp,sd-vsel-fixed-low:
+            type: boolean
+            description:
+              Let the driver know that SD_VSEL is hardwired to low level and
+              there is no GPIO to get the actual value from.
+
+          sd-vsel-gpios:
+            description:
+              GPIO that can be used to read the current status of the SD_VSEL
+              signal in order for the driver to know if LDO5CTRL_L or LDO5CTRL_H
+              is used by the hardware.
+
+        unevaluatedProperties: false
+
     patternProperties:
-      "^LDO[1-5]$":
+      "^LDO[1-4]$":
         type: object
         $ref: regulator.yaml#
         description:
@@ -78,11 +100,6 @@ properties:
 
     additionalProperties: false
 
-  sd-vsel-gpios:
-    description: GPIO that is used to switch LDO5 between being configured by
-      LDO5CTRL_L or LDO5CTRL_H register. Use this if the SD_VSEL signal is
-      connected to a host GPIO.
-
   nxp,i2c-lt-enable:
     type: boolean
     description:
-- 
2.47.1


