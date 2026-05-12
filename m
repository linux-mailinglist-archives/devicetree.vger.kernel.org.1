Return-Path: <devicetree+bounces-296172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LkvJswKA2pmzwEAu9opvQ
	(envelope-from <devicetree+bounces-296172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:11:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA4051F1BD
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECE3D30597A2
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 11:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD05351C06;
	Tue, 12 May 2026 11:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="KYOww3Se"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B8236F8EE
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 11:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778584148; cv=none; b=paaLumKbffJra6ToJ6gcL9h0OwKF4E7IkIGFJxOzlqjX0xznzrF7dm8hMKIwr+SZQt+n8zM0ysyIofJfV+byh/CSTMED0wTNosuYwCoZRHPJPnSzZulnAt8vax592hTg2T/4+uIjjz/ZiJ8z0iXkGUhf/wxF7mk0x+SKwI5ta5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778584148; c=relaxed/simple;
	bh=6sBkNzcSJEmClser7RU1byaBHWvD1kG0EkbbuOgoVzc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SgBcoLW7rJgXeNkkTjZmwr+435qPAMA8REFBtNdZIRIUUsKyCqEK8fPdVuq1VC+3EC+0o+q9FAZ167/1vKYXhCSXdT8BkVQyem6T1/3m+rSFnYkN76yQWuBlkTOv2uTo1P6FQ9dSPQd2GCAwF4u2TVd+Bh7GeQGmEYRboH0YMvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=KYOww3Se; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from terra.vega.svanheule.net (2a02-1812-162d-3d00-c381-7255-a866-916d.ip6.access.telenet.be [IPv6:2a02:1812:162d:3d00:c381:7255:a866:916d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 4251D77E05D;
	Tue, 12 May 2026 13:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1778584138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gi3hYW1miYO7IMx6EelMBvMeuX2Qm2tFbTYi15/A9TA=;
	b=KYOww3Se3WvT8C3XS7+5LazJ73Duq65vjr4GZBhwFsAP9QFRS1Ogqo0BvJsEpqQBW+QkJs
	0+mSep1b0H9DkrS84VP/U94fyDdjRk5o2Js2NXuZ4BYecToF9eDiMF4LWT8OEMW5jcxMsI
	Yxnh9YZ461ISHWDA9DF/5H9RpE+QJ1tgNjMWu4YOdgveE3ZDdRQWoyPAAoDuoTcfhbh7le
	bw0wiP4sW18rHjA1/VQFdrHKCjwVtWE7AvtNN3DSqMx3MX3/8a1+sDstirNRHnvrsgtALV
	teMSHrQKuBPQYg+PZn1YTazErhx/hLDI/qJiNtarlucLxlz61dBa4HrPAi6KjQ==
From: Sander Vanheule <sander@svanheule.net>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Rustam Adilov <adilov@disroot.org>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sander Vanheule <sander@svanheule.net>
Subject: [PATCH 1/2] dt-bindings: watchdog: realtek,otto-wdt: Add fallback compatible
Date: Tue, 12 May 2026 13:08:47 +0200
Message-ID: <20260512110848.106620-2-sander@svanheule.net>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260512110848.106620-1-sander@svanheule.net>
References: <20260512110848.106620-1-sander@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2EA4051F1BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[svanheule.net,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[svanheule.net:s=mail1707];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296172-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[svanheule.net:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sander@svanheule.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[svanheule.net:email,svanheule.net:mid,svanheule.net:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

As all known hardware instantiations of this watchdog behave the same, a
fallback compatible can be added.

To remain compatible with existing single-compatible bindings, the
current compatibles are duplicated. New compatibles should only be added
to the list with fallback.

Signed-off-by: Sander Vanheule <sander@svanheule.net>
---
 .../bindings/watchdog/realtek,otto-wdt.yaml   | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml b/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
index 1f5390a67cdb..dcaf29588bcd 100644
--- a/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/realtek,otto-wdt.yaml
@@ -25,11 +25,20 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - realtek,rtl8380-wdt
-      - realtek,rtl8390-wdt
-      - realtek,rtl9300-wdt
-      - realtek,rtl9310-wdt
+    oneOf:
+      - items:
+          - enum:
+            - realtek,rtl8380-wdt
+            - realtek,rtl8390-wdt
+            - realtek,rtl9300-wdt
+            - realtek,rtl9310-wdt
+          - const: realtek,otto-wdt
+      # Legacy without fallback, do not extend
+      - enum:
+          - realtek,rtl8380-wdt
+          - realtek,rtl8390-wdt
+          - realtek,rtl9300-wdt
+          - realtek,rtl9310-wdt
 
   reg:
     maxItems: 1
-- 
2.54.0


