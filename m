Return-Path: <devicetree+bounces-271066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AF9Okg8qGl6rQAAu9opvQ
	(envelope-from <devicetree+bounces-271066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:06:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96673200F36
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E6EF030654F2
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB66B3AEF4E;
	Wed,  4 Mar 2026 14:04:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A6739B978;
	Wed,  4 Mar 2026 14:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772633056; cv=none; b=AbWITIOhDWryZyOhGrGYXjS99VWYz+Y46T3jS+WqSNISFD8zZaccsMdVJNlabOU7ngHqbLdNuu39mSagNot0Jn2T5/iSROudoqrrfzazVS9XgkaC2iR77XQE88r3XBEB657lqixTw4emV9zg9EJEbIsU2ABbeCBIKpb9/3Jic2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772633056; c=relaxed/simple;
	bh=GkBJw/OUo0Oa+IzoSIatQ7hMK7OHe6CVg7wKYrKwZHs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mg3jWnEC6U7r7qosNlHpiEz7igdEKmf7PBVcPdhJlqv2ZmGgKLtyg3NMahUp8CsJV0Xuqg3GvDV1OunGx66iMzSNTiaqPo480AfwZbwRJKdBC30ex4xh/utFKU6L/0O5hX5Fdm4s1Y2qdQ2QzZwPb7YSAofU4BakUq5gSvTgQIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95097C4CEF7;
	Wed,  4 Mar 2026 14:04:14 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marc Zyngier <maz@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: interrupt-controller: arm,gic-v3: Fix EPPI range
Date: Wed,  4 Mar 2026 15:04:10 +0100
Message-ID: <107183629106ad392e17fdf539a3d79873024377.1772632987.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 96673200F36
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271066-lists,devicetree=lfdr.de,renesas];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[glider.be];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@glider.be,devicetree@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,glider.be:mid,glider.be:email,arm.com:url]
X-Rspamd-Action: no action

According to the "Arm Generic Interrupt Controller (GIC) Architecture
Specification, v3 and v3", revision H.b[1], there can be only 64
Extended PPI interrupts.

[1] https://developer.arm.com/documentation/ihi0069/hb/

Fixes: 4b049063e0bcbfd3 ("dt-bindings: interrupt-controller: arm,gic-v3: Describe EPPI range support")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index bfd30aae682bf3f7..360a0643a0b567a4 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -50,7 +50,7 @@ properties:
       The 2nd cell contains the interrupt number for the interrupt type.
       SPI interrupts are in the range [0-987]. PPI interrupts are in the
       range [0-15]. Extended SPI interrupts are in the range [0-1023].
-      Extended PPI interrupts are in the range [0-127].
+      Extended PPI interrupts are in the range [0-63].
 
       The 3rd cell is the flags, encoded as follows:
       bits[3:0] trigger type and level flags.
-- 
2.43.0


