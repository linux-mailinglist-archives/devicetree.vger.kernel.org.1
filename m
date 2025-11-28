Return-Path: <devicetree+bounces-243015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A9C9273A
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95EAF3A97F9
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D40927F754;
	Fri, 28 Nov 2025 15:23:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F10426A0A7
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764343384; cv=none; b=LJN9GN31layToBPdZZPCL8AgwMrtxE0q7aU7f6Z/1RQM3qGyAarTszg4pn71aQJuEfWiM+QXE/TuaRnS8ufHncOA+TdtWW26G1DBCdg6f2pN/1kOQJSQNDOPV8RrrnAkYqpQGeawnGfnt+FCk9jojX/QG7byTvL9uPcSHP4Hj8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764343384; c=relaxed/simple;
	bh=xGb7W+NMwzRcrT9zxij5YLN4R4sOpAUKVyDvdKtijS0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qoxdvQfl+vXtkr4Kln+p+yqLkv4PF1DsbGUv6ladUeA4LDhy6YOZsOOcEAibPKhoPT02CX6AAgbCcdBlZ/6gHYrtdBXc+l+4fCBiev+1ZS+AgfxmmF06wi8es/i2opHUWWjLFfqS0YPerIgRrTZwWxtJ8uYEkukdANz2s4RJgwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b1dde0961so1313704e0c.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:23:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764343381; x=1764948181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaRd9+5Gnqr9XLwdxnI+TeUBqhhaQUEYrbZmEOL5EOw=;
        b=HPdQvmC/qb5CFhNEZjCXyS4hD6el/2lIHXKpVI91C1y2TlB8KZyW+6S4qCsmHsC3ef
         9y7D9Errdbc0o7ySfFFWtdEKkd/dIj/YcwaZTeEnIycf8a9yHtgGGGNajoap6cdpmq8l
         aXEDKbeZVor1E7so4IF4si8mxsfiSycavZUaIilX7dVR2eW3ruC+4ZRAdhjdA6iaz/YP
         5xZlASUgrqs2iKRTvqlD4wbE+KHXX7BvU6ZTTuRc2Nc2j2v2QQfYoE9Zh17XJDtbyIbf
         LWVl3kVpMyRvO4dGI/37UxP5ZdN95+EOEiufzK5H1i3+Wqs8LGU5SIm9CBNaOqUTNDC0
         turQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLLA9qnvakt6fnIAh2GYi2FdvijVYAPN2pulQkvw2Ybs2jsY6CQD46xepPnXcf+5nP4JctFtrh38Ye@vger.kernel.org
X-Gm-Message-State: AOJu0YzGkMhebEPq0AnStrmH6b55UFLX4R2ZpS39Iyxr99Evy7685e2L
	FTUI9hv/VWT+fzODGXQT4a7FIYTssB96Gyyyi1ObhnjuSK70ctJbrEwPJfAy4DSn
X-Gm-Gg: ASbGncuK5mUiMI5O9ZqrPQfla61oG3qGStiSdeH3CVunbu7ZOgSG1hfMyArDu2KejHp
	ICj7mnu3BULJ3+8KAfZ1i4F/L9TJD5C5Ia2tr4N1rgZOsf2dYnK5sfNoqFUKJUe+qYte46L71rW
	uPeK67asDycaZCGnXdkhz5voMox+fABun90OqgS2gKoHR9Firklk3sVot9na1Rf77TER1v05zk5
	iDO7CjxSaQdI3yZjdlAp7Rsxe6+0K/dHoT1/1N8R95n7xFZp7+jcN4EGevoE2ROMfY74ahY9zwq
	AdULiCJxKhXHk6M6ax2S6R+l0v7l+9O+yCHUh+CHmzgej7XGcRLUTeQ/lstweKq/3FuFUnTYqnp
	FYXCegl7Tt2ZttPuuPfWnpYJ00t4sp1dAP0rwMRXP3wCb0JFwz67e8zjTm5L+FjskTg1o+3Xr1+
	IHsYT2Yc/rfgly5IJ6lEu29/Ii1lXizqVlhoHjF1mtJsP3tpKR
X-Google-Smtp-Source: AGHT+IG15zJv6AVJhymV5gIjEqk74hklknkTSeTLm6FLUSxHFV4P4UnZbHP6AQiaBhWCoeOutU4jpg==
X-Received: by 2002:a05:6122:829f:b0:55a:be72:7588 with SMTP id 71dfb90a1353d-55b8d7bd4f1mr10096846e0c.11.1764343380831;
        Fri, 28 Nov 2025 07:23:00 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf4e1f4c2sm1995895e0c.2.2025.11.28.07.22.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 07:22:59 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-935241a7a0eso1175149241.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:22:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVCSoPKNR166Mja1LzuRj+DDCJeEA/aCPmE8t4psVxXS2kouDCRlMrGgUonoI171RJVpl7An2etYXMk@vger.kernel.org
X-Received: by 2002:a05:6102:54a6:b0:5de:736:71d9 with SMTP id
 ada2fe7eead31-5e1de273d4emr11133048137.28.1764343378522; Fri, 28 Nov 2025
 07:22:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119161434.595677-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251119161434.595677-14-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251119161434.595677-14-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 16:22:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVHMMtav5Ut3E9ZLCn8ctgKPrDNS1+VH_pcAE7g1wcDnA@mail.gmail.com>
X-Gm-Features: AWmQ_bl5PKL50rYW4UUIsJnuWXmjVe8JhNsQZw71eBLgtSZKnqiykuu2HAMxZ-s
Message-ID: <CAMuHMdVHMMtav5Ut3E9ZLCn8ctgKPrDNS1+VH_pcAE7g1wcDnA@mail.gmail.com>
Subject: Re: [PATCH v4 13/13] arm64: dts: renesas: r9a09g087: Add SPIs support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Nov 2025 at 17:16, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Add support for the four SPI peripherals on the Renesas RZ/N2H Soc.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

