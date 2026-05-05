Return-Path: <devicetree+bounces-292897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCmkJyuc+Wkn+QIAu9opvQ
	(envelope-from <devicetree+bounces-292897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 09:28:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C2D4C7EAF
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 09:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01305303C3E1
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 07:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2333DD51B;
	Tue,  5 May 2026 07:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="03wm87OJ";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="CXKZrWQK"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEE13BD643;
	Tue,  5 May 2026 07:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777965917; cv=none; b=oyydorTZYsbz95G4SjBTuoEAOCx0oKyV4AlIumhuwhNjeewulIllv/bLasa8ghfs6kiDslM30ob/U+nspBD/M3NgI+RLGZudjpqsV98DFwCIp9otnyfUhU9T5tpasGKQVblx19Xw6NdCuOE/A7i7wJSo7O9s4zmWNS8S0Ouwwd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777965917; c=relaxed/simple;
	bh=ku25ZC7Xfr1mnVIoO/JCu5TSYP52wMnTpzpP3xJcXKg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cNGIUax1imOmEd5jchHcfQJyTJXFTz0+l5dgl/Y2JQcd/PgLD1AXWR2wNXSOCEq0wmetstdvGVIsQlbKI/qChoDSAmpFdaL108hjmQo5TznSM6QL5y7ZPgPtm0NqI7z2RaZRWZRfPjqxSvUwUpBxzzsM4YydR4fM6wjaqm+6WeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=03wm87OJ; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=CXKZrWQK; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1777965915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jhHEBcXQu0dSPfZI7PKo5xY8SurnMGXO53mDLy+S/5A=;
	b=03wm87OJLojRX3pP+36IGJDqB71ElhKLRiA2oKfsGC4ekfacsmtTfQbnZ8978VD+pZ3oYn
	Fbm9/7TNKK3c4rZ7COtM0ge6PiGweiA9F+icjQocMDpWOBrbUjXAkI9cfkpfbbQUPtxS47
	zHqz2fgq8JQOFNh06CgHNYyWR81GeBhAucE53twElx2Y87P203OsDrQjRaY+1THU18thOb
	LVx3bV5FfX79tFVDHPtaj8zHDmUj9Nruo60a+x56k9V7lBMDPpalaBiNgvYH9F6KtQkM+A
	8JD5ne7KwhHMApjDswX8CWYfMHPr3bZthclf+O+flprN1FeQFwjOMVKZpfXkNA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1777965915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jhHEBcXQu0dSPfZI7PKo5xY8SurnMGXO53mDLy+S/5A=;
	b=CXKZrWQKrSMc4dIrCWKXlT1lQn+ZIzLnsFb+loGrqBB7t87J1PY6KWfggUlTNCBJ3NpG0I
	TRQQ88wke2L23DBw==
Date: Tue, 05 May 2026 09:25:09 +0200
Subject: [PATCH v2 1/4] dt-bindings: raspberrypi,bcm2835-firmware: Add
 bcm2712-firmware compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260505-rpi-otp-driver-v2-1-e9176ec72837@linutronix.de>
References: <20260505-rpi-otp-driver-v2-0-e9176ec72837@linutronix.de>
In-Reply-To: <20260505-rpi-otp-driver-v2-0-e9176ec72837@linutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
 Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-hardening@vger.kernel.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777965913; l=903;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=ku25ZC7Xfr1mnVIoO/JCu5TSYP52wMnTpzpP3xJcXKg=;
 b=3MZiqMrb4EjsSOBa4aSVVciqxGDPpHH5NSiMS+fNLZ/Q9C0jn80z/Hn0vyPfw1pyXii8MSeE0
 Ws1D+hrYLFBArIYRqRDaYeqCXBIk3h2IW28+7ZPC2LdCeXR0KMw75vG
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Queue-Id: 03C2D4C7EAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292897-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,linutronix.de:dkim,linutronix.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Add a compatible string for the bcm2712 firmware.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 .../devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml     | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 983ea80eaec9..eb6b556511d8 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -22,7 +22,9 @@ select:
 properties:
   compatible:
     items:
-      - const: raspberrypi,bcm2835-firmware
+      - enum:
+        - raspberrypi,bcm2712-firmware
+        - raspberrypi,bcm2835-firmware
       - const: simple-mfd
 
   mboxes:

-- 
2.47.3


