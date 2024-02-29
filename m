Return-Path: <devicetree+bounces-47177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6045286C5CC
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76D251C21EED
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3DB660DF2;
	Thu, 29 Feb 2024 09:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VwpAPcha"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AC860DFB
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199781; cv=none; b=qEx1Ard2baySYYf1j/gCE8ZofBJoEZifJJEhZgu0jKe/7neH8MDtrCahjdb9t0w2KaCK3UJRCVKezkf0jGIfSGjl1BvayzH1DPFwewndc+YvCupgo9+Y4PZODfL57Ckac3hQiLMLTaJ8fvqfkfvYMaXUuI/iF+xol1KI/fAjKAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199781; c=relaxed/simple;
	bh=WX6ElzN18ENGeITFFDkMWABhcHlHX3NBsTlvSRXysgY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KuFhtXkZeTyBW44bpwFG8wDvu5OkSH2fXxiBaqUcpuoS0Zt63PbTuKKnvH8nJK8vzUvCcSUsubTI483TQ41r3CMZoqJRwkZw8AM6e7slfJGMSWjCDJ4hFFjt6m+b6mDcFT97Kf6URCIvDyUv6N8a9MWEIUAmMOfeFMhZXriyjjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VwpAPcha; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dc238cb1b17so781995276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199779; x=1709804579; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WX6ElzN18ENGeITFFDkMWABhcHlHX3NBsTlvSRXysgY=;
        b=VwpAPcha58IVwBhOUoRrxXcCj4urcm/iMWfWwUZjGayw9A6C87UU/jo0/YS9kaMSlz
         RxQ8CrM4nRtLU48hYwDoMeTNFpYXJh+IUbvD9DFbwtnIEA7UHTwZr2PBNDvNifkGuMgK
         UCVHWJ2SnfPt7jtO+Cldq2VPS94EYrNQQn6CgcdlejoJHkMOKW8pRon3uzWonq8mRo/w
         NBL3xd2c40WKqJCz7/Oyf7auOeAgP9lyCFfbsgr7xuuYnbBMW8omDHnk3O5GB6rlgzCk
         6fhbSouQodxb/7QoUkppeH3j6k5tWfOx7QAbVGq5Un9ZzaJjtayB2Hd2/Bqsi8CZ/UuK
         Tkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199779; x=1709804579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WX6ElzN18ENGeITFFDkMWABhcHlHX3NBsTlvSRXysgY=;
        b=ZXQVIR/0+yDBVwe3uy6GcvUa7m+M4ecmPEjkSxCkw3Fgcg06CkGWSfufqNOBmmAt4o
         lK5+kaKune8luFcjsjOS6CIiIKTgrFTnGr+Ekv69oRuTcZ66MxaJW/yez96z7zE5tgYa
         dUtRU+c4amJ05ns4hX3v4t/RNEOizdYph7GRZHsoA/dB9ssjJXsqpA6OaQvG2f3VZN2z
         Jxl6mJPjDrkgo+LAW1kFsaoxrhv0py67YrwRXoDw2PDNN8Bq9jEWuGT82gP6Z94AcO2R
         1Y7+X4QH8L4v+rVn97clDI2TXoROfLhTUzPdo6jNBPlPm5FSzlXSZvHVoagTRFM1+cUn
         DyXA==
X-Forwarded-Encrypted: i=1; AJvYcCX+QmDH54zxZVat0ee3VyuYM49/h3j7p2P546gJiYt6iTieBO0kabXfyWPQDsqpkzagUHBlaRyRhmSZa5YCv7nu8WhK6OqK0tCvwQ==
X-Gm-Message-State: AOJu0YyQJf99X3tfBCvRJQjP8PEfU7jdPClMJ9HWXow92NEeqWGTPnQq
	48Vrlk1F3+FFCgfkInOPifKzcCxwKE8PKERR0P0eSFPAOTSQ8Z6TN3AgFu4EeatO07gRDCJABmZ
	xagnFDbEkXpGhWncvDguDo2X8msQDZT1Li0GULhv/RYSa7KUO
X-Google-Smtp-Source: AGHT+IGWB8ii4Rr1OBtluZ0lydmBWdI57cDGyFQbH9+5gpfG9FKxBEkZzmzb3kJFjrZ9rPeNA84QZSnk4Kq3aGP+H3s=
X-Received: by 2002:a25:b209:0:b0:dc6:9b9f:d3c0 with SMTP id
 i9-20020a25b209000000b00dc69b9fd3c0mr1735381ybj.10.1709199779367; Thu, 29 Feb
 2024 01:42:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-30-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-30-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:42:48 +0100
Message-ID: <CACRpkdbHhbxu4TX8ZnkEGA_+v2GdaYSMMgBZH6pL2a356kcS7w@mail.gmail.com>
Subject: Re: [PATCH v2 30/30] MIPS: mobileye: eyeq5: map GPIOs to pins using gpio-ranges
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

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Create a mapping between the GPIO controllers and the pin controllers.
> GPIO is handled in a one-instance-per-bank manner while pinctrl is done
> with a single instance for both pin banks.
>
> See gpio-ranges documentation:
> Documentation/devicetree/bindings/gpio/gpio.txt
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

