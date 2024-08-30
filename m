Return-Path: <devicetree+bounces-98422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C56966118
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 13:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E1A9282D78
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 11:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E22C199FB2;
	Fri, 30 Aug 2024 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K43oIYq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B833199953
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 11:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725018970; cv=none; b=ZlAn6OBUHnic1bhls2IpbfgCIGisgm4DTieSLZ+WWWMlxcV8ZhB/I7jZc5FjNGOSWqcc/S9dmUMOTOrNI/OpD1+X+40yu1WQbbsSW8/VizRPMoW1lHHnj36Zi3vdSypexdDYoi0YD+5bh9Uivdw3xly6pn21g3C2dAAZi8NbRAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725018970; c=relaxed/simple;
	bh=g0qYXdweblof+d4zDg0csLIusMtS4NAWZKZItJ2G/hc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MfS0uTuh+lXHcxr0aJxazuTHQa/nW7jmL3LZEuqLH0ImHiWuHqOWv2qhp/29eCp8Fwar+00RE4tkI0dAId266h8V/oVBUs/1QgXFIQwfPLVF4vT3GpTSq/MMyXP6rSMplqjJgWh2Lscyn5M6SpXMbLDiczuT8nqon8vmcpm02sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K43oIYq+; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f3f68dd44bso17463471fa.3
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 04:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725018966; x=1725623766; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g0qYXdweblof+d4zDg0csLIusMtS4NAWZKZItJ2G/hc=;
        b=K43oIYq+FfJsFMjjg5nndElG68IoSrOuMZfmij8JKMRBPCWwF01IcrT84A+YIo3jm4
         BpvWUIRwcUWArmtoSe0+gnKFWUwqr1HIuumvXij+o4iVGlaynYi46eIjiVM3c1+RRkp0
         +cvN8jg+YJ02k1FUPxLWoFLVl43N+4YL/4PDwKVmERdIbWcFtmlOiTcISsi3t8LqlxDP
         xi5ZHwBhmclBybHUPbRlL7fhq9lAX4a+TNWuWFx7Q9ZVIcKwc2IzURSayZjzDEmXB6xP
         gT2jne04hMh8eANrGD0KIpZfFDt8csdqJ9FkBF+ABRok0J3zjvx5XC8f2gYuuuXmu4N8
         az5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725018966; x=1725623766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0qYXdweblof+d4zDg0csLIusMtS4NAWZKZItJ2G/hc=;
        b=RxQGv/QxhUPNVUgEsa79l14AUxFUXqh18OlxJarFjZjTN5LocVou2fNNx/PNbbV5q2
         7idZ4mE48t+spCLiLeVKNpr07czrUV5cw/j5uJxXM4+OpcsMC8p79PJwD2e7hLtiFMl7
         DY5uAOi2KJrwjg06YocFiCVKG0r0cvg65pi6B+HaqDb87SWZ2U9pLHNSPqRr71smYicA
         TswWcLcAXCWMgO8V1lhq5IyYDS6VIwCeHX9gZlGg+FiXoxbheTewZKOQlDu0YXrdYjUZ
         k0UlmnjMbYuCfy240Xir1NaBRsFtP2aip/FMrkOynxAvoj9KnBLgOujIgkdVIEtl9OHc
         KJkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyRFfg9ig3L/JU5Fu7X7I+IPiVzEPCNAX+vqkn/MdA1mnMe+LqVvmoiXsg6bdYsKLD6kTzwnQ5hJxL@vger.kernel.org
X-Gm-Message-State: AOJu0YyezHa7H1LdunwJEGt80lkUf4lIn6cR5VaU0f4sScLbOWAmYZPm
	hxNxmm5nBTQgAKYBOmr8/C4YHadm0e/mQ0QhcHWBoB/gEFrHb0hI7kMDUpakWgvL3eaYD5JMPyZ
	UhxT4pEXKP3IvDffEBE1Bf4HwWnBEaUMH6Gvi0w==
X-Google-Smtp-Source: AGHT+IEhVXXIgwo/6ASpdFFF5AZjaTOeKyyZK0GOqTEt+wGYPxxNJSILIeAnEbT6DYaa/jQlNjiZpOVwSqoK7dzPOr4=
X-Received: by 2002:a05:6512:e94:b0:533:483f:9563 with SMTP id
 2adb3069b0e04-53546b8d711mr1185811e87.45.1725018965745; Fri, 30 Aug 2024
 04:56:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814061315.112564-1-manikandan.m@microchip.com>
 <20240814061315.112564-5-manikandan.m@microchip.com> <275606ea-2740-471c-b998-353ab6808591@tuxon.dev>
In-Reply-To: <275606ea-2740-471c-b998-353ab6808591@tuxon.dev>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 30 Aug 2024 13:55:54 +0200
Message-ID: <CACRpkdZbGqy+z+JoMoMXt0jmCCjuHUVj0q6p7QS1VBAKby57sA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] dt-bindings: pinctrl: Convert Atmel PIO3 pinctrl
 to json-schema
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, nicolas.ferre@microchip.com, 
	alexandre.belloni@bootlin.com, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 24, 2024 at 4:35=E2=80=AFPM claudiu beznea <claudiu.beznea@tuxo=
n.dev> wrote:
> On 14.08.2024 09:13, Manikandan Muralidharan wrote:
> > Convert Atmel PIO3 pinctrl binding document to DT schema format
> > json-schema.
> >
> > Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>
> Applied to at91-dt, thanks!
>
> Hi, Linus,
>
> I took your Acked-by as an OK to apply this to at91-dt. Let me know if I
> should revert it.

No problem, as long as it merges just go ahead.

Yours,
Linus Walleij

