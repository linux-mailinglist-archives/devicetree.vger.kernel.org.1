Return-Path: <devicetree+bounces-278676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oN9qLjqjv2kB7AMAu9opvQ
	(envelope-from <devicetree+bounces-278676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 09:07:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1662E8951
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 09:07:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDA193035D7A
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 08:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FD7A288C2D;
	Sun, 22 Mar 2026 08:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="Ybg+lF1L"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-209.mail.qq.com (out203-205-221-209.mail.qq.com [203.205.221.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9456832BF5D
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 08:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774166636; cv=none; b=aB5YnJsd1vU7N4OzHvHN6kxt9QAoajQ/6GZ3sZVf8W6mk5FZ8idVfYjq6sVfyKQyF26plz3gcXPRE3NQiTRqO8//w6toE+NSslmx5VmBSWC1DFpF6CH7Fq3vq5gnY2EoR4+IT4PI0RIV8j50HHsUxhrKxdNuDJfkY4l9Y2s7hzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774166636; c=relaxed/simple;
	bh=nOwKuHnP5b4pP5nKigCa6Jg66CWkpdBNDAgdUOPLqQA=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=ckWYNyNuipkh8NBfGa4ZQrArnOrtttZUeYSGhWovBV6pZF2S9CNcNOhgKtepGoiAb8IysrDJdk6NUOG39+qDozNTjZTCjPLP4JT2cW0xWIU9wziNdVAh8NqL5a8Oo7YnaUDCXmgXExod5HbBZBuJiJmisK0ibrPAxPDWNMMOmok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=Ybg+lF1L; arc=none smtp.client-ip=203.205.221.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774166624; bh=r/KYBO4Obj4K4oCVTFttAiIPYsDg4+nomEeK0QfxJNc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Ybg+lF1LnFvyfQnXiH9sUcUlxvdMp/kH+CBnuzEepa/y/+Q7rN0gsQTJFGktiA+q1
	 fwRL0okFHexDFIh/hFICUR+BLhuBI2VzwstZlaeFlYvPuOU1ctuWjj6Z7nNsEf7zKP
	 vQnaFY1zP2wAN6ep68hp9W+pe1ie8CobDWg++mxg=
Received: from MYJGMC.tail4697e5.ts.net ([122.195.139.226])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id E78F8E1; Sun, 22 Mar 2026 16:03:39 +0800
X-QQ-mid: xmsmtpt1774166621ts9jpklb5
Message-ID: <tencent_09D5E459F58BDE54BD6998D7FC346A403407@qq.com>
X-QQ-XMAILINFO: MRMtjO3A6C9XDfIWje85BK8Q+de2FpNXINhB69YaDAoZPoI5pMI4cX3eAEkyT3
	 H9NIKPITVTPNABqNzpI4VeLEWMNwFGkoEsAscyRYOJOMWUIKYo8/UOTVBD37YADa1e8WRbKuefFX
	 rFJ6o4qE2Yz876isNyMZagtvcG79r7+ib6hqee/kqjgjr9WOEBEGKNGiUzuhTm+Dsnv2r0Nnd3pf
	 fpsp1bJ/eFfovmlkwcL6w//MryIw5BMJwopI2r/7APfmsOvbAEO9R97TmEf9oB77IKkHoEaauzIx
	 Aw+rxpjRir0IaiE3acYu5ZSps8GV5rRcsUkbUAFvvKesp13X5sgANoVjE/Vgyy7yja3D6XHM23et
	 tbNeosGsS9Cu5XMVgTAIloYEL/5Ki/EKXAINJJZFVTk2jeAi7ybcjuzAkxlcSLwdM/IOqAETy8oU
	 VLPXv4i649j6e/JIgWK8cCAlsrtLta1KPdQlXehE/1oHXDkTqLPjSmmshQC9QlpCsYOK4SQejW9y
	 6g6YuuSGzuLb+8h0OEOBOk1m+P6fxh8JeF0fj/395bIK7DM44GPQX5laJylV/A+jF8HK/MI4MD1a
	 9RiOODDhAbDSXJx8PTeSQIaCW7Zn4KWeN7FSuouk8+w46GaGRf98ZmDl9Vd3m8pKvtrpHLgYDfPG
	 Uzy16hX8wH/GxejsjJjvmnqkdQjXarewMto4qyatdVPoy0jZqmGJkTzaoQ5g45V36BZZNd5xCmd2
	 vX7RuRT3ks8oRBkfdSwn9hNO9p08KGszgv8JBBEhPFOGxSwQjHuyhhRjQjxrlhDK9O86K3DevD8N
	 GgdrNDRWrYk5g2yENHmKAScZ3VzLClZ1oZZdCGMI1hjJ2EP0qE2NdjhFS11CXB5PckE9gdDl4/em
	 36/7GFEvxw+O0mBRbJn22JW7Nt+BWS5LNAaGhxbqjtCYiLisag28m7JGW174Zjep+25HYpmT5yf7
	 xC0DMqindIG+CR1sXGZ9+67et6AtJ8xhJ90q5Iyar9KykqZ+0lhMqiDjuEprg22mCCZFGLqRao3G
	 zwLmw/Pj6ZfFbRFL7Ia0FFc6NT4dR89hw3wDSW6nL9eGwM005ivsp2vbMYiBs=
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
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
	wjjsn <2858482031@qq.com>,
	wjjsn <wjjsn@qq.com>
Subject: [PATCH 1/2] dt-bindings: clock: loongson,ls2k: add ls2k1000 compatible
Date: Sun, 22 Mar 2026 16:03:26 +0800
X-OQ-MSGID: <20260322080327.1606799-2-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260322080327.1606799-1-wjjsn@qq.com>
References: <20260322080327.1606799-1-wjjsn@qq.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278676-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[qq.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,xen0n.name,qq.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qq.com:dkim,qq.com:email,qq.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D1662E8951
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: wjjsn <2858482031@qq.com>

Add a SoC-specific "loongson,ls2k1000-clk" compatible.
Retain the existing "loongson,ls2k-clk" as a deprecated fallback
for backward compatibility.

Signed-off-by: wjjsn <wjjsn@qq.com>
---
 .../devicetree/bindings/clock/loongson,ls2k-clk.yaml        | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml b/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
index c07ad1f85857..4d70bc4e7a13 100644
--- a/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
@@ -13,12 +13,16 @@ description: |
   Loongson-2 SoC clock control module is an integrated clock controller, which
   generates and supplies to all modules.
 
+  The "loongson,ls2k1000-clk" string should be used for Loongson-2K1000.
+  The "loongson,ls2k-clk" string is kept as a fallback for backward compatibility for Loongson-2K1000.
+
 properties:
   compatible:
     enum:
       - loongson,ls2k0300-clk
       - loongson,ls2k0500-clk
-      - loongson,ls2k-clk  # This is for Loongson-2K1000
+      - loongson,ls2k-clk
+      - loongson,ls2k1000-clk
       - loongson,ls2k2000-clk
 
   reg:
-- 
2.43.0


