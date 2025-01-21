Return-Path: <devicetree+bounces-139918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF7CA178C0
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE0BF166EF1
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 07:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A1491B3725;
	Tue, 21 Jan 2025 07:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fT2W7N8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05482913
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 07:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737445669; cv=none; b=jxf68SFSa1Z350If9k2sZPUCJyDHPt6iImU/N1d6QDq+lI9dxzdu5pkEeWx68aDBLs+88GEOE8uH0BEKZci+V7ovlK3h+KuJEoy32qY3hyLrLzbzVcGDeGfoqRnSPUTrhDLZF2f9nbjyaH2WwuZ2LBfBv7vq6l1X9rRc7KI3grY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737445669; c=relaxed/simple;
	bh=VcQP7IhFUg1F06BKfBvCsjUbQu7XjAEJGPRo6Jfrc9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U4taI1xAsoVxWa+/EZX4Ne74lu/0ncpc46Ps5CtYc3+mxLbYVOCCf6hL5RYsXIc2cczDiLccosXr+cPiBxaEe7vPUlW7qA8FZ8batgt7gOJzQZok6vndlOeJPUKVnU0SM6ZbdAbuNi4wRj80ibNZvs6dbx0npgKjKIKplB/OTPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fT2W7N8r; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aaef00ab172so809800666b.3
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 23:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737445665; x=1738050465; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kHmkI/T2A61pfMW4kkHpuFAyeZJfqURmpjk9vDwC6vA=;
        b=fT2W7N8rwOYWVwKfqxBU1GBxCfpSfIzKg5cfkX8tRPz8Zf2U+wOSeAPV/ozWxVwxw6
         93yTfs5JfSYLlrNqGakfQVReUkxTB7gDoqoENV2Dw7S8whhSKSU84Ne4HPcFMAj2qOrN
         lZLGGK6lveQdwIii55NEry3o1/6ntFKh1kC/AznhnpZGaUvyGGUKCr+xvJDKBCesTdGh
         IDCJ6hqdP37sh+GFeDfFUu7GvdUAf7idLwnO2y9WWgcBkZOSvkQ1c5v/CUNXaUzT3ENC
         xPkSoWZs6WldmCbQoMF8eV07MeKGautZ3dy3pqdjx+mFnpMU8UpB5Xy7YRPrEqcyPAcO
         S5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737445665; x=1738050465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kHmkI/T2A61pfMW4kkHpuFAyeZJfqURmpjk9vDwC6vA=;
        b=lCJKv2i50/ig6qw+3vtJj0ojEjmgr+ViRq19G+Ey70Fxyo1I8HydvcecInxHsQL8Mr
         iNDv2Vgq5ZezhUO2ox1Ra0H7CYQYNCDfaefIp92VTtMay5c2HRgqhn/Ut0kWy5e7wv3/
         pIPD5nsmXDwcfi+3EqXr133sgnzUuW0/5HK5r9PT9t0j3yChqfmuMIkYuwnQdx0ddJWU
         n+YaGzx4QaptNogWwjjDVs1Zm2WdQ+99CGQ3z/HIPN5P2fJT38SFCiFNqWgfyFddbzoh
         q2iE6RuACr8O3VCt6v2pi94Rw0thdIc0dt1lnBa9rpxkaFvCRZlZFU7iPy/EEtu/816+
         HlxA==
X-Forwarded-Encrypted: i=1; AJvYcCVs8uH9xxs46UU/PoAUgokmw1B7X2s8CoLgJd4FwCD93Sh9xuNad0i+pmA2GfjX3ciRl/NpubU19P48@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd30A35Q1phZOmdxjgsXOyGr9JqoAtYu0LUIxU5o7PbFGpvuGL
	m0FkCEMjxR2sp5GGFc66COD6JBf+vsnHPsytmIghp9RbjWnjblF1jQEsIDBjs1c=
X-Gm-Gg: ASbGncvX+yOvt92HZL3af/pgvV9l7J4cQHmnQ92fqKRspKsDrqf72pgJBVwCle26vbV
	o89r5ppMuH6nnKECyvMPFA4XT3V4wJiRMRVshCkU0kKd0BzzbxW4W90atZBR8yM7Uz93xG5Ol4R
	1G76Q8pN/qBJBng2h3BEHbxJJs58wX8drZVXuGnjbx9M7winPMWPy92xE1dEplhlkUJAaxvUAiJ
	F1RDxSJdenVi3yDIju8lKDL8e7ekZJkMlTs+jsL48Xz52Jur7iy6QnkVyDB1p280+RxEk5/4dA=
X-Google-Smtp-Source: AGHT+IEUBI4P116ENXHw5hP8hTyNuBlon7g16FyxICqd0dia9ly16Gi5SE6Z2QYr/PYvdKeGO8w7jQ==
X-Received: by 2002:a05:6402:3487:b0:5d0:fb56:3f with SMTP id 4fb4d7f45d1cf-5db7d2f5b5cmr33434489a12.12.1737445665056;
        Mon, 20 Jan 2025 23:47:45 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f86fa4sm717866666b.143.2025.01.20.23.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 23:47:44 -0800 (PST)
Date: Tue, 21 Jan 2025 08:47:42 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and
 algorithm
Message-ID: <zneb3qwgf52zitcbq4wz76shnmhwfkabbsts3sussjpc5s5tsz@uneaxdfp4m2f>
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
 <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
 <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dyaujgonqzvowikd"
Content-Disposition: inline
In-Reply-To: <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com>


--dyaujgonqzvowikd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and
 algorithm
MIME-Version: 1.0

Hello,

On Sun, Jan 19, 2025 at 03:03:16PM +0800, Nylon Chen wrote:
> I ran some basic tests by changing the period and duty cycle in both
> decreasing and increasing sequences (see the script below).

What is clk_get_rate(ddata->clk) for you?

> # Backward testing for period (decreasing)
> echo "Testing period backward..."
>=20
> seq 15000 -1 5000 | while read p; do
>=20
>    echo $p > /sys/class/pwm/pwmchip1/pwm0/period
>=20
>    echo "Testing period: $p"
>=20
> done
>=20
>=20
> # Forward testing for period (increasing)
> echo "Testing period forward..."
>=20
> seq 5000 1 15000 | while read p; do
>=20
>    echo $p > /sys/class/pwm/pwmchip1/pwm0/period
>=20
>    echo "Testing period: $p"
>=20
> done
>=20
>=20
> # Backward testing for duty cycle (decreasing)
> echo "Testing duty cycle backward..."
>=20
> for duty in $(seq 10000 -1 0); do
>=20
>    echo $duty > /sys/class/pwm/pwmchip1/pwm0/duty_cycle
>=20
>    echo "Testing duty cycle: $duty"
>=20
> done
>=20
>=20
> # Forward testing for duty cycle (increasing)
>=20
> echo "Testing duty cycle forward..."
>=20
> for duty in $(seq 0 1 10000); do
>=20
>    echo $duty > /sys/class/pwm/pwmchip1/pwm0/duty_cycle
>=20
>    echo "Testing duty cycle: $duty"
>=20
> done
>=20
>=20
>=20
> In these particular tests, I didn=E2=80=99t see any functional difference=
 or
> unexpected behavior whether I used DIV64_U64_ROUND_CLOSEST() or
> DIV64_U64_ROUND_UP.
> Of course, there=E2=80=99s a chance my tests haven=E2=80=99t covered ever=
y scenario,
> so there could still be edge cases I missed.

Just to be sure: You have PWM_DEBUG enabled?

> From what I understand, your main concern is to ensure we never end up
> with a duty cycle that=E2=80=99s smaller than what the user requested, wh=
ich a
> round-up approach would help guarantee. If you still recommend making
> that change to achieve the desired behavior, I=E2=80=99m happy to update =
the
> code accordingly(CLOSEST->UP).

No, .apply should round down and so to ensure that

	pwm_get_state(mypwm, &state);
	pwm_apply(mypwm, &state);

doesn't modify the hardware setting, .get_state has to round up.

Best regards
Uwe

--dyaujgonqzvowikd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmePURwACgkQj4D7WH0S
/k4KHwgAksGlvkYerZMMatVBQBOBykMcM1jl46uNHrfephJDzn4WlDzbMVC1a2DO
15zT2WHJv5YKFuS3jSnB3xuq8cHdUze+weVYVvcKgroXGNhkuRwVARYajV847z/o
zWKaTl+rBY2tf5GMlnclyKZpxw/IvAKujAIgadlLC/Ui/l4GmZTNqTWzBORY1Xs6
57bSKt+b2LoOOS1s+I1xVHtwr+wvm8IGc8QG7zOMOBdnhNhV51urb4AYW4rEFjaI
OlaiLo65Q3dWDyzhRFI70Xqj8wZzGWdD9jrRIOLa7KpILC2D2R9j0QPh29nWiOVN
McjvrtGwuuEYx2N15HJvEx891ujqJw==
=DgUB
-----END PGP SIGNATURE-----

--dyaujgonqzvowikd--

