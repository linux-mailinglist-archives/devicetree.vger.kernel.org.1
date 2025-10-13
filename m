Return-Path: <devicetree+bounces-225917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 430B2BD241C
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B4FF24EE8F0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C7E2FD1DD;
	Mon, 13 Oct 2025 09:22:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1FD2FD1B6
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760347334; cv=none; b=HbojAIVk81T81TofhhKrmu8yWaz0unjNjWPxRHvVo+H+CycfPUiYKy9IXH0HhSql9sSmcRvugIe3C8pyky2k3yTu6U6F9zT24Qzpke7uPQEXjToJK3QU5pL0e7eFlqk+Hr7HCdxhXb0NNsxY1cVUWHjlNq+gt6WWnz6K9eOJFug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760347334; c=relaxed/simple;
	bh=RjZxcAfi3V9A5U9SAZfg5Y9LkVVCiWAYMVhIYAGJi8Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WVdkhjvfc7YUCZHDpkuCR798SWF+8GG6p0AMkTOPXzG8kmkd+G1dEluN6f/eghvbYwqAYZFQTLltooq/BpfJ4zS9arhHbrnShq8cLMARz5ieuFtvaEoiDb66OUHAT9lOSr4RA5W3gRI559DsL/XEFfv//4RbbTJiqOvT/gnolj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-54aa789f9b5so3344883e0c.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:22:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760347329; x=1760952129;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LE7TmgC2chzOeWrOmbf8+Owl4JMPcc5AVh1uFAo2uoc=;
        b=aWWLavQBvW+leXYwmy1sbkDcMC4gVziHCf8/0r1y4IfbmxKgnAJB93KbzebR4RRn5a
         NC6YJ3uHiXIkUKkUPqAvqZOMUnw8/40rMCsVK82jBiGsvmdLivQGdQaL+QDcIaJHCIMg
         4xN5X0QIPv7woynt8DIMzUj78Ab+qDu9EAv90WZn3WUvai7d5lpLrpulB6P9Te+yfk3L
         tbn6UjsHVgXyY/KttbuBblgA0e2sDSMSFhtZ2pTmXlQHqgII2k/vHqNbqTqowT6Y6qAJ
         +xhoJp7ByErxKt4x+yrDXqpG7m6uOrE+NKtM/eyo1z/rZ1pfyYiCtoWzUcgxEB0hv4Ok
         6vYg==
X-Forwarded-Encrypted: i=1; AJvYcCWDrVL78QQICGSUxgDZmxvf279LHbF/lk9odoRGtOzqkO9Y+LaXYLai6FfUIzxpgh5H0NJkN8iRC28g@vger.kernel.org
X-Gm-Message-State: AOJu0YwpoCpWYxxtl+PWGOmbWElV/Te+IDLC7tbyrE+rGFpHWIk88YpI
	GzwxB/8fyyMHW9DopHjJrHZYkhxyT4XhY0ftgtVP2S4WynndOBQWJ7U18TFx78SD
X-Gm-Gg: ASbGnctrbGwcGp6pKEGBtF9/sOTKkHoR5tNlWPHBHzr5dYE/lMekllEolNR/dUxi+9O
	FYvVnsyBio9HSxO4jPqxi1SKfSSj5ONMmCOzOamQjQHQa3O0Vz2X9pDYZ/1pmpFWdM6ONS5EzV5
	hCTwoCcGpYD3GpL3MF0zyDbBKJfMOkGGF+ZFE1JT9rnJxO3qo6C3WdGgVOKFJbY64t8BmkNYpCX
	YF03y/UJmO6lLTVhlT33oVJvBlbXNOTIm2fBJLm4XBmfTRPRaFY8+aj8SBc0yhpwGaoOftiYQ78
	Nk4uixf3Xg3/5BdPXx0ta9avyFwWRe/q1c1BceWviGcQoKPG/qe+QppvPZfxy2bxXddjdFjyJak
	XYXuaTW1pglYRPiK9grrNwKpQOBHnc4smlye0/Dd5bQzdvVi75BBumvNyT/QFYH8O+CQEMV+YzG
	RCn1xCAW71NW8lbsGc+w==
X-Google-Smtp-Source: AGHT+IFGksQr1qhq2dQqhoTE1UoL4nLYisK672V3hOe4jroHdB91Au8I0fhHwDHbco2Nlko2IJSxHA==
X-Received: by 2002:a05:6122:c83:b0:520:64ea:c479 with SMTP id 71dfb90a1353d-554b8b941a6mr7776004e0c.10.1760347329148;
        Mon, 13 Oct 2025 02:22:09 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d80aab53sm2926744e0c.15.2025.10.13.02.22.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 02:22:08 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-930a1bacf0bso2585327241.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:22:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUfZxXCS1+IXZ2YsYgfN85ruoErSbZMVqRGhrMQmoSV/eo0RhGFu/4UQpZv6BYmHZxxyiy830w7ZKvt@vger.kernel.org
X-Received: by 2002:a05:6102:580a:b0:5d3:fed4:b012 with SMTP id
 ada2fe7eead31-5d5e225c578mr7941230137.15.1760347328805; Mon, 13 Oct 2025
 02:22:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812214620.30425-1-laurent.pinchart@ideasonboard.com> <20250812214620.30425-73-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20250812214620.30425-73-laurent.pinchart@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Oct 2025 11:21:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVYvJFKuauJZyJqZe61G5TYpHMnaX_fFkRW-n63r5t8CQ@mail.gmail.com>
X-Gm-Features: AS18NWAAm_gDezINKRgnhFXgpTjwG25pxtXA25pOO4Uvov585HnEMLG2OoHJPA4
Message-ID: <CAMuHMdVYvJFKuauJZyJqZe61G5TYpHMnaX_fFkRW-n63r5t8CQ@mail.gmail.com>
Subject: Re: [PATCH v2 72/72] arm64: dts: renesas: rzg2l-smarc: Drop
 clock-frequency from camera sensor node
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Aug 2025 at 23:48, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> The clock-frequency for camera sensors has been deprecated in favour of
> the assigned-clocks and assigned-clock-rates properties. As the clock
> source for the sensor is a fixed-frequency oscillator, simply drop the
> clock-frequency.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> This patch depends on "media: i2c: ov5645: Use V4L2 legacy sensor clock
> helper", which we tentatively plan to merge for v6.18. It should
> therefore be postponed to v6.19.

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

