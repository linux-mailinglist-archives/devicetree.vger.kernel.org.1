Return-Path: <devicetree+bounces-268465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG88MBkjn2mPZAQAu9opvQ
	(envelope-from <devicetree+bounces-268465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:28:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8F819A995
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34720316C64E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443C53D4114;
	Wed, 25 Feb 2026 16:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="rfv5+dIg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020F83D5232
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772036695; cv=none; b=HAS0mLClefDAkjgWEwNd68NYjF0rTiSJNLTBHsTlTGe1j/zNZI6RPZ27yOuiLIfitMNZqHdeIithajFZyT4KMzz+JNCPcdiTTaWniQSm4jL/ZiU0kIqAGj4DLZaAxl1qJhBDenujojkpZUtsWbFepuYcqVgam2/O+HZk6Sc8Zy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772036695; c=relaxed/simple;
	bh=oaVNbzP95ZGzHEfJqFMlDqGyupDFRg0PwSkWAAszZ8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uysBoL11cH+MJDgf5mbRw/XmF5mv+g8nvdH2mNWk9xPxyWEaespTVgPLeeUX0UiShu8n6mUGzgvaA0h3mqUoLrruolVU+g/S20qe8k/yPn1Zf3U4bNmXe99PuEx9c1g0Zh7uoCelNTy7NxBze3A2Uvoh3UvFj+jP5UVR/d84oEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=rfv5+dIg; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 9A2721A1342
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:24:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6F7EB5FDE6;
	Wed, 25 Feb 2026 16:24:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 67E5B10369259;
	Wed, 25 Feb 2026 17:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772036690; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=abJKRw/BMMRuxFpyvUhg7fWU4EpemM0LOQXj3saoZxw=;
	b=rfv5+dIgOWyPultmlDTfUeZXZElPcoRds00yh+oRcxks3bNmGOQsFMtVmw0I1bMi1pP3On
	5FJCB5baHNxca/V3nIo0EWttv2xjr+XlG6UkwlNu4xZ6SEWuXnNYsnugFzX+5QE/lbtSiq
	WhDSDXqCS1r46qtdb23ImasuhMgtShC/lnAdidXn4KhcFWeX2ozZq4KIx64FyokAGG+NXJ
	YJfyrW54+E1NVKA2fnhLo5SnE5uXlQLHz6dS7BXBPwD1gtRvv/EzvqVyMvz3W7bd2SNCCw
	ZHTvd+ybkWs7lOQJYBMYOQfvNYPsDL6xccdoxoJr8wF288HQ/wA7Hy+FGxdrZA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Wed, 25 Feb 2026 17:24:43 +0100
Subject: [PATCH 1/3] dt-bindings: mtd: st,spear600-smi: Fix description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-perso-fix-spear600-smi-yaml-v1-1-8ef3d205ab3a@bootlin.com>
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akhila YS <akhilayalmati@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Miquel Raynal <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268465-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: 2D8F819A995
X-Rspamd-Action: no action

The description mixes two nodes. There is the controller, and there is
the flash. Describe the flash (which itself can be considered an mtd
device, unlike the top level controller), and move the st,smi-fast-mode
property inside, as this property is flash specific and should not live
in the parent controller node.

Fixes: 68cd8ef48452 ("dt-bindings: mtd: st,spear600-smi: convert to DT schema")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
index 8fe27aae7527..d065df269657 100644
--- a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
+++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
@@ -19,9 +19,6 @@ description:
   Flash sub nodes describe the memory range and optional per-flash
   properties.
 
-allOf:
-  - $ref: mtd.yaml#
-
 properties:
   compatible:
     const: st,spear600-smi
@@ -42,9 +39,22 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: Functional clock rate of the SMI controller in Hz.
 
-  st,smi-fast-mode:
-    type: boolean
-    description: Indicates that the attached flash supports fast read mode.
+patternProperties:
+  "^flash@.*$":
+    $ref: /schemas/mtd/mtd.yaml#
+
+    properties:
+      reg:
+        maxItems: 1
+
+      st,smi-fast-mode:
+        type: boolean
+        description: Indicates that the attached flash supports fast read mode.
+
+    unevaluatedProperties: false
+
+    required:
+      - reg
 
 required:
   - compatible

-- 
2.51.1


