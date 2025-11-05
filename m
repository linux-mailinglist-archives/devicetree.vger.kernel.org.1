Return-Path: <devicetree+bounces-235364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF2BC378AC
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 20:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 820843B4FEA
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 19:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6051E343210;
	Wed,  5 Nov 2025 19:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XiJxh+nS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90933342CB6
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 19:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372191; cv=none; b=cuKynpd/ts+RsB5/Kdj4iSKXTbBX4W5qZVBs3Fb3+Ropmouo/WSvLMtSYM+06fVN0sBgXwizf72xzTGcH3HS/uhNl3QWI2qWUWCwM+d2a0ovAf4yvCGasETlTBk5PcRKpn2pC2VI+xCVKo+r6/f+ddnlFZxvkQNi5zhCXkHfEfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372191; c=relaxed/simple;
	bh=Qn3ey+tGjMWZVlyisbgTj7dDw5cJIWX584klbJqpra4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8NeKQckuDC+UvLj9y0zWGcjadWtfqRrLF/PDbrvbCQ3ln4YnRFPh0Mwixux3AytfLKwflli8KKfn4Gw9z84+0iOPO/OYNM0WmJu4UZqmMbFb6OZm6q9la/ikLshxJksJcZfBlskMr3CmtYm80Qn8vCxLYcuK/1dFHZeU4Lt5UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XiJxh+nS; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477632d45c9so166875e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 11:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762372188; x=1762976988; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MvyrGUvJyh5x1Y73UqVq7sR5SMe0YxpMsmxupXaTnGc=;
        b=XiJxh+nSqu8d1jhHi1XHlS9SFg1615KDsML8SPKMP+I7CJo+bIFPuLLF5fR/bHWeOF
         qrLaRG1CfGqdUqiNGwGyyFh9X6NdrFsuDjmtq20apF7HvEob8zpLKB7dO0+wG9mRaNUl
         9kfUzJQL4it/zRZ3GWH7X0TSI7m2ZtHHZZR0KqL4YE5VJ9yBIvg1wnwWx00Xn9dmPwWk
         CY1w5LFXxegycUBwky/v0kALz+VK5VLFlT3J0j01jNHdYH0Jh7oRjKr2Yy6Z+TO7bMOy
         /ujr9YURgsrxSkEuqedfYHwzH3BjFeHcpdGcGqpyXG8iutwB8kMp8n3I/uoDtkbLF/Uw
         raHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762372188; x=1762976988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvyrGUvJyh5x1Y73UqVq7sR5SMe0YxpMsmxupXaTnGc=;
        b=Cc3YjeCJt2GfVtVyE3T85KYB2Wx+xWamyEl2yKYX75JXG6wcDdEvvT6MJXSd83tg99
         LsXsfFwqX8gaG8uxHuNOFNNpy+bGS4Agqu1fUSsCHfdnk3JtWtq9gTTx++x+1Oo4tiAz
         CpMmKWOrCd9KCnLF0nk9KffPAn7vn8DyZfWra0VleH1RKLAiIEECKnKOad4vkO0anr/e
         8YAJ2Do0gM/pVhmcj2NwOi2aXiKbeHpFnhokgfN1C9i3d2EPEbx7R0WJKt3T25Mi9XE9
         GJgfh/ZliIIBMDKPO0/tRjJzSstt6jNMU1vN1EK0nvsVnHpMVEtS93piySaoli2AXtp9
         sG2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUq6neCtbpdl7aa4fa0qVup4vBGFF4Pexm3YvphwRVdF4lFaZZ7eLwwxM8tOcpco6DVn5XW+azTbo5+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn+7Vp7QAuplADFDlBgtyLZEc/G9WqoXtnWBKwL2gbFBSKvJeK
	dHmovgzNtaMjHt2shqcpXNgw8b+tM+QnvhXcnt6KIlhtbFMgmU3iz6drBTvZsg==
X-Gm-Gg: ASbGncuCxsf9xrtYGTM/V4yN0Pbr1a6dTKgqG/wqiLwpTXLDkiLS3ZWUqMSgAHSUqFA
	8mG+e3NfXqKZ7VgZxgSKSPQwG0H7ktJ1HG4SGkXBT/xX/YQG40PE8FCF1rWbuZd4rgAu51h50b5
	GjjP02/DzlqpsXS/H711hKYE8qYD7ithQoaXssKaq4BXZfbP39+Zha2i/HYZ+GoBQl6CxIJyKXp
	Tt0PCM/EiPoWek7lQqikDEi/aB9eA11AFjAtYbQ51lY7DhgnvOi7G4f2KIx5+hPYMZc6pQMasbQ
	xd76Ezd5R5kGTZmHXUeb2xktUX2IAI9n8Pet2xslKklqcRZH/+EXkauuyPKgZNN54NaU3e8DzpJ
	qGi1Q2PFe0FB6PV+9cfJvl831LrgxvQHifL5pT0Pinm0v6hrJNHwGWjFrhh9RjF/hgs9c+4g33w
	TmltDBD6KseYkf7DREFo3yjKQmUDHAIgaQHcP22jsGVE2q+pFmUo/dvFLR28YtCzM=
X-Google-Smtp-Source: AGHT+IE/wSOJh964hsRl51P6BCrH1urX7lyRtls65YxyHli+/HhkrEEnHnqcio2fY8WWADS8haI6QQ==
X-Received: by 2002:a05:600c:46ce:b0:475:dbb5:23a2 with SMTP id 5b1f17b1804b1-4775cdc8e4fmr34171475e9.16.1762372187615;
        Wed, 05 Nov 2025 11:49:47 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477558dd04bsm52402155e9.1.2025.11.05.11.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 11:49:46 -0800 (PST)
Date: Wed, 5 Nov 2025 20:49:44 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Jon Hunter <jonathanh@nvidia.com>, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: memory: tegra: Document DBB clock for
 Tegra264
Message-ID: <i37vfuritqx5vs2wds4euomyt27dkcmzvvosphxd633aq7sis4@bsjn5yv4pq45>
References: <20251105160513.2638408-1-thierry.reding@gmail.com>
 <20251105160513.2638408-2-thierry.reding@gmail.com>
 <176236389129.1455984.6215917313928055462.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ich3dhap6fs3b6m2"
Content-Disposition: inline
In-Reply-To: <176236389129.1455984.6215917313928055462.robh@kernel.org>


--ich3dhap6fs3b6m2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/3] dt-bindings: memory: tegra: Document DBB clock for
 Tegra264
MIME-Version: 1.0

On Wed, Nov 05, 2025 at 11:31:31AM -0600, Rob Herring (Arm) wrote:
>=20
> On Wed, 05 Nov 2025 17:05:11 +0100, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Accesses to external memory are routed through the data backbone (DBB)
> > on Tegra264. A separate clock feeds this path and needs to be enabled
> > whenever an IP block makes an access to external memory. The external
> > memory controller driver is the best place to control this clock since
> > it knows how many devices are actively accessing memory.
> >=20
> > Document the presence of this clock on Tegra264 only.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  .../memory-controllers/nvidia,tegra186-mc.yaml        | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
emory-controllers/nvidia,tegra186-mc.example.dtb: memory-controller@2c00000=
 (nvidia,tegra186-mc): external-memory-controller@2c60000:clock-names: ['em=
c'] is too short
> 	from schema $id: http://devicetree.org/schemas/memory-controllers/nvidia=
,tegra186-mc.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
emory-controllers/nvidia,tegra186-mc.example.dtb: memory-controller@2c00000=
 (nvidia,tegra186-mc): external-memory-controller@2c60000:clocks: [[4294967=
295, 58]] is too short
> 	from schema $id: http://devicetree.org/schemas/memory-controllers/nvidia=
,tegra186-mc.yaml

Ugh... looks like I used the wrong hash in the format-patch command and
didn't notice that I sent out an old version of the patch that's missing
the minItems for clocks and clock-names.

I'll send out the correct version, sorry for the noise.

Thierry

--ich3dhap6fs3b6m2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkLqlgACgkQ3SOs138+
s6FvhA/+JjAdSF6J+xyphE5ibJBXmjrqp9zOBE52ZjEg0CRywTgZ4ojsS+lDxq8/
QdJOmxNbHxwJWrmhZSEm5oaJ169TirEx4XY/vRlOpZdOaWZTBLUwVjx02nDP6o00
z7jQ3oPx06i0la68sxrFY7xE88QefW5ukuEcOpEWrs5jcsJCP/HuV4zhAXHPCZQ5
BBVqX/d6S8ugVwR0EGzuEMEM8PAUEn9zu8wJpvLlAbwHMZ/sOMwh32Sv279qokm0
FRgMSIPgZIy8qTt0veYagCS51x39AJRybyqlFvkd0beImhKpqPcuPyDGNNDJFZP2
Tf7rS0vXSMmUnDCTixpQJBRZ05gKvY8gn3mYH/pkdDJ3Wml7swKXyrq4g97klfwW
x3s3M8A89NyUFtrq2biWTuM52m9Mm5qk2CB6JLd6NVZdEW1gWVKJFZhei1FWhqK0
Nl/bXKP0INNofg3LSlezhLu38zDGvOYDy7q/OOhuRKwPky2MbcfHasfSgDTbIUgq
lZABtmf5MycsJD252WViFaqydCTRmyQFMsQKuCWRIjvezfiN41xLy4Z6WxD80kqo
+jUM7OQdHQpz2PSh5vcr3R8Fa5Bddqmpz2gYgbhWct0IzlOP3DU9QtYbfVmp7AMv
DgrkrpprCHMrBh4aq9/murXAgoeWN7PW34YuIXTgcaH1Qj03ZYc=
=vmRC
-----END PGP SIGNATURE-----

--ich3dhap6fs3b6m2--

