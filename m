Return-Path: <devicetree+bounces-47122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 301C286C433
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC7C928326F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5788E54BF5;
	Thu, 29 Feb 2024 08:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ktjx/4wV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C791155C2E
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709196737; cv=none; b=mb815ZwYYmhr/+H43L0rmIKA9txD5Jp8FMl1wFTdw34aIzM2fMRR+hG3yq/0mF+wTLqGT8RBQ0FPWaxMt+5MCu05hg6cQ83WVvyzTjDPzXAtnafOST/l/HKoTlBha3IjnXuLlKHYj0h5fNY07GQy1Krr0Zhp/C+E+GTbrLdK5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709196737; c=relaxed/simple;
	bh=sF5DuBghLmmfecZ0ApkaWQPQ9anCHIv1MhLlebuBimY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eB711/R0hxL8LuScl6k4RY2vX2fRS1UCbv3an1U175AdckqX0QSAZciIY3QRJDq6XLHoLNp9UMh6Lrk0mppoJfGvdBjxT9tGIGQ6c9WuQXGzzlsXfJiBK4FUsNi7x2kpk8zgT+K9O2XIEeSnpo/X0psGaBjeC8dq7XJyCLeAlcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ktjx/4wV; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-7ce55932330so379888241.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 00:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1709196734; x=1709801534; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sF5DuBghLmmfecZ0ApkaWQPQ9anCHIv1MhLlebuBimY=;
        b=ktjx/4wVnoU1WYE0yjayRuyHKa9VwN9rFz+5eecgZ+UpiFgCYTk1iEHREh/cmOVEGX
         mEb+AxEH5Bn1LdvdWJ8mttpl4pI5irMekZ/CakKYvIoMml07o6RcM5+ckHIletEC6Jly
         5yXAFOK/Y6A7wuCovIR4pO1fXr9iIuoGGpevxYyESqecIpvnaUToDKAGA91y2x6Bz06M
         s123QPOiEt0neeA4Is3KGAwvJ09fbHm4JZAdHfDLR5SVxN2snvCT6/mL5zQXiaBQcWGI
         3uBfWTD8Q1d5GRuhrGf5NvITNwtM8RRSpgm08SHo9Dph9ammGBjXPQH3dneR0lrM7nBb
         U7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709196734; x=1709801534;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sF5DuBghLmmfecZ0ApkaWQPQ9anCHIv1MhLlebuBimY=;
        b=B3Xv+X7brN3ThqEaiqHC9uFffG6UKiROrNz+or63utxVIB1SOIWsVcUKzuGcjZeBc+
         jxe3cSJ9c0nPoYZCkaw9uBcOsCwgL9MxEKy7bdU6dukKJ9njedgyBx3lc05E7AMEF5Z4
         Zq1nXMEvO+87BxIfLztHlgYtozME0jA8RHxJAG2nTR/SDoSAeux2VquUIgXiZeNUYngD
         6jwLeN7Sqnjxnz/gsvQgb//O3abT2KwLW/syIPDDQQWij3CdwHgGuZyGVGdlVZzKmupm
         eMXAkYpk+gLPXxAprHoDXhx9FA7e7XBGQv+YENOlKtKdnb6BOQcciE7TM7768DAa1bf7
         O+Bw==
X-Forwarded-Encrypted: i=1; AJvYcCWWG1L4nNwt374Uiuh83NmnHKY/f/rjsNJ1Sdl14C3DHRx8hkc1EBO71XHSlD0HVMvKkye8SaRCaUtxX+YeLygYBrSvbAP2CQKgkw==
X-Gm-Message-State: AOJu0YyuF5/EhV/PoKNAh4GyUWOQSQDwE7HDd+KbTraGDYrUQRDJLHof
	HvuVzdnwoB9Yn8IJS4hFDa8ih4EPQfLkucUzRxH4mNeHg8fu7F3IG9th6tk4ETgZPWgPkP+YuaH
	UsIu7mwYFtHW7ByVhN9JrKlXVzsqaspNMKDCRLA==
X-Google-Smtp-Source: AGHT+IHbBbHHyoTCwTXjEiUtXJpiz6BhCSbOxdkUtr733pUyh3x+4zQ6uEUSQ0oCrpHEUchMroR3h+wu7xVCP5wL+FE=
X-Received: by 2002:a05:6102:2913:b0:472:6b03:7ef9 with SMTP id
 cz19-20020a056102291300b004726b037ef9mr1336840vsb.32.1709196734646; Thu, 29
 Feb 2024 00:52:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228003043.1167394-1-andrew@codeconstruct.com.au>
 <c2060450-4b76-4740-afe4-d14717245f01@linaro.org> <16ddd99007176da3f84462de217cb76c8fa4e1bd.camel@codeconstruct.com.au>
In-Reply-To: <16ddd99007176da3f84462de217cb76c8fa4e1bd.camel@codeconstruct.com.au>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 29 Feb 2024 09:52:03 +0100
Message-ID: <CAMRc=MeEyo7y-G1saydxtTRedNtHPaEeLANuzXt6KsiDU2jOWw@mail.gmail.com>
Subject: Re: [PATCH v6] dt-bindings: gpio: aspeed,ast2400-gpio: Convert to DT schema
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linus.walleij@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	joel@jms.id.au, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 29, 2024 at 4:21=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Wed, 2024-02-28 at 08:47 +0100, Krzysztof Kozlowski wrote:
> >
> > You still have way too many examples. One is enough, two is still okay.
> > We really do not want more of examples with minor differences.
>
> Noted, I'll keep them to a minimum in the future.
>

As in: I'll still send a v7? I can trim the examples when applying,
just tell me which ones to drop.

Bart

