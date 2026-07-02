Return-Path: <devicetree+bounces-319599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ofIoE2/CRmq7dAsAu9opvQ
	(envelope-from <devicetree+bounces-319599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:56:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 934556FCA09
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:56:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lxSHss0j;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319599-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319599-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F4BB30A5E90
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD4BA38E8A7;
	Thu,  2 Jul 2026 19:54:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EB07081A;
	Thu,  2 Jul 2026 19:54:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783022060; cv=none; b=far94BGKktW1R7/z5BVKE1Zjvc3LWSzjL2sx5cbmfdjQE988LWgDpYZk8GPvs3g5LvsQAqpQdWxFGp0WTcal1A/icJVj46CeObHxqFICqLViMj7GocZO5eJHkzP+MLIrcd33PktZ6kFWUT2LDQBAuWvjpd8AF76N2PgpTjvvEp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783022060; c=relaxed/simple;
	bh=JQfT8Icw5w54ABLKdE1dXOZcXE41G1Sd5gK7yIzdTbw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uVMhM6OcArDxhyIXUPpH9llQe4ZRFpFWEQwtfkufbkW2/u82aAFrYL3JwRlz5YFcc/+3m+F7v7/fvdAd2lls20ECclp9GTs6Cgl4EbRANmAXVPTUGP5Qs881sw2thc2/mo3+e6AO8AW+93oh5y42VdD0+duRa0kxIjUaa2uxpQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxSHss0j; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC431F000E9;
	Thu,  2 Jul 2026 19:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783022059;
	bh=H5F4SqLSzXJmEFBlCC95grIlZ95ePwaUrWR6lWfF8+0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=lxSHss0jvK733v7BcM65Sx1MTW6AMDnyfsKr8aUmdVyraJinGJwuu9LxqTIuIjTch
	 53aM7s/8DC4UG2yPyIiEWJgCYHJqcHF/oILB5+udDsK6hEh16L2CXQggyUbf/cfaCX
	 byO7sJKOq6RcgaMHHAOtbQCIo6f/YbGyMfyhyR7J8QeGco0JoC23f7XDbtWD+IW6aq
	 75XQn2YmirE3ToiqMt7mmw2PHlwAnyZRIx4Tmsh4UvZjxm6z6XxuPu0bV1svRH61cJ
	 g1Bvgm6gFRGpIlxQjWlf4PAy9ORUsrayYN7JKByWKmPT9JHA7jPHsbQrBE9QMyJWHK
	 fcuqAp46QwCew==
Date: Thu, 2 Jul 2026 20:54:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Petar Stepanovic <pstepanovic@axiado.com>
Cc: Joshua Crofts <joshua.crofts1@gmail.com>, Akhila Kavi
 <akavi@axiado.com>, Prasad Bolisetty <pbolisetty@axiado.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Harshit
 Shah <hshah@axiado.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: add Axiado SARADC driver
Message-ID: <20260702205412.4cd58a5a@jic23-huawei>
In-Reply-To: <5e84024c-041b-4e2b-9a91-6c0bb9fb3bb2@axiado.com>
References: <20260622-axiado-ax3000-ax3005-saradc-v3-0-e57c7c7ae675@axiado.com>
	<20260622-axiado-ax3000-ax3005-saradc-v3-2-e57c7c7ae675@axiado.com>
	<20260622115554.000036a9@gmail.com>
	<5e84024c-041b-4e2b-9a91-6c0bb9fb3bb2@axiado.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319599-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:pstepanovic@axiado.com,m:joshua.crofts1@gmail.com,m:akavi@axiado.com,m:pbolisetty@axiado.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hshah@axiado.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,axiado.com,baylibre.com,analog.com,kernel.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,vger.kernel.org:from_smtp,axiado.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 934556FCA09

On Tue, 23 Jun 2026 10:30:37 +0200
Petar Stepanovic <pstepanovic@axiado.com> wrote:

> On 6/22/2026 11:55 AM, Joshua Crofts wrote:
> > CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you recognize the sender and know the content is safe.
> >
> >
> > On Mon, 22 Jun 2026 00:47:28 -0700
> > Petar Stepanovic <pstepanovic@axiado.com> wrote:
> >  
> >> Add support for the SARADC controller found on Axiado AX3000 and
> >> AX3005 SoCs.
> >>
> >> The driver supports single-shot voltage reads through the IIO
> >> subsystem. The number of available input channels is selected from
> >> the SoC match data, allowing AX3000 and AX3005 variants to use the
> >> same driver.
> >>
> >> Signed-off-by: Petar Stepanovic <pstepanovic@axiado.com>
> >> ---
> >> +     info->clk_rate = clk_get_rate(info->clk);
> >> +     if (!info->clk_rate)
> >> +             return dev_err_probe(dev, -EINVAL, "invalid clock rate\n");
> >> +
> >> +     ret = devm_regulator_get_enable_read_voltage(dev, "vref");
> >> +     if (ret < 0)
> >> +             return dev_err_probe(dev, info->vref_uV,
> >> +                                  "failed to get vref voltage\n");  
> > Sashiko raised an issue that I've missed on previous reads - why
> > are you using info->vref_uV in dev_err_probe()? The info struct
> > is not zeroed out on initialization, which means that dev_err_probe
> > will return a different value each time when read_voltage() fails.
> > It was designed to accept the retval from whatever function we're
> > checking.  
> 
> Thank you for catching this.
> You are right, |dev_err_probe()| should use the return value from |devm_regulator_get_enable_read_voltage()|, not |info->vref_uV|.
> I will fix this in the next version by passing |ret| to |dev_err_probe()| and assigning |info->vref_uV| only after the call succeeds.
> 
Hi Petar,  Quick process thing.  If you fully agree with some
feedback, don't send an email to say that. The place for thanks
etc is the change log of the next version.

We are all swamped in email and it takes a non trivial amount
of time to check every reply for discussion that needs to continue.

This is probably the most common thing people who are new to the kernel
do that I'd rather they didn't :)  I send this email once or twice
a week at the moment.

Thanks,

Jonathan

> Regards,
> Petar
> 
> 


