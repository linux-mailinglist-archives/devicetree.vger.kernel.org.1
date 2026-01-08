Return-Path: <devicetree+bounces-252913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AEED05277
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C0D73192EC5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 16:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ECA22DC774;
	Thu,  8 Jan 2026 16:50:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8852DB799
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 16:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891044; cv=none; b=l/P0o7fiT1UxyVYmaKlzGOc3mX6xS+P2xXKwe3wZVBnWeNtForAAUKESVR8InBaPIDaGUktcnfemIMqonBv7Tel3pCRlAjufvpdIlTpeoI/1qrUuDYXjpKCzhmUP5g53WrCK3KLIawUuC3RKzZxbIM7Omlk9LaodDypBhf4dPpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891044; c=relaxed/simple;
	bh=7/Taf5CwvaYEOCNOJhdbHbsMsm1VSLNTMWyH4dTVXlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QYTmv1IHOBi0a3XNYD/61pJItDCPqL69Rh6FhxjhTvNUn25V6vwsyiUtKm4WY+WjyfC+bszaFcPLZWXxVlFlBE1po4hc6LST9mySezjobnWIIy59uvSRNyYYdPMWU6KK3cYP6swyBc+6EmCIwbk2Fh5ymw7YmMX3aXPhapsYIjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9412edb5defso952371241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:50:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891040; x=1768495840;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vjpM9ymjUwivlVyTiA/MPU+wu4L18L3+Ii3s1slBXsE=;
        b=G6PtRjs6NhctsykICRF1onx2u9nNCub0I/knJ02a+j4qICFi33niPgVwy9kVQn+eTG
         FeUxmPuQjP9wLp32MzzMRrQinxzBI7WIFZqTZjSKONJ2WGG9jR7CRVREZ6qzTMOQtbDw
         1qneYPN4JdLsAO0fQPgp7j/6qtR42un+jJTwS5zqN04vh1Cq3QLl1B/lMF8Zrmiz8h2m
         celuxIFQOJ8z2LQhCjKcoMEn3k70br+HW5/BrQr1IVdC67O3343s//9ivxGqu6tbWC5h
         nAexaZZrI4JLgHDzIVRttomyYSqnx3APkKNOt6TUbxI9ABhfmhPTD5ntzLDK0JN3L5bY
         QBXA==
X-Forwarded-Encrypted: i=1; AJvYcCX6obGnCENjYMyaELB8KmqK0hEy53PkmEpDmaXWNAW8QORphFzwjfGuPpur8hC7oDIlgQ2UKFAY7Uoj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg0SyhPTPnqHPYwD1Q7axPmf6Ygp3UhkuxZsr1sa/X/SEzyXDy
	slpx5vr+jGJfpIEwUgV4mrFVzFf+6l7S2yLMWkcxeFEsyBbV49mgxWX9QsGUMrPk
X-Gm-Gg: AY/fxX5c3tEDQLxkqtsq6jZEm550ySP5iIvpxczCQxihXj0j0sxwchQEYK2dnoSC6Bu
	NSnS6jklPyZ8mfiaJam1aaMOx9/B2ZhTmAKQEpTj7vhnlxgvPLVRH1sOFZQ8OM6mZmJ+0fIOlTI
	8lHMbwO9aQxKIRG5u83z+fu7Le/xFX95S8CR4dJrbWtBi/6TUmx5FrUKEf0wNdP16hvCcbCINBU
	B5fHe8QJlIcLO8OnbA0y09G19WqL16Llx01natySnzxDcw8U2T9Pc378dcP/3bqRdwyMkPLjO3U
	RqaSZkZ554aciYWJQgBc5oRuv7YqvWTHdgNqzXXVleSuxMJ0BmmQTkZaYBOISgcUA0CMmxVYPOB
	lFpBV4tl3x+Kxnkz/XQAvQECbl/fBnSnpd6+2pa4zTDf1d7m76EfPuOu3uJAtp9mBA1i3yQKpiq
	liWrcTtQG6lmL92BWnpVpR+X+Sddr61T5oDo2Ctsf2d3j6s4/a
X-Google-Smtp-Source: AGHT+IGBDSjd00uzEhs6lj7u3KlsiP5EsN1C/xEV7l+jAojoREUzfsuHvhYBNvMAFznlnbHI+Lg2Wg==
X-Received: by 2002:a05:6102:604d:b0:5ed:77d:fd6c with SMTP id ada2fe7eead31-5ed077dff39mr1982325137.21.1767891039828;
        Thu, 08 Jan 2026 08:50:39 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a3f78d8sm6748737e0c.10.2026.01.08.08.50.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 08:50:39 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93f5774571eso1092421241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:50:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWrqqAlatAf4mywyxeOoToDLn8gNdLhBCBF1Q0kFd4ETkcX053c4DIV1POTkoeNTIlwpTLMGCI7O+Ou@vger.kernel.org
X-Received: by 2002:a05:6102:3349:b0:5db:ebb4:fdcf with SMTP id
 ada2fe7eead31-5ecb687b063mr2554646137.17.1767891039245; Thu, 08 Jan 2026
 08:50:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 17:50:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXTKVzB1LhOp2jHima+_ZWHCZZYqrExpLjfuF2KV3QZmg@mail.gmail.com>
X-Gm-Features: AQt7F2qEe-jh4MC04jZgvw61EVfKsP_55-29gu7PCGMB9-MBqtO4ZeaLC4gjeeY
Message-ID: <CAMuHMdXTKVzB1LhOp2jHima+_ZWHCZZYqrExpLjfuF2KV3QZmg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] pinctrl: renesas: rzt2h: move GPIO enable/disable
 into separate function
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Dec 2025 at 16:03, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> GPIO is enabled or disabled in multiple places, simplify code by moving
> this logic into a separate function.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-pinctrl for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

