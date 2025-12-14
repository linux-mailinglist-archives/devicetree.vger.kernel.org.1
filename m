Return-Path: <devicetree+bounces-246334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F29BCCBC084
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2868300229D
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7D912DCC13;
	Sun, 14 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IUADewMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDE931578F
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765748573; cv=none; b=IanGXopJH2kbmNAgx2p0D/2b06SU06gaxZSpTxhwQaeC7scM6HujL5iFP6IAEtIcT1q8nKO+WkpAYraCO7c9lPlijMOiJO6/HM28n0TybTngWPyvlM+kIOhB9qM4JxMnKELw3jxrZH1rAWMxNapSGtys7Y61PGf0csIVvMJyhec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765748573; c=relaxed/simple;
	bh=9ho59uSAoTWYspH50cR6tVu+jU+ieBT0P9CayfXeAOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SEpPo8/Qbsd8wJ/H1O2SQIJtUzLdsMhq3C4+/FJwvr2nILFARYliJixouOlIk2ZWMVeG6Urxfxmm/e3GKd9BrMCMESj+mE+2jB961u0OGhoHfXJgWeLP3zwyA3G914SLWQ1UCK8RHFqnfaezFANWZwn9l6aCDodPizM3ZX08edg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IUADewMw; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477a1c28778so32605625e9.3
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765748570; x=1766353370; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pK1WczCMZIw0u/2xZq8mRqHd/PyjP8Py22ENm90CJTA=;
        b=IUADewMwNJ30AUk4Xe19KeLWZUboOxBb298eZbmu7/F5oZWOLs8mpb+wf3SI8nbDPN
         Ry87/vsoE5CQpqxZ3KtVzaK1CkmzznpP1QlR0KBwWIiYGU8847zI+WBSwGJPJ8TsuDiC
         zxlxmBYeGNdzRP4rxzA3e0ZlmrHtcL9qaJ5QTbVnm3gB8aH7RvNjVvNL97Wgmdej8Cpz
         ky3KdgwcvpOpbzJIY7ENY+/IV7e/ZRQ+Dj7jFZHa/vN0Ib/5NNC7Ay5jk2SL0eP7Hs5g
         gowLGOzxdhVxcrGIiaF2IIVVGVGqM3JGwPombcFvGtocO2bL226SeQ5v+9mZ4ZqlG83U
         vf7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765748570; x=1766353370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pK1WczCMZIw0u/2xZq8mRqHd/PyjP8Py22ENm90CJTA=;
        b=xHq1NQT8BkmolDC210HIAYzZwcKAKjZ7ZBSMvds5IDDU5iuVzcXAvwUEieSqvjYfQP
         61CYiaclEciySmpPu9cv4SP7WK+PAcMxwAkAQuJ8PnoSVB7mmA1OC5trTo9s9BvdhNVS
         QqfoaqqdBAVFB5e1iqJEJ9Hfn7DzgSAgTzJBKf8TGqh8LL11sWhzbotOV/q/g7H4+6On
         RcQV0D95IQB9Mj1iL1o1qrYs7qzYi9bTwK+VVdsLfg1cP5B2hconu7ixNZ8rS0PViWAT
         P7itT/FENNTOi5dHaWS+nL0bTJAFbRGylowP6X1XVS28HBM1dpLTp9mJyi9F6efwy5Lb
         kuzw==
X-Gm-Message-State: AOJu0YyxkHiKAJmww/ochXuh0qnvqPzkiXp+Cqy8bcYzwZQvBLEsOeRU
	wx5z9+vozoZozU0vFJp7vLkaDpGqoFh/X56FYv2PjQALkQk1UGUCWQ8IX/xykq6e
X-Gm-Gg: AY/fxX5UEGmB1YmM6GFKsSCl6JKTjRKWbYdqKpJm7yvA0uaiTY1db4i4ijLedKHOaV4
	LY1nYv/iKrfm6sYNFSWBW7cjtg/QxrKm+IYjMJrteXPmvKJ8rux9bf3G5F14PFasZ4atR5qT6JN
	2InwkSecRPMCeaY+p+6jzBmFqIhhNgXnALU1Ii2NE5mz3VPXcGMuu2xBA3jiqomRXQ0DNERgzCR
	aSu0lR+qkm0nQHZqtdYLJFKj/X7cjoZRvmakh4hU31nLBt4IWHEiLc2yUJw7ZeRiMkg033lIFjN
	gV4PvOdFGyI7c4fnkfUg/0b3HJZjs4zcM8Aau/cdAsGiHmELHea/+OeAiASJKAMjgRreUFezV8T
	iRYa93sHv87UgNK1QJHLfaxgOmyYXZ5bBQrt8yEh/jfRi452JwWIkHpn0O6bbrVwu3KmJOADksJ
	GFpbEep37+j0TcHn8h9tVZAVeCzVsHPxsDveFBANk6ZaThLElPmBUCA/eDEQq9udxdKKkD73qRH
	TOVB9Ty9M8myOmwk5qoug==
X-Google-Smtp-Source: AGHT+IGSOBeRKEVKVoegRRzx46nWQ9m2s3+RwYkJz4Dz4oFh7swBSjzkSvsc4nPXR0ZZ6L2YMWaIlQ==
X-Received: by 2002:a05:6000:26d3:b0:430:fc5a:40ac with SMTP id ffacd0b85a97d-430fc5a456amr2022627f8f.54.1765748570209;
        Sun, 14 Dec 2025 13:42:50 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f7c3040esm5989065f8f.37.2025.12.14.13.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:42:49 -0800 (PST)
Date: Sun, 14 Dec 2025 22:42:47 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 6/6] arm64: dts: imx8mp-var-som: Add support for
 ADS7846 touchscreen
Message-ID: <aT8vV_5cZW99YIB-@Lord-Beerus.station>
References: <20251214110531.9475-1-stefano.r@variscite.com>
 <20251214110531.9475-7-stefano.r@variscite.com>
 <CAOMZO5AzuZVkD3rTLEDGFpCx0ovtKfzjZtNgGG0uLDXbPkiqRg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5AzuZVkD3rTLEDGFpCx0ovtKfzjZtNgGG0uLDXbPkiqRg@mail.gmail.com>

Hi Fabio,

> 
> I understand they are both from the same family of touchscreen
> controllers, but shouldn't you use the ti,tsc2046 compatible string
> instead?

thank you very much for the hint, I hadn't noticed that compatible string.
Even though it belongs to the same family and uses the same driver, I will
use the ti,tsc2046 compatible as you suggest, so that it matches the
hardware more accurately.

Best regards,
Stefano


