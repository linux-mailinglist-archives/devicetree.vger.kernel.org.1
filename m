Return-Path: <devicetree+bounces-317765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IK/eC6K9Q2rwgAoAu9opvQ
	(envelope-from <devicetree+bounces-317765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:59:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D2F6E488A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:59:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="YO/h45wt";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317765-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317765-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C9961313D453
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E97411670;
	Tue, 30 Jun 2026 12:53:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9F341166B;
	Tue, 30 Jun 2026 12:53:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823991; cv=none; b=OUer+Lsw1mCuEr4fr2s0Bkazu10RmREJizOEj7rxkdWzOPOC0quVTG9TMKe6jgRZlO4KrPHlTD3fyO8P3zdOA+kGq1MP82V6P02DVKtokF4y9WhlPvo9XqdJv2mUTHJyAWK4akLdVFWZA0+4W9gOahAK3EtNvw4Og7VizBn26Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823991; c=relaxed/simple;
	bh=XMiN38N4l1GKuA3oH+IceEp2UCiSbmc05XA4hS08xG4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TRPw230/P3OvYRvEuSW5IuhzwJ/R7Ljb1Se+I/OmfsQ3bAY/bx0d/D4tJGwGyzbsKZuwBNsyfwfaUf/myJU1lnXbbvH2y17WDHVEYBHxHIKLt2W3wthVfs4r//6XiPFDvGNfT+Bkl8Fj8SJV1fZlKrWoJRxGCik6MVDFGQW/7jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YO/h45wt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C00661F00A3A;
	Tue, 30 Jun 2026 12:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823990;
	bh=zSDUv/9yLR9+lZ3l0mtMacfbiplXsS7ffrFPYpci2EM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=YO/h45wtuYjEZZcjkTL1aS4myAguYEH3YLZMkglG7ilQlpUa06vEWiCibUUxOX3qg
	 utSbYKNOM2Q1i4F75erYbl4htw8dCbFlgvEiZgYsXOE2pD8+izrb1nXqmvwD+5/Tyu
	 W+468db/Kk+HXQsOlowY5yiw8zVaejpSrkc2e5uHVX33PkVpCyus04nF/6wUQ7JmtR
	 WuglVXZXMaKq6BAfGK4jundsLelxJ1g5Hhh6NxlOt1vLJr374ybj2y99iazHhpZlQ+
	 LdxW6wjohgf4wWvDoXGEeGRYDMv1KugBYcf7BxJAep8vcA6rLzX698Osmb7uR8W6/4
	 Wyyqumx9eqYTw==
From: Yixun Lan <dlan@kernel.org>
Date: Tue, 30 Jun 2026 12:52:45 +0000
Subject: [PATCH 1/3] clk: spacemit: k3: fix parent clock of UFS aclk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-06-clk-ufs-support-v1-1-cf7521d1d0fe@kernel.org>
References: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
In-Reply-To: <20260630-06-clk-ufs-support-v1-0-cf7521d1d0fe@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1258; i=dlan@kernel.org;
 h=from:subject:message-id; bh=XMiN38N4l1GKuA3oH+IceEp2UCiSbmc05XA4hS08xG4=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBqQ7wmFkM6hVf1aW3TaQClkUfJeNeSPeZ5ecnAq
 4iGGIZHhXiJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCakO8JhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+3MRg//UMQkqelwKy48WXQqxWyi+KVP1VWrMCqZaxH5/ypEOnMXdyXVE4Iaw
 wsIyhfXzAurTiAScWd7Db17+kqT5bCWmFUeKL2W7RKX6L2vlIY21VeLg5d46jTH4eSfiFLK+lv0
 rRs3RjVzEX3MAah2rpKCyjMpM/1HIVj4SrlLi3GQGMP6N7HXjSsQ44sVScvGrWxDb7l+jXcmDKc
 oRcjZ8mQnBd2gyR5umRGDgW0XgZyVa4QyWJXTFTHrWK6RbpzVJkfSHkA52uwVkbNkazT6iV0gqS
 LFGJGULy4fd153PjCMeEBlVS+iXNJWY4Xk4iWPx16WO9crHhL0Pz8RSABfADPVlq6qakpWz3FW6
 ddqXh3THcBnp2j2p7viBj7xy/V+NYDiJ1i++r3OWwKnSN9ZMAAJU8B4CkQqXigcZ8K2cL9ikZZK
 wELjPBUgxmcujY0M4SemwJAuSpn7zDeIbcdSGGZc5BinFnYYqPG+qyaIulaz2Sul8MwFuc41Zce
 OkE15JI7Bs2nSMr0b9tCDoGuhgUktRxISU2SrXFGYlXIpxiR1m215FhTeqTbuhfODUYhDHoVPmg
 OVp8nFRhTYcJ+rZ+EYXTnY8pzVH3DTAB+cG5DOLfZ3InRVKVqS9nutT9duOarvNzi8gpRTXhDRd
 qh4+NEnjAWajsCOQ/6pinuLUjwzA6c=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317765-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:dlan@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93D2F6E488A

According to SpacemiT updated clock docs, the previous UFS aclk parent
clock was wrong, the correct one is illustrated below, so fix it.

  --> pll1_d5_491p52 --\
  --> pll1_d6_409p6  --|
  --> pll2_d6        --|--> div --> gate --> ufs_aclk
  --> pll2_d5        --/

Fixes: e371a77255b8 ("clk: spacemit: k3: add the clock tree")
Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 drivers/clk/spacemit/ccu-k3.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k3.c b/drivers/clk/spacemit/ccu-k3.c
index cb0c4277f72a..42293a38b098 100644
--- a/drivers/clk/spacemit/ccu-k3.c
+++ b/drivers/clk/spacemit/ccu-k3.c
@@ -926,11 +926,10 @@ CCU_MUX_DIV_GATE_FC_DEFINE(dpu_aclk, dpu_aclk_parents, APMU_LCD_CLK_RES_CTRL5, 1
 			   20, 3, BIT(16), 0);
 
 static const struct clk_parent_data ufs_aclk_parents[] = {
-	CCU_PARENT_HW(pll1_d6_409p6),
 	CCU_PARENT_HW(pll1_d5_491p52),
-	CCU_PARENT_HW(pll1_d4_614p4),
-	CCU_PARENT_HW(pll1_d8_307p2),
-	CCU_PARENT_HW(pll2_d4),
+	CCU_PARENT_HW(pll1_d6_409p6),
+	CCU_PARENT_HW(pll2_d6),
+	CCU_PARENT_HW(pll2_d5),
 };
 CCU_MUX_DIV_GATE_FC_DEFINE(ufs_aclk, ufs_aclk_parents, APMU_UFS_CLK_RES_CTRL, 5, 3, BIT(8),
 			   2, 3, BIT(1), 0);

-- 
2.54.0


