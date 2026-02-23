Return-Path: <devicetree+bounces-267364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFp8MNo3nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:19:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 650A5175646
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D7C9306F3A1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCEE3612DB;
	Mon, 23 Feb 2026 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nVlditRe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC5E3612E9
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845470; cv=none; b=d/FqgeoE6goMHsZcArgnq0ZAXLPZIn/6N7QcuF0U+WOIWgzAdVk8QuZvYlg+UfQ9OEDeijCOg0Y8AEtMBP5MgXQmcMpGFY75/G6ArgXNa3EblaV8sAKAYPB+jAnkeArjqNw5tfycBtMurRLE1ak91jnH+xaA6zbRzEouclOnyec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845470; c=relaxed/simple;
	bh=9mIn+NRMcnY3nQa3xJUsbsqiUrUJYrQ5MBs5E/B+nyA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AvEldY2Npg4L3AxVHcV9scCrruSe+4pM3CN9v0eDxcH4bDoWVJMhNP7EKpQ+SBrDN/ORchup/sgeMOWuhIzeE/nm/9ok11iEVqIbHBaOvTvWrhgHWctXgmOSnqVSrz5ErFP+3rmnmEUeH2/1RSbR/DGO1Grq3cCw22SqoWtXinw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nVlditRe; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a91215c158so27828015ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845465; x=1772450265; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dEf9sD0ORFSG7AS78V5QZeKdYhd2SNplxEEftC+5unM=;
        b=nVlditReHaCJUpKHdDfHehSUzK3N/1Js0wxK98clrfPLCbp0I4liBMjHJ8AcqrvWNl
         Ga3NmzMsiTKoqGrSwOBHz8M8/7C2/naLXGQjYCGFiDjqvAjWuEXacxqYRvjIuYik/T12
         6XZHIbrU7gLSiRXelHgaGmWko/CcBcY2ufBMUyd4CSuO/l0G8G2c2fnxD7xuxEqIfTrY
         p5h/oWQ9gPTvaxzwupzE6Ie2rCh5xwR+ysj26c4H9JT9XYFVRGoGc0oZwERUZv2q+8Sy
         Hc1uBN1NRoOylinVplrruQ2JPMbuvGUfokcvLDyHHdBoSbgaoJyjGQUHOOjAX9lUJJxL
         Ll6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845465; x=1772450265;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dEf9sD0ORFSG7AS78V5QZeKdYhd2SNplxEEftC+5unM=;
        b=pFtWCy8WnOA1nZ0hREP5thzGVN+Ijjqrrx3Pv/3qb3/YH6lkpijEXsINTTzMWuRX+v
         BIB9UR+Jtldo8iwGm4z/lh8emzawVNmQSe1zfrVMP9Vqs+kOxQPO8/+9thYkVqw1Jvwg
         z9b+9Mae5nsGSOS2qyoA2/2lKD+jTVtJyWpEi9oIQ2QrfAxm0ZTjA23LhNX6SlZ/OwRf
         Qkf84iv2bU9Ajd7ZpHTn/tMpyL0bRRUcFBW77DH2r7CB9xZqIrRj5JP1HvYCAb8DrXvp
         dbRqLePIVZbI/ZHGWxrKuYwpVbGpLCXMmFL0iVDS1ari87b1+QnGORwyWu/Ikkz1fBC3
         7L7A==
X-Gm-Message-State: AOJu0Ywy6QBTgeiBf+ppu6xbuIrHiYvfJu/mEhnN57ZHTg5TBs1qmeIA
	GGkZiLgUw5wEq9k59CEYAH61E/aD0jKik+yFruK/SmEDNUf2tiT/fTlc
X-Gm-Gg: ATEYQzzrJfK4V3sbjxfcNsjWO4LxR9kysO+oLt+ONHHRS/PtgYWU6TfSnxiI8AELMdq
	e+vSKsNGnAfVB7Or4LwDeMowMPN05LdAgj2zlWBronKnaS2hhCYqk54Rczg1o3c3Rqp0h0RQwxB
	G6cd5cM70npOSKDZ6qfhZQHS6515MLVY0kH1+Eh29lmKHnxLSOpHNqSfFuc8KFkOFc0UX0rs+iH
	3vYQxumTa0fTKsmQeYVFH8WB1giIHkxkkXr7CVo6FbNnWbZx/MyrRZkD3yrb9s9h8THfxN+PUzl
	aNlgEPhZTQnvBcjppwAxC5LG+SGE2h6Pa2SyOcGzwtZv0h+KLT93g+0clwyVDFX6yCzPmMk3asQ
	efboYCoJJyvqyXr6ePkruEfq3YsSdXQ8xMd8ENKm76yC4nqMkOtyT0b4pTiBGdPjN/ZePxMpi7C
	eo8/qAh59EwjdYD+KnRHXucFhthOXDGPRNeTw3MAh3nE8qEga9W+0mME7RYdqQYFwAiZhzuWMBg
	1dEycfcLpwajZ8wZ+2fV8i9TKtcp0qxALuYvkG/HmPa+RUZXtUAWqXlBUGPbTmLmmSfgcaMfc78
	0l1ZKQtqR3AJ+73gMkIA
X-Received: by 2002:a17:903:1a2d:b0:2aa:e817:1bd3 with SMTP id d9443c01a7336-2ad744e1731mr86659805ad.29.1771845465072;
        Mon, 23 Feb 2026 03:17:45 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:44 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:34 +0800
Subject: [PATCH v5 2/8] ARM: dts: aspeed: yosemite5: Remove ambiguous power
 monitor DTS nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-2-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=1501;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=9mIn+NRMcnY3nQa3xJUsbsqiUrUJYrQ5MBs5E/B+nyA=;
 b=6Y7zZJPug+L/D4hZsJuZ8qj0dU08TZ1l9Yv+yjr0PCQyZ7UQs5aT10ImulnrtBzWJFP1+lqkw
 R3+pUZQKbQ+Db8upoOwg3GGp9wJhWjkORgkT0J6Xe/KwYjRNQ/B+bSc
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-267364-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.22:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.45:email,0.0.0.48:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.40:email]
X-Rspamd-Queue-Id: 650A5175646
X-Rspamd-Action: no action

Two different power monitor devices, using different drivers, reuse
I2C addresses 0x40 and 0x45 on bus 10 across Yosemite5 board variants.
Defining these devices statically in the DTS can lead to incorrect
driver binding on newer boards when the wrong device is instantiated.

Therefore, remove 10-0040 and 10-0045 device nodes, and let the driver
selection is instead handled in user space by the OpenBMC Entity
Manager based on the actual board configuration.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e64571631b7f6944f26213 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -674,20 +674,6 @@ gpio-expander@22 {
 			"PWRGD_P3V3_AUX","ALERT_TEMP";
 	};
 
-	power-sensor@40 {
-		compatible = "ti,ina233";
-		reg = <0x40>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
-	power-sensor@45 {
-		compatible = "ti,ina233";
-		reg = <0x45>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
 	adc@48 {
 		compatible = "ti,ads7830";
 		reg = <0x48>;

-- 
2.53.0


