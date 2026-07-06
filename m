Return-Path: <devicetree+bounces-321508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id spXuBOoCTGrIegEAu9opvQ
	(envelope-from <devicetree+bounces-321508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:32:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F344571500A
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:32:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=jzUm9I2+;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321508-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321508-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D8FE3001855
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 19:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7FC2329E5D;
	Mon,  6 Jul 2026 19:32:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27959325704;
	Mon,  6 Jul 2026 19:32:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783366357; cv=none; b=iJgEAujzHhLcY6MRwQAnBNY53qUWWOFoK0OkFWklBVPik6ROBqnIkmoMfrvgaH3OmqjrmcroKnKjK6uCjzgZGKN2sXEs9RanwEwOdupRrDxVsTw517jAj0K8/xgTPHnL/EJta1wd1tOsBUq81PJIRhe9YoXCV/lSU0c+ulqPy3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783366357; c=relaxed/simple;
	bh=/oiDzG1yPzVXvmDyvrB8YcOt78K9ESwEa+Uivy/4TVI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KFVZ1oTh/vdkPNP2s5Bi1oqoR06YebYbgD0RtzMcjG5hk6k4biicwh2CXKF/v3Xt6tEeVKp751BtHRakp3CzfpI4u8fkdj813r7ziUgpi9D2s4AYVTSAvZtKtkb+4XnDgzx23YeO4lT8UZnYf8vEyficBzpgbensmJFiOf/RVgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=jzUm9I2+; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783366354;
	bh=/oiDzG1yPzVXvmDyvrB8YcOt78K9ESwEa+Uivy/4TVI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jzUm9I2+94tXdgxin0lHHVbT5SjP9gQvniyFq9/P+prpO2RgMgBy5SWBi5dZHyVCD
	 b7v+iF1m0cDa+1m9T6MAOCQmvF43QmqysM35fdylK6u57JeOBEF5LAmbFb6GKC0vTa
	 am+ug3xx1SN45wS/F1kmgrHEMgCE8bCQWlK/5YFYN5NOb3wv94xfUri3Z9Lu8xSrzL
	 NbchZVXOROLgkS13D06gJ4bF6oCWLr0RJmvT63lY44j6vH8bNaCgMwrkmvs3SuMRWc
	 u5XK7E7oNXQRPJwB4gWMqR4mbiHlq+O9jvEDP5Krbs30rnsCcPaecpWuuuVa9VIyTq
	 mmWhiJvPMG2Tg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3DD5A17E0D56;
	Mon, 06 Jul 2026 21:32:34 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 06 Jul 2026 22:32:13 +0300
Subject: [PATCH v2 01/13] dt-bindings: display: vop2: Add missing reset
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-dw-hdmi-qp-yuv-v2-1-b91beb33dedf@collabora.com>
References: <20260706-dw-hdmi-qp-yuv-v2-0-b91beb33dedf@collabora.com>
In-Reply-To: <20260706-dw-hdmi-qp-yuv-v2-0-b91beb33dedf@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	TAGGED_FROM(0.00)[bounces-321508-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,oss.qualcomm.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F344571500A

Document the VOP2 resets corresponding to the AXI, AHB and DCLK_VP0..2
clocks, which are common to all supported SoCs, plus DCLK_VP3 which is
provided only on RK3588.

While at it, move 'iommus' in the example up into the expected position
to keep the properties in alphabetical order.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../bindings/display/rockchip/rockchip-vop2.yaml   | 46 +++++++++++++++++++++-
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 93da1fb9adc4..f993cef0323b 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -82,6 +82,20 @@ properties:
       - {}
       - {}
 
+  resets:
+    minItems: 5
+    maxItems: 6
+
+  reset-names:
+    minItems: 5
+    items:
+      - const: axi
+      - const: ahb
+      - const: dclk_vp0
+      - const: dclk_vp1
+      - const: dclk_vp2
+      - const: dclk_vp3
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -148,6 +162,12 @@ allOf:
         clock-names:
           maxItems: 5
 
+        resets:
+          maxItems: 5
+
+        reset-names:
+          maxItems: 5
+
         interrupts:
           maxItems: 1
 
@@ -194,6 +214,12 @@ allOf:
             - {}
             - const: pll_hdmiphy0
 
+        resets:
+          maxItems: 5
+
+        reset-names:
+          maxItems: 5
+
         interrupts:
           minItems: 4
 
@@ -246,6 +272,12 @@ allOf:
             - const: pll_hdmiphy0
             - const: pll_hdmiphy1
 
+        resets:
+          minItems: 6
+
+        reset-names:
+          minItems: 6
+
         interrupts:
           maxItems: 1
 
@@ -289,9 +321,19 @@ examples:
                               "dclk_vp0",
                               "dclk_vp1",
                               "dclk_vp2";
-                power-domains = <&power RK3568_PD_VO>;
-                rockchip,grf = <&grf>;
                 iommus = <&vop_mmu>;
+                power-domains = <&power RK3568_PD_VO>;
+                resets = <&cru SRST_A_VOP>,
+                         <&cru SRST_H_VOP>,
+                         <&cru SRST_VOP0>,
+                         <&cru SRST_VOP1>,
+                         <&cru SRST_VOP2>;
+                reset-names = "axi",
+                              "ahb",
+                              "dclk_vp0",
+                              "dclk_vp1",
+                              "dclk_vp2";
+                rockchip,grf = <&grf>;
                 vop_out: ports {
                     #address-cells = <1>;
                     #size-cells = <0>;

-- 
2.54.0


