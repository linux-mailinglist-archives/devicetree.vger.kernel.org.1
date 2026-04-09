Return-Path: <devicetree+bounces-285929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMcxFgrz1mlpKAgAu9opvQ
	(envelope-from <devicetree+bounces-285929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 02:30:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EE53C5002
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 02:30:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C284D302AC1E
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 00:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D51CB25FA05;
	Thu,  9 Apr 2026 00:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="GzR9LSEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596632DF68;
	Thu,  9 Apr 2026 00:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775694598; cv=none; b=IfoHCi6aCTVqt5YOB13evZ2t2X5bfIhPpiE3OrnAwn+W2EckTDhnho20jqDQ8DK1/hwwhNTeYQbv9zGFNkYPTiZOxFfbFhlS5EucIOacG8mzAlBXVAbDfeAzNSO1oe3z0/IgYxIoonAHlBJ66+FZmRPOwGTb+xtZlVhzhAx3blY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775694598; c=relaxed/simple;
	bh=k1PwUYODdRzVWCmvj/9zynndZvKRM/6E4cVjE8b1eN4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CPlnUBIyecon3A4nbgbDWQAqDcn3xdZFgmUWVRh4DTrSfCshVtfzIIB8W7/hQAnTSEsDC3Nn//gp/icCcitjU9iUABSwvtm4QALLJtMkowC/8kkq4lax29ynMDzElPtGBs4TNJVDXg+gjgc8hBd/8UmCYUZmL8GZuLl+4O44zEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=GzR9LSEa; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5CD54112BA9;
	Thu,  9 Apr 2026 02:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775694595; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=GNIssRFUHPMyxZLJvSc8faUqotWHKabK260SQNJo/+E=;
	b=GzR9LSEamfKNBTYLR8cDazaoLLO8eKr2xcPXCFElDamvA8NAVZdGwhyBr6QO6YU+h5bzCK
	pn3KP+HWlu3XPvnhjlfJd/O6X93nJygRGMKFBqNXkQckxLwqvNV1GUxSlmUFdBvT1PUp8j
	RU2kwXrPaBQR26hS7P64PNmUYA5mUhqpWM/+D5OXCg7mzmQjv7347UlhjLJrKOoqL+sh9r
	D6/LgQa5/ftSl6ewQkAznLcHAzxwnANUXb/PU7vgrWRH6CE977AdfYxpd9bLIXwln98JvW
	j/ErrG4cj4fXI/xfeG2oswVEdemD/+zI8WTErEk/QnECF9nHdnAItqMUSfsYvg==
From: Marek Vasut <marex@nabladev.com>
To: linux-clk@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Brian Masney <bmasney@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Michael Walle <michael@walle.cc>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/6] dt-bindings: clock: fsl-sai: Document i.MX8M support
Date: Thu,  9 Apr 2026 02:29:01 +0200
Message-ID: <20260409002952.319668-1-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285929-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:dkim,nabladev.com:email,nabladev.com:mid,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B0EE53C5002
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The i.MX8M/Mini/Nano/Plus variant of the SAI IP has control registers
shifted by +8 bytes and requires additional bus clock. Document support
for the i.MX8M variant of the IP with this register shift and additional
clock. Update the description slightly.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Brian Masney <bmasney@redhat.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Michael Walle <michael@walle.cc>
Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
V2: No change
V3: - Rebase on current next, update mail address
    - Pick ancient AB from Conor, although this may be outdated
      https://patchwork.kernel.org/project/alsa-devel/patch/20241226162234.40141-1-marex@denx.de/
    - Invert the allOf conditional to match on VF610 and limit
      the clocks/clock-names there. MX8M can have one or two
      input clock, "bus" is mandatory and "mclk1" is optional.
      The "mclk1" are used by the driver in 4/4 .
V4: No change
V5: No change
V6: No change
---
 .../bindings/clock/fsl,sai-clock.yaml         | 41 ++++++++++++++++---
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/fsl,sai-clock.yaml b/Documentation/devicetree/bindings/clock/fsl,sai-clock.yaml
index 3bca9d11c148f..90799b3b505ee 100644
--- a/Documentation/devicetree/bindings/clock/fsl,sai-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/fsl,sai-clock.yaml
@@ -10,10 +10,10 @@ maintainers:
   - Michael Walle <michael@walle.cc>
 
 description: |
-  It is possible to use the BCLK pin of a SAI module as a generic clock
-  output. Some SoC are very constrained in their pin multiplexer
-  configuration. Eg. pins can only be changed groups. For example, on the
-  LS1028A SoC you can only enable SAIs in pairs. If you use only one SAI,
+  It is possible to use the BCLK pin of a SAI module as a generic
+  clock output. Some SoC are very constrained in their pin multiplexer
+  configuration. E.g. pins can only be changed in groups. For example, on
+  the LS1028A SoC you can only enable SAIs in pairs. If you use only one SAI,
   the second pins are wasted. Using this binding it is possible to use the
   clock of the second SAI as a MCLK clock for an audio codec, for example.
 
@@ -21,17 +21,46 @@ description: |
 
 properties:
   compatible:
-    const: fsl,vf610-sai-clock
+    oneOf:
+      - items:
+          - enum:
+              - fsl,imx8mm-sai-clock
+              - fsl,imx8mn-sai-clock
+              - fsl,imx8mp-sai-clock
+          - const: fsl,imx8mq-sai-clock
+      - items:
+          - enum:
+              - fsl,imx8mq-sai-clock
+              - fsl,vf610-sai-clock
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: bus
+      - const: mclk1
 
   '#clock-cells':
     const: 0
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,vf610-sai-clock
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names: false
+
 required:
   - compatible
   - reg
-- 
2.53.0


