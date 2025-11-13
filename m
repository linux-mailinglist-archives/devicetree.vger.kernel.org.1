Return-Path: <devicetree+bounces-238172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E71C58051
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 428E33547CA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB0A279324;
	Thu, 13 Nov 2025 14:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BVIpqsSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4016B2586C8
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763045148; cv=none; b=oARVJBzlpL4UpBlMUV7pQpF4supFxl58uL5BHGVAeCnR0ePVDORNGWB0M56gbY71tVIcXmly0g+2UWHSOZw0UejoeOf5ahgFcNfm0ugSEJHJxHwrD+qhlxstO8RuzkWzwQjaHRX0zuu5Gn5nEDQXJxxyZPfzQPjGEyTFH8mIv+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763045148; c=relaxed/simple;
	bh=wkSkDdoPDv5abLWccGMVUsi8SiiC/MW5NOpVlGRUPZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ru9z0yaNr4SkqWqqKsgoWmgg6lRQOnRoBocTMnHxUYgY+U/VBIjxlSHbi3qMINdXX0/1as6rpiCUxkz2avyrIWPoV5j/i5YzHJYNYn/M7eqWrfgssDZpmsW9eoBy+BXbGez0sdYvrJ8uPgBN4JWl43lDC14j8GjY/aqPzefrDMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BVIpqsSv; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42b427cda88so643303f8f.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045146; x=1763649946; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vcRSJSxeIXWTFrXDIzup6ZeaZadWQ/5Lk5RiitzeLH4=;
        b=BVIpqsSvB50OcnCbWraQraDCbbOhVax6pDyqrYc4XFvWXjw/xRSUej7kIZ9U5YMWoK
         NYecwgrGAaBowAUPvzsqIBFS66OLswZutjtZ3naz1XDiy0rEnma6DL+8bE8j7ZE791zz
         ytj8sDAfy3bv8vkjzQMBMQnNhsDsDvGIVdi2Plvlq7/t3R7TSlF8O3IvE18kBSXBCiwZ
         q2sQwHCHsf/xEXkMmFpFx/xHvpTUfGGTj5xkqx9kv0WxLHMtKua1KZ0P1Iszm69/iv2j
         X2MuLriCKfqRiBgP8b6j2OEc/gPgzmHQ8bxcGTZvJecJmu3E7N8AXP6icE2Hsf7Tp+Sz
         WiqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045146; x=1763649946;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vcRSJSxeIXWTFrXDIzup6ZeaZadWQ/5Lk5RiitzeLH4=;
        b=KqpnOoJhkG6bD5/sDI0+x2ifSIbob8a5aoUjG5UQYZVety21ZwilUqqZPpowCUgg81
         /gLZmKRDjRhGH8knso6Lq5LDLdV+MIzeOZOuoTQn3LESyX6kyWqpx/2CfmID+IfcMXee
         466u3dqVhGyj26xR8hnfk38Lvevmq5voH2f0CIsagkeHBpUExcvXVROZ7TtANPvh/qcS
         xN3Vm20uJduic3am98Opi4oqyPhYRm+o+pb+hOYgUVnAHeS5YMPtpVa3Ows3eAZyc3gy
         71ZR317HY38fTqoELgl8+0YVll6U8qFRYkn70dl/gd2C/0ALsfRNH6eSpagBIOInLQsg
         JPQg==
X-Forwarded-Encrypted: i=1; AJvYcCUNyHD4qJBJzJOchqz4o6FUwiOMxoROAxG1COZ0HWRgb40MxuDOSUmpilQoSjmReyaB/DMFPlLb7u4w@vger.kernel.org
X-Gm-Message-State: AOJu0YzzrL/as6qiGPZPymPxLRo5hrApbKvM+C0EH+xzpQODS7WAsqvn
	D7DLxCMuMQYIIih6fqDdvBwRDA/Ha1kDqPXBgGRP/C2nHuN7CBBDy2TAOEzER+jBGv0f4VZ1lqV
	dP6XrjVSYWyw6OlGU6fkEGPAGH4nqgAw=
X-Gm-Gg: ASbGnctExRKfWVMJv/GlVwkqTQhREkMYp6XVTGpL37sHPg365vgrKckYDS/4xr72GSi
	tjBOVMNBBE7j/jxLbstb91ev/oLFxrBhV0RZX8OyAJIdWu3UKz4Iit6Iz8xRnF3Nwve+Y9UZyiL
	OzqcrbxF1VzAv1Wqa+a+URrujGb6WVk/TCWxZ00bBrzXp8CiXjk1JnK7SroSlf8R34H/y2Wd162
	/BZ40Qyw0VATCnE/7CIYqa8ysTw+ye/8iH6VUShrPwkN/m3ocDedpyf8DzG0JVwtj+8rCB0amo4
	/HU50JU=
X-Google-Smtp-Source: AGHT+IHqzyBfuyBH24NabztQ2ac7uK3iOL3WFKk1OzQ++QqYz3fMB5HSm7GretKLA+fjTkvrDt20ETT5xK536jmvZdo=
X-Received: by 2002:a05:6000:240b:b0:42b:3131:5433 with SMTP id
 ffacd0b85a97d-42b4bb9464amr7328317f8f.26.1763045145342; Thu, 13 Nov 2025
 06:45:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251112201937.1336854-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <aRTwz5QHq9U5QbQ-@ninjato>
In-Reply-To: <aRTwz5QHq9U5QbQ-@ninjato>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 13 Nov 2025 14:45:18 +0000
X-Gm-Features: AWmQ_bm1n4yocnFoXMuN117YgsRe_Rw2NkyCDDLKQDlHn-tEP1dQHcHiTprnds4
Message-ID: <CA+V-a8s5fg02ZQT4tubJ46iBFtNXJRvTPp2DLJgeFnb3eMQPfg@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: pcs: renesas,rzn1-miic:
 Add renesas,miic-phylink-active-low property
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wolfram,

On Wed, Nov 12, 2025 at 8:40=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> Hi Prabhakar,
>
> > Add the boolean DT property `renesas,miic-phylink-active-low` to the RZ=
N1
>
> Hmm, we already have "renesas,ether-link-active-low" in
> renesas,ether.yaml and renesas,etheravb.yaml. Can't we reuse that?
>
On the RZ/N1x we have the below architecture

                                                      +----> Ethernet Switc=
h
                                                      |           |
                                                      |           v
    MII Converter ----------------------+      GMAC (Synopsys IP)
                                                      |
                                                      +----> EtherCAT
Slave Controller
                                                      |
                                                      +----> SERCOS
Controller

Each of these IPs has its own link status pin as an input to the SoC:

SWITCH_MII_LINK: Switch PHY link status input
S3_MII_LINKP: SERCOS III link status from PHY
CAT_MII_LINK: EtherCAT link status from PHY

The property "renesas,ether-link-active-low" is specific to the AVB
IP. The MII converter enables connections between these IPs, and the
register for controlling the link status signal is part of the MII
converter block, so this property needs to be part of the MII
converter.

If I have misunderstood you, did you mean to rename the property to
"renesas,ether-link-active-low"?

Cheers,
Prabhakar

