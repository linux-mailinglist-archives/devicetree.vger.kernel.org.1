Return-Path: <devicetree+bounces-201002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8B1B16ED5
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 11:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED74518C6EAA
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 09:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7819F29994C;
	Thu, 31 Jul 2025 09:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2F5rhFUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C2628FFE3
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 09:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753954923; cv=none; b=Sua1Y0Ozq7d0w5FuIuSW8CTSHyilUQU2OYMx31C08dlLQHiNhk51nQvrjsm053vN8nQWqlicyKNEay9NpNDH0SvVw25n2X08RA1lmHlfIRxh/8Wo9xRLfs2rbewz4E+X86namzYOGHjJdVJF6CO1Md1WIcnVz5M5ec/fCDHd4zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753954923; c=relaxed/simple;
	bh=QnOkZh2xfL40YRumGUqUgGUVFVo0T+Nn2lfElsVl5SA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e4oHHA9T9SXnghrmp9cBKs0C467rPN22TVyGl1ZF5catr3jUHLYd421pqk6A9CzZLxBjZZEMvMUQq+oKjQysPLvlDKzWD9PnzPNOtUGqiyw0z9cYki3MNBIe6kAPzeRazv6KlI8i4x7tXNEHF/30Rxh+AE2v73eYG+KTbdB0PKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2F5rhFUT; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ae3be3eabd8so140615766b.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 02:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1753954920; x=1754559720; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QnOkZh2xfL40YRumGUqUgGUVFVo0T+Nn2lfElsVl5SA=;
        b=2F5rhFUTcZ60txfs5vVWY3mfAczXQ0Hig/iKt8+4SXPGT3oB8TvOxaaidHGHIO0Cxs
         ZQzzvaulhZG5gQIWavGPdM4/LEa8Bx4h/vxdVotjUaWQpRnTG5EWfXTa+jiMFSuQgakn
         aSDR2wv4MEX5p2AItQv8bkHnPvTKZfhRkZvZZFJlMcOOkSPKkpsD0esF/1jXmhXJENB1
         swEB0EI+EUyE6zTokNjwQHE/pmANnWSNIiuiNscxg2/oq4tis0o0+BPbsxLKiBWX6/6b
         spp/i7K3BwyHq06X07VwRw/tUtC2ryNHspfO/H3+lbmU9RrkGi70qW5K+x1ACyz1IKeI
         E+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753954920; x=1754559720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnOkZh2xfL40YRumGUqUgGUVFVo0T+Nn2lfElsVl5SA=;
        b=Zgs7ud5Aeiy6qEcLAWm0sSqjJvBOGyiKPW16ZHVht3NsPMDecstGkWWRzLK6W4hsAL
         zxj9RrCDdP0ixoYGSPfei5loBfF1zC0SR3zspE4/UL2wUNhu6I+qjldgrpNFBNpbhNiI
         97CUbpjTYzbtr5pziUNIcNW7t83Jl4Z65ohR5IQHKY/X6bwYZK3TN0382KY0GcyFVpu5
         fBw5No/GGpcTiN4A+TtYk3MmVdKuPUvSIIXuN4u2oMcsdd2yDPRoelFbSJ/I695AYIHz
         abP+gUcZc1vK+dVAWLE4Zpp53I0QP81dRQ/1Ya6ZmcENtHSsg59DdK1KbTeAlEXTYLqJ
         wxkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXayMvotDtuBDS07cRp975vxWIhu/kLzu5CX+Ee64P9ZhWvRHbrdzpvtN9Y7YJJOik1ERpKcs6QEGI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdtbz2JhZupNXIMmX+Aekw0THyH14JJ9Rg4kgsABUPT8J/WotU
	Bx4h4ztRUPWWZN92Rao06MXKxZQ3FIgEE0syk8Dmo3G2thKPod9/un3iVjSsYVXcZUY=
X-Gm-Gg: ASbGncs5DD/sbamcNMQuFYrytG/7IxmuCMKdiREF1w80iT+p+zr6k3mUNVSYhyauHy2
	glYjMZKrZHXknvwX5yYkAl8YL91UE3HvBk4/DCIGCxR5MbPRYu90OGH/khiDa7PlNdRvG3qAMxV
	JSBkxJfjXlA6Ey+TcTdcs9vAAXTIo42rNM+vyceESvVh2GpvMzm2un6rIMdMl34I8faHmRMmIM2
	yZJZLzqmMpOpMpjnSWcrS+MFvlQdWNS0RQatmUblhWJx+85yE1UBiYid96s4DVq7iDlCeyjGkum
	9G4/q9SldWWL8CSmQD9mreQsQz0ELxWJANH1gFs+0yrPthzqKucJzkdulz26oZlCDKdFRM75XYv
	CoRJhQeT3Ovq10+shIwVseg8muWxdZJiQtU6GGlCGgCS0z63WVQVw3Je/fzdvY8I3
X-Google-Smtp-Source: AGHT+IGLYXVQtDxNwo330E93me7kT0e10jyCYoV37P7PPC8dqrFgzE417WGD+xvPdcDnkSu32KUyXA==
X-Received: by 2002:a17:907:3c88:b0:ae8:8d00:76c3 with SMTP id a640c23a62f3a-af91bf24846mr181679666b.29.1753954918666;
        Thu, 31 Jul 2025 02:41:58 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a21c039sm82055866b.110.2025.07.31.02.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 02:41:58 -0700 (PDT)
Date: Thu, 31 Jul 2025 11:41:56 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-pwm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: renesas,rz-mtu3: Use #pwm-cells = <3>
Message-ID: <n4ivjvd6hq7phwkzbmvg2tqtejc6ufcybslnyh62kegjkhdvoj@cvfjwstrhlwh>
References: <20250527205823.377785-2-u.kleine-koenig@baylibre.com>
 <fmn3mrcbih3oq6hgl45jipdofko46ur2sux5p4lf3nzlpahklr@3tm5molhdfdx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m7medg3g5ye5skkb"
Content-Disposition: inline
In-Reply-To: <fmn3mrcbih3oq6hgl45jipdofko46ur2sux5p4lf3nzlpahklr@3tm5molhdfdx>


--m7medg3g5ye5skkb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dt-bindings: timer: renesas,rz-mtu3: Use #pwm-cells = <3>
MIME-Version: 1.0

Hello Daniel,

On Mon, Jun 16, 2025 at 03:08:41PM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, May 27, 2025 at 10:58:22PM +0200, Uwe Kleine-K=F6nig wrote:
> > With the goal to unify all PWM bindings to use #pwm-cells =3D <3> update
> > the renesas,rz-mtu3 binding accordingly. Keep <2> documented as a
> > deprecated value at least until the in-tree device trees are fixed
> > accordingly.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
>=20
> I would expect that with the positive feedback by Biju Das and Rob
> Herring it's on you to pick up this patch. Or would you prefer that I
> take it via PWM?

I understood your silence as "Please pick that patch up via your PWM
tree" and did that now.

Applied to

https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next

=2E

Best regards
Uwe

--m7medg3g5ye5skkb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmiLOmEACgkQj4D7WH0S
/k56gQf/YVbE8M4YImhXFa56R+9I6mz7mcCrs5jdK4BGolG38W3TFlZeG2daO2nh
MdBRKKRp2w9UTC1sM30Vm3/xuSpVgRKzBCIrgWgrrkIyZ1r1b6DqBc8D4Tz424Yt
sgEB9dsoygEHyp34HxePgqG3fOgwbhwVd7Ww/IDBaM8kxDXxf4OfG34krIJhLEJw
9+v5HZTlnLJEeBBqxytwp+v4fb+b4vBLlmZhLp1Kj2IPZGLgFFADAFDPpmRHf0Op
e3CmdYPWGgDCPSQUV7w0DMY0bzcpvl3IXjGKD5MCObCrxnHxAoikvViOA7DRFe/i
FgWZgSCLMO3luQ6woVmvzYeaEnII2g==
=fddD
-----END PGP SIGNATURE-----

--m7medg3g5ye5skkb--

