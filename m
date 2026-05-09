Return-Path: <devicetree+bounces-294920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aODwII9h/2n45wAAu9opvQ
	(envelope-from <devicetree+bounces-294920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 18:32:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CA50079B
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 18:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20DAF3015459
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 16:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5F82F9C37;
	Sat,  9 May 2026 16:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="bjwEy7gQ"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA9226B75B;
	Sat,  9 May 2026 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778344317; cv=none; b=fcuzWu/iOw0HbOXg5q5eGJIb0mjH6ZBJ6A2Sx7+WnOxoj2RQ6rVCWPRJl5gB3YVVKz5+r5yKMqH6//n/fUIdy+o5nSYCw/zsPt2qx5a5XH8EI8gqZbFo4Qsp/0yEKax1bcoRgpP4unJ3sh8WZ/kLps2Tcv86to6fQs9tTdfEVKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778344317; c=relaxed/simple;
	bh=bqtRRNnjzWDYpSIPoW4ZWQvlp6sz6WlnuX2yp7ogis8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SGiqD/h6a/fAAN6GNPFyzbfMISByrAFZjUwynnjibkVr/ht2BtdKg/oW5yiidSEESj/hcbE7uHSd9pjxuplIOayuA8ciLzv4DgAPb/0JgJX6O9Ef6JD89Qw8I/gY336eMgdauOFNIeo+Uq9vIcstwlziAUjldonv/ZeYGkeOAGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=bjwEy7gQ; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id CEB5226F87;
	Sat,  9 May 2026 18:31:52 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id abWFWf9Ew0VT; Sat,  9 May 2026 18:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778344312; bh=bqtRRNnjzWDYpSIPoW4ZWQvlp6sz6WlnuX2yp7ogis8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=bjwEy7gQpLev0N2EiSHiArAM5zrDrjI7BIc6Nd6pTQgVb0y+89R3d5HcTojYEmHPO
	 L+Ec8RsFWr9NSBZBbpJeWy9uDDEiJK0UIdJqgCgHyguSdD0noIrwwDmWay2ZJQin+5
	 SzzcLN7gP//yrWT3GwAh4N6p3JELOjkBvqqAe105N7R8PjkUa0DApx4rcvahoCGKth
	 qWTa3NgI6tC64ubShx0G/CnEekY1myE2Mtfpko5NbUSvcs4Arni2OghyaSAfLhyAyy
	 2APv8rg4Mmue8OXVmHR2ERpfN0mFqYTIdy0DIPtVVgAXmksN92+b5V3KZKRoD7BxZF
	 ZCIohzFTML3GA==
From: Rustam Adilov <adilov@disroot.org>
To: Sander Vanheule <sander@svanheule.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH 2/3] dt-bindings: watchdog: realtek,otto-wdt: add compatible for RTL9607C
Date: Sat,  9 May 2026 21:31:00 +0500
Message-ID: <20260509163101.722793-3-adilov@disroot.org>
In-Reply-To: <20260509163101.722793-1-adilov@disroot.org>
References: <20260509163101.722793-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E25CA50079B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-294920-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,disroot.org:email,disroot.org:mid,disroot.org:dkim]
X-Rspamd-Action: no action

Add the realtek,rtl9607-wdt compatible to the Realtek Otto watchdog
binding.

Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml b/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
index 1f5390a67cdb..ac9db40b12dc 100644
--- a/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
@@ -30,6 +30,7 @@ properties:
       - realtek,rtl8390-wdt
       - realtek,rtl9300-wdt
       - realtek,rtl9310-wdt
+      - realtek,rtl9607-wdt
 
   reg:
     maxItems: 1
-- 
2.54.0


