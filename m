Return-Path: <devicetree+bounces-322812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id acMrDRJJTmqrKAIAu9opvQ
	(envelope-from <devicetree+bounces-322812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:56:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A34BE726833
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:56:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hdhm0qWi;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322812-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322812-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DFBF302F26A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 12:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B687451056;
	Wed,  8 Jul 2026 12:54:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EB245BD7F
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 12:54:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783515243; cv=none; b=grYxUPeeN0aAGkAbKwi0xSD3dWIHTNbQGpTNaxmo5/Emd97DZwqpy2u/urrmh7HBinnC9OYbehQcKwM0wWwPDX8s8Iuf9PKcTV6aheG2+XKPy1KjpwwzsAACKESUtIRjugKb1liZwaXvbAtCB7L3vEBFhVOsnCHUXhPThmQtQYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783515243; c=relaxed/simple;
	bh=S31RcA/iT73E2rlScRcBB8K94r3tzTju+wWFc1ueh9E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BtrPveM67iin4jMhjbnT+VsWgCkYjESgPqNgr4qusKhrnikX32iW6VwNiDMN42teYV1Af9UYXRbaDxKcwXLUIu4OSgqfnM1BN2/YvLcO5B4mLeKzflNrr43VsY4Llwq2NKifoFM2vTIZa0J7QUszbpHbo5SFX3xMfnfu7RciHu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hdhm0qWi; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-472326ca506so443099f8f.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 05:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783515240; x=1784120040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k9A30rq3ztTZA8NjaSTuX8appAKxji9QAPEQZArsTJ4=;
        b=hdhm0qWidwxYrVJirGeGbI4pYt5LKQhCIRjEYVJLT2UvMNPWF2ALZPvM/CX2DN6eYv
         PQOSllXhPzdjNXe7cfe4bZL0KW4lmW41uE/QDwkEoS8FLtubB7AlstFl1HG2x505ukuV
         2RQNCHrqHIH4kPGSUXLYCGiSpy4VMTuiTA2NfIbv5bHcuM5CHhpnNzktIjKcUYYdeDae
         lgOnivgZwoUiWkLVXNdlwXYRd23YJQ9I+OQy/TCaHrQ5gYqBeBzFVxZQakaC0+yUZETy
         O2/wTWaKQCX1QiXaqxwP0CJtbPJobiI/HYMU3I7C5+dye6lkSiMvTfPfKLHJTI72ZWeo
         mGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783515240; x=1784120040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=k9A30rq3ztTZA8NjaSTuX8appAKxji9QAPEQZArsTJ4=;
        b=pGrEGZ8EDMrqRjHK+5jlBp95Mvvef7ccllyuDMnkJ4NG0HPH/Dnt0Mn58nf7fpitiN
         fSEpZ1YcLD/XJ8zGDEXnP0DHrMem8LankG760RAp2sqO1Dykd2BYc1cHJksc8Z/BvgmB
         tthSkxJflVnjT4IUaLlxNP7K8qZnfZjJszp+mMDVzc3Kp+PxIu8bJhvsguDkz9XTUR73
         AJwCSbxbzVqOb09SaUG7049EETcNxyLQLxJXPo/0ozmKcTR0OjQk4aeaZ4Fee0H92uQ+
         2acle/7lalJl9jUhL4GWLcJZe3Hw2snw4LWgHQz/vlQsO9HyccFt/dAiSfE//h1DLasu
         hPlA==
X-Forwarded-Encrypted: i=1; AHgh+Rq/5gJ+GxdIp+EeDzl99W68n1yRA9VZ4s0Ug3A8p+4S8pcVnFFxTo8Cvh1q/4SQ7UeerbK+Ihp0rrlY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1GSLcdaDQXG7Qdmnnx8MiNB2VYj5RryT2ZcBMz1nLCqPn/e6b
	Ta16J+UQZKj9n6TDjjxkYsumfOa8y8cJrP6AcpPlvG/P81Db1l/FmiWC
X-Gm-Gg: AfdE7clQRNSZRCVuoGb6RkxoEJvvO1vWf7/faprvPubWNt4YHY4VBlmBPrl+mChCUiE
	avYObiy6OuJS+XxzcCm6KY9tvta7KDvrFL0FwaZoYoBly8TE1BqlGjVWk7iQ3iZf/BiFUw4jKCk
	DRGQ7iJksKJo+B6LyLbBD8tWFDlzLz6oWkAKrYmMyiva/qI/rUJIXULMzTdKAyjzaAbw0E/ZXeC
	A0uHB5E+ZSlR6GZMV7EwXckBKFd6YmWekgtoZ61g5AoQbHAFF+AkylkrYFaGrt8hYV7A/OIlQ7/
	abQ+kqpB7eRaYMYxEZlA3lg9v+iAy6AyHB914KOjqCxB3cd/EogP242db7P7PmHCdkp7zx7dF86
	2OJ3EeJp63QQCvn7jVXvih39XBTq0IfeIIKatHFb+hWrJ04t8W2KPZPCHTXg40j0Bnua/+cdvbB
	9SqyFB9WZm+FRoWwAgWRVvycXKoIHX7fruUA==
X-Received: by 2002:a05:600c:4fd4:b0:493:b61c:72c3 with SMTP id 5b1f17b1804b1-493e6878b65mr23443055e9.32.1783515239873;
        Wed, 08 Jul 2026 05:53:59 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0f3676dsm143824625e9.5.2026.07.08.05.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:53:59 -0700 (PDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com
Subject: [PATCH v7 1/4] arm64: dts: nuvoton: npcm845: Drop redundant timer clock-names
Date: Wed,  8 Jul 2026 15:53:49 +0300
Message-Id: <20260708125352.1915040-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260708125352.1915040-1-tmaimon77@gmail.com>
References: <20260708125352.1915040-1-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322812-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A34BE726833

The NPCM845 timer0 node references a single clock, but its
clock-names property is not described by the timer binding. Drop the
undocumented name so the DTS matches the binding.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index c781190b4..9e4fa2669 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -73,7 +73,6 @@ timer0: timer@8000 {
 				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x8000 0x1C>;
 				clocks = <&refclk>;
-				clock-names = "refclk";
 			};
 
 			serial0: serial@0 {
-- 
2.34.1


