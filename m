Return-Path: <devicetree+bounces-83545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A84A7928E5C
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 22:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D89971C22C2F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 20:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00FD014431C;
	Fri,  5 Jul 2024 20:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="raTGWSmI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7175208A7
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 20:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720212821; cv=none; b=Wsz3yfxICTDrVGgnRwJNI+1zmcBpb3VYvLa1oRvcJf2T9d/JmyGX0RN31Np2sJetTVVdYaY49cAVuYEIR9TLST0l/YqVd3Lvf2DeFpydDLS+rMv9gfBe9uXAR6xBz9D7Yjd0sKtAjz1HDJGzk3x6FOMuhbe1XLnxEwx9DVIaN18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720212821; c=relaxed/simple;
	bh=RnT2BNmiuEmSEAIW2abYdUOVw6Lc6c2/39foamaieO8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fY7VmRX9bQy6ZbAOeA/KketyD7EIlTkZLtVLo8tfp/PFPn6NweBgaceurRS5IQYBXL37t/Gn022Y+gDJj9ufAI5JQuXk4lgPuR15lpPbQx0T0IczPmhgAyMyM26eJMf4LxeCyCKKKhOx5WdYAp9RVsdEa/KwLdajsY5nvhDV99E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=raTGWSmI; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a77cc73d35fso172200966b.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 13:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720212817; x=1720817617; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z/RI8+IypXHxfW9Ziu36H6eLxNlyTrtoLgIrlcbG5xE=;
        b=raTGWSmI9u+Ig3Je96/QPhRSKcIBVDRdAyknPaC+n3h76MvU4XY0MTbWebRyj8/3k1
         r0BD5VljpLin0S4IFC24I4plVw5IJYg1IpL2JUFoQ2d2AXyO9gjFTbYqnv5zKmFmi5u8
         zp2zg/CuJps8v/vpKBfgfUE7QnewTyEnF4iMAJa3oDZQzo1Aw5McIB9tmtDx/0msWHBg
         vuNFevGiIM6QmZQ4wrNfhU2TpZwOfvv72vC5ORM6gjNoL9ksikbkAeV+J8CBuwwXEnaj
         KFXlLJC2mCaLuJlelHyy50qkmcraQaI9256NBJg+mXJwl472b6YQfbh3QFYaskKNXAK5
         QtUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720212817; x=1720817617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/RI8+IypXHxfW9Ziu36H6eLxNlyTrtoLgIrlcbG5xE=;
        b=AmDksWzC9VcM+QwAkwmDHqGSGdfzhYlBtl1okH+9Ei2tTDdD6pH+Qv8j2gMFh767Ar
         UNp+M1HTKrmrYRQKfMle738svZYsJhg/zBMuUhtxTXAHBi9UAkXE5BMMj4q60DYsnr7d
         qtaZpvGZQviJXTyNp623GzH9NP2ZtyO7l/76MUDpb7I9CCIHc8mOKumReTG3zbpn7Lg5
         2TWNw49+SC49vVxgi8N/LhaXAsA/VSXISW9gTTLpk2L9MMa3WP5qbVA0VY8/79HHzw5z
         11FFNCwSw4xkWl9zhocVOQETcK0kjgivZ1kQqMcUHtSQgJym+ZlmlPJdAzR1FJDvAQ45
         hRHw==
X-Forwarded-Encrypted: i=1; AJvYcCVtVRwdYuifIguv1sqDhD6+5k4Znl2Xp3/5UwlfUBgYPYmQJ5I+TtkVKKFJyxdLQ8iAJ8kzzVVbY2eHUcP+VfNKX6bUG2rIfqQuPg==
X-Gm-Message-State: AOJu0YzrHT2YBo1Wv3O4rYY2Dr/6evUGQVEatwWLt7ikOJmjjuRnbgoO
	LrRBjxux2QlCGJ/lxvtHrmtkI1Nyyv62vKfXvLf06iNEw9njUBK50C9Atho+rzA=
X-Google-Smtp-Source: AGHT+IFGuka/hxl8RhnHoBhFFBpeGFEYTV8+m19H8hGQ4gwZR+orkrF4DTy59PhCviOU8TV3EA9bkA==
X-Received: by 2002:a17:906:f801:b0:a75:7a8:d70c with SMTP id a640c23a62f3a-a77bd99b7b2mr413357066b.4.1720212816788;
        Fri, 05 Jul 2024 13:53:36 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:dc09:29ad:fc9f:a191])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77b68766d0sm171359166b.195.2024.07.05.13.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 13:53:36 -0700 (PDT)
Date: Fri, 5 Jul 2024 22:53:34 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Rob Herring <robh@kernel.org>, devicetree-compiler@vger.kernel.org, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Saravana Kannan <saravanak@google.com>, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH] libfdt: overlay: Fix phandle overwrite check for new
 subtrees
Message-ID: <cjaomdfyojgsq3ykqezitfjdtjqhhetgcncdxs6uoj6llholut@nw4zhuwmht4u>
References: <20240626075551.2493048-2-u.kleine-koenig@baylibre.com>
 <bxyscvary2ozzvdnszl3rtfqy3oo5bxnpn6avvaexhtnd47tck@qa44v5zxqhps>
 <CAL_JsqKj4w92Ym7KTmQo3D+iNszB5u6-kceMCrNCztM0LJaQkA@mail.gmail.com>
 <ZofdvXLWunF4opJB@zatzit>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vggu3pwtcali3gn4"
Content-Disposition: inline
In-Reply-To: <ZofdvXLWunF4opJB@zatzit>


--vggu3pwtcali3gn4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello David,

On Fri, Jul 05, 2024 at 09:49:17PM +1000, David Gibson wrote:
> On Wed, Jul 03, 2024 at 11:06:32AM -0600, Rob Herring wrote:
> > I think it's just waiting on David.
>=20
> Sorry, yes.  I'm always finding it hard to find time for dtc/libfdt
> maintenance stuff, and I've been particularly busy lately.  I did
> catch up on a bunch of trivial dtc/libfdt patches lately, but this
> one's a bit more complex so I didn't get to it yet.

Good to know it's on your radar. If you have questions or other needs to
talk about this, don't hesitate to contact me.

Best regards
Uwe

--vggu3pwtcali3gn4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaIXUsACgkQj4D7WH0S
/k7y6wgAsl1LpftCgasO4MrpmD3n3xfg+7YfgNPjnOsCBajmSsPmH6/UWnsxcEbJ
rdGuRXEmbv+6FNGW3da/r5V7Fc2xzckmjeG+EB2181Qh4i8oiarFrNZfqwu/WUqT
MBUzIoNFPtvoZ6oYBmKPoTM9bVTQIomqYLB8y8C+aHKZnyLhLTThuEj9SWPowl4P
9HsCbQrNajHKlWDexQfepK6y0Hxq/Chjl7FQWpyqriQSzGIsH8RsnYdaHOQJUVSq
cDTlYAIpfNqeVYChdYRoFxipqv+4/kLBl80JDsRI2EY1YPjyP/ibDqB2BVmcWwjG
x+Cdr9pCOqFL7UKaNGFAeHJQUkLnaw==
=5tav
-----END PGP SIGNATURE-----

--vggu3pwtcali3gn4--

