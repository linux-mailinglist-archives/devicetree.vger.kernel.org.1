Return-Path: <devicetree+bounces-265485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKLFLr+tj2lsSgEAu9opvQ
	(envelope-from <devicetree+bounces-265485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 00:03:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 181FB139E6F
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 00:03:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AC07303AAAF
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1808F313E34;
	Fri, 13 Feb 2026 23:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bVVtRsbv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A869F30FF37
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 23:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771023805; cv=pass; b=rhCt1GOTUACLM88zyj6KDSf5Nc9/ER8JHkVRI43w0DdBTNOHEhmYYKITRqf/o8kmx9AdwRd0th1NlRdRfBJ+mOW2XGZXmPMWeDffDgP07MdpdanQdSyeM7ODixTFqm0b83KNlDQvrr6j2Pq8VdE+FNfhFpvTXsonoy01DSvkf70=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771023805; c=relaxed/simple;
	bh=nsLWbhocujPIby+Y77/y5XU2lpZLkqkJeeuvXXYu/EI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jWtRoem5+qazGU0JhxeZv1MyFuexVjF/5XA3dIo2Lk64P7UUyWs1oKkIT/HtIwmuW1f/oqtOSVGBUqUh/hIZzsOajKyAR41B0nl5HgLPuEcsBVwL2hHOg6k8SNAWJK4Dck5s4w451vmngBG2/BeVbwbOdFCYbN/ieAD2n31nH7g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bVVtRsbv; arc=pass smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-94acf9ce1b7so828330241.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:03:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771023802; cv=none;
        d=google.com; s=arc-20240605;
        b=LaleKkLbAAMF1zep7eK80AMhTw8zePp9YBf8QWskCKbeNleCLwq4+6of6inG4QqNtT
         ADH0hwSU5C1oGA/H7L6j76T85Ws/mYuyOsYIOHr7V5lhZn0VeTeCmIm2+jWwhTvV+hG3
         UnIfRbUU6mhugc28sP77WTTOaT3X8JMfi5z5n7BRAfAegEctnEri/Lf3aJsGwXGkZY6N
         izwNtLE1dJc0HfPTHBS+3r0ChH/0u+IWupgcyuNBPdDAq6M6zdxBEyZYZBUL65Od8mZp
         96Fl3/6SHeblUkHYbRk/ZnXVob8xJRYZ26lAUn/A3Or18uBszISq5w8EQJU+Zqi+8bBr
         0JMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nsLWbhocujPIby+Y77/y5XU2lpZLkqkJeeuvXXYu/EI=;
        fh=Xhv6EPH3j7X148raHV23k82ZguyeifZQySKHpg9vWAM=;
        b=kQmDg9ww6whU7oSja6vAEHGCLCwMYGjtiOFleDz4K8waVDgCDLTgRO5J3ElHFArf37
         9IuKnKABKFZWaQrJOeUKC0PDv2luMI/7TCN1rompfHZeXSL9P+TrRJ2cUrTNyqySGPJf
         QWPa5xpvHlllW7RaMtkRl4NfVGJEoL736qxHrHxKyOBuIYDs9ty72e3yhyzP9o+ESJuK
         +sUAfShcaAtclzv0wVYSj68XbM0Nr8y0BB9AoUK7JAcpXC3x4kMuWH72+2H5UxIrgGnK
         6KgDUm5cgfGJL+Y07+JQ0EaCNY1BJufIwLMBlouEXYPcwsOnZlXn/b3ToijyKs9QY1/U
         f1sw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771023802; x=1771628602; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nsLWbhocujPIby+Y77/y5XU2lpZLkqkJeeuvXXYu/EI=;
        b=bVVtRsbvl0n531PgO0c+7APddH8EGHKMhaQ6q/uZBqpoEooWd88payGu11UZDJ4rwt
         mrlSWeJRsK9p8/n52JFTc8+XMgUIWY9mSKYrRsL2QFh82irPU3R5dDePVb1p5O7zu2DT
         BAdGxrPuQjg+GWVX53cqf2umds2DkoKCdnecXOmXbHFmX4H0zuCJrOM3lvLNUrnaLyuL
         5zkII4mFbkD6XV+oQXdaAiDJOaGe3mlbjIwcW6ZyqrxeOtphBka7LvBUISQaq6Wi6fvD
         zOkI8TIEHf40FDL65tWhiWWxBPFJP6kJ9ghaw6TIhSI7dEzhspRe2lHRMSi5YG2JWGtt
         xF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771023802; x=1771628602;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nsLWbhocujPIby+Y77/y5XU2lpZLkqkJeeuvXXYu/EI=;
        b=qvrDJTJ7Q1eZgeniru3BuRgbz+Oh3j8kGOv+9bYkKSLyeJwaFsFAOh1cQUQFeh4UYT
         Juv1Vm3B1aSMWZdJB08Fjv+wo57oRLK6GRcJdFMGbRQHbOVtFRYLMrSWcujAlet7xEil
         IMu4DuPZGzFYYnSumMjHSN3PUpnCi168H2hwtTXhJ2yCC3UJhjiIJymmc9FVZEeI/g3v
         3oLY6bxC3oqhZCRB/ZbyQE/lAWzPLSv080UVV4o7uQY6Xiaf+vHgLiRC8LirTXhoGYqt
         PN5MQHxXJ9WcW4pMP7esjyOp52q0SuYYhH4SJBPs+ixsFIOpGulPaUuolDXzWYosjUqX
         X6qA==
X-Forwarded-Encrypted: i=1; AJvYcCUmfm6m+OXkAM8TToK5ydCmQaLN9XO+q4RAxmEQ8d1ZCX/nnyNV5g7gwHhuG7neRG0ZSMWPVhzt6uve@vger.kernel.org
X-Gm-Message-State: AOJu0YzcRp1b/I3BKVWm1p/ooVrFia8sIMWiIYUYhHKCie7qPIPZMu1G
	01dWO0Pf5vogu/bkNbzaqDsNz6PplHZ+GWlTf5MLe6h3yR6z96cw0Gi1tNKOYS9CJaiV1Ry7fza
	l5qjSp0A12BVuy5M+aHRZXV8Z4abvN8I=
X-Gm-Gg: AZuq6aKPnQoEJ1n0rAQVvcy+5ogioHfw04lk0lujtJXBUhxT52RSWy3R7WO6jgMzzNP
	fld39DlKvcTHr4ZEUJtPbbYsjRpWqtUBJE/AvCUUYpOf0P43SgfIcm7mOIVq661aKGFNVLMGl4p
	nDE1yBVi0hsOObASJ7XjF1UB/DaO2W0vTcTFbhhZvB3oQtrwAjsyBdOHjSmUASPDXj9aISJQUFT
	cMVkWRlGOFangtPSXhnR2SxSe3ZL7ywz8mnxerolwvKEWOHblojLawgWjCrViI/cIICxpP/PzoD
	84JFXCpOGoV2sXOlySx8anmDIZeXLVtcvyuBsmFRC3ceiPKp/3MwJ/S2sRZmm/UtTE0U
X-Received: by 2002:a05:6102:374b:b0:5ef:a8da:8b26 with SMTP id
 ada2fe7eead31-5fe1ae12ff4mr1443575137.27.1771023802482; Fri, 13 Feb 2026
 15:03:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <20260211081355.3028947-2-james.hilliard1@gmail.com> <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
 <34a9b531-4f53-47ee-861e-1b18ff1a5752@kernel.org> <CAMRc=MfwQ8J7eT_geEf7Kj230SOvmO-LDHz9a_YgfRY-QB5V8w@mail.gmail.com>
 <20260211214708.GA3947691-robh@kernel.org> <CADvTj4p-zHMrXW+GJstB2sKS-7Wij98JNJGoiPiYmaP5RHhNQg@mail.gmail.com>
 <9afa52c1-b7de-4ccb-9114-a142567d21af@kernel.org> <CADvTj4pmAXo+KUMyB0=+x3HRdUdUq=baj_pnoa44oxnugZuTOg@mail.gmail.com>
 <89c0dd51-fdd5-4368-b5f5-615143ffd166@kernel.org> <20260213092914.79790cb9@bootlin.com>
 <0c6c8063-3c8e-49ad-a5cf-f751b3d9f2f5@kernel.org>
In-Reply-To: <0c6c8063-3c8e-49ad-a5cf-f751b3d9f2f5@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Fri, 13 Feb 2026 16:03:11 -0700
X-Gm-Features: AaiRm51rMgFwshRgUDgbJwxkHp3aOfS5zWeVg5SiHcTx9ptmCGCq4_T0-0zgTLo
Message-ID: <CADvTj4qSJEfCTAPHYB0jVc2LPN8cTjSGt1FASoV_+RSDZtsnUQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: aggregator: add gpio-aggregator DT compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265485-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 181FB139E6F
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 1:49=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 13/02/2026 09:29, Herve Codina wrote:
> > Hi all,
> >
> > On Fri, 13 Feb 2026 08:31:21 +0100
> > Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> >>>
> >>> Or is the issue just with the name of the compatible I used being
> >>> called "gpio-aggregator"?
> >>
> >> No, the issue is that there is no hardware you are trying represent in=
 DTS.
> >
> > Except if you have a piece of hardware that invert the gpio line.
> >
> > In that case you need to set GPIO_ACTIVE_LOW somewhere.
> >
> > The aggregator allows to describe this line inverter.
>
> Of course. And then you could touch that piece of hardware and use it as
> an argument here, where I asked show me the piece of hardware being
> described.
>
> Anyway, we encode the inverters in the final GPIO flags.
>
> >
> > Of course, if the gpio is connected to a hardware component handled by =
the
> > kernel, the DT node describing this hardware can set the flag.
> >
> > The issue is for GPIOs that are just GPIOs and should by a user-space
> > application as GPIOs.
> >
> > Some bindings exist for GPIO and do not describe the hardware but the
> > feature. For instance:
> > https://elixir.bootlin.com/linux/v6.18/source/Documentation/devicetree/=
bindings/trigger-source/gpio-trigger.yaml
> > https://elixir.bootlin.com/linux/v6.18/source/Documentation/devicetree/=
bindings/power/reset/gpio-poweroff.yaml
> > https://elixir.bootlin.com/linux/v6.18/source/Documentation/devicetree/=
bindings/power/reset/gpio-restart.yaml
> >
> > Can we consider the gpio-aggregator describing the wires that should be
> > grouped together.
>
> No, because the grouping depends on user-space choice (as explained by
> the author).

More like the grouping would be used to better represent the actual
physical connectors to userspace. I'm not really sure why this would
be so much a user-space choice as the grouping would be aligned
with the physical hardware connections still.

>
> >
> > Industrial board can have some GPIOs grouped together and used as input=
s or
> > ouputs of this industrial board.
> >
> > As output they command an external system. As input, they get feedback =
from
> > this system.
> >
> > gpio-aggregator describes those lines.
> >
> > In that sense, it describes hardware.
> > Maybe the "gpio-aggregator" name doesn't reflect that and a compatible =
such as
> > "gpio-equipment" could make sense.
>
> What is a "GPIO grouped together"? The moment such grouping does not
> depend on hardware characteristics, it's the moment it is purely
> arbitrary choice thus not suitable for DT.

The groupings would be things like the physical ribbon cable connectors
the peripheral boards plug into for my case. So it would still depend on
the hardware characteristics(i.e. the line to ribbon cable connector routin=
g
and such for the control card subvariant).

I came up with another approach(which could also be used in
combination with an aggregator approach or independently) to better
describe and configure the GPIO lines for use by userspace as well:
https://lore.kernel.org/linux-gpio/20260213223204.2415507-1-james.hilliard1=
@gmail.com/

> Comparison to gpio-restart where you have actual component, receiving a
> fixed line and then doing restart is not appropriate.
>
>
> Best regards,
> Krzysztof

