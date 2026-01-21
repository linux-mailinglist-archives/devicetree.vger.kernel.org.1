Return-Path: <devicetree+bounces-257925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIjYK/TJcGkNZwAAu9opvQ
	(envelope-from <devicetree+bounces-257925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:43:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA6556F79
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 163BF9CAC86
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF20048A2AC;
	Wed, 21 Jan 2026 12:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOF2SfuE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9141B48A2A2;
	Wed, 21 Jan 2026 12:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768998960; cv=none; b=B2jkV5KjV8rlmVeUCxaP4gSwFg0LBvFyGKlSrmk9syt9dtf5sV4Grf6SECApeBTPC7MGAjMDTBSbr1h2jCii/s6uv1fRqFZBhkIpm/bQ5fxfx/c2FlNFIz0mczuSqor1YycE27UeDQChSo4IsfOya3O81EAJzAMB+AoTtlKGjOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768998960; c=relaxed/simple;
	bh=pOlVtUxzIp/e/GzsuBlUxisWdeDDFC48fUu+Lg12zzU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TZIqiOxfYzkfzZYS/HbW9sMe/eH3kkGpBTNH+r/xDJFNadyKHyS1tZxtiLhMYlDsXGGQ3j8GV9Zu8fikvZ942ZlrMXro6D9aR/krGK9at1Sx9ZDsu/KkZduOXQUsnwdpuhbea9kfas0vnBCKp0QVUBa/LJJ5k74aEO9UqB0SsOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOF2SfuE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E53C19421;
	Wed, 21 Jan 2026 12:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768998960;
	bh=pOlVtUxzIp/e/GzsuBlUxisWdeDDFC48fUu+Lg12zzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vOF2SfuEGaCaDo5+NXEOld6HywY5neFaj5CdZzDl/MevmrZFp+VcB8fXAaLp+ibZN
	 KMsmqi0LZxbbzWTBnDu91ZgYjNMUrRjLxaubqzj5aS+OlELGAdZ7PbouoXwOHaabwk
	 on/fDTz04c9pEsVadaRa2lkUFiM/v35GBY3hcJr2TC97UEYYz13BwP+/BXJ6O/vHd1
	 Ur/k+QLaVl954DG/PYawnrtPNracK4WP5pZSDk+P1PTHzWdxWcwq32XjUO2PldnM7Y
	 izciOT3nK92jCOO1fDWUqFrTx+bkg133XtmUPvcN1arzuO3wfRdkA56qQxCN1iTsOC
	 v8jpOb1+PAu2g==
Date: Wed, 21 Jan 2026 12:35:55 +0000
From: Mark Brown <broonie@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abdurrahman Hussain <abdurrahman@nexthop.ai>,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] spi: xilinx: switch to device properties
 and make IRQs optional
Message-ID: <aff8daa3-61e4-4808-8be9-45349c2f5de9@sirena.org.uk>
References: <20260119-spi-xilinx-v3-0-4566c33bac0d@nexthop.ai>
 <176893698361.778248.6867023245726406177.b4-ty@kernel.org>
 <c0288962-6a11-4274-9e93-91bd5a6997c5@amd.com>
 <83b93899-8f48-47cb-a74a-b4e838cc463b@sirena.org.uk>
 <8270c11f-7244-478e-b341-2ae7f6e1e416@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SiPyTjI69BrnJyTx"
Content-Disposition: inline
In-Reply-To: <8270c11f-7244-478e-b341-2ae7f6e1e416@amd.com>
X-Cookie: Eschew obfuscation.
X-Spamd-Result: default: False [-2.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257925-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 4CA6556F79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--SiPyTjI69BrnJyTx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 21, 2026 at 01:26:04PM +0100, Michal Simek wrote:
> On 1/21/26 12:39, Mark Brown wrote:

> > My understanding was that the hardware doesn't require physically wiring
> > up the interrupt signal and can work in a polling only mode.  That's not
> > unknown for SPI controllers.  If the interrupt is actually a strong
> > requirement for the hardware (and especially if it is actually wired up
> > on this system) then we should drop these patches.

> Keep in mind one thing. This is soft IP in fpga. If you connect in design
> IRQ you will have it. If you don't connect it, you don't have it.
> From HW perspective both of them are valid options.

Yes, that's what I thought was happening - this means that it's valid to
not describe an interrupt for the device.  It's not like a primary clock
where the device simply won't function without it being wired up.

> Then the question is if DT binding in Linux are targeting HW capability and
> configurations or describing Linux driver. I was said multiple times that it
> should describe HW not actually what Linux driver implements.

Right, so if the hardware has an optional interrupt then the binding
should too.

--SiPyTjI69BrnJyTx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmlwyCsACgkQJNaLcl1U
h9DyUQf+LVD7Gc+SgfXEykBnXJw2If/wRiChKN7PF68eddjGAjq41ajszudHSiHd
eS2tiOFhYAu7cPqFfbAAVS6RC/AWxkFmnW1lrtthmFxBxP/u5BreSU0klfgnJLt6
cLWBclxBiT0gWRIl1FrwtBjqGxpogSvbVaitqj2zxMHKcr+oK8lSAphqCrZeb2wj
g1tdDCP29kqYVhyJQQy/wChqj4qObcw1cgtd+T/9MTjJ9iFJJVo9LlXGyLB1yQKR
4jXb8fkoa7lPmOvCVof8dmucHkZLKQgUFdGCM/qU04U2ToBRF2gjzkLUUJH7dWD0
pXdS9uySGCyR+5tnfPIgoLcf17sf0A==
=srkY
-----END PGP SIGNATURE-----

--SiPyTjI69BrnJyTx--

