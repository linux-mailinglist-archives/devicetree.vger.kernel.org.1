Return-Path: <devicetree+bounces-268478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EkpITAqn2kOZQQAu9opvQ
	(envelope-from <devicetree+bounces-268478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:58:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A57719B142
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B86B8301461F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09BE93D9052;
	Wed, 25 Feb 2026 16:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mTOBOREj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F96C3D9046
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772038671; cv=none; b=G+LXNjdoPD3syIIU/R53dha8POiTbt0Cl6rjhhaBUNQjVQuVaz4s8DFmx8z+EIbwfD6aedElvTSIEj9lN0jM/eqpYv7wP0szXUksuFjBvZPYLvlpVIPGTCZoYSMY5IGVJjlXiSMggAJw7WUyodIQH4EoFnbqnLNZDYT4Q/ADvPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772038671; c=relaxed/simple;
	bh=Yps99FyS901aqnCa3oM35uRJ1n1Iu2fP9xlC6LYC6x8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=H7c/znswqm4jFFuU6NaidcQvci9y5ILVueRBLnCUnQ1vl5WBTP27Wa71PEvUBKMwHfI6V9cd/a/VAtTgn9QABohitvfrRlg+jK73f1JiD4EprvtJ5msMRYHXOp+KXMECBDtkeQGPU3/lT4EYwO26tRiGNBnMh4S+3WhXjwtCn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mTOBOREj; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48371bb515eso87563615e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772038669; x=1772643469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1UUJBaTxIHqlB8DyLOC24tnGMlzJ3zInPGqEl8rtHAA=;
        b=mTOBOREjXjHu4JDzV7GBa5dTVodgk2RQ4QwVnoHVDeWSPDBWu1L0rJH9heg6mqSQap
         lvMGm/dobtxX1PfOo9waM4JYSQHCgH6ZSNPM5rokWcqerOOB4PBzPm52ZvXkC1Q8f6pP
         G8GP9yXnzD0MuC4rZkvgAXQQIwK4wyFSEPIXUwzoXyhupac11xmXjRr0ijLZONQbvAJ+
         3UqWt1g5IeWnyY9rjnXFeRRYgsSTat0rPlUPNfs2kpfOPnugbsuNEyHc6IoXLXHGZZkm
         +nCcWuDcrouUanz1pAz+TQpzf10GoRO/59S1ZG06hqE0UlzXqUnAPiJkFhpsh9lcuXGI
         zW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772038669; x=1772643469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1UUJBaTxIHqlB8DyLOC24tnGMlzJ3zInPGqEl8rtHAA=;
        b=chd8GcMTQkkkoF3Ywsi76E6LTkIH3mobgehZp4C0nZmZCn8fS6I6brv4tO/02FZhWi
         k/H0DE4FesYmvAugtU4Qhv7nY/vAu6cFmn8QwFwgwbw4wfmrbfu9c9bSuMz9Bx4JnWrc
         phrMVpuUBIAWCzbw/p0NVeVrN8GVezYFVjYUJFbGsdTHvMTEjGLBpl4OSiIZ1GmJ5pBP
         cFqP5fbiZ8Trxpl5Iv+W/fr+UYr5REeHb0QRMzuAZPYSChxEDUS2xhSXTzUnrgvTo2xg
         y9GhbTTQlj6O29XGE7ElV8z3v+2ummfmgijmmoOg7H0gb6CKvvlGoaCm5NWHyRakfoE2
         vSBQ==
X-Gm-Message-State: AOJu0YyGFizvkZO7psbLRwUqSTGiqxlJxEXhbp9vmXqe+NdEqnPJR7m4
	laxOx4QrQ18DYLMu8Lve/Ba4UDWXEh2jBqu7OkCceckyvhti74FIwYtHIEdb6sbR
X-Gm-Gg: ATEYQzwAsGRLRobEjo4SjGv0pS5i6AfHbNLlfMSd441xUOrd/dQC0vDN9+jgSQ3iOis
	XbNfR+qX7a5tssj3q7kIIzsjS4+zuv7cLsokkWMr8JM7ZAwJzy0COnu02fNXINEjbSiEDGMJfyc
	Wlu4yjT92ZTdMmucq08NFqdPJfmod7fLcUTwUIwsGh15xEoxO0Jl6SX3Cp9Oxaw1xsDw33iapiH
	KbUFV0l9yQ9GmNPyDp5xqf++ShzEUXIpgzFEeGsjf30rVXZdo5kizO7SRutHkP1YHH1lUJgXugC
	KYBHmNHzWFHTQFnHtiwUknv8nsOQZZ3wB+m7/9x1oE0GaODbbFyMQjDkXmzyVaZ2149xtWg9TYg
	EzPlN99NzezqEc/jDIvVat107u4BX/imsAjUvZMHpRYhG9PPskFKOD1Mt5RA4m8walvscOKKlmj
	4K8KmEgQnskTG7h0uAVwge9nn2S5dTMT43e9KHFyfsXKU7dx+24UO9b5l2KYC9YVx6/WIBe0NOV
	MLikI58J5zCa4K6lw7sT98f/NBE
X-Received: by 2002:a05:600c:a016:b0:477:fcb:2256 with SMTP id 5b1f17b1804b1-483a962e470mr290674845e9.17.1772038668640;
        Wed, 25 Feb 2026 08:57:48 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-126-118.dynamic.telemach.net. [86.58.126.118])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd7141e4sm86300175e9.7.2026.02.25.08.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 08:57:48 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 wens@kernel.org
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org
Subject:
 Re: [PATCH 2/3] arm64: dts: allwinner: sun55i-a523: Add LED controller
Date: Wed, 25 Feb 2026 17:57:46 +0100
Message-ID: <2818809.mvXUDI8C0e@jernej-laptop>
In-Reply-To:
 <CAGb2v675r8idb3MHyaPD6XNrDF3na-rH2342ET0TUm1kGsT20w@mail.gmail.com>
References:
 <20260225160828.1687643-1-wens@kernel.org>
 <20260225160828.1687643-3-wens@kernel.org>
 <CAGb2v675r8idb3MHyaPD6XNrDF3na-rH2342ET0TUm1kGsT20w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268478-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.30.136.104:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.30.163.192:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.30.169.56:email]
X-Rspamd-Queue-Id: 2A57719B142
X-Rspamd-Action: no action

Dne sreda, 25. februar 2026 ob 17:14:51 Srednjeevropski standardni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> On Thu, Feb 26, 2026 at 12:08=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> w=
rote:
> >
> > The A523 SoC family features an LED controller that is identical to the
> > one found on previous SoCs.
> >
> > Add a device node for it, and one of the possible pinmux settings. This
> > setting is used on the Avaota A1.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> > ---
> >  .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 22 +++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm6=
4/boot/dts/allwinner/sun55i-a523.dtsi
> > index 09bd149bbf51..b8263e2872af 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> > @@ -170,6 +170,13 @@ i2s2_pi_pins: i2s2-pi-pins {
> >                                 bias-disable;
> >                         };
> >
> > +                       /omit-if-no-ref/
> > +                       ledc_ph_pin: ledc-ph-pin {
> > +                               pins =3D "PH19";
> > +                               function =3D "ledc";
> > +                               allwinner,pinmux =3D <5>;
> > +                       };
> > +
> >                         mmc0_pins: mmc0-pins {
> >                                 pins =3D "PF0" ,"PF1", "PF2", "PF3", "P=
=464", "PF5";
> >                                 allwinner,pinmux =3D <2>;
> > @@ -300,6 +307,21 @@ ccu: clock-controller@2001000 {
> >                         #reset-cells =3D <1>;
> >                 };
> >
> > +               ledc: led-controller@2008000 {
> > +                       compatible =3D "allwinner,sun55i-a523-ledc",
> > +                                    "allwinner,sun50i-a100-ledc";
> > +                       reg =3D <0x02008000 0x400>;
> > +                       interrupts =3D <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> > +                       clocks =3D <&ccu CLK_BUS_LEDC>, <&ccu CLK_LEDC>;
> > +                       clock-names =3D "bus", "mod";
> > +                       resets =3D <&ccu RST_BUS_LEDC>;
> > +                       dmas =3D <&dma 42>;
> > +                       dma-names =3D "tx";
> > +                       #address-cells =3D <1>;
> > +                       #size-cells =3D <0>;
> > +                       status =3D "disabled";
> > +               };
> > +
> >                 ths1: thermal-sensor@2009400 {
>=20
> I Forgot to rebase this patch before the thermal sensor one in my tree.
> I can fix this when applying, so please still review the patch.

Values are correct, so with a rebase this patch is:
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>=20
> ChenYu
>=20
> >                         compatible =3D "allwinner,sun55i-a523-ths1";
> >                         reg =3D <0x02009400 0x400>;
> > --
> > 2.47.3
> >
>=20





