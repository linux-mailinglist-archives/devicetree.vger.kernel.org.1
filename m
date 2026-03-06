Return-Path: <devicetree+bounces-272290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MqiD1oGq2kMZgEAu9opvQ
	(envelope-from <devicetree+bounces-272290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 17:52:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF3B22580E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 17:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7FF68304200D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 16:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66AC03A1E96;
	Fri,  6 Mar 2026 16:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqb/GBLs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4336930CDBC;
	Fri,  6 Mar 2026 16:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772815801; cv=none; b=kbelgLW+VZlhZxE0MzHeYFMHstsjaa89yG9raVOmeQ79CvqkznlL7GgO734Eqx4632nxMmc4tvv9iZnvDIKaFrj547JSGzcZLU88g/FoJQELtoYK/sF8WeDspjJRcqNYEbUp5AJnPcNIVXeUy3OmnMtQ8PJR91z29CCt16jhteY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772815801; c=relaxed/simple;
	bh=LDvErnsSviSKWmsnP/i1WUe5RN+oPcvEl6IZb6brtwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K+19HcncULRwipvOA7yveUYshCSWA1p8CA7sHLDyo4Toyc2SkK2Kq8q7q4MhNl9k3TRKwyE8kMfB7+uAd4kUSwEP7WW1o2lRh1WbkdVOxAtnHCPhpQgffplLDBkSjZRy2r2uNTt4SB+mtKiEsfZ8mftt+fCHvcu9DqnUFiLYbgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqb/GBLs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECE3FC4CEF7;
	Fri,  6 Mar 2026 16:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772815800;
	bh=LDvErnsSviSKWmsnP/i1WUe5RN+oPcvEl6IZb6brtwM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iqb/GBLscIvX2eAgLxU85ftpAEVvKQ/IYAHxvSAAhHLoaRCwOhhcTpjuIw+fOPeee
	 R0uEz6hxWhR8aLX3oUwPM3Ns03hdLP5QB6d+VyBfv8M5v0v11gy2rJwOI37bKk7ytE
	 0wBfgmYy3pNeBnrwWE8SRNlRNyExs6cOhj3WIXxv3XIO+YlFCUpa0Y+4AN+GCmzkfb
	 kcFdbeuSqCoeBS7CUcXk2zNjfQcA3pxiYb5eo/qXP2IG60XbdYMkY96kdAbwOkFx9n
	 1JRbNH+n8R3FJvnhbzSqU2oZeEqYG5wynRlTXNwYL29Rr8mjuJkRMzKL9Jj4i4D0D4
	 r+fVpMcb0enaQ==
Date: Fri, 6 Mar 2026 16:49:56 +0000
From: Conor Dooley <conor@kernel.org>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Raptor Engineering Development Team <support@raptorengineering.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	Georgy.Yakovlev@sony.com, sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Message-ID: <20260306-kept-shelving-67e5d74dbf5d@spud>
References: <20260129192047.562540-1-support@raptorengineering.com>
 <20260129192047.562540-2-support@raptorengineering.com>
 <20260209174912.GA1474958-robh@kernel.org>
 <20260306083101.GC183676@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fr1r9n0pnYC2H/10"
Content-Disposition: inline
In-Reply-To: <20260306083101.GC183676@google.com>
X-Rspamd-Queue-Id: 8DF3B22580E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-272290-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action


--Fr1r9n0pnYC2H/10
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 06, 2026 at 08:31:01AM +0000, Lee Jones wrote:
> On Mon, 09 Feb 2026, Rob Herring wrote:
>=20
> > On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Developmen=
t Team wrote:
> > > From: Shawn Anastasio <sanastasio@raptorengineering.com>
> > >=20
> > > The Sony Cronos Platform Controller is a multi-purpose platform contr=
oller
> > > that provides both a watchdog timer and an LED controller for the Sony
> > > Interactive Entertainment Cronos x86 server platform. As both functio=
ns
> > > are provided by the same CPLD, a multi-function device is exposed as =
the
> > > parent of both functions.
> >=20
> > Why do we have DT bindings for a x86 server platform?
>=20
> This looks like an ARM device that connects to an x86 platform.

I dunno. The text talks about "this" being a cpld, so at best it would
have to be connected to an arm SoC that's on the x86 platform's board,
acting as a BMC or something similar.
Unless by "this" you don't mean the device in the binding, but rather
the platform that the device in the binding is connected to.

I've kept this in my mailbox for the last month, because I was wondering
the same thing as Rob, and there's been no engagement from the submitter
at all. I don't think that that should be rewarded by trying to give the
benefit of the doubt.

> Note: The drivers look okay, but we need a DT Ack to merged them.

--Fr1r9n0pnYC2H/10
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaasFtAAKCRB4tDGHoIJi
0sFjAQCbM6mX0NM3nQ5j5PfdYBKJpb1Wuv2vRAM/pHNXGOdgEgD8Dg+x9GZ4EBiI
4rfXNomUuRaW35u71FRHBMTjS8lBaQ8=
=i3ZI
-----END PGP SIGNATURE-----

--Fr1r9n0pnYC2H/10--

