Return-Path: <devicetree+bounces-287402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNQ8GQCE3mmcFQAAu9opvQ
	(envelope-from <devicetree+bounces-287402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 20:14:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EBE3FD8BD
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 20:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B0BB3120387
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 18:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307D8313E38;
	Tue, 14 Apr 2026 18:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMx6PxZV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B979310645;
	Tue, 14 Apr 2026 18:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776190117; cv=none; b=koUADiCOdgrysnmUCc8XdRLIYvcizhd4aGQBrp9jkaDHIpNtaGJ4Wp0e+Ew9iU/Wh4DQ2qarFNCXb67tS3RKWUP9e6fylZJ5tyOTdf1kBLCf1/iawPQmzSiGXWQgsyYdPhvd5xaxqWbhcph2Vi7VoftcODjvHC+yKZwcztX+EB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776190117; c=relaxed/simple;
	bh=Ozd025/xrTDLOxNrVs7b7G0/NZigIYX3P6EPqj9AhuM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SDoeM+bxH9whZtW6RNqWCf9TtmP9qcMS7smQCekZPlZ0/SKvOYqw7kSiDCsxYOnjF/SKLrA1HlrOs2JWjzrEF2e94TLPf3WQ7M/Za+IA+LKXaM3P1Zux1RANFqYvOUvZAATB7NVNFmz0X9thp2QzKbO6MxMIjzyYWk12D5bXdAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMx6PxZV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91375C19425;
	Tue, 14 Apr 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776190116;
	bh=Ozd025/xrTDLOxNrVs7b7G0/NZigIYX3P6EPqj9AhuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pMx6PxZVtg1YD6BqeoXbOcy7HqZwkldhJSAyr0xufTyS/YllC7dbQB3GP5Poe8IaC
	 wXOmf5XIuISpJSG/BsAZR422xofrUtae4Cic1b3wnPwfFBxoMtANkgD3KIYpWYc9ij
	 36Oa+uALakZnnZ4z73xM8EaMCAOS0jlAbzOS8ADDnDcpnm0EOSO1YGmFPWTo78Iq07
	 Z2rjlZ6EBwD7RQsq3KWGE53Vju7oG9FgGvn6y5tweZsEOIvdY+/Ndqgm3ShECAxPk+
	 FG3527VjLfjS53p+M8ZpwfgrNDYRJNI/8YKjHzlkVRG5gC9uaJjhrUlZxVb48HeGIq
	 nCZRpg3Ib9KRA==
Date: Tue, 14 Apr 2026 19:08:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Sen Wang <sen@ti.com>
Cc: linux-sound@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	perex@perex.cz, tiwai@suse.com, shenghao-ding@ti.com,
	kevin-lu@ti.com, baojun.xu@ti.com, niranjan.hy@ti.com,
	l-badrinarayanan@ti.com, devarsht@ti.com, v-singh1@ti.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/4] ASoC: codecs: Add TAS67524 quad-channel audio
 amplifier driver
Message-ID: <dd740c4c-e0bc-4140-961d-6c6c604a594d@sirena.org.uk>
References: <20260409220607.686146-1-sen@ti.com>
 <20260409220607.686146-3-sen@ti.com>
 <adkC_fNHcpRA_ffo@sirena.co.uk>
 <a0f50798-3293-4b2b-8d9c-7a85fce9e8e7@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PuUWRM09uVj7iFkS"
Content-Disposition: inline
In-Reply-To: <a0f50798-3293-4b2b-8d9c-7a85fce9e8e7@ti.com>
X-Cookie: Academicians care, that's who.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287402-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,perex.cz,suse.com,ti.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D7EBE3FD8BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--PuUWRM09uVj7iFkS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 10, 2026 at 12:56:47PM -0500, Sen Wang wrote:
> On 4/10/26 09:02, Mark Brown wrote:

> > This looks mostly good, but one issue I see is that AFAICT we only stop
> > fault_check_work during runtime suspsend - if runtime PM is disabled, or
> > if the driver is removed, the work will be left running.

> Regarding fault_check_work w/o runtime PM: the device has fault
> conditions that fire regardless of stream state, so the work runs for the
> duration of the active power state (runtime PM) rather than stream state.

> I could add a DAPM event fallback to gate the work when runtime PM is not
> defined, but that's more restrictive; it could miss faults outside of active
> playback, and adds complexity for what is a fairly niche configuration
> (optional check_work with runtime PM disabled).

> Do you think the DAPM fallback would suffice, or is the current approach
> (poll until removal) acceptable given the hardware behavior? Any other
> suggestions would be greatly appreciated!

It's fine to keep on checking for faults if there's faults that can be
generated, the only reason I mentioned runtime PM there was that it's
the only thing that stops the polling in the current version.  So long
as everything is stopped when the device is removed it's fine.  No need
for a DAPM fallback.

--PuUWRM09uVj7iFkS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnegp0ACgkQJNaLcl1U
h9C9ugf+JNbqHw5I2t2EAaLsAQ11sZ+f7RXRJosA6Wmpi1UloKFB5/ymnjyFdf2u
l69xtkCApVtwTedMHR9gaaKx/UaD4fADapfvp2se+r0RtsYapr+wWRJJ5mc80KG6
pOlpiqkTFuAPqrUiBH4SaN0aFWCieRoDmapYbU/E1awrc0vDNraB/emGobkwhVnp
l3uo2Q3eormVkRANYNAnBPgL+0LGYyYl445UHtfpVp4o+1DeJ6TcNoqcVdmh5ryI
YnjgQd36XR5lWmL9KUq9vPpngp1b+DF8der065ApOvp+ERe+FYuixoL2u9S2EHgF
kTCiLqUHCZc8WzMKL4sP+GfalaXKoQ==
=T1F7
-----END PGP SIGNATURE-----

--PuUWRM09uVj7iFkS--

