Return-Path: <devicetree+bounces-324161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6Z0pCR8VUGohtAIAu9opvQ
	(envelope-from <devicetree+bounces-324161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 23:39:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF70A735DA8
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 23:39:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Z0TgKSYy;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324161-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324161-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37BF93031FFC
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 21:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A68A63C9437;
	Thu,  9 Jul 2026 21:39:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA8C3C3447
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 21:39:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783633178; cv=none; b=XyI69tlU+RoN8c0hisFm3OI+fXCpk+jC0C7TKXMX2dA+/gLAwfAQPObz6WHRAhXbGEA2FKz0jdfniWKOefs0BKeIAa7u0svi+/Ku/x7bPuGMkNo2vrzv6vDEtB2C7rnEnVzI+BS99y+tUygQKxDat/V/41vReQSf90/TbI7u4ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783633178; c=relaxed/simple;
	bh=6c0ztSh4kFWOBjUZgNEWgv99q/eec7gYqYrL0SYwUQs=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=it53/WIj1VxGKiz4g9w1XecBOuCJv32MRM4kHWadUHNxUoZstgzde1Gcu+2ZZSMywc15z4pxcwCgcT5mCHNlnBvoeTsQInhCw2koc7XFc9KtXR1GNE+aHBmVQnKoD750+EOZeeKK3009IWQsYeKiOVZ8POr3M0Fv7KYwfs0vJDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z0TgKSYy; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-493b1710405so1103615e9.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 14:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783633175; x=1784237975; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LAJw6K50J77FfVX7dMPJivwZzxZEyfJ1nEYKMIYAq4Y=;
        b=Z0TgKSYypL5Mq+EE4q3qhSuATvlPSpLxHeJgRop5eDPl0ppaae8vv3q/v533IUk5Tg
         BaDJr9GZOTjONPfVL+btjkTVAGjkJakS9XOEJ1xFiTatOQjN7iAsVKfiXR5ZkIzHN7ix
         CurNlr1O10wmooiKKzs6ucbN6wi4K2NctmIkYff6oaoKdJStADuEqWkELifM/anQ7kR4
         iXmY+A1wpusq0mUd79axVfpeJSTWRfy2CswnEBjEZf3bnpGpjGqmfA+DoDPStjL/lO4s
         141rFR9ABSr/evm71Zfj5XBxlAJytSdnIH65yH561VTgFdaOajxJMGEwynvH+gDxD12s
         7cgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783633175; x=1784237975;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LAJw6K50J77FfVX7dMPJivwZzxZEyfJ1nEYKMIYAq4Y=;
        b=pI0ov6ZXC3RUEK6zKudh07wdiPsljM49NP7aLVJvy+/Gk7FG3NW4/0GQzfJDAojKH3
         25193PvvuAbZKQcT6fIUFY8kY7msQ6GSHgkYtBY2c8FrxuEmp3X5OkybKnt9SHqP3Zdl
         XM6M7ZikfT17oeVb7QlskvvSqHEBW7R1u7vy8/eEfF0zwwHzT9xUoHAOW+ZZ8jITxIfb
         ORZ0nCueRpjnnV6+c1tPQvEg7SHIODbkCsTfqSPiCmE1UBRoV1jR0LcMO2i/l+Z5X3wX
         wUkCh7z+D+7idJ2On25Z7ml9qanrmdnBSugE09pfsAvH89mErOxNx4Z1yWZ6kVe0amU2
         vQpg==
X-Forwarded-Encrypted: i=1; AHgh+Rp27+FxRBg/ph7uwhCsVkCtP4C5gC7QiBvEJ2ymUYCE5/ZFdFqGTOTPLhLVQQDAG659nDMe2fGx5TGq@vger.kernel.org
X-Gm-Message-State: AOJu0YwBxvlU/nz7AcGAKD/4xD7WCLFXZtAMVUuI15mT9H3dWjG954Hr
	FHqBBePvH+Bal6OKxBLVv3rIDyj5KOipNWNVI4yo5bp7sR4FwnrvjiIzBgBazY9A
X-Gm-Gg: AfdE7cmLs9PzjnO6SUHxqP9Ut/FrUt8QJykmSM+WlUGxP9vZsG242RekaLQfQkim65E
	yljPJpqNahnLtlIJM06cEZIjp/K2poygDockVs7VPwlmsxgC6SPwLy3Wty46Nf1PL20xhIEr7K4
	n6L+udW70fAtkbvNz3GWtOOl94lwpjQn71V9Cn0WcHiS/ggImdNex8lfITGK5S86OhWH0Y0k3qG
	xWWMGgjPoaiQBlpzwFWBXpbZ3BOaknSdsl/7bLofAMg6hx+zzp3NfJ7fweLj2ynUkECvMxSeDSt
	kZ0vgZ/FOmG5+4iPzvfkDqkpJg2pm3HWNElKFhlSd77FbUrYSGs3nYzZVFREEpfTSZFSFd1L5m7
	NqaetLcftnX123ag/GNqCMDCivBwpleX2IQYbCLc5VshX7jvMYu28JwY4WZKpKEd3e2Xwyc0EAw
	v9v0i54YG1xweWJfAZWLAlrlBvGhBDG+cuX8qyYE0TIg0AE50N3G2sR7OjyJoZmy7ea7K0dSHm4
	Q==
X-Received: by 2002:a05:600c:6286:b0:493:e53a:8982 with SMTP id 5b1f17b1804b1-493e68643ebmr86643555e9.23.1783633175375;
        Thu, 09 Jul 2026 14:39:35 -0700 (PDT)
Received: from Ansuel-XPS. (host-95-248-227-210.retail.telecomitalia.it. [95.248.227.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb73b161sm79377825e9.9.2026.07.09.14.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 14:39:34 -0700 (PDT)
Message-ID: <6a501516.a1b3dc3f.1e550b.96ea@mx.google.com>
X-Google-Original-Message-ID: <alAVFHKwGQiTUNNr@Ansuel-XPS.>
Date: Thu, 9 Jul 2026 23:39:32 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Benjamin Larsson <benjamin.larsson@genexis.eu>,
	John Ogness <john.ogness@linutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Gerhard Engleder <eg@keba.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Binbin Zhou <zhoubinbin@loongson.cn>,
	Rong Zhang <rongrong@oss.cipunited.com>,
	Lukas Wunner <lukas@wunner.de>, Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH 2/4] serial: 8250: export serial8250_get_baud_rate()
References: <20260709205656.319531-1-ansuelsmth@gmail.com>
 <20260709205656.319531-3-ansuelsmth@gmail.com>
 <alAT4QMOi8U2ITho@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alAT4QMOi8U2ITho@ashevche-desk.local>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-324161-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:benjamin.larsson@genexis.eu,m:john.ogness@linutronix.de,m:m.felsch@pengutronix.de,m:eg@keba.com,m:jiaxun.yang@flygoat.com,m:rdunlap@infradead.org,m:zhoubinbin@loongson.cn,m:rongrong@oss.cipunited.com,m:lukas@wunner.de,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-serial@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mx.google.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF70A735DA8

On Fri, Jul 10, 2026 at 12:35:02AM +0300, Andy Shevchenko wrote:
> On Thu, Jul 09, 2026 at 10:56:50PM +0200, Christian Marangi wrote:
> > Some driver might need to access the current baud rate to correctly
> > configure it.
> > 
> > Export the serial8250_get_baud_rate() function to limit code duplication.
> 
> Why?
> 
> We have _get_divisor() / _set_divisor() for exactly that purpose, no?
> 

I can only see set and I'm not following how that helps with any driver
that needs to get the baud_rate?

-- 
	Ansuel

