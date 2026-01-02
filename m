Return-Path: <devicetree+bounces-251063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 98918CEE604
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 12:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 891E43001836
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 11:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB492F0C71;
	Fri,  2 Jan 2026 11:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cc772S5a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5894D347C7
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 11:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767353212; cv=none; b=KAHVtS65p0W4Gr+o/W8DShYepcFaemCt7vx7u6DOOmuHUZGwurgccB9j8q/NYlYleOsQkhyT5wuicqyIDY+sWMxpg9iXjOkE11vWV4ZZSA4HubdEoB2O3nm17URVhI+yXEvGQZRsiZnukb4SvWRSRbzxMU4pvMUlyp6HL96S2x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767353212; c=relaxed/simple;
	bh=wZCrrZeNgczJ32sMkjccG8DxRkRnphvQU666PCRG8sM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JZUNTIQGeAa/dhKhAaAfnUNRRMwBVcJXSelFmsbTdxbssy5Un7H7tqA56Un3T7PAn9LOEqqf+FU7G2bmgUck4VopVicRZATBoYq0YYcvtKzt8ItLcPAzz2ZyDsUMx9iuamLkVJNp7RbkxFMhSuxlY8Rjx0He5eQ6Oh6NSA6CAnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cc772S5a; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b76b5afdf04so1829784866b.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 03:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767353209; x=1767958009; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wZCrrZeNgczJ32sMkjccG8DxRkRnphvQU666PCRG8sM=;
        b=cc772S5a4VMMUdVSNVwm41kkCgYEgXMQr6YIlJKkgaP4LQvrMPOpAi/v0v+JeM8XD2
         W/8Bh5km53LMoX8TOcrXNvtU93GWDJNk6Ll005AtHiw1rjohlik6X2EKzUpGFWBh9SIV
         CEpo4mo8H1YBusC3JR+rW5CN/yqvnim3TjoHleMXyORMq0GrzXYwUsasqN8ycpQ0WWFG
         P/CmA86qaS1CQ6UelBIAWMtW4+V5JPO8diHsyMo+paDrq8S5NIm8J4EcBTwS47SssA5r
         pGntSTkoAqaeHHVIjQi3fYUbGKUvbWMnTz0dxdf0+XVxRWdzJFonIXUTnWYs5EUMDcfo
         HMnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767353209; x=1767958009;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZCrrZeNgczJ32sMkjccG8DxRkRnphvQU666PCRG8sM=;
        b=ZsTO5V/353Wj/gxNnu+RATx1dNmGl85quW5QesaaldBfZqSIIJvx6+URgGnKt5Ujal
         IB74lZAr8RbeRcbyuHcV1gelU0DRvFX/gjMWDPyZk6DM2bbwZvDVjkqmFk0zMzIld7JT
         zwu3z/l5dceMU1kdPPkhancIOeL+5Ce1AHnC9L7I11Vbb8CgafSt21ZT3h8/H7kYjE7D
         T2vmg62kXm3//Oph3t3sfaz/gghuJka8f+Pk8lHTapqZzlHZFs+rJrtK0HuEyIQHD6rv
         pCdPnGJCxpPQwF3l7Pcw7VBC1zsEHiHSiffoJXtJ+lr8hqrQ6bQWj/1DMTdrZEaZW/xL
         nAhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVs1SeccqakG7K8aHqz6iEWOoF1tIisGVzE6u6uiv9DOeq+GU0TM5k8obMIkytGX3oDtpG4AnwE+VfN@vger.kernel.org
X-Gm-Message-State: AOJu0YyxH5R1B9h1jD6OcVh4w21NqMtuN3a8RHT7x1XnGz6rzb3eNeTC
	2ZNzSiMdkn3fByiqZxPAhm9jYhZrF7gwhnfKSHA659cJh4VXZv2pjwTxKuHZGqrSbJQ=
X-Gm-Gg: AY/fxX5LRJNt4dO+cJjSLaUeW46mw09LLuV6DaMi4Eq5Hb/C1MW1fRyzIq/xIMlM5DQ
	dF+IfyZalbuSfAy0coE62LrSKlzr3B2dKABCWrp82DMtGS9SdHBtoR2NWMKusV3UuwQQw1tY6Pw
	dBMWY2nnL6twiJlaT13Mt3yR1TfTjK2nmV0d6u9kgObh1i3KpIDUNgIoWU6qWBVJYQkYBRAJ8+F
	GT/AQAIL0ZOyoySbs8Nlxpj2VdrdppYu80IoEgUgVWkorjDOD46j7ms775sImwVICZbfndfDsPT
	YVU5DSxji8gxJ/NVekiLRRc3/tJtFgN9b9xJSgceWyK29cbx/Qy+O2LLerAalFtYacasLjTu/8o
	3RhgGFH7gr6ZWmChyjeDoqiJf2LFeBfgOQcZi9nXW5eFlkLD1wvZlwcwpAb3q3FQYNKCEVySG6r
	8X35yWUax/dGSfR9gW0yu4EhkVsA==
X-Google-Smtp-Source: AGHT+IFb1cSu9KLCyJKAobmw+k0POeGJfgr/xC7uOSmUiVHIv6vit6M7ROfPJPxEhme+Gx1mdZY0qg==
X-Received: by 2002:a17:907:7e84:b0:b79:fc57:b598 with SMTP id a640c23a62f3a-b8037153443mr3708113166b.36.1767353208658;
        Fri, 02 Jan 2026 03:26:48 -0800 (PST)
Received: from salami.lan ([212.129.80.79])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab7f7bsm4468179566b.18.2026.01.02.03.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 03:26:48 -0800 (PST)
Message-ID: <4bfcb1420b9684f67bd4b8f583313c1a08a1616d.camel@linaro.org>
Subject: Re: [PATCH v5 21/21] regulator: s2mps11: enable-gpios is optional
 on s2mpg1x
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>, Lee
 Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Linus Walleij
 <linusw@kernel.org>, Peter Griffin	 <peter.griffin@linaro.org>, Will
 McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>,
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Date: Fri, 02 Jan 2026 11:26:42 +0000
In-Reply-To: <CAMRc=Meu6-5569rMcV0zf2V+Sz_QZgShoEhmhw41k6fczULcoA@mail.gmail.com>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
	 <20251227-s2mpg1x-regulators-v5-21-0c04b360b4c9@linaro.org>
	 <CAMRc=Meu6-5569rMcV0zf2V+Sz_QZgShoEhmhw41k6fczULcoA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2026-01-02 at 11:19 +0100, Bartosz Golaszewski wrote:
> On Sat, Dec 27, 2025 at 1:24=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik=
@linaro.org> wrote:
> >=20
> > For s2mpg1x, enable-gpios is optional, but when not given, the driver
> > is complaining quite verbosely about the missing property.
> >=20
> > Refactor the code slightly to avoid printing those messages to the
> > kernel log in that case.
> >=20
>=20
> I don't get the point of this - you added this function in the same
> series, why can't it be done right the first time it's implemented?

Sure, I can merge this patch into the refactoring patch 15 - the intention
was to have incremental changes to simplify review.

Cheers,
Andre

