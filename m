Return-Path: <devicetree+bounces-179018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 452FFABE696
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:57:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A5CA1897FE6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A70625E83F;
	Tue, 20 May 2025 21:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XKTORxvI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C4825CC49
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747778268; cv=none; b=HUxD3ub/EnP5HYv0wmY5LqioMw8OX9M/6WqqO1kRuTra+6DDySvO/uV6UBwi+Vq3G2p9T6TtT55tFFumiURFswtuoxYx5D77VgSklnex5H2Qu0SVTRP4JOnu+/po8t+N1ljKuUEXs6bvjY4uVTNp+6z7Ot2QQit2MN4d/BHaUB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747778268; c=relaxed/simple;
	bh=bHvnk6eJiZC4DTGMLSqijxExjKpOHRj4wKmfj14AumI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jkMsKvaDBzoWtUSNbvE66HMR+3of/jONJy60c9XDMEtxGsRPzPyWBiQpWNrVgCc2ZOXkQQtoFkEsi0Nsg/VgCoY5d/asn8L4GkpSjZzASXn74DRGK3Ka51X7I0VcIQVWP4dpQ6iLlf3eDtTl9BDXA4Mc18DKOX3dinpOMIKxRMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XKTORxvI; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-329119a3a8eso31733161fa.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747778263; x=1748383063; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bHvnk6eJiZC4DTGMLSqijxExjKpOHRj4wKmfj14AumI=;
        b=XKTORxvIwDcLLfX+7R94X7uuTL8r+zFux/DwH7e2SdzbFWzRiZmRdbfCF7COc0o1jv
         tRISnZLImzoSKiHxBbvW40hryXpw4sjys7uHLHYrWqN/pQHhJZ746mE4c1h4B8GH8oml
         tWQGGbVC3gHKR+nCoBVx2z6on8DIn1KOMfwyMlyMD6+nZCmW41Ek3Vff/+YakYOxDwBD
         v/4B20LaTSY0mp+UBAR1xiObjIHTdwcnxL4rrkFtNrU4ADsPAKk8p7O8ORpNMcNFQmca
         FiCbuLnxTJjjszaI9S9szY392c12uUCI3ROtfaUXg7A3oCabI/Nrpj4x6dr9BUGWtm4t
         Klmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747778263; x=1748383063;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bHvnk6eJiZC4DTGMLSqijxExjKpOHRj4wKmfj14AumI=;
        b=NIaRrbyrJcLD1S+qeimQJrC2fT6Eq/NJnXE9a5Lwgf+P0DzLex1CYaHcUtldVyPSNV
         8Cs7htrKtGBy0Kersv7Nm9XK7rBLtg1rXNtMKxUsHtm5LHw0Pa1LtjHsnpuq6nQFVCaC
         XWZwA21wlAxnoIdXmSVbqB58IwQQCTkLqQakUjUe0KWG5q0SWHtWwtJZGnQqo20BFSY5
         6AA3AUziFQJCR7fx9sru6WqaIzVsqazHmKNklO9w+KfsDImhHJ+wunzfhcwmEkRjuFcB
         rN6mGAncHOJOXeYUQj1uGbUASqW1RDV0/+gAEeRHXzEa1Xj3UM+qVtQzgzfGahxvAWnj
         9gqw==
X-Forwarded-Encrypted: i=1; AJvYcCXpIsbwCtisuLWKWGHxvQVXpFdFWP6l69jolszngIhCml0R0dp0G3OOF0+J92JP1p32vTwtgB9TBPBV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy61f8hYGHGD8TWQtaSQBT195IV8I60NB/mn0tG9bF6KMDkpcOU
	XzmmOKsVif1UpzGnPjqd1PPh5f9WcQSdWj99vd+7JWF+mH2R1Jn4PgOgL3VI7oq6AKNSAxcOPCj
	hyjz9PaHw5mQriBvBA9Pv+K1hI4W+wrOSfUg9wLjWlA==
X-Gm-Gg: ASbGncsiJXC40kCt76YLF/TEiH72uWOz3S38Tfk5cAoS+qR3XCXRmvb/ImkNuqpVdvA
	iFpYrYtZiEmbHXm5Z/DpwXMpFI1XDByrFgNj5h0+1oO5oN681n1P6i+hKfULqJAz+Cw+T7IuxsR
	FcRUA6XWQGX3+OTwS4ZoIODg+WfLVRxB+I
X-Google-Smtp-Source: AGHT+IFzz0NXs8cF08Snmi4Ha7S7U5h0KKvjptJb+slPp5Gi4FWC7Nsw049EmovcMdDEvihhptYlSs6FgkwmCbzFvc0=
X-Received: by 2002:a05:651c:54b:b0:329:1550:1446 with SMTP id
 38308e7fff4ca-329155015ccmr33138651fa.0.1747778263381; Tue, 20 May 2025
 14:57:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250519-gpio-dts-v2-0-b9e77173e9c5@nxp.com>
In-Reply-To: <20250519-gpio-dts-v2-0-b9e77173e9c5@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 20 May 2025 23:57:32 +0200
X-Gm-Features: AX0GCFvwSq-oMiFu75DMDv5s_mCNJqSxwG-LnpvLIXP8m8Y6ivyc6Hrx1bC20zQ
Message-ID: <CACRpkdb4OeD_yaUsGJ9Ugz3LZTCMdz1hbH-cX__ixEPr3Snd_w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add 'ngpios' and 'gpio-reserved-ranges' for
 vf610-gpio driver
To: Haibo Chen <haibo.chen@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Stefan Agner <stefan@agner.ch>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 19, 2025 at 8:01=E2=80=AFAM Haibo Chen <haibo.chen@nxp.com> wro=
te:

> Not all GPIO ports have 32 pads, so add 'ngpios' property to specify
> the number. This can save some memory when alloc bitmap for GPIO,
> besides GPIO tools like gpioinfo will show the correct information.
>
> Some GPIO ports even more special, e.g. GPIO7 on imx94, it only support
> IO0~IO9 and IO16~IO27, so add 'gpio-reserved-ranges' property.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

The series:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

