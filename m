Return-Path: <devicetree+bounces-312502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gv5tDGA5MWqLeQUAu9opvQ
	(envelope-from <devicetree+bounces-312502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:54:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF9D68EF82
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:54:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=3X3MkwZY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312502-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312502-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 401E93002F59
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C5743CEED;
	Tue, 16 Jun 2026 11:54:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D6343C054;
	Tue, 16 Jun 2026 11:54:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610841; cv=none; b=G1nyMR0jgsi3XBs9RsHZSHoNFWAB81yZkTjdlDYuJ8nRjlRP9LI4fXj7mWc+R4b04fOweNsshvg8eZrMY1FbroXv+bi9JnrAij7I+eSJOdodzKmAoPI6HcFTMBN5ePY38XeBayr/U9AlUoMD5P2/vMufAgCievm+KRXXGPRc/5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610841; c=relaxed/simple;
	bh=ZMEnSpVZGDO4LdMl3ZPXZTbyqR1nlN1yXSB75VPmTco=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p5G+mqq2Es4hLigdh54XabA4YTS3/4vMjXdRE3aE5vH8/ptIg1kmth9dBTKISVh04TX2/hfO0lCs/nazoQYgxNu+YJcv//2/aOysfelIiouqPnhyuTTmIk0nLU8WawcL0YA3tN8nXLSISP+IVhiehjb9mu4Zng02+Nu5mF36qYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=3X3MkwZY; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1781610838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CC4pQBR74mo53LWq+yitH7clGdozvjJ29YJSAet9JCI=;
	b=3X3MkwZYmEY3JDXqi91Ov31Yxx3tk6Y2gflCc/3A0XqIeUg69oEf5IRIo/O57dI+LStLVu
	+w9dK2Mtl2t4QksPbi8Gie/qYBGVAt8P52//iENHhH6mxeIgAnkGW1Q8rt0cEkMpOCuAq2
	ebZiCgnINDQzANBUBsAIaFdiTiy+Hl2FAZD3YK1QsozYLRyBrJM4yz+m1FcjJrKvS6zMIO
	9XVe+msJrnlkxtTUp4qJHZLA25ZzreUXK27+O+RHjpj3obXzLekzoj0UZKPiiVLzdNmIV8
	DCzqh8vlo/TBuHXAB+C3VC/ipDxlIMg1EKg8FyxVnvBsSRp7xWceU6V9hqWVZQ==
Date: Tue, 16 Jun 2026 13:52:16 +0200
Subject: [PATCH 1/9] dt-bindings: nvmem: imx-ocotp: Add support for
 secure-enclave
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-1-cb7f3698c3e6@kontron.de>
References: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
In-Reply-To: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=901;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=QWE1SsXb2/HbH2oV2EUZBTZVKiDh9e7EbFlxADzOCVQ=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIcvQMmRS8H5Ble8enx50TKutvRaY3vvj154Mjb6XCnlCn
 yRSb3N2lLIwiHExyIopskjxW7y2NYv1kT9WHQUzh5UJZAgDF6cATMSigeE3+4qQw6Y7WZj3VjZ8
 k5teckRNq++CXt6E0B3TtgqVnJWNYvjvX3+V0XrTAZ83f1UPVr1fu/yMtMAGodLzj2p5wiNs5A+
 wAgA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312502-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,fris.de:dkim,fris.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AF9D68EF82

From: Frieder Schrempf <frieder.schrempf@kontron.de>

Some SoCs like the i.MX9 family allow full access to the fuses only
through the secure enclave firmware API. Add a property to reference
the secure enclave node and let the driver use the API.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
index a8076d0e2737..14a6429f4a4c 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.yaml
@@ -53,6 +53,10 @@ properties:
   reg:
     maxItems: 1
 
+  secure-enclave:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: A phandle to the secure enclave node
+
   clocks:
     maxItems: 1
 

-- 
2.54.0


