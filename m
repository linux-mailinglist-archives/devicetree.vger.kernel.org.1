Return-Path: <devicetree+bounces-319168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LKeIMcQrRmorLAsAu9opvQ
	(envelope-from <devicetree+bounces-319168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:13:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA1B6F51EB
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:13:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sifive.com header.s=google header.b=CpFAchRf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319168-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319168-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=sifive.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A8923064E08
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80BDE42B32B;
	Thu,  2 Jul 2026 09:04:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075B2472771
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:04:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782983096; cv=none; b=H5LqIhO9DYZNegKHTk/RLsOel5pdFnkeTzQQ+OroVq/550mbT6swNRR6Z6e+bVQpq6BLctTW6vRQAjdZOjWDvhfPPpOWCGVm5+FzwWc7LGYkQDil9TouCV79gzqQomvbA/s07WSe7XN3tj6KViHcW++NxHndd4NfXxR0nT2Z8tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782983096; c=relaxed/simple;
	bh=KuUldqSBvNUBw35ye/ZZ9kP2NkGYAK2SlfUkqDDVXZo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Z/Ylgmn13NaVtU47dc6lwa+KN/u093Tvy5aub6dOAVpjQRiB/xDTHuc5dfXJUb35/k+mg26unfxiQMPRCwg2XYsrjDZvWrSG0DgXM4/Dsb8nDaHQ4OFuIge6QSpvyN3MY2M5ngYcfl7+wYatKYaE+BFBya4V4rccoL0QXqhEBmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CpFAchRf; arc=none smtp.client-ip=209.85.216.41
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-36b9d265355so1073303a91.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 02:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1782983094; x=1783587894; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=rYOUNaGMGZsPlGyhqLkbebVXqK7qfkK62tQGnVDlaQc=;
        b=CpFAchRfQ+uNLyC3bracfodFVnQc0mUl8RT+FrY0il9+6tp7XLeptQk0nGgSBoZf/N
         H7OBEnFB55VdLLyOs3QLAyGg7/5/YSBEvTleiNEFyVDhutPDc+KUf5udeyTKiGawBv4J
         K/8wIWq+ErmC08sUcHhEFgh0SY0PNI2y0wdAFB1YRFIliEWqFds7Dg0Oe1GpZbeyMRpR
         IzqcWWt5badk5pl/MNHhSFxGgO6HUyNeoCcCgUmZpJ3XoVwYzz6jqx4KErWvmC+ebJtj
         vlP1ISW0+lh5Bm8dtdZ3beu2Cmps34d/De7c2H98DsyVVsFW04Jrw+QjfbO3Bm98CjQw
         jgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782983094; x=1783587894;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=rYOUNaGMGZsPlGyhqLkbebVXqK7qfkK62tQGnVDlaQc=;
        b=V6bC1k84Cw5TnSV6D+UN9iCsCxCHs2ONZ78EnaFNljo0Hus7E/tiDQIrO6VWwn6qP0
         v15WzwyslE/O/Thp49qaP/qNBtBwLQo5mp34mRRNSa6fGZfe5esrm9VK7O2zTng8pH7I
         n8M81+nnNuMMi0pvUS4QRDPdFqjOrv5sEVGotEXj06asYFe6qfMMDo9ejAXb5JPV+qMq
         /38th/J1WUns15bZWSn9R+2834m11Bk3BqYFXB3s2hbAARFLeppygxV8VTHxsawUn7vF
         T3myYTU1hPyG6l89TS9DoOwVIRSk4v0T9g5LYlYcC17T5CBm6LMzRz9rYDDtBYVe9CC4
         Q3og==
X-Forwarded-Encrypted: i=1; AHgh+Rpcc7esAIzI1Bki2z4CKNt/X14wLrafAGnh8CGhXkpQZfqQ7/luBKpHwiAKewG8NrFMJ+UHkGWpJj31@vger.kernel.org
X-Gm-Message-State: AOJu0YwWcuO3B/z5om/4irJZRfB1Rr/uTMkcTetFXBCO9Oy6BXjYdaVf
	8uPdyBMLOrQqTPdrEJ8uC7ZaaSN8ervFZBNJbZdF1iAykrYMoGp4XJ7g749dTnrxge+lZ6JbTyz
	hzmx8lHEQNg==
X-Gm-Gg: AfdE7ckcs03msUONqnWj9tIB+NH+Y/6xaI7Y7UElgAVma3ulM4RsbhkE6ftathGIftH
	VrZgZA81NuqITTECR6LFugp07CD9GlA7M5HWvHBRkZLuFm1LDIwJbYtKwqRSpi35TYLcDTFJCWp
	4wcNL3pxCbilC9lhs8PNBsdHMP/eYC12+Rmfsh78rUeEUhFxxapFjZQH8jjz0Aa5rnvJ19WqNkb
	1AyVuLsgV1T0HkYZJcz/1Vk84XFy26I2kb51FB1aTA/MOX8lke3azjv47kt/YD7s7SfJf3TzPu2
	kxYxGXxfN0TqGqyz9MhJFE7HtcLwiPxhuc1sPgZ5Jc5wzTyDjw60F8tARbmLs+FbIXbwdw07qs1
	pCMkAh3spkifUGcChJEXGYv6Tu2+jCwqc6NS3Pm2KqbxX00LB//+uKNn1CvUs6PxJCDBsJIF9+I
	pkR9+wo6JSLfif6jWpkUnQ07Zj116gE4w=
X-Received: by 2002:a17:90b:3e45:b0:37f:d27f:5186 with SMTP id 98e67ed59e1d1-380ba91d167mr4114967a91.25.1782983094001;
        Thu, 02 Jul 2026 02:04:54 -0700 (PDT)
Received: from EricL-ThinkPadX1-TW.local ([136.226.240.163])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e15c362asm725719a91.1.2026.07.02.02.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 02:04:53 -0700 (PDT)
From: Eric Lin <eric.lin@sifive.com>
Date: Thu, 02 Jul 2026 17:04:31 +0800
Subject: [PATCH RFC] dt-bindings: perf: riscv,pmu: Add interrupts-extended
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-pmu-dt-property-v1-1-a7a7737afb72@sifive.com>
X-B4-Tracking: v=1; b=H4sIAJ4pRmoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDcwND3YLcUt2UEt2CovyC1KKSSt20NEOjJGPTtFSDtGQloK6CotS0zAq
 widFKQW7OSrEQweLSpKzU5BKQWUq1tQBQgp8DeAAAAA==
X-Change-ID: 20260701-pmu-dt-property-ff12b35fe0fc
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atishp@rivosinc.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Nick Hu <nick.hu@sifive.com>, 
 Eric Lin <eric.lin@sifive.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782983089; l=2327;
 i=eric.lin@sifive.com; s=20260630; h=from:subject:message-id;
 bh=KuUldqSBvNUBw35ye/ZZ9kP2NkGYAK2SlfUkqDDVXZo=;
 b=r6xyJqLl12BSFPk0mVYjvI1fgO5czZqFRAdildvZY941PKjeY6XoAQqsZmgQVjkkNpPNiA/st
 /OSxALCjIC8As7kr5tTMspJ7rxU3VdXQOpNyeo7jc8yONMLS0Jk9Ffa
X-Developer-Key: i=eric.lin@sifive.com; a=ed25519;
 pk=RLPQN6uNJ1cSM8GhP+L++2j3pf5ohznFbkNdwIO1XDw=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319168-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:will@kernel.org,m:mark.rutland@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:atishp@rivosinc.com,m:linux-arm-kernel@lists.infradead.org,m:linux-perf-users@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:nick.hu@sifive.com,m:eric.lin@sifive.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eric.lin@sifive.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sifive.com:dkim,sifive.com:email,sifive.com:mid,sifive.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1DA1B6F51EB

The interrupts-extended property is used to specify the connection
between the PMU counter overflow interrupt and the corresponding CPU
local interrupt controller (riscv,cpu-intc).

This property also allows the software to associate a PMU node with a
specific CPU. To support future heterogeneous systems, where different
CPUs may support different PMU events, this property allows the driver
to identify the correct PMU capabilities for each hart.

Reviewed-by: Nick Hu <nick.hu@sifive.com>
Signed-off-by: Eric Lin <eric.lin@sifive.com>
---
 Documentation/devicetree/bindings/perf/riscv,pmu.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml b/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
index d01c677ad3c7..13aceb3d42b9 100644
--- a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
+++ b/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
@@ -34,6 +34,13 @@ properties:
   compatible:
     const: riscv,pmu
 
+  interrupts-extended:
+    minItems: 1
+    maxItems: 4095
+    description:
+      Specifies the interrupt-parent and local interrupt index for each CPU's
+      PMU counter overflow. Each item points to a riscv,cpu-intc node.
+
   riscv,event-to-mhpmevent:
     $ref: /schemas/types.yaml#/definitions/uint32-matrix
     description:
@@ -101,6 +108,7 @@ examples:
   - |
     pmu {
         compatible = "riscv,pmu";
+        interrupts-extended = <&cpu0_intc 13>;
         riscv,event-to-mhpmevent = <0x0000B 0x0000 0x0001>;
         riscv,event-to-mhpmcounters = <0x00001 0x00001 0x00000001>,
                                       <0x00002 0x00002 0x00000004>,
@@ -127,6 +135,9 @@ examples:
      */
     pmu {
           compatible = "riscv,pmu";
+          interrupts-extended = <&cpu0_intc 13>,
+                                <&cpu1_intc 13>,<&cpu2_intc 13>,
+                                <&cpu3_intc 13>,<&cpu4_intc 13>;
           riscv,event-to-mhpmevent =
               /* SBI_PMU_HW_CACHE_REFERENCES -> Instruction or Data cache/ITIM busy */
               <0x00003 0x00000000 0x1801>,

---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260701-pmu-dt-property-ff12b35fe0fc

Best regards,
--  
Eric Lin <eric.lin@sifive.com>


