Return-Path: <devicetree+bounces-262896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WB2yBSpbhGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:56:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56164F01DB
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07C6B305B977
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C8937106E;
	Thu,  5 Feb 2026 08:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G7kxUflh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC10356A2C
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281527; cv=pass; b=E4/Z12IjCJ6UTs4KjUbVBeKQmwO35klBkEdJ46vlDJ39mnIzToPfT1TcKtn25eKwmQK50QKM3QroBngbIwHXY0qTLBo4A8OfqRgkBSd6/2FxWnsuP+C4cj5BzSmqtrARK46b5dbI88QbXG8utGoWR8akTUVFkERD2yvPy6e1V00=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281527; c=relaxed/simple;
	bh=4A/MiiJVc8pEYXXHDijQAkXnz/x9Cb0tcMWrCvdhwds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QZWdAQoywDhPb54j4BeEpzW8PTCLTYRSLt3SKu/+3AXQozxnDzGqFLBUYMeaAwQV5bhuSQVseqjf2Bb5IGQwTGpRpT12803re8R+UfDq2Djw7GFMok16M7ghAKmvXHeIjQ/iTP8Ny7KolWMqOj5PK3wmJk01ra7Zv5C9K3LwB34=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G7kxUflh; arc=pass smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-126ea4e9694so1863861c88.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:52:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770281527; cv=none;
        d=google.com; s=arc-20240605;
        b=XowntTuNDfzl6K5eaH+3fosTQBXmEC6aOZoXPVGTb8uBzPxkmz54yuyM2WAIHb9av+
         CEiRayMRd84IMcmspuW+MuHvQfdqfupwJVDPWQk+2fUr6aiEhQPg5xtfQblgOYha5gz+
         wV5iTvHMXSWECRNQ0McXPg/ROxrTrDs0x61jnXo3E6cctBCwz0NPQTl2IrOWeL52WPWA
         v9zmV0XyNaJNusyS5EnzgntPDtS89+JPsFBUcZLsMi7Vo3qMXPLQig/EvW6dK1VM9toe
         C8id39KrFifCuHXIoae7BHM1n+QyjtE1fI6L/F7zm8aZfr1uaXKlrSQANvwFLWHnF8jg
         Px3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6Th4luOWj55mT0ARJ2IHQ1pwY+3KM6qdiQQaJT4jyhQ=;
        fh=qA9JJOPcaAIidj5BlYUjOcP0epa1p35F68EcdQQjHEE=;
        b=XQemHcIo9nCGzcWuLGMjhpMOJel7RWzLxduOC0qgJR+JFKn0yOYsXqCkLme61AqICa
         tSlpcR7xArrXHa+wIb2Gbj8q03yAvJf33PiMFVmyxLIMOKJ/ux7Y8voe2vzzO0Uf/VFl
         HRfgdcczXWZTXD9XuFzKB79I/xVlkr0UOIvEFTrM7tFZYwBL1zsWxWoJPk5W26bZT1K/
         n6N3VvYThBjYP2exLOlb7xnL66pKgbfhv2QetIulpINSdxt8ny3aDoNRuA0mi36UcewG
         EQZt+0MvqphzvrR2q7MNcoXm3EnQRDDl38uBjmREpsEz1WkL6zCHqIKhYtoE0xOmhXFe
         p8pA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770281527; x=1770886327; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Th4luOWj55mT0ARJ2IHQ1pwY+3KM6qdiQQaJT4jyhQ=;
        b=G7kxUflhI+1m3lHP33Lh+6ubmgxzEik/RCONFGxjGglJoBkpt7H8tiyPTCHZBQqkJ6
         P57TKmeDTB3wTxxRwr4Y2bvtYIibIMs69FNOi9r8VXYPlhdChZciKaJPXELsNdOFmk2A
         JlWWAbYYD/mGrppSqsdX5CJXycMCGiEkePpEiTtLu4QwlyIvAstDVSz0qjJUnX+ga1Dm
         7pKdeLGJySUkS92yqsh3DoBlOHQkUeehsRm0d2JxuKRb6k1hqwypO8JKxOqjGLXzj3oz
         rsFlVnPyHS2OfUdcspZ17qNNnI0+jR8RBAU0Ah3DrKmuV3nh/bh/cpPF157mtgra8ZVU
         Dogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281527; x=1770886327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6Th4luOWj55mT0ARJ2IHQ1pwY+3KM6qdiQQaJT4jyhQ=;
        b=nOJ0FScs9HsVWy/kw0mVVAt0K4jKMWw+32ci1tyKCpSQbwob10VKRpufUSkU+YfVyF
         BYgRg0itnAePHmEdbhzOcIwWUhOu1L6zXfpAMEPZz3RV+W3DiJcNdAFL3OaTtN/5IPeM
         6Dnp/XoD5F5MEJ79qpMzAGubIoLq0W/sfX2oAgoJwTdYFnwzPyz6RrZ/aAFRyNAAHtqZ
         Avra5RDzjWBOA7hIwHbi0IzXcKpbre61o5Gf92I0znyR38KenhIYBYwo5Wo55L9PNt0c
         ksDfDUpwXominCTQrCU8qAJkSwIaCwYz+IH5N436mekGnGwe2BEutREy8Zc2foGGdQJo
         BnPg==
X-Forwarded-Encrypted: i=1; AJvYcCUk2hFky8oiF4JHVRVOklv/elHoPAbTxtvXjabuWJOiHzUL7O29tb/Ilrz71kgMY6z2Y/WOJNi7uqjI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf80wuGp8L0i/Enim/Ke/Z+cSj5LbHKX3t0fajRdIR9g5t9x5X
	c9pwJpSRz0/ZGFa6PwL01tLm1VtHZqGpD3TQfTCKGWLj6kGCMyggBWxIR1kExGtV/GM3dzioubD
	udJIpwN+NgiWR7AqH2eVSSIzWGJzmGgw=
X-Gm-Gg: AZuq6aLW8QJmiYx0K+UIeUNuqMWNlgCO6vVn35YjX2xSNZsOQhCTrRnGrzT/5HuQzYm
	oO4A2/wGJCa6q9CE2n+K8mtlCBlQNtGY2juIlGRsmcdfZdFkLvDbZ9UQN0sFYSpdh+KmDMXKhzQ
	WUSNp0H3JbrIxIimnRi3jZLaWiZt2+ytsm+ysIh9uJNsSBo0I3OyNNXLd0YG1Sk1/YS6hILp6qw
	zLgDxSvyriCC+dhgurDKWgmJCWHD09xoPqvuoGQTDvMB/iK6FQ5ZWyh2SSeH7bIWbH1Ga+u
X-Received: by 2002:a05:7022:6b9b:b0:11b:b179:6e17 with SMTP id
 a92af1059eb24-126f47ce45dmr2584476c88.34.1770281526812; Thu, 05 Feb 2026
 00:52:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202080355.53061-1-Ashish.Yadav@infineon.com> <828c7197-e49a-4a93-8290-416a1b691f11@roeck-us.net>
In-Reply-To: <828c7197-e49a-4a93-8290-416a1b691f11@roeck-us.net>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Thu, 5 Feb 2026 14:21:55 +0530
X-Gm-Features: AZwV_QifYLLFJ5Sp9pPDY_5NHwOvmvcEgLQigAqeCRsc9MatWR7WTf1T3YP_zK8
Message-ID: <CAJKbuCY8Xc0HMfpVG1FCjW_-QE-Lm_qKVxFht7Dj=18XoGjwUA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add support for Infineon Digital Multi-phase
 Controllers XDPE1A2G5B/7B
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
	"Ashish.Yadav@infineon.com" <ashish.yadav@infineon.com>, devicetree@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-262896-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 56164F01DB
X-Rspamd-Action: no action

Hi Guenter,

Thank you for taking the time to review and provide feedback.
I appreciate your input and insights.
Please find my comments inline below.

Best Regards,
Ashish Yadav


On Mon, Feb 2, 2026 at 8:39=E2=80=AFPM Guenter Roeck <linux@roeck-us.net> w=
rote:
>
> On 2/2/26 00:03, ASHISH YADAV wrote:
> > From: Ashish Yadav <ashish.yadav@infineon.com>
> >
> > Hi ,
> >
> > These patches add support for Infineon Digital Multi-phase Controllers
> > XDPE1A2G5B and XDPE1A2G7B.
> >
> > XDPE1A2G5B controller supports Linear Data format for VOUT using VOUT_M=
ODE
> > command.
> > XDPE1A2G7B controller supports Linear and VID Data format for VOUT usin=
g
> > VOUT_MODE command.
> >
>
> This suggests that calling the identification code is not necessary for
> XDPE1A2G5B. Please modify the driver accordingly.
>
ACK, We will take care of this in the next release.



> Thanks,
> Guenter
>
> > In case of vid mode in XDPE1A2G7B controller, NVIDIA PWM VID vrm_versio=
n
> > is supported:
> > Vout =3D 5mV * (VID-1) + 195mV
> >
> > With Best Regards
> >     Ashish Yadav
> >
> > Ashish Yadav (2):
> >    dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
> >    hwmon:(pmbus/xdpe1a2g7b) Add support for xdpe1a2g5b/7b controllers
> >
> >   .../devicetree/bindings/trivial-devices.yaml  |   3 +
> >   drivers/hwmon/pmbus/Kconfig                   |   9 ++
> >   drivers/hwmon/pmbus/Makefile                  |   1 +
> >   drivers/hwmon/pmbus/pmbus.h                   |   2 +-
> >   drivers/hwmon/pmbus/pmbus_core.c              |   4 +
> >   drivers/hwmon/pmbus/xdpe1a2g7b.c              | 115 +++++++++++++++++=
+
> >   6 files changed, 133 insertions(+), 1 deletion(-)
> >   create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c
> >
>

