Return-Path: <devicetree+bounces-260671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBQCA8Kpemlc9AEAu9opvQ
	(envelope-from <devicetree+bounces-260671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:28:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF507AA3CC
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:28:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41CDE301F794
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5816E23EABC;
	Thu, 29 Jan 2026 00:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C+rCuqbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3045223708
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769646521; cv=none; b=bdnABNJP4ImilijSQ7Mvo0lqiRp2wn28lWrKw55CJP1qfhbeVN7S9B9G0MXmgA5K5icBV/BQOAS5/O4dnTpxGZ7x6RBYzpQwACttw4yCIxd7PntT8QjQJslOnUq1Drm949o1ACULMPkK//rmZ3UrsB36BJVKlSsMW8k5TaSrmgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769646521; c=relaxed/simple;
	bh=FjWpO/mPG+8hTv+rYb6FR7/jfuwTtW9f1zSqt6jeAh8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SDjCVe953p+3diFCq8jxxIUCsVcOvUt2cekn0dciEL5bvEyL5HPJctMQ/lYf89ehzyv4jikmlWGGsRG/e5rUPg20Z/320E1x1ihb1Bi+aP9ELdv/ma9vkgYpqOBsnLUXVqZnceS9mJmWFvAOF0Yy2UlN58yltz6wLS3UJEzvDHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C+rCuqbP; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-29f102b013fso3687825ad.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769646518; x=1770251318; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ERZOknKRJNeoOk1ZDuqvbo71ptBm09tLRhohA+SADqc=;
        b=C+rCuqbP331iaP0r1/DDPpfPv1yb2Zo0qsiIZb9DStyzgaiNkonb0he7ayt3Vvw/zw
         MbZlHMEf0kJWS3a4bmvu2MZltOyX7J5LjWX6T2JSIoRc4FyUx+lkIhhgyFpwidKT/70u
         fJ32fUpPOIWB8nF1Hqg7J6FeNozB6t9gi6xVdCIPNT2sksI7RokaAOpAScjInDXtaKGw
         LuF4DMKDu9iTsnZ2Sq3S283BS7YedGTnwREaDvv62geMNZupMGI/zh7Tli4q5n8/K5hG
         0PzPATuShyzHMnaAAaIKUahg6fZr08CygN8lqdK7jC7d7hSz+Oi/Hc+l+LdGXILK3C4g
         sZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769646518; x=1770251318;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ERZOknKRJNeoOk1ZDuqvbo71ptBm09tLRhohA+SADqc=;
        b=CtOec7E53avokWFdXoQShToEenv4xNtOUm+AoOb98jvf+6w07JBfpqDoOaQr5ELJgL
         McfBlY36bXL3h2sfbVWxwUqvmRjA6EvoABRgMC2JHtQ+RTUCObwK+Jk7pyBRYA+EbDuI
         qnE2ZeGhwD1jaFYpa533yWscKfd4Jcf665/WOCt24iTjxPNRQlRp76RWDbdI65BRlEmd
         SKKAkiHKm4knks3MMo5xRkllZnzRQ1WtMw0pS8Z61WhhUK1gcCWhIAL+JI8X/AfJwq7h
         91JXdfunMfmOhzH50ySFN1bMyvj+WwfMxfLSh9O8QjEg6tIquMC/M48QYP3BhsHpazEX
         ROOw==
X-Forwarded-Encrypted: i=1; AJvYcCX29MF/NXFJKwr2Va0kAh5Sc2Ecx3qVCnXlwBMJSLSQKh4v0BabXA3BozttmwBf2co7iXhor/65Wszf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0EhFuC9O8AAfPYnLh2kBoXIgBz0rS5feZyTfpDA/ytaxrNvqT
	HOapK3GGcYS5OnPEQ7Rwn2YVTLDYoY7/PDUl7vvHQul84Rl8xAB+BuLq
X-Gm-Gg: AZuq6aJ7cwR8PfBGqb/G4sMVlB/nUFT6HXcr2eFpUOQgo1hpwPalNs1mlp3ZJ4s5OE7
	Bssjbn7d9FXQbPbSBq2QpbAQVZUsZKlb6A4FR/2c2Yn0lIEFSHAkC/0qlDXfOqLqDLJEVvlUe49
	g+VQIBNFXxbpr0w+/7k1chJryds6oRrG6qA9guOMXiIHIETMG4SlC+3EU1wXVfOyRE9sx6+hMxn
	8NM+PFXtedbMryfZTjUgKKE32DuwdYvaiFSbzSwU3aIFBCfz7GPHsFMtUH/90gbez267WAX8GPq
	uLJrd+alftgYHjtz0O42xAymrfOhPOEY6euGQL6c0gMzkEsoh5tspuDhM7C5uJQQswd0xz8PXa0
	7/GjsBFKKImM7bnbu3W2gXByTxYSMyT6pFY2qr9lqMsgNlZ/BlUta/P8rBv2jBKr3rDVUtP2GIV
	E/xivokSqPFotugvstBXM=
X-Received: by 2002:a17:903:4b4e:b0:2a7:8839:dda1 with SMTP id d9443c01a7336-2a870d60b38mr62916875ad.13.1769646518290;
        Wed, 28 Jan 2026 16:28:38 -0800 (PST)
Received: from localhost.localdomain ([58.29.79.238])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4163b5sm32789055ad.41.2026.01.28.16.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:28:37 -0800 (PST)
From: Lee Yongjun <jun85566@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lee Yongjun <jun85566@gmail.com>
Subject: [PATCH v2] arm64: dts: broadcom: ns2-svk: Rename at25 node to eeprom
Date: Thu, 29 Jan 2026 09:28:10 +0900
Message-Id: <20260129002810.10261-1-jun85566@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,kernel.org,lists.infradead.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260671-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jun85566@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: BF507AA3CC
X-Rspamd-Action: no action

The AT25 EEPROM node on the Northstar 2 SVK board uses a non-standard
node name, which triggers dtbs_check warnings.

Update the node to follow the dt-schema by renaming the node from
at25@0 to eeprom@0.

Note that other legacy property updates (byte-len, page-size, addr-mode)
are handled by a separate patch.

Signed-off-by: Lee Yongjun <jun85566@gmail.com>
---
Changes in v2:
 - Dropped property updates (size, pagesize, etc) as they are handled by another patch.
 - Renamed the node as requested by the maintainer.

 arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
index 5939d342aec7..ce1b099a8804 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
@@ -127,7 +127,7 @@ slic@0 {
 &ssp1 {
 	status = "okay";
 
-	at25@0 {
+	eeprom@0 {
 		compatible = "atmel,at25";
 		reg = <0>;
 		spi-max-frequency = <5000000>;
-- 
2.34.1


