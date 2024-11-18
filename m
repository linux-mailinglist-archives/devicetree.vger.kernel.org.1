Return-Path: <devicetree+bounces-122620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C76E09D1751
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 18:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67001B22976
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 17:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53573197531;
	Mon, 18 Nov 2024 17:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2r1ToH7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8991413B297
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 17:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731951627; cv=none; b=QfmQM2mw+sr4RwQImoLkM/L1993IqBLpPqoMRGzidLCuS9Gar57AnE2XuKsvGAVw2pIzyFqA83c25/HiBFOKCw4Tif8haahbm9bfkCiZrn/30lVMiYxn1RER0R1fMaoCJeT3V0j6cl3xmkPiv8dDwzccLALEy++zsKAByPMwBBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731951627; c=relaxed/simple;
	bh=1tIib4eNH4Bj55ytCO2SrDsnedFwF9aGSQvLrHzbjSk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kzgNQ6vUk15kkh7xBQztPPBCjGU6LkijkWsJcvuEzdkV0rFlN3mae1xmm/2GxReNw5I18h5eXkCzum9WLb/llyhWEZR3EdXQtuSdW9PaFjfqlzoWmSClBtPPfGzqYxRNqY6Ozmy5KVaMMdUIxiGpLEKE5q2dauouTZV/9OKGLWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2r1ToH7D; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-431ac30d379so39272775e9.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 09:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731951623; x=1732556423; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1tIib4eNH4Bj55ytCO2SrDsnedFwF9aGSQvLrHzbjSk=;
        b=2r1ToH7DkB1PODZpX6WrAs85twuB0dCTANxEEJrHLssz33/hPC5z5a9Y8fb4I0bqzv
         mz6NHGrJu2eQAEbHgdIb9EeYCDtIFVbzuwGmQA78YqAY8oU70ThJhRtFh7eOhOZwCgiv
         cP3rJiorQqn95L2yJR5bC92qIqW67oY99AFbiRnksqW505+4GDw5dZM/vXZCYf6lR93m
         4Ny87OD11zNydu2pToF8PmxVrLTbkIc/pgNOE8ZdtSKw4hus4KdB6oQnmjl2xPYMdZJG
         KcdV4Wja6/dbzXSx0j/A6hc+yqRhAw0dLZcbk2JngY7UrzLB5tI4lF5oK7gNfzEix5NG
         c4dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731951623; x=1732556423;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1tIib4eNH4Bj55ytCO2SrDsnedFwF9aGSQvLrHzbjSk=;
        b=jDcG7k7sv2EK9KU1I66P2cZwSl8ho5dzhhojDXB9Dkb6/yjPHh7Eb2yaLZbnaYhCbn
         cboKAQ4vSjysrWaqUXq1Os71n+fDlUyONwD16cbgCYTBe7SFUr87lSTrLFwW23B1hXc1
         xU/yz+FiFglY4ygi6QMAjcW5Me9zMHZn/o/IkInjFSTOExdcJyL+KTVDNtGnkGqZtwIU
         ycngSG8xEhCtl1m20lQvbOQaZEWpB+BRnq87vka3ly9SiTTgbXlaVIylPVl9ujz9Citk
         WX0GtSn2Q9hhwWjdkn1AiPeQ34HXmWbMrkb/m5/db7ru897zX6jlMi2D6cvzA1PmMANU
         uhWA==
X-Forwarded-Encrypted: i=1; AJvYcCVgIFpgc1xArp88KMI374R4+V5KjJ6qaHvffY3dMYJu/qOoUnvzcea98hgMwKakND7WmNg8Gu/SveuV@vger.kernel.org
X-Gm-Message-State: AOJu0Yydui7MRtJJw2AHUrok2l9u3xm/jxLp8hlGsgg0e+3U0Z0YMr+i
	ZCU/Vfs4CABIjl3u7KXuWkzuAeXibDOdHEkIGJrnhGeRH4AF5Uqtku9vRB8aHOs=
X-Google-Smtp-Source: AGHT+IF3nj2yHydrx7Ks+n+zytE68ZdQxoMq1sSNeM0Nynyzk3P/uHdIYwyssSFKYkQ+6vZqXuvURA==
X-Received: by 2002:a05:600c:198c:b0:431:55bf:fe4 with SMTP id 5b1f17b1804b1-432df78a99emr105241745e9.24.1731951622735;
        Mon, 18 Nov 2024 09:40:22 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da298760sm166249345e9.37.2024.11.18.09.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 09:40:22 -0800 (PST)
Date: Mon, 18 Nov 2024 18:40:21 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v10] pwm: airoha: Add support for EN7581 SoC
Message-ID: <kpbylpee46nmxxvzxfbylscfafrlkpzjt37lkfdt4vtoq3qvfc@5v7khvwwohty>
References: <20241103-en7581-pinctrl-v10-1-1990fb6996a0@kernel.org>
 <673b47ae.df0a0220.2187ad.bc2a@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5bt3c2qqssojeolk"
Content-Disposition: inline
In-Reply-To: <673b47ae.df0a0220.2187ad.bc2a@mx.google.com>


--5bt3c2qqssojeolk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v10] pwm: airoha: Add support for EN7581 SoC
MIME-Version: 1.0

Hello,

On Mon, Nov 18, 2024 at 02:56:58PM +0100, Christian Marangi wrote:
> since you gave revision for v9, any news with this? Is everything good
> now? It's sad if this last piece doesn't get through after all this
> efforts with the previous series :(

I'm sorry. I still have your patch on my radar, my todo list is just too
long to give feedback on a short-term basis. See
https://patchwork.ozlabs.org/project/linux-pwm/list/ for parts of my
queue.

Best regards
Uwe

--5bt3c2qqssojeolk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmc7fAIACgkQj4D7WH0S
/k6GNAf/Uv0TP2XG1eM5gVUAzPsO8nIbVqSQu0qVstgU2m0w4fwe4Sf5ikqykVsD
jeYs+uIgK1r055ifeUSf32mcXOb5nW1GPob8stTVfViOL0diAuv4d88kPzGnDi/D
vn+BwCd2pOi6dGopB+ZqtajsRasx7NNFvTf8ZRcq5V0/kpElLAcLQLjAJZGigjbt
a9d1Y1lnBUk+GeCg1rLvNDo5MPkL1t0xcRZgxr6qp+VVGBuO2SsL2IpW/eZz9HU+
M+evGLlT8hwlrNoBgZQ5vGvfZtda51JmcHTiF9b28iZC3pOnws8QiXpmznPlVhDN
5Jp1+kkmy5YbonA6ZlI/SncX7LzzKw==
=eBCO
-----END PGP SIGNATURE-----

--5bt3c2qqssojeolk--

