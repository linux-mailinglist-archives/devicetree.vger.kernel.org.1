Return-Path: <devicetree+bounces-229359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2217BF67DE
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:41:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61B171898F50
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A718331A70;
	Tue, 21 Oct 2025 12:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LFZS8w5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6AC73314DE
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761050474; cv=none; b=pZdTzF3tmclBRUos+7U+dQGVKml1Eh3BR4zRXeKf/gk6rQ+SNqhzxLkw2xUfnC2i4sgrKBWkvRcgAXy6czzWgS0g0ritUU4xTJKrNfydwqrwMBzkfCfaKT/yPr3e2Yjywpd/pE0HgfqPNzgO90pVSnfOaIqDc8LOI5xgzakSbuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761050474; c=relaxed/simple;
	bh=/m0TOcjgBRnhBy4k9+IOc4oUHAiMNdiqCjb/Sku6fKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ikD3QlDa3gV+Q0s9yVPSlrDlLbKxRz1T1vB1g3ftnJs5b+ghyCZ0EXE9P1j7luwvDb4wyJeczlnbBRWGAQ8PxyAgnUmPOdjl+9xa/CYAEX79NrP9jSCJnxun17gt8BaQGlSz+Sf6kT3ISDeoKtWNKovqHvtYk0o8xGy1iSY0MRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LFZS8w5W; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-63cdbb02faaso1054631d50.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761050471; x=1761655271; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/m0TOcjgBRnhBy4k9+IOc4oUHAiMNdiqCjb/Sku6fKI=;
        b=LFZS8w5WY2MUjkq16tEYFnxjQhC90cpPxd+GpmwV1jDwgRvqv9JN1y0UoXKgg8kPIg
         y+M7J9qOqriioozg5yQdm0uvy7skjiEZJf2p3Knenmi6XCYa1qXWM4Qx/KI13g3NPubd
         UHcQahlGpiUrKP3s6SQQmFn8obHsesB548vaj3mH+Yi/6QyAmm2AqPL4mE4YcOtaEpqd
         lPAwngWnPnLl1l2kcU8NXdxag2QjV6IP52RBoYINURvd37q9dQrQX7Gr6xMfn4WdwBG/
         ULtv83k3K2BYSV/QtEfeTOMC3NOsEv1Dd/hagKlCcnHZCFarBw6wWvTLI0CJolBh8Ntr
         +a8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761050471; x=1761655271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/m0TOcjgBRnhBy4k9+IOc4oUHAiMNdiqCjb/Sku6fKI=;
        b=ES51Z98zeIciOaMiZKfiXwlUu1dWYW4kjrB46zaigHQhBlDFqlDo4/NSkodfldMn1R
         JugkKa1Ov35mKLGP6uZoSeBac0f/gmk/701/W092yNnYu3S89oHZc/53IS5QwPaJWxMn
         +sm017wXgIbOs68CdzCxOTkB6FYuuLeSJp0oC2S+gH/nlAqRKvQrs8t9f8uDH4pli++q
         DQDsDa6ePXokxQqwiNYcNfT865+UFL8M0aXUJakbDqjKeVvhccVFaRvy36y0lu9V8aPw
         fJxngx94rId2yFsFDDPN17t7r1gGBK/VBS1xt/O+5GNHdnZN6I/Hgpf0vDfUK6qZn2HU
         S8mA==
X-Forwarded-Encrypted: i=1; AJvYcCXhKXV0rrygAHd2Wa74mTPU8Lz1DmZIxzibHok2Gc5Q+LuKXUUQQkTDOel3IgiJvyvSeX8ov+ZJNDHd@vger.kernel.org
X-Gm-Message-State: AOJu0YwxJOzzw0fcou9DtL1+JFEZromBHWNVgI94wZmLxe1+qdVFoSw1
	2KQ7ZPdz0M1jEvkgDUf8wPRQfEJ/bSJ1si3SyNQcsgS05K0dmX8sUFBX7ADVOTGSfKX8Tv3+PFz
	gXB7RBSZAfICZnTShE2Z9srA1vvmPZT2bPrld
X-Gm-Gg: ASbGncu3aWJLiB9CEn9j2Yg+xImOzOWj4yc53e6lEyWUE90FkhkPni1mWK3kwjT4dcn
	GwOXYoLH7pRxwR/aEgtxe43HP3g6wTBS1NWhErWPCUSsf9FSOO8l6fDa0Z8ET73KtIQk+dYvaaU
	pvcLWUrhzwRwriULhzfO7lmyBi+oVCB37EwvBY9sOJ1ktIEEe8KE8h3SkR43/MXxX6UpfwuukNX
	Y9GRFOaqsaNQO+SW66+b1urOVoaTQjnQ31gWZDkJeyro89+KMk8/ApCQcO9rJV9O+Cj
X-Google-Smtp-Source: AGHT+IF8o20za+HTwMDWY2fwaRggRCYsTC+c9edEkcBpF7TwAQ/7MOepRnR80Z4kaLbWV/H+95He/Puc0FNo6tREKAY=
X-Received: by 2002:a05:690e:140a:b0:63e:f1f:6f8b with SMTP id
 956f58d0204a3-63e9e01afe1mr1486967d50.2.1761050471406; Tue, 21 Oct 2025
 05:41:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251018121155.7743-1-l.rubusch@gmail.com> <f875b4ec-4917-49c5-becf-e32c0d872f7c@kernel.org>
In-Reply-To: <f875b4ec-4917-49c5-becf-e32c0d872f7c@kernel.org>
From: Lothar Rubusch <l.rubusch@gmail.com>
Date: Tue, 21 Oct 2025 14:40:35 +0200
X-Gm-Features: AS18NWAzb5kZNdjnkXIbfwZmIgbMYzxR5zcbrsV-bNqml_zi5ri2z-ZaRX-06G4
Message-ID: <CAFXKEHYUKSFVyyZS7v2tUeAuBkS8+_p9qCXOzfvMsUQGNHf2Aw@mail.gmail.com>
Subject: Re: [PATCH v7 00/11] Add Enclustra Arria10 and Cyclone5 SoMs
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	martin.petersen@oracle.com, pabeni@redhat.com, rostedt@goodmis.org, 
	bhelgaas@google.com, arnd@arndb.de, matthew.gerlach@altera.com, 
	tien.fong.chee@altera.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dinh!

On Mon, Oct 20, 2025 at 6:11=E2=80=AFPM Dinh Nguyen <dinguyen@kernel.org> w=
rote:
>
> Hi Lothar,
>
> On 10/18/25 07:11, Lothar Rubusch wrote:
> > This series was already presented in November 2024.
> > https://lkml.org/lkml/2024/11/16/198
> >
> > Due to the ongoing complex situation with Intel's maintainership,
> > the series likely did not progress further at the time. In early
> > 2025, Tien Fong Chee (in CC) informed me that Altera is expected
> > to resume maintainership in late 2025. I was referred to Matthew
> > Gerlach (also CC'd), who, as I understand, is taking over at least
> > part of the Intel/Altera-related responsibilities.
> >
>
> I am actively monitoring and responding to patches. I will get to this
> series as soon as I can. Trust me, I have a decent pile of patches to
> work through. This series is on my radar.
>

What a great news that you're carrying on with Altera. I really
appreciate, that you came
back and answered to this request here. Pls, take your time, no stress
for this series.

> > At this year=E2=80=99s OSS in Amsterdam, I had an encouraging discussio=
n
> > with Arnd Bergmann (CC=E2=80=99d), which motivated me to continue pursu=
ing
> > this patch series.
> >
> > Hence, a slightly reworded update goes now again to the mailing lists
> > and will drive the binding check bot crazy. While not all Altera
> > bindings may be fully resolved yet, this series should not introduce
> > any new issues.
> > I=E2=80=99m submitting it based on prior acknowledgments and will wait =
a few
> > weeks to see if a maintainer responds. If it remains orphaned, I=E2=80=
=99ll
> > follow up with you, Arnd, as previously mentioned - this is just a
> > heads-up for now.
> >
> > I hope this approach is acceptable. Please let me know otherwise.
> > Thank you for all the support in this so far.
> >
> > Add device-tree support for the following SoMs:
> > - Mercury SA1 (cyclone5)
> > - Mercury+ SA2 (cyclone5)
> > - Mercury+ AA1 (arria10)
> >
> > Further add device-tree support for the corresponding carrier boards:
> > - Mercury+ PE1
> > - Mercury+ PE3
> > - Mercury+ ST1
> >
> > Finally, provide generic support for combinations of the above with
> > one of the boot-modes
> > - SD
> > - eMMC
> > - QSPI
> >
> > All of the above elements can be freely combined, with the combinations
> > specified in the provided .dts files. This renders the existing .dts fi=
le
> > unnecessary. Any additional minor fixes to the dtbs_checks are applied
> > separately.
> >
> > This approach is also necessary for integrating with the corresponding
> > bootloader using dts/upstream, which is one of the reasons for the .dts=
i
> > split.
> >
> > Note: I used AI tools to help refine the wording of the commit messages=
.
> >
>
> There were a slew of bindings check warnings from V6. I'm also working
> on fixing up the existing warnings as well.
>

Yes, that's what I saw, too. Since there were still bindings in TXT
form and no real way of accepting changes, it felt like a deadlock.
I became aware how difficult the situation for Intel & CO maintenance
seemed to have been during
past months. So, my actually old cyclone5 patches were really not top prio =
;o)

Anyway, is there anything I can help you with converting bindings?
Anything to have a look into?
I'm aware that also getting into would probably request more time than
to help out, but if there is
anything I might be helpful, just let me know. I might give it a try.

Best,
L

