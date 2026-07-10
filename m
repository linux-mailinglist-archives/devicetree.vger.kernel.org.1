Return-Path: <devicetree+bounces-324294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pVncDam5UGo74AIAu9opvQ
	(envelope-from <devicetree+bounces-324294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:21:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF381738FB8
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:21:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=YGnmeWGI;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=jhAl3fNg;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324294-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324294-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A33C8300B474
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E0038AC83;
	Fri, 10 Jul 2026 09:02:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B52E7369;
	Fri, 10 Jul 2026 09:02:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783674148; cv=none; b=aXVCrxFcpePdoNxeCpMa0FF9saNJDaxhDHh7Q/8+6WCimQry4oJQf0Zeyz2TbdPkxPLcV73V1xX6Y60YF0AENrJVIcjHps36dcb3kT+bUpYGMYmB1q07w5KhgJ99iFchkjje0ho+Rbi3jzXwTmiS7NMU048j7UdX/fhPUobO02o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783674148; c=relaxed/simple;
	bh=xGt6gq4sAwDh8sUQSAPS+oN9cHtfbx39wXRTu1ZXaco=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UXY5vRTx/n8pnytScLV7wZQPZVLcN8zz+6W1Mqe+uVeRfehIEKH7Nw2/3A3pC9zZKVsxj5wpFTUKr01eFlc3vqvYpgt8Zh3j84lWydsEF75LCpJDNLONwODwqVmDusiIMNlcQ+xyNURNT6o5YXhiHI3kAOApMfiE7FftopQf8ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=YGnmeWGI; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=jhAl3fNg; arc=none smtp.client-ip=80.241.56.151
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gxQnq42H7z8txS;
	Fri, 10 Jul 2026 11:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783674143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cCi6U1+EQQRk5U4Nl2AQbLWyrV1XsKv7qtsd7C7pOXQ=;
	b=YGnmeWGI47P+inwCVz58dmUOJ5K7nSZCkmUthQJybvzPLTB/5im2ekJo+438perRfV8XON
	GMHpnPTaQDfN6v5KI2iclwpAmVv1tY+2KSzC0McMzbR4JbjTuOjM9M65EbTe/XMFDlwmPe
	zoTO+J4pSduIhbFWJEFgF2R1ogwgmA1uEC0W962mgFXRDxxWlaQH5B7qXr+ApsFiH0Kh+W
	+JBwWSUb8nvga7iT14vpVEfVXeL2okrMLbo1KMwAQxb/i3cAUPMjBr09tccq4j4r+ZkV6g
	K5wc+2lcBP1cxTJF7XDGafq7DzHSJ7prraNJbftYyBlf4u+FJO1+zZpDxlJDGg==
From: Manuel Ebner <manuelebner@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783674138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cCi6U1+EQQRk5U4Nl2AQbLWyrV1XsKv7qtsd7C7pOXQ=;
	b=jhAl3fNgYIWC4KX+FfHqaxKp6nEtn0YbQi7UEXna8ko6pycaYuIYrVHePEU4U8xK3TQYEc
	xbfUstI9h1qIOAedlrw6xGxT/mWzujtGwvz4S6YfotY22LhMbA6S16fAhAY1Xy/j5yo742
	iO8OQ+tD3dFcd9CSmvdxDGg5WGRLscxIJonE8rbnUS+nNO72+J+ekDxmyPxwT5i2pG5G5x
	sELlrVjM98eYARyMxhWJXeYpJZgxwGZXzGtYSzAWfUz8zgMErMpLo5wDEAUFzu3GDzpC0v
	Uw+UM+UU1409mAKqGcg75X2jGLkwGXGyTTJNKtcQ0MNRcOaFobeaGaTmr8nlGw==
To: Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Manuel Ebner <manuelebner@mailbox.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: input: fix bracket
Date: Fri, 10 Jul 2026 11:01:53 +0200
Message-ID: <20260710090153.431170-2-manuelebner@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: 44052ab82d1af872f2b
X-MBO-RS-META: mz54pqwo37y76dxuefdrwcbya43ka41n
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324294-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[dimonoff.com,gmail.com,kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[manuelebner@mailbox.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:hvilleneuve@dimonoff.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:manuelebner@mailbox.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manuelebner@mailbox.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,dimonoff.com:email,mailbox.org:from_mime,mailbox.org:email,mailbox.org:mid,mailbox.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF381738FB8

Add missing '('.

Signed-off-by: Manuel Ebner <manuelebner@mailbox.org>
---
 .../devicetree/bindings/input/gpio-charlieplex-keypad.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
index c085de6dab85..c6842c017934 100644
--- a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Hugo Villeneuve <hvilleneuve@dimonoff.com>
 
 description: |
-  The charlieplex keypad supports N^2)-N different key combinations (where N is
+  The charlieplex keypad supports (N^2)-N different key combinations (where N is
   the number of I/O lines). Key presses and releases are detected by configuring
   only one line as output at a time, and reading other line states. This process
   is repeated for each line. Diodes are required to ensure current flows in only
-- 
2.54.0


