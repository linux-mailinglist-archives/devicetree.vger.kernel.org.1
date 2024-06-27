Return-Path: <devicetree+bounces-80529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EA1919E43
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 06:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8B141F24704
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 04:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57EB71C696;
	Thu, 27 Jun 2024 04:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="L5VR4DUt"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944D21CD20
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719462811; cv=none; b=FHvIY3ytJZTVVjXgviMQVsgUqaBSD3xh9VPpn7VLsjYB240GMBHj33ouXoCgetld61qvsDGvCkDEDFkx10o4T6F1r83gQrYSbeqD4eb0oJBgy2zJTOkN/cC2661r6h6K6Sk8g3k+wZi7excLhV5aLfDVc1Keqx4a47ebGsuVYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719462811; c=relaxed/simple;
	bh=qtWouIeSqxc8SQXAJd2Fe1NXRZ6SvYPUz0BqPENUIvE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rf1rrVIUb63yvMPSR3IRNT4XIB0EmKFaWn34E2TpBF1neFK8JA+lyrnbXgePfzGIjhSfVHAt1iK/ZVviH+jEldbVXwNsQ7wTezr564Bpf0tviKnBePG6KmE+E1sN/cAmEyLsNufJEJXPMP6C3oWb4AjftgLdlXAgdX8dX9L1MMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=L5VR4DUt; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B94A72C0715;
	Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1719462802;
	bh=jI2sZsbSPKTHA9dVQ0SCKTGaq9ONt4i+cOgJyQI8DtQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=L5VR4DUtmXAwNuRn2lYMl5UL1EsmdW/7tKRsnANUR+N+S+dbn/7PMSmNQLh1gisu/
	 trHYy8Z820T9BH9hY9CyspRlQ4yQ5BjPKhLAAhvQoSkkok+rQErNfT2bMIf6BTBukW
	 ukU2sxLV7SgiefRL3vT7YfE2EmH2rTrbELuv1JLLDfSuT6LbVKkGZHcMryBc2vWip5
	 OmjXIk4/QwtGz/rX2htjlfUNGiZswmgTh+HLLvO9r0n4jgYuckfvjirxFfTzz9bb1+
	 x/hCpj2VKUpmp5CSi11cZRmbUYw7Yl/0pm4mi+Kxjp4pYvKuNODhFlNuyrUV0wtgKU
	 +IRxD2u2ZSpnw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B667ceb920000>; Thu, 27 Jun 2024 16:33:22 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 010EB13EE6D;
	Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id F23DD28078C; Thu, 27 Jun 2024 16:33:21 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	daniel.lezcano@linaro.org,
	paulburton@kernel.org,
	peterz@infradead.org,
	mail@birger-koblitz.de,
	bert@biot.com,
	john@phrozen.org,
	sander@svanheule.net
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	kabel@kernel.org,
	ericwouds@gmail.com,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 6/9] dt-bindings: interrupt-controller: realtek,rtl-intc: Add rtl9300-intc
Date: Thu, 27 Jun 2024 16:33:14 +1200
Message-ID: <20240627043317.3751996-7-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
References: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=CvQccW4D c=1 sm=1 tr=0 ts=667ceb92 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T1WGqf2p2xoA:10 a=RxOWC8M5BiJtX5JSj5EA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add a compatible string for the interrupt controller found on the
rtl930x SoCs. The interrupt controller has registers for VPE1 so these
are added as a second reg cell.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - Use items to describe the regs property
    Changes in v2:
    - Set reg:maxItems to 2 to allow for VPE1 registers on the rtl9300. A=
dd
      a condition to enforce the old limit on other SoCs.
    - Connor and Krzysztof offered acks on v1 but I think the changes her=
e
      are big enough to void those.

 .../interrupt-controller/realtek,rtl-intc.yaml | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/realt=
ek,rtl-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller=
/realtek,rtl-intc.yaml
index fb5593724059..d0e5bdf45d05 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/realtek,rtl-=
intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtl-=
intc.yaml
@@ -25,6 +25,7 @@ properties:
       - items:
           - enum:
               - realtek,rtl8380-intc
+              - realtek,rtl9300-intc
           - const: realtek,rtl-intc
       - const: realtek,rtl-intc
         deprecated: true
@@ -35,7 +36,9 @@ properties:
     const: 1
=20
   reg:
-    maxItems: 1
+    items:
+      - description: vpe0 registers
+      - description: vpe1 registers
=20
   interrupts:
     minItems: 1
@@ -71,6 +74,19 @@ allOf:
     else:
       required:
         - interrupts
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: realtek,rtl9300-intc
+    then:
+      properties:
+        reg:
+          maxItems: 2
+    else:
+      properties:
+        reg:
+          maxItems: 1
=20
 additionalProperties: false
=20
--=20
2.45.2


