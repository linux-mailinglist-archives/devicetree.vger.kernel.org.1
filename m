Return-Path: <devicetree+bounces-177907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5EBAB995A
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0220F3A2418
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 09:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4AB42309B0;
	Fri, 16 May 2025 09:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ivE5F4p9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00151230993
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747389027; cv=none; b=fw6nRnEx5HeUbohEdobm1QitzTZFoCbBA2q9JC6BVUS+7q1SlVW2emBj76OEoMF48csEbNto5HGHdHNt8GxCmIFJagEZuSBLousYBB6+F5ignFlBL5cnNTEOE20WGZiVwFbhl9dOCyOs3xCBRKVlHWsY7gSHHO0iclScwNtZhb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747389027; c=relaxed/simple;
	bh=w/bSlJSdmlkbWHZjun7hsykkC3laoNdDkksj4oYoPL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=meFErXEzOSH+il6mjYfInacDPfyrBXj25RcyRMYtnmRVeuk1YdkZIGZE5FT066nMagcza6k4k/JxhkUDCtmV+iRqW+qa3Q/lfz7VNQ6L0z3L1sKKsts6LzYkAKegJqlPolCseFTr1Kglqt513uhlCg+od+SHyjqW09XRX3on06A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ivE5F4p9; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-442f9043f56so8774595e9.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 02:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747389023; x=1747993823; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w/bSlJSdmlkbWHZjun7hsykkC3laoNdDkksj4oYoPL0=;
        b=ivE5F4p99pDlOlT3F66KxRADg7mYTsl88XNIv8zk209vvdQoqzc4mCCckH9uveam/S
         c/djnu++sqag+I2bpEFqmTkpTOPuJ33Q8nLE/HR9Jf9HTfhK8ceU4qGRJg+OOHltV33K
         aoniOtFvBJpshXy+bvVABB5lOtFpVQL3ldQOkAt/T4p+AWznDTRmU7yKtlkGmH5A/Lpb
         P+oMqXqsaENL22wAMQkzzlx6hvtWuOy6aNeMYKFyIXprVWk8g+p/0NUKBqwlQVm7scSD
         zyhXHrVqExmEv+S9O55ejEutRKor/ctzJ3F8i3JP5ZgmAOH+l+gBapZvMOxwG/BVZScK
         Rgcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747389023; x=1747993823;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w/bSlJSdmlkbWHZjun7hsykkC3laoNdDkksj4oYoPL0=;
        b=fe0G7U9HaPhmdM7G9jo0Mm53qOvYbWLzbUpMk6gDj8fOeH4EvfDOgS61eXJj6X0yP9
         JzNnT6p5vTcheG8oe68px0bdgnbwvf4AWA19rE3q9c2HIoNmCLOEHuXcnBEGR4mi6LMe
         862FxPCiwt7ZchJ7gPJ0FEqKqv9ptxO1lvr9PILUFV8uh31c9YEgFZfhz50e2+EuveYB
         zp0Gtf+/VDMPnfrrUOQD3z/BYHtrixlOOdZLY4fJsyifLWy1JOxymv+AZrpYSag79jEH
         UBaHaynqzQWJH40mfSAvCkOr2tVmT/I7S54DyNFCsRALlr7+vQHSRvGMGX7I7iWW5zgy
         X12w==
X-Forwarded-Encrypted: i=1; AJvYcCUr6sQR/x3+2iOfXZkWBf16F2L7zz+wZlQ3Xg8SXU3sJahJPbKbBRFp/AgrFhibwEUQsl6aLHctH4QJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+UtaeG0GZcBUfE3Y+xAA4jtKLZ1DRy1WeleEJqxDvT1tTTd0O
	6LLxFzoJxRXXLfMBUNmZPZL6hHqg/7Tx99g0qzuxtdZnpX2uInMBJlcZV7JekJMse9w=
X-Gm-Gg: ASbGncsO8hoXLg2WiPlb6dIUGr3ECZe6jvIki/6Z3evEtQCq7PAx6z+Kk2svJBFYwKA
	N0u6ivZo1n3xoGWqt2N+4GviibM0cH8rn1x1UiL2ynA7lFyOpqfNmsP9JcQOvxJ42TyaxLZOkSi
	KC+eOPVHekckcmVzKjIOqaG1B69dWmtBXLHgpqtRG7ozGMTlPjvKLWHAkZfAQRguDj4XMOQVDDG
	+moWSB+6spsb5F5duxqclh0GUlDNVUtSd0Z6TTw37OJ8z2D/wzfsI72FgGhvGkKCisTp06sJGFd
	qMUErNg11l9Qh71ypj2I3sdv41PLasNFf4igK/6QjVZYemJt4FlNecYQYIC8GUK7saXeMHgRjFr
	QCo4KpBQF9M12EASwYuSN4jKFTgig
X-Google-Smtp-Source: AGHT+IG8U8vuqf70rCyQDtiOWmQQMlATnOz4eXDJINSunO9kjrn7q2b9sgtlTI0vMJw9CTIra++GNw==
X-Received: by 2002:a05:600c:4f42:b0:43d:abd:ad1c with SMTP id 5b1f17b1804b1-442fd60b64dmr24944235e9.6.1747389022959;
        Fri, 16 May 2025 02:50:22 -0700 (PDT)
Received: from localhost (p200300f65f00780800000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f00:7808::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-442fd51583dsm26876685e9.22.2025.05.16.02.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 02:50:22 -0700 (PDT)
Date: Fri, 16 May 2025 11:50:20 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: stm32: Add nvmem-cells to ethernet nodes for
 constant mac-addresses
Message-ID: <k5sznrkn6shjn3d5uj675sktkgwf3aivfr7hchialln433ktjs@u42bfyo7tnej>
References: <20250328171406.3307778-2-u.kleine-koenig@baylibre.com>
 <xvhstvgs5bpfebeolozdbxh2empviijqq6hg2k2kuav5xykpqw@a3jgkrqzj4xm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6opi2kcagpe26yym"
Content-Disposition: inline
In-Reply-To: <xvhstvgs5bpfebeolozdbxh2empviijqq6hg2k2kuav5xykpqw@a3jgkrqzj4xm>


--6opi2kcagpe26yym
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] ARM: dts: stm32: Add nvmem-cells to ethernet nodes for
 constant mac-addresses
MIME-Version: 1.0

Hello,

On Thu, Apr 24, 2025 at 05:07:00PM +0200, Uwe Kleine-K=F6nig wrote:
> On Fri, Mar 28, 2025 at 06:14:05PM +0100, Uwe Kleine-K=F6nig wrote:
> > The efuse device tree description already has the two labels pointing to
> > the efuse nodes that specify the mac-addresses to be used. Wire them up
> > to the ethernet nodes. This is enough to make barebox pick the right
> > mac-addresses and pass them to Linux.
> >=20
> > Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
>=20
> I wonder if this patch is on someone's radar?!

I still wonder. Is this just due to -ENOTIME for the maintainers, or are
there doubts about this patch?

Best regards
Uwe

--6opi2kcagpe26yym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmgnCloACgkQj4D7WH0S
/k7CMQf/WwQ49zZfeEgNvOM7sUOEODuoH5TsG5AeMQFlVrrfQhA4KJYPKKM36JLN
aGpv/eqpwjRlZY6ur8W4bTvjTMfO8vWhQgHTJV6uR5ZWkOcaTxjrjLtmCj2yRF2J
jeip+Wm6yq9kgdADVApinoD38wgz8V1oUyT/JpQZNUe20lnsxAKYo4mb0L5mjWu9
Np9Vfgu3cPmB9liK2DFaCJ7j6NGXhkCiILu2+9egPMCdF+m8ZYhCBryCULuP2lub
aZ8EW1P2lBercWsbHqq1HZ15EiHZpJbcxRD/yt5qBhrRbSLD0oHixaDXF+yJM5ws
pGB/wSviPXFOMFjOvhbUMlI7zcIaEA==
=riy4
-----END PGP SIGNATURE-----

--6opi2kcagpe26yym--

