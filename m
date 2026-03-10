Return-Path: <devicetree+bounces-273426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BnbAEzpr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D599248D24
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 08AD1301137C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101B7449EBF;
	Tue, 10 Mar 2026 09:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XNr/qaK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAF8342535
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773136196; cv=none; b=Ei1wBEUO4WtFaku1rougd/B99DHYrNki206/0zAzH60KBR30MtJlKCjEWYXQQ0E7qHc46ik0owIqGOxx8DsW3qhtzuMhP4ThZuK18zm4pvg4XlNCKmlad4i/WWzWUMOyN2olZI5W3qnaiMh+0m2JaeEZ238W0/FFHem3kpFo5TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773136196; c=relaxed/simple;
	bh=rM1a3/U5nmwGlIwi6wEffz8sWYF1jFlqAjBK8RCzM+c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eSoXpka2VjmZtyWpo3onmHmz/naqggd+8bjC+hLiajnSRKRrjX6iqefmVyTwlAaxzNC6ZvYONgAxi6bvBxLibS9KLg2+BmFp5GyLmscpOEn9qWNZB0HwjSmZyAbw6JH2+c0wLAPmZppTJaO7XhBpHEQgsfWrlZjeW95Q6WmG0tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XNr/qaK6; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c738fecf349so1809433a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773136190; x=1773740990; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MNOZBfqr2lnHP3ETayFOjn/FEBqearsn/ED3lU7TMb8=;
        b=XNr/qaK6JdcZyCDKl+b2+q76Mr2DucPzqy7NwjtTTKcgefJpWCAD3+lsBwqixqq+c2
         ZjfgPkaA9n8I6SxvfEjekzyaGJv0KCBONNUCWoKKI9VEOFxSAozND/HSkHik1EHLFJEg
         bQTWXMeTQV1Dqd0j5QaxG6VgxhbEUMFE2vlODmOu9pTsCZQvRoFfCzqPqtz4ZGEaSGDj
         KTIA9k7vEmH3SzGri9ddyltFIua5pt1LfOYCtL7l5Nqxozheq9F8f8hiJV5GfyFqUsP1
         3MGp1v+MzNAu5S+4hBKplsp9M79fUjFo76pw0Rr32+x9ySqA6217wxsHSEjxfiovTKEc
         6z9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773136190; x=1773740990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MNOZBfqr2lnHP3ETayFOjn/FEBqearsn/ED3lU7TMb8=;
        b=ZMsp7YG9ywREt/uqflyQhOdVKUbC94SkJi5lyOBvowMS+5XnQQvYp/xDrHqaSow13a
         oG1ukhEVEaxCr4bQ2fiQveCjSEoeZv5raT6VhSDROvZXLFNBh6I6PllkNurd6ucRYVRS
         D1YZYhLsVqvStWLMDFHtn8QoSZf5xwVKUMsfXv6ukrqeAQ1d8oCNPRtoDr3InXOD7fCx
         oryr6HBhtThcLcXN6mdjhU1/SAcOUChucG0reMHZ9SC7mUqwmpYIB72ztKK6CaW2CqDH
         CojS9Db6qbcOQas8FGW06pTSBnm10JR0qWFA4rGBWW3ixmd5wOPocdTWXQqjuy2pPqut
         WJyg==
X-Gm-Message-State: AOJu0YwG8gzzX2+xsoyeN5RzSZSxcDRipRSvjzEDv0m3/lHYbSOTBvef
	lz3jDQ/ZBApoVI10L5vvP8vJM12vNxMLuXYo3jnXmG3oC5xqXpldEadr
X-Gm-Gg: ATEYQzyU4UEB/VZaICtCNuGYRrJv58WE7Oda26XaeIY4tn+aWCy2cq7XX/izdLKS2N2
	c5hRnnNc1Dq7skS0LNAEn8HR4WQy4Bax8HZ3zyu6FTRWbVfg+itZjffkgzXd+QIhqyz4F7/lWzF
	pQbd1o+JPDdQQalXJqJTyULyw28A4mUOkuaMMH/1BrPDJCmmiAo/IzkF6k+G7/CWiBWVa1nJQds
	z1tfpSeLfhICWpR92ruJ0hpD7gOWc3zYmBiKLovk1CV+HGa9yJxCfAeYkYbGxNwv7UoXdqs9kd3
	SEpxxajvizLvMuTPVC+Sc4ce31Ts3Z2vygYQDnbXiMRxfxqu3VdiHK+nl1nVgbylXo1sjnYHASu
	PvqSduskSW5jnISTx2Mc2+xMFpJXeJeCMaeXSfvHExv1LQKUy3h/N8mfOV5zPqYJ7fgV/jLxNaE
	kV4ofg0+fjYkOR+kWqwByLoqObS6xRsA==
X-Received: by 2002:a17:903:4b4b:b0:2ae:4aa8:cab8 with SMTP id d9443c01a7336-2aea1cc7a8cmr26099295ad.4.1773136190120;
        Tue, 10 Mar 2026 02:49:50 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f8a67esm199459775ad.61.2026.03.10.02.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:49:49 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Date: Tue, 10 Mar 2026 17:49:35 +0800
Subject: [PATCH v3 1/3] ARM: dts: aspeed: anacapa: fix SGPIOM0 GPIO line
 naming for RMC leak detect
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-anacapa-dts-sgpio-v3-1-12d9b7f1202e@gmail.com>
References: <20260310-anacapa-dts-sgpio-v3-0-12d9b7f1202e@gmail.com>
In-Reply-To: <20260310-anacapa-dts-sgpio-v3-0-12d9b7f1202e@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com, 
 Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773136185; l=1183;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=rM1a3/U5nmwGlIwi6wEffz8sWYF1jFlqAjBK8RCzM+c=;
 b=/SkyG/rI3p32n0sdU9i9f/wiBX7Kg0j7iOXHEq5CkGxm3tJbqZMGUeyODhM18MHMcvQlMumuj
 xH1TzkeymrGBPmYnlXV/UAu8KCqMPPDrerCRNXkWJk0iogVaIO0fM6f
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Queue-Id: 9D599248D24
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273426-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

The SGPIOM0 GPIO line naming is adjusted to correctly reflect the
RMC leak detection signal position.

Move "LEAK_DETECT_RMC_N" to the correct GPIO index and clear the
previous reserved placeholder entries to maintain proper alignment
with the hardware GPIO mapping.

This change only updates the GPIO line labels and does not affect
the electrical configuration or GPIO functionality.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 2cb7bd128d24..3e297abc5ba4 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -880,9 +880,9 @@ &sgpiom0 {
 	"Channel7_leakage_EAM2", "",
 
 	/* C0-C7 line 32-47 */
-	"RSVD_RMC_GPIO3", "", "", "",
+	"RSVD_RMC_GPIO3", "", "LEAK_DETECT_RMC_N", "",
+	"", "", "", "",
 	"", "", "", "",
-	"LEAK_DETECT_RMC_N", "", "", "",
 	"", "", "", "",
 
 	/* D0-D7 line 48-63 */

-- 
2.34.1


