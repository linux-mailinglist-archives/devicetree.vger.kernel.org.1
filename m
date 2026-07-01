Return-Path: <devicetree+bounces-318867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6rH8OYdvRWq9AAsAu9opvQ
	(envelope-from <devicetree+bounces-318867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 21:50:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7276F1176
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 21:50:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nPxwREcm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318867-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318867-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9715230FC890
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 19:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530494189C6;
	Wed,  1 Jul 2026 19:41:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3619D395AD1;
	Wed,  1 Jul 2026 19:41:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782934901; cv=none; b=nr19cIwdlT9C2EpQEF7481ArOi78q6JOZ6nqml99gPon2ELvpUMTz/WA297l6l4H7lrnizMEhMnOdSUE7xYgrdphHaOOIq1JssN0FjqUtC+uxlZv9gVcMZFqQsiiJLFbjiL8qyfGsPaj+x3kKaqwdDZymnHKN9M+Hebjnc5bkdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782934901; c=relaxed/simple;
	bh=d1N71pbIkbImNLvv54zKb1DXhjUG9INCnOuDyhLrnO0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tQHTdR0kgsn4ACA1T7wt9m19GTr6Gxe8HoJ4C3zSz1jOlJGfoitfZwtWtQbQXzFjLnb0ruJFKOjx+H0qe1Vp7UNd25LQptsVVqPCled5vOO50rNutRvP7i0CmlpBBopw6wmi4H02iIhlochFwtsHEZ+Ibhtj5opmVuU0omuK7fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPxwREcm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04B101F000E9;
	Wed,  1 Jul 2026 19:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782934899;
	bh=srKQF8aV04rvPRlxEtas9A0IfpAYtTpMmlK2q0eSbQw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=nPxwREcm9E857SJpDoq8gBTIGhu3bfJZJ60eeD4wktiZk9ERc1RPT8IEzBvgh2sFA
	 PK+GRk0j6GOx4ZptrPqxx0/ne0jkWFCbvsvreusVNg+3b43B1P6uVGKR8ad1Hrz6eC
	 FTJcv6sIVYBA9jxXLGyrJAqV690hfbCfflkll+8KV+usZZO5g0OpmxIS8C2O4sdtTE
	 Cs/UC3Q5CxFmWkeT7+osp/FkQynCoe5sTTbhXfn7cSonZcgXF0ZKLrElbOHD5GoRgf
	 HX4DvWZPA8RAxTpcClfU6IVaOpeM5g/5nlt11/Zm+uGNLkGwi3RIZOv+YLM6CEYsRE
	 2pg4ctYV2eV2A==
Date: Wed, 1 Jul 2026 20:41:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Conor Dooley <conor@kernel.org>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>, Patrick Edwards
 <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>, Nguyen Minh Tien
 <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/8] dt-bindings: iio: adc: add
 input-channel-rotation property
Message-ID: <20260701204133.2b77edab@jic23-huawei>
In-Reply-To: <4a2c4c42-69fb-4491-ba77-b858623275ec@baylibre.com>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
	<20260625-iio-adc-ti-ads122c14-v2-4-ceb9b0b561cb@baylibre.com>
	<20260626-retinal-thrash-1095940e36ab@spud>
	<4a2c4c42-69fb-4491-ba77-b858623275ec@baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318867-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:conor@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,jic23-huawei:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D7276F1176

On Fri, 26 Jun 2026 13:27:44 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 6/26/26 11:14 AM, Conor Dooley wrote:
> > On Thu, Jun 25, 2026 at 04:55:06PM -0500, David Lechner (TI) wrote:  
> >> Add a generic input-channel-rotation property to adc.yaml. This is a
> >> feature seen frequently in ADCs that are designed to measure resistive
> >> loads, such as RTDs and strain gauges. Enabling this can reduce offset
> >> errors by swapping the positive and negative input channels on every
> >> other conversion. This can have side-effects in timing and filter
> >> response, so it is not always desirable to enable this feature in some
> >> applications. Therefore, it is best to make this a property that can be
> >> enabled or disabled in the device tree.
> >>
> >> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
> >> ---
> >> v2 changes:
> >> * New patch.
> >> ---
> >>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> >> index 9ec1f447b565..3d52c00922c9 100644
> >> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> >> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> >> @@ -81,6 +81,13 @@ properties:
> >>        ADCs usually allow choosing between internal reference sources or a pair
> >>        of external pins.
> >>  
> >> +  input-channel-rotation:  
> 
> I got some internal feedback after I sent this patch that "chopping" is the
> more common terminology for this feature industry-wide, so in the next revision
> I plan to change it into `input-chopping`.
> 
> >> +    type: boolean
> >> +    description:
> >> +      If set, the positive and negative input channels are allowed to be swapped
> >> +      on every other conversion to reduce offset errors. This is also referred
> >> +      to as "chop" in some datasheets.  
> > 
> > "allowed to be swapped" means that this property says the feature can be
> > used, but userspace may have to be the thing that ultimately turns it
> > on?  
> 
> No, I don't expect a userspace control for it. More like the driver should
> enable it when possible, but a driver doesn't necessarily have to implement
> it and everything will still work, just with less accuracy.

Perhaps we need something in this text to say when it should not be set
in dt?

Jonathan

> 
> >   
> >> +
> >>    excitation-channels:
> >>      $ref: /schemas/types.yaml#/definitions/uint32-array
> >>      description:
> >>
> >> -- 
> >> 2.43.0
> >>  
> 


