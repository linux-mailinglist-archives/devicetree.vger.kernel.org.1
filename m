Return-Path: <devicetree+bounces-260969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BHdCYSYe2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:27:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8041AB2D8D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:27:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA9AE3076AD4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB0134B682;
	Thu, 29 Jan 2026 17:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="gUibd4dK"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE68934B183
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 17:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769707406; cv=none; b=bpWPFbSr/98jEeW8cLTjawZXyvU3Fgw97nrerQ0fAAp70EG3TQmNMn91aE5SHFX48BH+qYP++stdtweUbFFrDao33WyAnRkOaQfYRC1Aca45UvAeaFtVoEh5yslIPzf5bE23eZujqEJJNe7M1rWxvlJVvfGVUK629rCg6q9Lfg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769707406; c=relaxed/simple;
	bh=pRBa5TBjuQYiYyDUyFa9T4Jx9I8aK8yOKph8e6rqDMM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZExes7z5gzmmsVFxhUr+kcV0yPTsqY3ZJ/LMIvKasqfuFxscJn2FbzRyVZgqtlJ2+Fu1ghNHk4H463FhabGzSSVOH5eGPk9Voe0yLAz/JJ5YKZC/oJEeyS5mIk6y0JU03o46vLlRXcmf3usW5+n5yn6ueGhBJxzL3nhvZtNiSC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=gUibd4dK; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1769707401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1Puyqb4KlLw9Tw9YVBGXVL1lbSf9jM4gxR8qM3PJNjw=;
	b=gUibd4dKPoVe/gk+34E+1BEgtE1x5UGgCa2Tc8KZCiiA26Yp/nX3+Od1EBm9s9c27qraxZ
	7qktT7InYMiJs/eDsEMHcHp0k08EBMeG1dXvD6Xr+F9hhvExGZ084O90gUbp1Vg5UGbylT
	892LahQ6dunQe5XkgWpgntqpyxJf51s=
From: Sean Anderson <sean.anderson@linux.dev>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-sound@vger.kernel.org
Cc: Jaroslav Kysela <perex@perex.cz>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <michal.simek@amd.com>,
	Takashi Iwai <tiwai@suse.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: sound: xlnx,i2s: Make discoverable parameters optional
Date: Thu, 29 Jan 2026 12:23:14 -0500
Message-Id: <20260129172315.3871602-2-sean.anderson@linux.dev>
In-Reply-To: <20260129172315.3871602-1-sean.anderson@linux.dev>
References: <20260129172315.3871602-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260969-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sean.anderson@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,a0090000:email,linux.dev:email,linux.dev:dkim,linux.dev:mid]
X-Rspamd-Queue-Id: 8041AB2D8D
X-Rspamd-Action: no action

These parameters can be discovered from a config register. As they will
not be used any more, mark them deprecated, make them optional, and
remove them from the example.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 Documentation/devicetree/bindings/sound/xlnx,i2s.yaml | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml
index 3c2b0be07c53..180f43f2b230 100644
--- a/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml
@@ -29,6 +29,7 @@ properties:
     enum:
       - 16
       - 24
+    deprecated: true
     description: |
       Sample data width.
 
@@ -36,14 +37,13 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 1
     maximum: 4
+    deprecated: true
     description: |
       Number of I2S streams.
 
 required:
   - compatible
   - reg
-  - xlnx,dwidth
-  - xlnx,num-channels
 
 additionalProperties: false
 
@@ -52,14 +52,10 @@ examples:
     i2s@a0080000 {
       compatible = "xlnx,i2s-receiver-1.0";
       reg = <0xa0080000 0x10000>;
-      xlnx,dwidth = <0x18>;
-      xlnx,num-channels = <1>;
     };
     i2s@a0090000 {
       compatible = "xlnx,i2s-transmitter-1.0";
       reg = <0xa0090000 0x10000>;
-      xlnx,dwidth = <0x18>;
-      xlnx,num-channels = <1>;
     };
 
 ...
-- 
2.35.1.1320.gc452695387.dirty


