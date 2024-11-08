Return-Path: <devicetree+bounces-120098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CCC9C1805
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:33:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6680D1C20F61
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A75F1DE8AB;
	Fri,  8 Nov 2024 08:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QIKg0YyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C608D1D356C
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731054784; cv=none; b=ALQQTOiyubo9OtQt40qOfnZOYvlodHECXL7K8Yi2jNmu96PTfej+eqtaaAELBZdIXOCkghntBlGzebkz3gtM+llS3MfpcMRGpGi0ztbDS9wjZ9V85KFyl1w5SBMZ9XbX0wYg5QLFAgfqeJesVE9TRpP1fOwdKRG8UQUHIEpgTGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731054784; c=relaxed/simple;
	bh=752Q04PLM4ySoJBMNJIIwMx5SEQI9bfYRIbNwO7mz1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s7/SIm+n7RWsB7Z1pdAYFhObcMq/KY8ubHWu2Wo/haaWILG83E/4DFDp4r2ankNJuY81rBWfZwrXjP4dCA+ofvrYCWkQEkIMWXEtScFSRnuozyiw8qZo3FHCwkMfH/518MN4YW6nsRIswddL/2fn1q+VAJJR+69aFFYVsBY+hV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QIKg0YyR; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fc96f9c41fso20565011fa.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731054781; x=1731659581; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=752Q04PLM4ySoJBMNJIIwMx5SEQI9bfYRIbNwO7mz1o=;
        b=QIKg0YyRMjapErGJRsUl2RKKHb3FOLVeOGlnw2yofiZqrzcA05fXLf+XHi/L0sG0+c
         IOazjqX5iV8XwiHIKx6VLllJCog6mAQFvNSDRN8mfyRVO0ud7SyY9/JFGtSNMOnB2gkE
         FqYgB4vJaoXYuXQFzRLhuHa6hoaBuYFTWYrdIUzwoMOHQOQmMmJt4YVPIeLtPONpfx29
         cg78zbnEpwwjqjN+WuGrZqneYoOUMLQ14/e1h1I8dUdPWB96lVMR691F79U0TDlzsX9D
         GNZHWhFG7TI1C0OptIyosR//HOri3fogxjgFjNF9OkYBeuga1nGl2cZXTL0w/h0HGJx+
         swEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731054781; x=1731659581;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=752Q04PLM4ySoJBMNJIIwMx5SEQI9bfYRIbNwO7mz1o=;
        b=FrpIiRq3sWgVJsDfWwl/hMX+zyRLQWYc2VUVq97icxe8ST3KWDZFFD0utfVYmO1T3a
         8GLQOHQ2J8qhpifFr+y0LYM8Om9J0i2kVj7ZC2UIA3v4Wcbl7wkgXCnQnoR4Se8ZNNJ3
         TqMZ137fFM2dz4poOUXB0Xt/Ad0sFsCjaqJ6ChI6fwm8OKKo2jr1JcpAJHxkxCOf2kAg
         YOrnFxP44+1z/nZy3pSEYfDY+lUJOsA2hTVJ/ECkBHaFD/qoLUGyTfKqOMO7JWHKnCq7
         hwVjO5RH/4TTO3jOIPTc/MKBnIE9hyhEobx7fJ5c0A03/64KgDh8YSZDn2nSb4/tquIH
         a9Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWfLWmED895j9wvj5UbxFHRLO48Kngd9alw+/n3DX3tfhi3OI9Zy2uEzo65qbdAZAh8B9UvGAm28jr6@vger.kernel.org
X-Gm-Message-State: AOJu0YwSVDNOnCe3ris12afW8fhspLk6kZIzuzHrTVOgQmqAZcOI4G9c
	Mst91LIjGiV9P0QcMFQMmMl9Ly2sQFIOl+IcjN+tnEc8gN+F6JuhOa27ox6wNfUNoEIWJslguG7
	zAgOmEc2Q9z/awdQetm9h9NkPj+QBUffZtM05Ew==
X-Google-Smtp-Source: AGHT+IGUskTynAw9BMroXZo5yveDcNBcLD4Xp+P+d+67e9FvxhQBmFNOU9SytRx952Jl6I+6VFOyzo/vbqJDUlA53Wc=
X-Received: by 2002:a2e:a808:0:b0:2f7:6371:6c5a with SMTP id
 38308e7fff4ca-2ff209de8b7mr5901521fa.16.1731054780928; Fri, 08 Nov 2024
 00:33:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241104-pxa1908-lkml-v13-0-e050609b8d6c@skole.hr> <20241104-pxa1908-lkml-v13-3-e050609b8d6c@skole.hr>
In-Reply-To: <20241104-pxa1908-lkml-v13-3-e050609b8d6c@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2024 09:32:48 +0100
Message-ID: <CACRpkdamE0dGDQ5hY_WRTUFaiJKGEkOZpNLZ-SoXH1u=6YKrxA@mail.gmail.com>
Subject: Re: [PATCH RESEND v13 03/12] pinctrl: single: add marvell,pxa1908-padconf
 compatible
To: duje.mihanovic@skole.hr
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, Karel Balej <balejk@matfyz.cz>, 
	David Wronek <david@mainlining.org>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2024 at 5:59=E2=80=AFPM Duje Mihanovi=C4=87 via B4 Relay
<devnull+duje.mihanovic.skole.hr@kernel.org> wrote:

> From: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
>
> Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
> separate pinctrl driver later.
>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

Patch applied for v6.13.

Yours,
Linus Walleij

