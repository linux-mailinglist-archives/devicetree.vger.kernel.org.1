Return-Path: <devicetree+bounces-314864-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k5ZfALCYOmqGBAgAu9opvQ
	(envelope-from <devicetree+bounces-314864-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:31:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9976B7E7E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:31:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=9elements.com header.s=google header.b=HyifI0+5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314864-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314864-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=9elements.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83DAB308C109
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E864C385D77;
	Tue, 23 Jun 2026 14:30:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F64385D99
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:30:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782225001; cv=none; b=AnGPb8LFmG0RvkyFjql2H/wNfn35x4vIK2D1EIe5NQzMlUD/tx2BQIJOv+X/tc7Ey/tU9A0L35Wdcp2MbZdpqzazjCHMjAOVRLhafomivXuOTzh/X928qs0zoEG9ivmLoGPnCQlYi9mD8ot3/YDjP3d44Jm6ydLdN31b/ltfHfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782225001; c=relaxed/simple;
	bh=v1FBGkXnHfQv5BSJ1xkMgDQFKe1pyB8IwLLqyphSqLg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bLX37kDpJvwQLT0rB8CJ7ir04WQ/n28e3sSAXSKVSnbBVSuFzsjB+D7z1/+h/Hbj4ZVsF/OxoH+SSJKuYVW1+bQlqTf9Thk/JBGwT9oo+bDkVDeOa7ULX6rKC3NIvzWbwv5wQeheEXBuP0otMt2Pyz6FeL/+tfF9f3wfBHOx2zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=HyifI0+5; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490c0c92cffso39574615e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 07:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1782224999; x=1782829799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w0YQhBtC/ubH1Q0Mrdh/TGxhsAQ0oS6iny3Z+QMvfNE=;
        b=HyifI0+5YDrk5TbehOn5L3QaO+Z0Fq9tyJJiRGYOJ9Y+VTwTtxEJt8TYDPIj34M6qZ
         UzAUq3c3t8M9/UFbhTcXi/VF0jUnImkW0cc1yramX7cAfd4EduBQM8U0LbkAcKJP8+iH
         MQDePovMVdk2tmHVSs5GlL3b4AXTyeu/RLcLGH0BAPMG/I1oNNwnCbFfSqhWQTcjrnXx
         iLIeIfv5XWNyEhej1wT7JSmDV00gOPV5OjDHweYQObDvuFMXW5nj93lAl4E2z6UXQCCf
         IP24L2U4XehpF0rDs9OYUx73OvgRfs6SLJivecnF1CkorBKjZK2REFtlS3098H7xh2NQ
         Qrwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782224999; x=1782829799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w0YQhBtC/ubH1Q0Mrdh/TGxhsAQ0oS6iny3Z+QMvfNE=;
        b=O+wbNTjZ5vmo7nnQX2GnNIWOjGeyulLvf9O7GCNb2vQixOp7NpfcN4ke7Skd4lrWPf
         u/7DYZ5rUHQGyhQgoSlbPBdNWK18A/W1IXPF4G33oebBqapq930aOzPihNVY9lC6WlOZ
         OHIXw71xOYUC8ti9OU+DLspa8g7EMYS3deVHmt8l50jLxkDDhdutpy3tD/wsu9uwsq3B
         NmP95P1uL9b9E7+izDxM1rHjPM68jQMtjZHVNBNcSQGKEbi0IsZX0x07zbIhWfrHDkux
         +sU9ZRdIgikK/64BSRcEf/0drEkeoYi8JQ22MJjfALLDKJD8ceudDeUfNO3vTQjT8lnl
         xvgg==
X-Forwarded-Encrypted: i=1; AFNElJ87sqhdKsnN5JL0olSq4YN74mthA7dYQy/mkoyH+pGmpWMdrgnO9S+LsJeg3/5ePUM8O+e8NJtj38r+@vger.kernel.org
X-Gm-Message-State: AOJu0YwownpXM/WARQBEFYtsKvUeknmS9U6IWToseTZtWX0mSDAvn9Qv
	KjX64R/hIq+FfQwHmko5CKk20mnpcvyq7Z3rbMyoGkagdCFrKbcncrwsHVs9fvCJf/GFrktck/y
	l83y37f4=
X-Gm-Gg: AfdE7clovhFqY3QLzUcrs/a3/O5uo+xYWAOgZkMls49UqnjzfePtitvgdXM0vZgNprm
	330Rlxeor1UbLrz2mIktWzPcs0sypyU1SdplNDB4OZwHztV/20P2Ssp80SqpRm5+CquIK4OinVA
	xYL7CvRSL3b+OIalHBrD99oe+FR4joUhmXZd8F4MlLE9pOMIn8qN137PNRQh9ro8JQj3iu+7Up5
	I2eqcz7q/YenZeHf7g5ZFtQXHpshXS101aq8gwd+ADkBs+1gd8PivmyVhBtl5P1iAiBBoiHJjKf
	AA2OMtmzag2EjUkjr1SXyIANFWY047/+xIJJLRJ4i6kSkW9+E+ug6ec/SLIkiYxzhIBGwO4SLQR
	GSRNnHUOI/CcpBUCSDfM95FeCsns93f+XV3ndn8oqFcE7A6MI69O0uDQKMNUIIp62r3JtAtnRBM
	GujLPJws0u40M8yCENiSBoqpjwYzRGhcgKnjRmTK1yuixkOXSia86vTD+6jUixQXfMGzCATQkkF
	c8gkRfOSOhwEZXgmwJhLLWHRq08
X-Received: by 2002:a05:600c:4886:b0:490:d354:d15b with SMTP id 5b1f17b1804b1-49240e9545amr189390855e9.29.1782224998752;
        Tue, 23 Jun 2026 07:29:58 -0700 (PDT)
Received: from gregwork.sec.9e.network ([188.111.3.154])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49240efc160sm362507805e9.2.2026.06.23.07.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 07:29:58 -0700 (PDT)
From: =?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
To: joel@jms.id.au,
	andrew@codeconstruct.com.au,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andrew@lunn.ch,
	jacky_chou@aspeedtech.com,
	yh_chung@aspeedtech.com,
	ninad@linux.ibm.com,
	anirudhsriniv@gmail.com,
	linux-serial@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
Subject: [PATCH v3 6/7] ARM: dts: aspeed: g6: Change vuart compatible string for ast2600
Date: Tue, 23 Jun 2026 14:25:44 +0000
Message-ID: <30aedaa9ffd5ba2d763d8802a07b77ef2d5bfcf0.1782224060.git.gregoire.layet@9elements.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <cover.1782224059.git.gregoire.layet@9elements.com>
References: <cover.1782224059.git.gregoire.layet@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[9elements.com,quarantine];
	R_DKIM_ALLOW(-0.20)[9elements.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,aspeedtech.com,linux.ibm.com,gmail.com,vger.kernel.org,lists.ozlabs.org,lists.infradead.org,9elements.com];
	TAGGED_FROM(0.00)[bounces-314864-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew@lunn.ch,m:jacky_chou@aspeedtech.com,m:yh_chung@aspeedtech.com,m:ninad@linux.ibm.com,m:anirudhsriniv@gmail.com,m:linux-serial@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:gregoire.layet@9elements.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[9elements.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9elements.com:dkim,9elements.com:email,9elements.com:mid,9elements.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D9976B7E7E

Use the ast2600 compatible string.
This makes it more precise and enables specific ast2600 properties.
Still use the ast2500 compatible string as a fallback.

Signed-off-by: Grégoire Layet <gregoire.layet@9elements.com>
---
 arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
index 56bb3b0444f7..7c02633f2bd6 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
@@ -707,7 +707,7 @@ emmc: sdhci@1e750100 {
 			};
 
 			vuart1: serial@1e787000 {
-				compatible = "aspeed,ast2500-vuart";
+				compatible = "aspeed,ast2600-vuart", "aspeed,ast2500-vuart";
 				reg = <0x1e787000 0x40>;
 				reg-shift = <2>;
 				interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
@@ -717,7 +717,7 @@ vuart1: serial@1e787000 {
 			};
 
 			vuart3: serial@1e787800 {
-				compatible = "aspeed,ast2500-vuart";
+				compatible = "aspeed,ast2600-vuart", "aspeed,ast2500-vuart";
 				reg = <0x1e787800 0x40>;
 				reg-shift = <2>;
 				interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
@@ -727,7 +727,7 @@ vuart3: serial@1e787800 {
 			};
 
 			vuart2: serial@1e788000 {
-				compatible = "aspeed,ast2500-vuart";
+				compatible = "aspeed,ast2600-vuart", "aspeed,ast2500-vuart";
 				reg = <0x1e788000 0x40>;
 				reg-shift = <2>;
 				interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
@@ -737,7 +737,7 @@ vuart2: serial@1e788000 {
 			};
 
 			vuart4: serial@1e788800 {
-				compatible = "aspeed,ast2500-vuart";
+				compatible = "aspeed,ast2600-vuart", "aspeed,ast2500-vuart";
 				reg = <0x1e788800 0x40>;
 				reg-shift = <2>;
 				interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.54.0


