Return-Path: <devicetree+bounces-70915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CAA8D4F89
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:01:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DDC9B24197
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3AEC18E10;
	Thu, 30 May 2024 16:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL7bmRgE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF40A1CFB5
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717084905; cv=none; b=REeOTpQi2rE0whZ5d8rCytytWmfTbpTmQ9e2uurxXW/X/yFRHz2U8QuU035CG5uSNCN7YkcucfsQbpC005/aChfc/7YmClAQLGBOX/20UYZHEAucjrDKnGD/tzYarDP4pZqCkqKZb8AZBc65scM/SRGswTG2lUCcEp3uMNcnWSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717084905; c=relaxed/simple;
	bh=FP8/5FQncnWsBLeEJyks6gInPyOgSPm7Rv5Zub73SAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V6Hb7lmy8ydmVoVCcHNx7QxoZ4LGljxYynVmmdBuJHuLwsWyUsSBv2SrSuXITZh9Cb8QoQ1uTH3agbNlLLu/rmsFZf9EIuQvV2Y35qiJcpfTy+WuX0c16bPRrljVI1/dmHQYL4JPNSG3DTNN3ibQeWaZorV75SC3p8+o63nu3gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL7bmRgE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B77EAC2BBFC;
	Thu, 30 May 2024 16:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717084905;
	bh=FP8/5FQncnWsBLeEJyks6gInPyOgSPm7Rv5Zub73SAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pL7bmRgEb0J9tWmaHfOnM5mHqxmnFxqsysjHbNYmA/k9sbVt7KqH0VIr+Ul43l1qX
	 1jDsrvGerBPUbumUczNEl6EFTJrGdHdNjOY88DfRVpqKKCSrOqD7s+4Z+hMql7lkGL
	 mlrs4QzQZPC3heBY85/UvLvu8JS78L/MqWQzlSoMmS5YOhX1peBiaOTmliP2feDBj4
	 Yvhzgzy0Qu9HWRfxhy2lTz/1nhCN3817T+aY7ePSF5+xszH1i/QMCOyI/FSIthFduX
	 wcaOAQKE5qN9NluLT1oyqsPf9IQNBEHvNoAEXKy9LdfVmdxNdI+QWgMU4yCV8QMoSR
	 m5lkFgMBjMEVQ==
Date: Thu, 30 May 2024 17:01:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	John Watts <contact@jookia.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240530-satchel-playgroup-e8aa6937b8b9@spud>
References: <20240530082318.40516-1-ryan@testtoast.com>
 <20240530082318.40516-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="02T0Ro5vIUzEWiAz"
Content-Disposition: inline
In-Reply-To: <20240530082318.40516-3-ryan@testtoast.com>


--02T0Ro5vIUzEWiAz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 30, 2024 at 08:22:22PM +1200, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
> number of handheld gaming devices made by Anbernic.

> By consensus a
> vendor prefix is not provided as the panel OEM is unknown.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    spi_lcd: spi {

The "spi_lcd" label is not used and can be dropped.


--02T0Ro5vIUzEWiAz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZlii4wAKCRB4tDGHoIJi
0nVMAPsE4m1GYmW/3mLp51oYhB61w4I2oTPHFg9asROk00Hi2QD/cjtW6i4X3Okx
wqk1H8O9+xjsQ/5gspA7xFcIHQCQNQU=
=YXkF
-----END PGP SIGNATURE-----

--02T0Ro5vIUzEWiAz--

