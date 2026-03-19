Return-Path: <devicetree+bounces-277833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bFcVC1EPvGmFrwIAu9opvQ
	(envelope-from <devicetree+bounces-277833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:59:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF832CD4EA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BEFF315EE5B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC173DD501;
	Thu, 19 Mar 2026 14:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b="DjPKuzP8";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="rPKRDR6a"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a4-smtp.messagingengine.com (fout-a4-smtp.messagingengine.com [103.168.172.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB1C3DB645;
	Thu, 19 Mar 2026 14:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773932288; cv=none; b=VYlzQafQu0YR7d77EB/sqC2Dnp+IhBBvbnDF9Gjze4qtuIxFtoziRd2C2knS+v/E10fQWm3/MR+ofGxzYbXuEOP60XVwlpSKKg8RtDBGr68hZDQDZH2wPXiD8OBpXb5gv4Qt+M8a5QNewjd1bOeL5HED8vInrEzUjo4GE6o5fkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773932288; c=relaxed/simple;
	bh=pgxNV0NukCTQwDip0+2Xj8IDia+pUtXJoQL4YDXa/cU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=JDhDWU/CnlZ/u7FhZfclee31uR6it3FtFIHbj+43enIcnj78zo4Uy86qAxiZg8vS4f9IIMDy+OfSTn7z4e3XUV5+LB0aNH/CWIY6ZdULqdbdLy7gl4kChMwEcl+40OjWSJK/k2lhd4YVrPP6As0TZS3SpLLaTEnk1BEsSIQ70Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net; spf=pass smtp.mailfrom=jannau.net; dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b=DjPKuzP8; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=rPKRDR6a; arc=none smtp.client-ip=103.168.172.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jannau.net
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id 27D9DEC00FD;
	Thu, 19 Mar 2026 10:58:04 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Thu, 19 Mar 2026 10:58:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm3; t=1773932284; x=1774018684; bh=3m
	nTyAhpYWz2zaDPLvJ2kJeO/ztsRtlNN1dUSgeAJpw=; b=DjPKuzP8SUF8zr9Zs4
	tpLPVQnLeQ9Il+n7GTO111AOmoZHSV5Xk5ZLzAWYlBJSCJE6LsNTG27G0p5U2Vd8
	MddQJOkWuAEo6s4tioBvc2jmNtwpFSGViTZ2aAjOs1mX6slIB4HGnrEw3myoglLy
	bn3pPWAuNSUeLuQTWSMeVpoeJkk0fKwK3ahH/N7PhWY7V3bVRUKgXyjPjLDsgPfV
	ML0dhJcKNKbvzYQ83y99sJ7n5Gm+kD4csG9rtr9+sZDysNUcLXMw0nuLww1vRB29
	WVZvUfBmq9++q9zGZgi4/LoXasSVQG5WnzxUogubCWQTbNUYFDkH3jGT5POUDBx7
	x4yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1773932284; x=1774018684; bh=3mnTyAhpYWz2zaDPLvJ2kJeO/zts
	RtlNN1dUSgeAJpw=; b=rPKRDR6a96r2lY/dGZZXcA/lhDv1A7Z0Smvi/HGcnIf6
	1St04c77cxzWulpsScPAP6S5F8zi3xsmpqFFBxUtxHXMqYX2d/LF2o1rv6X7yOrA
	whBCXcQd23aE+A+yz72Tn2NnkIBv4IB1RLhFthl0JlwKl6cAoJe8CArpAN938myG
	z4XVl/AXGVbgZLBNdSvpCkbklK+yoRW93mYd1HkzSfs4rWpBsOX6CZzqUpqmC2xd
	8iwTWrvDOfu2M1qDDymWP2GoDJLkzrOoo/B2No8jXsULom/JyoYSIS2/qAdcdVON
	HIp/v4R2Hh008GnZi1rps98C45RvVVK8EupDnOxMvw==
X-ME-Sender: <xms:-w68ab77C32kNdd-CowSo6Mw3vzXRwZ1SoxppdkffthdJDPg6hiXsQ>
    <xme:-w68aZH04Jv7dm4aejy0xAh_U9IcfNpl19cfN0tXXXWPFJ70JiCcQfxHbBME4OkaV
    m_OK-P7aG9idoOjU8h8AL-JXkFnflMDhAMrsms7eQQJh51yxhJl_-4>
X-ME-Received: <xmr:-w68aeApqTetZrojFw1I-TVb2NmBaG6kKah-eelCJoT8uJ_NZdkb8I5h04OECnJVKkDFnhjN1zTjbNQ4SfHPzcGJ6PgfLhR_ka-TBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeftdejfeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephfffufggtgfgkffvvefosehtjeertdertdejnecuhfhrohhmpeflrghnnhgvucfi
    rhhunhgruhcuoehjsehjrghnnhgruhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfffie
    ffteeuffetuefggefhgfehtdfhkefgtdejueeuvdevkeetveevvdffkeehnecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhesjhgrnhhnrghurd
    hnvghtpdhnsggprhgtphhtthhopedutddpmhhouggvpehsmhhtphhouhhtpdhrtghpthht
    ohepjhesjhgrnhhnrghurdhnvghtpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrh
    hnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoheptghonhho
    rhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehsvhgvnheskhgvrhhnvghlrd
    horhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthht
    oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpth
    htoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegrshgrhhhisehlihhs
    thhsrdhlihhnuhigrdguvghvpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrh
    drkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:-w68aWyanuuoSzEXCOILLw5Xauao5bdie_X8jadmvin2U1goGfCtgw>
    <xmx:-w68aa4LI8x0tAr8qZO8AYebamf782YayI6yyFhqGqtD8CiYgl98mQ>
    <xmx:-w68afwftwbNruos5KToLy6ScGOd314v4q09wep5cN9H8nVqKLt7Vw>
    <xmx:-w68aWch0DYfK8TgB_pNkiTbkmS_LnAEJcOA5FvovPvF0EDYfr9TCA>
    <xmx:_A68aaYZLyYCUw22XfOmOHt_6tZgQoJdWRqefD4NWWQN8ds6fN4jLNok>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 19 Mar 2026 10:58:03 -0400 (EDT)
From: Janne Grunau <j@jannau.net>
Date: Thu, 19 Mar 2026 15:57:52 +0100
Subject: [PATCH] dt-bindings: arm: apple: Add M3 (t8112 and t603x) devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-apple-m3-devices-dt-binding-v1-1-12052e195d6f@jannau.net>
X-B4-Tracking: v=1; b=H4sIAO8OvGkC/x3M0QqEIBBA0V+Jed6B0gjbX4l9MGesgdZEIwLp3
 5MeD1xugcxJOMO3KZD4lCx7qOg+DbjVhoVRqBpUq4ZWdxptjBvjXyPV2nFGOnCWQBIWNMZ5Ywd
 PvRqhHmJiL9d7n373/QDNx0uZbQAAAA==
X-Change-ID: 20260313-apple-m3-devices-dt-binding-88cf8a6fd429
To: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Janne Grunau <j@jannau.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3987; i=j@jannau.net;
 s=yk2025; h=from:subject:message-id;
 bh=pgxNV0NukCTQwDip0+2Xj8IDia+pUtXJoQL4YDXa/cU=;
 b=owGbwMvMwCW2UNrmdq9+ahrjabUkhsw9fD9X3pjJtI3JS0P2SPXd4lBN1cYjD3OvrVv8e3FMI
 b9DQvLzjlIWBjEuBlkxRZYk7ZcdDKtrFGNqH4TBzGFlAhnCwMUpABM5/ojhr4jK72J7/wt21y5w
 ZBatY0yZxju9atKaqxt/RzF7eW5238TIMPvG7qxde5Z3/9vWvumt0kWR6HrV/89vtyYxa+26z35
 kJj8A
X-Developer-Key: i=j@jannau.net; a=openpgp;
 fpr=8B336A6BE4E5695E89B8532B81E806F586338419
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[jannau.net:s=fm3,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[jannau.net:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-277833-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[jannau.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@jannau.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jannau.net:dkim,jannau.net:email,jannau.net:mid,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 9CF832CD4EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Apple M3 based devices follow the pattern of their M1 and M2
predecessors. One notable difference is that the M3 Max SoC has two
variants: t6031 and t6034.
t6034 has 14 CPU cores, 30 GPU cores and a combined 384-bit LPPDR5
memory bus while t6031 comes with 16 CPU cores, 40 GPU cores and a
512-bit wide LPPDR5 interface. These are the only apparent
differences between those two SoCs.

Signed-off-by: Janne Grunau <j@jannau.net>
---
 Documentation/devicetree/bindings/arm/apple.yaml | 55 ++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/apple.yaml b/Documentation/devicetree/bindings/arm/apple.yaml
index 5c2629ec3d4cbcee49d3ff6a4db1cc8298e2a2e1..acfe9824921280458d0911ae9cbf609101f37380 100644
--- a/Documentation/devicetree/bindings/arm/apple.yaml
+++ b/Documentation/devicetree/bindings/arm/apple.yaml
@@ -96,6 +96,13 @@ description: |
   - MacBook Pro (13-inch, M2, 2022)
   - Mac mini (M2, 2023)
 
+  Devices based on the "M3" SoC:
+
+  - MacBook Air (13-inch, M3, 2024)
+  - MacBook Air (15-inch, M3, 2024)
+  - MacBook Pro (14-inch, M3, 2023)
+  - iMac (24-inch, M3, 2023)
+
   Devices based on the "M1 Pro", "M1 Max" and "M1 Ultra" SoCs:
 
   - MacBook Pro (14-inch, M1 Pro, 2021)
@@ -116,6 +123,14 @@ description: |
   - Mac Studio (M2 Ultra, 2023)
   - Mac Pro (M2 Ultra, 2023)
 
+  Devices based on the "M3 Pro", "M3 Max" and "M3 Ultra" SoCs:
+
+  - MacBook Pro (14-inch, M3 Pro, 2023)
+  - MacBook Pro (14-inch, M3 Max, 2023)
+  - MacBook Pro (16-inch, M3 Pro, 2023)
+  - MacBook Pro (16-inch, M3 Max, 2023)
+  - Mac Studio (M3 Ultra, 2025)
+
   The compatible property should follow this format:
 
   compatible = "apple,<targettype>", "apple,<socid>", "apple,arm-platform";
@@ -297,6 +312,17 @@ properties:
           - const: apple,t8112
           - const: apple,arm-platform
 
+      - description: Apple M3 SoC based platforms
+        items:
+          - enum:
+              - apple,j433 # iMac (24-inch, 2x USB-C, M3, 2023)
+              - apple,j434 # iMac (24-inch, 4x USB-C, M3, 2023)
+              - apple,j504 # MacBook Pro (14-inch, M3, 2023)
+              - apple,j613 # MacBook Air (13-inch, M3, 2024)
+              - apple,j615 # MacBook Air (15-inch, M3, 2024)
+          - const: apple,t8122
+          - const: apple,arm-platform
+
       - description: Apple M1 Pro SoC based platforms
         items:
           - enum:
@@ -347,6 +373,35 @@ properties:
           - const: apple,t6022
           - const: apple,arm-platform
 
+      - description: Apple M3 Pro SoC based platforms
+        items:
+          - enum:
+              - apple,j514s # MacBook Pro (14-inch, M3 Pro, 2023)
+              - apple,j516s # MacBook Pro (16-inch, M3 Pro, 2023)
+          - const: apple,t6030
+          - const: apple,arm-platform
+
+      - description: Apple M3 Max SoC based platforms
+        oneOf:
+          - items:
+              - enum:
+                  - apple,j514c # MacBook Pro (14-inch, M3 Max, 16 cores, 2023)
+                  - apple,j516c # MacBook Pro (16-inch, M3 Max, 16 cores, 2023)
+              - const: apple,t6031
+              - const: apple,arm-platform
+          - items:
+              - enum:
+                  - apple,j514m # MacBook Pro (14-inch, M3 Max, 14 cores, 2023)
+                  - apple,j516m # MacBook Pro (16-inch, M3 Max, 14 cores, 2023)
+              - const: apple,t6034
+              - const: apple,arm-platform
+
+      - description: Apple M3 Ultra SoC based platforms
+        items:
+          - const: apple,j575d # Mac Studio (M3 Ultra, 2025)
+          - const: apple,t6032
+          - const: apple,arm-platform
+
 additionalProperties: true
 
 ...

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260313-apple-m3-devices-dt-binding-88cf8a6fd429

Best regards,
-- 
Janne Grunau <j@jannau.net>


