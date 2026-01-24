Return-Path: <devicetree+bounces-259184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOdTAR39dGk7/wAAu9opvQ
	(envelope-from <devicetree+bounces-259184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:10:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 836B87E3C3
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E0C83015463
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D2F24466B;
	Sat, 24 Jan 2026 17:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hh2D/GGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241EC173
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769274615; cv=none; b=jTSgWHldMFXcycZqRMcila8MUhMTCTy72r2jE+ofMF7phZAXQdHTv0dDd5uqDvLhqnT0Uoa5FCRJMun/EjFKkbivcGLv5hpgZ49laMsbY/KkGfLnd1MuA6Raz0LgAsdAHI8SRz7Ma/8LzWdC/sX7ght87l/v74QtDcFfSAZRfcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769274615; c=relaxed/simple;
	bh=qjSSFniy6gHxiczWZ86GkcSZ4N43s+8TTkwA+IQI/po=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X7+zI/pc/VjVNXq6kVSk/KVEOJUjv8oielmYEJpEcGKq1mVFIitPtcaMoGLCb1BTd6sQ8/IwgvzAoBBEtvs7q5pBCKbD9feH3hvfTap0yYm6w7xdGQtRM8EGt2GKoWfjHKVV/5r/1W5bwOj261iCoM4VBRI643XRgm9BHUVclFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hh2D/GGP; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8876d1a39bso135787966b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 09:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769274610; x=1769879410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B9m83YjdBagzKbXhhE0ZEutN5a0l2RlG5RTfGwGwib8=;
        b=hh2D/GGPW8lN+spdV2kugAiP1lKFVsh7e7z8DUpaFz2NE1/mka5bIcGEg3odPj/RpE
         Kr2zyrHNQUZUtTH3DiYRincirxA2oHBtst8iaHQA4luYCFNQGlgW9fL6WqqQDIfkGAc4
         ODj5dcIiJQZ0UTB/qWGcRxC0ald8gMftDghiJTd7yhabTsEPWA8iUx7DS4eDGjB+rYuo
         uDODUnTF8uS+aVCNHDujUkw6FxC32qqd58mQg+43ddttVeXblF0VsrNb8iIRsJrNWgTH
         ihhQPxy6zG/wuyjVhKnNRCi6PkhbnTYYhqqj5dkbktM/hkBhoTc/huzCNEHLBRrEMZio
         Tbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769274610; x=1769879410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B9m83YjdBagzKbXhhE0ZEutN5a0l2RlG5RTfGwGwib8=;
        b=ww9EFCxK+Im0IIfaBe1qbhT0mL1Jx/kVvzdrmN5Me+5lajquF8JVYq43J2qjj7u59C
         1H8bON9LnoKMelQ+qfT00pH3Su8siSiJxpBET29bHO971QlBclMiInzTnNhZ7R24twji
         KZNLDxrh5XpUxu+Lu0MbFnt3CMMWnMcqEaRnD1CNlfZzKTKSnuCqA+YHMXz79Jkxe583
         9gV6+psXWrnhnYBCoyYfpaZ+DrESedEZNKJJ8g6pMe7WbPcx58tKRQBR1YeK5Y0OKGt0
         gH4SoP7JBx5w9u0IiJ/3ZKDdw+VRVRmgyBq+pz4cORd13PppPog5n1edIdq73iBV9ocR
         1aHA==
X-Forwarded-Encrypted: i=1; AJvYcCUMmh+KWd+dMV0tK+tg9s64KTt35wC3AQ0nGu+EGbjPuyBmcfN1Tc6r3mVVRY7XY6lpj8Ne0JyDB0l0@vger.kernel.org
X-Gm-Message-State: AOJu0YwdFSJINfqibJrWBiZFdq4gIqDNISPzDoT9rwjToYPS15ULbnx5
	/TvWNp4ZMvScEJBYNakuw9pMiuedUpbIP21JSA1a09ORQHwvoOQZgJrg
X-Gm-Gg: AZuq6aIoR9x63ZkVU1kZpLdKKulVavqS7y860grbvvQBPfFyZ5BfpGQ/rRkiwIiFqPQ
	W2nQUB0D0zHweIOpn1K8AmDxEodtXSmHoEf7/ID1Uc8imNy9XfpoBRudsngCtZpvReVH1a8iAxY
	cIvtSl8eIcVVd3aAVkrT/wwTLw9NzoC3K5ywDr/6p3us7O4dmMho9hmP/R9b9S4lbabyOqaN7M6
	0Rq5f3gc/X+dsTGbt7RPjKDPJzb7VbXlDqinStkISIXjtXCToY73ang5rHh4Fqd2TZlnKniwHC3
	Ac+YYGbOnE0vMSEJLyfDnXuvcqWhWf2yixMqE6lS88D1sbgFzHlKFD9Qfcz3dQXkQPVwqEMfi32
	EN7MBcGpMArVLfg7eB0maj0xasHGuaOfLLPQIvMrpVZEXEgLanmMBxiZ+rwmM9k8Nen+obRAaVD
	wXSK6Uv4ku85ZgvC+m+T0tXRf4NUZcTVPK+rP7SMQULrLAkX/yX8wBatQBukKjIBxgUnNkenp4n
	h71ksLg8yh76uAB0ilvkTrVjoeWxEvIiYk=
X-Received: by 2002:a17:907:728c:b0:b87:2780:1b35 with SMTP id a640c23a62f3a-b885ad6361dmr449556366b.45.1769274609783;
        Sat, 24 Jan 2026 09:10:09 -0800 (PST)
Received: from tablet.my.domain (2a01-114f-470e-6200-4c6a-9244-66ab-7c8e.ea.ipv6.supernova.orange.pl. [2a01:114f:470e:6200:4c6a:9244:66ab:7c8e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dac6esm302680866b.7.2026.01.24.09.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 09:10:09 -0800 (PST)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Sat, 24 Jan 2026 18:10:03 +0100
Subject: [PATCH RESEND v7 3/7] dt-bindings: clock: brcm,kona-ccu: Add
 BCM21664 and BCM281xx bus clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-kona-bus-clock-v7-3-9dffe1bdc08d@gmail.com>
References: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
In-Reply-To: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6812;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=qjSSFniy6gHxiczWZ86GkcSZ4N43s+8TTkwA+IQI/po=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBpdPzrwRF2axcnuBNrKTv7003HvkP2RiVF2Vs+Z
 aOx6rNOEYiJAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaXT86wAKCRCzu/ihE6BR
 aIzWEACN5V52VeXDhCJFp8o7OG76KajvAkCLxFvzcV12tnDs9VXXJ3UBEdo4YR9s3uVxQ11L96y
 m0ESkEcifx+xFVABGmClH5h4XNVZBGNoo6906gbAEI0m3SbXn8ggFh4j6qBKmq3ZpdppnhmVATg
 lqlYaEYZf6/fbxao2dduq13rDZLStVFp1+Z8RSzA0bTK46b6Lj10Y8LsTW8biKDv0HXJpsv0CEa
 AVB+YVqHhGIBF40f0z4sXT24k/HT9dP7CEqDor8Ue5X6gmIafT8MddKcSxizpaxQGCIbdW73sN1
 mnd+9g7cLbb9EeY96P+JShS8kuV/lKdv95V13xzNyxND8B+069JVcsUxl6EKda01v2zrUMqdjJG
 9uW/XOWJQ2Y66gOtv7MUwYWc8khWj8nVyHgXlFOA+bTiVGZecr+l8JoR+y2nKdPs3Go+cGucEXA
 zKG7T18Y/CcuHHsziiWRyZcUgeqBTHyFGF9LU8OyXpF9+rjkvuJUc3DcedDoX+1PDGrvXq89dCt
 g5+dAjz2J60E9KaLOlVEkQfIPf94l7Y4fBb+SRTxpVT0nBJ52r0+ikU1JxioG3lqB/VzhJdZftd
 OkZlGPKmFDo1CujGAKcK2mH7LGgm+v8gGglqhIlbIoNAv12gQ5cxf4YkFogyMf7XMSj2Wl74gY3
 FgoWruV1tPEDXfA==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259184-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.sr.ht,lists.infradead.org,linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aweberkernel@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,broadcom.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 836B87E3C3
X-Rspamd-Action: no action

Add bus clocks corresponding to peripheral clocks currently supported
by the BCM21664 and BCM281xx clock drivers and add the relevant clock
IDs to the dt-bindings headers (bcm21664.h, bcm281xx.h).

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v4:
- Squash BCM21664 and BCM281xx bus clock bindings commits
---
 .../devicetree/bindings/clock/brcm,kona-ccu.yaml   | 49 ++++++++++++++++++++--
 include/dt-bindings/clock/bcm21664.h               | 13 ++++++
 include/dt-bindings/clock/bcm281xx.h               | 19 +++++++++
 3 files changed, 78 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/brcm,kona-ccu.yaml b/Documentation/devicetree/bindings/clock/brcm,kona-ccu.yaml
index e5656950b3bd..d00dcf916b45 100644
--- a/Documentation/devicetree/bindings/clock/brcm,kona-ccu.yaml
+++ b/Documentation/devicetree/bindings/clock/brcm,kona-ccu.yaml
@@ -40,7 +40,7 @@ properties:
 
   clock-output-names:
     minItems: 1
-    maxItems: 10
+    maxItems: 20
 
 required:
   - compatible
@@ -61,6 +61,8 @@ allOf:
             - const: hub_timer
             - const: pmu_bsc
             - const: pmu_bsc_var
+            - const: hub_timer_apb
+            - const: pmu_bsc_apb
   - if:
       properties:
         compatible:
@@ -86,6 +88,13 @@ allOf:
             - const: usb_ic
             - const: hsic2_48m
             - const: hsic2_12m
+            - const: sdio1_ahb
+            - const: sdio2_ahb
+            - const: sdio3_ahb
+            - const: sdio4_ahb
+            - const: usb_ic_ahb
+            - const: hsic2_ahb
+            - const: usb_otg_ahb
   - if:
       properties:
         compatible:
@@ -116,6 +125,16 @@ allOf:
             - const: bsc2
             - const: bsc3
             - const: pwm
+            - const: uartb_apb
+            - const: uartb2_apb
+            - const: uartb3_apb
+            - const: uartb4_apb
+            - const: ssp0_apb
+            - const: ssp2_apb
+            - const: bsc1_apb
+            - const: bsc2_apb
+            - const: bsc3_apb
+            - const: pwm_apb
   - if:
       properties:
         compatible:
@@ -124,7 +143,9 @@ allOf:
     then:
       properties:
         clock-output-names:
-          const: hub_timer
+          items:
+            - const: hub_timer
+            - const: hub_timer_apb
   - if:
       properties:
         compatible:
@@ -142,6 +163,11 @@ allOf:
             - const: sdio2_sleep
             - const: sdio3_sleep
             - const: sdio4_sleep
+            - const: sdio1_ahb
+            - const: sdio2_ahb
+            - const: sdio3_ahb
+            - const: sdio4_ahb
+            - const: usb_otg_ahb
   - if:
       properties:
         compatible:
@@ -158,6 +184,13 @@ allOf:
             - const: bsc2
             - const: bsc3
             - const: bsc4
+            - const: uartb_apb
+            - const: uartb2_apb
+            - const: uartb3_apb
+            - const: bsc1_apb
+            - const: bsc2_apb
+            - const: bsc3_apb
+            - const: bsc4_apb
 
 additionalProperties: false
 
@@ -176,6 +209,16 @@ examples:
                            "bsc1",
                            "bsc2",
                            "bsc3",
-                           "pwm";
+                           "pwm",
+                           "uartb_apb",
+                           "uartb2_apb",
+                           "uartb3_apb",
+                           "uartb4_apb",
+                           "ssp0_apb",
+                           "ssp2_apb",
+                           "bsc1_apb",
+                           "bsc2_apb",
+                           "bsc3_apb",
+                           "pwm_apb";
     };
 ...
diff --git a/include/dt-bindings/clock/bcm21664.h b/include/dt-bindings/clock/bcm21664.h
index 7a380a51848c..9f3614eb9036 100644
--- a/include/dt-bindings/clock/bcm21664.h
+++ b/include/dt-bindings/clock/bcm21664.h
@@ -25,6 +25,7 @@
 /* aon CCU clock ids */
 
 #define BCM21664_AON_CCU_HUB_TIMER		0
+#define BCM21664_AON_CCU_HUB_TIMER_APB		1
 
 /* master CCU clock ids */
 
@@ -36,6 +37,11 @@
 #define BCM21664_MASTER_CCU_SDIO2_SLEEP		5
 #define BCM21664_MASTER_CCU_SDIO3_SLEEP		6
 #define BCM21664_MASTER_CCU_SDIO4_SLEEP		7
+#define BCM21664_MASTER_CCU_SDIO1_AHB		8
+#define BCM21664_MASTER_CCU_SDIO2_AHB		9
+#define BCM21664_MASTER_CCU_SDIO3_AHB		10
+#define BCM21664_MASTER_CCU_SDIO4_AHB		11
+#define BCM21664_MASTER_CCU_USB_OTG_AHB		12
 
 /* slave CCU clock ids */
 
@@ -46,5 +52,12 @@
 #define BCM21664_SLAVE_CCU_BSC2			4
 #define BCM21664_SLAVE_CCU_BSC3			5
 #define BCM21664_SLAVE_CCU_BSC4			6
+#define BCM21664_SLAVE_CCU_UARTB_APB		7
+#define BCM21664_SLAVE_CCU_UARTB2_APB		8
+#define BCM21664_SLAVE_CCU_UARTB3_APB		9
+#define BCM21664_SLAVE_CCU_BSC1_APB		10
+#define BCM21664_SLAVE_CCU_BSC2_APB		11
+#define BCM21664_SLAVE_CCU_BSC3_APB		12
+#define BCM21664_SLAVE_CCU_BSC4_APB		13
 
 #endif /* _CLOCK_BCM21664_H */
diff --git a/include/dt-bindings/clock/bcm281xx.h b/include/dt-bindings/clock/bcm281xx.h
index 0c7a7e10cb42..8e3ac4ab3e16 100644
--- a/include/dt-bindings/clock/bcm281xx.h
+++ b/include/dt-bindings/clock/bcm281xx.h
@@ -33,6 +33,8 @@
 #define BCM281XX_AON_CCU_HUB_TIMER		0
 #define BCM281XX_AON_CCU_PMU_BSC		1
 #define BCM281XX_AON_CCU_PMU_BSC_VAR		2
+#define BCM281XX_AON_CCU_HUB_TIMER_APB		3
+#define BCM281XX_AON_CCU_PMU_BSC_APB		4
 
 /* hub CCU clock ids */
 
@@ -47,6 +49,13 @@
 #define BCM281XX_MASTER_CCU_USB_IC		4
 #define BCM281XX_MASTER_CCU_HSIC2_48M		5
 #define BCM281XX_MASTER_CCU_HSIC2_12M		6
+#define BCM281XX_MASTER_CCU_SDIO1_AHB		7
+#define BCM281XX_MASTER_CCU_SDIO2_AHB		8
+#define BCM281XX_MASTER_CCU_SDIO3_AHB		9
+#define BCM281XX_MASTER_CCU_SDIO4_AHB		10
+#define BCM281XX_MASTER_CCU_USB_IC_AHB		11
+#define BCM281XX_MASTER_CCU_HSIC2_AHB		12
+#define BCM281XX_MASTER_CCU_USB_OTG_AHB		13
 
 /* slave CCU clock ids */
 
@@ -60,5 +69,15 @@
 #define BCM281XX_SLAVE_CCU_BSC2			7
 #define BCM281XX_SLAVE_CCU_BSC3			8
 #define BCM281XX_SLAVE_CCU_PWM			9
+#define BCM281XX_SLAVE_CCU_UARTB_APB		10
+#define BCM281XX_SLAVE_CCU_UARTB2_APB		11
+#define BCM281XX_SLAVE_CCU_UARTB3_APB		12
+#define BCM281XX_SLAVE_CCU_UARTB4_APB		13
+#define BCM281XX_SLAVE_CCU_SSP0_APB		14
+#define BCM281XX_SLAVE_CCU_SSP2_APB		15
+#define BCM281XX_SLAVE_CCU_BSC1_APB		16
+#define BCM281XX_SLAVE_CCU_BSC2_APB		17
+#define BCM281XX_SLAVE_CCU_BSC3_APB		18
+#define BCM281XX_SLAVE_CCU_PWM_APB		19
 
 #endif /* _CLOCK_BCM281XX_H */

-- 
2.52.0


