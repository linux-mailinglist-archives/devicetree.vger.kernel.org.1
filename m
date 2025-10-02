Return-Path: <devicetree+bounces-223387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19984BB3DF1
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD0003C5301
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F2830FF24;
	Thu,  2 Oct 2025 12:23:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA5D280317
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407781; cv=none; b=FBp/F7fJYqAfDwTXZ0CnovevLwUVnS1q0FXnZFAzaMFywO7HeJAKL7sPEotUGArC1fKy4+GEw6OxXWE/HHbRsf09X0+vm3YWE7t62J8cq3P8H1Cph0Aad3fhhs497CfH/Ia230PcldFya8/eV4IPmrnOYh267FSmNgRA+rKfgd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407781; c=relaxed/simple;
	bh=Tqtk/3Mjh7EHlittC8esBGgOeAbCYg7iKT03peJmm8E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gVpc8kmk5bOM/u6zYg4qtuZM0Wsf7Z/8eh909slYxZgM3M4JVETjObN2k5VbAh7X5E+YulG0inOoTr8psRnaGJM5mtyfar27z/Nyls6br27X8W2PTJfMMnsTs8bcFIOhlNIHA7FfaQgxGZNuIISA2m2wKtP/C3OFHuUwxk9C/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-634b774f135so1733592a12.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:22:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759407777; x=1760012577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Va9V2uUOhWQg20/22Fe+/4og8vX6tT9a0pItbdogQI=;
        b=YOeqsybyw1h7rYer4tmfccn+0qwMZaMcLTZmn4fZeH+xVGXDevm9BLuTGtCYbV7IRQ
         kmi0yRZZKpE2qYahwuqJ4wSdY0AAIkKZVRs8FMvZnuosjWySy8lCQAIuAyL/RXM/VDEJ
         b3X86gdeRscoAoWLkgKr5oUQUualdtDRXK9IPn0sgJ3V60S2Gf1a5obConz/rRK5Yhk5
         uB3FrxC7LbV2lxb5TOWZG5xgTA3ZDJ1jDGgfnI/jmc9kZHxoQpRepuQLj+RceauuvAoI
         uZfPNbEbectA29PMeuHrXkZIKgbNjQBXmC5aiG9Rt4nOJggrdmf4KKqULoaqmS0iYxlF
         zp0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXfG2e30G88gZvw75kEsQ/rV9JrLccnEApr/vbbyrQCzAIv0MmJQC61knPsdiGHtxRxM32CzSN+PlVW@vger.kernel.org
X-Gm-Message-State: AOJu0YyfQLU5DicEeJi5vR4KyKokcBP8ZBBCO0cJeHf6RPUyPonvH4RV
	aIejBF70Vki91JCCk6o05+kd/W3O1U08movTQlKi4TlKgV0sNPdF0v9IIJXo7c19aV4=
X-Gm-Gg: ASbGncvnZWtR9abqIgq242m4PUHcr0jb1mU+6iZJNOTz3fqiAbDNZ7s51tPlRM5k2UE
	IZy8DEiEi55rDJm23DrsclGwla57q3zfca87bYccgWGOrcHK+nId7vMrmXaBT9VP13F0y2Em2+x
	ami6tLuKqmWOrZ59Fj28IuyoJTrHrQuHKvlvPBE2GK56OxiSBVrcL7eJiCUq7x7l/Mk9TxD+QMJ
	tQtd1CaPPnPcIMmxD32XE4K+4iKQpaxrgsNJFRQ6kD0sWyhGlLrVpYenweTwXn0baYGOEeqVN0y
	EIx/gfEk7MODD+YUSta5PWhmfCPT+gC6KVJuHL1NkglgMj+xlQBcI9icKoGbkyy6oWmf0aD+pV1
	samnsBWiRhd2nnifZYCCReUSSHjWq5E8fGO/JyF+uuPJ2uORPaRuRzIMKY1BGbmvVmxmElRDmW2
	gxsE2t7Cznn+jmCOtxxjk=
X-Google-Smtp-Source: AGHT+IH/v5ae8qu4nWFDpGIo+VQH3S2Kscne4UZqggo5Q41buT5TIFS7hlz6f/yJ+FQcJLlSzVJmMQ==
X-Received: by 2002:a17:907:da7:b0:b3f:9eaa:2bba with SMTP id a640c23a62f3a-b46ea127661mr919224566b.63.1759407777307;
        Thu, 02 Oct 2025 05:22:57 -0700 (PDT)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a83bd0sm195628366b.24.2025.10.02.05.22.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:22:56 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-62105d21297so2042040a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:22:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUtDZx94DOCSdN9TDsSFb8dN1FGvp+X5xVaI9T5/ghqE1gYBq+7v+epucVX35KHTHD9mmD9Gt7/aD4J@vger.kernel.org
X-Received: by 2002:a05:6402:518d:b0:62f:2b53:5f7c with SMTP id
 4fb4d7f45d1cf-63678c4d329mr7937739a12.19.1759407776512; Thu, 02 Oct 2025
 05:22:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-5-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-5-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 14:22:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWF9ZLrUMrk0LvDqVTPPnm8bAvqf3-hvtobpZpL=S=XSw@mail.gmail.com>
X-Gm-Features: AS18NWBgQP_ruL9GwGLtrsdk2TQDw2PTGEAqKYNAvgwmaawF9Btroxq-FKYQXOI
Message-ID: <CAMuHMdWF9ZLrUMrk0LvDqVTPPnm8bAvqf3-hvtobpZpL=S=XSw@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] arm64: dts: renesas: r9a09g077: Add ADCs support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G077) includes three 12-Bit successive
> approximation A/D converters, two 4-channel ADCs, and one 6-channel ADC.
>
> Add support for all of them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

