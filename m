Return-Path: <devicetree+bounces-236821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EABEBC48240
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:55:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A806424EFB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B725C28136F;
	Mon, 10 Nov 2025 16:32:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A482749D2
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792377; cv=none; b=TJoYWfkVWZxfvcFZjNSaBXu7GCRXgn3f3ZatS//CTdfPCEUH+8hVXtx6oQGCSWZO6SFfUN0lzVx/HSdMwrM9mXvMfZuNORf6luxpU7SmeI69A5omRj0LXNvr58n3QmG2yQu+NbacZb6fKedJ4WfyBaIxUhMawK2LLHUrD81cutI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792377; c=relaxed/simple;
	bh=vGMbit6ddUlwoxrUxi6IwHq4K44T3JViUun4qtrQOtk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KUxYmJkvIVNGsoocfKGldf3fuUTO6kK6W4uANNsX59wRHGZ6M7Welh4VB4tP3Nw0Ce4jGN4Ub5b65KRJ4w11NVSiTi5V1pZ0bcyBSFpOluKkCfF1nhAjo4vIcQtD19E0GxuFqT4Y+eK/9pXVrVVFzxDn54qC+W8f46g6lhiA6Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-559966a86caso754690e0c.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:32:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762792374; x=1763397174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHzMucwowrWDP2Qt+Y+UWKgurmYAh4juIylWzobpf/s=;
        b=NJTMRIAd+ARNZVzNWoMh2Oj6+pn3WgUOoF0rmkN7bD+9EFdtX1ohT9dy7X0RITnPnO
         FkT8JlwSaFYeHT5TRJWeV+KQlSJjVn6t5cGKlYT1GZu8P7OmgU6Q6y/dRe2rc8+4DSxH
         BDWKNNeIovEsYBI7o9XrA5CBAtqKkVgCy635eUaGKPn3G6O+38bYJ75NkmDkcrbnNq0k
         FWFGqeyvCyKmHOZLuhetYerlbfrQ1T4WEl9twLdvaScFHolQlcqO7H17SGGPO8nb2QHf
         BhHBQs+qLNj6hC0n1+ZclpKfFkWY01H9C9QiveO/NbMlhZomL7wad2sRA3i5ZyVN6HGx
         D+iA==
X-Forwarded-Encrypted: i=1; AJvYcCUtyKrOfitWbDpuCe3ylI4pvNCRruSRSMPrs3CVnsx2m+gZPS4I0Q7PhppEXQ0E35+VyRx5SXHYD0Ej@vger.kernel.org
X-Gm-Message-State: AOJu0YzS9HFPanihbYIy/XcdE8cg1aDpiSH+vkYqIqnk/4L9g9zzjCo8
	iKW2Ex3iLoZ45hcGtfnmAudFpNV2nw9o4RhUIeL5oQHhKQ/XN2vX8b/t+897yZ/I
X-Gm-Gg: ASbGncs7PUeDnFDOv70B+ecO/kTpH/z7lfdcQBmbqSgzR0WayrsSh8OAp/fQf82+23E
	TE6WGHrHGEowqd4LOpeRyZjkfc3ypCipRkRKKBi+YpZdBVQM+SZbq8eokKXmwfvjuSbcBS1makb
	VqUEa14iuingNBWaOWeXGpW9DWcpFcnIZ4c4NwqFy1WfO5R67pS3nuDZWfAg8yoAASWgUEHukwD
	WK8QCSLfq8TXtGTCk5AYit+pPMqb2UiGlpprhZHktrLf2C5a35h0Ywo0NuEtv2wk1RKolj+ro2B
	EOF8DDZmYOL8K5IMm7k2LWmYjCJ67LAsR2frSISkO58AjjVGCpV9mct3CUEQPSkcT9KIt8YEBix
	oRNkJAD49CACnucUvv2LM8wgyKBdVHelD8c1VYsASxjZS+51a8gvv1uoDRGcqzkR+C7nbfELhl5
	5w1nqmn1ynk7gDsZHcImV6jl69CWjIVkkfaLbV+2lF8g9C2SI7
X-Google-Smtp-Source: AGHT+IGf/ZltbX9qXfTI62zmFROZLGQmV9TApBC8x0l8RY77ghzzgh+9+yb1xTIQPpDfxVdLl9p33A==
X-Received: by 2002:a05:6122:3120:b0:559:70bc:ca54 with SMTP id 71dfb90a1353d-559b32e27fcmr2816865e0c.14.1762792374414;
        Mon, 10 Nov 2025 08:32:54 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55995829be0sm7427365e0c.19.2025.11.10.08.32.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 08:32:52 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dbcc814b80so1309890137.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:32:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV/dhc92/M+OBLQdcjsrzkOQ6Uy/HmUy2t49j7stoFfT4iguILJAcjC12sVsNNHJFmSuKJNogFpVuLY@vger.kernel.org
X-Received: by 2002:a05:6102:c8e:b0:519:534a:6c5e with SMTP id
 ada2fe7eead31-5ddd57eb0b0mr1693520137.33.1762792372340; Mon, 10 Nov 2025
 08:32:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103141834.71677-1-herve.codina@bootlin.com> <20251103141834.71677-4-herve.codina@bootlin.com>
In-Reply-To: <20251103141834.71677-4-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 17:32:41 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWFOQANqnBX7nNST+WRxYz2j3gznohEZXF1SC-GyjDuGw@mail.gmail.com>
X-Gm-Features: AWmQ_bl9D3O0uVkd9QcrhvhsjRnIq7PDvVWO1-VB9dJdhU03nrwxJGeIcNitAIk
Message-ID: <CAMuHMdWFOQANqnBX7nNST+WRxYz2j3gznohEZXF1SC-GyjDuGw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] ARM: dts: renesas: r9a06g032: Add the ADC device
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Nov 2025 at 15:19, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> The ADC available in the r9a06g032 SoC can use up to two internal ADC
> cores (ADC1 and ADC2) those internal cores are handled through ADC
> controller virtual channels.
>
> Describe this device.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

