Return-Path: <devicetree+bounces-271377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF8cB80nqWkL2gAAu9opvQ
	(envelope-from <devicetree+bounces-271377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:50:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDC820BE3F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2823301DEE6
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E1930CD95;
	Thu,  5 Mar 2026 06:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="BurLBf5T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073632F12AE
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772693450; cv=pass; b=MXkULkO+xLikBu5qUpeq86JxXnrAtVyb5FxIEOGN8bPK5/ZAZqY5oSOCN41qIXUSNPdDxLDCUlX9GY6Mlh4YZSO9x0JiHuY3UUTfmAFE4SsBc6d5yd5aBwQJe6zPE3aVhUqmDwAQhPQTQMT8k/jYT0kzXX+z5b4l7QIXq3ttWOo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772693450; c=relaxed/simple;
	bh=D9pFuGiE1FyuVIpCutKMURdXTdOEqOxGI8cN5kEriuQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qm+pTWPT3FTnujr3400ouCzpkVprYMaqnGjHB0F5pjwbvi62fAxgFCjXVLAKmxCnYUZDJ2iHKVlZGBRZXpFqPtvmRENCwqxBOHPi4ykAScwxC/fXAPyaV6Gu+n0ZcOOAFKMUTaf14JeRmnHxvrx2KHC0BzkI5FDSiZMxU6OX2eg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=gilmore.net.au; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=BurLBf5T; arc=pass smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gilmore.net.au
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-89a00e8dc04so37742566d6.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:50:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772693448; cv=none;
        d=google.com; s=arc-20240605;
        b=WptTMVNwZIfbYeSGCN2tIFznLUXxe7PY+KNXmOHWG9U1rd5iyasXQGULJfwZsL2CR6
         frZSr3c/R8pDy59wF0vayfrcOMWk8yJYVTglvYKCAKHhPr9j5qRrds3v1rTmLOd6mhWq
         J0qPdE5CYN+/FqZseLo9ilalB8RA7bL3DrJmmWHC2y3WPOwNkHOqdFms7eim+cL7sXkM
         i4g4vdKPN8tuBKqtMfI9tWwlrlXKK/zxg7p7RDvsAjP2ib8gxkvCDPnZ1jlkWkFiSO9W
         6AzhwUbi02VR6Xux6/fh7kY9OXO8nTKVRp8aXbrRI3yGOviW8T8JMI84xhsdPxubr/04
         Y4hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7xR/ODl/LLpv8qzPXxQC2I5D7gVivJZJFQgXB+mbpQQ=;
        fh=mCRIJMzqTOPqkVJ3LUl8TwAnniKcheLr7ZyVS8fIdRc=;
        b=WoXh2ii6RlreB5VUKmX2u4dm3VcphmPAdc/KgolZlw2x+hW10S3TnK7tW3eiUf3bli
         YbWCXucCRCJ+hytODwinlMOurdbK0+td6daVDcE1GnSjNYaONHtbaOhDNEVIbJqsE1tJ
         OnwE2SErbf7KHE5HCzSxpLxixCaXKhLnxfovhGpnBmYHzw6haAHWBp8oAlsR34aTXc82
         23L8jD6VpnqiL8r/TLxDoXOvfYF2q5FvRwRKzF8uz0+YUT6lvXcQQIJrHR22mahW3in6
         wX9P0it28aKNksgDTT2GTXTKWvDEGX/Rb7sf9o+LUWE1FSka9TwEYekTLPqjfwt3f5Bl
         L85w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772693448; x=1773298248; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xR/ODl/LLpv8qzPXxQC2I5D7gVivJZJFQgXB+mbpQQ=;
        b=BurLBf5TowwrJ6UbeCyF3HZy2ypwGE1ceOueFfdz4FPG00SGS4vx3OYW64QRO8+t3p
         6RQ1uOx2g3YSAjAIu5w3sDyFASAeeUWNXSs27ZBMoh6W59B7snnSaMN6pXLM6t8sSAaE
         fJWMqP/f2cNmw5cGqtrzGkwi7v5W6Tow/nRayK4HBpbivn3+WkCjAYwQTJIwLOy+AYHD
         W5cAR3ASglO0KREg6myhjB8/8u/tysRBuTKRwa/I0dCcRbSN6kCoxrfqqsA61IOpGiaw
         /flyB5AkqMzp10+b0fD6z3uKOmU902T3iXD1/s9D3gMfybNShpD5M6TdPJ/Og5Nz1O3P
         Pi9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772693448; x=1773298248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7xR/ODl/LLpv8qzPXxQC2I5D7gVivJZJFQgXB+mbpQQ=;
        b=LRgjflrvDX1jjlGwdrtmc8rDs6WyViRMLSntDOnl+ld/U5I4dN+gP6N+VEaqzt+DqT
         C3vYcJlWctrr2VEOF3Bw6Ug22XgI/RrapHN6NeLu/mAiw2/4kAh6iNdJQQ/B1ZCkz9z5
         pHOycXuytdAA3fMknchcA0vhiETIil6HVGCdKh3JX1j82LvdN4yfwhKoawW4rdb+8tod
         X0Ur4aqovBxOtHamkKAaLq2tsr7ongzXlfEakR2aVrRkXE2hQvaYmsdRDdCKTB/ilUMD
         vL878u4ahfoH73KNtlHzmcRK3P1XIhBAQ0V5/eDpYZxWXYFwX2wBXn9s/vaOc9sN3CY8
         pwlg==
X-Forwarded-Encrypted: i=1; AJvYcCWQpUleLc1x1NXArMe2I8Ec+rHMutRWaqWa1cnqqUDbvGdbv/5QVU14ghH8sBL7S3hg+p1/uUhWkS2W@vger.kernel.org
X-Gm-Message-State: AOJu0YxR2PbKXDwPFyHFAGJBB5cLK4vW+ieoxcwceMFPyFZDpP/Tazfs
	H4lc6XjTfaygd7Emq7/1RFlmLwxcPYpnrd+H1cvlAe0U0BWcc6Hu7y7fiDmkm1fgC2XG+Rx8MEZ
	85RmN1z5TB4VTsgmR/T1pXrEOO6QBmm3ASycIpGo41g==
X-Gm-Gg: ATEYQzz47qyBP1ATaYDr8ufKOADb8N18O/XMBA3h6jAw24gpZ85lnwfbo5fYFqRuKl1
	0ustRgM682/I3T1A29JoYqdqjRxFTuCuqYb0lNxzIbgGxW/b+mtIADUREvG+rB4W+xJ/JOQOex/
	rFRLcd3OUnQcjhvkYki5FAMb5yYXGA1bh3NAT02mghVjZBIor6Ns1NR0ldCOCwBZQRXqjg04g6l
	GfWcBDG31361BuWMp1BpsdoxbxEqAz3dKhi6S9zNVZQwwLkf32wCXIJOS2LZFyalSdlnq+WPBIf
	99HtFySt4fehTkxvaz3mKCOvqol5sZi9ARrdw4idaN1le2FLdY2XYD+uVgsAOqAgX6vysXI=
X-Received: by 2002:a05:6214:d89:b0:89a:90e:3a1b with SMTP id
 6a1803df08f44-89a19af74b3mr66467296d6.25.1772693447983; Wed, 04 Mar 2026
 22:50:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
 <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com> <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com>
In-Reply-To: <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Thu, 5 Mar 2026 00:50:36 -0600
X-Gm-Features: AaiRm53rLf9JFsOMPcs6Gcb8I80gESnZp0sJGMhEniGuj0Hsfu1GrQDeh7FJtCU
Message-ID: <CAABkxwtG2e5LpjS-sScmn46DY3eXd6tyNCc1oNHKqoaO+PVwuA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9FDC820BE3F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271377-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 9:45=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> wr=
ote:
>
> On Tue, Mar 3, 2026 at 1:43=E2=80=AFPM Dennis Gilmore <dennis@ausil.us> w=
rote:
> >
> > On Mon, Mar 2, 2026 at 11:57=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.co=
m> wrote:
> > >
> > > Hi Dennis,
> > >
> > > Some curiosities below,
> > >
> > > On Sat, Feb 28, 2026 at 2:54=E2=80=AFPM <dennis@ausil.us> wrote:
> > > <snip>
> > > > +
> > > > +       /* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> > > > +       /delete-node/ pwm-leds;
> > > <snip>
> > > > +
> > > > +       gpio-leds {
> > > > +               compatible =3D "gpio-leds";
> > > > +               pinctrl-names =3D "default";
> > > > +               pinctrl-0 =3D <&leds_rgb>;
> > > > +
> > > > +               blue-led {
> > > > +                       color =3D <LED_COLOR_ID_BLUE>;
> > > > +                       function =3D LED_FUNCTION_STATUS;
> > > > +                       gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> > > How come you decided gpio-leds instead of pwm-leds for this? GPIO1 C6
> > > is muxed with PWM15_IR_M2
> >
> > the downstream dts uses gpio-leds  the GPIO comes from the schematic
> It should be fine to upgrade to pwm-leds when adding into mainline.
> The Orange 5 Plus did.
> In the downstream DTS, they used gpio-led for the green led
> https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7=
b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus=
.dts#L31-L36
> But in the mainline kernel, it was converted to use pwm-led.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts?id=3D236d225e1ee72=
a28aa7c2b1e39894e4390bbf51c
>
> Jimmy

Is there a reason the blue led was not converted from GPIO to PWM, and
only the green led was?

Dennis

