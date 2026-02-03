Return-Path: <devicetree+bounces-262407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CM3WDTFdgmlfTAMAu9opvQ
	(envelope-from <devicetree+bounces-262407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:40:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2238DE967
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C8D83050EF9
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 20:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA57236829D;
	Tue,  3 Feb 2026 20:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Uv10Bqx9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10ED3314C8
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 20:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770151214; cv=none; b=NzJ00KwMHJxAZmvcQxEXhaE+82IQGt9eKoOzlmLVGLvTAa9HQdegSA4PpCY2vXUQcqjSk+j2zzoZxHy7TCW2GOLWKE+97JSYBbPdamgacZrsKEoyRaEUBusukrOJe4bj55/0ly68BhpXZCs91foe8yY/lg9qNzoChtBC0Jwe7VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770151214; c=relaxed/simple;
	bh=FlM6rXbq/a3tXf7u87GfSIuIuD1VH5jijbe21pOb8jg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=namtQOhaxr5NGX30QB3ZFx7X2cWQKqPpM18EVlluqzUiCUah7Gl/mkWsLFF+DpUiuX7weclbigKwjU8o1TYFV4IOWA6L/RAG1cdDQVKnr3cgEf7zrNTRZneQvYYf8wfQAle/8IL5lZtuSjqxI76ENKJlcjyu+U8KB4gQRNQHoGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Uv10Bqx9; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DE84CC24389;
	Tue,  3 Feb 2026 20:40:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 89E7260728;
	Tue,  3 Feb 2026 20:40:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2ACDB119A8891;
	Tue,  3 Feb 2026 21:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770151210; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=oYbdI2fsKaGTvEp6wqBhR2QgtSukXpWA3HhYALr0rC8=;
	b=Uv10Bqx9uJPdFQaxT4nFxHJOG2Nfr3yJMVV0RDRRbd+lgJiFlD1rbPjET47gHEc6PAn7hF
	IQKc5UOQyE5hxDAt3qpYCOG4IblIOx8JJG4/RfxxetEPqT1AhTEV+HjNT/nqKbQYOPbXrx
	2CqGYKF3J1BtSNQPSn08SJhAo8vX6Ab7A6i6MCuYnOxuWVIiKP5nfKV3Y3LFERANBN5Uw4
	IQCS5h8jK8YgagM+57Z8iZughXGA4QwqsYSrACilLR7oGq0+7iBIg4+HDkbEv0lp4IwukB
	pe+WBWdv7ytjkt9v2BePwwCqZVPpL16mBIapJHe8/ZKHkhm3y1EAByZ7ISi98w==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 03 Feb 2026 21:39:57 +0100
Subject: [PATCH v16 1/3] dt-bindings: mtd: Describe MTD partitions
 concatenation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-mtd-virt-concat-v16-1-a112a979c813@bootlin.com>
References: <20260203-mtd-virt-concat-v16-0-a112a979c813@bootlin.com>
In-Reply-To: <20260203-mtd-virt-concat-v16-0-a112a979c813@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>, 
 Michal Simek <monstr@monstr.eu>, 
 Bernhard Frauendienst <kernel@nospam.obeliks.de>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262407-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.12.53.0:email,0.6.26.128:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,amd.com:url,amd.com:email]
X-Rspamd-Queue-Id: A2238DE967
X-Rspamd-Action: no action

From: Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>

The AMD QSPI controller supports an advanced connection modes called
Stacked mode which allow the controller to treat two different flashes
as one storage.

In Stacked connection mode flashes share the same SPI bus, but different CS
line, controller driver asserts the CS of the flash to which it needs to
communicate. Stacked mode is a software abstraction rather than a
controller feature or capability. At any given time, the controller
communicates with one of the two connected flash devices, as determined by
the requested address and data length. If an operation starts on one flash
and ends on the other, the mtd layer needs to split it into two separate
operations and adjust the data length accordingly. For more information on
the modes please feel free to go through the controller flash interface
below [1].

To support stacked mode, the existing MTD concat driver has been extended
to be more generic, enabling multiple sets of MTD partitions to be
virtually concatenated, with each set forming a distinct logical MTD
device.

A new Device Tree property is introduced to facilitate this, containing
phandles of the partitions to be concatenated with the one where the
property is defined. This approach supports multiple sets of concatenated
partitions.

[1] https://docs.amd.com/r/en-US/am011-versal-acap-trm/QSPI-Flash-Device-Interface

Suggested-by: Miquel Raynal <miquel.raynal@bootlin.com>
Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/mtd/partitions/partition.yaml           | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
index 80d0452a2a33..c9aba6838b3c 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
@@ -57,6 +57,15 @@ properties:
       user space from
     type: boolean
 
+  part-concat-next:
+    description: List of phandles to MTD partitions that need be concatenated
+      with the current partition.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 16
+    items:
+      maxItems: 1
+
   align:
     $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 2
@@ -138,4 +147,15 @@ examples:
             reg = <0x200000 0x100000>;
             align = <0x4000>;
         };
+
+        part0: partition@400000 {
+            part-concat-next = <&part1>;
+            label = "part0_0";
+            reg = <0x400000 0x100000>;
+        };
+
+        part1: partition@800000 {
+            label = "part0_1";
+            reg = <0x800000 0x800000>;
+        };
     };

-- 
2.52.0


