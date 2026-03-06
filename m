Return-Path: <devicetree+bounces-271964-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DqkM/arqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271964-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:27:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD2021EACD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9375C3002D0E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A9D37BE81;
	Fri,  6 Mar 2026 10:26:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5865337BE77;
	Fri,  6 Mar 2026 10:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772792798; cv=none; b=o1KC7Yy+AuslXwhqhPpWga9lTxU4HlJEm5W6d2VGvkdJD6BsedWwpLLD7I/yrnuJpUez7mvq9GG7UYr8eD5Da++ZmO8SeIQMxXjRRqHR9xcsbtjodqOdVUQrdPr3yic46/o6s9fDVGXme1okAP3DFQ0UDzt25faTrIjo7pvm1pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772792798; c=relaxed/simple;
	bh=s25iVwYLw5FeYXbWrPlYuYFcy6HOsbcylMYHwGmyojc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UbOivyTkSjni/ef263HUoV9+ZJPpeApxAQkAwqGCu+qKp64gnafRXJ/ExwcW9v8KWa64DBEOuUrb0gYHP31RGFfh6uASMAET2/1xqDWtxlPC/mq8yOhF0/lb30peRmBI9ufnzaHE+q7pj/H4qdk3t0+T5MJ9UAQZfvm+AOadzHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BB4AC19422;
	Fri,  6 Mar 2026 10:26:36 +0000 (UTC)
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
Subject: [PATCH v2] dt-bindings: interrupt-controller: arm,gic-v3: Fix EPPI range
Date: Fri,  6 Mar 2026 11:26:20 +0100
Message-ID: <3e49a63c6b2b6ee48e3737adee87781f9c136c5f.1772792753.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DCD2021EACD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271964-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[glider.be];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[geert@glider.be,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

According to the "Arm Generic Interrupt Controller (GIC) Architecture
Specification, v3 and v4", revision H.b[1], there can be only 64
Extended PPI interrupts.

[1] https://developer.arm.com/documentation/ihi0069/hb/

Fixes: 4b049063e0bcbfd3 ("dt-bindings: interrupt-controller: arm,gic-v3: Describe EPPI range support")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Brain-farted-by: Marc Zyngier <maz@kernel.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
v2:
  - s/v3 and v3/v3 and v4/,
  - Add tags.
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


