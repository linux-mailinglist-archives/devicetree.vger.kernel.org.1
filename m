Return-Path: <devicetree+bounces-238900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D9351C5F719
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8645C355207
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 21:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DE830748A;
	Fri, 14 Nov 2025 21:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dvq7y1MV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D70C2FB085
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763157477; cv=none; b=W+IOJjpo3bi/6RlnxrRf1JVU6FnheptOw6a6V7TKvPbGJyo/D64i8083Y10qlJ5iYc/rEr45vuEhQ7DBLnvXYdHHxwqNdVVqF0XeQb1+24xnadUJmX2q/LgMlP9h/00bVVmzupvMZyPheYKrZT34TrB07r1Nx3GH0+Wrgw0yHAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763157477; c=relaxed/simple;
	bh=NejWZ+/c7eJzxkqIJLUq6kOMKEwS/zt3yIZkcOMgvtc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hcr3I3gyBbjOGiz40nG+dNKNKcRXMTuxU/VOEpWkmN8AHB+0YAodiBVfodMBHMGaW5QBJ7HMxA+eVQooQY7ch6enqBSwOroGNKS20mvKj0PeqA4TDNtZIGsoAUV/3DMgg33R93BeT+502sJ0fHjbfL/gtnQCgOiu3VvOusX9Hdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dvq7y1MV; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b39d51dcfso1306140f8f.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763157474; x=1763762274; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vbNWOmHpdEa5AGQhVuTfa8JxnnOc6K3WrOIf2UEgPrA=;
        b=Dvq7y1MVyrcGRpWXca4pLx+e+8RdgNkKTnASp232YHPUasCie0xPxnL9F7Rp+RCoyq
         xo6RX4VzSZ6jRzeRNwOpeLA56N452p7lXYF25nlHdwaghfFqeXqbU3kaSwY1hnPqDJU/
         W1GnX0hoRP+jen3R+qFgFgruB0GTikL++sxvCePrrLkMHK5LlOw5h6XpCGMgnVhsotEe
         6uTF8cmdry+dmzj/0Wtw5EhxPuG0nR0OUHaW75A2EG9HIPKG99ObxHI1fv9w1UyBAwgS
         hQahVYFxliyUAnTbEXMEsbTII9+Uw01y5QzWXXhYKlkbJ+nIvTjHizQNefZM6N4EhhPC
         Vh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763157474; x=1763762274;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vbNWOmHpdEa5AGQhVuTfa8JxnnOc6K3WrOIf2UEgPrA=;
        b=r0kCgmjAC7orBx0FuaOCiEvUrtYJ/cCeKwOFSsZpyyaSgv+EwHo1kaFizAKiv6yUtO
         IuBlqcCmbDWRQn8EskErMjZESzr1wZ3JQLCtj3E/17x9RckptAFNemfdy3NzlcN1EgqH
         ADubRa+l5Wq7Q/wedJBnG6i7hxb4WqsQdWYx0iMVOQR0KQtYJKWXFexEDDAoj7cAsDeU
         XyK6o2mtT5EHsWj1opaqvT8RCXbVdGVZvZJNT3TQe9xGcp36O0wjUivpDY8o4CuAtW84
         D4IqsePeENg9N/KOYi6wa7uh9tH9dGLyA5bHPRmUoI1jrdnceOc4zhecn/MfKfjKTrtU
         lnvw==
X-Forwarded-Encrypted: i=1; AJvYcCVNWY9WdDUdGiH7Si/K1zGVEuVlpKj0+n6RTMaoGjT2WoGrhuC3BB3SYm7E3HaBJCCJkGulvJ/5UJhh@vger.kernel.org
X-Gm-Message-State: AOJu0YxMIVqiaOYJUG2f7e1MDMCDxELNXbNDTU6Bfedm86RZH12N9ZJl
	Lq74a39542WhQMIUHL8LRpcpDfcZRZfywnDSbMLXuusHwLD4Nbh76A+j5MeWhIzMZxo=
X-Gm-Gg: ASbGncvB+kHq0awF5XPHUajTjYwQNcI96EMCHtGUeWJP+mRcOlbZH+Hy2MuzeGvhvL5
	xlNRvgM7G7ZXL9bh8RDQelmc8+VZ6XOi4RffVE7IUcyKY/KezFAKfr+p+5+HkyK1JEvyTH2Hr7V
	5h4UjIFrYmYvvmapLL6hW/ZmfQxjYRzhGO4IdwLGcrTv/e7/BIqViFTsZktGNUxhVs4YEw50fDc
	kW/ABwq12IOuF/nI/4YcJ4nwTxrE83Cxh77kjXGodxppc05LbF8CDNr6t/qLljleaUZbzNKkc89
	9WKIZbHIdfhwvhgj5nC0ggUFjnEGFFS34AaSfRSl2iwtfGpImTGlxXZG3trnw5fdRBoYrIQodHk
	hjAkCAEnrG4OtWcLlBnnCbf8k8ILF3b3/XD4x2A6b4+2rv7S3bzKNfTb3ALTsKBZFRPTSislaDl
	2CAxc455mDm07AEagUiw==
X-Google-Smtp-Source: AGHT+IGZJojwQ5TmPU9HbJqZqk3xKa3jFdu0oCf5mPPHwz3sSCeo2kX4zEUPEQ1wpVk6J/TBJSkFkw==
X-Received: by 2002:a5d:64e3:0:b0:42b:4061:2416 with SMTP id ffacd0b85a97d-42b59396ee3mr4481398f8f.52.1763157474288;
        Fri, 14 Nov 2025 13:57:54 -0800 (PST)
Received: from draszik.lan ([212.129.82.217])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b8d6sm12805516f8f.28.2025.11.14.13.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 13:57:53 -0800 (PST)
Message-ID: <f1e9a9e35f7c16d8db0e39128eb184f3f42b7d02.camel@linaro.org>
Subject: Re: [PATCH v3 09/20] mfd: sec: Add support for S2MPG11 PMIC via ACPM
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,  Liam Girdwood
 <lgirdwood@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz
 Golaszewski	 <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Griffin	 <peter.griffin@linaro.org>, Will McVicker
 <willmcvicker@google.com>, 	kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org
Date: Fri, 14 Nov 2025 21:56:41 +0000
In-Reply-To: <db7e95dd-2361-4579-b52c-b9556da4633a@sirena.org.uk>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-9-b8b96b79e058@linaro.org>
	 <20251113162534.GO1949330@google.com>
	 <45ce203c03ec34631a0170baa7e4cf26c98b9cd3.camel@linaro.org>
	 <db7e95dd-2361-4579-b52c-b9556da4633a@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Mark,

On Fri, 2025-11-14 at 16:46 +0000, Mark Brown wrote:
> On Thu, Nov 13, 2025 at 09:43:29PM +0000, Andr=C3=A9 Draszik wrote:
> > On Thu, 2025-11-13 at 16:25 +0000, Lee Jones wrote:
>=20
> > > > +static const struct mfd_cell s2mpg11_devs[] =3D {
> > > > +	MFD_CELL_NAME("s2mpg11-meter"),
> > > > +	MFD_CELL_BASIC("s2mpg11-regulator", NULL, NULL, 0, S2MPG11_BUCKBO=
OST),
>=20
> > > This is highly irregular - in that, we've never done this before.
>=20
> > > We're going to need to have Mark look at this.
>=20
> > I did see this in at least one other driver, ah yes at least
> > drivers/mfd/88pm860x-core.c is doing something similar, maybe others, t=
oo
> > (I stopped there).
>=20
> Other drivers doing something doesn't mean that they're following good
> practice.=C2=A0 We do also have drivers which have multiple identical IP
> blocks and are passing in resources with base address, interrupt and
> whatever for the IP blocks which is different to just passing a Linux
> internal ID number through.

That's fine and I understand that. My reply was in relation to that this
has never been done before.

I'm happy to use an alternative approach that can solve my problem, if ther=
e
is something that I have missed. I think the commit message for patch 8
describes the problem in better detail than this one.

Cheers,
Andre'


