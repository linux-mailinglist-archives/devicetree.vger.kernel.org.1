Return-Path: <devicetree+bounces-285495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLSfMWZz1WlC6gcAu9opvQ
	(envelope-from <devicetree+bounces-285495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 23:13:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 370913B4E53
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 23:13:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A1CA3084291
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 21:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DE737BE9E;
	Tue,  7 Apr 2026 21:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="JWrlQ5fE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2C237B3E4;
	Tue,  7 Apr 2026 21:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775596294; cv=none; b=k5Ryj4JXbwCK7U/YJAYM9crv/zxK2Mr9+Jd4XR2FddE9IpWH3pMgzg1VoS/z2Mm3+f5+IsG3yBxCwzoZbyrTKrvPBxf1b9/m0I/l8pL/CRauqBFbJdNru04mEbZTcFk7mNZjzNMnsLXL2Gx8hPIbWy8IYR9ubfQssiFVfVj0gSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775596294; c=relaxed/simple;
	bh=kaV148vM6JMk3l4qpuC0x1WOneFZadAXzWS/1Rr5n34=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bsbDU5nnls/uyi+PCb0lyG0bCm66D9RrstzIKEpRv1mdBXBRP+rmqBDvc0y7WLUsiPg8WYB0qjiM4Q5kjvADkW6Y7jKTrkIpW8zCG0gMQP2h5rwDO6MRrCc2ctIaeHhj+aNRIga40JsQnLPukhmz4v5Qe/aLlYVur6KlOks1EME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=JWrlQ5fE; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E6ACA112837;
	Tue,  7 Apr 2026 23:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775596289; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=Rt49JkiieT/pe8PlugWKOyPtmS962EmB7N6YZ/eqmjI=;
	b=JWrlQ5fEL4RG1PuxlCU/ejg3kEuCnn46vokNv6RlSi86Z9LWf0VhDUo+oyWvCj5oU7T//k
	P86jKRpU3I9notyz8GrgBV+DFQ9zTGcqAPvZY4GPga7DTPYnLOG+bysRwTgfznmaEe5atv
	zXT/JIMnweDgJ0Q/nPJRddjOUKS9KwAqhyBDRpt9kB/ifwwacCmRZd+yY6XVi0OwZj8Zj1
	6sGU+kQFH4mNEx1zSjQjjvdFsfWTdfZhiWKxRXsX854aK7+4z7nd96lY7pxA29U/mErnSp
	8nA15sckj5lN3D6hoi3thAsAUgNt+dWDLri+sGpKApc2cuAsodEzlw7/B1hoNA==
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
Subject: [PATCH v5 1/6] dt-bindings: clock: fsl-sai: Document i.MX8M support
Date: Tue,  7 Apr 2026 23:09:58 +0200
Message-ID: <20260407211123.77602-1-marex@nabladev.com>
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285495-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:dkim,nabladev.com:email,nabladev.com:mid,walle.cc:email,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 370913B4E53
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


