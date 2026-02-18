Return-Path: <devicetree+bounces-266393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAzQFHChlWlcSwIAu9opvQ
	(envelope-from <devicetree+bounces-266393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:24:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0029155DF5
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B43DB3019171
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D0E30B512;
	Wed, 18 Feb 2026 11:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="RaPraqdE"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C5D302140;
	Wed, 18 Feb 2026 11:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771413868; cv=none; b=Y7Df+Q2AXFhL0hhCvAoNNyWeqSkpgyKzWc08Z7YLnny2RJVHgXynu5s07RGlm/pYJrCxkT961XMZnq1MGpRRL1NSTL6PHyqPmaaclXd8gViSubwpgbbpx9g9rf+/9dVL6xL8IYRv/utg2XXxR7u5kjSOJeojqvVhPCc+nIrK+uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771413868; c=relaxed/simple;
	bh=WL16A14IHJFls09t6846X750Ko4v7i2RpOSf0P0jIxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=Ps7egDWbph2yeuSLB29ZBSt89QyJiaVrx5t8Os0HJuPdQH2/mbWTKtWP8E0Tjdy1LOi4/G5PrV4ju5Gzv781pv6RZGZF07o0lq/tRI+ZUH9VDeTICbEqHAm8QR+UnhZ6mJ2hhEcULSolZGDjp+eF3C6Y2/mfLexbz2RPNsdqdDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=RaPraqdE; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Date: Wed, 18 Feb 2026 11:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1771413854;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BEknqRay9cLst5+GJTiimtPKgqbaOAo4KgPgHKVMPt8=;
	b=RaPraqdEBp6UPnaqoDyevHruMq95QSv53angpGggoOK+NLRbpW/jmUnTZ1bK91Uetwzwlv
	8ZEgDt1wq7CPBSLFiujoBN5uhZcKE5+LMq9pw2Oul5AotTuv8vNh2c3GYNtEXWu01BuLuJ
	osYkb6S0f+Cv/agd6nNDDdJda4KLgZ5YeJLJHOf6YeZHnvKyF4Kpr6dyx3FBaj3G19Y89f
	gJPfywKJGtCujFS0TrBHv2L4FqSReG5k/Z647wGZvZiOFDpLmNRyM1XLPb1CNm4DQ+2BYh
	Jn94sPZblRRGSdUYUNAPWPuKP3vZn5us5B0QqazGPL3mT+o53wnPDCff56QVyA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: linux-amlogic@lists.infradead.org, Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: Ronald Claveau <linux-kernel-dev@aliel.fr>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/7] dt-bindings: clk: meson: Add Amlogic T7 sys pll support
References: <20260218101709.35450-1-linux-kernel-dev@aliel.fr> <20260218110127.36394-1-linux-kernel-dev@aliel.fr>
In-Reply-To: <20260218110127.36394-1-linux-kernel-dev@aliel.fr>
Message-ID: <tanjoa.3m1sr95zhvsal@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8; format=flowed
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266393-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funderscore@postmarketos.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:url,infradead.org:email,postmarketos.org:mid,postmarketos.org:dkim,aliel.fr:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0029155DF5
X-Rspamd-Action: no action

Hi,

On Wed, 18 Feb 2026 11:01, Ronald Claveau <linux-kernel-dev@aliel.fr> wrote:
>Add SYS PLL for the clock controller of the Amlogic T7 SoC family.

Your commit description is almost the same on every patch in the series.
Probably having a more specific description per commit would be much more
useful, for reviewers to better understand your commit.

There are documentation pages on how to write informative commit messages
at [1] and [2], but in summary, your description should talk about *what*
is being done and (provided that makes sense), *why*.

You also have multiple commits with the exact same commit message
("dt-bindings: clk: meson: Add Amlogic T7 sys pll support"), did you
mean to squash them all into one? (You can do so with `git rebase -i`.)

It probably also would make sense to add a cover letter, which would describe
overall what you goal is with this patch series, and on a high level
(doesn't have to be too detailled, because you'd describe these in more
detail in the respective commit messages themselves) what each patch does.
This once again helps people reviewing your code to understand what problem
you're trying to solve.

[1]: https://docs.kernel.org/process/submitting-patches.html#explanation-body
[2]: https://docs.kernel.org/process/submitting-patches.html#describe-your-changes

Best regards,
Ferass

[PS: sorry if this email was sent twice, my email client did something
     strange]

>
>Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
>---
> include/dt-bindings/clock/amlogic,t7-peripherals-clkc.h | 7 +++++++
> 1 file changed, 7 insertions(+)
>
>diff --git a/include/dt-bindings/clock/amlogic,t7-peripherals-clkc.h b/include/dt-bindings/clock/amlogic,t7-peripherals-clkc.h
>index 32c4b62037de..0cda8edfa7cd 100644
>--- a/include/dt-bindings/clock/amlogic,t7-peripherals-clkc.h
>+++ b/include/dt-bindings/clock/amlogic,t7-peripherals-clkc.h
>@@ -224,5 +224,12 @@
> #define CLKID_SYS_PWM_AO_CD		215
> #define CLKID_SYS_PWM_AO_EF		216
> #define CLKID_SYS_PWM_AO_GH		217
>+#define CLKID_SYS_A_SEL			218
>+#define CLKID_SYS_A_DIV			219
>+#define CLKID_SYS_A			220
>+#define CLKID_SYS_B_SEL			221
>+#define CLKID_SYS_B_DIV			222
>+#define CLKID_SYS_B			223
>+#define CLKID_SYS			224
> 
> #endif /* __T7_PERIPHERALS_CLKC_H */
>-- 
>2.49.0
>
>
>_______________________________________________
>linux-amlogic mailing list
>linux-amlogic@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-amlogic

