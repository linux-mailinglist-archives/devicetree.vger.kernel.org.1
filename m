Return-Path: <devicetree+bounces-315291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 18h2Om/2O2qrgggAu9opvQ
	(envelope-from <devicetree+bounces-315291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:23:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BB16BF9AE
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:23:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MgLhsE1g;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315291-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315291-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 727EE306917D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA6E3D9666;
	Wed, 24 Jun 2026 15:09:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE5C3BED75;
	Wed, 24 Jun 2026 15:09:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782313755; cv=none; b=AbqoQRS2IYel7HqAFop9/3dEu5w4fKK1FeQrXD1OcsZZb3GLxIXY8gPKt94qRdX13aldHEreUMGYF3ZneQcPFBiR+ho32DbeuaodCgs1S/un+omtxpzN/vw/96O1V9cxLkC5M4JzL6RHFwcLoEdLi53HbMADFnGUyqAVqO2UZ4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782313755; c=relaxed/simple;
	bh=Q4STcZBn9jDOBlIWOz1TFM8jYawhcoN9Oj9kUsFELAI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TwBO+cpEI5S+wZZ711sB4FuP8sRbdxRZZSD52bayuX6oxaC/X28zdj6UOCjOY9N3UosFaW/rXAPZu6RZmCn0rhCc6hxHH7vmN+uo8r6VxLd4c8IeCpBays7wGb0NaEHYGmk/h/jvGypLaYnlZ2ZdivN2HgY19OEDSpaIlr0fCFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgLhsE1g; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22D611F000E9;
	Wed, 24 Jun 2026 15:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782313753;
	bh=A6ImJfiFT1rjKG/4L8x7j/qD6P8AeigTAHUIZIXRv6A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=MgLhsE1gVbNojleBdNPQso/54fAa900HQVb6C2i352kKJBD+mbDuOoG8lqyVvKXlN
	 sTNXFni5jLj40pPpjYNpJxQV0eOSSRpQaZlad4S4T/I+TKrfMf2LKxFoSW7qVlahF5
	 mlekdG3hvEJannXNh1q6YnKkn9PFfygAuLReAWAmf8G/2V2TL/qT+RoVbr9H99IWkf
	 pf3snnjeEWbTEpFTictqgszYkVhpn4IVg1Ommzo7sC1V5xQiLJyKVArELxc1zyuNaX
	 ApRLHmkwUdgrZ2AJyfkeBJbedDheuEDcJkczcRGoZtk/I59YSpKb7HrXoJUSKVAYTt
	 qLNtp1eK0M2DQ==
Date: Wed, 24 Jun 2026 16:09:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: me@herrie.org
Cc: github.com@herrie.org, Andy Shevchenko <andriy.shevchenko@intel.com>,
 David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Denis Ciocca <denis.ciocca@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Denis Ciocca
 <denis.ciocca@st.com>, Linus Walleij <linusw@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] iio: magnetometer: st_magn: honour
 st,fullscale-milligauss DT property
Message-ID: <20260624160901.189ee5bf@jic23-huawei>
In-Reply-To: <edcf262b530a88ee602fa07edc8382ac@herrie.org>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
	<20260616-submit-iio-lsm303dlh-magn-fixes-v2-3-063edcf74e60@herrie.org>
	<20260623202916.5f5d520e@jic23-huawei>
	<ajrjRdEkZAho8h1E@ashevche-desk.local>
	<edcf262b530a88ee602fa07edc8382ac@herrie.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315291-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:me@herrie.org,m:github.com@herrie.org,m:andriy.shevchenko@intel.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[herrie.org,intel.com,baylibre.com,analog.com,kernel.org,gmail.com,google.com,metafoo.de,st.com,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jic23-huawei:mid,herrie.org:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8BB16BF9AE

On Wed, 24 Jun 2026 06:18:45 +0200
me@herrie.org wrote:

> On 2026-06-23 21:49, Andy Shevchenko wrote:
> > On Tue, Jun 23, 2026 at 08:29:16PM +0100, Jonathan Cameron wrote:  
> >> On Tue, 16 Jun 2026 15:02:06 +0200
> >> Herman van Hazendonk <github.com@herrie.org> wrote:
> >>   
> >> > The ST magnetometer core's common probe hardcodes fs_avl[0] -- the
> >> > highest-sensitivity full-scale supported by the chip -- as the
> >> > starting range. For the LSM303DLH that is +/-1.3 G; for the
> >> > LSM303DLHC and LSM303DLM it is +/-2 G; for the LIS3MDL it is +/-4 G.
> >> >
> >> > That is the right default for "minimal noise floor at a desk", but
> >> > it leaves no margin for boards that pick up appreciable DC bias from
> >> > nearby PCB structures. On the HP TouchPad (apq8060 / tenderloin) the
> >> > LSM303DLH magnetometer is mounted close enough to the surrounding
> >> > power planes that X reads back as the chip's 0xF000 overflow
> >> > sentinel (== -4096 raw, the value the chip publishes when the ADC
> >> > saturates) on every sample at the chip-default range, while Y and Z
> >> > fall well within the +/-1.3 G window.
> >> >
> >> > Parse the st,fullscale-milligauss device-tree property (documented
> >> > separately in dt-bindings/iio/st,st-sensors.yaml) in the
> >> > magnetometer common probe to select the initial fs_avl entry by its
> >> > mg value. The DT binding pins the accepted value set per compatible
> >> > via allOf/if-then enum clauses, so a malformed mg value fails
> >> > dt_binding_check rather than reaching the driver. Sensors with a
> >> > fixed full-scale (fs.addr == 0: LSM303AGR, LIS2MDL, IIS2MDC) have no
> >> > register to switch and the property is rejected outright for them
> >> > in the binding; the parse block is additionally gated on fs.addr as
> >> > defence in depth against stale DTBs.
> >> >
> >> > Per-sensor mg ranges are listed in st_magn_sensors_settings[]. For
> >> > LSM303DLH and LSM303DLHC/DLM the valid values are 1300, 1900, 2500,
> >> > 4000, 4700, 5600 and 8100; for LIS3MDL, LSM9DS1-magn and LSM303C-magn
> >> > they are 4000, 8000, 12000, 16000.
> >> >
> >> > Empirical scale sweep on the HP TouchPad confirmed that on this
> >> > board any fs_avl >= 1 produces non-saturated X readings:
> >> >
> >> >     scale (0.001 G/LSB)  | X raw    Y raw    Z raw
> >> >     --------------------+-------------------------------
> >> >             1.100        | -4096    44       46    (X saturated)
> >> >             0.855        |  -547    37       37    (clean)
> >> >             0.670        |  -433    94      103    (clean)
> >> >             0.450        |  -266    44       71    (clean)
> >> >             0.400        |  -235    34       65    (clean)
> >> >             0.330        |  -196    27       56    (clean)
> >> >             0.230        |  -145    15       40    (clean)
> >> >
> >> > 2500 mg is the natural choice for tenderloin: comfortably outside
> >> > the saturation regime while keeping useful precision for compass
> >> > applications.
> >> >
> >> > Assisted-by: Claude:claude-opus-4-7 sparse smatch clang-analyzer coccinelle checkpatch
> >> > Assisted-by: Sashiko:claude-opus-4-7  
> >> Hmm. First time I remember seeing Sashiko credited like this. Seems 
> >> like pretty much
> >> every patch series of any complexity would end up crediting sashiko.
> >> Out of curiosity were you just looking at reports, or were you running 
> >> it locally to
> >> help with development?  
> > 
> > I believe it's the second one, because LKML version uses Gemini (as far 
> > as I
> > understand the case). At least that's why I haven't commented on this 
> > tag.  
> I have the whole toolchain running locally to avoid too many submissions 
> and
> feedback from Sashiko with Gemini after submitting. For small drivers I 
> can run
> Gemini locally as well, usually stick with Claude Opus 4.7 since that's 
> what I
> have a subscription for. For very complicated and large drivers Claude 
> Opus
> tends to time out even with 1 or 2 hour, so I fall back to Claude Haiku 
> 4.5
> (which catches quite a few things, but is not as thorough as Opus or 
> Gemini).
> 
> Seeing Sashiko tends to provide different feedback on different rounds, 
> I try
> to only submit when Sashiko and all others are clean.
> 
> Hope this clarifies!
Thank!  I loose track of all these models :)  So the summary is very
useful. I've been meaning to get a similar flow in place myself for
checking local stuff (not that I'm doing any development at the moment)

Jonathan

> 
> Herman


