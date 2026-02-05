Return-Path: <devicetree+bounces-263150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yB2xLNz5hGkL7QMAu9opvQ
	(envelope-from <devicetree+bounces-263150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:13:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C572F70E9
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11697301F98E
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5046132ABCD;
	Thu,  5 Feb 2026 20:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKbxwf2e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D72632AAA2;
	Thu,  5 Feb 2026 20:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770322382; cv=none; b=QmJDQqYYL+R3Cmmmb1e0fdR9p/Oznwnn1atyMVlM+ZwfTw5LDql3qWhn/yx4xC6tOltW+NLyfUdPIcsd9DF10Tz8VAVICn2mHlV96fHZGR6mrFGUOEN+YPS1a+6aBNMGj0ZtGTU0fucmTNSVLab1zmHLcLY3+JzFSr7N2JcCo7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770322382; c=relaxed/simple;
	bh=IAMn24H4Rp07Oxy7djbelxWkI0dUA/JKZxZTOAoM1SU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DiFcYqqKcQn9uQR6czQH7bKZD5qG/Esl/5mNO7jyG34NApXTHKaE0bffK2nvSNmjVaJ+4Agoxl2lKNXK0FfQZzdBvvYE1s9+UrvBFQHG+s/iCWDu5jgwOQqA9BE/z4H3otg6rEYfYkIlva/id5UMOZ9ipr6ikUk6HDfx6V3QF60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKbxwf2e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CC12C116D0;
	Thu,  5 Feb 2026 20:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770322381;
	bh=IAMn24H4Rp07Oxy7djbelxWkI0dUA/JKZxZTOAoM1SU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CKbxwf2eFpBt8PdDi+UPXtwziizAJtzpRN3UClurmYnbSTzRoxtgos8f60HHnT4b1
	 ceITNGU/LoPUqMN7U0Rktsw9lC+5Mr+RO11GzD2X5DFbrd+xsuzcWUPyOiQn7zDMlo
	 otv2S7xtGHxFKIZBwRKWMA+dQXiOpZO5kf0kkKdGQ2yOQjXku2mLzzhSmJCTL8zSih
	 21ymIcSXWj3eKMFbzle8Swj76kNlLcMvF8GjQyuRjo9x5ESgy1xX0OPJC5adSaASoY
	 +yu5JP0uQDyYFBmN6e8kke1PG9ccF2Iimq1Oj7CjPzxa1AjCv3iIH1iWIcZ6BKTVWL
	 ojWAleVL+DybQ==
Date: Thu, 5 Feb 2026 20:12:56 +0000
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Debbie Horsfall <debbie.horsfall@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
Message-ID: <20260205-vagabond-silky-ape-dc9b8e@sudeepholla>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <76da2e9b-1b57-4bd1-b577-9001d01c7b9a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <76da2e9b-1b57-4bd1-b577-9001d01c7b9a@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263150-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email]
X-Rspamd-Queue-Id: 1C572F70E9
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 01:35:46PM +0100, Krzysztof Kozlowski wrote:
> On 23/01/2026 18:37, Debbie Horsfall wrote:
> > Introduce the Zena CSS Fixed Virtual Platform (FVP) dts. This is
> > currently the only Zena CSS variant, however the common definitions are
> > included in a common dtsi for extensibility.
> > 
> > Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
> > ---
> >  MAINTAINERS                              |   1 +
> >  arch/arm64/boot/dts/arm/Makefile         |   1 +
> >  arch/arm64/boot/dts/arm/zena-css-fvp.dts |  55 ++
> >  arch/arm64/boot/dts/arm/zena-css.dtsi    | 826 +++++++++++++++++++++++++++++++
> >  4 files changed, 883 insertions(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 90d88137adf1..d1d2dae6a71e 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3727,6 +3727,7 @@ ARM/ZENA CSS PLATFORM
> >  M:	Debbie Horsfall <debbie.horsfall@arm.com>
> >  S:	Maintained
> >  F:	Documentation/devicetree/bindings/arm/arm,zena-css.yaml
> > +F:	arch/arm64/boot/dts/arm/zena-css*
> 
> Eeeh, this is getting more and more messier.
> 
> All ARM designs or at least all similar like all ARM FVP should have one
> group maintainers and that entry now claims "versatile express".
> 

Sorry I saw that you have already pointed towards the above only after
I responded to 1/2. I agree this is not scalable and it is hard to categorise
them at the moment. Hopefully we may get more clarity in sometime in the
near future and we can rework them then. For now, your suggestion sounds
the best approach to take.

> Additional entries for submaintainers is fine, but honestly with this
> split of bindings this is getting more and more messier.
> 
> I know that ARM is kind of "special" but when it comes to SoCs it should
> not be.
> 
> Sort out this mess, please, before get accept another platform.
> 

Noted.

-- 
Regards,
Sudeep

