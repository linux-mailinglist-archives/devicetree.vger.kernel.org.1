Return-Path: <devicetree+bounces-249148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FB4CD9844
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0B27304C939
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51F92BE65F;
	Tue, 23 Dec 2025 13:52:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2356283FD9
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766497955; cv=none; b=OkbweOru8ZXEIgg1ItTOyo4kVat+JZWgKctNCKjl8dxYLRuRstiCpv29Ipd48RgNUWvglpEQrwN0eQK465KFrJbQzsnVatkIi3bTRJdV3OuasET//+aU+VthUUhiXXmgNqpkhHSFhPyia1HQfmpzuPfit9SBj0oQp73uMBtGnUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766497955; c=relaxed/simple;
	bh=HEgGdhmdotY8pA3QPNPd/lQh91weDglMrwRgI5eq5nQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p5vmCwRXyIP/PfOrLsPNJ1anytcgOKo56OShyQNZeKZrYosNPq+55CP2qQamzknKY1zTB6dQXB4VgI1zAGehfJFbbVy7JD6krHH5RUp6dZbcwsiXMRo0RgfwExnFswcIk67WhaLk1mYyQVZmnPTZtasj+ycYu2fRCIYy7KKncgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b735487129fso890883766b.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:52:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766497951; x=1767102751;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qC2xhS+OSrcNsNoLm9/J2+cVx6ikhb0ktmaIYIIBhdU=;
        b=EBPmofbZc0dGnAmWlexpfQI3zZuRa6XHz+kQQ4c14+SRp5+Cs2FzsWqesd3t6ve6Vn
         PVCpsVZOryJaLw8r50KmNfyJABQt9/mkLYI8bfDW4GsX47COHmn/l3rqfXzELHKXxHPT
         4ITmFkSdOylqDn1eetKMOW6xyBgViyYB67FzljkPQR5q5/j1GoLBizkWnu+4qYaOz07M
         Z07gm1hw8k41t57TrtvokDNWUXu4owz4tHE3aBYLSdvMjMKE9eRNFkHRZnJ4XbjnoyTT
         6nsyU//0RLw9Z/H9cHq0YRwOuG+4V53k2ahr3cUhxlVMx+4e+DvGA9wMbpyLMRqKaA2I
         i0AA==
X-Forwarded-Encrypted: i=1; AJvYcCUTBu9UbKoN+66INIsbLBxoMDBOmt72WmHF3lsvMC2IAGptAvr9WEFq18B6XMwRfiezqsbnEUgIuhSw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1CeCIIXIaDpI+P9FCA8xPGGl4fWg0LHGkDmhgtiTwrFG6jybv
	Cj2iAHSea3iniAqeyKHu3wqmokn+1HCfMlhL0fCXrCu1NxabwoWbVfeZisDsF99yFlM=
X-Gm-Gg: AY/fxX72IrR1B/TwKbdzw2EqhvcEFLWAudpjzkFfa+MTVD2LCzQvxq2x5396Q7f6i1p
	oTC2xUoKZ7AkJy0A0iv/cnN28oxNh7kCC+mrufyThfu71IC+hg5ulUSATLKNEweiFUi2kIwfb+M
	QQjTLS3O5erUQfHMzw62+dWXjzBJo5IjFP3JmP6xAOEoQuWSkcLUvH6hiJ0znTRoQF2ohop2UxY
	RbGO8TKaWmrs5AMJ/H/XgYINwSEvz4EYZ9K9nuzv+v2g+V63TLVkc6C4k4Ab9F8icZvhAj/0aBl
	28fFQNZ7dbUInczjyEEWddYqu9xJ+ZtFcQ7Zboq70usEg6zhFNtAAF3JiKR6xGfjBO+dj6//SRa
	5o20tUW7g7umIbPYaLWo5flD8sfimywMLvPF0gnWxL5m32Vwq1kbmYmCYM6VNSYwx7TeXN02kP+
	NWzShvjNp5L3DtQ4SGNUw/FMKfgP3bF4UL6tru67AUxtcWuz68
X-Google-Smtp-Source: AGHT+IEztmZiigfBZKjjFIaqwLzHLHq+5vvtUSYnjFJgnDZHDPw4LwETZRNr+RsDzJzWGIlJD+AAiQ==
X-Received: by 2002:a17:907:8e95:b0:b76:7e90:713f with SMTP id a640c23a62f3a-b8036ece45amr1380206966b.10.1766497951185;
        Tue, 23 Dec 2025 05:52:31 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de142csm1388614066b.38.2025.12.23.05.52.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:52:29 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64b7318f1b0so5928208a12.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:52:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUQBiRhnBe4gsF/r+azuDhmLFgMQUymvbnX/3eO1NqwY435NVXApCEUMdlH4LfkO6o9buyn+HsWcmjN@vger.kernel.org
X-Received: by 2002:a05:6402:1474:b0:64b:588b:4375 with SMTP id
 4fb4d7f45d1cf-64b8eb62574mr14209973a12.2.1766497949108; Tue, 23 Dec 2025
 05:52:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201124911.572395-6-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201124911.572395-6-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:52:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWOC1Zzvd_sbSfBVUMTVwA9NWy3-4ziP=ePxppsbMwRZQ@mail.gmail.com>
X-Gm-Features: AQt7F2qacHBfJ6E_bDNJY66lCMzd1HRJB8iFpiFIGp6HnGDNM9Z8L7u2p_OLyUI
Message-ID: <CAMuHMdWOC1Zzvd_sbSfBVUMTVwA9NWy3-4ziP=ePxppsbMwRZQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: renesas: r9a09g077: add DMAC support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Dec 2025 at 13:53, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) SoC has three instances of the DMAC IP.
>
> Add support for them.
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

