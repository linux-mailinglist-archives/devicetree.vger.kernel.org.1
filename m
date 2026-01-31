Return-Path: <devicetree+bounces-261383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIuXHut5fWlDSQIAu9opvQ
	(envelope-from <devicetree+bounces-261383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 04:41:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B87BC08F1
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 04:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61BE53011787
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 03:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E4A634FF58;
	Sat, 31 Jan 2026 03:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="jJoXVP9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75A34EF0A
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 03:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769830868; cv=none; b=UcAR5kDFsvz7fMLbKP3vJj68Wzg8ylmKs1bUbbl1oK2r4SXbtTb/w69CEJmp8JWjnAYtwLb/4p63Lew/W8jy69klo+pxb00OHRUk7s+z5vipig2+fEDP2MF+7f6QdP01ro6sAX1K6tKahhNqgifL2VVd3uEankPvlwavk82gSqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769830868; c=relaxed/simple;
	bh=oR8+C+nebtFYCtEgn38TfFQ+LT+h/RZAIZ1Cuzo6mv0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nEv+KFSuz5q40LtjSGzBl2JQmpnCmGnqjB40YFu1sLmcqwuKF7K5YqkJKDG2D36BtpWiIOn7W6vpDXNYAcSu9ipSm+bSamp1yAS2Gv4NsQlkACAgapym1kMFwBQARKeqStKIu6TmaHSCRFG8QiH3jeMawLMVxnMmunOsbpH81M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=jJoXVP9m; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-34c708702dfso1472259a91.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 19:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1769830865; x=1770435665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G785GoMTBphgxxOD0Z2Ym57qa0BDh5wFTX3RHKNv7Hc=;
        b=jJoXVP9mmg0xDwGltgLAKTUy4W8EJooqEhJ+RXOG9uHY3Y5+kxZaXOnIT+u5tPnHk6
         qEcWL91+SxouwjgYGDRtVOiIF+f2f6DqQEYFVSLzMzUPTZhnTaFXWm0RVlEpwWX0YtNF
         2uJ2PrmtQjrX2FNwCkrg8i2kijSLWU7a7sRZONFYFxP0XYswi5gv/ZBuWOljCXjA/Nhm
         SWyVRvGsmQS5hyksWbnliWq4pzKybVy+qArDYJ39z09EIs3ytAuT9CkDDhKsYImXuTlB
         3t/H5f4mZIu7LbLN6K81AAeVIEID9hmcj5ISF6/lB81MQ5putIYpkCnYHaoO1eeJg9TP
         H3Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769830865; x=1770435665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G785GoMTBphgxxOD0Z2Ym57qa0BDh5wFTX3RHKNv7Hc=;
        b=gt1NDb2EKYUuD7+1uryI0qIwYIg5NjjIW9ggxLY8ViSU4CQtWQqakcbCBIOoLzEkRM
         fVI3TRPUYsBFRbok2ln5djLDwfSuOxYedFDoKW1mxhB4oE+6ws1+FVj92RaHs1Bomv6/
         ttFIqkeGHOGtwcevWikuV2iz70v2hEGb6Zzm/pkIAJNO6H1Y+ZH8nKWeYYHY8U2n+o9p
         VfC3bRiXJO5ly4fK3pehz2MdNwDT2RI9aQuVprqsAP4wOhBGYJAUXfw0Dd/n8ONGMtH3
         8A9NrlC5Usmnlbaat2OHZf8PWCmVZqqSInGLFHf/W3wf/ka2T+xhkkfxodhNpIv+2Zmr
         KwBw==
X-Forwarded-Encrypted: i=1; AJvYcCWuzJB5t84HB/QB/by1FYS+8JGilRa3TX2UfEgAo8kP+KnNEeNhW2UHdlTAB2utnQ+5MwefcJViR4xm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9d9sSwkQaLijt/CRkfv+3ndC7I/TksxlkdXFrN4zep20KcQFl
	HGd2scbtutV2JM89gsdETeg2Lioagzkb7mkONulxsOyJ74xXV8UFGDQqnFs+7y6Zt2I=
X-Gm-Gg: AZuq6aJkIATzKL+qdFCNY3saREa6NacnAovReyhM/Xax+O2lwgaiWoGzwnj/v3DUfPs
	kOFjS1sr5Rxvp/csbTvkH5DHttmz114T6r1ebsqb2thD5helQNVX8kQzBjbsu7VvYJAlQPaczjO
	pb68aoEtUyOYHTPuU79Q00lkyAEWYavFAky0HllfEPud5ksqb4CoqaXtmccd8Z55zTeD3rDdns8
	6sJVEvUkgWC1V37h4HagmevsWZYAz1cm+lhEQy76OXGZKJKgOf1z51ZjtKj0cFz1BduF1jdDxKW
	NFmB1zm7ekwDvUNCmczRyxzYFLXYHzkxcehHOIBJVAVYtYc81T3uw6lN4l3qXYUHz/plpY6Dklc
	Qu9bRYakJMEco21Z7YmRY0FTA+OrUfHOWgBFPUB+oLrLfIvxfOpDa2eKzB3tw/iHekEntmuEZxt
	MzAlQDgJ6yDXbsRxlgOD4PFMxYc0A=
X-Received: by 2002:a17:90b:4c0b:b0:340:c261:f9f3 with SMTP id 98e67ed59e1d1-3543b33aad3mr4875068a91.14.1769830865399;
        Fri, 30 Jan 2026 19:41:05 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:f8d:9478:bfbf:7332])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc71bsm8986062a91.11.2026.01.30.19.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 19:41:04 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
Date: Fri, 30 Jan 2026 19:41:00 -0800
Message-ID: <20260131034101.307486-2-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260131034101.307486-1-igor@reznichenko.net>
References: <20260131034101.307486-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-261383-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reznichenko.net:email,reznichenko.net:dkim,reznichenko.net:mid,devicetree.org:url,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3B87BC08F1
X-Rspamd-Action: no action

Add binding for the Ilitek ILI9488 panel controller which is found on
the FocusLCDs E35GH-I-MW800-CB MIPI DSI panel.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 .../display/panel/ilitek,ili9488.yaml         | 63 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 2 files changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
new file mode 100644
index 000000000000..ea7449273022
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9488.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek ILI9488 based MIPI-DSI panels
+
+maintainers:
+  - Igor Reznichenko <igor@reznichenko.net>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - focuslcds,e35gh-i-mw800cb
+      - const: ilitek,ili9488
+
+  reg:
+    maxItems: 1
+
+  vci-supply: true
+  iovcc-supply: true
+
+required:
+  - compatible
+  - reg
+  - vci-supply
+  - iovcc-supply
+  - reset-gpios
+  - backlight
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "focuslcds,e35gh-i-mw800cb", "ilitek,ili9488";
+            reg = <0>;
+            vci-supply = <&reg_vci_panel>;
+            iovcc-supply = <&reg_iovcc_panel>;
+            reset-gpios = <&gpio3 6 GPIO_ACTIVE_LOW>;
+            backlight = <&pwm_bl>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..aa3a8fd67155 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -584,6 +584,8 @@ patternProperties:
     description: Flipkart Inc.
   "^focaltech,.*":
     description: FocalTech Systems Co.,Ltd
+  "^focuslcds,.*":
+    description: Focus Display Solutions, Inc.
   "^forlinx,.*":
     description: Baoding Forlinx Embedded Technology Co., Ltd.
   "^foursemi,.*":
-- 
2.43.0


