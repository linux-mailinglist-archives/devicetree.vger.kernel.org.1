Return-Path: <devicetree+bounces-223639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAA3BB9170
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 21:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD860189647B
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 19:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC2727CB0A;
	Sat,  4 Oct 2025 19:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="DDulwQAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17912264CB
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 19:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759607925; cv=none; b=eO8Iesx2gouGFYSBjrt9tydjLW2H2xiZlhmfKvO+1vcmuF8k3FCVir2tMkQu2H1uAshjnXFBQms7uT7xNdAhxUtt1oJysf3ToEtjkpdArAMFRbnNDaLvXlZxirPhvK7C9FkFip84ISiciCIBvmsn9PWC7e9XzpNKTpfSV7Yd4Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759607925; c=relaxed/simple;
	bh=YypJ2n6ObcheY1R39FEjFgc/VMR3Ck0gVe3LYOexbGY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cq3lvJ6SQt5NUvvI6wNPkEeEzXh8CpgkTrRBErwbd++GWSTr0/ByjJ/lE0IW09C4rDcnhMlkjMn6XhouS124FGkZ7y6HMEmT4zoEHQfdEhGPUyEz+48W6FQOso7tqmikrDSsAZ2P4Fllvp+rQgNHdJdaJEakzLmS8VKSGaSeWkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=DDulwQAJ; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b550eff972eso2362692a12.3
        for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 12:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1759607923; x=1760212723; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RkUHHW/8YstHHualb/SiYorZ1DiF4W6i84iViR0FPpY=;
        b=DDulwQAJT/4kxHMHPsS7SQqDG5dKYf/D4I6d8cJ3oefzj8PJe14kFrNvjlEnGOBcMj
         VivrHLmb9khnqo2FpDjwZs++u3VD1y8Fy7HX9K59XhqRUZVZhtqiWwUHpznipucfBIAc
         a9Kqj21Ney9QqrOSIgiXUEWnwrl54Lc9T5DZZCTDgXeXy0M+Rpwyf7gOD20o0gc7VgYu
         L5HoiGBCQQZdCflq1E7JJumeRWgu8FeuVdQJYJl9kl558TrGBLJalrUCb8YrvdiEdK3J
         2oBRJiMM0eL1DlpLLuUZhPsKaVaxbd6O+3ciI/WNP0FO0xRfGI1+p4Zv5qBWfMyomz7O
         vlIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759607923; x=1760212723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RkUHHW/8YstHHualb/SiYorZ1DiF4W6i84iViR0FPpY=;
        b=Pjblk+YenSmO+hNpv2MQ6tY6vDbYPXTzcxRPPBeUH+UP8jBf9EIwUwc6IC2OUNUF9A
         6MjQafDaqbPxuiDSJ7EIWZEw07PhFcUx27lN1xER7TfqAKIxSxjHpBf++0/7MruBSrka
         7sYd2dEFKv54vW1laFKqzz8CgLV54xQjf5q7XafogLsX34IH9IkHzmTUr1gpKN4n3kWY
         5AZwLBsFag8Pz4rt0MT3M6MYdbWb9sCKE3qYbIJybbBTPBeJMpgcm76+baSa9q4Mnxns
         Ew5lcHzjLd7GY/BGqEoXCVW3O7WglOAETYbTSpeMCLVqvgFwmDi+mx30TdLZwkYZWokp
         YA6g==
X-Forwarded-Encrypted: i=1; AJvYcCVrzCVttemLUzVK6PzepMYOZIWnDuybPzyAED43aZOUciDc3dnUTFPHsHps3k3Nr9ikgr7ix94ndAs6@vger.kernel.org
X-Gm-Message-State: AOJu0YzCXgWjztTgtGPgfXqJmYSxSwBYhV8jCeimcyjStMmkLzd5XXV4
	Nu4/4cqYPzoCsgktb1SLG+r/wwtwG3pnvuGB3A/0c26/Gow9puXWrLnrQYNew3AvtiIlb7pJyNz
	+h2FhxKqKgyAz9gOK3ydUahIeX3HIL6Y=
X-Gm-Gg: ASbGncv0t4aS2rpX0TCSrEfTXu0LEYIVuj9cUv+F+6Ehx3Qz6qoNVxPE+87Al+VWMaw
	NOOaqgd34Ihg1IrPrusjXeR3Srif/ew+meOqYYCTO8VdynNuMrYbvLqgPy88NGetrjQENLZ9rBl
	alwClryVlHRS4WvCtGkD4YdJtMoReogeIzA7FvaEM0l/+D9kAMbkTMTtgXh/FxncNAAni0XjYZB
	JA4hvkorfnLkKSc9810Af/lkf4ppiwmiU1O5SZgw6nZqlC46Ul6e67OOuRYlXNkqYUeSaQ/Ups=
X-Google-Smtp-Source: AGHT+IHIlqoFMv9csx8XRng4syXVJftJT6zd7u5YxyOumBwLOTKBWwzcxLH9Rhpq2ydFsn3WZaZHOCkzeoZW36Gl4Kk=
X-Received: by 2002:a17:902:d483:b0:264:567b:dd92 with SMTP id
 d9443c01a7336-28e9a664e7cmr89943225ad.52.1759607923096; Sat, 04 Oct 2025
 12:58:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250927125006.824293-1-christianshewitt@gmail.com>
 <20250927125006.824293-2-christianshewitt@gmail.com> <CAFBinCDQc=2xrKbGunSKJjLhGd0bCGN+3oYd_bg0ySs+WHxZjA@mail.gmail.com>
 <6B97C24A-A1C0-46F9-BC74-3E7D2119B6D6@gmail.com>
In-Reply-To: <6B97C24A-A1C0-46F9-BC74-3E7D2119B6D6@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 4 Oct 2025 21:58:32 +0200
X-Gm-Features: AS18NWCb80TyhWmdif5KiXRRfxefpRACPUKw21AL9syFqt4EGgXmS0JSw7hcZh4
Message-ID: <CAFBinCBrG0xZ6sWwZYtB2k_giZoOKjB_AmtbidVtyhib=UzDfg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: meson: add initial device-tree for Tanix
 TX9 Pro
To: Christian Hewitt <christianshewitt@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 29, 2025 at 1:43=E2=80=AFAM Christian Hewitt
<christianshewitt@gmail.com> wrote:
>
> > On 29 Sep 2025, at 1:12=E2=80=AFam, Martin Blumenstingl <martin.blumens=
tingl@googlemail.com> wrote:
> >
> > Hi Christian,
> >
> > thank you for the patch!
> >
> > On Sat, Sep 27, 2025 at 2:50=E2=80=AFPM Christian Hewitt
> > <christianshewitt@gmail.com> wrote:
> > [...]
> >> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-tx9-pro.dts
> >> @@ -0,0 +1,90 @@
> >> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +/*
> >> + * Copyright (c) 2016 Endless Computers, Inc.
> >> + * Author: Carlo Caione <carlo@endlessm.com>
> > Is Carlo really the author?
>
> He=E2=80=99s the author of the original device tree that 95%
> of the content for this one is taken from; as is the
> case for most older Amlogic hardware. The decision
> on which bits to copy and paste was all mine, but I=E2=80=99m
> not  sure that skill deserves too much credit :)
I just wasn't sure whether it was a left-over or on purpose.

> I can resend with my own name (or mine appended) if
> that would be preferred?
I'll ultimately leave it up to Neil. Maybe if he wants your name in
too, he can just append it when applying?

