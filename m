Return-Path: <devicetree+bounces-293593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHGNAtVX+2n1ZgMAu9opvQ
	(envelope-from <devicetree+bounces-293593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 17:01:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EB04DCCE7
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 17:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB02D3003824
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 15:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA79344D88;
	Wed,  6 May 2026 15:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZepbDB8o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4052D63F8;
	Wed,  6 May 2026 15:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778079692; cv=none; b=lu+rreDymeFiC7OUdvoTMAXC6hdtJPW+bqfgRJL4LIyZ3/9b3Wz/bYh8vkzZ/Xd8IwzRZoHXB2+rwZT9OexS5Ac5ZaXSQrDPGy0RHBbE0iJH5HL4WzvcYxxr6Q7h88qK+JMuKfF+c49vKz766mVl/AberWTXODy2aDdDfnbTZX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778079692; c=relaxed/simple;
	bh=cFFUvqeRzdVAF53P+FY0tMvu3ZsPrzg7MR4phUeI/p8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i2KMBqBlUwMQ8qpkndbudyuRD11DTctZN1qQ7xnSlwZJb+CnJMuxg4djtowl3mdpOHjZuN4+u9qFNd4VD5WENHHVlo1OGZoz+Zhkaz1nlmrUTdufsQMfEHkiybFyWct70t5XTG8KyS8uH2UD7fnZHTF+Mk3OQKyiC36IYQfn4Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZepbDB8o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 501CAC2BCB0;
	Wed,  6 May 2026 15:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778079692;
	bh=cFFUvqeRzdVAF53P+FY0tMvu3ZsPrzg7MR4phUeI/p8=;
	h=From:To:Cc:Subject:Date:From;
	b=ZepbDB8oiJxu928tS3KgTQu3ily3bzyQs5QIvr7IeEmg3DzBHnGdee2CIC9wji45b
	 Ugbyyc2nuMBoYeciYOU3kT0sRAmib/BL1i+ePjHHndAk4JO8G5EUHkrKlyujpgrNVF
	 xChJ0Y2rI8sQWajRKjAiXKxhKrkbJD+ftOIjfax8EQF/Xn+bt/4lnrU8bxDuZQo7jI
	 GyvlCUMA/h6XQjsRRdAda4ibviwsr85PsvCOxqETiDE6oKKvvevKHnNlVo8ebpTl+F
	 5GCQ7y8+jbgBpeOWni7eHwoTEwNmwMZHePeS+5vpuFg2LbQ61CS130lqpmH8IiLvfb
	 sSyy9W/bIw3iQ==
From: Conor Dooley <conor@kernel.org>
To: linux-i2c@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: i2c: microchip,corei2c: permit resets
Date: Wed,  6 May 2026 16:00:46 +0100
Message-ID: <20260506-bronchial-kitten-e3697fb66ba7@spud>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1604; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=otxeDgA2oPBHhrscDgp3nywgBv6J4dr1+5G8SaJTbE4=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJm/w+d+/a952ywrfHlcsNLjk5smn2ypl1BkfCyWIm+kW aB04d3ujlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEzkmB0jw3nRC+rr/p4Lk1Rg Pm1ieOzVlxO1brslnu7/XGqvasJvOp2RYaGSR+m6tjNTHt2Z++kj96Vaq9LDLPYXXZcbyK11KNl 9gBkA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D9EB04DCCE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-293593-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[qualcomm.com:query timed out,infradead.org:query timed out,microchip.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RSPAMD_EMAILBL_FAIL(0.00)[robh.kernel.org:query timed out,krzk.kernel.org:query timed out,linux-riscv.lists.infradead.org:query timed out,linux-i2c.vger.kernel.org:query timed out,conor.dooley.microchip.com:query timed out,devicetree.vger.kernel.org:query timed out,daire.mcnamara.microchip.com:query timed out,linux-kernel.vger.kernel.org:query timed out,andi.shyti.kernel.org:query timed out];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email]

From: Conor Dooley <conor.dooley@microchip.com>

Both CoreI2C and the hardened versions of it on mpfs and pic64gx have a
reset pin. For the former, usually this is wired to a common fabric
reset not managed by software and for the latter two the platform
firmware takes them out of reset on first-party boards (or those using
modified versions of the vendor firmware), but not all boards may take
this approach. Permit providing a reset in devicetree for Linux, or
other devicetree-consuming software, to use.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Andi Shyti <andi.shyti@kernel.org>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: linux-i2c@vger.kernel.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml b/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
index 6ff58b64d4962..bd63c70aac6bc 100644
--- a/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
@@ -37,6 +37,9 @@ properties:
       modes are supported, possible values are 100000 and 400000.
     enum: [100000, 400000]
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.53.0


