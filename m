Return-Path: <devicetree+bounces-325228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OLtIHc6VVGqRnwMAu9opvQ
	(envelope-from <devicetree+bounces-325228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:37:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 761137483DF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:37:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="dGGEsD/S";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325228-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325228-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DBBCA300863E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D68383338;
	Mon, 13 Jul 2026 07:36:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7761D89EF
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 07:36:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783928196; cv=none; b=hdZXjMxHvCWeHL2qv5AmQsC3XHUBA6r0tGvbvj0Cj4YufN/7RFwIwqTdeIPZy9/D0Yvjm7RLXvlNVnxVA5Ojo2ZHxbiVZAWsppnUTYWLamYUIlfZ+AjwmAspTwIh6jeS6XM8DQ82dpMxGK7R2nu/k19aO5DlGNNG9fc4cJGWMcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783928196; c=relaxed/simple;
	bh=+xwh1bLsQTbStbbo2bW1BoxK6WTRt+1SRdIq3Cn6tLg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:From:To:
	 References:In-Reply-To; b=Z8rGVqAX0iIiKcwN9uVMrQrjGsUxCXEWVJOlU/eXKEM02O4EFt95x3D6yZTNLSz/MnMy/VIEBQgHMqxz2O6/9y/gtFLOfazsYJtSNdESvFyqvGV2Az8bQ8bmqWnfA7ecC3zrbrJSRlxUUwcYe9Oz7bhnll9TAmZQEiBC4G3w5Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dGGEsD/S; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 05A78C2BB0F
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 07:36:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E311560341;
	Mon, 13 Jul 2026 07:36:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5DBDA11BD05B6;
	Mon, 13 Jul 2026 09:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783928191; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xrtYLNpKgFt+k+yed+P/AI4r+fYgn9QYhB8AabFAesQ=;
	b=dGGEsD/STE+fwBKsByWSWBdV5cdo1K/rWN9MsNYVh9Nhga6tUGN6TzfUn8ReqgMzId/kho
	h9UPdCPBAih/AQm4fJ6ei6pJnbrQstAU5ApbxNe/hAkNrXTeRXlWqqU8FP1V8KM6Oo+UvI
	vVV83vnRhoJZstm5LEhXo8hK0UTO2q1T7JlTcmmGbw7R9wL+gVmzmsJdDPRy/uO8tvXX1O
	4beqSA3xN/r4QZGFrzQ+yrrPFz2iI1i1J9m5xVrCSpFvKOdLNzBQfjREjW6ULsiJDb9BUs
	ILS0O4kw4+tsmH4KKylZQ5EbBqANe0bSS2U96bryTt5U93BGmR5Zlq8bB/nFTA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 13 Jul 2026 09:36:29 +0200
Message-Id: <DJX9RKO8ROIP.1JOJVXZ11PANJ@bootlin.com>
Subject: Re: [PATCH 2/5] arm: dts: st: Import optee node from u-boot device
 trees
Cc: <imx@lists.linux.dev>, <robh@kernel.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <Frank.Li@kernel.org>
From: "Mathieu Dubois-Briand" <mathieu.dubois-briand@bootlin.com>
To: <sashiko-reviews@lists.linux.dev>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com> <20260710-mathieu-uboot-dts-import-v1-2-ffe0210e50c9@bootlin.com> <20260710153944.BFC9B1F000E9@smtp.kernel.org>
In-Reply-To: <20260710153944.BFC9B1F000E9@smtp.kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325228-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:sashiko-reviews@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:from_mime,bootlin.com:url,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 761137483DF

On Fri Jul 10, 2026 at 5:39 PM CEST, sashiko-bot wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [High] Missing `bootph-pre-ram` property in the newly added `optee@fe00=
0000` reserved memory node for `stm32mp157c-ed1.dts`, which will cause U-Bo=
ot to strip the reservation during SPL and pre-relocation, leading to memor=
y corruption.
> --
>
> --- Patch [2]: [PATCH 2/5] arm: dts: st: Import optee node from u-boot de=
vice trees ---
> commit e001824900768a597c1390aaf3fe0b9e2c46bdd1
> Author: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
>
> arm: dts: st: Import optee node from u-boot device trees
>
> U-Boot is importing kernel device trees for these platforms, but adding
> a firmware node to enable communication with OP-TEE. Importing
> changes here will allow to remove these additions in U-Boot.
>
> [ ... ]
>
>> diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts b/arch/arm/boot/dt=
s/st/stm32mp157c-ed1.dts
>> index 49dd555cc228c..7da7260350869 100644
>> --- a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
>> +++ b/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
>> @@ -70,6 +70,18 @@ retram: retram@38000000 {
>>  			reg =3D <0x38000000 0x10000>;
>>  			no-map;
>>  		};
>> +
>> +		optee@fe000000 {
>> +			reg =3D <0xfe000000 0x02000000>;
>> +			no-map;
>> +		};
>
> [Severity: High]
> Does this optee reserved memory node also need the bootph-pre-ram propert=
y
> like the one added for stm32mp157a-dk1.dts?
>
> Without the bootph-pre-ram property, U-Boot's fdtgrep utility strips the
> optee reserved-memory node from the SPL and pre-relocation device trees.
>
> Because U-Boot typically relocates itself to the top of available RAM (wh=
ich
> on this platform overlaps with 0xfe000000), omitting this reservation cou=
ld
> allow U-Boot to allocate over OP-TEE's secure memory region, potentially
> causing data corruption or TrustZone violations.

I'm a bit torn on this point.

So first, this commit only imports existing code, so I was not planning
to modify the device tree. But looking at the docs, and the
stm32mp157a-dk1.dts file, I suspect bootph-pre-ram is also needed here.

I will probably add a separate commit, adding bootph-pre-ram tag.

Thanks,
Mathieu

--=20
Mathieu Dubois-Briand, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


