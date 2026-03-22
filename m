Return-Path: <devicetree+bounces-278677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RlmXFzymv2nY7AMAu9opvQ
	(envelope-from <devicetree+bounces-278677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 09:20:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 904972E898A
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 09:20:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03ED430087BE
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 08:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 618912701CF;
	Sun, 22 Mar 2026 08:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="n+YO8Xwa"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-155.mail.qq.com (out203-205-221-155.mail.qq.com [203.205.221.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9C1238C0A
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 08:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774167609; cv=none; b=Zn0BGhn4eGQdnuzFZRBqWlyhPPD5sAC6TGg7m5Dg3BkGCQ9lZLm6YU2yHsdnpKj4SpOgWZtq/l0fExmdnhPdS9Pa/dyLDnbSG+To0ZgJrO1RXvSfxu+eNRHRPzeZlccFGio1dHnoyKXvwLEglkwDNOqXktwf9VZJ9pQx7H6KI24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774167609; c=relaxed/simple;
	bh=DA/JD6zz2kNjdIT4XwCDtcQAuO6OX7Jips84FZy7tLk=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=FLEM8Z6dI90UqqLZRdyaci2fZgzPh5Z0SCHYMXQCHFS2t+e/9Mlwky+aE5lKeodgeFqkcdFBmag2wx+dRtQ9Zodo36qYurKJInHJo/w6rHlLU6rNa5m80k7EiK9yn9+B4YNXntv5LYotIbXvq9zzvJzvkQHcnp55QZR5P5gPRkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=n+YO8Xwa; arc=none smtp.client-ip=203.205.221.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774167603; bh=n55yWK1Schao3JnG7277KpB/5AihrSuLemaDN1vfRNg=;
	h=From:To:Cc:Subject:Date;
	b=n+YO8XwaNF3T6q+DkBilJXpdXTlqosWSBPDKeaGxvRXj89jSjl/U0SsVjWSX9FKfX
	 OIrjyjYL73AiknQTgbVImizjoFQ1HBqydRN1s4yV7FRgh8n53MeSF1QWb6e4HGlDJm
	 9uXxpiq98SZJjT9PhabGiv3WV72GPNrVNx526fZM=
Received: from MYJGMC.tail4697e5.ts.net ([122.195.139.226])
	by newxmesmtplogicsvrszc50-0.qq.com (NewEsmtp) with SMTP
	id 500854EA; Sun, 22 Mar 2026 16:20:00 +0800
X-QQ-mid: xmsmtpt1774167600t0cvhcqrz
Message-ID: <tencent_58AAF3ACDEC5402AD6B4CBEB501A10609906@qq.com>
X-QQ-XMAILINFO: MDbayGdXPuoe+YP23izIm8w9gAqPvrjwySsi6Wcp+7EkflnG2j5Q1lA8UvXeuL
	 j/p3CRrShYaCcyOXZxKPEeLYrbsJPZfnjRxZLQl69r6ZjhlUbrSlmz/zIpyj3h9uxdKceVJ6UUUw
	 ZrzOfTu7vls3QsVxtI1Z8bBPk+dRWfBXGno91vHYf/F7DpW9uy+GRi63gMQHIObwcedQzbUnN0iR
	 idgSZE8QgwLJFzlVHV+hZt6+Umc1Y2Llmmd1qoGlxlsmovvH8OR+ciV5L6FHSRoz7VNyDk3JMpLp
	 v6mR+OxlBqcRR6Fv3sII9e2jPA9T0ETHdWwIwj6kbizEeqmi/sJtaPnQsjCOtAjEPqg8y5oXQ7rq
	 ZHxAdNcAorlaWRv5sxyoZYH9r8eNZX6BSZUrD22YXxBErW5MgVdNGHmC8HAR2V9INxoHRObhdzj1
	 yI7sAllX3GnGYSiI0ym0BXwRvq9t+FpHRzSzwAhLmj/LpQSpG6HZrzpZ1Bm7+5gFYg+W28vlmW/F
	 iR8evfb73MKKZYCn1qIxAlpzqpPC2nZ3dctWSGmQcvB0ucxrg36BvVORwu6H8tAuyoAXJCZ8cv8P
	 jg+mFv4ZWLGyuTvp7KPtYEb6QYoJKjqgXTLTJtn4waM7uL6xPFfspDyPXt1+keIsHJ/BWsfCX5/3
	 Yg/o0BSWd6pinfhQwAMCKmArp8PER1rJxyKf4HZLupm04axI8EjUT4cPNUfU5MnFhvGSxn3d9bqs
	 bSyKWzq33/JBBsDwkE0BAigqv4CJWG3ZZUVYWrT+gOS7rC7Os4U+Ks3Fd/uDqnbrXWSmCfTcsO2U
	 N6k5CRmGKMylwrz3z/09BZZoq7yy/4c+DEOU4iUPAGMY2bMJ9Z2f1z2QGc9nhut9YCoivGROatvD
	 gZRL1C+wBNQiNG8ChfRGMtoD0e8OdsX61hPWtbKaJJZkSYg38XkEW70pLy/cwgBxQE9+CEhBchVo
	 3XfJFD+bjWK0/xHoJk4PXu7/2DmSKDRmddfz3PuAnoIIe/RbaapTLKqamNB5Yo9HXIx3SmSUZ0Rw
	 FTi8pWEOasct3yjFrl/i4FBKiBLZ3ieItVZnU06k0hWTSDsn1Onoech2A3grereo3pB1iG6w==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: wjjsn <wjjsn@qq.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chenhuacai@kernel.org,
	zhuyinbo@loongson.cn,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev,
	kernel@xen0n.name,
	devicetree@vger.kernel.org,
	wjjsn <wjjsn@qq.com>
Subject: [PATCH v2 0/2] loongson2 clk: introduce ls2k1000 specific compatible
Date: Sun, 22 Mar 2026 16:19:13 +0800
X-OQ-MSGID: <20260322081915.1626723-1-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278677-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[qq.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,xen0n.name,qq.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 904972E898A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Changes in v2:
- Consistently use wjjsn <wjjsn@qq.com> for both Author and Signed-off-by fields.

The "loongson,ls2k-clk" compatible is currently used for the
Loongson-2K1000 clock controller, despite being generic.

This series introduces a SoC-specific compatible
"loongson,ls2k1000-clk" to make the binding more precise and
consistent with other Loongson-2 variants.

The existing "loongson,ls2k-clk" is retained as a deprecated
fallback for backward compatibility.

Patch 1 updates the devicetree binding documentation.
Patch 2 adds driver support and updates the DTS.

wjjsn (2):
  dt-bindings: clock: loongson,ls2k: add ls2k1000 compatible
  clk: loongson2: add support for ls2k1000 compatible

 .../devicetree/bindings/clock/loongson,ls2k-clk.yaml        | 6 +++++-
 arch/loongarch/boot/dts/loongson-2k1000.dtsi                | 2 +-
 drivers/clk/clk-loongson2.c                                 | 1 +
 3 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.43.0


