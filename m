Return-Path: <devicetree+bounces-44489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0464385E753
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 20:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1098B235E6
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 19:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD3986130;
	Wed, 21 Feb 2024 19:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c7+GTiCd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771FF83A06
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708543910; cv=none; b=XV4Aj8LE+ppHAufLyYzMQ3WCoeYo0hx4jkS4r0uqo5GftcstqZ+UC/QieXpKOpOU3to3YcLKQjBSBbh5nFidT5sOKsjdT4zbJFAfsBzYw+hZQL8BIz9OXSHip7rTqgF2mIhXO6Q4siSNtzsXnCmh+d/a9reR+2vr2VduOJJbJwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708543910; c=relaxed/simple;
	bh=cK2/COg8bX/QO3/+g2BnMI+IJZZQdraLUne32V/1SOM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XucOGSt3rke0FH7jMeJFp5FDyaqhYLtyDfOpERVZ+qLS+ufYiftzTUeVnBtDpJLfRQBJmjnBmv6WvI2eQmjfYxdXJoaKFwyc7Eu5OFmt6C+/H+b0Fwn5/6T876cZDItE4CSF/d4QKwxVooYwavNBwgpiCtx4Wsz5kFIOXAhBb44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c7+GTiCd; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc25e12cc63so132546276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 11:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708543907; x=1709148707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cK2/COg8bX/QO3/+g2BnMI+IJZZQdraLUne32V/1SOM=;
        b=c7+GTiCdRWKQvnxt41SKtNDVgLOv0fa4s//w3bo9Cp4g905uUMkc9wJKqQieY/rdEc
         5CObeHnNzKn0TniFY2H/3vkWRu9SX4TF5KXmyjCD53SAJFvHkhykAbVsSxpKlhn/XUqE
         Q+8u0CUuE/9YNVMPlaUi9d4sfmYPSgDSRvR6nrgMAajhBQ2KZfgRALB9jBvDlVco/KRS
         77x2hs+fNJDj+VqWnTb/q6A1ZdGue3djNpqHfz+FC9e9dOtiFbVCjO8PaWS2Q/acEdHj
         SxgT6AkuY4de8pFkTG9ZpX5P58LBCDKQi5iv0j5rNTTLFjk5fuvJzu7Ew3ljgM4p3kkP
         kqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708543907; x=1709148707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cK2/COg8bX/QO3/+g2BnMI+IJZZQdraLUne32V/1SOM=;
        b=JfJbgmFrP7LcJ8m/46pIiauTWuLJ9fXb1kl8hrOxJP9bjyfeoOp5h6QugWQi7/PP0b
         uSgzIvJBMrjBH1DtzthZ3Mbb9rAMhqi1Co2gEDby1e8H8nL/wNGnlJsAXsA8JsnKqpeR
         QxZb6mocyFlk6f9iyrjuTxWI8YiwGUxqb5p89PxgVY9b1fdp43QETetm10ceDELUsO04
         AFyBSQYuIX3UKreUVnAnGACOdKu6TOE1n+WCAzM0LbXkT3BFEhcbUMbBSOCNSa84E2Xy
         hQy/crjFP/azvgCdjanXITYZA5Y3iTp1oU3oyQJ1FY7AaP+2wbnwIBxFHzOlZqe8TGvF
         wn2g==
X-Forwarded-Encrypted: i=1; AJvYcCW0p7iBgHm7Cd56I0SYJ1ytEo6CmVjHa6MRkY176N53ralb6i7J9CDZDqrwq7TlO1s+zF0SZca4nRqWuFAy4uE9bJ7EEt8A2qOIOQ==
X-Gm-Message-State: AOJu0YxXpSuFc+8iunLC0MhAijtzKldk9m+urr9nxQY7c1f62Sxz60bb
	NHZEq/2LtTEIDejA3OzYiM4lxt+CM8O53Hu/l7FB3okxrkvjvcCzsscHM1LQyM+9WpyXCMAR6Ec
	seuSs4LqohyaaFnN5H5ZLUdb1iQEXdnaGiqSwLw==
X-Google-Smtp-Source: AGHT+IFcNRrRbBuX5wsB2mLMJqV3vUMnApqNCuxOwYg8cuZgXEc7ou5NmxS57HKKyJVhHK/1bsLXCWFiYfB9DCqFvWU=
X-Received: by 2002:a05:6902:20d:b0:dc7:45e4:46f8 with SMTP id
 j13-20020a056902020d00b00dc745e446f8mr92660ybs.6.1708543907471; Wed, 21 Feb
 2024 11:31:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com>
 <20240214-mbly-gpio-v1-5-f88c0ccf372b@bootlin.com> <CACRpkdaSMJBFrmbTu+C1Ls8HkLH4FZsAQ6t7dC76+sVTXXHEyw@mail.gmail.com>
 <CZAW6UTMON6K.34LW7FDGNO1XC@bootlin.com>
In-Reply-To: <CZAW6UTMON6K.34LW7FDGNO1XC@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 20:31:35 +0100
Message-ID: <CACRpkdZPU2EuBjTA3_ZQN=apSSpUYg0sOZoskSnttkVBixAnhw@mail.gmail.com>
Subject: Re: [PATCH 05/23] gpio: nomadik: extract GPIO platform driver from drivers/pinctrl/nomadik/
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 21, 2024 at 5:20=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> > Could you add:
> >
> > default PINCTRL_NOMADIK
> >
> > so it is turned on by default when we have that, since they are jitted =
together
> > so closely.
>
> Would that bring something more than what is currently present? I've set
> PINCTRL_NOMADIK to select GPIO_NOMADIK.

I missed that!

OK no problem, all works fine.

Yours,
Linus Walleij

