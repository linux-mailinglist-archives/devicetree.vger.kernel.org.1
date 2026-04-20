Return-Path: <devicetree+bounces-288686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAS9LFAj5mlBsgEAu9opvQ
	(envelope-from <devicetree+bounces-288686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 15:00:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 334FB42B1BE
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 15:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1900305BF38
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 12:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E643A16A3;
	Mon, 20 Apr 2026 12:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Y9X7gBcd"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BF83A0EA5;
	Mon, 20 Apr 2026 12:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776689683; cv=none; b=oh3vyEGphGslrhQ9BhcAwNLDVUwHY2t+UPv6N8jOXKNBnRprMaVHvjbEn9v8mcXk30aAC9g1f0k3/9R9EWPsQ8UuOW3G52rHmYgm08SwN0vtdhFibud1U+6ZmvvjuyZgS2aP51K37tCLuHfU9axMDy4oh2yBnFsKSGoMjMgk/Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776689683; c=relaxed/simple;
	bh=496Ou4r/BPNoALXAdud1c1PRkHtqfBUZ0zjiIeQJ4pw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rwDNgx07qEgZRYkhjJTQFf5rnHxlGaRemlfNCJ9YJCWQAqpXp0Mt2ZkgkiHPNCXqWUHPH83kgJkpfLy9dIICZ1GCq9lyVUvYgZJ+85DBkc6yoRRo06efw4bW2QTVX/Dii1z7rB6ft1N6WSaTFgNLXmdDPrPB3B5PND9hddz6W+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=Y9X7gBcd; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E290B2688;
	Mon, 20 Apr 2026 14:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1776689581;
	bh=496Ou4r/BPNoALXAdud1c1PRkHtqfBUZ0zjiIeQJ4pw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Y9X7gBcdfDUC1wgT875qXur0+vJlDgYPfD2fM7+DjpPPbEzDCiuSYC6iW0BLIxMeK
	 6yjuISn/y+TJ3EctL1qW/DIBqa19E4W4HNoyM86k3x3fEQm5fopdimf3EU70KLkd55
	 WVrxQN3bR/QNF7AfmklJmPERfX+xSQGaLVygnsEQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 20 Apr 2026 15:54:11 +0300
Subject: [PATCH 04/15] dt-bindings: display: ti,am625-oldi: Add optional
 power-domain for OLDI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-beagley-ai-display-v1-4-f628543dfd14@ideasonboard.com>
References: <20260420-beagley-ai-display-v1-0-f628543dfd14@ideasonboard.com>
In-Reply-To: <20260420-beagley-ai-display-v1-0-f628543dfd14@ideasonboard.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Swamil Jain <s-jain1@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=999;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=496Ou4r/BPNoALXAdud1c1PRkHtqfBUZ0zjiIeQJ4pw=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBp5iIEE4ecTPwz7D5WJfCugnkyTMg+2tfZAPycp
 a+p7muijlyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaeYiBAAKCRD6PaqMvJYe
 9SX0D/964x59MD+9qCvn3QOnB2w6FHsfngZ66LYiZxoxDZ6ssPfjSnLVqY3ITfBa5p2aTltDn/5
 Sb+G9HEjVs4Lfydl3mTo1nWwK5TfiT+2Kqg783BZ9NZXtUKyUWCEkNUKm3ZmfSOTQRwGxNK0Gnr
 XmTuR+l5c+Owv9EUZH1Qp9Xs4I1O33dICduvk5Qo82Kh1PkjsID0OguWTRi7LRztDCplr4MsaHm
 G7w9SAUb7Ossh/tA94iKlw0D8h+2UgB/Sy3vsreJjzbTdMwFU9Ryu7wzF3Yvx7ldWTh4uG/4/Ms
 KnrYRTxMOvBSunXa7d0vOb0FX82ZHt8eBmJfYyMcLaFlhZe/1hAFIwVH83B5DA/CZNuBOwvVPKl
 UBjW4kslB5Zf0yk5h7OWlPwUpO1W64p6GZhd1q0yTYQsSA3JTZ87Jt83lh9xRdZrvFv0+QMV9gL
 rJyGLju2ffuqB5s/tupbAj/9xz0wldgwqjaCdwANy+wxon+g1O202UJ2gxvkTUJznxxpjuUPtz3
 dz4kXzqfeGN4JMU8XtHNY0eVAWS848Qq+xtM5O1elRR7dYswXZtxLeSBnIiItfzTq4pODgOFESF
 HycqSbjlwNCxhZAbEk28ROo9L6TAiGcnc5Vdtv/sjis/NYChNeK58n0OALsOHgJBeXjo/Vl2XmM
 9cfeil6BFktAxQw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288686-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linux.dev,ti.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,ideasonboard.com:dkim,ideasonboard.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 334FB42B1BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On some SoCs the OLDI blocks belong to the same power-domain as the main
DSS block, but on some more recent SoCs the OLDI blocks have a
controllable power-domain.

Add the power-domain to the DT binding.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
index 8203ec5e5bb3..61c3eb0a0776 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
@@ -29,6 +29,10 @@ properties:
   clock-names:
     const: serial
 
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
   ti,companion-oldi:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:

-- 
2.43.0


