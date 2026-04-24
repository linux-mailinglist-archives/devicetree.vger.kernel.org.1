Return-Path: <devicetree+bounces-289810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOxbJD7a6mkzEwAAu9opvQ
	(envelope-from <devicetree+bounces-289810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 04:49:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8CF45917C
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 04:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92AC8301BA7D
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 02:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2948A2DA768;
	Fri, 24 Apr 2026 02:49:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE3F2DF144;
	Fri, 24 Apr 2026 02:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776998943; cv=none; b=DyAjPx8Au0t4op/fYWHKUjwx+85Rvz++i68ZhTIAYpVIVQO39iUOYQb3IdSlBDLBWOFeDSMNlRYv4cpKoWNquGHILRXS/zCqoSUEkkne1NrrW+svh887qCzhRWphsXl7O/xBIIrskCansf/jkdJzKzgJVrxtz+qnmo0DCky+tPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776998943; c=relaxed/simple;
	bh=3IcQwCRm/Ci1OhkWAtFBs4imf9Heu9LAFxZIohYXgYs=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KTVGTX61PsCIJDRBJFqrw5x3yBhecN7UY7cZaaQPzSVXtK2HwZITqbInsler2aBs3Gw6idBvAV18W5UAW6ZEZ91XUHmPjkqDag3PTj/iTPZWkg1VAyrSdnowHwpcct9vZfWkay00hhUzwISPmAkgkV69zLSyrpXNYKqn8EqJ2sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.99)
	(envelope-from <daniel@makrotopia.org>)
	id 1wG6b3-000000002MT-2mWi;
	Fri, 24 Apr 2026 02:48:49 +0000
Date: Fri, 24 Apr 2026 03:48:41 +0100
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
Subject: [PATCH v3 1/9] ASoC: dt-bindings: mt2701-afe-pcm: add HDMI audio
 path clocks
Message-ID: <1a871e4494d514a270c7c27c080e338b2dbf6559.1776998727.git.daniel@makrotopia.org>
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
X-Rspamd-Queue-Id: 0E8CF45917C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289810-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,makrotopia.org:mid,makrotopia.org:email]

Document four additional optional clocks feeding the HDMI audio
output path on MT2701: the HADDS2 PLL (root of the HDMI audio
clock tree), the HDMI audio and S/PDIF interface power gates,
and the audio APLL root gate. Older device trees that do not
wire these up remain valid via minItems. MT7622 does not have
HDMI audio hardware, so its compatible is restricted to the
base set of 34 clocks.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
v3: allOf goes before additionalProperties
v2:
 * Restrict the four HDMI clocks to mediatek,mt2701-audio only
   using an allOf/if/then conditional; MT7622 is capped at 34
   clocks (Krzysztof Kozlowski)

 .../bindings/sound/mediatek,mt2701-audio.yaml | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt2701-audio.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt2701-audio.yaml
index 45382c4d86aa..30f331366566 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt2701-audio.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt2701-audio.yaml
@@ -32,6 +32,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 34
     items:
       - description: audio infra sys clock
       - description: top audio mux 1
@@ -67,8 +68,13 @@ properties:
       - description: top audio a1 sys pd
       - description: top audio a2 sys pd
       - description: audio merge interface pd
+      - description: HADDS2 PLL 294 MHz (HDMI audio path root)
+      - description: HDMI audio interface pd
+      - description: S/PDIF interface pd
+      - description: audio APLL root pd
 
   clock-names:
+    minItems: 34
     items:
       - const: infra_sys_audio_clk
       - const: top_audio_mux1_sel
@@ -104,6 +110,10 @@ properties:
       - const: audio_a1sys_pd
       - const: audio_a2sys_pd
       - const: audio_mrgif_pd
+      - const: hadds2pll_294m
+      - const: audio_hdmi_pd
+      - const: audio_spdf_pd
+      - const: audio_apll_pd
 
 required:
   - compatible
@@ -113,4 +123,17 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt7622-audio
+    then:
+      properties:
+        clocks:
+          maxItems: 34
+        clock-names:
+          maxItems: 34
+
 additionalProperties: false
-- 
2.54.0

