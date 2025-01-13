Return-Path: <devicetree+bounces-138057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA99A0B91A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C18A167A12
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12F523ED6E;
	Mon, 13 Jan 2025 14:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFz8S0J7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890AE23ED51;
	Mon, 13 Jan 2025 14:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736777481; cv=none; b=IGvF2JneZzJtdX5a631EoRAv2o37VrOw5OP08H8f+2jfWfGPE0Ia1Tn1rkz70ahMvTW+OZhfXx7IBMy5gjFD1WpSCgXJLsFNS2im3engWVJY0jgJB0wdBrjFhIuowjkBHssi7pjGxz84m9Y+mjZci0kcrrynQI//Iae70+xRUgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736777481; c=relaxed/simple;
	bh=GqaN3+SFZNcBDRY9ScVfOywga1V0Cb23gLVTi6EmOgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rHavkcTLcnO5r6H3/polylgP6dv2CGTFDScMsgn50woaCrjUT+X2b6MkkTjnVF5yZVmWIauhiXP7K3LuipTQUW12fxFcTslAO/x7C5G5l3KG704gY9kBiDoUbSrrUg0+28u4pL8+MDwU0xljQXGZH+jDCmbtx4aRxfzdEuJN9Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFz8S0J7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C4BFC4CED6;
	Mon, 13 Jan 2025 14:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736777481;
	bh=GqaN3+SFZNcBDRY9ScVfOywga1V0Cb23gLVTi6EmOgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VFz8S0J7Q0gvwmH+GmC+uN6sHmLzG7xlueqqurenjTsXHbi7HtUki+I1T2qxmw1sr
	 mSpLbDrobkQAGNBR6CBwfIZJPc9rVstPHVzqF4fpThrlGgc27ii8sBglWRY38bcB8E
	 LyyV29GtALgx9D4wxjwxPzFDp+pwz4eMOODcu59ghtPbM/gPh1OweUfnL1hQss9Lac
	 PlNvTAZkFVVuhPUPIgYv22r4IhHg3pO7dU80GrOZLa5lWBy4m1Cr43AdQh5gyDZYpL
	 K8IkN4w+y7R4CNy293JmxqWfVWrMmffPdK1i2L7qtbh2Tu1USiEeUqdidWSd1wPjjU
	 x2gCTlY+N4A7g==
Date: Mon, 13 Jan 2025 14:11:16 +0000
From: Mark Brown <broonie@kernel.org>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
 <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4EA8TZnBQl64Q46U"
Content-Disposition: inline
In-Reply-To: <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
X-Cookie: You will outgrow your usefulness.


--4EA8TZnBQl64Q46U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 13, 2025 at 02:07:45PM +0100, Kory Maincent wrote:

> +	rdev->pw_available_mW -= pw_req;

...

> +	if (!of_property_read_u32(np, "regulator-power-budget-milliwatt", &pval))
> +		constraints->pw_budget_mW = pval;
> +

This is only tracking the currently free power budget which both
restricts what we can do for tracking things like mismatched or missing
frees and means there's less information for diagnostic tools.  I'd
prefer to keep track of how much is in use and check against the budget
when trying to increase it, allowing us to check for releasing more
budget than was requested.

There's also an interaction with hardware with support for enforcing
power limits, either via alarms or by actually limiting.  Current
limiting/warning support is reasonably common, we should probably be
joining it up with the power limiting.  It's fortunately not used
dynamically by anything at the minute so we could just remove that API
and replace it by a power one, given that nobody uses it and there do
appear to be users for the power based API.  We do have some things that
set current limits in constraints IIRC.

We probably also need something explicit about how we handle baseline
load from things like passive components, the assumption probably needs
to be that it's negligable.

--4EA8TZnBQl64Q46U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeFHwMACgkQJNaLcl1U
h9C7Fgf/ZrDq+0uds6OgryI/aZh6h90aLGvztpQ8ImhY3ELpqj427AYJA83zj7id
5wb2a7FODKVOd6F2+xEAkBC5H3t08Phbuz37CS0GoK5U9zubeDZmJRRpCYqkkuAh
o/+eCxykbNs+MBustQ5UyczX8RhDBEt4e53VH6zFUWBv6M+T+yPPUebQvBC1njCQ
x2rkavTBRD8fwnXgnbZPbrMYugBSOrjKrbgVQPlkYplZjCdo01P4Qp6PIjUdl2+C
Anmfybj2ALnR5i4V25LlH0B+1DodOTiQwjY9SFwQijkmfOVTWMuMdHg3Dr7Ov/a3
a8Xmn8gwBDRKtZlU4sgUQn9X116lYg==
=M0x3
-----END PGP SIGNATURE-----

--4EA8TZnBQl64Q46U--

