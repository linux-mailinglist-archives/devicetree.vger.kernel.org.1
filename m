Return-Path: <devicetree+bounces-11205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D557E7D4BF2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:24:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 131411C209C6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929E122F10;
	Tue, 24 Oct 2023 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dL1Vnuvz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7521A08
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:24:51 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3D210C2
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:24:49 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d9ac9573274so3901465276.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698139488; x=1698744288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvtw3R4g4yrWaCPe3OnX3OGqAz4Ysoana75anOWAYR4=;
        b=dL1VnuvzBNr7p2VtGrgJ2YMxxalsZwAOP2rGfZWZbhmajLFcbZY3Lm89A6ef04MOw9
         2DhAdz4udDbvACievBwRk+rVJcccWi1Seh+ZM0dUMJBEdIjnLkk/0nJaqN8Rrs+6XB8J
         3xWsSTkXGOjD9o9mwZYwwHgASiNklO1XRN9d7WqOKVoVUFjUOs3OHfzfIDSlqJfMNYEo
         DbwX3KGlDXATrMnn7ckXB2tBUjcEYneEiTgsbt24HWfCN/GMuf0CYk3t2dGt5cX9ya2q
         5LY89XDHaIsj+x5tTJd0/WWzqz6kmOySBK7p1JC3kA6UCcGVCOsMi95AOwAGcoAmPQjR
         8/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698139488; x=1698744288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jvtw3R4g4yrWaCPe3OnX3OGqAz4Ysoana75anOWAYR4=;
        b=mtHj5YzC61fS39XoXkuuBZHBsTPQVjedYNaVQqcXnf7BoEgf6RrHDNcQ/8a9HGu8u3
         GfJkFYo7ZAatx3pBaF/vWCDjCnjE7HBRxgoG/IpGs83j1xA3bP/lU+72SfTDjnjWylZ3
         flFwvQc4kwBc9vssp6zs8o8HGx5Ucn7N2CwueO7nMJp6Vu22BLYCZRoTDsmL9FkHLZ0+
         WFqcaMvXJULTyCYrp8HkB0dKRhzU/DUrryaKwtZfY2Shj/UiDoO9D3N7gT5u4te+ddDz
         fylvzOCfGbSfhb1J91gPmAx9FhBRRxyXTGzFtNz/ti52KnDxK14Y/WOqzT8cn11J+x62
         EmaA==
X-Gm-Message-State: AOJu0Yz7Bo60p60DgL0x+2oUcXxn5a+C/+TPHeT0/cxv3aQXqVOdb0i9
	aYrzwlOCQI9dkpuzdBM3TFlpIWGhGQRaTBrvjYh2zw==
X-Google-Smtp-Source: AGHT+IEjjXEh1q5UaxdtvCQj9zoNGBvaRwRDI5Q+oryObRZl50AcnXsTDbsRJJ5cG/pHer6xoQElF+sLHgofyO9u4cg=
X-Received: by 2002:a25:cf14:0:b0:d9b:f161:5fce with SMTP id
 f20-20020a25cf14000000b00d9bf1615fcemr11908547ybg.63.1698139488699; Tue, 24
 Oct 2023 02:24:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024090631.3359592-1-jim.t90615@gmail.com> <20231024090631.3359592-2-jim.t90615@gmail.com>
In-Reply-To: <20231024090631.3359592-2-jim.t90615@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 11:24:36 +0200
Message-ID: <CACRpkdZ_Xkw-rRL4YPQxP8Wp00SL=k5W=S1X4bdEpfmMedeXdg@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: gpio: add NPCM sgpio driver bindings
To: Jim Liu <jim.t90615@gmail.com>
Cc: JJLIU0@nuvoton.com, krzysztof.kozlowski+dt@linaro.org, brgl@bgdev.pl, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 11:07=E2=80=AFAM Jim Liu <jim.t90615@gmail.com> wro=
te:


> Add dt-bindings document for the Nuvoton NPCM7xx sgpio driver
>
> Signed-off-by: Jim Liu <jim.t90615@gmail.com>

This looks fair to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

