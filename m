Return-Path: <devicetree+bounces-154871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19381A54C0A
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 14:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A58893A6E6F
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10D3620E037;
	Thu,  6 Mar 2025 13:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRw0Z3xr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DB220E024
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 13:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741267459; cv=none; b=do5kclgOKx3ERw5uYx5y3IFvk66ChgQm8m9STYe2X51it80CIHZO80gKXHlSx3+RTI7ZJUwKTdY68Nqbe/9a6NReMr/RD8g2X1+sK+7raz87vqsCACj+dLIdn2/TYBv3yvKEdvE/jhO9x6gfRZk74FuQ1dPyx6KLaSvLEYmOfSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741267459; c=relaxed/simple;
	bh=yEyQhhaSjqb+DXE9qFOzKvbfoTk79XjOIz7G6/RPWlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sw2I31xlG8/jRNfsfEctOQ2AzTLCwxJR/ZO1ow8iex99AIyrNxlvpwD6X3yofM1MQnJ4ZlNwT95Zm216gtYPg3P3W5MpbaFZtjKom+OMD4J0rctCfLi1xb8AzIiAR1SkXHIH/o6bL98K49W056qg/I72n0V8bevvaz63evvFhGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRw0Z3xr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59360C4CEE4;
	Thu,  6 Mar 2025 13:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741267458;
	bh=yEyQhhaSjqb+DXE9qFOzKvbfoTk79XjOIz7G6/RPWlQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iRw0Z3xrUwm6HrkldP3K5FZHJDnP2PMvFZNZ7Stf26JMngR6hTr7rmlElXAiPdKEo
	 VfpJk69ZwzwyJ34XkRm0Opu354yGBhJxCSlqVJk+zMWhheu3BYbk5t/pCE5hqIoOcU
	 m79kxbY9a+RE4CSXTQnSNJJUQJs6POZTy3EOGbEGgwcubGqIApsidX9bcL2iBZZXzy
	 bXWzyAirvp2WUu80gGopVikk565tJP5j0uGesJVvHRINcTmzkfnyd2DWMuQeDrePA9
	 H6EHPQpR5PKXjGhr7lUA0gAwPK0ERntdcHg9FFYL7rRXgA1CxR8mISAWpOBCqjCgUl
	 EKFCs6wP6Ujbw==
Date: Thu, 6 Mar 2025 13:24:12 +0000
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH v4 1/2] ASoC: codecs: add support for ES8389
Message-ID: <b76309c6-9f8d-48d3-b4ef-9b51efe06acc@sirena.org.uk>
References: <20250306072354.19987-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aRQddnKmtqkRfvv7"
Content-Disposition: inline
In-Reply-To: <20250306072354.19987-1-zhangyi@everest-semi.com>
X-Cookie: What!?  Me worry?


--aRQddnKmtqkRfvv7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 06, 2025 at 03:23:54PM +0800, Zhang Yi wrote:

> > No, the machine driver should be configuring different TDM slots for
> > each device - that's the whole point of the API.

> We are using multiple codecs as a single device.So we can't use set_tdm_slot to configure
> different slots for multiple codecs under one device.

What do you mean by using it "as a single device"?  Multiple CODECs on
the same link is the main use case for set_tdm_slot().

--aRQddnKmtqkRfvv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmfJofwACgkQJNaLcl1U
h9AckQf/UgA9qYwstgflBVwRziKY7HlztKzqwHQHgRX2fbwt7Qok/EZZBKIXNZqN
yTfd3vYt9eBImhiGKvLsyRLGM1W6tDP0TdNvXDPIQJh5tEGg6mtAdZoHcn+k27Rs
84UcJ1hnIe9LHK1ghy/CprH6tcWmZJnjG67B9K1fc/SmDeIoFHsWxdXsf9O5rKxB
gNCX3mOLBm/dURWhWzjH4Qz+M1uYvTA4tlyTUSM8/fkAfliPsJW94wdXtCm59aNS
gIWyvc3UKZYWWsY/yhpNCUFn0wHR28RQu9Siph5wLexiJ0OQgst4OjBpGFldXaBG
YFpWtxg7xyhOkf6+ZePyEzvNWBBfEg==
=2LCd
-----END PGP SIGNATURE-----

--aRQddnKmtqkRfvv7--

