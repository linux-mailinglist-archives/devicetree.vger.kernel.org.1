Return-Path: <devicetree+bounces-186592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 015FCADC6DA
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE30B7A2727
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7D3296151;
	Tue, 17 Jun 2025 09:43:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3EB293C64
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750153424; cv=none; b=m9xDQsGYB8/eDYIoG+8qADbyVoeMihF6ip3roVT+AAOiF/OPlGuehdRcswILoutrZcWKRH2QqfCIDVQWLgygmiBkS6YEPu9I/nf5x3Rwq1lBOR42gpViu5lr2ogsXGcvX8CaHgdLhe3UblOEIWIF0xK02i3CK8ggrH7xlmWTTn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750153424; c=relaxed/simple;
	bh=kXdGNVsNKwNpEUdnDTZE7yPvSV6f9V3JwOQIlxWPy20=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lJLDLyzr8HwABrJ0vvWe5jiuHA1JF+MeYdVEwrIpQTuq6sAg6p63V+U6m28g8SZLCojRRV4evzhdgYw202h1nkru081jOLPXP/eSdJ1usztOYKpU1PmxISdP8QCzKkirhTXe3t5t8jJHey2tL5578tnz7gmVtybHNhiJIDfjJ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4e7eefcbf08so901646137.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:43:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750153421; x=1750758221;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cHK8SsEC98lOSZi58NbWIelWYUXND+pFFUBRGl2zZEw=;
        b=h66McTWsI6qYLcBTmSTDgQmP4ik101yxkSxJpPN6Kb9KfsRBcld1SWD025RJWoHR4I
         8NAPfCFw4uwP/kGQ1V7xwY8fGh79vbcx+4K+QOboABK5P/zE/Dk2BUX8EUKGX7+ycejk
         H3DDtXbUnRrrf1ez1z23pM2yaUzd4I6UI/FVTX7J5eEuXFZMER0wZ4U3lnYZIF/NmVSw
         zlUWsMjcJh5h0gUGwodhs6edcTcIIxuAHSa69YP7dWv32+ZQWzehqBthY437+/p9QYS1
         MNSyMcVTW3CUowBHfu4exfigPkpn0UODgWFZSDYz4Pp1fcSrlw+aDNCvQzja6Uw1x1mD
         vf5g==
X-Gm-Message-State: AOJu0YwPq4IBWL+OZrkr9+kTZoE5XE+ET1/PzcqEvWLrVPRKemBpGv9c
	nl1RNAPcgeji64YbJ02s71T5NMNRZYtvCbvZFFk5j8GYMRf2HD36poOws4hp+0qW
X-Gm-Gg: ASbGncvkVmtoF85i5pvdGVxzkAfe++S+Pc8OK3MycyOHUltl9UXrkShdHk771vTnioS
	Mz2tVuU2+j/31+Q234bHKK8P/FdsVNIoySKUGcFpiagDuc+NDX5pS96sRItkKb8IrHtDn8v990S
	vblafpjWZHjYte9eIZ6ehuZlzysYpMNlAkVvf9AeKvfDUV1QPouSBMEkDPUVZgUuNJajitF+Lri
	cpB3fFmPNI195r7c86Vn1xNCpbrBlM7MMYekHXL+NgTBxv6iWs4GWkiQG9rBY0RR1mz9iR5Zsry
	qhQWwcwavVmsKxDFdGlymA51hTHmcUyxobTiKjYM8igI7WC123sUeWD23d1rbcXkt/+5Hu40I4V
	XfLcRbKuaIXI/BCuqehb8DvhVOvGI
X-Google-Smtp-Source: AGHT+IHbbHNwyBzhaWR+m458iido8iUAcA6lwivw5L6sFXrtx6TeMuWMGZWhlFZhMbwjosnQ+Akd8A==
X-Received: by 2002:a05:6102:3e25:b0:4e2:beb9:191 with SMTP id ada2fe7eead31-4e7f6213cbfmr7419376137.20.1750153421190;
        Tue, 17 Jun 2025 02:43:41 -0700 (PDT)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4e7e70958a7sm1587000137.14.2025.06.17.02.43.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 02:43:41 -0700 (PDT)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-525b44ec88aso1578113e0c.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:43:41 -0700 (PDT)
X-Received: by 2002:a05:6122:4b89:b0:531:2afc:4630 with SMTP id
 71dfb90a1353d-531492ec45cmr6946698e0c.1.1750153420771; Tue, 17 Jun 2025
 02:43:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
In-Reply-To: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Jun 2025 11:43:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com>
X-Gm-Features: AX0GCFvgH-keERZ-6Jn8AamubwYVZ4hnuadBBaXO0fRGD9ghL6DA4wijFrut5gQ
Message-ID: <CAMuHMdXVEOBRU+pzcmRXq7YJXhYnhPjK72Oh31y=n33VZR2JKw@mail.gmail.com>
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
To: Jean-Francois Lessard <jefflessard3@gmail.com>
Cc: devicetree@vger.kernel.org, andy@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jean-Francois,

On Mon, 16 Jun 2025 at 22:06, Jean-Francois Lessard
<jefflessard3@gmail.com> wrote:
> I=E2=80=99m working on preparing a new driver and device tree binding for
> auxiliary LED display controllers of the TM16XX class, and I=E2=80=99d li=
ke to
> request guidance on property naming conventions before submitting a
> formal patch series.
>
> The driver (tentatively named tm16xx) supports LED controller chips
> that share a common hardware design and programming model, produced by
> multiple vendors, including:
> - Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> - FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> - Princeton Technology Corp: PT6964
> - HBS: HBS658
>
> These devices are functionally compatible and appear in various
> consumer and embedded hardware (e.g., Android TV boxes) to control
> both 7-segment displays and custom icons that may look like this:
>
>           ---    ---       ---    ---
>  [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
>           ---    ---       ---    ---
>  [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
>           ---    ---       ---    ---
>
> My current binding defines properties describing hardware layout, for exa=
mple:
>
>     tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
>     tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
>     tm16xx,transposed;
>
> These describe hardware characteristics (grid/digit arrangement,
> segment mapping, transposed display output) that apply to this class
> of compatible hardware, regardless of vendor.

Personally, I am a bit reluctant to try to describe the segment mapping
in DT, as it can become rather cumbersome.  The alternative is to use
a device-specific compatible value, and put the mapping in the driver,
like I did for the Adafruit 7 and 14 segment Featherwing displays in
drivers/auxdisplay/ht16k33.c.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

