Return-Path: <devicetree+bounces-109327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 272D899611D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D72CA281CD6
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DAC2183088;
	Wed,  9 Oct 2024 07:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lUN8gD02"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF7A17E010
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459675; cv=none; b=CWphgwOPaBgwNoD4seRrCmRDjv/qoLOGql5shDrWdL7qXSnoE/SBRk9BMEbsaWXi+MLiP0DG8xuAuVz5722vP5IrTWvMUAMOfa0+8sCTk4uEGEDdv4UhrACosDgXOuAwQuofG+Vb18PGAFeZXknmDvv+qlN/rhoHzIvdfkEPU78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459675; c=relaxed/simple;
	bh=8Om95y4F6es/Wxnlpk2uQdvoXMVAL2YO3FbbfSfgtM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tqEluKPDeMkAC+M0OmuAB0v7zk25dKrEMPC0fn9GOCluROUnzdl8Imh2Tid1hA3XKLZ2NvYm1n+GIFsvqjFGr/9c2LaiaxZyi8o/WcV9IRZoVDj57CjrCWzG5RgOKQOsJxMSnAdOp7/eBhNn0mdkx2uHz8Haxf+1VQxTuEvRWIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lUN8gD02; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d3ecad390so150270f8f.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 00:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728459671; x=1729064471; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y2viIowtWPbXMalgfD8+O9ZrcVwo57XCKNmEpCFwYjQ=;
        b=lUN8gD02yxE0qRJ8Feslg8hK0KALM8ZjRnAs9aYwMBdFKtrlNDc0b2U5M7u3x5KP7d
         uQgCI5vbIj/4AYO6IVSzUJKNSRZuFzndNmIaEfJClGynP7Nlc07/v1LOvH8/HY+8qbrz
         mARjtAHkX4tpjvd1ewOAPZWIh0gN1vPYGYaMwl6Aply2tTCA24gn85GQwtLDhVehLcJx
         06g+TQrgPfUHzJG6sIDEpZLIIEMKPvMopJrzlF+JG/MHEmjPogf44fn8MRdGtpiC5wF0
         cEII5VQ+5za6iJYE6emU2WzL+usYTkSP7H4Ek1kL9ZotQBMb0jTcSaZ+9+rKsOds2tFn
         4K0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728459671; x=1729064471;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2viIowtWPbXMalgfD8+O9ZrcVwo57XCKNmEpCFwYjQ=;
        b=JVlQSP/GRVeH7xih1xqeGWF4equXW//BVr+pfOhFA2TCebofjG7cOwkOZjl+r2aQra
         5fudWxd4z2S0BFRVjmHB5RDaaZbjwsuE8qH0p4FCD/lteEQCYAahHGMP2cqNQGxOa2uK
         eC+9sSbKFpnYuKh4tlQ0WouyjoQ05bZBjlGkVlZe/WFWl7Xs6ERiqhZf0ATtumo3k3MX
         FSVSwwM8awtuV3JBIPA2F4cgWLOkllp+O6voJtu8gZCZgCvUO17oDfHrYF4ImbL3OOfG
         dHl6QKmHwBNLIg+VgfCCSwkZWZD828o31f4Qez5N0j/1n8oL0nHlfB6KSilp+/T0QabN
         ZckQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPb6YVgXLF7QDcRGxMeoh9QaYgc8ntXbjofXXL4I2YoEpaOmwDlagaFNTNOLotYkSGLQacQzbUxdV/@vger.kernel.org
X-Gm-Message-State: AOJu0YyyKxmxQqXJNbmcs3ZWbqTvKo4H9iitQk/cIWudVTZ2MDAlxoDS
	FPSFKpcNW8MeiQmbP/IOZTi285gWkLDWW4KIUbr8tNYf5dGCo32qyrp1a8K4Kps=
X-Google-Smtp-Source: AGHT+IEyd05ui1VmLA1rJ5jgdYGapO6L5DJBjVw/NMVD99NroiPJMW7cLe8u+UN9UqCyNM8dGfTC/g==
X-Received: by 2002:a05:6000:23c6:b0:37d:321e:ef0c with SMTP id ffacd0b85a97d-37d321ef108mr2946699f8f.11.1728459670763;
        Wed, 09 Oct 2024 00:41:10 -0700 (PDT)
Received: from localhost (p509151f9.dip0.t-ipconnect.de. [80.145.81.249])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d2e65d618sm3025569f8f.23.2024.10.09.00.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 00:41:10 -0700 (PDT)
Date: Wed, 9 Oct 2024 09:41:08 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: kelvin.zhang@amlogic.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/2] Add support for Amlogic C3 PWM
Message-ID: <nrrw2vvhyw2gsbqpne5pgw43yyp4uzkjq2ioskvjjwgfk4ahuo@rryumcqojbhm>
References: <20240914-c3-pwm-v2-0-ac1f34c68ac2@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3g32dk24m6nlnxrf"
Content-Disposition: inline
In-Reply-To: <20240914-c3-pwm-v2-0-ac1f34c68ac2@amlogic.com>


--3g32dk24m6nlnxrf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 14, 2024 at 01:48:57PM +0800, Kelvin Zhang via B4 Relay wrote:
> Add support for Amlogic C3 PWM, including the DT binding document and DTS.
>=20
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
> Changes in v2:
> - Rebase this patchset due to recent upstream changes.
> - Link to v1: https://lore.kernel.org/r/20240906-c3-pwm-v1-0-acaf17fad247=
@amlogic.com
>=20
> ---
> Kelvin Zhang (2):
>       dt-bindings: pwm: amlogic: Document C3 PWM
>       arm64: dts: amlogic: Add Amlogic C3 PWM
>=20
>  .../devicetree/bindings/pwm/pwm-amlogic.yaml       |   1 +
>  arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi        | 364 +++++++++++++++=
++++++
>  2 files changed, 365 insertions(+)
> ---
> base-commit: 5acd9952f95fb4b7da6d09a3be39195a80845eb6
> change-id: 20240906-c3-pwm-d17072517826

Applied patch #1 to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next
=2E I guess patch #2 will go in via arm-soc?

Thanks
Uwe

--3g32dk24m6nlnxrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcGM5EACgkQj4D7WH0S
/k422Af/WeAeMG12qlVL9TxVyfgCoOaW67cCbyllbKGrSYC7OkgI+ujL4WpeqBw7
S0buIREm1V5mtmzXBboD2scB1+QGKalmVSObFXMtgSfJnGszpUViETfwBI9c8az9
oXC9IJSfmF7aqlfugMWcAhrlIZFXEn5I6RMQi8e4fM+F/i83G9aoXVJ6qqQKscr8
uvcpfGZ+hXCdcjPLX2nryNaqNqmlHBk7RYncDYYLPsAnM1gVITTHf0rc/cjKotVj
jcFV+dSSWr8bz6bR8ANt/Tv4reR+NVl3fzmEeQhkWT9gOZEy1YFsnjA+v7L+ect3
+CVMHadCSQx0G3uAK1jTKvVf8PyFRw==
=Njq5
-----END PGP SIGNATURE-----

--3g32dk24m6nlnxrf--

