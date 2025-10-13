Return-Path: <devicetree+bounces-225916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F26DBD2425
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D2BD3B6C3E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B881C2FD7B3;
	Mon, 13 Oct 2025 09:21:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47302FD1B6
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760347311; cv=none; b=R/pMttw1B3YHfO14HwgNlVpH/hmgG/2h6/z1Y4fm5hxFvhYxaEwvue8hom3A7Iq+LhmHX8MJ7J4aoELU0c9WN3wXa1FtgD2ZXwjoujnsBb4wxqWKs22qCFMk600J11Iqdwsu7GJynYWnUeRH87Hs96+AZ7lM/Uyncv8Eo7YyL1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760347311; c=relaxed/simple;
	bh=RjZxcAfi3V9A5U9SAZfg5Y9LkVVCiWAYMVhIYAGJi8Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K7pjrsJCRmliUomopG4iP0+B60ulyK2nFdcjbaUXmjaqyDW/jW5dtE+IPMPL+Y4qSFcWtoJsp5ehbLlBVBv3rwVxFl0UJNNiXT9fLRetpBjj91WMdFt/VAOdefvWwGePnP29K6XxMso2muI0FItfIdC1yGa2I7+sDwX/VUzSIfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5b658b006e2so1913194137.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760347307; x=1760952107;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LE7TmgC2chzOeWrOmbf8+Owl4JMPcc5AVh1uFAo2uoc=;
        b=Ea+HlM4iGPc57kl1OnsCqVjLR3xlTWq97ZwukKNWnXD+7xehIeQJAndxJg9hSIPpH9
         uk+SPagY1qRQgNC9oWgP7/4uOBJ8IBnSvYfJt9OfKHnp40SWDaeaKSAahQ2LnufJQqCU
         ZFwV+8TrDKm/HZIyrEuvqd7kvUBMhzAKOSW42OEoo0qxW2AQfyUYPEBFypo6qxUjD0Fm
         6BfuuUvCzhkBK5f2WxcD7z0MiEb27z5+8w1GmGWHz0shGNX4IEHA0JkLD7h2S/orIogw
         RB4jZ/vJa4xe90pGL5SP6KWSyoWvcOjH21KGISmfyCBg4ZULNXuvVOUl8xeCRKUi6ylb
         bJxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQEy7iaRcQzKS9seJob7HjmX3NOluuqZFsDzGmNTNH/kx7g+8mWh1qTv3a/Th0QfQkSGKKHd47qrMo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0F73wE4h5PoWpDez5HS4eVgFkz9Aygfmuczc0g77xoa2ZhYAu
	7/b7icuPgpapThWjNEXbl0/uf+6zdVSDYDvx8Zt/b4L0+Ms/dkVn3k2byRXje+e0
X-Gm-Gg: ASbGncvGes9qUk4pGjhclL3LngqpHXYsSFiMDS2Jav6AwxGZEXjIZgXAZM6x1RZTLvl
	U9Gg3u15f6xOx7+qdNQQkLeqE8yOvTyOYlUk1vAoTJ/yHxLqDIdopZfvTXyfokLv8n123PnnfhI
	hT/s0MsOxlRQXldYOsOr+YI1YsqHYkf2plagtE1ARJRlHwwhHeACVT0tTl7zmT6WOyypvqSqE88
	Rju+Www217DsxAxidOqQb20Apo/o5rpqPkYqMdxWKd+C94VsnPSb9wivcIIa1IpONU+bVhPtaSw
	Pm1om/E3YY2L3ADw2ODjkZgiN74tcsiE8B0V9PB7AICggO9XUiRJsb8ZwuzPOU8bSVhEnSDVt1D
	Vs7TOupwHl+NUJ0oQgskhdHqHFaAymr78zQDeV1I78YR8JFG/QCzmPXDWYDIzikjJMphyItFW0q
	gifkkcA47M8bA=
X-Google-Smtp-Source: AGHT+IGkjXtGvIAFF5sG8JbcV3/CwfhLMY3K7Wo9s/J2USEIp9cXLoeXESMxpD43/Uzy2IL3ot5qtQ==
X-Received: by 2002:a05:6102:5a8c:b0:525:df9e:9365 with SMTP id ada2fe7eead31-5d5e236d032mr8253798137.16.1760347307319;
        Mon, 13 Oct 2025 02:21:47 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5fc7126c7sm3329919137.5.2025.10.13.02.21.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 02:21:47 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-54aa5f70513so951821e0c.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:21:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUhYtV6bs+XwrQVYPRckRzQPWYfADU+GerjDEDDr44IvJLAp78lUjLvML8bS2Y7DmsJCuViXMD9QkBc@vger.kernel.org
X-Received: by 2002:a05:6102:809a:b0:5d5:f6ae:38d6 with SMTP id
 ada2fe7eead31-5d5f6ae3be3mr4887066137.43.1760347306859; Mon, 13 Oct 2025
 02:21:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812214620.30425-1-laurent.pinchart@ideasonboard.com> <20250812214620.30425-72-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20250812214620.30425-72-laurent.pinchart@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Oct 2025 11:21:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVTSi6FDvsRziH9ZABR-PbtUK+ApUZCK1hGnKkCUQpEWQ@mail.gmail.com>
X-Gm-Features: AS18NWBAvXq59rhsAhQQrBuQg2NKdE2kj1vgNldRd5rxMwh2dBzQBdR_oulGrYo
Message-ID: <CAMuHMdVTSi6FDvsRziH9ZABR-PbtUK+ApUZCK1hGnKkCUQpEWQ@mail.gmail.com>
Subject: Re: [PATCH v2 71/72] arm64: dts: renesas: aistarvision-mipi-adapter-2.1:
 Drop clock-frequency from camera sensor node
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

