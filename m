Return-Path: <devicetree+bounces-140142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8B9A188BC
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 01:08:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FF403A288F
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 00:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71D92563;
	Wed, 22 Jan 2025 00:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="mQkA+V4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B377136A
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 00:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737504512; cv=none; b=EidgTXEUudAHyUIbLuXDIYiMxP5vuRf8LTNBdpF5tYwAV1khrNj2kg8/c+SnEFT/763S7WgYvUu+67+lQ/o1Xvqw2KAnjRtkQUKQTiLEOXQm8AO55sSrJlbOC6EfY1NbXngLIS1IB4oMsCTEo7oyGLxdXYPlTUg61u9YZ2I8mLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737504512; c=relaxed/simple;
	bh=+ZC5sXaNDLr05BnhSvh2Hwr095nazmaxT/b8OpYJ8q4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pDDhv4aaIMEH6rn+K54RCKHthgp5WQo1dApJ0+QuvMlpRaQPdL6HbCD4ltQllSVpSY/nXeP2z0S0Pmk7rRTu5c5T/br8nVyGnVHmpTDgLqmKWZ0CCXbmxpAzrN3JxAIYQKLSvW1Rp3we2jiMHoDLzjTCsCnwrFintcr6Iu4g+nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=mQkA+V4L; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b7041273ddso508164985a.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 16:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737504509; x=1738109309; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DFtEywxzwLn/5hY1Yp58SHzzolHb4GO9rJXvLL/rCW4=;
        b=mQkA+V4L2FqabpphhfEZVuROveXfEergecwomloGKG94mE3nX2eKNfPBZh4DPVk1gM
         cVXWz8JZRoda1iSjUQ0aDHnXaAC6hcklFc6RnhT5o4iQCcTLdOWQ6qwjkIexVNeMnbQR
         /Dy45WDfSGU8U516wzbrSr+wczJhV1GTLvkTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737504509; x=1738109309;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DFtEywxzwLn/5hY1Yp58SHzzolHb4GO9rJXvLL/rCW4=;
        b=fAAL1rbPI7lPPz4QGqSK7mz1oPnzgWkPFD2AwtWkcX3qpkZzu2PWP/qn+uUu4DDYKi
         UFjBIiyoTrSKoQ6cWP8Y8Mc7b+Wk2gXZah4ulaWkvMkRdQgtBe429bGDSwykRROdl/VI
         SvWyYVEn5dXL/SG4l1J672/O2N2oG+LUpemad58ebOhbrkRyV/P8wX8lfAxWkQzKzUog
         KrAmNLw0rvnb7NFJiDTYlKVwQHJZMvuOqNodAlSnWr6ZXN2pONvTMXBLxn0qRXEu7yWZ
         YzTrE8S4gfcCfPGAk54iUzQP/QTj0nrapoOOybgY6SOU0X77BsiAlLIG848U9wrbgnW0
         ttVA==
X-Forwarded-Encrypted: i=1; AJvYcCWciPpABrkwH5nt7ubjj7qjBlR7KbZhBZGk3t3fBd/n+lpVYTaTdY3JphHbKEnURRWE3ZPm3n9GVhTS@vger.kernel.org
X-Gm-Message-State: AOJu0YzyVxBM1D+bM8rj0yWpCA4U8ug4oeJGMsx0j3hCLCIN0rZO2MwJ
	75Eus3XFJ2eKHs2LMpT75bU+p0zJbJK2AClVDdY6astTg4CmW3yOxkmKcCFDUCE=
X-Gm-Gg: ASbGncvYyO9tLzg4nKbpaz/NLrp8bVMnLZcTey8tPD0wYppj3GM+o4kAsoap23z5/J1
	AWRTY/Vi4R91X7WM5HVDcPfFMB3KYzwcbM0edr6bsPHUR9r55ONm2rj4pDjvH0g/APghUZtELPa
	pg3rj+1gPc5wAxOi7nnjNzI22EGx11GZeDngdEeJ1gzTGv9oNcHOaeoMZ469xS3t3es/9E/ibbP
	gkh1IjTI/RocM/5Ma6n8QYGpAg+iptOMcVk5lytY4bylUsJ02IFsZHkflsDSH1gYQM=
X-Google-Smtp-Source: AGHT+IFCOLUgFwqrCBgadGAInk+tW1W40iTqcVVVuwmHUvEcBdGhd7yiaD9Mxpuotd0LXZxxSMwvdw==
X-Received: by 2002:a05:620a:400d:b0:7b7:1118:907e with SMTP id af79cd13be357-7be632761aamr2908732885a.52.1737504508895;
        Tue, 21 Jan 2025 16:08:28 -0800 (PST)
Received: from bill-the-cat ([187.144.16.9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7be614ef2d7sm606517885a.96.2025.01.21.16.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 16:08:27 -0800 (PST)
Date: Tue, 21 Jan 2025 18:08:24 -0600
From: Tom Rini <trini@konsulko.com>
To: Kevin Hilman <khilman@kernel.org>
Cc: linux-kernel@vger.kernel.org, Nishanth Menon <nm@ti.com>,
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap4-panda-a4: Add missing model and
 compatible properties
Message-ID: <20250122000824.GJ3476@bill-the-cat>
References: <20250121200749.4131923-1-trini@konsulko.com>
 <7hmsfjn5mm.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bPCTNTKKZLjl67oG"
Content-Disposition: inline
In-Reply-To: <7hmsfjn5mm.fsf@baylibre.com>
X-Clacks-Overhead: GNU Terry Pratchett


--bPCTNTKKZLjl67oG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 21, 2025 at 02:50:41PM -0800, Kevin Hilman wrote:
> Hi Tom,
>=20
> Tom Rini <trini@konsulko.com> writes:
>=20
> > When moving the model and compatible properties out of the common
> > Pandaboard files and in to the specific boards, the omap4-panda-a4
> > file wasn't updated as well and so has lacked a model and compatible
> > entry ever since.
> >
> > Fixes: a1a57abaaf82 ("ARM: dts: omap4-panda: Fix model and SoC family d=
etails")
> > Signed-off-by: Tom Rini <trini@konsulko.com>
> > ---
>=20
> Checkpatch tells me:
>=20
>  WARNING: DT compatible string "ti,omap4-panda-a4" appears un-documented
>=20
> So I think Documentation/devicetree/bindings/arm/ti/omap.yaml needs an
> update too.  (and note the binding update should be a separate patch[1])

Regular panda is there, so yeah, it's easy enough to add the a4 variant.
I assume if I post that they'll get merged in the right order?

> > Given how long this has been broken it's entirely plausible no a4
> > hardware even exists anymore and so dropping this file instead makes
> > sense. I only found this because scripts/make_fit.py crashed on these
> > properties being missing.
>=20
> If keeping it is just this binding update, then I'd say we keep it, but
> if it gets any more paninful to maintain, I'm also not going to argue
> very hard to keep it.

I'm not in the position to see if any of the Pandaboards work at this
point, so I don't know if they're otherwise functional or a huge pile of
problems.

--=20
Tom

--bPCTNTKKZLjl67oG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmeQNvQACgkQFHw5/5Y0
tyyBbgv/brHvHtQZc6qTgaRbq45kaXrC87/5zJZKBVuwIVeXNLBk6dl6Rp+o8ZtM
Tru0I5MxrhF/jRAlwnLhRu+aT4/H9F853EOWbxEn2zxl+jI4h6qHNovprQNFMuDg
KygD/OKzgRwRizuXmS6BPtXSAa0MSDOSAG136iAGC9IEBmAzIrtqJR5XTo+mZGwV
iwoI+KvxZBqErWGT89Q5Fbczv/M59rFVaNyOAv6Rhpx0Dr+gzc+M564Z/L9fwpLV
LJ0jfvV12cRNA67iAzmXYVmSn4vudR77NyqsdCAHEhTFxem57tqkzHiv9VACGJgh
NLGXxd5tTqdqaaxvyb4jjfFUgysTJlN+QOulncpx4SR0uB7FFaWzPpotsNK60kHB
iQf3LPDSDmldS0Ue21Mb+Sl9M2DV6gMQo7Cnrw/Y6+PnpEuXiEItgvRA38wrZQt5
/IfUY5BRy4MQHmZnngrCIPK+U5ri41WZLnZP0eVvGfk0o/Y1wYvgvducEzaJe2Qo
wt/at/Oz
=Tq/Z
-----END PGP SIGNATURE-----

--bPCTNTKKZLjl67oG--

