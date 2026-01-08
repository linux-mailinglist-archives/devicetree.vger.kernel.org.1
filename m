Return-Path: <devicetree+bounces-252861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA488D039E4
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8ECE730341BB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746EB48125E;
	Thu,  8 Jan 2026 14:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="irkow4aq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B253F48123E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882238; cv=none; b=I+fP7oF1JijlVUeTOkIeOAnCAeyUUzNlzv5r0fNFJ8wbvR1aS9h/kKtcbMYhKEyGmQ3J7if2+UK+EuK99X29wZLz4UZIAVSSSNLkw81G1WlP/pRgPEC8qDIFEnaRc647Iky3nEnPek/7Hb0hVHux1BhUUHyguxLZiGxbu63JddQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882238; c=relaxed/simple;
	bh=CbEIwAU7GAA+mXs67rDkwlR9RhYSgRbcLQjq1Ae4a+8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QINKznpMqih4Hd+0ffRiUTWZGoFcQiG6HAJkSop8GLJXApEoKgfcuj2B6pMTEDh8aOdWjY5Fyoa01nKH4ZrRsMVN7YJSmQQS0sm/7WINKI74uG2UBd86CVJWsft0IlJbXPDCUQDFfKMwHi/PfjzLLt+xkWKpXEpCbEr3QvinNJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=irkow4aq; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso35357995e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767882235; x=1768487035; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CbEIwAU7GAA+mXs67rDkwlR9RhYSgRbcLQjq1Ae4a+8=;
        b=irkow4aq8gfqvYcQCv1IJZTvnL4Ho7qD5CyOObygVU76Lqq+s8rRF/vlH9tmy6F8en
         vdA0ekmY8oDgoLhwwEdGiR+WLb2FZMQZMTH4HmN6TnTR2i6Xl6aFZNzuPOcZt6tn1Dt3
         eubabLpXxQKpf6dI34d7+AYmMdwqg5zpBuY9mOPdQAFGuxs0Z8vu6F3tyLQ3UcXxdGfI
         gC/NYvXm2gYj1yTBYurRv6IXcAhP/gxoscBP2SN7zRbAx8DjvCrp02GR977q/X+5GxNI
         6Ci5T453B7pbYd5lPDccRhPcQ6mUYzvwAMz3faLGtyh3nw7mss62+C7QDZ9fBTLvom/x
         J4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767882235; x=1768487035;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CbEIwAU7GAA+mXs67rDkwlR9RhYSgRbcLQjq1Ae4a+8=;
        b=p5hOcbAC1YgfVT4qKRxCBZtprsD6hIFKL2rYj4Yq/DzsoOZyePHzHFA9cWR58JkrCz
         UKrhx/VswyePux3it5x13f4DmqAVrbdp1GXgmnhi4J2HfhuIrU63MKYNqVCijxR4mvg5
         5d4fxe+QdhOpLDggjPCXggg4D3W5FVvfQKOeJdVHJ1BAlCcPQRVCSiTWWoy1JCSHkf+a
         n/FSC1BaIJB1RTP5TRJf3ATZ4JVdSOfHc7AhgmJdJbOVSSPXl5/WX4D3tK+ITLOp/e/J
         yiiTMeVKPqQuC9G8GAkjQ0sUt0pSrowuMZdmvyxIbQs3P5LpjIKJXWcdWxWtPLdOrWls
         TAfw==
X-Forwarded-Encrypted: i=1; AJvYcCV0Pb9u8r7ffy50UP1xU495nxxBCc3kHgoOFapAqr7kvdbEVk6N4gaIFlZT5ox+kZQe8SDfYJRw2QXh@vger.kernel.org
X-Gm-Message-State: AOJu0YxfjUv3isyxrqOW02OFPOmO3lZKI88ZxFPHprTvYSBjlMkRVi6s
	ZNJ2i4qkhMNDKX+qailOQGVaT63jwJHPef/1YlGDTdkX3UZlY+lSau+9BhOE4w==
X-Gm-Gg: AY/fxX4T7W1yqh8Opyyxsg0MEts/W+Go9Dn31LiOFlU7f0d2Aubu6wdew7NcHhoKhok
	XHmnemJBGMD1+ioDHsL9DevLIZzlGB5oGxYX3mc7bz6I2Vyvcmv2bou8o9Zp75jip4IfLrZhH/h
	106DBot5HhneZ3GCJRTVCACR0X6uvS+7Ue267aj+sSB8I0rIl2QvRSnu0pA7N36378zerXLwU7a
	5XWiGCKrmNstGBQvV1bOqYc1XzMkyb7Bl9PW8ngbeInS2N9fnzA8AiWBoth6JVgAZIOTkHO+eNz
	zePAPhGksoxGzYKHb58XDlz4oLuB2Bhj3eaQNq1IKkvfoS6dCmzRQXKd9QKD9SbjCWDb0yqYpvG
	wH8X2IBftXy3GM5MsGBA1okuXPoQ4e6SyCwqLg02MrkgzYS5ht6yeoIyXfAUWnK4uF0a5v/WuTi
	bDKwlW4KtqfQzXzwC2ZglAKyJpOndJ7E8=
X-Google-Smtp-Source: AGHT+IGrAIR3h5+3+2bI+Bm/hEmtepHzSEt6BlpptTcw9DQdznBeg4xrAZSGuCIhCP/cnLqZ7xIjVw==
X-Received: by 2002:a05:600c:5490:b0:471:1717:411 with SMTP id 5b1f17b1804b1-47d84b33bc0mr87200465e9.24.1767882234857;
        Thu, 08 Jan 2026 06:23:54 -0800 (PST)
Received: from giga-mm-1.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8715b5f7sm40594805e9.4.2026.01.08.06.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:23:54 -0800 (PST)
Message-ID: <a47ca860adb760ad2bf9e3e0d233b0b2b6f73200.camel@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Vitor Soares <ivitro@gmail.com>, "Markus Schneider-Pargmann (TI.com)"
	 <msp@baylibre.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	 <vigneshr@ti.com>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, Kendall
 Willis <k-willis@ti.com>,  Akashdeep Kaur	 <a-kaur@ti.com>,
 linux-arm-kernel@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 08 Jan 2026 15:23:55 +0100
In-Reply-To: <49bfb30f71eae0844676e6b545d67739b6d79539.camel@gmail.com>
References: 
	<20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
	 <49bfb30f71eae0844676e6b545d67739b6d79539.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Vitor,

On Thu, 2026-01-08 at 14:07 +0000, Vitor Soares wrote:
> On Tue, 2026-01-06 at 17:22 +0100, Markus Schneider-Pargmann (TI.com) wro=
te:
> > Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
> > u-boot SPL is not able to read u-boot from mmc:
> >=20
> > =C2=A0=C2=A0=C2=A0 Trying to boot from MMC2
> > =C2=A0=C2=A0=C2=A0 Error reading cluster
> > =C2=A0=C2=A0=C2=A0 spl_load_image_fat: error reading image u-boot.img, =
err - -22
> > =C2=A0=C2=A0=C2=A0 Error: -22
> > =C2=A0=C2=A0=C2=A0 SPL: Unsupported Boot Device!
> > =C2=A0=C2=A0=C2=A0 SPL: failed to boot from all boot devices
> > =C2=A0=C2=A0=C2=A0 ### ERROR ### Please RESET the board ###
> >=20
> > I bisected this issue between u-boot v2025.10 and v2026.01 and found th=
e
> > devicetree merge to be the problem. At a closer look I found the
> > k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SP=
L
> > failure to read from mmc.
> >=20
> > Fixes: 5b272127884b ("arm64: dts: ti: k3-pinctrl: Enable Schmitt Trigge=
r by
> > default")
> > Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
> >=20
> Hi Markus,
>=20
> We're seeing a similar issue on Verdin AM62 with U-Boot 2026.01. The
> board has complete SPL boot failure with no output at all.
>=20
> This occurs in the same version you bisected (v2026.01 failing).
> Could the Schmitt Trigger changes also affect Verdin AM62?

they do affect AM62, even though not not every HW, I have one HW variant
working properly and one where I observe the problem. Maybe a revert
of 5b272127884b for now would make more sense than just fixing AM62A7.

I unfortunately do not have any reply on this from TI yet.

--=20
Alexander Sverdlin.

