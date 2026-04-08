Return-Path: <devicetree+bounces-285621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GCREEML1mlnAwgAu9opvQ
	(envelope-from <devicetree+bounces-285621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:01:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C142F3B8AB3
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20727300E5D4
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 08:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BDB39C01A;
	Wed,  8 Apr 2026 08:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="B4OegvsI";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VPL9iZr6"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EC434EEE3;
	Wed,  8 Apr 2026 08:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775635232; cv=none; b=jqVTM88sVWNETZalkec4rs1rA9voPFDN6usH/7ddelqQ16kEt1g4LTNl0WMahhF7efwXYMAaonYTtXiQXQjc9DhWxJ58T/S9sFyZqccPgCpygLyjGEkKIuxTeCp4GXWlJlSuvb3YSp64lKOZrlhITCw9PmnkjaYXv6xeRu0GZdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775635232; c=relaxed/simple;
	bh=/3j3lZdv+iRGHGGZlhKUgCrFKI+nuGpuzrD3xSLmtOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nmB5k8CvBBO95yp9nJgrIWgOKwurYczj4ihl5eGEzhctha2Tm571p6jCcPPSrKxYi+h053Quel3/aooR953jNlFEgVCdc+bkPTKD6a+DylfsIJ3G9k5S43TjBHgynyBo+h1K2jznOHt3Nrv/ydOvr+Sd64dZvkPlUJtvOvV8M7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=B4OegvsI; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=VPL9iZr6; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1775635222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i9F28QPoElHFXjSecKpbA7nEHozVWxdHvwW0NuOzOy0=;
	b=B4OegvsIn9uOpZWI2iZsbq++71UYPOhxkm1VqvN5Z1Kr9HVf9MK5rweAB6QQwt5yqPl3RK
	dtv5m3pIl+pp6Z82XzXbwcoY7jcObmJG+HpVlCLF9SAXd5YyaoscLcgWsOdss67bkRNO+Q
	Kyc7GeVN2KfJT9yd7MW7+nVBt+aGtGFQT6aPIskM92+vc3xuZUS3DXQ2LzP5OpAym5w1iQ
	SF2dcpf2Dvfw2XEtJPsLI+9yKu4el809nV+1ECsx6a+Kmx6xzVnsJYG3GPe3ZxcjymIdO4
	Fosuuy9IzQ0yLufobCK1L2g6ln/hTyiqA4g61xmWP0OfOyXeVHpuNGxLpw9zmg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1775635222;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i9F28QPoElHFXjSecKpbA7nEHozVWxdHvwW0NuOzOy0=;
	b=VPL9iZr6OSfiSBq1WUYd7QNmX8q6lrj8nbsbTvi+nxAFXcHTfK9jZo/4snnI5BA5u/iSrQ
	pLgVuLO9M1cmSSAw==
Date: Wed, 08 Apr 2026 10:00:15 +0200
Subject: [PATCH 1/3] dt-bindings: nvmem: Add a binding for the RPi Firmware
 OTP register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-rpi-otp-driver-v1-1-e02d1dbe6008@linutronix.de>
References: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
In-Reply-To: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775635221; l=1463;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=/3j3lZdv+iRGHGGZlhKUgCrFKI+nuGpuzrD3xSLmtOY=;
 b=JDccdOhsks2lYIuuKHjN7S+63sLl0WfsaVwTYbaeowBEVFTMfxKs1Ej/O6+30XkrntO+qeMCy
 Pa8Gj1m4xYmAY0G28P9SZHGe/aalyhZT+xn91KXMfW2rtSEdpIb8wk8
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285621-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:dkim,linutronix.de:email,linutronix.de:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C142F3B8AB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The firmware running on the Raspberry Pi VideoCore can be used to access
OTP registers. There are two OTP regions (private and customer). Add a
binding for these.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 983ea80eaec9..975c8927d75b 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -137,6 +137,20 @@ required:
   - compatible
   - mboxes
 
+patternProperties:
+  "^otp-(customer|private)$":
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        enum:
+          - raspberrypi,firmware-otp-customer
+          - raspberrypi,firmware-otp-private
+
+    required:
+      - compatible
+
 additionalProperties: false
 
 examples:
@@ -156,6 +170,10 @@ examples:
             #gpio-cells = <2>;
         };
 
+        otp: otp-private {
+            compatible = "raspberrypi,firmware-otp-private";
+        };
+
         reset: reset {
             compatible = "raspberrypi,firmware-reset";
             #reset-cells = <1>;

-- 
2.47.3


