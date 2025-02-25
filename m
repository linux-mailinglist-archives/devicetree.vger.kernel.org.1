Return-Path: <devicetree+bounces-150872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F22A43BC8
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 539C31884746
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29FDB265CB1;
	Tue, 25 Feb 2025 10:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dXQfYYfK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94251C84B8
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740479337; cv=none; b=ImQOLZ/hi14O66CYSX+d7cuyUxUy4KQaNvu6CKLQmhhmSA425RTbkr12mDMoCk4jlKFKLU/0IxT7yqnrPIgtHBsupBK8ABh6kKXh3jiDxnldkMl+vfQi2gtc+rIMg60KhvM98aejjr+p7FbHiwMNnd+Plrm78JM5JjCj9x12Z7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740479337; c=relaxed/simple;
	bh=lw7LGz5u4+UY3MSVtdaDIcTdVd1t9SjnuxeMySHbeIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pgVLH1iocX3kbCp27uKp/xzfaxdaIjzhD5C9EARSoTR7bvPDgvYopGs97tyVhDR4is/s0J1yLYt4RxtLnf0pWeGy41dDBRNUYlxLGIajbb7ezTb+KHR362DAc1+uuxn+ImjME6PsYr3TvYausoCeP9JfbXXL/3MUS1yFL3vgT6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dXQfYYfK; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-439946a49e1so33912795e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740479333; x=1741084133; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lw7LGz5u4+UY3MSVtdaDIcTdVd1t9SjnuxeMySHbeIw=;
        b=dXQfYYfKuOPsuHKGMYaAyYAlL5LjoJTcuej+QOEToCgzk6dHhny0zasRm2kNVTu6D0
         m9OwIkeLxTfrL+hXi7oeWX1c1XwWS5+evTuEcjUKwPKrCNBq0/RkfgjfosqqAlLTEXKk
         cERwlFUjYnOikFvtGetgok5ilAXny++i4nv4G44dlVV3tI5GuonqyiFCrIv7xGM5FP0w
         6Co+zukyLgB8JEylIqCAKTKB3jA18vWUDtaHCgM0Gcn+a3BXOvJaPb98A9uKcDqCIHxU
         +0b8L7udU6k0b8yO3AU4hXX+eTfyYho7BCDUGJcizeEeFBj4BsINpR/XhjvHIUudX8uy
         Ho9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740479333; x=1741084133;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lw7LGz5u4+UY3MSVtdaDIcTdVd1t9SjnuxeMySHbeIw=;
        b=YzHDz1RjAnrAqTXAJhMy5CBjq9cBikFrafUZYNpLt9yQh4GvTRjdDKstG7nWIJPRKQ
         VSLN/t427G6eGbItG/Eqocj0i7PJGwaxOk07T6bvOGqTGze2WJkZgV5DGJ64I1fjpP2a
         J5sXREVA98GWviIlaA8i6kfszZfbKNemMbTSqtulZSFJDXfMm0POkDIsQDujbRItELSL
         HLfv/Y7sa5DkAIUx5yFaijnEc//bgDPdDu4ZKfR2Wjil4ro+CAQxiKRgO86Ef4iivNhp
         Ik8g4HOb3iJAd7qc9upF+nhyKdhFm7kreCu+jzP3wsLYofgjUkeiC6wkznzExesJHQiN
         nCXA==
X-Forwarded-Encrypted: i=1; AJvYcCXFVBRRTNAAogY2eU0s1o69pdqilj1pxAZ352B14b8zuuGitFrUU0DY801zn4KczFATQqfW39BlJvCj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+7weRg5MW4LiqzP4WpghWfZy7mjerzkQCKF/FrKCFY/woyo6b
	/HA4YUGhnqAVwclEA1rD2VeHI7vdGauY63Zrh/fO/uyAyZ1HAOviEHbnr9EBK0g=
X-Gm-Gg: ASbGncvPmXZvpUccZM2Ggth/V8wLtoIHWNuLCgHhmOKTzLi8Rmyewnj4IMNV0AYiYlX
	ihk85awcBNQypdk7y0QO2Zw5LMj9XPpKnrwSxE8g2i6vKCQ5FQWZmTLZ7hzoBI5pxSqyuAqMW9t
	4WTd1H+bdN1a6q2T8EjBM7K26TQuRiN3NXYiFqf8N542KkPUr6wXGpUlNoJ9GFh4orTv6rj/oHb
	b2KP9eutuLPUUN8GIpEx5RyYc71OCpBXZWHSJ7WxJ21wuCCEHgQTzGpnSmQNoDQowOu3gswD5n9
	GGBSjGusfUs0khYiG1pBQA==
X-Google-Smtp-Source: AGHT+IEIzE6LVOdzTaiF/XQxe5YVoLSwzJB4+evEnTKWGqEM97O2xxmk4cpePWYkQ5BISMx7dPcrxA==
X-Received: by 2002:adf:ea8f:0:b0:388:da10:ff13 with SMTP id ffacd0b85a97d-38f6e95b41dmr13202225f8f.21.1740479333083;
        Tue, 25 Feb 2025 02:28:53 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:7bba:546d:aa63:621e])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-390cd8e7233sm1802184f8f.66.2025.02.25.02.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:28:52 -0800 (PST)
Date: Tue, 25 Feb 2025 11:28:51 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Judith Mendez <jm@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Tero Kristo <kristo@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hari Nagalla <hnagalla@ti.com>
Subject: Re: [PATCH 0/3] arm64: dts: ti: k3-am62a/p: Add r5fss nodes
Message-ID: <qlqxmqluqrw36bkjaa7efcsk6cinyr2rxvznfhz6dopeu67dsf@w4lkuq65uwno>
References: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
 <c81ccd05-4fb7-4ec0-8cc0-c59ac4dff91e@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="obza7ftg5kvgvlah"
Content-Disposition: inline
In-Reply-To: <c81ccd05-4fb7-4ec0-8cc0-c59ac4dff91e@ti.com>


--obza7ftg5kvgvlah
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/3] arm64: dts: ti: k3-am62a/p: Add r5fss nodes
MIME-Version: 1.0

Hi Judith,

On Mon, Feb 24, 2025 at 09:06:56AM -0600, Judith Mendez wrote:
> Hi Markus,
>=20
> On 1/22/25 3:54 AM, Markus Schneider-Pargmann wrote:
> > Hi,
> >=20
> > am62p-wakeup already has the r5fss node defined, but it is currently
> > missing from the am62a-wakeup domain in the devicetree. This is added as
> > part of the series.
> >=20
> > For am62a and am62p starter kit boards the r5fss memory region is added
> > and referenced for the r5fss core 0 node.
>=20
>=20
> This has already been sent here:
> https://lore.kernel.org/linux-devicetree/20250210221530.1234009-1-jm@ti.c=
om/

yes, I saw that recently. Could you please cc me on the next version?

Thanks!

Best
Markus

--obza7ftg5kvgvlah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZ72bXgAKCRAkjLTi1BWu
P3ayAQCmje7sVfMPAH4ZyOoLuKscrkF/LVOMHgeJryGd7sabvwD/Z4OE3BQ8OMVR
Z4ksn1XTyKXHDVVnCnaiIwLS83cpoAU=
=qRs/
-----END PGP SIGNATURE-----

--obza7ftg5kvgvlah--

