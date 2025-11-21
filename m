Return-Path: <devicetree+bounces-241163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E4FC7A71C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1D1D74F0E1F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E212350A19;
	Fri, 21 Nov 2025 15:00:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAF534DB7C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 15:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737252; cv=none; b=AwSHBGTVRnHd0buVMRKPs3jB+0lDEBpohfLiiksfnVwbRww4Gkrk2L1fbRoggdK8W5qQvy9bd37UERwN2hAz7jeRIiVPDEVD9g4ZeMEhizior1qWLmmRVtxo/8jf3g0ia8BVYhnQMVA1K6t4iTyeoeUwPQafNaX2t2icIldYyPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737252; c=relaxed/simple;
	bh=AQNOKwHB3UBl9g7sRvqDiWCcJTkwnsBUkpIpk6Wat1U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pmr+x1EOZJ1caRzpGcEB42BKzCRHktEA80Cusq/j8mh3vWenlrvNAVK6Ihzn6PCo5BRJ+3ACuCfS+taM5vV2/QAB0ojbQRZYoN6ILA/UzIwszJQk2MuSjRCgEtaEe0zF9wxqpaF296sFXc4JWH2UVTZvHMehshaElgcTlbDLmxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-55ae07cf627so690005e0c.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:00:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737248; x=1764342048;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yjPFQIGsOb/05+Tcv+1sJFrvUE64bOGGUtXswPEQksg=;
        b=KacBfxOPPuit4plO8dDpUyAOyNodATT0mdZyIJmG0NE9frtbjqC79uudhEOIn8GDir
         icQwjXRD/z0AeRtuaRamIaMe/rVqoKLm5eJKyTV2r+KP41KPo2lhP5Npb833omB374rZ
         SLzv+WX8n8aAvIBlZpVwNAaL7I59fmCAXq9jLoIgmHHK/+Ne79T2CZ8xE/mWIwzDYVBb
         ot7HVI+e1G4WulSwhMNmhmjsxZJaN+pfgmwHuiR9TB7X60g8I96lMLpUpMoQNx6t5mvO
         ib5q91/GQA488jWV9i8f1BqLzujaEk7hEo/4WMxY8MGnSZH4cYzZBeBFi6zFQV6oXeRt
         ta4w==
X-Forwarded-Encrypted: i=1; AJvYcCWmKY84r7XmAqJYifrmLFmfTFChWaMFInoVB7rWyUnKOMxw2O0KIGMPBxQK1ONF0vUsa40KsZukic/K@vger.kernel.org
X-Gm-Message-State: AOJu0YwghTpr/pMTd8jHytwZQMdLq6QoXca1iYjpatrUWBL+XLePzYZf
	kIZkoK7G0POOl/5SsljLql3mGhIZ0GCcbRQzFNcJLhijDGj4a6KnIXDQ7jXYy6cC
X-Gm-Gg: ASbGnctNkIg8fb5gr3hCpO+AFV1Oamw6OGBzYsSHNHPuoxUjmdfXHk97ij4aPBlGaRT
	p7v/aphBUh9TPW0r0eQtmcigJ1/4DLv63u1PoSCC1srI47oJ2K6xMZzg8/v3NZwgelXMrKubQ1s
	IhMEu+DxFhkuh8w4fVCNmsl2+cdQdBb3sbcP3YrWAVlHsCoEkJ0uld4wXnFZR0tG1hSj6xzlywL
	gBgp9QFlMheNSpR49Mk5ayi2uYvCLWHd6MbHjJ843AOaq3QSRJu2Nmq9e+qsAMaAWp87G6xfBP+
	PhwqAlRh2vcJPT7lOtan3uRjUJA0T2Z/DXBUIbg6tdn5e7mTZBoWrNQ5R0GblpXva6XWgX8D8aM
	cXUo6agjuJlYD4CwYrj4zPxCk4x0qrt2AjSwgp4iqJ+8zo/4AF1oicgtWDmWPoVNxF9badA80xF
	sqZjirYgQuzgWyHlOC0/TzUf+/nodlHrlSID9FpnuxthO696mq6L3W
X-Google-Smtp-Source: AGHT+IG/K4nqt+By8TxAV40mc3TYKI1Z0uFKN2ge9aUqJCqyFxS52Nbv/4etNCniOm0aqvwSkfBm7Q==
X-Received: by 2002:a05:6122:1d10:b0:55b:745e:21d4 with SMTP id 71dfb90a1353d-55b8efd9af6mr562891e0c.13.1763737247747;
        Fri, 21 Nov 2025 07:00:47 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7a1158sm2522567e0c.16.2025.11.21.07.00.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 07:00:45 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-937262a397eso616002241.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:00:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV2LfZMeHDvnIDrxa28YOxlqnjm4D+m/svDNwhwO//vZSfPKZSQTkfC2NcXCh1kNz1YZg5RjCqmN+HX@vger.kernel.org
X-Received: by 2002:a05:6102:d92:b0:5db:f850:b1de with SMTP id
 ada2fe7eead31-5e1de3c0ef2mr643479137.25.1763737245110; Fri, 21 Nov 2025
 07:00:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-6-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-6-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 16:00:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVZUA5CAtAkcpcfwN+kM85kWPDD88+pNO8jfVoVxvuSyA@mail.gmail.com>
X-Gm-Features: AWmQ_bmonK_A1Tk_afThFkax5A8T6CT_PRaXgFElQ-qoD63LPaFf7VsWtVh5eAA
Message-ID: <CAMuHMdVZUA5CAtAkcpcfwN+kM85kWPDD88+pNO8jfVoVxvuSyA@mail.gmail.com>
Subject: Re: [PATCH v3 05/13] serial: rsci: Drop unused TDR register
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Drop the unused TDR register-related macros.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/tty/serial/rsci.c
> +++ b/drivers/tty/serial/rsci.c
> @@ -35,12 +35,6 @@ MODULE_IMPORT_NS("SH_SCI");
>  #define RDR_FPER               BIT(11) /* FIFO Parity Error */
>  #define RDR_RDAT_MSK           GENMASK(8, 0)
>
> -/* TDR (Transmit Data Register) */
> -#define TDR_MPBT               BIT(9)  /* Multiprocessor Transfer */

Might be useful, one day. But all other bits do not have defines yet anyway.

> -#define TDR_TDAT_9BIT_LSHIFT   0
> -#define TDR_TDAT_9BIT_VAL      0x1FF
> -#define TDR_TDAT_9BIT_MSK      (TDR_TDAT_9BIT_VAL << TDR_TDAT_9BIT_LSHIFT)

I agree this is rather useless.

> -
>  /* CCR0 (Common Control Register 0) */
>  #define CCR0_SSE               BIT(24) /* SSn# Pin Function Enable */
>  #define CCR0_TEIE              BIT(21) /* Transmit End Interrupt Enable */

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

