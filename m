Return-Path: <devicetree+bounces-254700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B02D1B079
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBCA2302AAD5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF913587CA;
	Tue, 13 Jan 2026 19:26:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com [209.85.222.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD3830FC12
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332361; cv=none; b=CMjK9gOdzYqDLA1rORG4Fl8X4Loy0epEpYcwWO3/2M5Dc4SUwZTLsrdkzdpTeD1D4hUboYbymXQDpwHoOfz7fEo3GQlN+lw3ik39Z72/SWwVD4K/XxqpvcUH9mfANVqPGphBIc0zf2/Yjuy/4P6xhulMpI3gzJDNUBC4SwAzZIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332361; c=relaxed/simple;
	bh=3ZrwEeBiZv2/57vkV16rP297m0IfYLbOdaycMnUgZvA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LNLU1Bg1YhJ1bjsEoP1pWccbdjV0A5Wd9ZsNSsEU4Cb4ykwoBwBZCAQJoVK87zKRPjJsw24xSDTaesIXlgwCtHd1W0efCJ2rdw/ywsJE50bmcEsMGBCC6CCr+syzYlOhd/oVYWMn4xnHAU/mCBG+by1a2KaKG/fs/MUapsiE3kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f68.google.com with SMTP id a1e0cc1a2514c-9412cb281acso2611316241.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:26:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768332359; x=1768937159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lGxD9M4RQU4+hrSLm2mQz70yQm9QgTmeWCOFRtIxY9c=;
        b=vd3gXAT6SEkQo7uP8iXreFBxeYBpDwFqR2+mMlBx1fOsSFIJOsmorGkULgW18vxBdj
         VG7Mt+2qlsH+YRbi7pTgvqwvOzcvu/b31PLMAUbw2zV2yZdmtZfHXIL55Yzz3BL7zeFm
         8qptc1O++8Aw2NaF3Lj5o0qojvt+7XvVPm5sba/im2FBMQ2eWCJCrHwhiXI1JiqZiDj+
         jcQEXcWP9Ra0eRYpRGRjmHC0Pu+FTI/5gOvfdexKRs19dgMPFJGhhy97Lz8VSXLmCrLy
         E2vK4QF61QIE8iAxHI2jJ9gPIcgQpwjSeGeM7+zEZKkG7MgnZolFsh9Y7bZDmqITKEIu
         72kA==
X-Forwarded-Encrypted: i=1; AJvYcCW5cvusPn1jmlYTM0ygpqaDq0C2EF7rb39OoECnDtcFMeJyDHPLc2zhBZ5OdUoB/BYgnr6Lg3fVfZb9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1h5nTzaRuk8VjyjOMYBv14LyqT18NZNMKXFKSTamJMDX0tsTx
	+NSI/7vNNECoqmaQrG+3uXDOI0BRVoziljUsdsf2us8BkLqcFp8yDYAR7JvBRFApYps=
X-Gm-Gg: AY/fxX7Bcp0T3UhH2OFpRAf5dWJektJlnQdr7+ZfTJ/wvB8gML36xmwvYyKcQs5uLWb
	77aSEJQNfwc2cYMCJi4tDjEA33RAXhJQjYpJgKioeI+0SRes1QGkFG1peaojyB2BeP9DuGqEiDl
	07m6jDQYWVlApbqVdSxBXGY1sJy1SMLbQymB+vq5uPW+5A5kpJUZkociS9P/y8mHTdl78ZzBAjL
	kbM5S4NCe1xSMUeWivr0yH7BYWeKn2D1WhtxO4lD0mJHvrBamahXzq8HZBcUCLYK1Lrd+816tPc
	WbzQA4i3ui6Ue24kCjF0xbbXZ43xbbDp7ibStmeUnamBqvlFVbliUkyHhTiO2idP0Ts6UukOUKQ
	AclE4Ke3AqnrszLu62QOoWTsDvhRUIGVOJmwcCcryWXAXRpgNguqWKUuvzsKJSoFHv23tyWKV11
	hVDM6QMrSb6yLu0RsEZYh/6M+bIulSw7VyUR74QLFdzc7QZMhH5YzL
X-Received: by 2002:a05:6102:3f09:b0:5db:3111:9330 with SMTP id ada2fe7eead31-5f17f58e481mr151874137.27.1768332359287;
        Tue, 13 Jan 2026 11:25:59 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772af325sm21526614137.10.2026.01.13.11.25.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 11:25:58 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-5635e6b80easo1597037e0c.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:25:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX8whBJhjsz61kh2MMZb69gOMMohJk4B+PpWvZhrd9Ok4XESiKYs4t7qbeHRzIgFtNT3nVxzDTslF+s@vger.kernel.org
X-Received: by 2002:a05:6122:7cd:b0:563:4a93:a5f4 with SMTP id
 71dfb90a1353d-563a091550dmr145996e0c.4.1768332358235; Tue, 13 Jan 2026
 11:25:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109125128.2474156-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260109125128.2474156-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260111-poetic-dark-butterfly-97993f@quoll> <CA+V-a8un48Gfqg-K6YToxUgnZawOcb-nQHsBcOfHdpAR7_Uu4Q@mail.gmail.com>
 <dd053cff-af8f-4378-9550-9f99f91cea20@kernel.org> <CA+V-a8tZAUoPxp7NanALW5HmVLMQAprcDXPME5povLT6nH6bTw@mail.gmail.com>
In-Reply-To: <CA+V-a8tZAUoPxp7NanALW5HmVLMQAprcDXPME5povLT6nH6bTw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Jan 2026 20:25:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUrSUeOFvyX-RhjFV8HfiGtvOvBT-Wd328C4P-j-N0fHw@mail.gmail.com>
X-Gm-Features: AZwV_Qi5VDWrgJaVOTjXTW8AVFjCwxmek62R9X6THbS3twvGucCrR-aVI1pn-1o
Message-ID: <CAMuHMdUrSUeOFvyX-RhjFV8HfiGtvOvBT-Wd328C4P-j-N0fHw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: can: renesas,rcar-canfd: Document
 RZ/T2H and RZ/N2H SoCs
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 12 Jan 2026 at 18:22, Lad, Prabhakar <prabhakar.csengg@gmail.com> w=
rote:
> On Mon, Jan 12, 2026 at 4:30=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> > On 12/01/2026 15:04, Lad, Prabhakar wrote:
> > >   - if:
> > >       properties:
> > >         compatible:
> > >           contains:
> > >             # SoCs WITH resets but WITHOUT reset-names
> > >             enum:
> > >               - renesas,rcar-gen3-canfd
> > >               - renesas,rcar-gen4-canfd
> > >     then:
> > >       required:
> > >         - resets
> > >       properties:
> > >         reset-names: false
> > >
> >
> > Yes, although now I wonder why do you have such case... There are no
> > benefits in disallowing reset-names, even for single entries.

Except that I have no idea which of the two names I should use in
case of renesas,rcar-gen3-canfd and renesas,rcar-gen4-canfd, as
the hardware documentation doesn't explain that?  AFAIU it is just
a single, common reset for the whole block...

> Ok, I will update the resets property in patch 1/4 as below. Would you
> prefer reset-names as a required property for single resets?
>
>   reset-names:
>     minItems: 1
>     maxItems: 2
>     items:
>       enum:
>         - rstp_n
>         - rstc_n

I.e. which one should I pick?
<grin>Obviously the first, so dtbs_check succeeds?</grin>

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

