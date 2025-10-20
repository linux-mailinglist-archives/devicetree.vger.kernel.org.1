Return-Path: <devicetree+bounces-228867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D7115BF1702
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 81EAC34BC77
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C223128D9;
	Mon, 20 Oct 2025 13:07:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9993128D3
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760965671; cv=none; b=Dhs3V9wULv+QM1RspxOl4PUfK+0jannvFhdIf8AtePKWsq7iKLALIFGsJhkGPeKwCz4NVFI2J040UAVjVXAS8MAsdNFzpNrZXHuYqgrChu1vockVTgSuRw6ZFl3SSlJNrUYoRnqs3WvnaXu7iOhz5jx5nv2QgYtzG+j68mi9kes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760965671; c=relaxed/simple;
	bh=dAbVNg88swjocVMCZUUHDps5OucsSwTiQ9hJKF1NchA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pwgugFn72L9WvvuEQ/gIE5guUWomfgTDBK6prHWBgDXzicDLeAy2j+Wphgp6IiQdMlX+vRHkkdJKMpkmSnq1qpSY47iI9DFjzDy2jT8TNx+J+r4O3H2/ANdh5mQRUyds1UvCzEBcKovEB0tWNWE8AksyzzKRgDB9b9AeQCjkxfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5563c36f5dfso1679039e0c.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760965666; x=1761570466;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dXVN+mpII2pRWCaxr0ZfVEBInfT9+TJTHMYjyKOc5sw=;
        b=XK533ptWFywHg8KLLTzDdroHs0dMr6ZWVnb90QRj2VnWRvfHJEJvTDMcVrHhwD18MB
         ZLdBU7XKdkE75enhA4SPNjtmvaHeZuiZtgPE7HYDzVxnIYkSfhV138Ot7M3M7zvDujuI
         sC9KwiJCL3DvKmLaieDWdI4zkM0OQB+GK0atHPbfudGDVtBHD4f/DtLi2/5DiVMbnR+l
         /GA5UjHB1xSczQFk93yH7P8xmyK2L/Rc1q9Swy5ATpyHbDPMTSkGk0Qbh0u8YQW50p2j
         k/380ZEvTkYl89rA90ikohG136TEQMfIJR5RNWmpB4lg6oIj8EaUME/O5Ia0i5GsJ8o8
         YjMQ==
X-Forwarded-Encrypted: i=1; AJvYcCW22108i033I95Cd+JaAXrNqe41U0scnZfhxcoO+LTOU1Z3IlMHjtiNr9eXuq3wdjHplS07pmHn1ktJ@vger.kernel.org
X-Gm-Message-State: AOJu0YySewVvzp+3FyoqVRdudlbfEIt678c1ITyZPMALQ5wi7RdT2ZXQ
	4OahMFG/tfaxSNk511RSmp7OMXACC1tiSo9u4JU2OuCSyvpka0EEeuSw72bvbEHY
X-Gm-Gg: ASbGnctz1B/puomLeV2XaDexgPygwAuY3NVXyWuAu9dI7XVkC58T/i8MNaVVW6Q/YoV
	zzpO9pHOus7IRhUE4IXwEARk3AgmNRTPAS2Gsa7xcjhdHjLgEBTwSsUmSWQNweWgec98KhIegzF
	mnx+GuwB16ps+Fq14PchGFI3QF1toWXQAkxhIbxPbLh94yOuMcCR5Ddu3vc3qVsLKM4rz/MEqvX
	fcKwgfXCPrYd9mnEk6jn/0hkEZJducSf7ZNK4FTyyrsySHkSRsAYIhXGq2zLOiF0sIwDx//ySq4
	AKI1V5R7ZlnXc/p9cuKGshJvqGmoovZFceKrrZ7GI1r1EosZSTblgid9J4Zn6hKEesgLTdf7GkK
	jaj1LSntN1TLNgH1ZoPsAatTHF7OoBSbzJRmAM2zGPQcz49ENLT3HismeFGoC6snczSbyZA5ok8
	74feqjXAk+oNucXJs+ZD0HwbLXOSRl2LeXvzpDLRDB4KqzKlen+9ps7FcQS9A=
X-Google-Smtp-Source: AGHT+IGSS5Fj3PkCephdo/bLrQInkkeyilExsxsylLOUCkMEv4jKZVPa8/WORlUTRoAw102igGEhXA==
X-Received: by 2002:a05:6122:2203:b0:544:93b6:a096 with SMTP id 71dfb90a1353d-5564eef6875mr3166194e0c.8.1760965665841;
        Mon, 20 Oct 2025 06:07:45 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-556621280fdsm2239485e0c.26.2025.10.20.06.07.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 06:07:45 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-89018ea5625so909109241.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:07:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWBndObMslbD+Nu0oLR/8ZzfRrmhGrgBXYIwx3gQ1R2xtAMKEPdKF7nhAVyKBd4n/qkaVblGA+zoJWQ@vger.kernel.org
X-Received: by 2002:a05:6102:e12:b0:5d6:155c:33aa with SMTP id
 ada2fe7eead31-5d7dd595ebemr3927553137.16.1760965664847; Mon, 20 Oct 2025
 06:07:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017115123.3438-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251017115123.3438-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Oct 2025 15:07:33 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUCSRKAbD=DfJxfFGpfKTRkt=a2BO+HnwTqALBeeECOkA@mail.gmail.com>
X-Gm-Features: AS18NWBaj0Ncc4JCqJYIUdGqwh9pKbZJtWMsWVEq3_uOLf4LF5a8xi1mMwIZr9A
Message-ID: <CAMuHMdUCSRKAbD=DfJxfFGpfKTRkt=a2BO+HnwTqALBeeECOkA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: sparrow-hawk: don't reserve SWDT
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Marek Vasut <marek.vasut@mailbox.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

Thanks for your patch!

On Fri, 17 Oct 2025 at 13:51, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> SparrowHawk may run without ATF but with U-Boot SPL which does not
> reserve the SWDT. Remove the default "reserved" marking.

The same is true for other boards (e.g. my SPL-enabled White Hawk)...

> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

> --- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
> @@ -942,8 +942,3 @@ &sensor_thermal_cr52 {
>  &sensor_thermal_ddr1 {
>         critical-action = "shutdown";
>  };
> -
> -/* Firmware should reserve it but sadly doesn't */
> -&swdt {
> -       status = "reserved";
> -};

As commit c38c85613ba2b7e9 ("arm64: dts: renesas: sparrow/white-hawk:
Mark SWDT as reserved") is not yet in soc/for-next, I can still fold
this fix into the original commit.

Or better: drop all these swdt = reserved commits?
TBH, I always had my doubts about making them reserved in the upstream
DTS, and there does not seem to be much gain in doing so...

Thoughts?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

