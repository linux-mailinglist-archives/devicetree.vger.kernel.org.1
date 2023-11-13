Return-Path: <devicetree+bounces-15377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADF67E9D82
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BC7EB208CB
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51AD91D527;
	Mon, 13 Nov 2023 13:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDPvNBio"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326C208C3
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:45:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DC87C433CD;
	Mon, 13 Nov 2023 13:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883103;
	bh=MWxOr26uLlWPy3C99XP8rMs9jIFJ4texhTXtwq8qd2k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aDPvNBio8D3W3YHpBrYTERDAAVrQeSmiWWi64HLLfuYhNgEg8fHN5g0yn7JYaleoz
	 UPi1B1yqOzsHqnDkCSsO0MDhxLX6fqGbqqI/+Qs28EucA//ih/SGQGjF5mYtVfYhyy
	 GMg/3LqCWVJz0D+BYVedZXjLpwBrQE54dQCrSxArELCQk3YO8N65JLSnV49DPxJ/pg
	 A/tk0/Fxy1Wb5RiiprWByxPUrjF0fhJU7Woc/U5ap6VE87k+XkbginQFZlQBo2b8Wq
	 PwqzTI4BgS1g/GlK0JZaNX/Hmi2VwAJVOmwUlQqnQ6INsOdbRQwud+Q3ol5DqIfPNK
	 GU8pshyvQ7JLw==
Date: Mon, 13 Nov 2023 13:45:00 +0000
From: Conor Dooley <conor@kernel.org>
To: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] perf: starfive: Add StarLink PMU support
Message-ID: <20231113-grip-unstamped-7d5cb2e39d3e@squawk>
References: <20231113042231.457882-1-jisheng.teoh@starfivetech.com>
 <20231113042231.457882-2-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WKmVL2o0UKfz4Sy4"
Content-Disposition: inline
In-Reply-To: <20231113042231.457882-2-jisheng.teoh@starfivetech.com>


--WKmVL2o0UKfz4Sy4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 13, 2023 at 12:22:30PM +0800, Ji Sheng Teoh wrote:

> +config STARFIVE_STARLINK_PMU
> +	depends on SOC_STARFIVE

Please s/SOC/ARCH/ so I have one fewer instance to delete.

> +	bool "StarFive StarLink PMU"
> +	help
> +	   Provide support for StarLink Performance Monitor Unit.
> +	   StarLink Performance Monitor Unit integrates one or more cores with
> +	   an L3 memory system. The L3 cache events are added into perf event
> +	   subsystem, allowing monitoring of various L3 cache perf events.

--WKmVL2o0UKfz4Sy4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIoWQAKCRB4tDGHoIJi
0p50AQDEmAFBeaPIHV8PQTfCU8diGLUj16p5aPyx7zsBQDql7QEA5ptwtjWCQPob
6kV/vvqV/oGdEM/dt/J7M1fVzMY1+wY=
=Zw9w
-----END PGP SIGNATURE-----

--WKmVL2o0UKfz4Sy4--

