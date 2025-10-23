Return-Path: <devicetree+bounces-230088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 386A3BFFAB3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 41A644E2DBB
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A3F1B808;
	Thu, 23 Oct 2025 07:41:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E681F03C9
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761205307; cv=none; b=tjH/lwxJRKjbwW5/BHW2Tfg2JZg9HB8DDlXeGSir/KQ5ejZ2ETvAbvd0n7VRvGCUBCrsoQyxkoFhL7KZZAjJVehK1Oyx0cYq3u1RH9J+wLsv671fOAhJjujkh7gsVP5jhUyY+U0MZ987pSUFbH8W8QQVdj6k+tR6gfTOBXuAh3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761205307; c=relaxed/simple;
	bh=JkgQHfArzg4D8ryOqFICWYyKto3V7a/LxnPvyrSPM20=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G0Uxla93TwKq9aeoQDU4e7qitT8D0GR/T7k91EOc37terVZzeuAGkuX13meQ1bESAesYqESY8lV1Xe1OFTNvQw2iDgcA0MNZpNUkiUCTrmJiuneIs28HJDjUMLh/hrPOPpvIi+KoJ0vQdfnTRXtU+pcSkAqzDEGiwXkESQkq8OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-556a4651cfcso181225e0c.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:41:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761205304; x=1761810104;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=St1Alf0zzo1z5RK7r5s4Db4Ti3BD0fEUTN5i4CJPn00=;
        b=A5MObP8yNCIdbCNSd3DSEDTOW8deC7BVRgdCZCGuOeeFNS6UYGxVm7RyLF17+pFxNo
         h1Dee6/UjlPxBx0zVL1F9BlATXBMHWTTAfQvYZRE0c4CglJfJ2XIK3sey9oJF8iAvOpb
         lhJVEOsSynaM0TLRzQCjPRQClwfALt7mQLJuZ2a05XjJ8t8sfhpy0/ywzZsxghCbMNA+
         4pWCuwyXk9xHr+FPrmL6OLU310jtdi11ZSUHLsUYUBb2TaLsfIC7CFwpm1PDkgDWywnP
         dThNXasZAVG9TEe9R8mCamKc/gc3y4/TbBL/vf5vCmwnw+9+iwqzyNMZj99D0uweY9FG
         0thQ==
X-Forwarded-Encrypted: i=1; AJvYcCV86c3mutoOtIWiDLH9MUby39cRdQaG8T9yvKtJkcb8Cfsu4Yxpu2OIMcbBkhyttLjJoVLZEVjVzOLB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5hHY6ASaUE5eV/H8BikSgMpjWlqubfdS726G3QQuwXvL3+1XR
	AHfwcVS8NdVVCpub+WVZ7+EPFhO5l15O+UiOfVdpGOLy3yBmW19FatQo/fEaHfJH
X-Gm-Gg: ASbGncsktFVnzOT+5VIoHMKG0IR3/zfdD108ObmGcivcYp/3JBt2wvfmG4AGWq6LoVs
	XOew84vsMNVMOw7IJwiYr0OerknijFqy9TaI6i5cxAQWgidPNHWYemz+RfYGHDLnRbk7zyCvRuD
	Nkpr/qoB2yaEY+zF998mr4gJfsFx1T8blRhYKce+Q+QLqdtGbheOxxqtimbymblSUBl0ekWfXT9
	oobpizswEOd5p/AL+RaPVmz/mQPe90SqDNF0xjX089wQUP+cdR1XMIvD+U49ZMA3yQfm7WxEUVD
	ZZVwYjTwahvMQQVGhL1Octlh1ZAFFhS06NXhMDP9hyb2kzzRcTTPr7OKT+l6YzMzDUdUKl+ck/c
	sEFgYLyv0mmDtsCQGlkpuvbZQOmRa4av+B63W4pcF4dzJX2lWhz3q3KY2fvuB0K2rXnT3e57Ao0
	E5MVA8XEqYYNY0+0IbOb8zwrXUMnRFXjPlUXeeIoX5lPI6OeSN
X-Google-Smtp-Source: AGHT+IHGnpD5nlzQSXcnV3+FX3wRyAoyhBTwHlmz2NjWmWxVG3vhLOxNahQkh05nYGykLgkb1k7reA==
X-Received: by 2002:a05:6122:181e:b0:556:a2d9:f3a9 with SMTP id 71dfb90a1353d-556a2d9f431mr1251432e0c.6.1761205304060;
        Thu, 23 Oct 2025 00:41:44 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557bef22a61sm530219e0c.24.2025.10.23.00.41.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 00:41:43 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5ccccc1f7caso245665137.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:41:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVChMwycUr+Jt0UR01HX3JvjANjCO6lHjV5ueSOlDcWw0UdT21RhxwcGv/i4iuwS9hlWvBm0uk7r7CI@vger.kernel.org
X-Received: by 2002:a05:6102:32d3:b0:5d6:fcd:dc86 with SMTP id
 ada2fe7eead31-5d7dd568745mr6531880137.4.1761205303104; Thu, 23 Oct 2025
 00:41:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251011212358.3347-2-wsa+renesas@sang-engineering.com> <aPnUQtJECB9k5D41@shikoro>
In-Reply-To: <aPnUQtJECB9k5D41@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 09:41:31 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUjvZKvwpH3E4noxKgZTW_to9t1dcTSb938EcQFU=JwMw@mail.gmail.com>
X-Gm-Features: AWmQ_bnR7Y31k8D-p6uCM8fhSDnIP6L3FunePkJdPsiRsgNvIqNJpRRw0XvcvOY
Message-ID: <CAMuHMdUjvZKvwpH3E4noxKgZTW_to9t1dcTSb938EcQFU=JwMw@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: renesas: kzm9g: name interrupts for accelerometer
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Thu, 23 Oct 2025 at 09:07, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > I'd think we can apply this before my binding update patch goes in.
>
> Binding update is in -next now.

Thanks for notifying me, I had missed that, as adxl345 is not one of
the patterns I keep an eye on.
Will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

