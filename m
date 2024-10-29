Return-Path: <devicetree+bounces-116952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA69B4723
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 11:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 616FE1F23EF3
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 10:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D73204956;
	Tue, 29 Oct 2024 10:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qLKYBybE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EEC204924
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 10:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730198652; cv=none; b=Wb+ogtGpx5VpV+7ZG7EQfLQObgRGZDxU6u7KdM34b9VRHX54vgnWu28tw4HvIhJtHCo4/HK2tF1vRlpgWlCDUDVGFD8khKaiBQiYtlsyf8DuBv/qfbx1Lxgmfq82GlO/XQCK8jXKcsy46D1FuL7WUR/elE/eZmXZ9CxswHflVyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730198652; c=relaxed/simple;
	bh=08v98m3masgehHn+A38/furMQeUNpa14MNDKpKMLv4Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxDeNiGJodvqCfd9uEX3CX+yAEFf6wpaEksduhY4VMT7QWkkR0m+4jr6v32VnwSNLILq5QcW/0hb/qjTBsSSEWxLaidiTdU9Zgrxq8CYDC+00rLvwo1Nv0QTFBLqzadwfn3SFV3TF/R1bBXGmRCBwuJB/8AwLt7cP75ZGn4ZMDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qLKYBybE; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4315eeb2601so69629865e9.2
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 03:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730198648; x=1730803448; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uV0lBLqUhbRGXbbqopf6xRDXiTg4koFgUnIUJCqwVao=;
        b=qLKYBybEjz+kCqpC+vqQJ1hqfebLKQaMkVtY17DbVf2YPL8UaRce6ki54/rdWOwWMz
         Eld7RwIVK+hOizbH+3W8WPdRfFQ49NSs5Qt570YVDQs+xh6a+vaOwGHLeBrd8N6uBnZT
         Irood5tpNEwo3PVm8h+E+h4ytJPgIihZeldZM8dkUhsoSu/pTGIBT+Ha5SveVoJupBrj
         WZoYLD9wAdI22RTnWyro4RqxXEqLanfq1pIctznZoFx7uOxTbdz+EpcyVq0bYNUe3/Mr
         vUPAvYrIld5Q4aMfAiVFxrbWQEYsCUPo8UJSVgz948vj8rGEQF5iVG+eYIA+5SmgHNNT
         rgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730198648; x=1730803448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uV0lBLqUhbRGXbbqopf6xRDXiTg4koFgUnIUJCqwVao=;
        b=JNvRUNkd+tpUKQK0OIsEDTPMuJ03ojq0DFni/m+/8xDftmja8yQiTGOp4E8bu/oRg6
         DZRKzWlL3Z6ZesKyGQa5K7sGUQuIri2eGPCo25qZYAICHL6Jwzgl8Y1DircoRWlQmnux
         fgbSwo801TCk2SOtPsmu6IyBGHrNG7vTKKgrpwfUAUOhwTDtdmFJqJn8ISP6ooKLI82c
         yTq4jjLi/pO6Xteac1dXTtlcnFypVYr7zWoVu/i6EpOJq8TsJ+tAjxZfH5od5ZNh/WBN
         vObD1As7q3G0iI84pZewmfg2vMoL6sY9mBm3JJyVSE2h9QXKp1LSpoXedxzjX81TBVnU
         FWZw==
X-Forwarded-Encrypted: i=1; AJvYcCX5ipfzrrI2jlbBYGenuT5WXCyy8OChqMsjN1HG3w6rIRCyJvwjM8QAUOezgEqN+51BH20D84azwe/q@vger.kernel.org
X-Gm-Message-State: AOJu0YykcqlQ65M3xIWOCPaIICGRPEJh0/XECSUPPR0ZqbFc79Hk/l1z
	PFyDSvoluFdx6g5/Vg64FfMyEKxtuq8Dzl32wJ3J3141k55YWJVvAAeA/3xgdG8=
X-Google-Smtp-Source: AGHT+IFDd9toNEVebdV6GM2H3JKBp+TnL/N5UFyps7M6//NaEXMseAjAq8HwH15HVV5Fc5y5sz8WpQ==
X-Received: by 2002:a05:600c:3512:b0:42c:b508:750e with SMTP id 5b1f17b1804b1-4319ac9a785mr107122565e9.11.1730198648310;
        Tue, 29 Oct 2024 03:44:08 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b92f11sm12079610f8f.101.2024.10.29.03.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 03:44:07 -0700 (PDT)
Date: Tue, 29 Oct 2024 11:44:06 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Thierry Reding <thierry.reding@gmail.com>, 
	"open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, justin.chen@broadcom.com
Subject: Re: [PATCH 1/2] dt-bindings: pwm: brcm,bcm7038: Document the
 'open-drain' property
Message-ID: <7aok7zs7whxfg3bhv7koxfxq6qhgv34b7kg3mh526z2cf7e23l@ffbsxqdqjis3>
References: <20241012025603.1644451-1-florian.fainelli@broadcom.com>
 <20241012025603.1644451-2-florian.fainelli@broadcom.com>
 <20241015163200.GA1220909-robh@kernel.org>
 <252b6f39-3b06-43b7-b227-1c29c1c12bd5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4cvjuzgzwtcm6jma"
Content-Disposition: inline
In-Reply-To: <252b6f39-3b06-43b7-b227-1c29c1c12bd5@gmail.com>


--4cvjuzgzwtcm6jma
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/2] dt-bindings: pwm: brcm,bcm7038: Document the
 'open-drain' property
MIME-Version: 1.0

Hello,

On Tue, Oct 15, 2024 at 10:07:10AM -0700, Florian Fainelli wrote:
> On 10/15/24 09:32, Rob Herring wrote:
> > Another thing to consider is for any PWM controller with more than
> > 1 output, you might want this to be per output and therefore should be
> > a flag in the cells.
>=20
> Yes, that is a good point, this controller has two channels, so it seems
> like increasing the #pwm-cells might be the way to go.

So the idea is something like:

diff --git a/include/dt-bindings/pwm/pwm.h b/include/dt-bindings/pwm/pwm.h
index ab9a077e3c7d..d18b006a7399 100644
--- a/include/dt-bindings/pwm/pwm.h
+++ b/include/dt-bindings/pwm/pwm.h
@@ -11,5 +11,6 @@
 #define _DT_BINDINGS_PWM_PWM_H
=20
 #define PWM_POLARITY_INVERTED			(1 << 0)
+#define PWM_OUTPUT_OPEN_DRAIN			(1 << 1)
=20
 #endif

and then add support for that to the core and drivers? There is some
intersection with pinctrl (depending on hardware). I wonder if
abstracting this somehow using the typical pinctrl properties would be a
saner option??

Best regards
Uwe

--4cvjuzgzwtcm6jma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcgvHQACgkQj4D7WH0S
/k4+iwgAjc7XEedu+25b7SNYH5vkBjaMm+K01V70SIUTshAMpLovuNsjbzQq6gNo
SJIwRMnsjcofeOlME5jeQYNZFA+M1nq9cihDvbUntoS2ylkwgNhFggKKQPXQ8goB
uPGWeRngZsmodqIRBw6nSQgGXlELsQkBchj3pM9XjlOKApNq1SKu9VqgQVY/C/ku
ObxIaFk4POIAW/W4VUm/sTpP7do75qWVemdrckfEs3orE/1x8w+9JKEYqQmus8vQ
yeVPDEVIFAnI1rx7qXUOH3ojZRhAsom35euFMSY0oumokNN0VUQdkB0ZVPr7O4fn
0On/5fTjF4nnOTVxM1IrMrqLNz9fvg==
=tPDq
-----END PGP SIGNATURE-----

--4cvjuzgzwtcm6jma--

