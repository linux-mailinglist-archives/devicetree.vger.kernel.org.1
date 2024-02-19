Return-Path: <devicetree+bounces-43450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD9985A662
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:50:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EAF81C21527
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653BB37163;
	Mon, 19 Feb 2024 14:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PFc96/QQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20885224D4
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354217; cv=none; b=Yv3yD2PN9l9IjzMe47cltvl7sbKE3OQtaCJrL6qffezwN0HRlx5Yj68QyHJe7L2vLx2W4ZQY92bcJeM88lrUmXxmfqfoG1xj2hFbu0KAyrnDLWT8J19LMc84Ym3Jb3PF5aem0I8ehMWO96un6c99eNC2f472OFIMH7XcINxHAxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354217; c=relaxed/simple;
	bh=rU1Nhjxuoh9w7JkV5eSoZAZaD4OFNvrT3H/RvAXLkAY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VN4BeZ+ur9riyExXY/LvXdetehfSppvoKTYv8agpMCdU3KJiK7434mn45xACoB2l64yrnb359+o2BweJ3c35JGTLAPE+U4nERqpuTVGRiD9cDZtvHW+DRzmGup/GH3fIAKynGrVGOuj6fWh+E5en1UdvKFTycD1Ajs1CbJxOoek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PFc96/QQ; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-607cd210962so36583357b3.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354214; x=1708959014; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rU1Nhjxuoh9w7JkV5eSoZAZaD4OFNvrT3H/RvAXLkAY=;
        b=PFc96/QQHBTJpEf9DWU/RyQk2TfXTVceCo1LFyCJ9gOz/owViEUaAf7HyUg8coVyY8
         eVQfNEh7SJyZEE5w7C+U817ZX4l9+HYALWP0R7pVMRaf4IlNtpWbQvOJX38zxVzANjVL
         6gOMSiS5gwGUJpORvbeTpnYlDvLtQIcMMnm6zcQYX3SrPDEwISzLCayik2HkUA5D5jz8
         i1Mx4b4XJXEQ8DMBh1tykDmWAKBGRhlizVx4O5KzOM6/t+GLkkicWVkhokZ3/aEuIOpH
         s1nTZm47U19dZmE1CrlVZfGEcWHby/6RMbJwcFuQgl436ItNlGGoXE+c/onXn/GmWYVD
         S4RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354214; x=1708959014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rU1Nhjxuoh9w7JkV5eSoZAZaD4OFNvrT3H/RvAXLkAY=;
        b=iNzdBpTsTjSgLD64i/FyoBIh7EW7fCM+wkTm5HT+nO2lecxQAu9GRtXK831rcoX0zz
         4ixSGH2Z6HEaiEM3tAMArR12NGzf09GtO6H4BIZH5nbnC85aK4h7Ra/kcQ/7wOyqR7Hp
         YVGz4cuqBJjShyL4bXUyvZOILZYVY63w0eS4lnLQR3xrMpVs9bqUFK05WOH4ZMNPCLpS
         rPWcrME+E7wRJpO6LKK/C7B/tbulMnCj5HsjwW57IP5vBRZ+8gNV7poML5tquXjHRU1A
         ARtkxR9bBOk3JxY2N7g5V7LIimDt/hD5KwwXbaTtobQtwy56xM9hhg/RSiYVN7pmMzmm
         vRqA==
X-Forwarded-Encrypted: i=1; AJvYcCUOh6C25/8jI0STF66pabCOJHwFp2sHYfeL4wDC6GURZ+CN1WzGe8XhsomXjmYqac7B4WJ9aXU1VhxrRfsv5gIcWz6SxNwW9EXytA==
X-Gm-Message-State: AOJu0Yx5Kpm1Q5XK0+g9vngZPqwX2STXHtiJ42Qprmw+tzRNn1NcI0KW
	rKMIwDZrgHe6UEwUpdMouS+pzxWcasctexUMhWw6BgyIgk03VAvIyTcVKlBtt50b/xJydKasP6o
	X8l5AN2mZ5nLP8BHfO1bCENsB08ykIeND/dcmsw==
X-Google-Smtp-Source: AGHT+IEJHqQDCsci6I96xgNE047t8M8GSckWL1OsHotXe3InAs56fqBtxhznMhmQOhQopOOVFi/8CalxVtCOXzkKx6o=
X-Received: by 2002:a81:57d5:0:b0:604:9d6d:681f with SMTP id
 l204-20020a8157d5000000b006049d6d681fmr11641539ywb.31.1708354214166; Mon, 19
 Feb 2024 06:50:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-1-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-1-f88c0ccf372b@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:50:02 +0100
Message-ID: <CACRpkdZyw+WyrmdkjQoO9-y4exw0k6FiHk6NJ1V6N+OGZaKqRg@mail.gmail.com>
Subject: Re: [PATCH 01/23] dt-bindings: gpio: nomadik: convert into yaml format
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

On Wed, Feb 14, 2024 at 5:24=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Create gpio/st,nomadik-gpio.yaml json-schema dt-bindings file as a
> direct translation from gpio-nmk.txt. Remove the txt file.
>
> Add clocks and gpio-ranges properties which were missing and are being
> used in Nomadik devicetrees.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Thanks for doing this.

With the fix pointed out by Krzysztof folded in:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

