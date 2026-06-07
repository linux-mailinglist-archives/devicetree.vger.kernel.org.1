Return-Path: <devicetree+bounces-307797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dAMMIj1PJWoPGwIAu9opvQ
	(envelope-from <devicetree+bounces-307797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 13:00:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F9F650356
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 13:00:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=LXI4zFQj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307797-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307797-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 426033006034
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 11:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD60C36F8EF;
	Sun,  7 Jun 2026 11:00:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BC635202C
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 10:59:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780830002; cv=none; b=SJbHjRihnLCoAOtV9jjvaijdKmsHPzrRPEQ3Cbnc7Qen/nCor96wGhlhEWvODJ0MxVUStWPSFhOT/KDdqx2Q4marpar854OHTAbfu4n9EhrX1Dz3Vtljpq8w/U/YFEPOw7aAI0oEKO/WrYzny6IWQ1UyvozgKPghJu+hzZXOSno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780830002; c=relaxed/simple;
	bh=tBNWRdL1DmSRf5RxUSNWn2Y1GTy8ZM/itRVnPEHbgNc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PW+Q7kNuH5NvDT9O+j3NhLG3VmOAJQ+TWX6gtDI9xoyRTLLuI7etVWpxfdQrnNoUNJ75Dht6eZFCvG+eAGRQKDGMPq+YCB/wqPz1TzJFpsH4JwXMquIyt4DobAO/7K71jnPb5CyVjrYoruKj3P1IAw5Z20x7omyHKJNPy7wXxO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=LXI4zFQj; arc=none smtp.client-ip=95.215.58.186
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1780829977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Cyn/gncd3DffYsVl4KwtQeIdhBYRq+sThUlTyYAeBgc=;
	b=LXI4zFQj5lI2EkFPr/3bEMs2TuWU6dX/gPvUAJWablbt5d485LkPlb9RmExCCrodK30qEZ
	KGVBUbdaQBmHAzSHIRYER06B04/P+Hiyj1MxWBO+JK4xDewI/3cMPjlCIjKdZE13rKZNF9
	LxTK2YJXfVSbp1HkxHhntpcFHYzII22+hOxyJTMCM4ioQY1nDePhBXJa5MTCy63mSvNJ+I
	MkBjikAIPgJ++QngdmOj8gm/cdIfyc61HCvkDJEhqMjMilE4fOW58YxwxHUNG288FTep2o
	o8Tbg3vMu0aqhr+Mmk2lJPb+pNPwyqNOFo+tJMRH53tPl/+smEcQ9gkLmyDwMg==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Zhang <zhangyi@everest-semi.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] ASoC: dt-bindings: everest,es8389: Document audio graph port
Date: Sun,  7 Jun 2026 12:58:49 +0200
Message-ID: <20260607105913.355966-1-diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-307797-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,everest-semi.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:diederik@cknow-tech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,cknow-tech.com:mid,cknow-tech.com:dkim,cknow-tech.com:from_mime,cknow-tech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5F9F650356

Provide an endpoint for binding with the other side of the audio link,
which is achieved via the 'port' property.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 Documentation/devicetree/bindings/sound/everest,es8389.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
index 75ce0bc48904..7db84cf11386 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8389.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -27,6 +27,10 @@ properties:
     items:
       - const: mclk
 
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
   "#sound-dai-cells":
     const: 0
 
-- 
2.53.0


