Return-Path: <devicetree+bounces-311121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KDkNKBVKLGqLOwQAu9opvQ
	(envelope-from <devicetree+bounces-311121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:04:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4966B67B847
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:04:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=HgIBIhPv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311121-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311121-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B349C34133B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC443955FC;
	Fri, 12 Jun 2026 18:00:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8588389473;
	Fri, 12 Jun 2026 18:00:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781287259; cv=none; b=UNT0RkGlq+ezR6ybqN73lMrYHIO6cOJWvQotpzSwVIaH5X5occIQYuqpKuUcjaE1p1zOaF0FiK9gwKeusRCS93KyL3FcdafMvrusyPTe9WErYOqDx6nU0MJIAjYyFiul6gUdXFbGJkGCczmQDoYXPwIKVSdt+80Ik4CpIR/E2eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781287259; c=relaxed/simple;
	bh=BXeARZ0ujZDNhdquS/qJc3J32JsHagxLqC8adFmTGE8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yz7hNthyCujIZbvW2PL+Wnrk0Qdz9EaxCinGWqWUMUMcrncXS7mG5MQg8Zg6qqqmH0b2fQtoUy+VKKhG6UJTSHqaZOq/00HBbxwmsPKdfrNh0+xNnhZGdVWE9ufOOqETOzdD+RchwTL2dhXZj2jCfBSuCLis5Ob7JJFwOpLSUxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HgIBIhPv; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781287253;
	bh=BXeARZ0ujZDNhdquS/qJc3J32JsHagxLqC8adFmTGE8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HgIBIhPvknd1Q2ddj2XeDUcvA1Oic44+kMbKstN6zOtQY1pPo94fisndk5qVE37iP
	 0JyrxmG1pRZLCLSdLUXTMeE6/jrKbL7mTy+Cq0CO0J6mZqq9ZSguDtc3MqZWFalvQh
	 fRIO5LGjLj7PGZTpWRP+YgUowsh3puQ2VUMWZrv8zhkvfwtWlPLevXzoUF6aB/YZZh
	 9+/k1AjfbagPokcwk2i1KFQNqqHT7HonyMZFnhMwaobrd55S8FtxqQ+EChVXcJpSlI
	 Cu56CRvFThelAw/15BsOVOxsEei2k/EtA2eBrEswq3bVNephE/H9r/AUgsXR+s5juX
	 AgZHyQWnEBh9w==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3F05817E0FD0;
	Fri, 12 Jun 2026 20:00:53 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8530548003A; Fri, 12 Jun 2026 20:00:52 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 12 Jun 2026 20:00:55 +0200
Subject: [PATCH RFC v3 09/10] dt-bindings: display: rockchip: dw-dp: fix
 sound DAI cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260612-synopsys-dw-dp-improvements-v3-9-dc61e6352508@collabora.com>
References: <20260612-synopsys-dw-dp-improvements-v3-0-dc61e6352508@collabora.com>
In-Reply-To: <20260612-synopsys-dw-dp-improvements-v3-0-dc61e6352508@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 linux-arm-kernel@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2725;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=BXeARZ0ujZDNhdquS/qJc3J32JsHagxLqC8adFmTGE8=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGosSVQEh5sbWtkeYdrxD50JXY18L37a17k8i
 beMkIXjL4spU4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqLElUAAoJENju1/PI
 O/qaE1oP/2MuS9HVQpUsHqvwtYb1JPn63Ve2KXPsy1UNEzcvcT6mX0O6uR5IJq2J1jFcHws8pMe
 gZxd8DxzxeDnwh0PdmtvM4Lh+E97IOikzqdMAC5CHvoHrtWqKVIqHnBLO62DZSveFvPCmPm3Sei
 bcwXx8Py7KHzMLVd8ABHDEudhXh2b5v93bskRJ0HEz5q4au5reAnJe8VXIs7Ff/oGYgtlN/NzuT
 n34m9PeCzwAeZ53MmKjlZcd65E9CzeMEkRLy9jWEcmgV8xwm5MvRoo0oHR9ZT/jkEXl3wz4VNlC
 Xo7cWuUaELX+NQ3az6V3kJRMJ8xCjm/w74v1mZjg+uTvhrEstyIgOFHlDdi9b33Kw6g70Cdww10
 pCNQYtKrl3qMtRILX/L1r5PtXedhRs2UWh7uvtqbJgOA88HoYFfwaF45RkhPNN6VDVUJCueFYEB
 xEk179zQoWB57GrDPTOoVBppmhhTKiEBeT6vuiq4+z8yyziQQCZcZsGOQnJ3jPGP4emExR7aASo
 eBGeNJAxh8XoyTXc11zeHGvXAReYFFCXmdxus7811yGXUT/nUVY77XHvX09ur8W+oqDoN7THLqv
 /bW15G0oM7ULw5nmasvLj9CJI2Y0pJvJUkBNpRNujICox787KpfXjJXR6eZ7SJz3aKKczWyGstY
 mIy34KEA7E4F0f516JCE1IA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311121-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:cristian.ciocaltea@collabora.com,m:damon.ding@rock-chips.com,m:lumag@kernel.org,m:alchark@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:kernel@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:sebastian.reichel@collabora.com,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,oss.qualcomm.com,bootlin.com];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[collabora.com,rock-chips.com,kernel.org,gmail.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4966B67B847

The RK3588 and RK3576 DesignWare DisplayPort controllers both have two
possible DAI interfaces: I2S and S/PDIF. Thus it is needed to have an
argument to select the right interface.

In case of RK3576 this is not enough though. The RK3576 has the same IP
as RK3588, but configured with Multi Stream Transport (MST) enabled for
up to 3 displays and thus has a total of 6 DAI interfaces (I2S and
S/PDIF for each possible stream. Meanwhile the RK3588 does not support
MST and thus has only 2 DAI interfaces.

The binding update right now only supports the simple single stream
transport (SST) setup. To avoid further DT ABI breakage (or complicated
bindings supporting different number of arguments), it's probably a good
idea to take MST into account now even though the upstream Linux driver
does not yet support it.

I see two options:

1. Adding yet another cell, so that we have the following:
   <&dp_ctrl [display_stream] [i2s_or_spdif]>; potentially append
   extra input ports for MST video data to existing ports node
   (e.g. port@2). I would only handle the sound DAI part in my
   patch and basically use '0' for the display stream and just
   leave the option of using '1' or '2' once MST support is added.

2. The vendor kernel creates a sub-node for each supported display
   stream and puts the ports mapping as well as the DAI reference
   into that. This bundles all information for one display stream
   together, which creates a clean look but the subnode does not
   really describe any real thing in the hardware.

As upstream MST support seems to be quite limited, I wish for some
feedback about the preferred way to handle this.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml         | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
index 2b0d9e23e943..1303d0e2145a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
@@ -83,7 +83,8 @@ properties:
     maxItems: 1
 
   "#sound-dai-cells":
-    const: 0
+    const: 1
+    description: 0 for I2S, 1 for SPDIF
 
 required:
   - compatible
@@ -144,7 +145,7 @@ examples:
         resets = <&cru SRST_DP0>;
         phys = <&usbdp_phy0 PHY_TYPE_DP>;
         power-domains = <&power RK3588_PD_VO0>;
-        #sound-dai-cells = <0>;
+        #sound-dai-cells = <1>;
 
         ports {
           #address-cells = <1>;

-- 
2.53.0


