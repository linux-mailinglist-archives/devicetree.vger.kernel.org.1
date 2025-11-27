Return-Path: <devicetree+bounces-242841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DBADFC8FB34
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 18:32:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 10F8D4EC416
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911D92D6638;
	Thu, 27 Nov 2025 17:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVoISbcj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0AE221578;
	Thu, 27 Nov 2025 17:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764264624; cv=none; b=jfEkW9lYjq4A5IbCnR0clqlWV3nNmd6W8wYAHRKKCO9QWTBbtDtcv6AV/OMj1wPzTShFoOt/TBGTd6COP0aO9x5mXOBrkP79Tnj8sK8NXt61TdKVipqN1le2SF5jHAKdMNdApmQREflylM/HK9Kkk64wyUu8igkDLRIOeQIOL1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764264624; c=relaxed/simple;
	bh=TRqI2kajG3MpFHcedh0f/LFtV6jlxn9lFMGnLAS5L/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DWTb+OKvbheYeswzWOt/Arm/YtP6S6m8nuwL4nk27zO1T7LAPzy5KgEjFb4GX1vpUNkAufob22XhJ/zgQAflIVGB4KSG5MyMZ6Wna5+gVXDP3Yi4yTCVKnR/ifSir8aAlD7pWb8QX+2scwmIrdquEGmIMu26DaspmPJks1+JCCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVoISbcj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 818E2C4CEF8;
	Thu, 27 Nov 2025 17:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764264624;
	bh=TRqI2kajG3MpFHcedh0f/LFtV6jlxn9lFMGnLAS5L/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVoISbcjJC2JQyqpT0XlEeM4acwQB3Nr5+V3HDRO2F0WhG8kMHkH1STZIhelG5Pg3
	 0DsFJJt43r9BagkRTku3D447zCEW+BTd/UMYQeY20Y8DJDuyuuhUzpvwyGaDvGZCme
	 Jq0addUt9zQU1mLLVVdDUXZi8b2zl3Hwnp104MrqCb15WBvomN1zJFkqbvAg/4ZITp
	 JFrSOGSuBXiwOAyUcBAnyIQSSpzYyoxtnorJoOC7UgRqtI8bVXGLSShXlcQcrz+ia7
	 9pp2Um4+ekdDDZW93YeJMxTGurfslvuxmc+RF05eHxhHhN8k0JYnjDX47cTcvQ+d1a
	 vuOs6XbNNNCWg==
Date: Thu, 27 Nov 2025 17:30:19 +0000
From: Conor Dooley <conor@kernel.org>
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add compatible for Amlogic
 S6/S7/S7D
Message-ID: <20251127-panda-detest-8a5454dac059@spud>
References: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com>
 <20251127-reset-s6-s7-s7d-v1-1-879099ad90d3@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PyJOIfZRJSpZTrvf"
Content-Disposition: inline
In-Reply-To: <20251127-reset-s6-s7-s7d-v1-1-879099ad90d3@amlogic.com>


--PyJOIfZRJSpZTrvf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 27, 2025 at 03:30:31PM +0800, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>=20
> Add compatibles for Amlogic S6/S7/S7D reset controllers,
> which fall back to 'amlogic,meson-s4-reset'.
>=20
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--PyJOIfZRJSpZTrvf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSiKqwAKCRB4tDGHoIJi
0tH2AP43SN9VXKPMwWnwJ6H72N4NrnVMOYGLiaodZKgEkMpXywD+Pj5xkLfnb9xK
o9CPw6OaekkvC5EFHti+AbOc3tXIewo=
=3ECP
-----END PGP SIGNATURE-----

--PyJOIfZRJSpZTrvf--

