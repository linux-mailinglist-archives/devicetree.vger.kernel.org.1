Return-Path: <devicetree+bounces-141610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FFBA219C2
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 10:18:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA9F23A5028
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BB51AB52F;
	Wed, 29 Jan 2025 09:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="KzRosUKk"
X-Original-To: devicetree@vger.kernel.org
Received: from esa2.hc555-34.eu.iphmx.com (esa2.hc555-34.eu.iphmx.com [23.90.104.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B95B19CC1C;
	Wed, 29 Jan 2025 09:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.90.104.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738142278; cv=none; b=qF3elOxzcR0hxGvAZn3KEYacUalGspnnOR5+8h050i0OIwDpdmLU7hm1OeRZRmEKNePrYpWv2ShlHmVOZ/GPqbYvf2C0zTMZANzfp6NHZE5ccck64sg+FC0leJMlEcouUOZYHmg22C0odk0JYGjlIoZzr4j1wPvBeZN8Wxmk9NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738142278; c=relaxed/simple;
	bh=RuLMyg00bccCqWy5ag3jnD3Wp6i4VgyvkXDG4+7ywCc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m6xHPRXSLaEFUe3JJAwKlyeFi3Y572IdCDtgoaP+bc+AqTjBmUl/+3txp08XWFXdqTu8g3Z+ZA0W9lYCx7fAEK31ka1CWDr/KMOzdBoYZK1QzfYKSMCGv7FUaQ8JwiuLUrNtxl2TSAOtEvS2BemHn13Q+bHXHYvkzgTxCqvzj3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=fail (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=KzRosUKk reason="key not found in DNS"; arc=none smtp.client-ip=23.90.104.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=mobileye.com; i=@mobileye.com; q=dns/txt; s=MoEyIP;
  t=1738142275; x=1769678275;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RuLMyg00bccCqWy5ag3jnD3Wp6i4VgyvkXDG4+7ywCc=;
  b=KzRosUKkXMi1PuWN/L2pLqt+8uyLoK5GaYwTcac0hF3euDM5+FN4ndVx
   AinTxb7rE029gA4+e+S30MxPb/tfPT0Mc9BMA1VQtnlo84ulxH6fapx9A
   OMUA/9CWsoFVvU3s92cp/CqJinO34mlZcDcTW5HoxwmXHFOYvwxDFFNeI
   yFCy2aPMAuhIF+g+hM2rLahr1nA6inhKe06drs8mZH45b5EvNgDjZPzOt
   bh/56MTr0REdpMNMwmLxtVqLKSgMgCnxdWyzeGLvjiNyKYnDsjU9esWCH
   Zdw3udOiKshiD1LLbmPvQkJ1wobe4ADyHtp8F8beLeGgsrH/5bUMgY7KH
   g==;
X-CSE-ConnectionGUID: gNgNn85RQqOu7q37MVPZyA==
X-CSE-MsgGUID: dIKFs3E7SkKOBXPvwEktdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO ces01_data.me-corp.lan) ([146.255.191.134])
  by esa2.hc555-34.eu.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jan 2025 11:16:43 +0200
X-CSE-ConnectionGUID: tbf5rMDISg2CrWsetK4ZqA==
X-CSE-MsgGUID: POnzwu9sQI+9OTm8Qn89Kw==
Received: from unknown (HELO epgd022.me-corp.lan) ([10.154.54.6])
  by ces01_data.me-corp.lan with SMTP; 29 Jan 2025 11:16:42 +0200
Received: by epgd022.me-corp.lan (sSMTP sendmail emulation); Wed, 29 Jan 2025 11:16:42 +0200
From: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
To: Anup Patel <anup@brainfault.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Subject: [PATCH v5 1/2] dt-bindings: interrupt-controller: add risc-v,aplic hart indexes
Date: Wed, 29 Jan 2025 11:16:36 +0200
Message-ID: <20250129091637.1667279-2-vladimir.kondratiev@mobileye.com>
In-Reply-To: <20250129091637.1667279-1-vladimir.kondratiev@mobileye.com>
References: <87ed0o87qg.ffs@tglx>
 <20250129091637.1667279-1-vladimir.kondratiev@mobileye.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Document optional property "riscv,hart-indexes"

Risc-V APLIC specification defines "hart index" in [1]:

Within a given interrupt domain, each of the domain’s harts has a
unique index number in the range 0 to 2^14 − 1 (= 16,383). The index
number a domain associates with a hart may or may not have any
relationship to the unique hart identifier (“hart ID”) that the
RISC-V Privileged Architecture assigns to the hart. Two different
interrupt domains may employ entirely different index numbers for
the same set of harts.

Further, this document says in "4.5 Memory-mapped control
region for an interrupt domain":

The array of IDC structures may include some for potential hart index
numbers that are not actual hart index numbers in the domain. For
example, the first IDC structure is always for hart index 0, but 0 is
not necessarily a valid index number for any hart in the domain.

Support arbitrary hart indexes specified in optional APLIC property
"riscv,hart-indexes" that should be array of u32 elements, one per
interrupt target. If this property not specified, fallback is to use
logical hart indexes within the domain.

[1]: https://github.com/riscv/riscv-aia

Signed-off-by: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 .../bindings/interrupt-controller/riscv,aplic.yaml        | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index 190a6499c932..bef00521d5da 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
@@ -91,6 +91,14 @@ properties:
       Firmware must configure interrupt delegation registers based on
       interrupt delegation list.
 
+  riscv,hart-indexes:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 16384
+    description:
+      A list of hart indexes that APLIC should use to address each hart
+      that is mentioned in the "interrupts-extended"
+
 dependencies:
   riscv,delegation: [ "riscv,children" ]
 
-- 
2.43.0


