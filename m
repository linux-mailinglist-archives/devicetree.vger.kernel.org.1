Return-Path: <devicetree+bounces-47180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B8386C5E2
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5EA1C237C9
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6597D61680;
	Thu, 29 Feb 2024 09:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t+50Fwdf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CDF61664
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199887; cv=none; b=FGauQQ9Oyikdj/1kvRhtjEbbLIGxUDEJkIWoxXDve+ORndXT/zoBUei4XTKniv/Fi9b0l8fx3r3yR6sY5QdSC0AE3809IdIkw63FkiNPxxGabU3fitX8ZgRzs5z/adKTvTlwKMYQ7bleaiOKS5QnSqHjVYZNsUzlZbY1qugPJ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199887; c=relaxed/simple;
	bh=6K0C69v8aY51x+51DR4S1y5FfPh76F89vxnIkCM64Fc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QLApTl6giG+knMf3TYhvBLGIumKKkrGbj2obvWOLDhE7JMwKzlG29wrJcVzOs0cfAmp7gKkBte3qpGixeTwcwPg60Png4Sk+1pN9EZ2/qFyPDxMeUUURedEZyn3QbaVoegOaIzfXxrtriy422l3BJk2REoedewBFhF1B3un5tRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t+50Fwdf; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so762385276.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199885; x=1709804685; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FtGe/ds1ZRlsDzPhDzq5vY2M1N8N9oZVvQoi1ym4DQk=;
        b=t+50FwdfE+URjGigg3CltFoEYEGxSFwhYFI4KJHK1sRFAdBN/QbCAVBZtWWe/rwlfq
         buI4lWvF/G7e+8Snre4sjNj9wzKVn0AkqWlBw5UTR8IpVeaZ2CK5CLSwE1oSYI/jIYq2
         IxxN9pR3s/Y+1Y+HkKuIjUbz/FVlxsSp7Sh8wIa9jiyxqqubgv9H0r5c0B0sI6r3qH2h
         UdPzI6NoWLsnBfJFvMiOqbdeG1a3UVkOy/opGP6JcuUqie9KJioRYSii/axy8/8mVqgt
         XTMpZvIAil3vJuCYEM7BIsPNqrDtelAh/5yyCN0GzazpLijL7WjbPyLr7EkBbbYB8Abh
         tJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199885; x=1709804685;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FtGe/ds1ZRlsDzPhDzq5vY2M1N8N9oZVvQoi1ym4DQk=;
        b=ENveKPdJaZ4ZpTXD1f2Y2pcmpbc6EUAoxXiyCOVBoUj4Yr7tVfnwuBy2YZYOE9bFfj
         9koLCNL0KlKeCDfTw+Ji+Nx6mFcqJ/mqkCVSMaas8K0OyCOP7/a2b1UHe0THCMxIKYny
         pRg6A9qd28xS0jCy9zW5RLP4ACo3l3UUIGZW3YV5vxahFiBki2fkpAajsjc7kW4m+k+L
         CJp/jrz4NS8ghU+hCBtqijUg5gcCiQ5WBYJWKmw/5tJ4tUR1Rby5Sjatcqh6D5EI3H1R
         /OEt2Jq9CZpnNFZd2Np12YUIY4Om8ceh/ADYfE8lo6hfB7Zotku+cdGZ3Fh+/IONII7a
         CMzw==
X-Forwarded-Encrypted: i=1; AJvYcCVXqyGB2SNyfQM0OkG2j4rOD3Rk9Xc/+1k3NiN8+LUXuQBg5v+Un4VjCNiesSerYczyY+6R48vczSFDL5422qnpRIfz9Gz61c9Evw==
X-Gm-Message-State: AOJu0Yw9vYmS5a0/lrf5NytjwWeAt8mS68N8e39U0R8tczAzMUtB+tTR
	iy7UdvYyWXc9TDXCY9zjGU6NSVsszOVjhpuciynmtj3ERPXtXtAB1aVXqRLk+MLDEkfoo/Tg7uU
	bMf/y/QTWI44CidSzV51H4caTqiW2JevEXFtOJA==
X-Google-Smtp-Source: AGHT+IGbChf405oU9sCbujzjSA/cHfa3590PjMRDmzrZOTzMB7BN3TjSi37+bplsHq5uUkE5RbjhcMUip8MDonqNbgI=
X-Received: by 2002:a5b:751:0:b0:dcf:3f11:633a with SMTP id
 s17-20020a5b0751000000b00dcf3f11633amr1588471ybq.35.1709199884731; Thu, 29
 Feb 2024 01:44:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:44:33 +0100
Message-ID: <CACRpkdbK2Sa_4qp3VE0ivHP8W6F-QDkuxV-XnZYviAkO5ZBMsg@mail.gmail.com>
Subject: Re: [PATCH v2 00/30] Rework Nomadik GPIO to add Mobileye EyeQ5 support
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Stephen Warren <swarren@wwwdotorg.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> This patch series reworks the Nomadik GPIO driver to bring it up to date
> to current kernel standards. We then add Mobileye EyeQ5 support that
> uses the same IP block but with limited functionality. We also add
> features required by our newly supported platform:
>
>  - Dynamic GPIO ID allocation;
>  - Make clock optional;
>  - Shared IRQ (usecase: EyeQ5 has two banks using the same IRQ);
>  - Handle variadic GPIO counts (usecase: EyeQ5 has <32 GPIOs per bank);
>  - Grab optional reset at probe (usecase: EyeQ5 has a shared GPIO reset).
>
> This GPIO platform driver was previously declared & registered inside
> drivers/pinctrl/nomadik/pinctrl-nomadik.c, side-by-side with the
> pinctrl driver. Both are tightly integrated, mostly for muxing reasons.
> Now that gpio-nomadik is used for another platform, we loosen the
> relationship. The behavior should not change on already supported
> hardware but I do not have Nomadik hardware to test for that.

I have queued the relevant patches to an immutable branch in the
pinctrl tree for testing and I can also pick up some ACKs if they arrive.

When I'm confident in the branch, I will send an optional pull request
to Bartosz for it!

Yours,
Linus Walleij

