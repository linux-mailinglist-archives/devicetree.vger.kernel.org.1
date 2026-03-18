Return-Path: <devicetree+bounces-277452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LcaF0D/ummAeAIAu9opvQ
	(envelope-from <devicetree+bounces-277452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:38:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B09A2C2149
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9007D3178270
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B3C3F23B5;
	Wed, 18 Mar 2026 19:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i552jQ5D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416523F23BA
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862614; cv=none; b=YgGyXXrXvbpJbk4V5E5yj8jVgUoYdkzvIZTFhlOh0V9x3gzIDVfHQ1ISZS03nQAwq8vezzjMws1YFKOXp7xbgRZEtpb4p3Aeh5aZ5++fTyTzAj5GPhQmVD8bY0GZCY1txMUSRj0cIiLhEbvtHvu6nQBkOan/6Ad43LZN0fp97PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862614; c=relaxed/simple;
	bh=14OCwvI5iMT/DGrJ9TlMu+tDbn7a5N5d2vl4HFMg7Xc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z9zPQrqPQwmxrlQA+V/cg4MVeZjM8V2/HdhVx9QeRFtQ3SQ1+xTmULQAYkr34wsJs0+33MmgFPHzClCKQwgVBbrfNKV4Htodb6gWx8rkpDlZfFi+R8lVA7azouYNHhrcMlInsiLdUi20NExrceAuYxMaYmzQrmXwpKnd0XWvTnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i552jQ5D; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-356337f058aso245823a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773862612; x=1774467412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qhe6Bw5swAXowEnRvu3RMufWPhEQIrULXXpRHTNF+tE=;
        b=i552jQ5DwL1KawhQp2EKWtBSlHdCshtFbqtNO1VupYV6oB5VGwnom9xG2ytkl9SFNV
         CNIktD5FshSx1qFFeBxwnUAriQRMIfaaBu3pUU5NRhcOyB9NaJjAPQIOiYsSrNwbrgjh
         MWLL/OmrRHuiZdH2rrUY72o4AgV8jgG3kJOMbYjpceE4VVtSZUfhu0gP4eR3GkL6Emis
         MMKD1Ig8ZnIbluZRBudbKh/+a1REiIadYEz2xqFN0KGnqJiQOdNpoU3+A7/9W5VMl4FN
         MLJ/9C2TNIhea6AHn4sf6NqZtBlUTPlw0TYNhTpTR/ryto8XfCpToZ5CKB2fTwiQyEIb
         ycKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773862612; x=1774467412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qhe6Bw5swAXowEnRvu3RMufWPhEQIrULXXpRHTNF+tE=;
        b=p3Q/WSgJYUSNTbTQnQ5RpqabK23orZojgtVtiqjWhqk/kiA3yMpqH51llctZFUfWXf
         8iqRIcAq4ugMqd0+P1yXVLTahsM4Y5DCWCDY/o8RvKxwq9dtZd2AreBY1YJpXVSv1y8/
         0/ozlw2C9+MfG9scL5WfRbXkCLv7dztSm8JDMQ+zlx+lNaGOKltR/SwuU8M25wOwQIcF
         8Y5PA1PiNH/ccDGCyPjOjpbTPqDGc0pALTKeMOWJORJqCuJG/BPmK83/1WrVsHB9kEqh
         nR7QSdRU6L3Px8fXbGzd0Ov14ups+3OaFzD0V5yXPV4KasOE313hSqgaodwGEkhFVUtI
         xsmA==
X-Forwarded-Encrypted: i=1; AJvYcCX9ggly4+jh2kyiCD+bIFfsf/lR01MVl7k/+xzYlh7AQf6pZQ4RgleglU0actKP9v4MHNv1YgY0RmHt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+ltgXZxTXCui8VX+bnWr30PVbrs/XhLZWKJ6FKsJzsCaYO+CP
	gumqX+n0Fg0yO5j3lg8ccSgZ4yLhW5aa+wNh/6pz2hppLiA8ZDs8k4uo
X-Gm-Gg: ATEYQzy7oj0CLCwh8rk9lZHA3nAyqDYHL/HFfx7mAfM8oP5s+TuSTOgmqSMksWZl98p
	OwFAqxSx/uvqgE9d/ev9YqS2JAcT3RpO4q/kE21US36W99m+9qWETOZ9s1whgQrdqUU8L1ztk+7
	lL0HbT4A7HT/ArkAFFjEEBgbkAJMNvZBVjz3cLQjSoCqjxlRnWXdzxu9gHtoXxMAwfdnzY/Fgxo
	rui4cRcfBMjmZsPCP5iwyZkw74N6PfqvOaiIf7650lmVJLsgl5DwG9QNjawe2ZZ27TerDOuY4kX
	HOKNWxROVACS1A2OkdiV4OgFmpocWiLdbAEoAmSF55VbOXs8lwIxow6r/UPQkYCiNySyxL6be9L
	HGs6UDJfUeVwWKxKmpWpTrYlABfg2m3vaDN2AwG/5jysyXnb3jxOEy8JBBhHIujwOJtl+Tpzwtk
	cNeiqOOHZ4f1KGW6bF6APu10hSEDoSGW5S/+8nVffDbzmiwSMg4uJWWac8eTG89JVHmVKovRVQK
	uBpUp3uUNvbC+Y5IU3tNw/xm+BamyAi9bCDxRk=
X-Received: by 2002:a17:90b:184e:b0:354:c593:b1a8 with SMTP id 98e67ed59e1d1-35bb9e7d24dmr4153966a91.13.1773862612414;
        Wed, 18 Mar 2026 12:36:52 -0700 (PDT)
Received: from visitorckw-work01.c.googlers.com.com (100.130.194.35.bc.googleusercontent.com. [35.194.130.100])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9ff59a4sm1521664a91.2.2026.03.18.12.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 12:36:52 -0700 (PDT)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: andrew@codeconstruct.com.au,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH 3/3] ARM: dts: nuvoton: Add OTP nodes for NPCM7xx
Date: Wed, 18 Mar 2026 19:35:38 +0000
Message-ID: <20260318193538.246853-4-visitorckw@gmail.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
In-Reply-To: <20260318193538.246853-1-visitorckw@gmail.com>
References: <20260318193538.246853-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,ccns.ncku.edu.tw,gmail.com,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277452-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[visitorckw@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.472];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.2.226.72:email,0.1.56.128:email,18a000:email]
X-Rspamd-Queue-Id: 9B09A2C2149
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree nodes for the OTP memory controllers found on Nuvoton
NPCM7xx SoCs.

The controllers (Key Storage and Fuse Array) are attached to the
APB bus. Since they are internal SoC components with no board-level
dependencies, they are enabled by default.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index ab3c3c5713ae..8a28b1f8a4fd 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -480,6 +480,16 @@ &fanin12_pins &fanin13_pins
 				status = "disabled";
 			};
 
+			otp1: otp@189000 {
+				compatible = "nuvoton,npcm750-key-storage";
+				reg = <0x189000 0x1000>;
+			};
+
+			otp2: otp@18a000 {
+				compatible = "nuvoton,npcm750-fuse-array";
+				reg = <0x18a000 0x1000>;
+			};
+
 			i2c0: i2c@80000 {
 				reg = <0x80000 0x1000>;
 				compatible = "nuvoton,npcm750-i2c";
-- 
2.53.0.851.ga537e3e6e9-goog


