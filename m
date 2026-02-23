Return-Path: <devicetree+bounces-267365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ET4EOY3nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:20:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9603617564D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53D9730745F2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6BCB35C190;
	Mon, 23 Feb 2026 11:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aO9TlOdt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB64E35CB8B
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845472; cv=none; b=ArZrAd7VC6s1eIrcx/e5jtLUikfe++MGvvoJFvjfOQcOPd4/Ny42Y1bLVge4JbfLEGY0BN7l0HgUAVmGorICQ5pjstuFGcnGwYfvk0dIAFjx4tZt0e1tEvT+q47h435xnPoNsTLj7yBtBgUj4KuUq2jEzPnlz6ePGfqjU+wNEr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845472; c=relaxed/simple;
	bh=av+7nUIzNcRonWagw3z99/fjVjTYsiFRkATkeneAA4s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZEv/ulTKGe1+KFLP9gjERhZnINSnNcTExEQOro51AC51/mLJiqvTX3mVb4iQrr4awxSuvr1zCRbCQ1FRCCfR5rNgeKSnUUYoo1vQR3bnhvIk7HmS9R89zBxMQghqk0kD8vrk3wKShnawkbCIKsEPZ/l8yrKjCLf9ITpObOTVcVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aO9TlOdt; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a929245b6aso39734425ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845471; x=1772450271; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRCjL+EE42kWhMnb2piV+g1yh/Py8//tJ9ex6KvyCIo=;
        b=aO9TlOdtfuBa3RxFByxivjw7WASGrb9xJ0rGQoJc+6TZPtXO/9iXr8iPCYG2/C1cET
         Otwyf3193MIIybNY75in7H+sCRc2rc7fcSmWwQf79O7z7jyf1lUw0OvmX+Eg95mi3e17
         odyHPixHZDEY85YJvXZgAoURwpXZVE73IwjTAKdzAAMy9qU433IfY9XTpO6KkvFUh4JK
         Dw3yRWpL3d8YGCHklNSkbr0TIq+EEqhL+yWDJQJSnalM4j+jut3b+9uLLdKqi6Zyb3zJ
         QMfBhtKEO/4PG6KNc5fjdZC/Vx5fHT366nJGWb8TxvYcxVIeIlQNGJXTDDppUrHz0Bcl
         CiOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845471; x=1772450271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hRCjL+EE42kWhMnb2piV+g1yh/Py8//tJ9ex6KvyCIo=;
        b=aa+y3ApEnDHxnTLTQH2GDuThvISGbL1+RRq4Js5UweKZOxSJ7jP2z6Ms2l5UARioHf
         kBfqDNI0dcO4GhZrrFA+y6/6QZxTLtP5Q1Oft3YurXJqQHu/+DoeXcyY1WvfjDLuMCQw
         MGLZ14egWO1MLDMo6cG28oozQOroYYT3ahaK+TbK9NTn0QP5gtGuS6k5pPnNITn6nRxL
         4ri3PMmSwimcaQGq7+GWbt1/v7h0VxbdJF80gGpD99QU3VUgJUZ4Sd0AIy0a8MRu+RJO
         u9CN4C2BAJKlTZ8CJvXP8gCz3ELhk8K5Bs0E/DYF4ZHTWKfPIdIuFEOf3Bzm1UThse46
         WqrQ==
X-Gm-Message-State: AOJu0Yw6NLR1XTlO0/Cp7MaeRRhc2ZXNOKErpBe+NRIozTT+glt38RsQ
	BoRZ8iR8GOdHtjA/rhi4xtRQB89bUAQm7yHZlqL312snmwvitlMry43Y
X-Gm-Gg: ATEYQzwWOcV8jfwnGyq069dNBEndaU0u6XlLqbCsrDKbiwPXqNOfzc53S53VHnbBVJW
	tFXWfHRDkcr7+Rb1fejUWeQit6jApGNCD4A0A1g12/+ddvscFO2WThD+j9IGoJGAOrQKsrWCXCb
	9kAmmPPUWEFQhAvR64K/bXOQ27W5+HTV/yNf2SXogsi8gs0bmaqsGG9IU91QR23GP1Y8MZtEINo
	puctbGNaJS6FY7/3RHzZUwXKo3ZKyYeH4c1in9M0H1fbdWaTDSbOuFvdzKwDH3jEc6xZ/luf8Bh
	aW7gEIomDdBaweEt01JkrQNjdJsF8mmbEZ05vexNdUduG0BEyFVcltQSS6ZkXj40uRQafBkBrWE
	6mFtkZUPyP+SIo7HHoYmAa1NGplfASJJJjj8VSt5EAhYMPDj2nBY3cTksHWSbh780OA+kvRn8EE
	Ch3/GUU1vJ/xUxez7V+hWXHHPfo41Bee2Hyr056r8/fIdkRHEUXUlVaJmGJ43y1mAoSaZuRuIog
	PmPKR6F74qFSnHvc4IIGh8RNEJux9sMAGkJ3V8q77+94cKC75rH0ZnkKwUArkyKRQk0ydBGRS4Z
	RrLYZeny5CHAFn9yKYKVd2IxnBulibk=
X-Received: by 2002:a17:903:1a2b:b0:2a9:6414:719c with SMTP id d9443c01a7336-2ad74463c78mr70338135ad.16.1771845471195;
        Mon, 23 Feb 2026 03:17:51 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:50 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:36 +0800
Subject: [PATCH v5 4/8] ARM: dts: aspeed: yosemite5: Add IPMB node for OCP
 debug card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-4-fc913e902488@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=881;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=av+7nUIzNcRonWagw3z99/fjVjTYsiFRkATkeneAA4s=;
 b=Ws5ihelxDVqIQUxXO7hw5CQ8FFbcVwALjS3z506cbC48qdvhgLgy/1do0c8xHzKjvqTLQPwIa
 6QORwth6PbQBSujcIM/QV5/IyS/+WnHx6oDBUJmTR5cy5cxV0So2jxG
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
	TAGGED_FROM(0.00)[bounces-267365-lists,devicetree=lfdr.de];
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
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.10:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9603617564D
X-Rspamd-Action: no action

Add the device tree node to enable the IPMB interface used by
the OCP debug card.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 983aebc394d9159c7e3db2e7c39e963f7b64c855..84d3731b17f7c7c87338672bbcc859de2b89b722 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -365,7 +365,14 @@ i2c6mux0ch3: i2c@3 {
 
 /* SCM CPLD I2C */
 &i2c7 {
+	multi-master;
 	status = "okay";
+
+	ipmb@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
 };
 
 &i2c8 {

-- 
2.53.0


