Return-Path: <devicetree+bounces-313281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2lvSNgWhM2rPEQYAu9opvQ
	(envelope-from <devicetree+bounces-313281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:40:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEF569E26B
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:40:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cnwrZYk2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313281-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313281-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1A82C300B58F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB7A3C5826;
	Thu, 18 Jun 2026 07:40:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A58227EA4
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:40:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781768449; cv=none; b=dT7z9XIDw5pkdz9tFKiqdS6PlwYY5WqrUsnZKsrdknAfLGXPiNOQqbINxtwMX822HNZdLF0Q+f0bVRARpC462YnEC08r1nx+oAlsGgoBl7Fd8aKBlsRdD8gCsFEVSEitoNB+mSBWgaQYO9YCNNzBmK3gF3rbk7KCz9nI4UjJz5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781768449; c=relaxed/simple;
	bh=6zTiz3w7GY/mvuRAIGS25k8loWak+uMbX/Tb1hT6QIw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pEySl4ld+e2JkOkJAY6hapV88dum03Hp0oCqMPhsI0I/uMB5dV0q0bncQ3moUqQ5eZCZJ/Gg+9yWmR9Zsjh7tv7Mge39DcLyGSpSGVIG3vwFvxndZRwml2Ty1VLvsZjOyduyPWsEGUKqfHMcqBADm9HUsqspTvRAdOf/bfsZlAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cnwrZYk2; arc=none smtp.client-ip=209.85.214.172
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2c6a97e1d1bso4369905ad.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 00:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781768447; x=1782373247; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4bQGAYRRaV2+W1903QsWxmruXddrxMYSZxLh/ZQ661U=;
        b=cnwrZYk2Os8r2FveBaEUm04lCBUN5SrHcIuBgLSFtb4Mf09n15fslX+6RcpucQJ+Id
         64GHiOsIEgushobC12JXSgJp4E/X1/6SuDmNJmyCWG/XNK9jpguP1UEFRPJ7rfJz6/1/
         xR93whRM+P6NAyVb7PZvih3WdxTgxPdEtbXCEuuWPyRF4KgHLPH8c5jE8s1Ccc0gt8XZ
         UAaoG1ZOP7izHZIjM7CkbPAz2QAD0+FOh9HeWfmqqFDgXpVWTT/Xi/rT0b0ulIUn+lNU
         RdhqnESozVGaSwk9BWttDW3p7nJG0cakJLaJbwsiwjk69onHruaeq/CFXQHd59VMwI5j
         Otsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781768447; x=1782373247;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4bQGAYRRaV2+W1903QsWxmruXddrxMYSZxLh/ZQ661U=;
        b=KAe32mVsNJluYcN5NszR7ZZ7oMmt0vGXEHvTOHDpWqU6guqPhcbVsOVV/Hn3pJy+iY
         B4Ceiuo/yVFfoK6XIPmbLW3BHb2k+W4VztoZPlJNBB8CL3M/7feAj0dvc2UB+dMz4Guw
         GdMNI9rIaMK9ah/hptSZjC2+Gr0mLkEQ0XdSTKL1eBUf72k5U22ZBCfy5b05+MiZyUwY
         X7UlJhIgMsOBkZ304wTJkXz0Bp2mhi6lxSCqIdwFTs0OHoZ6MpJ/F0HX149poDqCbLvX
         +AVLX419NS65+zClq4UN9nnS5wS8db5BLCwjo93/KNs4SN172eLFtbh0CK2VTezpBQH7
         iKqQ==
X-Gm-Message-State: AOJu0YxeeZOK+bsBzMGD6+6XeXLLPgstkZHRmYk+G/WaYnbC7mZwdZuy
	59eA+3t9+Y5nwuMl0pay5Ee5ipKQ+BNkVcLnUlGvmIolIR+UH8C/KctDqlu7Rw==
X-Gm-Gg: AfdE7ckxVw0OV6PLxDUvBrTKeAQeAKK+19qwk0r5IUmuofQF5GCs8C6zoRUkzrT2hm/
	X6SWF3dQG6CxgWZBR+pmAf06A54GeDIUg39Zl/I38mvuDBr6ZYdKtopTiC4ct680paW4Q4RkdtY
	SgLDkAbamzIq2TjfNv0d0T41pvyQtQKtEOkGyUiFEt2LkOXRq2cJAL0aBRekO6nonOYQRwO/Nmw
	vRXl8E8o5hrS12zegYjJR9lIyRkB9KjsI0bHdC8/n0aCbrA8P2oA9kb90Fjf2LMD/udAH+WeWXR
	gJOcqyq9/8wnHeeCPBqWWfsPFHsJnhLJ5ITbngg9jgC3Qs+CbC06OAMiDt87kee0WyfzZwtnRr3
	mCUNp9xO/3K1SwYFt4dwXBs9l2GUdComoVQYjWJ6QLw/zPny8Y7AdfqdOEueqX2J/oSvjfZ5ECa
	DdCyW4fu5iUp+3XlNL7130xNvdkoruOSaCvuQ+WJgEWTcaQMmbVn0xltnJ
X-Received: by 2002:a17:902:ce09:b0:2c1:f29a:b554 with SMTP id d9443c01a7336-2c6e5276358mr27029345ad.21.1781768447233;
        Thu, 18 Jun 2026 00:40:47 -0700 (PDT)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327ac80asm170465445ad.39.2026.06.18.00.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 00:40:46 -0700 (PDT)
From: Mike Hsieh <mike.quanta.115@gmail.com>
Subject: [PATCH 0/2] ARM: dts: aspeed: sanmiguel: configure LM5066i HSCs
 for PDB
Date: Thu, 18 Jun 2026 15:41:43 +0800
Message-Id: <20260618-sanmiguel-dts-config-hsc-lm5066i-v1-0-cccf959c9b78@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3NQQqDMBBA0avIrB2YxDYtXkW60DiJAxolY0UQ7
 97Q5dv8f4FyFlZoqwsyH6KypgJTV+CnPkVGGYvBknXkzBu1T4vEL8847op+TUEiTupxXp7knOC
 LwoPYDI23DCWzZQ5y/hfd575/UlJw3nIAAAA=
X-Change-ID: 20260618-sanmiguel-dts-config-hsc-lm5066i-70f40e1b3c2e
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781768507; l=715;
 i=mike.quanta.115@gmail.com; s=20260522; h=from:subject:message-id;
 bh=6zTiz3w7GY/mvuRAIGS25k8loWak+uMbX/Tb1hT6QIw=;
 b=R8LnW7P5uTR3hdw1TZeBW8HSvfQD7fYHI9xc1necYSMYzKw9jzZdiu94yh4PMMYgeAVq/vigV
 vFPAg9cKrhjCTvvTTCFFjDEgtIjsqVID5CvUPSzpINlUFc7KvOFHrLK
X-Developer-Key: i=mike.quanta.115@gmail.com; a=ed25519;
 pk=DRIErV0xX0KMBlR/irAsbuN4L3egitHbC8FHruUH4HE=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313281-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FEF569E26B

This patch series updates the device tree configurations for
the four TI LM5066i hot-swap controllers (HSCs) on the Power
Distribution Board (PDB) for the sanmiguel platform.

Signed-off-by: Mike Hsieh <mike.quanta.115@gmail.com>
---
Mike Hsieh (2):
      ARM: dts: aspeed: sanmiguel: fix PDB HSC shunt resistor
      ARM: dts: aspeed: sanmiguel: add current-range property for PDB HSC

 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)
---
base-commit: 57596c043ad59cf2e53fadebf6d1b418190e3a49
change-id: 20260618-sanmiguel-dts-config-hsc-lm5066i-70f40e1b3c2e

Best regards,
-- 
Mike Hsieh <mike.quanta.115@gmail.com>


