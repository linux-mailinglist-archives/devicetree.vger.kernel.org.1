Return-Path: <devicetree+bounces-327134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7DZ7Ar2dV2rZXwAAu9opvQ
	(envelope-from <devicetree+bounces-327134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:48:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB1675F8D6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:48:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OmwXA2pZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327134-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-327134-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E967310D51D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6F147F2E3;
	Wed, 15 Jul 2026 14:30:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCE347ECED;
	Wed, 15 Jul 2026 14:30:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125847; cv=none; b=SGPzA8BeOX3S8XRu9uxoPr9qzA3JxzjJn3/fcnfymQIdbXKRQX1UsM/bbj9y76otbemyVlpZBwbAMbb3veb0okaAKx5SAGfniF0Se34JpY2mM0ZOT+vyiuLwvUxT7rWSDcd9qJRPDl6VVxZCJyVuv1A51YgfRuV6kt2OxTrasEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125847; c=relaxed/simple;
	bh=IGpNS9aue5JzXuYKLafA/B2nUokxJGp04bNGnTYUqSc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VZo44Nz0sIhPSQArfG9I8a9aPWAr4P9Li2Xlks339D2SJGAUdyZeGVNHiDByxzlXyOVut3LaYdhvhNdyplKZf5Dc/3LC1sCBQopmK8hkYlZWm3LiVuBIHlk+cz/qzVmBoRuGEBpBLix/X7UWpEvpNRmRCpdOMSgbNqFG0dknP+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmwXA2pZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D83C2BCB7;
	Wed, 15 Jul 2026 14:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784125846;
	bh=IGpNS9aue5JzXuYKLafA/B2nUokxJGp04bNGnTYUqSc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OmwXA2pZGkk4P/JYrIGe95nEsxY2/flkbIbuy+ZgPtAeWtgjG5KE2vHFqbC2mlWR0
	 8vRKoUF1CdlAdk8aLWrVeGFpMmkMLtYSVkRJUajXEJF+l0oRAIPO1heD2XQugoJf8v
	 2elx0+F17+4CRam+30bg8cMGSGf7Dm8XQXjOgmhpnwAZkM6/p8HZt8xdtTU0Lb4wJ3
	 /MZh9eNCJ0R6PozHsKnn3dXctNCtg0M01T6E5yrdl4FPomYO2niMCgxO32pcivn/bu
	 39z1FeSzaNTxU99Sq/m/TuPLL0g1GqDb8QuYJWsxGg6sJrwMP6YsFHe1QNDrRaeWRC
	 VKeQOOThRIa2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DF4BC44501;
	Wed, 15 Jul 2026 14:30:46 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Wed, 15 Jul 2026 17:27:46 +0300
Subject: [PATCH 1/3] dt-bindings: nvmem: mediatek: efuse: add mt6572
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-6572-nvmem-v1-1-9c13be99d077@protonmail.com>
References: <20260715-6572-nvmem-v1-0-9c13be99d077@protonmail.com>
In-Reply-To: <20260715-6572-nvmem-v1-0-9c13be99d077@protonmail.com>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Lala Lin <lala.lin@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Roman Vivchar <rva333@protonmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784125843; l=783;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=6rsiJE+m+kSdFo7mQes/iDioeo1J+zD87d8WvcT3BfE=;
 b=hqCbIqp5vmmknQd+J44Xt579ZcLZFLWvnYZXMSPmyC/4j3yjrZvGG6bPQ4xyeCQvU1k6tu6QX
 GLTBeHaLUalDEXXbWJ2TrYgMGQQ/4Qua0vYtwJVDwZ/QMf350B3aj7Z
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:andrew-ct.chen@mediatek.com,m:lala.lin@mediatek.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:rva333@protonmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-327134-lists,devicetree=lfdr.de,rva333.protonmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,protonmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:replyto,protonmail.com:email,protonmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FB1675F8D6
X-Rspamd-Action: no action

From: Roman Vivchar <rva333@protonmail.com>

Add a compatible string for the mt6572 SoC efuse controller.

Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
index f9323b3ecfc8..269e2b09f5c8 100644
--- a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
@@ -44,6 +44,7 @@ properties:
 
       - items:
           - enum:
+              - mediatek,mt6572-efuse
               - mediatek,mt7622-efuse
               - mediatek,mt7623-efuse
               - mediatek,mt7981-efuse

-- 
2.54.0



