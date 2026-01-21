Return-Path: <devicetree+bounces-258118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFhjJg4/cWnKfQAAu9opvQ
	(envelope-from <devicetree+bounces-258118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:03:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1C65DBF6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4A21A80B733
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9945C3EF0C2;
	Wed, 21 Jan 2026 19:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwNB7NoE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DBE3EF0B7;
	Wed, 21 Jan 2026 19:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769025419; cv=none; b=rDIrHiUXtyr2NhsHSloj9hsyOWkUi+FlORO0ipV1f5OqNqXD6TlwcdS1PakUDCBJKELZx21zW7LCB0FCPAKZCS5ipfKD0dTewDzBP/0VEiah8Tu5Fanihlvyky6bjBSPcX9riSWeYRhRyP3X1tRTO5vs3ddMBkyqOsQtNYa2vPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769025419; c=relaxed/simple;
	bh=q5vfvsNNHukkTxi4H/nQ+vW1T6KSyihaVNfG3gXPrN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EbGgyP0JJyPnPPerq+bFCePpLfG0q0OxRYUHVtrxdiz2BfL/YKhrzVG77cDYFg1JyS/rO8LlObjeLms9l9EL+Lgaqgm33VA0EoRWyVkOstAlKIulNmnm/zx2HYL5EzGUitYdg8OzKO1tmX/WaZtKGotXdH960vO4rN6teeQEJZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwNB7NoE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3FBBC4CEF1;
	Wed, 21 Jan 2026 19:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769025419;
	bh=q5vfvsNNHukkTxi4H/nQ+vW1T6KSyihaVNfG3gXPrN0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GwNB7NoERjnv/TWEUdI4m+Mbl66+sWj7fdEihgLCZ2hmkMR3CArfpqzDAr36xJ+/o
	 V/4Wiy6KPSWtn4MyEDQoFreDR3jephPTE7RrcYM3aSO27GrSpIkbzrS/fW67Nktf8S
	 hdkgnEkjR3KmCIW7UPX2V+cD/xjFYLWSCW75u1R6dJxtId5usgEpLyhonju6xxH7pt
	 vaMN9vBymJsXFHrId0pIAjPrvksISS8PYghA8G+i5MjkWxgQG/ewX1JIBFPUH6qjZ5
	 hCNanwtEkprVksKJ/bPgrirHDzc//CocUE3ZAefROXXFaMcago5BX4xe+72pfmQ2ED
	 IEH1WzLWsn4gQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Wed, 21 Jan 2026 13:56:36 -0600
Subject: [PATCH v3 03/10] dt-bindings: mtd: partitions: Move
 "sercomm,scpart-id" to partition.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-dt-mtd-partitions-v3-3-ec3af93c8f93@kernel.org>
References: <20260121-dt-mtd-partitions-v3-0-ec3af93c8f93@kernel.org>
In-Reply-To: <20260121-dt-mtd-partitions-v3-0-ec3af93c8f93@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Brian Norris <computersforpeace@gmail.com>, 
 Kamal Dasu <kdasu.kdev@gmail.com>, 
 William Zhang <william.zhang@broadcom.com>, Nick Terrell <terrelln@fb.com>, 
 David Sterba <dsterba@suse.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marcus Folkesson <marcus.folkesson@gmail.com>, 
 Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@kernel.org>, 
 Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258118-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[bootlin.com,nod.at,ti.com,kernel.org,gmail.com,broadcom.com,fb.com,suse.com,milecki.pl,chromium.org,linaro.org,atomide.com,hauke-m.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4C1C65DBF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Defining child node properties specific to the parent schema doesn't work
unless all the child node properties are known. They aren't known because
any partition can define its own properties. The solution to this is
typically something like spi-peripheral-props.yaml, but that's overkill for
this single property. Just move it to partition.yaml instead.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/mtd/partitions/fixed-partitions.yaml   | 10 ----------
 .../devicetree/bindings/mtd/partitions/partition.yaml          |  9 +++++++++
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
index 73d74c0f5cb7..b504d4376d0b 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -33,16 +33,6 @@ patternProperties:
   "@[0-9a-f]+$":
     $ref: partition.yaml#
 
-    properties:
-      sercomm,scpart-id:
-        description: Partition id in Sercomm partition map. Mtd parser
-          uses this id to find a record in the partition map containing
-          offset and size of the current partition. The values from
-          partition map overrides partition offset and size defined in
-          reg property of the dts. Frequently these values are the same,
-          but may differ if device has bad eraseblocks on a flash.
-        $ref: /schemas/types.yaml#/definitions/uint32
-
 required:
   - "#address-cells"
   - "#size-cells"
diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
index 0b989037a005..568fac50f921 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
@@ -126,6 +126,15 @@ properties:
       - xz
       - zstd
 
+  sercomm,scpart-id:
+    description: Partition id in Sercomm partition map. Mtd parser
+      uses this id to find a record in the partition map containing
+      offset and size of the current partition. The values from
+      partition map overrides partition offset and size defined in
+      reg property of the dts. Frequently these values are the same,
+      but may differ if device has bad eraseblocks on a flash.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
 if:
   not:
     required: [ reg ]

-- 
2.51.0


