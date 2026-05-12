Return-Path: <devicetree+bounces-296012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AXiCzS5AmonwAEAu9opvQ
	(envelope-from <devicetree+bounces-296012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:23:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0A4519E0A
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A9FF3033A91
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595BC33B6D5;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHFLmMyD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB2B33260F;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563300; cv=none; b=botk5Gb9XUvwYzh8cU4hWS9hZGnUQWfhQo+fxw5v/++yvBfq+Z40eVzdJN7mH8OoAnlyHOeBhA06XoYkLSr9psHruJwVFX49EFKRVpVkDYQKEWgcS2ykNf9yzGXEPNG0s+3fGcxuclFgWbPI5IjnMrmwybvWAH4j4CArUB2Rm44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563300; c=relaxed/simple;
	bh=nFYS1AJxTcCemBFRMlKaLuUqrOFiqJdaHOGljO9nLNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rs91bCsICNImbEEs384Iq76b7dZsCFz2q+TlHZng8zW5cW5Tj56dAX6dJDNo08Xqh/rfI5rEtLSpdjp4ryZ9E36JWBV+J+cj5WEJEkIgdxyCM6WBS+lxUmGo8HkGbWi3pMUUgHUqeJBMPggfADBAHpOnnmH+SBRTBoSJKra5g4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHFLmMyD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D244AC4AF11;
	Tue, 12 May 2026 05:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563299;
	bh=nFYS1AJxTcCemBFRMlKaLuUqrOFiqJdaHOGljO9nLNI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=jHFLmMyDn6x6TR77a1/VkWT266I8E28gWEhHZFJsIfMpoqTNEIRK/AQsD+K3h8xg1
	 URuIq4lI8vWSQWhEOGAxCl5EkxQF/qk16wB95k3cnVcJ9dU442vboHlGqAah/SbEDj
	 HsD/3okhypylHnnXN7Mz4Kyk6o6GUx1hzDyBllqKfyBJX+TCEoVs90if3BmH3G7bny
	 bG+3rKwsLKSfO6DmIS309/b+EdGNZ6yLaxjHAEbXbKQxr0xaaBTm65GHzOnV124ozM
	 ltzZkl2cP03521fd5/EeOv+k6U/qVKZO+Y5iRftmadHb502NUVS0Apq+FUIArLYHcr
	 Og2J0VKIts6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4602CD484E;
	Tue, 12 May 2026 05:21:39 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Tue, 12 May 2026 08:18:17 +0300
Subject: [PATCH v2 03/16] dt-bindings: mfd: mediatek: mt6397: add mt6323
 PMIC EFUSE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-mt6323-v2-3-3efcba579e88@protonmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778563297; l=1478;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=yiuy4PGnRwz74HO4/jgt05FoYcB7zWTmsPkZR1/Xj18=;
 b=qpWJ/FFKQ7H4cEJoojhJZrG1CP5nnngA5fUWP41wO+9Dp4TKaGwfB+ZnIsc+rAX+u8oexlUrf
 i0ujFuGiNQdAXMz8Hzc6SMdBTwi08J5rYz5EUXycsV9ng7HoxYgDQgj
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Queue-Id: CD0A4519E0A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296012-lists,devicetree=lfdr.de,rva333.protonmail.com];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,mediatek.com,protonmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,protonmail.com:mid,protonmail.com:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Roman Vivchar <rva333@protonmail.com>

The MediaTek mt6323 PMIC includes an EFUSE used for storing calibration
data.

Add the devicetree binding documentation for the MediaTek mt6323 EFUSE.

Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 .../devicetree/bindings/mfd/mediatek,mt6397.yaml    | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index 05c121b0cb3d..beaa67bf0df2 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -145,6 +145,23 @@ properties:
     required:
       - compatible
 
+  efuse:
+    type: object
+    unevaluatedProperties: false
+    description:
+      The efuse is responsible for storing calibration data, such as thermal
+      sensor calibration.
+
+    properties:
+      compatible:
+        const: mediatek,mt6323-efuse
+
+      nvmem-layout:
+        $ref: /schemas/nvmem/layouts/nvmem-layout.yaml#
+
+    required:
+      - compatible
+
   leds:
     type: object
     additionalProperties: false
@@ -243,6 +260,10 @@ examples:
         interrupt-controller;
         #interrupt-cells = <2>;
 
+        efuse {
+          compatible = "mediatek,mt6323-efuse";
+        };
+
         leds {
             compatible = "mediatek,mt6323-led";
             #address-cells = <1>;

-- 
2.54.0



