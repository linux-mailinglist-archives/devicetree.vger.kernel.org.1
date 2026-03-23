Return-Path: <devicetree+bounces-279239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFCSCg1awWnbSQQAu9opvQ
	(envelope-from <devicetree+bounces-279239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 16:19:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 291C42F626E
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 16:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 203F130C565E
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 15:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 625C23B38BF;
	Mon, 23 Mar 2026 15:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="JgW3SLpI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40243B3884;
	Mon, 23 Mar 2026 15:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774278186; cv=none; b=C0RQoaRa+4XtnNPMu+4TwIg7uglMer6/X7ujl59d+FNUrm3ostVF9n/mArf5/Lr6kWM8Kin6MtLrE2YZrTdDrda3mfEjQIiGlo7SKp4vXUQ1Yb/WVDzmtSdG7G0TMEhWLnZentta/eKHkYG9skx+pjAwOpMiOJwEDpHjr0DcQ0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774278186; c=relaxed/simple;
	bh=0fceF0cVwQlCGxddCO3QL7u/MrNVgrZpDC+/xLKaCHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fUk5wbODb2J2JtOf6IpQdGDyl6eaSDGVD5ZiiEHUPt4v5IuKOFiz8I1gozt50fGsWmfg651urnJweYxUAjWHh3amdWObbiDkJAWQv16Cmi0G6neObRe1BTJlZMopcFr2O4lN5grTSCmXoyj++6rJeVhyyRWMPKuGVbYj5YowQOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=JgW3SLpI; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 76E26C58085;
	Mon, 23 Mar 2026 15:03:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9A9ED5FEF6;
	Mon, 23 Mar 2026 15:03:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9362E10450FE4;
	Mon, 23 Mar 2026 16:03:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774278182; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=49frKNUVvOfaVYtlewLBdpOk3TUCuKezoYZbv3SlSSc=;
	b=JgW3SLpIat/2bTNFofkY32z+zAVCNtcNe24J3VwTFZvv25KZnbvKcRn5hiFTGsoGEYG6lO
	vqUQasvwK1Wi2tjGa2BhZ0dCtCG9vGVtrpXjUFqZjBe8FiVZUoivSonBYc80tsUMkGzBSO
	aOnZ/2x5fgFu2zeAteJw4QIm0qIWPx89fQQDZsalVEjMapThfU9AjmbMr7tUHqsiC6rn5O
	Z4oY0/btggCuMCb4Fr6UM2L/VUJx+7binQ7K+r40Rv2q5RwNcNNIjX73z0PHnE6hChXm8k
	jH7d1EHo2Dqrn1PbsAEePn4E1sa8IAXfDwCs4CPwlnPPJ+p0AqWW/ER5YzkcMg==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 23 Mar 2026 16:02:47 +0100
Subject: [PATCH 6/8] dt-bindings: mfd: ti,omap-usb-host: Add 'pbias-supply'
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260323-omap4-fix-usb-support-v1-6-b668132124ac@bootlin.com>
References: <20260323-omap4-fix-usb-support-v1-0-b668132124ac@bootlin.com>
In-Reply-To: <20260323-omap4-fix-usb-support-v1-0-b668132124ac@bootlin.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279239-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[iki.fi,kemnade.info,baylibre.com,kernel.org,atomide.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.richard@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 291C42F626E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the 'pbias-supply' property, it is used to specify the voltage
regulator that provides the bias voltage for USB cell.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 Documentation/devicetree/bindings/mfd/ti,omap-usb-host.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/ti,omap-usb-host.yaml b/Documentation/devicetree/bindings/mfd/ti,omap-usb-host.yaml
index 7831ad891229aee650d83adcd82405c9dde472a8..8ec354ac2bcb6e381744506f6afc57a04d460df1 100644
--- a/Documentation/devicetree/bindings/mfd/ti,omap-usb-host.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,omap-usb-host.yaml
@@ -56,6 +56,11 @@ properties:
 
   ranges: true
 
+  pbias-supply:
+    description:
+      It is used to specify the voltage regulator that provides the bias
+      voltage for certain analog or I/O pads.
+
 patternProperties:
   "^port[0-3]-mode$":
     $ref: /schemas/types.yaml#/definitions/string

-- 
2.53.0


