Return-Path: <devicetree+bounces-311459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0SRNIb/TLmrA3wQAu9opvQ
	(envelope-from <devicetree+bounces-311459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 18:15:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D81146817F9
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 18:15:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nIBz4o6b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311459-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F13633007F5B
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA3E833AD88;
	Sun, 14 Jun 2026 16:15:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13662C21F7
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 16:15:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781453755; cv=none; b=sQHoiLxqJOFfK1ekt17TjtqrNZ1rIiu/3pGOgoca6iw1w4MJ5qNSXKuKXXqFL4Y1+kqoGDCR2GuKHzhqbXUEaPgmlwyFneEgGfPwlLDIRoML+XO2Wp0Qqy061+E8Iz+a4i0jThrGO+DA4N2i5w6vQI7MVmro7LQIfZUg1PUQGBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781453755; c=relaxed/simple;
	bh=9M8qcy3GHoRqZek9jrO88UWNLue8IWYXVgIGIjRr7DE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=grneCpengs1Kyd3dkvTLMQ+w+strgBDiGePB+9Sx0o43QcO9VU+XXY4pSKXqAkugZGcOaBgBLmfU3Cd5/bEo09lA4rZdeg10BQdD9hik+/IpDmTkfNfgqW0x8gaUAJZvWFO3jlJQu41wd11tFvMLBpSDRL38tva0EhtnykzegMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nIBz4o6b; arc=none smtp.client-ip=209.85.214.176
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2c0c1e0d00bso23008865ad.0
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 09:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781453754; x=1782058554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c2wi3fuynWN++wbFE7He/JKQQu5s6vMv8+4f6t6QhDY=;
        b=nIBz4o6b+qsG2wR7FJT3hGhFf08NtsllNrGOSKgz/kmuKDQiJWBbrfaE/MD9ZjoGoL
         OIDzv+bShBfYySQXD291RGCdQWJylWrFCBrWmTw8Ta0XRC6wtXlGCXVARYZinmfUx/AA
         CVxg5bYmEVbWYU6CfIJ86j2+v1o7oBIdHnE+OgRJcC+AjBPMAmaMaxZLFQsT8EVB8zDa
         gOKj6fgTMJIZ1GgYPsC8KfMjjqnPinplG9V4aBb38CFXxQYKt/UOjpCLcXgxTIJ515cP
         4bMjCNZQFAD4uPx5NJPLpAhjKP8JDdsFWsmqZ1OZvV/xhfr7g8ip2fyh39gSiqxq++ri
         k6gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781453754; x=1782058554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c2wi3fuynWN++wbFE7He/JKQQu5s6vMv8+4f6t6QhDY=;
        b=q3jBuESI4KG4YoqZ+yS+zZ3sI4WHmfEkCcfT2JtG8LZlxvTjKQLj6Clu0/efvfEr20
         iresEudk/5euaaVisC4AVXBs/1ujm3ZGHmdPzAdMlvU8rQN5emdy2NMWIe2kj92CuiMp
         2PXgDildCvEQ6kHJ7p3bD8H9oHYhaVG5l030HMta+TI8cn8JMqEqSB+55184f3e+2E6e
         vbNYZACKOmlgfv29blDYp/atE0vJWHGHPc1kYV770r+Nq/DC1GNqKd6/yg+/8gC9oJ4O
         zUqaAlAHlWl2cmcr6kh8WmbpexbPIQg0K1dOWJjJ0orHHvDRHIr87quI45HF2reNe7Iv
         RlUg==
X-Gm-Message-State: AOJu0Yw75wz6KO3GwkdQFNdKJ/X99jsTlgSifHbcxrRG8uwECjwWcCAi
	R2xYLDkneBJCEznWoU2j1PKixpr0voKjJ3YChA6RFQ/uJkO7LHvNCeJJ
X-Gm-Gg: Acq92OHogGdJew/hy4kEyhOQWkC3JUaIGIpFDLQgVyKdtsmmVhKADahcmGaNZMquSF7
	vnrmdJ+yoXV/6kqWu1vsEgzoN0NfobwTrp83gsxITjDnq89i3pYAYTXEO1tfpzSf6Yt458oGnwr
	/dAVwtTM1grO1YXzyNxa6DydZXshx9DcAblcOkb508ubmHpaoM5SxwGH9gaB2qtKWCdIeeVelvQ
	crtNfoNR/LYU7Q96z74MVqPjbw3CqRNbvHIZgXm8wy8hYacW+YtFjM0A6vNsEblTxiPd+NpYlIU
	nOf5Z5z4GlppyFYRn4r6KRzQtgnT1lAD2Lo81NOpbZ9FFjNxZ06NxWPOtqHON5Xs6OVAf6sW3r1
	wH1nWeQdsCDJ3uXW6xS3emj/J8QWjJhE0kociu/EoxLMkHo4UyNK+kjsf6iZ1FTPYBdpPsr2E2p
	TQbhxDyjnzzQ6wJ/GqDg==
X-Received: by 2002:a17:903:1aad:b0:2c0:dd75:e834 with SMTP id d9443c01a7336-2c41050af58mr130859675ad.5.1781453754016;
        Sun, 14 Jun 2026 09:15:54 -0700 (PDT)
Received: from ubuntu.. ([110.9.142.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c866325d1d3sm6505293a12.11.2026.06.14.09.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 09:15:53 -0700 (PDT)
From: Sang-Heon Jeon <ekffu200098@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: devicetree@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-mips@vger.kernel.org,
	Sang-Heon Jeon <ekffu200098@gmail.com>
Subject: [PATCH 2/3] LoongArch: fix misleading elfcorehdr reservation success message
Date: Mon, 15 Jun 2026 01:15:02 +0900
Message-ID: <20260614161503.2219681-3-ekffu200098@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260614161503.2219681-1-ekffu200098@gmail.com>
References: <20260614161503.2219681-1-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-311459-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:saravanak@kernel.org,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:tsbogend@alpha.franken.de,m:devicetree@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-mips@vger.kernel.org,m:ekffu200098@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ekffu200098@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ekffu200098@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D81146817F9

arch_reserve_vmcore() does not check the return value of
memblock_reserve(), so a success message is falsely printed when the
reservation fails.

Check the return value and warn on failure instead.

Signed-off-by: Sang-Heon Jeon <ekffu200098@gmail.com>
---
 arch/loongarch/kernel/setup.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/loongarch/kernel/setup.c b/arch/loongarch/kernel/setup.c
index 839b23edee87..702fb3c2b3c9 100644
--- a/arch/loongarch/kernel/setup.c
+++ b/arch/loongarch/kernel/setup.c
@@ -255,7 +255,10 @@ static void __init arch_reserve_vmcore(void)
 		return;
 	}
 
-	memblock_reserve(elfcorehdr_addr, elfcorehdr_size);
+	if (memblock_reserve(elfcorehdr_addr, elfcorehdr_size)) {
+		pr_warn("Failed to reserve memory for elfcorehdr\n");
+		return;
+	}
 
 	pr_info("Reserving %llu KiB of memory at 0x%llx for elfcorehdr\n",
 		elfcorehdr_size >> 10, elfcorehdr_addr);
-- 
2.43.0


