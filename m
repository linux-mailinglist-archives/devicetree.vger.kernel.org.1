Return-Path: <devicetree+bounces-175557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1322AB127D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 797CA3B28B9
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1F928F95D;
	Fri,  9 May 2025 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rDMP5Xzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0246A28936C
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 11:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746791433; cv=none; b=mnZEKK6jseYGgYE3opTM7jbeQIOSwlg0RJguAsonkWpQJ/wTUksmXZAJmKqb4aTqbOchkGiteduvMwdmY0osvHbxrHCGh/Af54TePzBn/Eb7dwG6TMZjn8S846tmPSInsjVSUaJCCV4iFYITVUz74FXrIeVHX/rUgezKolNOBVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746791433; c=relaxed/simple;
	bh=6bSX9UNo+ut9uhyeztVWH22aZ+WPLHdTGC7kWwCUCXg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dWhcnopxQ7hUbTCUwYAftTepTwC8kzqLm00FDD/XrIqVRfBE2mvEjK+Vfv3fMBZvYSOcv0a/uDrHDcKigl5MCQUY7Pu96ySGH+vtzBbuzZU9nrTpE9wiaqLAHSffB/G0ZK1fOI/o+bRAjmDHktr/BeXRTT8hDgO9Gwm0eMQpIp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rDMP5Xzr; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3104ddb8051so20415231fa.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 04:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746791430; x=1747396230; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6bSX9UNo+ut9uhyeztVWH22aZ+WPLHdTGC7kWwCUCXg=;
        b=rDMP5XzrQ88umTP+9l67/zJpEOw9Tf5QRqmG8aid0Jm776jOYiSyw2ws4geCLljooS
         JCnksf09yvbYgNnZrOpyZ4cmJktwmGqdGkqo2vEo5Io5P24KiCjl3aKESEHxnLLWs1NH
         2lUA37eKUFR5c5QlKodJORWKFRN6wN+LCC8S3RKJcsImFCoknUUjmZiIZOSlyaFI/ftQ
         iz02M+0jkawlqKfEL0vbGX54kzdzRkX5lP4Sge71epwG0v5DENaKpj/P1FEBxYwk9PeI
         eRdTUV4XUD5FraSmI5vLEuJ+K5PdCjHH3uAAxFV/2TVnQpF1qz7ZGwUW01bx2ByhIc/c
         LIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746791430; x=1747396230;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6bSX9UNo+ut9uhyeztVWH22aZ+WPLHdTGC7kWwCUCXg=;
        b=XaCaxrocPHKjKvznstC2uY9HmcrnaMalVFknrVCtcoKFSWBKZePZW1QsQ7YKJ1pwlt
         /0XM9yj3jOo1u7Ew7lLgBam14XQvFOGNUwFaFNOssz9GQXnVZJdpOKHoluRESEC+v6/3
         WUTb4iX9UTrDmrfgT5WZPU3DyNvnfJX7NdhY4L/Nvc/t8/nghpnR283R54VvQDVvp6in
         VQXrLGVlSu5uwGmLlB85Nv05H2OJxJ7pGluYafsqGCBrRSFoCCDrZkVOlkWEni3omurI
         sqQOqsfdWZHmLIh3CvDgk6XCqpgT8Ocwge301GdHevb8vkw8qGLmAmiiyirbbv3TBLeA
         Tc2A==
X-Forwarded-Encrypted: i=1; AJvYcCUKbqkPcg62UZRfslQkGbowrDn4/hw2NKoVViML9AUdg0TuZqFRzfuwOxINazjSvRhdq3CnveWUoFbd@vger.kernel.org
X-Gm-Message-State: AOJu0YxfuJL5Nbzz+Jcp1RUVPQ04nx3j9+gwu4Gw3Pnr4/qSElqGCIJS
	NHC2IOd1w0Q1sV52d0nv8jhApfBn2lrCP+Dp9MG18GPorHstNaZERJglH9Puar0Mh57BMLC/n3c
	JZyaouiW766vjU+7DZHFIhAx/dj8R/i3e7Glfrg==
X-Gm-Gg: ASbGncsrBz9DGp1qSv56RW/HCYkK2G1AamtoYqqrFclqPgf2acvNewo4Gha5PpA6qPL
	pm31rfe7O1oPAr1tiFJAhdhgKSh7C9Sl+6P42ET8Cm1C6/bltlz3QP+iA9Etdkk8WNenVtvV+fa
	BIb40yk76+3IQBlET/2cDOLcxC9jIOWLVb
X-Google-Smtp-Source: AGHT+IE9OA/TgX88UK8wnm39DMsSy6I7xruaMSROXFg88YbOwzBbcaNlmJPRpQ8Ckx3l33XEBcNwePAgT7TtPdM2+0E=
X-Received: by 2002:a2e:a991:0:b0:300:26bc:4311 with SMTP id
 38308e7fff4ca-326c4575642mr10757241fa.18.1746791429976; Fri, 09 May 2025
 04:50:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424-01-sun55i-emac0-v2-0-833f04d23e1d@gentoo.org>
 <20250424-01-sun55i-emac0-v2-3-833f04d23e1d@gentoo.org> <CAGb2v66a4ERAf_YhPkMWJjm26SsfjO3ze_Zp=QqkXNDLaLnBRg@mail.gmail.com>
 <20250425104128.14f953f3@donnerap.manchester.arm.com> <CAGb2v65QUrCjgHXWAb72Sdppqg1AUxXyD_ZcXShtkRSHCQBbOg@mail.gmail.com>
 <20250425160535.5a18adbb@donnerap.manchester.arm.com>
In-Reply-To: <20250425160535.5a18adbb@donnerap.manchester.arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 9 May 2025 13:50:18 +0200
X-Gm-Features: ATxdqUG6U2bPxTcfQiBy-oW1Lju29rGeV9-TYLkpQrHjbRn14HSqGi03f0yvO10
Message-ID: <CACRpkdZH+NnP0-GkLe+nHK-Oi_Z=FzPaM=k1U-gZddp+P2+DTw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: allwinner: a523: Add EMAC0 ethernet MAC
To: Andre Przywara <andre.przywara@arm.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Yixun Lan <dlan@gentoo.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Corentin Labbe <clabbe.montjoie@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 25, 2025 at 5:05=E2=80=AFPM Andre Przywara <andre.przywara@arm.=
com> wrote:
> On Fri, 25 Apr 2025 22:35:59 +0800
> Chen-Yu Tsai <wens@csie.org> wrote:
>
> adding LinusW for a more generic pinctrl question ...

OK!

> > There isn't any assumption, as in we were fine with either the reset
> > default or whatever the bootloader left it in. However in projects at
> > work I learned that it's better to have explicit settings despite
> > working defaults.
>
> I totally agree, but my point was that this applies basically to every
> pinctrl user. I usually think of the bias settings as "do we need
> pull-ups or pull-downs", and if nothing is specified, I somewhat assume
> bias-disable.
>
> So I am fine with this being added here, but was wondering if we should
> look at a more generic solution.
>
> Linus: is bias-disable assumed to be the default, that pinctrl drivers
> should set in absence of explicit properties? Or is this "whatever is in
> the registers at boot" the default we have to live with?

We have never hammered down the semantics of that, so it's a bit
up to the specific driver how they implement it (yeah a grey area...)

There are many drivers that are carful to not touch register boot
values but others who set them to some default, and people
have different opinions on that.

Yours,
Linus Walleij

