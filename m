Return-Path: <devicetree+bounces-62990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A728B3618
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:55:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 175BF1C203E2
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C77C1448FB;
	Fri, 26 Apr 2024 10:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DuSafFZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AFB143C69
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714128903; cv=none; b=gzFbhePIt20UuEC7G+/TVHgqRmUJ52wilj4Gtv3pup6RH4JO4POqNv0nicgITFglfEmEi43+Y1ciXYvEi5tjVHTX+XnzJVzxTBXN9yO41Q+FXk8RZo6OuZ1R403UHCLMUY+AVQT5OGFj11EVmCmW2P82EL9fGcYFRkvNjyDLmyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714128903; c=relaxed/simple;
	bh=DIyBYigJJ/qTpLE5EewD87Aphyv6LkbS9QtWMPjRHd0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Shr90tMYg9ItIGv8vHK0SOlzW31rnIqJPuDvygsUH7vvHiR1xvaKFMKqGvDXrVcUfbdE79VFLPmSS42bemCWusC7kL70RZqXsoL6d5B1twtlejiUIuKn+5jvNJ4XPqx5W5J/kCQ7xtxT+aCe8dA6j7ZD9WVVUJfXwOn+g3KfNH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DuSafFZI; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2dd64d6fe94so21634011fa.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714128899; x=1714733699; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DIyBYigJJ/qTpLE5EewD87Aphyv6LkbS9QtWMPjRHd0=;
        b=DuSafFZIzN52bdTGiaUJXRuSPumFMeA/xpFEKs6SMZaZL/v22SGx2Cu6pVaXyatGYo
         zWiZzHcO6PusXJcQvQ2BADO7i8rkGcjlbUjPUp5zp3T3etUGonr0XcACuz5wDTvZ3SDN
         UlHf44D5XXlrp0JlwDrNUFWM7WkpurF/ajL7Mt+Yt/RlSiQO9Z7yox7n7soiiVyv/REG
         r9pwAKf1tybC35POhsjiKMsgxuKOlO5xpsW+hTi43sc6mbkwMTWErj1zk+7A0YgcDn6K
         zsggJhgDsf4TRi25aFwPhFRTuqfHUtK6lyl2DjTG1xUaiPz/Gw9FySv+IZ0ZSNLA2iZh
         BhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714128899; x=1714733699;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DIyBYigJJ/qTpLE5EewD87Aphyv6LkbS9QtWMPjRHd0=;
        b=JkQDU/oPJd82a+ofH7z0pPt3yXTYwt4982rgnYUww+TjrjISjg0C48qN7Yhyd/oTO9
         VDGapRCh6VVU7ropVud1L8KWtXuEeak6LFd5LdY2A8dADUcOf7e+FPHCXgrqWcpSnF6g
         cNi5srdMmXuuFLZtad7rEVmd8USAsA2hQTheZghEFMDy6qZBdbJYnt0mpTmb+oIbkJjY
         GEE8MjojS8UegVgwrauIN/rLwdIO9o+sZPyc5lvkyjw5kgqrRHLre8YKXntTZb4sFx73
         qxTsVuvFIu7vc3Vf0s+SYoW7vng+CYwrZ3lEMuekhNINtkjUf8aaEQ8Rj8vzliKv2I/D
         wsNQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0+LlBRhTngby7ATqcYlOAQHEZSo0SsGW+0VYFFQEvw6Z7UagvF5t0xU5kM9syElO+qDgaxBcqxXHxjMAdfhowBIt2lItOWcvkZQ==
X-Gm-Message-State: AOJu0YzyT3hsPvKxOx1Cl/KKIgmez9FHQ9GavG6MDeJn9f86sdb4vOYC
	JcrwFHlJhaJBlArl4JJ+5dMWiwML3FJb/Udq+J+9vHfEosYCGPrLUOeYZuSQ+Dw=
X-Google-Smtp-Source: AGHT+IFyC/4QrUfmFma/svm6P7ncU0LS1OeE3p4iwwLxVeaF0tQ3vYyuoA8eoICoNDNcv4AhdWdRLw==
X-Received: by 2002:a2e:be0f:0:b0:2df:48a:b8d9 with SMTP id z15-20020a2ebe0f000000b002df048ab8d9mr1837667ljq.35.1714128899379;
        Fri, 26 Apr 2024 03:54:59 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id n6-20020a05600c3b8600b0041892e839bcsm30822115wms.33.2024.04.26.03.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:54:59 -0700 (PDT)
Message-ID: <8023ea8c1eab725baf0389fe34b918bb5dd924c8.camel@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: samsung: google,gs101-pinctrl
 needs a clock
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Linus
 Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, Peter
 Griffin <peter.griffin@linaro.org>, semen.protsenko@linaro.org
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker
	 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 26 Apr 2024 11:54:57 +0100
In-Reply-To: <013f2da9-1d91-4b62-b5b7-d603d0c09aef@kernel.org>
References: <20240425-samsung-pinctrl-busclock-v1-0-898a200abe68@linaro.org>
	 <20240425-samsung-pinctrl-busclock-v1-1-898a200abe68@linaro.org>
	 <56a32a2d-2f6f-4f7b-8359-6f3062c010e2@kernel.org>
	 <013f2da9-1d91-4b62-b5b7-d603d0c09aef@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2024-04-25 at 20:18 +0200, Krzysztof Kozlowski wrote:
> On 25/04/2024 20:15, Krzysztof Kozlowski wrote:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c=
onst: google,gs101-pinctrl
> > > +=C2=A0=C2=A0=C2=A0 then:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 required:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - clocks
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - clock-names
> >=20
> > else:
> > =C2=A0 properties:
> > =C2=A0=C2=A0=C2=A0 clocks: false
> > =C2=A0=C2=A0=C2=A0 clock-names: false
> >=20
> > but anyway this is all a bit fragile, because pinctrl is not a driver
> > and you rely on initcall ordering.
>=20
> It is a driver, although initcall ordering is still there. Anyway, it's
> the first soc requiring clock for pinctrl

If I see it right, E850 has similar gates, and like on gs101 they're curren=
tly
also all marked as CLK_IGNORE_UNUSED in the e850 clock driver with a commen=
t that
a driver update is needed. I've added Sam.

Cheers,
Andre'


