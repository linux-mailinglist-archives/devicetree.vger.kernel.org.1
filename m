Return-Path: <devicetree+bounces-314092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U7jaNJ7sN2rEVgcAu9opvQ
	(envelope-from <devicetree+bounces-314092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:52:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E5C6AAFD3
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:52:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=L4sODF21;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314092-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314092-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B72A30063A6
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 13:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C4D366DB5;
	Sun, 21 Jun 2026 13:51:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C506F3655E9;
	Sun, 21 Jun 2026 13:51:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782049888; cv=none; b=lRxL5wQDlrjtR6hqP91N4LMAxhxxqzJiLmc2PR99slQ/LOdRhtMLFg0reMv+9quWvWDwXbybVH3JwUdOu9rMTdu5zOREIb5jnJvwGliq8GrJt7aFFT+apQb+KjoWcoDW0fvnR2rCaLqHP3OUjieOeSLTcacfZczUQ/l7fK4nylY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782049888; c=relaxed/simple;
	bh=mp+ma+hjjHBZOAfrB+QHkBSWFOPrOVkao8fixXcGBMY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZwpoJx5JO0Zbw4h9mzOliUBaLeEmu/9V8lIpdQhYZqSnr9KEm8KGbWdQcFnFsGCgY2kbpRJBJbX7qPQFn/gbN08VvVtDu4E3qoeIHO8FmDOu26EdVtqAaFbZbhA9xWw8UFGtEAwoDebuRBrCf8fEsGqrGVaRoxwC6Ik2XN2iXoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4sODF21; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF9F11F000E9;
	Sun, 21 Jun 2026 13:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782049887;
	bh=2oHArOQEj+3jpOwU/zuzZvGwBkHN5/HKN4d9j5Z5Y5U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=L4sODF219bNV0vXeAu16ri8EHB6p/ZzR0zAnd02hxJsf2AkofLxxw9kj0sRUw3N/0
	 GExVbRbDXwBJLswszqPCrHSCMIl93r2tnB8GQPrPk9+mq7REaxrxuCJvgyrgVTIukl
	 pPLJjaW8Ekdq1RkyvxarChBmEJXFLhDRp5AfoptzWPV/jo9gsQ304s1TemIxzjuQ4F
	 Ku59UnwYqtrz+1t7lN26zJ8yduYmS6+qmSdRSVFmbRxoWNt6DgpIFgFYK8wZ29IoYn
	 Oy4C1+w+t+U2dXNsF4RpdVyip60KWph5IQvAxEQGOPnCIOKFwfIHLrC5lgnDM27JYX
	 +INrDfSiTC6ew==
Date: Sun, 21 Jun 2026 14:51:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Wadim Mueller <wafgo01@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Maxwell Doose <m32285159@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Marcelo Schmitt
 <marcelo.schmitt1@gmail.com>, Rodrigo Alencar
 <455.rodrigo.alencar@gmail.com>
Subject: Re: [PATCH v4 4/4] iio: flow: add Sensirion SLF3S liquid flow
 sensor driver
Message-ID: <20260621145117.70b2d50e@jic23-huawei>
In-Reply-To: <84503093-4bff-4c93-aff8-aa07e1a6a1a1@kernel.org>
References: <20260611132700.671322-1-wafgo01@gmail.com>
	<20260611132700.671322-5-wafgo01@gmail.com>
	<e01d100b-9809-4af3-8f21-055f687ca6c6@kernel.org>
	<20260612184729.795e0e84@jic23-huawei>
	<4e4ef1ae-62e7-4639-914c-19f49930be02@kernel.org>
	<20260614161011.7f7946f1@jic23-huawei>
	<84503093-4bff-4c93-aff8-aa07e1a6a1a1@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314092-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:wafgo01@gmail.com,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:m32285159@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt1@gmail.com,m:455.rodrigo.alencar@gmail.com,m:conor@kernel.org,m:marceloschmitt1@gmail.com,m:455rodrigoalencar@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,analog.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 59E5C6AAFD3

On Mon, 15 Jun 2026 06:27:00 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 14/06/2026 17:10, Jonathan Cameron wrote:
> > On Sat, 13 Jun 2026 09:51:13 +0200
> > Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >   
> >> On 12/06/2026 19:47, Jonathan Cameron wrote:  
> >>> On Thu, 11 Jun 2026 16:01:12 +0200
> >>> Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>>     
> >>>> On 11/06/2026 15:27, Wadim Mueller wrote:    
> >>>>> +
> >>>>> +static const struct of_device_id slf3s_of_match[] = {
> >>>>> +	{ .compatible = "sensirion,slf3s-0600f", .data = &slf3s_variants[0] },
> >>>>> +	{ .compatible = "sensirion,slf3s-1300f", .data = &slf3s_variants[1] },
> >>>>> +	{ .compatible = "sensirion,slf3s-4000b", .data = &slf3s_variants[2] },      
> >>>>
> >>>> You should have only 1300f here and detect the variants. That was my
> >>>> point when I suggested to use the fallback.
> >>>>    
> >>>
> >>> I'm lost. How does that work?  They cannot fallback to that part because
> >>> it relies on in driver detection of the fact that they are incompatible.
> >>>     
> >>
> >> I am lost too. Then why were they made compatible in the binding?
> >>
> >> Entire discussion was that these are FULLY compatible due to variant
> >> detection. That was the entire point of discussing more generic
> >> fallback. Using specific fallback does not change that - it is the same
> >> concept.
> >>
> >> If devices are not detectable, why were we discussing any compatibility?  
> > 
> > They are detectable, but the feature set is not, so to me there is zero valid
> > in a generic fallback, we have to update the driver every time a new part comes
> > along. (i.e. I agree with Conor's reply to the previous version thread).
> > A specific fallback to a completely compatible part would be fine as there
> > would be sufficient info to not need the ID lookup.  
> 
> This patch has specific fallback and we discuss this now.
> 
> > 
> > The case in the binding for this version is the worst of all options because
> > it implies it is valid to fallback to something that gives a false impression
> > of being specific when it's relying on ID matching to say actually it's something
> > else.
> > 
> > So definitely not
> > +  compatible:
> > +    oneOf:
> > +      - const: sensirion,slf3s-1300f
> > +      - items:
> > +          - enum:
> > +              - sensirion,slf3s-0600f
> > +              - sensirion,slf3s-4000b
> > +          - const: sensirion,slf3s-1300f
> > +
> > 
> > Falling back to slf3s is better than this, but I'd rather not have a fallback
> > at all, thus allowing correct fallback to the parts listed here in future.  
> 
> Why? These devices are fully detectable thus fully compatible.

Ok. We aren't really making progress.  Let me layout the three approaches.
+ advantages and disadvantages as I understand it.

What we have here:
  compatible:
    oneOf:
      - const: sensirion,slf3s-1300f
      - items:
          - enum:
             - sensirion,slf3s-0600f
             - sensirion,slf3s-4000b
          - const: sensirion,slf3s-1300f

Advantages: Fallback to a real part.
Disadvantages:
- Requires a driver change even for drop in replacements (which will have
  different WHOAMI IDs.
- To me it implies that a driver that supports slf3s-1300f should just
  work with parts we haven't seen yet if they have that in their fallback
  lists. I appreciate you think that we shouldn't put effort into supporting
  that case, but to me it seems more or less free to support and is useful.

Generic compatible for fallback.
  compatible:
    - items:
        - enum:
           - sensirion,slf3s-0600f
           - sensirion,slf3s-1300f
           - sensirion,slf3s-4000b
        - const: sensirion,slf3s

Advantages: Fallback to something that doesn't imply the post fix is coming from
            DT. So kind of hints we need detection code.
Disadvantages: requires driver changes for each fully compatible drop in part.
Note I'm not sure what this brings us over just having one compatible... Maybe
we'll some day get a non detectable difference where we need to use the binding
but seems fairly unlikely (I've seen that happen once when a manufacturer failed
to update a WHOAMI reg value for a new part).

No fallbacks
  compatible:
    enum:
      - sensirion,slf3s-0600f
      - sensirion,slf3s-1300f
      - sensirion,slf3s-4000b

Advantages: (Common!) a future drop in compatible part works with old kernels
            as the driver knows a match + part information to use if the ID
            match fails.
Disadvantages:  Not sure I see any... However I'm guessing I'm missing something.

Note for this topic I think it would be great to capture some best practice
information somewhere so we can improve consistency.  I've looked around and
there are some bits of feedback in numerous threads but those are hard to track
down.

The Dt spec refers to these as being about programming mode + driver selection.
I will note that we have very broad families of devices that have a somewhat
standard register interface + do always put the WHOAMI in the same place.
In the vendor  drivers those match a single hydra of a driver; upstream we
have multiple drivers as devices do very different things and hence in
practice almost no code would have been shared - so I have no idea what
we should have done for those more commplex cases.  Following your logic
(I may have it wrong!) I think we would have had a generic compatible
for the whole family but in upstream Linux no driver would have bound
to that. I guess there are  different extremes:

1) This case - register interfaces is consistent for all registers,
   we are just matching on constant tables needed to interpret the
   data in those tables.
2) Similarish.  Main register interface shared, but optional additional
   parts.  If one device is a strict superset, a fallback is
   appropriate (in my view) but if I follow your points here then they
   should all have a single fallback compatible.
3) Not particularly similar, but still detectable in a consistent
   way.  To me not appropriate to have a common fallback as based on
   the dt-spec thing about matching drivers, they will typically
   match different drivers.  Maybe we should have a common fallback
   but typically not bind to it?
4) Detection code becomes a mess and is different for each part
   (see the old i2c_detect stuff)   So hopefully no one thinks we
   should use a fallback once we reach
   this level of complexity (unless part are genuinely compatible)

I'm a little bothered by the fuzzy boundaries between those cases
so would ideally like rules that say 1-3 need fallbacks or none do
but we live in a fuzzy world, so maybe best we can do is leave things
flexible.

Jonathan



> 
> Best regards,
> Krzysztof


