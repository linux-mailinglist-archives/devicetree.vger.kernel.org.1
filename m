Return-Path: <devicetree+bounces-316175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rQtGH5a0PmoPKgkAu9opvQ
	(envelope-from <devicetree+bounces-316175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 19:19:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E68D16CF624
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 19:19:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=thingy.jp header.s=google header.b="hV/Wga3s";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316175-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316175-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F38C0302A73F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829C2400E13;
	Fri, 26 Jun 2026 17:19:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A573FF1B4
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 17:19:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782494356; cv=none; b=LJ0Nk4qtCiy+SeqROWXAuc5FGsOaXgdv1hBNV5F3s6qTwBqQGBWW95p7BM0Q6dYNno0xT/SNA5fQiowktuIWRC8B3afozx2Jg3FB04N0cRUfhBbrF4qJDqVdzEB6LJUeKKLg6adjQp7H/5Cq4TS4SFo0MNvMdjd53ftmg7xbVtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782494356; c=relaxed/simple;
	bh=3aABxfZjwPbwWAsfsEA/qp5SSfcm6coranTY8T5RBF0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jXA53jmbZLWgbikVefdZfqVQLjMsmPv21cEwtOvFHKh7r6u5sXlbHQrXHsWXyV0snFwgVn/S8gn1KHhEbtf33qr4MIxs8cM4lLjdLO45N2JSJnsPda4YwGSsrw6vea1cdLQ8JAfgAfhei69amH95+Rce0OWPt2U8UDLd+xflars=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=hV/Wga3s; arc=none smtp.client-ip=209.85.216.53
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-37deb2d3a82so835621a91.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 10:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1782494354; x=1783099154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xiiDvd959ovVaR99oOiki3BN9mLVr4HpP6VpAJZu/nc=;
        b=hV/Wga3sRusxo7h4tiS+4tM0hr2CyKQMAfzsCTMGTQS1inkbgap1xBI8/g/wunoCFR
         MuJOK2yiNg/abJXOT2OGFM/LqHDZvGwBYevWjT7uBlcO9QNsNDCMkGmEuVImXTwUvd53
         oqc4kKTiQSAnNvQoWmH8mpKeFxHvLHArE3IFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782494354; x=1783099154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiiDvd959ovVaR99oOiki3BN9mLVr4HpP6VpAJZu/nc=;
        b=PqIIQi+bSuKvNIxVPlPzhyRV34Ax9KFEXSbEr1UVCnFHCjF9KHFuSl9JXnx+Cb+C2o
         l3Lx/AphiQdeyjeOxCHnL57sgqiHaLrTvuvaWikYgfBPGqzrAkFJ+CjOIrqkYf+Ygskw
         z/2TCq2pERrckaOtdRBf85YJ/PgA7VKMavHjZAhsBE0vAQyvbGEFC7B9p2SIatl19O/o
         M1cWAykjO7VwLJRf/eNAxmddFdnz+upmBaAZd7/RjLEjyDy4/c6rZcmf5B1ETHWr5w7k
         6KzGdbxJNOJ+rToMZZzSjOQlB0wFTrOnmMm3NiKBAS/RCHU0ysTS2264Cw4vv2qiSaDf
         FsAA==
X-Gm-Message-State: AOJu0Yyy0FIIKSp9JU/2yS00+PbppUGHJlQLv/V5RDzpohuLnUEn/gYQ
	fCxxFbsqaMmLpIxTvBq+h3odnfSF9ulPwss+FJVdUqA7C6LSa0hoQAc8FiQrZAj/u2s=
X-Gm-Gg: AfdE7cml9G10a3eLu5vcYRhMGq1lqw2bwGLCstcT8IFAt4UYArE2hWEx82vlwQfyXds
	pd6jt2XayxFJG3RhatjGFBR8XBEVDT1NKjpNAon84aWGyYgXFM0LWF2cISPUvToqriK/Rqw8JJM
	L+arH6Y8meua88S31WU45g3GKzSoX1Ch2+uIYUf2jupXhv/ptzxr2goj5KMLpvge4DnCGY0T2aF
	b3vZdYyB5k7YI01K9vcH1Oc+Reh9Y5ZtK2/gDpC+UgnyTtB+lyZBOpAoZrkV7YfXQC5UtHw5iD2
	jelUXgTl3CM7zebEQ3P9rXxNTgAGdOqmeWube973a/tCJphragSHwRWTLT1GLN21B8youmzx8w+
	tRQ5N1nH72j/FPb+/WDUDaPr30MZtEbJ0ECKby3h90fgoXq+6Tm1PPgv1FgYirqz0i3fgBRKfFg
	piEoYtXuiJkIYZFEWjD29Ijt74aGDJ6kv0k9vhA+aIh+J3ukZNydGZxp5+jng7MGz0+62tyMTYn
	MI=
X-Received: by 2002:a17:902:f60c:b0:2c2:cf20:213 with SMTP id d9443c01a7336-2c7fc9e00b8mr71975725ad.29.1782494353670;
        Fri, 26 Jun 2026 10:19:13 -0700 (PDT)
Received: from kinako.work.home.arpa (p1641013-ipxg00d01sizuokaden.shizuoka.ocn.ne.jp. [122.29.157.13])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2c7f5af8a07sm43355425ad.25.2026.06.26.10.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 10:19:13 -0700 (PDT)
From: Daniel Palmer <daniel@thingy.jp>
To: robh@kernel.org,
	saravanak@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@thingy.jp>
Subject: [PATCH] of/address: Drop ISA parts when !CONFIG_ISA
Date: Sat, 27 Jun 2026 02:19:06 +0900
Message-ID: <20260626171906.476688-1-daniel@thingy.jp>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[thingy.jp:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:saravanak@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@thingy.jp,s:lists@lfdr.de];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TAGGED_FROM(0.00)[bounces-316175-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[thingy.jp];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thingy.jp:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,thingy.jp:dkim,thingy.jp:email,thingy.jp:mid,thingy.jp:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E68D16CF624

The PCI parts are already wrapped in #ifdef CONFIG_PCI
so it seems sensible to add #ifdef CONFIG_ISA around the ISA
parts.

This reduces the code/data size a bit on configs with !CONFIG_ISA.

Signed-off-by: Daniel Palmer <daniel@thingy.jp>
---

Sorry for the spam, somehow I botched sending a patch..

I thought about making this RFC as I'm a bit unsure if machines
that need this ISA stuff actually select CONFIG_ISA or not.

The only in-kernel devicetrees that seem to use this are 4 old powerpc
ones and I couldn't work out if those boards do end up with CONFIG_ISA.

But then again it seems odd for everyone to get this code for 4 old
boards.

 drivers/of/address.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index cf4aab11e9b1..9b2f0d462fb5 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -277,6 +277,7 @@ int of_range_to_resource(struct device_node *np, int index, struct resource *res
 }
 EXPORT_SYMBOL(of_range_to_resource);
 
+#ifdef CONFIG_ISA
 /*
  * ISA bus specific translator
  */
@@ -316,6 +317,7 @@ static unsigned int of_bus_isa_get_flags(const __be32 *addr)
 		flags |= IORESOURCE_MEM;
 	return flags;
 }
+#endif
 
 static int of_bus_default_flags_match(struct device_node *np)
 {
@@ -349,6 +351,7 @@ static const struct of_bus of_busses[] = {
 		.get_flags = of_bus_pci_get_flags,
 	},
 #endif /* CONFIG_PCI */
+#ifdef CONFIG_ISA
 	/* ISA */
 	{
 		.name = "isa",
@@ -360,6 +363,7 @@ static const struct of_bus of_busses[] = {
 		.flag_cells = 1,
 		.get_flags = of_bus_isa_get_flags,
 	},
+#endif /* CONFIG_ISA */
 	/* Default with flags cell */
 	{
 		.name = "default-flags",
-- 
2.53.0


