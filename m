Return-Path: <devicetree+bounces-47162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C2286C557
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB17F1C2244A
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D5F5DF3A;
	Thu, 29 Feb 2024 09:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qPpMxIOF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5741E5DF0A
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199230; cv=none; b=VZLhXy/1Wtt+H8072nx9jjqUUw0cmUFTjtatqi/Dieja76/X/XaL1O/TDm0IZtorIWmz6rQvp+4NaoBpQQnQXlZIUc5I00PDf9yOAvAvSP6zoPa9lT5HaZRAHuF9GEj/kQhoIFRg/rznav9m0yn4plIysF/vnmgpZBxM4M+L2w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199230; c=relaxed/simple;
	bh=BTKFqTkQ/Hdxy7pKbUgkWsXlYhvwEw9bt65k1KFPuDs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eY142QXVYhK2SlemdIMeyVnv2/CvWnN4UK9OVjN+LZyH4suAKI3CM3a6NQuvzs2EAEevB7RJJfhowhXFJBcoGscx0DEWBTGXPGljC77hSfs8LLJGFPuV5mZdm2gNFmbutAKnpJRQoOoEl7ScflVMIPPMp0KyQl8cKlLAuynJbsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qPpMxIOF; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-608c40666e0so7058977b3.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199226; x=1709804026; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BTKFqTkQ/Hdxy7pKbUgkWsXlYhvwEw9bt65k1KFPuDs=;
        b=qPpMxIOFBOREPhw9l3O7ylF7/oN7NkAvmbPK7SJgn3VjC0kayodnvodSMV/m3iMTst
         eiO1fndMDSZtAk9Ls7c3TpYK/ub97gV5edzDCG/RKTCmm9iKRKwzYDc6hxlsVagrC0QT
         TPQhsCH0YbAyU6/w3THRgtE5IhnpZTJLx49aB8q1nLUuRKsAggBK/gnTXs9st6Op4Y5A
         1b3AfAiuuEIYAc8Iw9/dcXSsTjuCUijINJJ0zanFGYRkQDGBxRg6gzknIHiaJKRwlxuP
         L5QiD2DlzdGlUySs/8iwwBgDtcZR6lJO/c73sBVr89nRYIw+b2wqp7qS1NLcjf3JZr4g
         5N9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199226; x=1709804026;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BTKFqTkQ/Hdxy7pKbUgkWsXlYhvwEw9bt65k1KFPuDs=;
        b=XEXAfz5/71Cqnl/8vt/jUqNRAGEsgFappWEt6fDov61tDJXUY0E/TQLqIRa5f+Yz+h
         H9Zpl2jNZl6PiKf/3RUENgAMGAS1cOaiqzCwU8j6DuRNJux5J6OFahHmzlFansioitWY
         UKdgCu/taCL/K73TIKlftW9YX1skWwwesE2slHp1OozcOB9qd7gIdGs+Cgt/jmWkVPH7
         u4X0Ep5iczdnrMJ3AmHKEoeFiTiaX0ycNcoSFZ7pCUwkElicC1vx2wgb28NYXV9Ybj7V
         4i7WJIWZCj7j71G/dpAxtgOZov6qGOPM1oU30F0Q8WnEHeO4zQCZFoRcdxSJ7AHjBh4m
         0Vrw==
X-Forwarded-Encrypted: i=1; AJvYcCWjtM+ZRSg7z9OQQH4L3b0yB9+O4WvO+z8HyZXO4EJR5mcIid6VCLX+/KBeK7adSka+Kd/4lUeEVn/7E2UJV8AVKFggPiOvH80o2Q==
X-Gm-Message-State: AOJu0Yzs8TmduUyoXbcYJH6sixapEAYBH0E8Mhidz/NAGgtsi8oVeTdv
	48qdnLUTovjb8nTOs4v9Cd5EXlAUJmdcCQt2MaxyvOVt9L9tY7ZQYaC5mveyHS20xbXrDCZwOqc
	qMKt5QfItcGIyT9mRUk3a6cuRT2MrW34dR6qORw==
X-Google-Smtp-Source: AGHT+IHV++gfJwyt5qvCWtgkDy4qf622OP2MAl4tAK2L2iTcZeC8PuyC0CiumnxO3QX4i3ji7VGSLW7yqUh576MqE2U=
X-Received: by 2002:a25:8548:0:b0:dc2:349d:10cf with SMTP id
 f8-20020a258548000000b00dc2349d10cfmr1676538ybn.53.1709199226350; Thu, 29 Feb
 2024 01:33:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-20-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-20-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:33:35 +0100
Message-ID: <CACRpkdaKi4qXG03fuPqCgdHmZ1RydMBxMFB3nutG6JLPGs+JkA@mail.gmail.com>
Subject: Re: [PATCH v2 20/30] gpio: nomadik: make clock optional
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

> Not all platforms using this platform driver expose a clock for this
> GPIO controller. Turn devm_clk_get() into devm_clk_get_optional() to
> avoid failing when no clocks are provided.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

