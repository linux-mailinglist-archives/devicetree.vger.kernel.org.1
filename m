Return-Path: <devicetree+bounces-222468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62981BA9539
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34BCB3A60C0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8472FBDFE;
	Mon, 29 Sep 2025 13:25:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A453016E8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759152328; cv=none; b=TgDgVA1EdpHSJxAVYIkQsJ74EaZFCiHml4ghrNvv04BsJkCgZT6eRp42PrYS14kUYNXMdVjolxRyCI0vM+m71Dq45nIBjXCVWNqrCnFZ3nKgLVWyPPRuwfFANqAVSEgxD8ONuF/Y9wjtqYW3qvFLK8p811kbYZttHrgnWNSIWx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759152328; c=relaxed/simple;
	bh=jvqvQ28/bBt/CRgYdapMYwDQEHIvN/TQdu1Bo9UbjjY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NUa7iX9zHfpd7nFP2lF5rDjZZ8YdgdzIG1tN6XOmNGIA/pQcvJEJbB/FFoxgavWAlOTNNpUxcPyXRvADVKh84BB+M5ytV9b85YL+pzXf8DXzK/GFmj5o5vLcZ4NoqsCnV/kgQO2FCKWKWcemuyMyTen/miTZVMQ4q+iuyZAsJto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-90f5eb2feb8so1173351241.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759152326; x=1759757126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s5f6AsTuwHrjYGiOLotcME/8AIl9AIuAc9c9mKImQ60=;
        b=qn7YM0b9ka9MD8vw1TZzB0tQH+LeT5aTh7E8lh+8UBcVt3gh6zli/OhNFLQ5O5r0hv
         5FsrsA6ndKttzkQNWRdYm22UhdHJH2Ik6BImKBmSOVBhpq2TgsCiHlgqpxrspengK6IV
         8QLELp4Jk++tV5BNsvJGccjviufXHcT6wlg3anhJ61bN5du0fok5ICqlfrJR5BU4JwVo
         251PiYmD9TV+83A69T2QEOl4uWex8sk2+cUEqSSYy5aDV7hBZh1Bm+aRreC5zUrFL8jV
         ENIIsowJR6NmrYcvIBOpcZxgcycgGKGyKpv20c8ZUF9nE4smyDbSU97XLddfUxGq0Ahl
         wkVA==
X-Forwarded-Encrypted: i=1; AJvYcCU1A0B+Gz/ZQb13mk9sKpspSMoaPOglpl4AetndjpHZnxfdcA74SSz3yTsdsxf20ZUlknYfzPXikaPE@vger.kernel.org
X-Gm-Message-State: AOJu0YxvwUJfJgn6Omx5tdlA11iB4fli32Rf+lYbHiXst3xMMYuATfoS
	ImzcfbwYAt/IZ6KjHionMebRJw90lOWxGF2cSY8jZ3apNzv/5B19cPNoHluUZRhh
X-Gm-Gg: ASbGnctVeM6MSPQKnSW43AqN9ov75pUKLBSraQpk1iyt/RPVw5mvEcYUpvGLfUBcza3
	2YyYV8HiUUZ4TQLCd2ncV0NnleD3lXnUol6Yr37YzEhpYZzpNr5feS5pRs54ugWmVfvbHU/tKaa
	FgYicoI32jSeL2sKLrBCwvLpKTGxXXHvQdLMik0tErp96OLvQ5rJXRrW7UBfmtWDepY4w12QWSC
	6QV1O2ge9KmAazTmJO/iMKqqOZ+LU6wGeqWzcWwN8nCY+XniCZvHGYOUkLoS8bkN9KTtI1OhISR
	XPq4JoXmqE/SPylIgBQGI5rq6oiwIEcdaUUc5GMwp7uoYo8NAzZneRH5OaMEWbeSvy6QHNhB4OT
	e7r/oB7I2mbjkrg8cS7AjeAYVSm+OMKXrzSZq7dxd23SyUPJWoonRgfGF5ywWwxF/5y5jP4ZeMW
	L62aHh3Mr/Hw==
X-Google-Smtp-Source: AGHT+IEDfLy+E/C0jwX7hyKkIqGYdWjyMKjt23j6QBp79LH9cYgi25sZ2BrFtQ12GwzZ+1PyhqMmSg==
X-Received: by 2002:a05:6102:40d2:20b0:5be:cc35:3aae with SMTP id ada2fe7eead31-5becc35400cmr1791049137.16.1759152325683;
        Mon, 29 Sep 2025 06:25:25 -0700 (PDT)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae305d0c44sm3368745137.1.2025.09.29.06.25.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:25:25 -0700 (PDT)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54bbc2a8586so1733257e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:25:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXjLKXGgsQBLQ4jgL9hvJ2cQfwDgGJ8r1tX2AA0CBL/ZQF09ZdLAJH7sl/rFByJCEe+lm+zMlFeRtgB@vger.kernel.org
X-Received: by 2002:a05:6122:d06:b0:530:7bd4:1761 with SMTP id
 71dfb90a1353d-54bea300da3mr6486981e0c.11.1759152324842; Mon, 29 Sep 2025
 06:25:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929093616.17679-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250929093616.17679-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:25:13 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUjxcgcX2g=P7WyJfQOapMkf0skbUeJu-Yt-j9PKqO8AA@mail.gmail.com>
X-Gm-Features: AS18NWA0fhVhDiPz-K0-dlqh_DdyYiUcadKalyQD8_iM3WvS-rElJzR0A6iWLRU
Message-ID: <CAMuHMdUjxcgcX2g=P7WyJfQOapMkf0skbUeJu-Yt-j9PKqO8AA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: renesas: gose: remove superfluous port property
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Sept 2025 at 11:36, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> 'bus-width' is defined for the corresponding vin input port already. No
> need to declare it in the output port again. Fixes:
>
> arch/arm/boot/dts/renesas/r8a7793-gose.dtb: composite-in@20 (adi,adv7180cp): ports:port@3:endpoint: Unevaluated properties are not allowed ('bus-width' was unexpected)
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

