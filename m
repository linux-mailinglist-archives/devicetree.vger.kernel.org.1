Return-Path: <devicetree+bounces-321428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zNf4FsD7S2oxeAEAu9opvQ
	(envelope-from <devicetree+bounces-321428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:02:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD6F714C21
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:02:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XsXUBELB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321428-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321428-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6547B31DBBA0
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 17:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE008395AF7;
	Mon,  6 Jul 2026 17:23:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983852BDC0F;
	Mon,  6 Jul 2026 17:23:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783358603; cv=none; b=NA23G370lQ9B56VRyKlIat2cqf//gb+IfaZJGsIGtcyCaIe36bEHs1WNX0Jc25MjoiCw6IvHkFRexRm1A7m3EHZrmznPuHEwFs2znItV/Xoxuc3UHXlflU/DSZJdGtvLYK3SRWsncWY4ywHJvhmgQQKt5M0H8RaqSI0BSgRNF+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783358603; c=relaxed/simple;
	bh=WRfy+RE0a7658/u4qTmCl5akG6GMPTNnngKS8A3EvyI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tkc8K8nMiIb/qoBkn+hesT5rGXI4oZ3TFRakMlKkhnOhzPzU0rXGhYEh0zGzoDzYOrbmQE37bm3C8XKjng6gNUmz/mbhUg1NvwQ9ZSyJDBuAiu0gATpCymk0F+SWFdMdGM3h+2STsAyJ9URejvwQu8o1NyyXxY2lqY3/odClyC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsXUBELB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E7051F000E9;
	Mon,  6 Jul 2026 17:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783358602;
	bh=MkSvG6C7CvxcJv4nIbvitwZ66NkKAro38gSbcPRawwY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XsXUBELBMr/mEtI3Dm6e1GQhJksPQ6zGYBkHpsH7orSZug+x5ajIT5Kjrao+u7wlp
	 S1yXae/bVRFd+KtEBIZzISqCSZRhYVBs6od2dV2achCMsovHST6TxjksLGCcDrruLb
	 BQST+DJwo/ZtlJP11Lb1A4pRo9JzJt0QPudSkSSjgTPZQ2R2GsVjq4ta2HRWj7oEne
	 UnHbDFp1raXBy8dSTD/4ErYtgqJENLhRMHfL/3cmQfCV44sWeXWuY/d7FbQdpZeADR
	 VYiqzImgotg8Sm1ATNnJguDqYh2PcGsZmiLCQRowCN+khLp5nh9Fkc/zE6d0F4TC9i
	 trMiDPw4iSKPQ==
Date: Mon, 6 Jul 2026 18:23:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Kurt Borja <kuurtb@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/7] iio: adc: ti-ads1262: Add conversion delay
 support
Message-ID: <20260706182317.64cb0a4c@jic23-huawei>
In-Reply-To: <8dd4bb6b-a83d-4584-8893-b56b8aaed973@baylibre.com>
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
	<20260628-ads126x-v2-5-4b1b231325ba@gmail.com>
	<20260630015027.3afdfc3a@jic23-huawei>
	<DJMK3NCDCHL8.1EHG93D5O7ROZ@gmail.com>
	<d8fbab77-6cb4-435d-aac9-0d72cd4a59bc@baylibre.com>
	<20260701012026.29f18bf4@jic23-huawei>
	<8dd4bb6b-a83d-4584-8893-b56b8aaed973@baylibre.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321428-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:kuurtb@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,analog.com,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CD6F714C21

On Mon, 6 Jul 2026 11:19:40 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 6/30/26 7:20 PM, Jonathan Cameron wrote:
> > On Tue, 30 Jun 2026 13:44:49 -0500
> > David Lechner <dlechner@baylibre.com> wrote:
> >   
> >> On 6/30/26 12:23 PM, Kurt Borja wrote:  
> >>> On Mon Jun 29, 2026 at 7:50 PM -05, Jonathan Cameron wrote:    
> >>>> On Sun, 28 Jun 2026 00:36:06 -0500
> >>>> Kurt Borja <kuurtb@gmail.com> wrote:
> >>>>    
> >>>>> Expose the programmable conversion start delay as a per-channel
> >>>>> IIO_CHAN_INFO_CONVDELAY attribute.    
> >>>> Coversion delay was always a somewhere weird bit of ABI.
> >>>> What are the delays relative to in this case?
> >>>> Is this a device that does simultaneous sampling?  Pictures
> >>>> suggest otherwise, and convdelay is currently only defined
> >>>> in that case.  We might be able to extend it but it needs
> >>>> some thought.    
> >>>
> >>> The chip has a configurable internal conversion delay to allow for
> >>> external settling effects. See datasheet section 9.4.3 if you'd like a
> >>> bit more details.    
> >>
> >> Since this depends on external components, it sounds like it belongs
> >> in the devicetree. I have the same feature in the chip I am working
> >> on and was just looking at this and plan to add it to the ti,ads112c14
> >> devicetree patch.
> >>
> >> This delay only applies to a "new conversion", i.e. when certain config
> >> registers change, and not every conversion, so isn't like the convdelay
> >> attribute.  
> > 
> > See settling-time-us in adc.yaml.  I'd forgotten we had that ;)  
> 
> I got some more feedback on this and this may indeed be something we
> want to tune at runtime after all.
> 
> I'm not really sure where it fits in though. On AD112C14 that I am working
> on, the DELAY register value adds a delay (for settling time) in addition
> to some other intrinsic delays. I'm pretty sure ADS1262 is similar.
> 
> So one question is do we want a usespace control to be the total delay
> or just the additional delay?
> 

Total I think.

> And when the delay takes effect depends on other things. Normally the
> delay only happens before the first sample after any other parameters
> change. If we read the same channel again with the same config, then
> there won't be any added delay. But if input chopping is enabled, then
> this delay happens on every conversion.

Hmm. That is awkward.  I guess the best we could do is either to document
it as 'may be skipped if channel setup is unchanged either via explicit
channel or parameter change, or via chopping'.  I kind of think of chopping
as advanced channel sequencing - inX-inY being switched to inY-inX with a scale
*= -1.

> 
> I'm a bit on the fence of if we should extend the definition of convdelay
> for this or if we should propose a new settling time attribute. I'll have
> to think about it some more.
Smells different enough that we shouldn't smash the two together.
> 
> Maybe something like in_voltageY_calibsettlingtime?

calib might be reasonable if it was a tweak to a fixed settling time
and like other calib stuff would not necessarily have any scaling.

If it's the whole thing and in seconds then in_voltageY_settlingtime 
should be enough I think.

Jonathan

> 
> >   
> >>  
> >>>
> >>> But you're right, I should at least also edit the ABI description of
> >>> this attribute. We can postpone this discussion for a future series.
> >>>     
> >>>>
> >>>> Jonathan    
> >>>     
> >>  
> >   
> 


