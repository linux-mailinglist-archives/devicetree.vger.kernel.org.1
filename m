Return-Path: <devicetree+bounces-313283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T4PjFUehM2rbEQYAu9opvQ
	(envelope-from <devicetree+bounces-313283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:41:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DCF69E29D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:41:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lvlgX+ae;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313283-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313283-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8022304D704
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0EF3AFB1B;
	Thu, 18 Jun 2026 07:40:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1F52F2910
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:40:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781768456; cv=none; b=oib/+NpYOAT0vt1DwrZS0TGt3y5JVLsQmTiozAIVsYLGIC3GhVgYnEBUvZc8PMmDHjAS53kF2rIioRwVk3dgl+eqCJ5BGWwbcNKMZ9M6/Telx01/qfEEx1+kYNuzJAm87lkNMtNkNimnTYYdCUqT0ABgIob1XDknWibDWSQR/F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781768456; c=relaxed/simple;
	bh=h7xakdJPR9hp5BA+O9WCA+8GKkcNDqtrcIFBDvQTtso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hjaAt2oDwCJY8/5EVs40jPCBnw2E19alsl8bIt8ed2PyH6RwYYKaUIP7sDpYxzaW65UsEz5VwqsS9ciFqQnvFDOz8RRLfMUW8VuS8amhNFtkrvsEu83hYV1qpXi0p4QRAXTlWTkucl5ySRqjSyQjw+EBfMYZhCbpK9ROP5T2R48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lvlgX+ae; arc=none smtp.client-ip=209.85.214.181
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2c0c1e0d00bso6672755ad.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 00:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781768454; x=1782373254; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NyTu92Zpl4iFWsunxbLWvI4/2I1YGqKD298epHlDZtI=;
        b=lvlgX+aen9DjTaWGjrS09E0vAvNtToY3jAnw5LsrM88vRaNc523oynAwopGVbXJxr7
         8S53AK4FterYEW6eb35iYqR1f6uOJ67vNIcFfMxQ/7OTYiM4Do6KLyfVzd3ggYUTyBRk
         6ZHZ1TJkCi2uXcw9iqD3sikru1OQ47ncpTf9CuvkzxWMJzZx5SQC2N8GaobsCe1enCf0
         JDhiLqIywtGg4ocGa4pvJBNQpOhXqgWLI+3KMP6JFQ8OhFtkxp/tZttNdCiDTiBRt3mz
         wusiyvOaYOuuStKcG6kaemDbURIwpgNankcE4yZAXsJz3ip1atTL+zE5bMDk6rjec3F/
         fAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781768454; x=1782373254;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NyTu92Zpl4iFWsunxbLWvI4/2I1YGqKD298epHlDZtI=;
        b=FLeEiU+PyBhGYvgJVmGUl7MdGVXQV5W/XX7x8PECgBpOmEOGN4rVMBs/FTYQOBLcq1
         gWQ6FXCJKZjR0du4jUwTs+CaKLiaYsjHmkbi8lIj02JHN+QIaxcgQaHUVk1xAB/QqZkf
         6aBAqPO0+gAIcnAuXri/juahno35kknuVkEoz41VqaqWTH8T8pp4GmiDZRPKifskRu40
         82G9CRPqpog+65QNcgbZ5l0SlapigyOJyIIhGJrfEySQYSCTAJLmVMzcs1lj9KklWsGv
         qjZbHuhnD3+JRDQgwIaNeu6V8BPMSOzs9ZK2FBRd9NaDe3EaOzurVQOCeIeXHSWtOQvO
         swnA==
X-Gm-Message-State: AOJu0Yzrvd2Il20eIR9hNxG6ZdL2xvHk0K2+vnHlgmAMLqOAc8Eo0IKZ
	3u03ywj42EcOaQaxtBKPj0GWKyuAgnZjh20Um1SjV7UflXsXNj7SoTro
X-Gm-Gg: AfdE7clEBJ80SQ8v1Codh+m8z7BseZpz3jjt11lgEHMCnuLAYW7lH9VBhVWJEBHGS3g
	OWBqQizbzJy1Z/wTaoP4K3qxuOaMvGRBb3kDWl3cX8wm/j5OoumdSWBNuMldn3BPGUq3eu1v0cZ
	CvsyRxRSX+XHB/AuqAvd2kdIZGg/N4XSvRnk6c9IBL5gD7ITPA1kK3Zg2It0WRyP9bxE0XMBfRO
	UWw3gSxuOeLivn9eQRpqUz72vZSFU0MsJ69/sI3GhMWHqNbQ32gUFkw7TG7BOWKl/YJjeUgxyBj
	Qt1+sEir5NSiPso1U3e/E7NBNmypjKAuiQeaqDtC99rbQ7Tz5u1P2+G/jy79L4/+uzRCBS7z4DP
	JgsBdiXrY/ZhL+W3WAGA09cjPi0mxevPTlT7RTFRmp3C2tGInt/Q7dFHorJaqGhNwfOze7p/BTg
	/luMjDKir4KlGqwlchGjeU18gCihNdt0HzL0YhYYTQrSFGHj6BzUD5t5Tc
X-Received: by 2002:a17:903:950:b0:2bf:1fbd:b946 with SMTP id d9443c01a7336-2c6bbca9fc0mr82427775ad.0.1781768454016;
        Thu, 18 Jun 2026 00:40:54 -0700 (PDT)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327ac80asm170465445ad.39.2026.06.18.00.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 00:40:53 -0700 (PDT)
From: Mike Hsieh <mike.quanta.115@gmail.com>
Date: Thu, 18 Jun 2026 15:41:45 +0800
Subject: [PATCH 2/2] ARM: dts: aspeed: sanmiguel: add current-range
 property for PDB HSC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260618-sanmiguel-dts-config-hsc-lm5066i-v1-2-cccf959c9b78@gmail.com>
References: <20260618-sanmiguel-dts-config-hsc-lm5066i-v1-0-cccf959c9b78@gmail.com>
In-Reply-To: <20260618-sanmiguel-dts-config-hsc-lm5066i-v1-0-cccf959c9b78@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
 Mik Lin <mik.lin@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Mike Hsieh <mike.quanta.115@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781768507; l=1681;
 i=mike.quanta.115@gmail.com; s=20260522; h=from:subject:message-id;
 bh=h7xakdJPR9hp5BA+O9WCA+8GKkcNDqtrcIFBDvQTtso=;
 b=4B0AKEFAQOcmD4z2TjXWcq5Iu8iXFKS5qLvXFAVhpN8p4jGBM4FxsZpp+iXlGTIDWEOvwsfhw
 gBfwcTkj7R6DM2PiBnVgBz7fPy4LsIpCOXtkY74OXnxA/XwdsOumh76
X-Developer-Key: i=mike.quanta.115@gmail.com; a=ed25519;
 pk=DRIErV0xX0KMBlR/irAsbuN4L3egitHbC8FHruUH4HE=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313283-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:patrick@stwcx.xyz,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:cosmo.chou@quantatw.com,m:potin.lai@quantatw.com,m:mik.lin@quantatw.com,m:Mike_Hsieh@quantatw.com,m:mike.quanta.115@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:mikequanta115@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mikequanta115@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikequanta115@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1DCF69E29D

Configure the ti,current-range property for the four TI LM5066i
hot-swap controllers on PDB board.

This defines the hardware current limit operating mode (low/high)
for each sensor to match the physical board design.

Specific configurations:
- HSC1 (0x11): low
- HSC2 (0x13): high
- HSC3 (0x15): high
- HSC4 (0x17): low

Signed-off-by: Mike Hsieh <mike.quanta.115@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
index 3faac0925a79..e518e3fc1c97 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
@@ -451,6 +451,7 @@ pdb_ti_hsc1: power-monitor@11 {
 		compatible = "ti,lm5066i";
 		reg = <0x11>;
 		shunt-resistor-micro-ohms = <1000>;
+		ti,current-range = "low";
 	};
 
 	pdb_mps_hsc2: power-monitor@12 {
@@ -462,6 +463,7 @@ pdb_ti_hsc2: power-monitor@13 {
 		compatible = "ti,lm5066i";
 		reg = <0x13>;
 		shunt-resistor-micro-ohms = <321>;
+		ti,current-range = "high";
 	};
 
 	pdb_mps_hsc3: power-monitor@14 {
@@ -473,6 +475,7 @@ pdb_ti_hsc3: power-monitor@15 {
 		compatible = "ti,lm5066i";
 		reg = <0x15>;
 		shunt-resistor-micro-ohms = <321>;
+		ti,current-range = "high";
 	};
 
 	pdb_mps_hsc4: power-monitor@16 {
@@ -484,6 +487,7 @@ pdb_ti_hsc4: power-monitor@17 {
 		compatible = "ti,lm5066i";
 		reg = <0x17>;
 		shunt-resistor-micro-ohms = <500>;
+		ti,current-range = "low";
 	};
 
 	pdb_ioexp_20: gpio@20 {

-- 
2.53.0


