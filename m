Return-Path: <devicetree+bounces-220388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF8FB956F9
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 12:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 210804835CF
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 10:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 831DD320A05;
	Tue, 23 Sep 2025 10:29:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD86631E0F0
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 10:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758623383; cv=none; b=K8L0ZXN3pIoJ2ZC3jAKyLtZGLognIBQ/T9ScYZVeS6G9r2n8h8X1lCSg3YFxlmb9XYJczfgKG4GJcSEztfY/oAqVBnYk2wA60H5oKOJ12OhfBHo0V/934kwYvrzDp2iuF5NJ5Z0y1S/ieWvAcwhF7cK8bbNqASdCLuLganIAi5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758623383; c=relaxed/simple;
	bh=eSsu031VVGwPsLfNPlmNXIySQd3w7MuDIZQkN2cj8lg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PbLg9oO07nhK0fUZGpI/ODxuIHxIJSsPwTAXR3GRUHWyPdTpSXEHfDfK5RkerYCCnw3C69y0hMznU7t042tNZn9OZ2fHLGLNZNW3q5VqpLSdZeODOdzrulqe7AM+BR/56PkWCiQBuZMZjkxu32aCuGUv7wmGlKPxtZKZjmHP8+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9000129f2bcso1312521241.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758623380; x=1759228180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vy5YqCkw1QkAzxS1ADiBH2hURCJ0LLs39K3eOvsbTdU=;
        b=BXyou4dI6biOi0CIpgvo/jOJK1cRok32vt7w6NuXcisg+hckUQtpvb0f6IbdyDp8LY
         VqdYrc3gxranyBtPnNdElUDfAVJtMeVWznw6S7xaZUgzDOVCJTgRenr4QRUqC3EnQJdr
         nu2uSVb9a0mwaI61RqC50EU658acD2WwwEEzjVUf4hK5ytjMoLk5TiuKQE9dfE71LNQk
         Wnp7kcghm/ReK8YXh6p5DeWsctIMeW/IAikroKFFFSSAyBqHDzrofMU+wPRgLBl7AZoY
         n/fLThoIFzrmjgKf73kU9bbzw89hhETBDY2EshpaS01Gq1YjQBsKHxSzenSmm3i+GcEO
         U6xA==
X-Forwarded-Encrypted: i=1; AJvYcCWP+jiOasRJkgi+KDiACjPLasFOwdJF0JLkOetTQjOWVBe7M323CF13sQUY8DVCkufpqXy6tZ4/TxJY@vger.kernel.org
X-Gm-Message-State: AOJu0YxBezBUrZ8fVRUhsWLIiUdGG6jNrdWuxMZaLhgY2q9pohjbOI46
	H5z6tm3tPbQrGuBPRU/GEWPx7OasslYd1Cx8+2RzAfR/XYr2gaVks0fvQMatbtqV
X-Gm-Gg: ASbGnct6hN70bTLrDQUPV/71B6Md7+N/4iHygyD+fSb7KT3xtDFEJYQHoRJU+cnqlpX
	Ho72kfcY2tEdg86mX8LbjAUqMOJamS8OPtWCbh8mLnf7juOv1sw0o6feCYbCUto5hwDCmHV+4Oe
	vz+kffhdMcyAOwa+WYwt/1pJKb511ZzU5hlWbLEEQhKdw7zeii8ilq9DlUcfyg/rSyO9zc+dA55
	a73aq5cSJ8sg8wiGHHWWbVKUXt+W2JbHIW35rTQyDszbpcXOijxrOaHAUPZusHErKu5w4U576EH
	K0SWN0d2KUliqNZYYSwBvEH+N9kJweNYFXay4o5RF4ZB/a4iyvorJP60we1gmGQPlXm45plr9Do
	+sdm3bjncmIB534O97vKDr35diWMYFBDdF7x861SIRiuhgJdDtsUWuI7jLucL
X-Google-Smtp-Source: AGHT+IHLF3DikTLzTPVCsYqlpLnbHP26AdS4hzc/ET2TWEYWLa0TVe2MuzgvBwjQU8N9Tx1C+EWhlw==
X-Received: by 2002:a05:6122:50a:b0:54a:992c:8164 with SMTP id 71dfb90a1353d-54bcb0b4bccmr642060e0c.7.1758623380426;
        Tue, 23 Sep 2025 03:29:40 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54b980c19aesm1153714e0c.1.2025.09.23.03.29.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 03:29:39 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-8e3eaa30c71so4320425241.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:29:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXYJwkd55MsPJzPLAkRWeAxYWura3ikniOYSp75ClyyDc3TqOnOGP9oB/b8O029JvcgNySocHHzTlRb@vger.kernel.org
X-Received: by 2002:a05:6122:2516:b0:539:44bc:78f1 with SMTP id
 71dfb90a1353d-54bcb09972fmr689351e0c.5.1758623379127; Tue, 23 Sep 2025
 03:29:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <aL-2fmYsbexEtpNp@zatzit> <20250909114126.219c57b8@bootlin.com>
 <aMD_qYx4ZEASD9A1@zatzit> <20250911104828.48ef2c0e@bootlin.com>
 <aMebXe-yJy34kST8@zatzit> <20250916084631.77127e29@bootlin.com>
 <aMt5kEI_WRDOf-Hw@zatzit> <20250918094409.0d5f92ec@bootlin.com>
 <aMzhgDYOuG4qNcc0@zatzit> <dcbeaff2-0147-4a27-bb46-e247e42810d7@beagleboard.org>
 <aNJVqSpdAJzGliNx@zatzit> <20250923114849.2385736d@bootlin.com>
In-Reply-To: <20250923114849.2385736d@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Sep 2025 12:29:27 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWmDwedyPnBERs-tSYEG15nMUuh9u1Q+W_FdquHpUC0-A@mail.gmail.com>
X-Gm-Features: AS18NWAbRnZBKwbUs1mL6i0jpGKTu9bSTEeBLQtsdhJWW-X3mhl84YZ9AdBBLbQ
Message-ID: <CAMuHMdWmDwedyPnBERs-tSYEG15nMUuh9u1Q+W_FdquHpUC0-A@mail.gmail.com>
Subject: Re: Device tree representation of (hotplug) connectors: discussion at ELCE
To: Herve Codina <herve.codina@bootlin.com>
Cc: David Gibson <david@gibson.dropbear.id.au>, Ayush Singh <ayush@beagleboard.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Andrew Davis <afd@ti.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, 
	Jason Kridner <jkridner@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree-compiler@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Tue, 23 Sept 2025 at 11:49, Herve Codina <herve.codina@bootlin.com> wrot=
e:
> On Tue, 23 Sep 2025 18:09:13 +1000
> David Gibson <david@gibson.dropbear.id.au> wrote:
> > Ah, right.  To be clear: we absolutely don't want multiple addons
> > altering the same nodes.  But I think we could do that in ways other
> > than putting everything under a connector.  This is exactly why I
> > think we should think this through as an end-to-end problem, rather
> > trying to do it as a tweak to the existing (crap) overlay system.
> >
> > So, if we're thinking of this as an entirely new way of updating the
> > base dt - not "an overlay" - we can decide on the rules to ensure that
> > addition and removal is sane.  Two obvious ones I think we should
> > definitely have are:
> >
> > a) Addons can only add completely new nodes, never modify existing
> >    ones.  This means that whatever addons are present at runtime,
> >    every node has a single well defined owner (either base board or
> >    addon).
>
> In this rule I suppose that "never modify existing ones" should be unders=
tood
> as "never modify, add or remove properties in existing ones". Because, of=
 course
> adding a full node in a existing one is allowed (rule b).

What if the add-on board contains a provider for the base board.
E.g. the connector has a clock input, fed by an optional clock generator
on the add-on board.  Hooking that into the system requires modifying
a clocks property in the base board, cfr. [1].
Or is there some other solution?

I was also wondering about endpoints, as they have two sides: one on
the base board, and one on the add-on board. But it seems that typically
both ends are added by the extension, so these fall under rule b.

Thanks!

[1] https://elixir.bootlin.com/linux/v6.16/source/arch/arm64/boot/dts/renes=
as/white-hawk-ard-audio-da7212.dtso#L165

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

