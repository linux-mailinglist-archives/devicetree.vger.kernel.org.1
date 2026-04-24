Return-Path: <devicetree+bounces-289811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPxNEyza6mkzEwAAu9opvQ
	(envelope-from <devicetree+bounces-289811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 04:49:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B2F45916C
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 04:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C39E300DD7D
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 02:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE322DB791;
	Fri, 24 Apr 2026 02:49:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D362D8DA8;
	Fri, 24 Apr 2026 02:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776998951; cv=none; b=IYEXL70LCjiRS+2+zRMxeA+PsXNPCmVv5pcaOqQkR/du+qAVOeZUfozdJRybbqPdeE0N+QWtTBnBlu+WKSsNrCcAZVWbhnVO/UjypE558GWc0XYrTMwqDzaJ2jP063y19DwLEM/Jhb/NfHUbUAa1g6dxr3xlXE2QTPrDyxO2EkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776998951; c=relaxed/simple;
	bh=7m/HgmrlAlKvWCTlL5E8duJiwW+WHBFv92FirEvLuJk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a+wRsFXt7H1D7GaqsTX+Xhwv4SxfPilFhLqvuSVDcfoK9UcDbG0oV6PtoNx4chYtjJixdwssTkSalvnTgiNGIx4Y79YS75aPDbZJ86+dnDIdkI/ke+RzIS8z4hJHkjusOMIgrVctAzMFnALQy8jByYuLGeBwBrPQdS/Q1CrWNRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.99)
	(envelope-from <daniel@makrotopia.org>)
	id 1wG6bH-000000002N9-05wi;
	Fri, 24 Apr 2026 02:49:03 +0000
Date: Fri, 24 Apr 2026 03:48:55 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Eugen Hristev <eugen.hristev@linaro.org>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 2/9] ASoC: dt-bindings: mediatek,mt2701-hdmi-audio: add
 MT2701 HDMI audio
Message-ID: <b18cd550bcfab8c5a8a765d68a9ab5bae3f1c4e7.1776998727.git.daniel@makrotopia.org>
References: <cover.1776998727.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1776998727.git.daniel@makrotopia.org>
X-Rspamd-Queue-Id: A8B2F45916C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289811-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[makrotopia.org];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,collabora.com,perex.cz,suse.com,mediatek.com,arndb.de,renesas.com,makrotopia.org,linaro.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@makrotopia.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

Describe the sound card node that routes the MT2701/MT7623N AFE
HDMI playback path to the on-chip HDMI transmitter. This is
separate from the AFE platform binding (mediatek,mt2701-audio)
because it represents board-level audio routing between the AFE
and the HDMI codec, not an additional IP block. MT7623N boards
carry the same IP and use the mt7623n- compatible as a fallback
to mt2701-.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
v3: no changes
v2:
 * Fix subject prefix to use schema filename (Krzysztof Kozlowski)
 * Rewrite title and description to describe hardware, not driver
   (Krzysztof Kozlowski)
 * Clarify in commit message why this is a separate binding from
   mediatek,mt2701-audio (Krzysztof Kozlowski)

 .../sound/mediatek,mt2701-hdmi-audio.yaml     | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt2701-hdmi-audio.yaml

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt2701-hdmi-audio.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt2701-hdmi-audio.yaml
new file mode 100644
index 000000000000..9d5a8166e51f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt2701-hdmi-audio.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mediatek,mt2701-hdmi-audio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek MT2701/MT7623N HDMI audio output
+
+maintainers:
+  - Daniel Golle <daniel@makrotopia.org>
+
+description:
+  Sound card routing the MT2701/MT7623N Audio Front End HDMI
+  playback path to the on-chip HDMI transmitter. The AFE
+  provides the DMA memif and internal I2S engine; the HDMI
+  transmitter acts as the audio codec on the serialised link.
+
+properties:
+  compatible:
+    oneOf:
+      - const: mediatek,mt2701-hdmi-audio
+      - items:
+          - const: mediatek,mt7623n-hdmi-audio
+          - const: mediatek,mt2701-hdmi-audio
+
+  mediatek,platform:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle of the MT2701/MT7623N AFE platform node.
+
+  mediatek,audio-codec:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle of the HDMI transmitter acting as audio codec.
+
+required:
+  - compatible
+  - mediatek,platform
+  - mediatek,audio-codec
+
+additionalProperties: false
+
+examples:
+  - |
+    sound-hdmi {
+        compatible = "mediatek,mt7623n-hdmi-audio",
+                     "mediatek,mt2701-hdmi-audio";
+        mediatek,platform = <&afe>;
+        mediatek,audio-codec = <&hdmi0>;
+    };
-- 
2.54.0

