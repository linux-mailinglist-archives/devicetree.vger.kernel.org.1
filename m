Return-Path: <devicetree+bounces-63729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4120E8B632F
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 22:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 728B21C214EB
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 20:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275971420A6;
	Mon, 29 Apr 2024 20:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IH0tPWo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0E61411E7
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 20:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714421207; cv=none; b=WIjHXkW9aGirD66rBs/VT6sSNK4YoteqAp0KybZ7U6KVdLfi4dI7BR7lCEVlBGdUjHzfk01jx4czV9VTuQSAp6oY1HP8O/DtL8WtAgd3OPwECUWWu8/8DSbnW/steEszM5gKAwQWXoo4lmrUX96Bu5GfzDxFOrSNn8bbVpPCCjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714421207; c=relaxed/simple;
	bh=8jUOgi1XXZrbwIAYkNr9gAmLVkhI5hRZK/P2iEf8yFY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=O/7/jeikxWuvtmFyhPnNZEMlDh7gZJHesU3p0RFk7ISVPXjnsr3xxJmeyZ5qRi3r06vP6UCl9Ph7vODC7rxUCYJACS5dKBJ9lfi1HNi5KQh04WHfqxKNtyYpCJmiiJi1rD2C+CmMLiLPqJHwxXGe4QqoblYfnnHZjBe2J3hjoDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IH0tPWo7; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41c7ac73fddso8319545e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714421204; x=1715026004; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8jUOgi1XXZrbwIAYkNr9gAmLVkhI5hRZK/P2iEf8yFY=;
        b=IH0tPWo7ar8LriYX/sf9mw4BjARP1yv1gRmiiyCucXTP3pX6TRx9BaOYRJSoC7N5gK
         3KaGqCb70J7d7ftVT2T9fOzhjnMGDSKOzwf5+sPzP4ZPaL5grNj4pTGBgTxb1R+wwGNK
         5JaGSyPUFruHWPgQP33tvK7jHW4D6rJmj6XFqzWnAY+QV20rHS3+B4ufR2rCiF7INgTp
         8VgjPqqg3zF//W5QCyQrAJcWcDriRmnquwLiWzhO5x7qvREP30oAFityuNAfIxltU7mh
         dhcAh27QJ/kGjfpr2CTW4SNVObT/jAO86zrju8ndGXbex1TGohmiM5bGZ6QhGoA23q2l
         OicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714421204; x=1715026004;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8jUOgi1XXZrbwIAYkNr9gAmLVkhI5hRZK/P2iEf8yFY=;
        b=jcGoTy7QKeLx+J11K881xqj/lpPSb/SyPFZ0l+ot+rsZYvLNGZdCrdGGUPz9/2sPih
         8JXhsnJwuGsK+9g5rvpI3hJH8p5n6t/AElkj//vcXhBqn1YYuJ7+GrD3XJTZJG7s25UG
         d64RpMXfJNP7crMraQCIoHkvcnsyNkF1CETvCkvmPqcwZbEmNzNUTLoHVr8E/WQVL54i
         aNB4y0IBp+FYLKcFpjCQfiGUtYAt0ADdHITZRoBWfobdcoN9i2Kc+JZ//Li+G5QmVV1t
         etP8xgE99aSmnknOr/y4IGaP+3cCW5t0hlk1tmy99H2v5HlhCSIOPK7aPmfWs27y+MqR
         l5VQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBBbIwnGfzMiUYVA8hT8Ii3ZoTDIGxCCL3VuzYaYTN35DcGeOH1hjmG0wF8s4NPSn4rzIB0lOfKdNG8Fk1pamJTrL1N7DLFBGPkg==
X-Gm-Message-State: AOJu0Yy02LOxULd4L74O08YJh2pV4UGm4BeKad4eiQrovY8DW1523BFq
	uKtuxKo9K5TAX3dWKtnwez88sCdWMU8zjsksYho0//aYx0PsV9L4O+pp13jb7jc=
X-Google-Smtp-Source: AGHT+IG/JkC3NmGrBVKnO/crSew2RZ93tKu5q64K7Be/fwVJ6UWNWK9tDLgS4WLRBO92OWd/6DjpYQ==
X-Received: by 2002:a05:600c:198c:b0:415:540e:74e3 with SMTP id t12-20020a05600c198c00b00415540e74e3mr10044316wmq.40.1714421203786;
        Mon, 29 Apr 2024 13:06:43 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id s20-20020adfa294000000b003455e5d2569sm9432577wra.0.2024.04.29.13.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 13:06:43 -0700 (PDT)
Message-ID: <8309a9a8906d3b910f775c6d55d9f75681b03802.camel@linaro.org>
Subject: Re: [PATCH v3 0/2] clock support for Samsung Exynos pin controller
 (Google Tensor gs101)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Linus Walleij
 <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,  Peter Griffin
 <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker
	 <willmcvicker@google.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 29 Apr 2024 21:06:41 +0100
In-Reply-To: <479aeb87-ddc1-421a-a451-d9e62893eef5@linaro.org>
References: <20240426-samsung-pinctrl-busclock-v3-0-adb8664b8a7e@linaro.org>
	 <171441172281.306662.17546797534297489946.b4-ty@linaro.org>
	 <479aeb87-ddc1-421a-a451-d9e62893eef5@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Mon, 2024-04-29 at 19:45 +0200, Krzysztof Kozlowski wrote:
> On 29/04/2024 19:28, Krzysztof Kozlowski wrote:
> >=20
> > On Fri, 26 Apr 2024 14:25:13 +0100, Andr=C3=A9 Draszik wrote:
> > > This series enables clock support on the Samsung Exynos pin controlle=
r
> > > driver.
> > >=20
> > > This is required on Socs like Google Tensor gs101, which implement
> > > fine-grained clock control / gating, and as such a running bus clock =
is
> > > required for register access to work.
> > >=20
>=20
> Where's the DTS?

Here: https://lore.kernel.org/r/20240429-samsung-pinctrl-busclock-dts-v1-0-=
5e935179f3ca@linaro.org

(I was waiting to see how the HSI2 patches pan out)


Thanks,
Andre

