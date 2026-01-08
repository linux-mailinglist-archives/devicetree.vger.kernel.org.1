Return-Path: <devicetree+bounces-252925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22606D04B6A
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:08:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E375E3068CFD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925F5298CB2;
	Thu,  8 Jan 2026 17:02:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com [209.85.221.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE20B29AAF7
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891718; cv=none; b=L9ri4O3fxIYx6WLqT4spTgQfE0sOtElR5Y0Q2UANnXaeXNI3d5PMewKAjlU0XLvITazRjAyGDvqaqSvnap7EXnsCy0h1BTjAPXG208Ylhpzx/Q2dgPB6JcH4LBXfWQQ7KdzagsEhUaHJIffFMTN7/GRZaL4wHpxMogU1bCCvprE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891718; c=relaxed/simple;
	bh=l/hatv9g6YZh7Jedhcdf7GctsSHL9xJ16ZgcVa0bhbg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EHBgxR12hvwCFz2eZvmqcFbDRIfC4XW3UF8am9rXFenpamENSpVSc1hgcjBoOpGcVipMUg+lnmMQOI/NEhnTtfZFHQjh+eoeJ13I/Fq1zbhWnC3vYBegHxGwxtModA7POqw0GmhMgX+WAxgEN7ev8iCzJ4M7nhr0opKSfn96iQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f193.google.com with SMTP id 71dfb90a1353d-5598b58d816so2492320e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:01:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891714; x=1768496514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3co9hJKBOyWFmQg9PlWXAOMJY35oVbLhgGmADuHFV00=;
        b=t4PjWL9A4vxF0gPuinnGTlYKTkqLYEWAm84Cy+CuQqZARu47Ndl1GewiJRbYoh7Itw
         An9wUi3noTJfE+NPHhBuoYPseTciPIiNCAKI2uRs3sDOXGpTS6GTciLK80a6rDKZYv7P
         4CbH7LzNpMGjBNuWh8pq8t4XFaB2FFlV7bNbyNbuHWqMe8W/2NFBzpxcnICzJ6H7cPRB
         6npuzz/uWBez3vmJliFW8DHJvKVuKOdkGUZDl7PY216X911KhZuQRQDOvi+GT8cciAIc
         c87T5tKpdI3mnmeNS5TZO2H34pZhr2ah4VfJK5MHu4AEGW8FR+mZMIjFPWCn9VcsFsHm
         S+Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUvPaEp6U0TOQhBEgb4xH8lrs2eeRzMcR7Z7XEoG9pUl2ZZ4NYiQeCJQVcsulDiyYC0ZUNyfX0STMOc@vger.kernel.org
X-Gm-Message-State: AOJu0YxCehpg1gwJFEoRI2hKohlkymjr7+GhBCp79tjx/1JxuVO/mC16
	zEHFooA7zkXdBwgbMRE49J7k/EHmPhnqR//pJ92ViXxoKm2JQrY5koFUf+1JW8k0svQ=
X-Gm-Gg: AY/fxX7sBfBIeuJPlQGnGMD1AHnGn9kY1y3GccZ1NeWeM3rYSA6Ymnd/hZ6mtFogC31
	FKBnkCARJVSLyMVFINwAC95XK3ZTMGUPDNZriggy6Tn9Cy06DkRftehToGux20YXGF1TifZ0ATZ
	HCYUq6Moxo3B/Bksh/jWy8rLjJ61skGioC/HriqVSTo6IDrk/OzONJN6BnReAIT8s1oeRhr8MSw
	EsW2SqN0NIClRm/z10fsiBtPdmTkoJnkdiacJbmFN1GV8FZUgW1mrymU2l05SCtaEdy0UziZBDQ
	69am8z7n2AN9mvM3PPVvR8CtFDf5v5wAwX8la0ZT1FEUSu/GkQhRC3tIyq/emc++r061CwVERCS
	Cse/7uWM1QbQI0T2crPGiqS20am9WE4v2BQNzvoHSk+LGn6UyOl9/dAqwd9LHS0Oh+eJzoDEGzf
	OTuoqQBG8X2RXSOpukzpO7qL+rntJrmmpF8x2CLCWEOfIwZxxBb0JB
X-Google-Smtp-Source: AGHT+IGIT81ACPY6BDRYL7uwf/3uHDViq93XxkarUWY811Dd24Q9l1mx1fjZXjLx8jsEoXQTJ+Mepg==
X-Received: by 2002:a05:6122:208a:b0:559:6960:be0d with SMTP id 71dfb90a1353d-56347fd744dmr2381409e0c.13.1767891705654;
        Thu, 08 Jan 2026 09:01:45 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944123dd29bsm6408924241.6.2026.01.08.09.01.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:01:45 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5598b58d816so2492121e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:01:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZvPsZtSlwHwkA3hLKzk7nM+OZDHchdZxTd2pvyMGb9ccvw62tamOzz9htRvtJwpNUVli4dESLv0qq@vger.kernel.org
X-Received: by 2002:a05:6122:d26:b0:559:ef6b:1efb with SMTP id
 71dfb90a1353d-56347fd756dmr2483847e0c.11.1767891705232; Thu, 08 Jan 2026
 09:01:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 18:01:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWg7Txe1fm0XOaT9FB0pDq0SehoXHWrx2g=j26g80vnHQ@mail.gmail.com>
X-Gm-Features: AQt7F2rYWZ2Ei2cs0E8SVTZUjMSM-px_qYqN_ex3GD4Ez2BxiCY01zZUOkvmZgc
Message-ID: <CAMuHMdWg7Txe1fm0XOaT9FB0pDq0SehoXHWrx2g=j26g80vnHQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: pinctrl: renesas,r9a09g077-pinctrl:
 Document GPIO IRQ
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Fri, 5 Dec 2025 at 16:03, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and Renesas RZ/N2H (R9A09G087) SoCs have
> IRQ-capable pins handled by the ICU, which forwards them to the GIC.
>
> The ICU supports 16 IRQ lines, the pins map to these lines arbitrarily,
> and the mapping is not configurable.
>
> Document the required properties to handle GPIO IRQ.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> V2:
>  * drop interrupt-controller and #interrupt-cells from required to keep
>    compatibility

We can make these required once all pieces are upstream.
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-pinctrl for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

