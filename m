Return-Path: <devicetree+bounces-248962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29900CD7BF9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 02:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A952308BB4D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 01:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3C6423B632;
	Tue, 23 Dec 2025 01:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PlcCk+lb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607CA239E8B
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766454555; cv=none; b=igkoVbfMebFUMRX9iy1YHS7aJLCzeoxTDN0rbdEx8588ac7fqHwA2QhNMvA+fgOUlFyu3O2Ly7j6niECHaG9jgokaYKxRvHHfCFE8PeMIMD7L38xaShZAqQDKjjD5Ob2q78v2pnpbXGmW1ncM2wNl0jnhX7bwjEdXnShit285MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766454555; c=relaxed/simple;
	bh=xPRUOkFrztT+sWBbOS6v8oIweyWrFzAKVGpfa5Wuc4k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D4j7jnqLrHDhLSJNe8UVQNVNcpz+rKpmFssZKJok7l0Xc7s668H2HJWMeM19ZZtfAnz4C55fYrUjmhx2mY3Q+eF/p7Juh2JqvHU3QyVvNDUJDxn6oF/vtcFBLck4nzWAdsZHtQXBf1BxUOx3CDPNzNxvJFCX3Nq64/SYTpx1dGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PlcCk+lb; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55fe7eb1ad1so3420091e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766454553; x=1767059353; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YF2+2OBqACOiCo6iSElhd5mEow7KLbkSPjlb63HoSsQ=;
        b=PlcCk+lbNn5LhY+DiVGRW14teUtO3UtOU70oTd016c/iYYOwS/fepbT8EpQRcJgvbm
         fJkk5WijrLpm1mJJtAkJOiFDqxavC/uu3DFn5taHrHPvfKwe03qM1/wiaLOFxNAsshqA
         U/KUTle6EJc8iqDAWLEtW2OpBvYmCo+pRL3mEfjouz1DCsiGmUPCCwc/vNpnrAuOYlo2
         //rIqoUl/QxJhtXoU/FxHheIah2Y0cQC9LRQUMZDRUo5dSn8+r1Lt8rVyy1RPwyt+Ipi
         y0guXIMTVDEF+7Di229EP1vQSEt1ZT25BpWdPtA+avPUA+dF880jklzPVFvzH1ZbKpZE
         7wRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766454553; x=1767059353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YF2+2OBqACOiCo6iSElhd5mEow7KLbkSPjlb63HoSsQ=;
        b=bC6f7iPSuiJhK3xicPwm3epOimTXtoIV/hXFeNEqj87rMI/PIzMAjGMp0bPtPCmfDG
         CuHYRRm4TzLIX6UYUR9G201f4lBbhoREtJkQyNBaGtUlu3t3bqh+lGOaXBdbFK3FkodE
         Ty+KJhxfjt207BBIyXhWIIubzLiCsQGxc7ob4Uwml/NCNP15+ntSVis1FatkCzWLZhbr
         iUcV1V7c1RLuMWKGiVTB1MCmYrSgrsqhL7BkUXRW2EtjsUrLx8LKUXfayku74jbLQY49
         otyIbS1KnF7K/6vG2/roAjGooj9kU7g2iaQJvqGbzVX8WYHjA9u2v2Fpelh7DIEmYoN+
         84CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUghqz2kKU4ms47Do5xIO1zzJecQpNZnrT43bzK4S1w8V17CSmuAj1+e8hIirtCY3HLk1Mk5et1koY4@vger.kernel.org
X-Gm-Message-State: AOJu0YyQZwVihmrbuLo2z2Yy7Sj4Is9TReNIW066BuAxoBRzc9c4p5av
	cA1dN0PbSHevICUSd7Ml25j3quGFSpe7er1TJX2TRZLBH4vKbtBiuXyCSKUZHlZUfoauSOdAV/X
	CHX2145WEmj0Pprlc8rhWzc2ausq8ncM=
X-Gm-Gg: AY/fxX4HwwVj58uuAWnI/0tMk0Q3luvHOhODIfiTPblJe3eg/UkhFjkhgXJbNxeLBSD
	By3fQoTq2+4lsEzv0r6B5AAq0pSc2015qYZvugq4/Uw0oPTWc6XfNeenTcjthdwQc8sWhELZ0zK
	09Zdqsri7DNfAob0DgGcr/GMJY/5gIU9k5d29lEhhwepEehu3D0ZfaKWM8yWqaDTX2FwjeGDroM
	/3cX9P6VHA6Az+xjFssYmX0/fkhjrvP8Z9B/roOb84BelU3GYxhcWQrLmjXwEN5o6bqMEsD
X-Google-Smtp-Source: AGHT+IHBHq5niwB64zOQi9Ir1RYdcuhYIiAiMknQ60wGRGAecKNEstEn4F6joAjyRSSk+aJXifaYWR8qfB82RD9k+ME=
X-Received: by 2002:a05:6122:318f:b0:559:83be:69c5 with SMTP id
 71dfb90a1353d-5615be07d05mr3706682e0c.10.1766454553289; Mon, 22 Dec 2025
 17:49:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com> <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch>
In-Reply-To: <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch>
From: =?UTF-8?B?6Kyd5pS/5ZCJ?= <kylehsieh1995@gmail.com>
Date: Tue, 23 Dec 2025 09:49:02 +0800
X-Gm-Features: AQt7F2p2os6FavK-DkfJbJKZMaXhN9nltNSiU8Gza--K1TKLdY1MJx6HBIjggPA
Message-ID: <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 22, 2025 at 5:30=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +&mdio0 {
> > +     status =3D "okay";
> > +};
> > +
> > +&mac2 {
> > +     status =3D "okay";
> > +     phy-mode =3D "rmii";
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_rmii3_default>;
> > +     fixed-link {
> > +             speed =3D <100>;
> > +             full-duplex;
> > +     };
> > +};
>
> That is an odd combination. You enable the MDIO bus, but don't have
> any PHYs on it, no phandles pointing to it. And you have this
> fixed-link. It makes me think you have an Ethernet switch on the bus,
> and this connects to it?
Thanks for the clarification.
Yes, there is an Ethernet switch in the design.
The MAC is connected to the switch via RMII using a fixed-link
configuration.
However, the MDIO bus is not connected to the switch and is not
used on this board. Enabling the MDIO controller in the DTS was
a mistake on my side.
I will fix this in the next revision by disabling the unused MDIO
node, while keeping the fixed-link RMII connection to the switch.
>
>     Andrew

