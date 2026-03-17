Return-Path: <devicetree+bounces-276458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH5cK2XluGlMlAEAu9opvQ
	(envelope-from <devicetree+bounces-276458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:23:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2342A3F1D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 31FA7300C38B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3251372B27;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9glFbx1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE62A1DF271;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773725021; cv=none; b=fQPC+XVpCOtFw3ZEHS41mlopErbQ8qPkgl+hdqfV/9wkx+6tX1y47H48Ej6q3Pcp0z1+rf4fy2NMbnEiGigpYtIwla8oA2tk9a0Fa9nSLQ/ZlBlPW3arJkTSAVh23TbNcT6BQjHwNV6rsr+1gjhUkZ5KnjlO5YQJVhi72TM9c50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773725021; c=relaxed/simple;
	bh=FK+G92G7k2Ab54zT1nugqRs23c6TUh6PpjiXtF3RnE0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EIFYqZ07GR4W8XoMBV1Fkp5WeZy/0nmRLpvNtw5YyZcg9e24LOk3SXcNrXsJOTYgnVsTsUG9RnMLgZdt/SimYHBSX147cPUuFPwmm2AIJShF2hMiQvyL8MkMhoTODEj7lmECsvLFEFtjd77F0Y/eSCnFj0zvGqPNstP4fJ7xWG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9glFbx1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 758FBC2BC86;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773725021;
	bh=FK+G92G7k2Ab54zT1nugqRs23c6TUh6PpjiXtF3RnE0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=W9glFbx1VnMxAlsipfZ3lz1WUR5jLFfbsfjbqc2oXsnEVdGP4j+g/e0Y7LtY8Li6l
	 4gyPcggfiXoTCIBLRRS66R4i+bmEtAVDn8oBgZg+BP8cvPcEwnh2oMIYR04D5wZd0X
	 ILuaHLVdpH94dxknjJN4gMKfianJYPnAIn8TDQ/7O60JvZEdgC44RVI55MZnAjbaED
	 Lcbh4flXghvTKgNEluxA6ejKaPxjyqSASI9t+tTqd//C9AwxabebYx/jvtS5glqwGM
	 rolCkJYPuQ6KkPGFKE15eBfrD0RTNGPTBLJJE9DIKVTxKQFpSucBHUh+1AFb4ProYc
	 0ZIH3KMo4P+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6522BFB5EBE;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Tue, 17 Mar 2026 00:23:07 -0500
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-ch13726a-v2-1-28aa46bcd6d0@gmail.com>
References: <20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com>
In-Reply-To: <20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773725020; l=2226;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=HoyWD2jkf4xCy515SWrSieQpbdHFlSZWlbu93PkDP+k=;
 b=Ur1UZGhaW1sGDhqg46w1R+Cv9Bprvmajepyw7Z9GScijq3EKRNK3P+1Vopt4trvgpMHwhFhom
 g4jI3ADdPaEDeB8ADtxQ70DqiQ7vS9ksx25F9KpsacZ/sTm7d5O4cbf
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
Reply-To: webgeek1234@gmail.com
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276458-lists,devicetree=lfdr.de,webgeek1234.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.956];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,sobir.in,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[webgeek1234@gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AE2342A3F1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Aaron Kling <webgeek1234@gmail.com>

The Chip Wealth Technology CH13726A display driver is a single chip
solution for AMOLED using MIPI-DSI. This is used for the AYN Thor bottom
panel.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..b490c6757bb98c0752ded78b8fea3aaec853c7b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Chip Wealth Technology CH13726A display driver
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+description:
+  Chip Wealth Technology CH13726A is a single-chip solution
+  for AMOLED connected using a MIPI-DSI video interface.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: ayntec,thor-panel-bottom
+
+  port: true
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  vdd-supply: true
+  vddio-supply: true
+  vdd1v2-supply: true
+  avdd-supply: true
+
+  reset-gpios: true
+
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vddio-supply
+  - vdd1v2-supply
+  - avdd-supply
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "ayntec,thor-panel-bottom";
+            reg = <0>;
+            vdd1v2-supply = <&vreg_l11b_1p2>;
+            vddio-supply = <&vdd_disp_1v8>;
+            vdd-supply = <&vreg_l13b_3p0>;
+            avdd-supply = <&vdd_disp2_2v8>;
+            reset-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
+        };
+    };
+
+...

-- 
2.53.0



