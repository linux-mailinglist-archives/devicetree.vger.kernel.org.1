Return-Path: <devicetree+bounces-252601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC79D014D6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DD828301D629
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172B22D97B9;
	Thu,  8 Jan 2026 06:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UiaBzYNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEB527F75F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767855209; cv=none; b=huNA+gdn902zkMlXSW4UPjmAqW3QNDuHyZX/iabvJ8RKiIrm3qXuONiIn2mOSOclUq9AYwptYOm3IyKX3LLhbuX9/66dsmeYlx+q5XyWmm4z/oE9Srn1q3T43HFfN1LtXC+DsHvT0mg8BV0a/eD5FK8ttdSsZlEBlcV5RTHBfQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767855209; c=relaxed/simple;
	bh=cbCBnQxNzPgaj8Bk4NXdoD/YpVUG7HWJvAldhDSxvI8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pgXaFcA+ecBPLBNKqLs7O5624K9MdIUdhKN84W9ZGEOZZ2/Q5KHB6o4hT+NbQLjfQBgHAr4KVj/OEOhRb9o3CrjIMupdfPX46T21oBgzvuP2r8si5qHv+ow4bD85dANljhjixTM3PfRNQpzMUwTE+M9C1UZtwhYJXPQa4vSA8cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UiaBzYNM; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4ffbc2b861eso12113851cf.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855206; x=1768460006; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wHCQRjVPh84PufW5VGwtzkWEtebIWEjYRwJnRvd9028=;
        b=UiaBzYNMZ05+jNRybc2UhWEWH8MXfQf+T10KGCg99FIN9+XBKGoXu2m15b2toZSy9m
         J7AGtx0GyjTgCC/HlQVAsK80GO2MhNW+5oN1u0gf9ay8Micc++ynPMeByeKspeK5aTYh
         8EgDioSPgvRxGMQjcuZUYGEjDxc3zTyOzE8w0MwvZuJARDjGJOer8WSLv7XZNZ51PH3h
         CCGj5GCpJSniuaJbieLBABxxhWecflwU58BXxsy7kHw4qKAERwyB5HNsGwdn37RohbSu
         8RQy5IICY1nLkAX37kcup6T09DZH8E+QVVLvOlYOun8nCtPhp90dHpHkbz2/urSEtvGr
         KHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855206; x=1768460006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wHCQRjVPh84PufW5VGwtzkWEtebIWEjYRwJnRvd9028=;
        b=M+pmHNNyUz/vOMUc3f0lVGpelNh6Foq7CYgn2XNhzqi2h4nIgKViUsOQu1hEJMrRe9
         lnSJpFMstdfEVXBli20FY1CF6WWLg/ix7JAdlLeC2ncqmsbqK6oxxDc/2zaAoKTdc+er
         He1lUNIe48dnJKR6vAwmWobxr3g2I1SnWynzHH6DpUj9A8eqGTdS2Qius2IkrZYTHLaX
         s7J6WZBORswQIXoeG4kvyNH/bF8qEf6+TLMLpR3LuPtIQmRgOXg++MXoByseED2jjJex
         xcYlcyEExZra3Ea8Pzp5s0COhG/nMqGiMmzGuFJCXXdsk0FwjPaPmBHvsZOAeZj5nIvl
         wBxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcoRO778mTEu2qbYX0JJJ4/tG70biYWez8J2hTl1/pOlZg0kovd8u8S7/oGwrSjB1QWjoJH7g44sg5@vger.kernel.org
X-Gm-Message-State: AOJu0YzFNWb/w15xgdG9WxyMBfmMbl+GjTogCY2k/yig28MFJwBHKSIs
	THiGdZ96r7AWsYq0uLMLM65ziX+HcaHfPhcfYf/QBGQyp6epZhKVw44k4ePi6LhJsMARhm2cZ9u
	1/c0kft6FVN8etoA+yDfzi1eEdr2jndw=
X-Gm-Gg: AY/fxX4HxWhH9oOEue4I5bq2iwvg1DMsISWzs+Hv5hF+U/QQix5JP0B+2JmBE7crovz
	5O4zyuRdHIbB2WjB7jze3OODRaGUpjsa6Jy/zhTv/JDkHChEFW1bndJqBmOsLmPXh5P0WILGDSK
	ypwZeqavr+d0RtsNYdb/5gkj8DGutEzvwTnghDfLugUG1ZiNzY/gGZlghruCZeV54mDGLGiUzTt
	edlA7tSjfHG+jbdawHlRdKUKVXCUPLP9IFyLjNrQTbD0ljqlWPBqURhb8qVDKkgDU0CarmztCWF
	NC5ccHVZtE9K8EOuOfJPpr6XjYtE
X-Google-Smtp-Source: AGHT+IH9Vd164+NcSWABSb3y/jceDxJ9EiANBARK7BIcO0sQPRDFs0KTPHhEmnLU/L5aReuZRIUNPeoHClh200T9PK0=
X-Received: by 2002:a05:622a:8cc:b0:4f1:b742:35c2 with SMTP id
 d75a77b69052e-4ffb490faa7mr73309911cf.22.1767855206267; Wed, 07 Jan 2026
 22:53:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
In-Reply-To: <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 8 Jan 2026 10:53:17 +0400
X-Gm-Features: AQt7F2oeNi9V8CLPU1jzf6Yw7puNDXDoA7a6GK6Ngj9I0de-SnfdObpeo7UYQ3o
Message-ID: <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Andrew Lunn <andrew@lunn.ch>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@collabora.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 7, 2026 at 10:18=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +&gmac0 {
> > +     clock_in_out =3D "output";
> > +     phy-mode =3D "rgmii-rxid";
>
> rgmii-rxid is odd. Does the PCB really have an extra long TX clock
> line, but a short RX clock line?
>
> Try changing this to rgmii-id, and drop the tx_delay property.

Actually it would be great if Rockchip could clarify the delay
duration introduced by a single delay element in GMAC-IOMUX delay
lines, which are controlled in the GMAC driver by the {tx,rx}_delay
properties. Maybe we could then switch to using
{tx,rx}_internal_delay_ps for fine-tuning the delays on the GMAC side
as envisaged in DT bindings [1], and use phy-mode =3D "rgmii-id"
throughout. Chaoyi, any chance you could ask around in your hardware
team?

Currently though removing the delays at GMAC side altogether causes
unstable link operation - see [2] for example.

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/=
bindings/net/ethernet-controller.yaml#L342-L347
[2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/=
commit/372f3e9ae62cc62cdf2543391ea57be6bb548a0c

Best regards,
Alexey

