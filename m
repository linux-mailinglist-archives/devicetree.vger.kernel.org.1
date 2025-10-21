Return-Path: <devicetree+bounces-229229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FCABF50E3
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47E3B4671EB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC8A328506A;
	Tue, 21 Oct 2025 07:47:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321F52857C7
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032861; cv=none; b=d8DT77okNurJZtcWuEYTRZ5JhY0MHRwJSx4wcKo5R3hI3sge4hGKWe8C2Hj+WFCxZpj5J3a4TZX5bRmBQDFkmNdi3/iA61rjkem3qQaCSNQYtCD5Obfb3BS5mLI0x5RsQ+fcy6iH93I+H8e2dixqIYBZyQN/eOleZxFGLRB/6Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032861; c=relaxed/simple;
	bh=LgD3fmQmo2Vj3ctKAuzbU8OX0SkBcW7bbU6i+teUALM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fBj4VjYGhAkCkkqKadqr19TdnhXSkJeDcJqN+nqcesdbNs9JQkEf+xMEIkOkaXmZyGzZ46avcK6T90ulPiIXD5GuHoB3C+J6mb2FiALcsi6MH57iXoi2nBQwBqNlxYCl097dVB/lbAiIwmgH18auHeSrZnf8swlSrp4XBHqZ7eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5d3fb34ba53so4492709137.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761032859; x=1761637659;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9RAzApxyYEKbjbp0xhiRiTTYJ8A63jge42aUGr1Ascc=;
        b=W5nLeS+lft3uOrM2DCebZKM/pMVBKJwsqmk7vfM+0FfCH6Eh2B83PM+c4stizl56kB
         9fIXG7hTMVXmT92ubepgbp1DWCySJdBF7+sVXHZLl+vu98Ban9jCv0ZjUsEjPvmpRDjP
         +TNhclloGmgcQDxIvrz+FSuVD6s0LyCsvRUyLBjcO4LZEvDCzBnS2XUXaWNIvd0IBAMa
         9bR152QqHQkVT1Wy6cX/K+v14Dc6kl82Y4MelLlM5jeUUGNqupHsA+/QxVJ4kX8yNOqe
         Ho/OFOmm7yW0K77ujDZhMIDTLWvxOif7mAZTDosZe5tbnduLY/Utp4zvON0+adY9TxZf
         xd9g==
X-Forwarded-Encrypted: i=1; AJvYcCU+zXGhX7/fyCCLWAdl5ltIOB7RYZby4qZBVUrOxDP4LRiwoQW4sVqB81bVJ6AnGjhA5mn4FBtQGTa6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2s4o3Uu/JOnKvhJA8CfvybD+AlRor3MVX7gZ0MKwHTvr/xZXH
	mx7jklu35YqRPC2bls823/S0P8UC8SN6LPESyAt1LzWNWO3XlaPUab6NYT1YKKCC
X-Gm-Gg: ASbGncsnk5obXZhnNlxWgwYRAXrIFse1eoaQCy26DZvv3nGcu7sngqAE/VmoYFOeay3
	t9hl99AbQXK8b/D139Uw5CSrjgtdChKixPK/Iyi9FZZ/2CM3lpMXR1umsVWkaxf1bHdTbTuHLhz
	M/5fO0ndrfZvKddYL7FA0JQ5YmV9dPSzRIxnPYF3lsuJhv2uQ5Llv19vx9Yvk0uryZXAek4Ndoi
	pXQUgbN72e+tU4iGCSD4zCJfrRw8Uvtu4yXp5BGWqW9KMV7e84Ktv3D55G5jnVs9fWj8UQjzaL8
	XSZypx1tf/X31EtkuctiohgO64pirDEXjjo+MbKDJq3WKgm2GKGXeNVLUAjJ3A8PI05pSr94WrE
	pEZXBU0QiRSp3ax8DQUn67StTIjUvEHhd/dOCbIfJFIBYBcpJ234ckT88l2MUFX7aIkvTP9K6xn
	r1K55JeErGKOgtTBSF80SbMw1YK8XZg4UV9YXkKQ==
X-Google-Smtp-Source: AGHT+IGu+BN7Zz2ak/aOELDYAfbGb+L5gRobCBNTF9y8KPpHWBWh9abxZX1lgrZWuw/jBJFrAPhSmA==
X-Received: by 2002:a05:6102:cce:b0:552:aa04:c61 with SMTP id ada2fe7eead31-5d7dd6a44a3mr5223225137.23.1761032858824;
        Tue, 21 Oct 2025 00:47:38 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d96c115836sm3251686137.8.2025.10.21.00.47.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:47:38 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5a0d17db499so4913983137.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:47:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXDFMBSzzWesF3QDOaADGwdPTVh30advODOMq2xNsE+7UwLFQLObzof5TIcLF9Ta/xDq+/W01chYohz@vger.kernel.org
X-Received: by 2002:a05:6102:3594:b0:5d6:218c:c737 with SMTP id
 ada2fe7eead31-5d7dd55ac83mr5106961137.7.1761032857706; Tue, 21 Oct 2025
 00:47:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251005111323.804638-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251005111323.804638-7-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251005111323.804638-7-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 09:47:26 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVU7dxJdZ-Fc0+KtH=vXt4iTA+uzEvAxu3xRR8KSVgg6A@mail.gmail.com>
X-Gm-Features: AS18NWDjbmYiPPiW4sH01TT_kOMR7nPnFgygby00VrAZBRa3sfL3fwyjeGQ-q4o
Message-ID: <CAMuHMdVU7dxJdZ-Fc0+KtH=vXt4iTA+uzEvAxu3xRR8KSVgg6A@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] arm64: defconfig: enable RZ/T2H / RZ/N2H ADC driver
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 5 Oct 2025 at 13:15, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs include three
> 12-Bit successive approximation A/D converters.
>
> RZ/T2H has two ADCs with 4 channels and one with 6.
> RZ/N2H has two ADCs with 4 channels and one with 15.
>
> Enable the driver for them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

