Return-Path: <devicetree+bounces-116899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6709B4505
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 09:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED44D1C20D16
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 08:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 619162040B5;
	Tue, 29 Oct 2024 08:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="m6iiC17m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8C720408E
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 08:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730192174; cv=none; b=er+tep946rmjCmxHQAftyiv7J/mATz5eYC/RDNNng9U1lx+F06n4FMxS23PqJleey9zmQ0BaQN7e5KKAzqHryDcRrlelQfGKqDC2/KYLYA0aHcDHLXaYJxqQ+cuUmfpDIEIS9RkRpQ+PfOlcig7Q4rfFbJ2Zvmo+rXkgKnxqHps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730192174; c=relaxed/simple;
	bh=621QT/rt7ppLCdf7pdKUgsxJWg9USCuHr9bCXeE3uYE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EXFGgkdvkbmW0bwLYM36TaqbHS7wNhF2Y98G8a6P16OBjSzy3iN7U3lh2Bruzrg294caGTmgTLDzDpMfBOh7cHbPG2kazeiJPTdCHNH5YGUSky2G8MQrlj0VzNEGeVeU5OY4SjxPnUNRn0yFUv+Iqm/JxUwBmQ75MrqLAlvjtvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=m6iiC17m; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d4b0943c7so3489864f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 01:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730192170; x=1730796970; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q+tIuf+pw7VgqaoFXTVPLLVE0V3c5Y1bGL0baofA3s8=;
        b=m6iiC17m9vkVd9SlIcGeqR5+84g1nCBaUyVmMnmfxVQ6ZjG/2GozCKaUPYHP8pDkO2
         UgHWLK8OP5DgFGwWfV6Ff20GAvSE+fgJaYJWVT6zt5B0hWL6rXWzwT4PweOKCRlo3omw
         jOzs85ukT2WykWZYDmAByKPmRZxqv5mNS5E1bN69Y2Y+yzOp4OeowIJGbfqdgV5cxezx
         2T6tpxr/VxyCH+7TuhRtCiO7fp0oFDQPA8AkxgFTOdt+i85vIo7xX12OgyaabHxV4HdT
         q5Ps6A5ouAvgNNPV0TlgULCSBklwaU5LvRJRmPBSFX6dg61lK76S63PAyAvrQIjGETCz
         xKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730192170; x=1730796970;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+tIuf+pw7VgqaoFXTVPLLVE0V3c5Y1bGL0baofA3s8=;
        b=MnhfX705SRx9yXJ5UfgquqgOHmML0D9faSaxFSVWBRzVL5i55afcoOG7BlhJSA2mjl
         nOtv4FbAPr61+pTEmF+Mdz+EwdpXPUmU9AK/aYcdv7XJTNrlf06CoVr4nCMUKem2C2ZU
         asSx/lRejS3icWJ5EkmLFPzdAwOJdLhEcbBqpCWKy2FVgLCaWmJgnFFbxyOMeX3Axv7c
         irbZ8fNtqUX7M/amfMLUNYiOp4NndKW8ssSZEuLY+4az/23YKhjJMgnSXyMevIjrC2Rg
         JqqrqvrNiwTYqpbO3VzLp0wXyxWLYDjsnt8t01v0xoeveWZR/JFLQNM9cZJwacg4209r
         J8qg==
X-Forwarded-Encrypted: i=1; AJvYcCVSiko7XYgEgHsDQ7kEJFtzj9ZaZzv2ldvc8G8UF+DBsNuYVG+1leo3hpVX1A85otnl0yTNUaoqWCDC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx87mad0fLkVi94OuQdRNV3cnOJZ/G38QP81iopPcr7Qrc/aJEW
	FUYPYsRub1C0QRoASZk4/Wvmu0HP41Pt7oLzxPqUWKvF56vyFERKHiAoBP1abYU=
X-Google-Smtp-Source: AGHT+IEA5JJWXtQoHZ0PdS/MJdUSxxPT9oA+1aQ+m1nReUn2taETur8wxSZ4YWpYW5tyNcpUGNlwNg==
X-Received: by 2002:a05:6000:1f11:b0:37d:52d0:a59d with SMTP id ffacd0b85a97d-380610f2bd6mr7564818f8f.10.1730192170391;
        Tue, 29 Oct 2024 01:56:10 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b132fbsm11900069f8f.4.2024.10.29.01.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 01:56:09 -0700 (PDT)
Date: Tue, 29 Oct 2024 09:56:08 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Conor Dooley <conor.dooley@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, Aleksandr Shubin <privatesub2@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Cheo Fusi <fusibrandon13@gmail.com>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v10 1/3] dt-bindings: pwm: Add binding for Allwinner
 D1/T113-S3/R329 PWM controller
Message-ID: <4ioz6f6efs2uhf5mitb4xhebqeryyz5ukple4fkn54wpqep3c4@4ktefld35c3s>
References: <20241011102751.153248-1-privatesub2@gmail.com>
 <20241011102751.153248-2-privatesub2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ulmatopmaqdyrkp3"
Content-Disposition: inline
In-Reply-To: <20241011102751.153248-2-privatesub2@gmail.com>


--ulmatopmaqdyrkp3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v10 1/3] dt-bindings: pwm: Add binding for Allwinner
 D1/T113-S3/R329 PWM controller
MIME-Version: 1.0

Hello,

On Fri, Oct 11, 2024 at 01:27:32PM +0300, Aleksandr Shubin wrote:
> +  allwinner,pwm-channels:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: The number of PWM channels configured for this instance
> +    enum: [6, 9]

I wonder if the number of channels is a property common enough that we
can use "num-pwm-channels" here instead of a vendor specific property.
Or would you suggest a different name? gpio-controller nodes have
"ngpios", so maybe "npwms"?

A quick grep suggests we already have:

	fsl,pwm-number in mxs-pwm.yaml
	st,pwm-num-chan in pwm-st.txt
	snps,pwm-number in snps,dw-apb-timers-pwm2.yaml

As a follow up this could then be used by pwmchip_alloc() to determine
the number of channels if the passed npwm value is 0.

Best regards
Uwe

--ulmatopmaqdyrkp3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcgoyUACgkQj4D7WH0S
/k4BJwf8DvGu76czyjVYmp+JyjZGGyzYFVym3ObWj8LAQZ7pr5F6O61BxMrIC/a4
RWe9joUnrwLy+UJgxerMNtgS1TgnCgb2r8VzdheUJcDwTjPBAPvaa8eOpybmRtSq
TxJcKF0qlT8bGtWZjRsx/UYKWLZUrrhgOt7CM0LY4kubCeDEwruXHZSy/FtuPvlM
STFxNDN8fT7KuaqVY7HYvYZw6tOROAwFaxQhMWUIWQIruQyF4+WJ2bVgBQM77bxK
OgE8BcqpFcCB2NU0qnyDXMqalDPYeh9necn8LrbQ0qXtE11vn5+bOlJvOHQhet8x
DYJfsCSOcurHrnvmYo50GYpNdoJUrA==
=2jh3
-----END PGP SIGNATURE-----

--ulmatopmaqdyrkp3--

