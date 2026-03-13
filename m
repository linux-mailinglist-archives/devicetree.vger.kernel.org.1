Return-Path: <devicetree+bounces-275491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JaZIg9QtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:57:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6347B288626
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8C9703010693
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF6B3D6498;
	Fri, 13 Mar 2026 17:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oofRkhXR"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456363D6CA1;
	Fri, 13 Mar 2026 17:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424644; cv=none; b=P8AFgQYgs8uP/lPE/6NoXbuJofSLaYArFdf+8Wusl+uz7L4c8ZX2cvy0XBgH+eF7WiNsnqDvUcaamkGmVnA6MxEhKZXy2gNNgWCZt+AtVKkrICqdSnYAHEpJWZv6ZlL8fb1SDVcAWfDteL7WEYKeaNETsiAUH5TgDTJR4ag5lCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424644; c=relaxed/simple;
	bh=HIo5oL1M0YAgySVOdJ8x+RTMqtenWf2Gl2GNqO+0Hmg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GAf3MSmNdTWR8EPbedj+bojtuHRvUU5pseLzDS1oqecl53LZo1R/839j8LiBx7AXJpzDokbFJuheyVBaIf8zbFalLrS2nt7+70iwz22Ui9vaDCjU5iJxY0FhTHwDgrcGusFZC6NDvl3t2toqXBe52MX8aOtmOzq5yNSkKu+LX70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oofRkhXR; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=HIo5oL1M0YAgySVOdJ8x+RTMqtenWf2Gl2GNqO+0Hmg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oofRkhXRUmQQqh18xEcYWXN9sWwXD0KuDsGZ49Cegn6aJHnny9D3leTTTC/6o6bsr
	 NvN8h06E/sdSkO/DL5F924NITsmwzWZ/gCCHoOsrSrC/79Kkxp7i0G40y7iQic2Mk5
	 cbJ/MA5w4avJLL9f72Qj6lb5844koHhMmEucCAL4ciqy29J6FjjBNCpsOt4JuJ+VBS
	 fZSPf781hrAcPAof0smztn8XJKW7eDGeVrNJBvr3/LyrX3scPhvH1pPBOLFiUd1sZU
	 oNwYo9ruYaT8k2uD8gLkWBDSxtV2Qo1w6LjlvQc3GfiB9hR09m81rMrnPS5NwVUyr1
	 0xBtQs0bdKu/g==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 80AF217E137B;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 262BF480028; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:10 +0100
Subject: [PATCH v3 01/12] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-1-3e8fe89a35b5@collabora.com>
References: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
In-Reply-To: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2240;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=HIo5oL1M0YAgySVOdJ8x+RTMqtenWf2Gl2GNqO+0Hmg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UADexdooOXtKkZ6ZJhrF9WrGmCqbOofI3
 czzek2Ig+Wv6YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaA6AP/0RimBaRa7E/I1vABMjHUj4mERcoICzrxDSHz8LQ6TFQm6A4Illj7HvVyawe8fD8IMH
 hoTcxvNWoTrxUvNNvaf7CbqiUo4RILZyaOadQvWqn6tLAGn3srFbwXbxawzt56K6pH3ol8iLIXL
 HcSu4Lm5sF3ZVY809TK2r7bUct8ABGC4orb7+sjAOGpJUf0cf7kZZnV2vzcttCmY5xSZeC7b3vB
 qbWQM9L2G9lm8SEByzef0gdPte6DdZUaMH4ro69dz4qhAbq8r12RHbjxb3oWKve1rHgOM6fhlKb
 qAZzDp4a+egybs0u/wggK3N6WUsGwTspGtVIeT8zTSzKT0eqMXengPcV9MzrrDLWGchD03LhfDO
 g2/r6O9BhUQbLu9zu5FN/gYfJ20gIqxmCWYToqc1Zi2BeVJG2TCiMviWyaHWajlK+WTpCeGazY7
 G+oRNtD6s5qSaE5BRH8imetW1yxMQhjQ6bfbsbeAzJszj3jY+Ph04REkAooqcqpZrUCuDgLyjmc
 ImwZ+a8KalTCb12fZLKWUNaKZVgAIS+PWXEeUc7sHjcDuuIwJWL8LDV58LvCmudRgMqCa1SoKUt
 eoolyN+VcXh8dR1Wtfdx6szWadinWGd9Im/xwZdlqkrV1JZJon9MVUpYOwHoZDd5S0BV4u9gTMb
 f72ucRoTf1eoAj9H2jwM2uQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TAGGED_FROM(0.00)[bounces-275491-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6347B288626
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently the Rockchip USBDP PHY is missing a documented port scheme.
Meanwhile upstream RK3588 DTS files are a bit messy and use different
port schemes. The upstream USBDP PHY Linux kernel driver does not yet
parse the ports at all and thus does not create any implicit ABI either.

But with the current mess it is not possible to properly support USB-C
DP AltMode. Thus this introduces a proper port scheme following roughly
the ports design of the Qualcomm QMP USB4-USB3-DP PHY controller binding
with a slight difference that there is an additional port for the
USB-C SBU port as the Rockchip USB-DP PHY also contains the SBU mux.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
index 8b7059d5b182..f728acf057e4 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
@@ -114,6 +114,29 @@ properties:
       A port node to link the PHY to a TypeC controller for the purpose of
       handling orientation switching.
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of the PHY for USB (or DP when configured into 4 lane
+          mode), which should point to the superspeed port of a USB connector.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the DisplayPort controller
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of the PHY for DP, which should either point to the
+          SBU port of a USB-C connector or a DisplayPort connector input port.
+
 required:
   - compatible
   - reg

-- 
2.51.0


