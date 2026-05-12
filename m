Return-Path: <devicetree+bounces-296014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iD/IFfW4AmonwAEAu9opvQ
	(envelope-from <devicetree+bounces-296014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:21:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E232519D70
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 257153010F14
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FD933D51A;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l09k1Uam"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBAB3328FA;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563300; cv=none; b=CpEaz4J9Qbw4FWPsRaAYEB6RVc4Zm21VRp9nYuOQ3jjwC/h7j8ko7XVHdhEO7tMy3Ag2Xx1F+fi4fSvW7kp3zlSi/UMJT+Whg6dd4svyVZB4I11OBAOZ6tLeXxrHmS3EHqa5OLkDbWsRohpf+55xjB+7BqW0C5WDFtpoGJss34c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563300; c=relaxed/simple;
	bh=aGHT9z1n3C9+p+Out5mHqpcJwPXX+WklX7bs9Uz0sH8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kiDZGuiYCABk15YNVrgbzBkfwR4m8afz44x0UIBbwoaSKGlP5CL6Q2cweJMo/R0DUwOwQUqYDRkQOWJ/ebiC/zcAfxz2MYHrjz9bAwdEnWpCoFnATxPgIth044qJTe4Iz3H4x2AlCE0xIlV5VOqAIv26mMf1AhYEoW5/c/X2EvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l09k1Uam; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00B7C4AF18;
	Tue, 12 May 2026 05:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563300;
	bh=aGHT9z1n3C9+p+Out5mHqpcJwPXX+WklX7bs9Uz0sH8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=l09k1Uam453DaWI8qML4bLCZQ2dTuVOdbDa6f7b6qLpbrprwQLPE3lS4+g4fdm5XM
	 VpDv6RTYiErKWDblTNhbgKTfL3jT+JBA3brMS0RNLbt7DL9hSo7fsNvfX0e97wZxAM
	 Gfh/MPlwPPupLTmTzHH7N3SkN/CTqDicJrx6PFSTK1eUvofdmoL7+CM08gYAGWnF40
	 EQn46AC0anELq6ZM8z82O33cjs3txzU2ocFAuPWB4ce3ifO9AJQnx5AWMwwTZirhJw
	 QiCcLNgAsMwjalQvKp0vCPSHB9hPjOd0t4pmoEpBXOau/UQuLDqPwbh9XECHYPsYpk
	 WZQNuV9+JLLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CC6CD4F22;
	Tue, 12 May 2026 05:21:39 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Tue, 12 May 2026 08:18:18 +0300
Subject: [PATCH v2 04/16] dt-bindings: mfd: mediatek: mt6397: add mt6323
 PMIC thermal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-mt6323-v2-4-3efcba579e88@protonmail.com>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
In-Reply-To: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Roman Vivchar <rva333@protonmail.com>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ben Grisdale <bengris32@protonmail.ch>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778563297; l=2547;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=ZpxlgI78YGvqL6f2ifb/QUYUxotfv5VA81LyEjs6Ymg=;
 b=5BpWueZ6TOkGclDn87Sy1sIhi9IvwPL+bOAayzD9G/vf7l+pNOHAza/evuYJiGk/kmkMyaTE6
 fLx7vC0yprjDBloMp/NHwxiCGAjDohboW+0tPC3yFrcGLM/t0thkt9k
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Queue-Id: 5E232519D70
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296014-lists,devicetree=lfdr.de,rva333.protonmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,mediatek.com,protonmail.com,intel.com,arm.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.0.14:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,protonmail.com:mid,protonmail.com:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Roman Vivchar <rva333@protonmail.com>

The MediaTek mt6323 PMIC temperature can be read using AUXADC channel.

Add the devicetree binding documentation for the MediaTek mt6323 thermal.

While mt6323 exposes only a single thermal sensor, newer PMICs like
mt6358 provide more than one sensor. Therefore define #thermal-sensor-cells
as 1 to avoid breaking devicetree ABI in the future.

Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 .../devicetree/bindings/mfd/mediatek,mt6397.yaml   | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index beaa67bf0df2..2c826737189e 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -242,6 +242,31 @@ properties:
     description:
       Pin controller
 
+  thermal:
+    type: object
+    unevaluatedProperties: false
+    description:
+      PMIC thermal monitoring
+
+    properties:
+      compatible:
+        const: mediatek,mt6323-thermal
+
+      io-channels:
+        description:
+          IIO channel for the AUXADC to read raw data from.
+        maxItems: 1
+
+      nvmem-cells:
+        maxItems: 1
+
+      "#thermal-sensor-cells":
+        const: 1
+    required:
+      - compatible
+      - io-channels
+      - "#thermal-sensor-cells"
+
 required:
   - compatible
   - regulators
@@ -250,6 +275,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/iio/adc/mediatek,mt6323-auxadc.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/leds/common.h>
 
@@ -262,6 +288,16 @@ examples:
 
         efuse {
           compatible = "mediatek,mt6323-efuse";
+
+          nvmem-layout {
+            compatible = "fixed-layout";
+            #address-cells = <1>;
+            #size-cells = <1>;
+
+            mt6323_thermal_calibration_data: thermal-data@14 {
+              reg = <0x14 0x4>;
+            };
+          };
         };
 
         leds {
@@ -511,6 +547,14 @@ examples:
         rtc {
             compatible = "mediatek,mt6323-rtc";
         };
+
+        thermal {
+          compatible = "mediatek,mt6323-thermal";
+          nvmem-cells = <&mt6323_thermal_calibration_data>;
+
+          io-channels = <&mt6323_adc MT6323_AUXADC_CHIP_TEMP>;
+          #thermal-sensor-cells = <1>;
+        };
     };
 
   - |

-- 
2.54.0



