Return-Path: <devicetree+bounces-253169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DD0D08258
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8861B3026AAC
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF4D3590B1;
	Fri,  9 Jan 2026 09:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nanoCBQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663E43164A9
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767950367; cv=none; b=Pi/E1BHyeLP4/9kY/Gcu3rgkpYMdlmGCnfbNX2o0dHbkAyfoslgXiHs7i46hxQ+cUxX3IToIWQFQ9EWIPLcC201YyAF1RzCi49lunzT0fUf2MMoqQgXm+OTDiLWiOBwc2hmWEMdHTFzxMGPQEthAznZuDsvdg3s7/X/4KYNPe8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767950367; c=relaxed/simple;
	bh=i8EAGqlGkdioBJ+426x2kqrVYP/t6CIiIJg3LnnAuBM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aM85JQ4s8MVfQAuxNcFTHUqJ2k9gTBlxk5Bhi/PGJW9zFi2TamLxDG+cPsPOX0sUM2s2Ai/MRcEg6PeWoeatwixHJft3YrBFQhjAzgVJ0Mirs1sToUrzt9hv6TUxFueEoMo9+SaDDYmCWFEvJJReWS6f9QRF3Nm/SyUg3aoIXcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nanoCBQ9; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so34100565e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767950365; x=1768555165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i8EAGqlGkdioBJ+426x2kqrVYP/t6CIiIJg3LnnAuBM=;
        b=nanoCBQ9O3ucya2zVbOfPbH+qpXTXf8HMe0uJ1WzurRVx3IEegG5RpTODWqNtSmGMd
         WMHVRLvjtfICvnyBk/5Jcuk4v0+S3kLpktk7fUC8eYmBUa/jF4lOh2ujPZ9wKvYOWuLN
         HmEDYbAAb0aUIdhRvU/v8vTBtCW28Dhr6qe1Dvk93XguvXWw5x2ZoD1I9yfHs/tDCB4Q
         Fp1FZSzxb/XND25f3AU1pfhu2DbaDQ1Yzx4sC8bBR3i28lL7bHA+rQsBAIgmm/s++tzu
         VskR0fjv6jI3osrPofjv6RMElGGt0PbLB51OmwnHsGsvSyH5oQ+GtEBZedvvbdX9fn+D
         NfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950365; x=1768555165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i8EAGqlGkdioBJ+426x2kqrVYP/t6CIiIJg3LnnAuBM=;
        b=tT1kYyIkff0xJb3PiIH6Mv9AZ+044WDON2pMYEx+GrzI/LgcuXWfnWEmHmU+OkiWIX
         k8NEZnxMOnAM0gh3lXKUn+rCJqaTej5ziWu3AVGrUjlAHd+22Dk/LjynMJRRbMjYF+22
         bhB2hjI/QfDmGdytwpG/0IHJiZqJ7rxC4Z71fCjnFtrqcB5AnwA02H9DO4MXK6pPBlUW
         RLcUFUpwsCJb6GjXLUZZhNCyI48IrZkwt15S3HKDwPQvBGoxiTWBoz7oznn22mhYbrHJ
         abuzU9pHDpvPWUcD0fDii3D7GNEj9PmnSeh+ZP8r+ViEn9Zd1DYVlP6oMApDqjyzXEEe
         T1eg==
X-Forwarded-Encrypted: i=1; AJvYcCUvo7tNDIbZc5SQEes+GCDv/PpmmlmRQ4ctCOu+TLw7FYMPMoa1zSq9p+qfkrFhk3wssHEmXVNzpe0L@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr3rsbpWDQ2Vju/kI/qgAHC3CVmw5ipqi09yCiLb+JzthZK23C
	uWRvBECM0VwEiyZv/kMuth3kKc8q77XBvPFdLSSgR1iIq/9En6+kU6DmqCMbXX7GU/KNd+RaQnm
	AV9RzMuBOaqhSRObFL8iOwfAyXKU0zmI=
X-Gm-Gg: AY/fxX6Bw8JkyabvtpYIPC1pvnrVVA6HJMUT1DkxX9J92SDLI5ONJrb+/LHGeXtc+ld
	RKdVIQJPWbFW1E9hfIp6ZVDVVjNhy07YrPlnWMFW4oxQne1sbEf/E45GWAQf6fgwm6zBpg57Hg3
	NJxM9TqaqFgqRacOJ2pxfZ/SObqjjI9LLVaH23Fx6gE0O7qqXwlx0efZYR2DnHhJeDJ1vXmnsIg
	wzkIx9QsSPoyt8jGxKuJRXdzrByl8WBoVtFREd7s43SdDt3nbRHBJHut0Y154ug/03Dz3HbdtnG
	ZHItd40AWD+OfjilYATXwBDfJ81bJCItifzKIz9HNjqca5o8MdW6bMQ+uA==
X-Google-Smtp-Source: AGHT+IHlN+mSmvjaq8KJG/vwMIL+nxuQojpEhdEewYe8DHGKczJpKSan/fIqm3KvXe1+oQeC/+ZVhFDWt9+JSXLL3/0=
X-Received: by 2002:a05:600c:500d:b0:476:d494:41d2 with SMTP id
 5b1f17b1804b1-47d84b3bc37mr77626185e9.29.1767950364610; Fri, 09 Jan 2026
 01:19:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251112201937.1336854-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <de098757-2088-4b34-8a9a-407f9487991c@lunn.ch> <CA+V-a8vgJcJ+EsxSwQzQbprjqhxy-QS84=wE6co+D50wOOOweA@mail.gmail.com>
 <0d13ed33-cb0b-4cb0-8af3-b54c2ad7537b@lunn.ch> <CA+V-a8vx5KTUD_j7+1TC9r5JrGo2fJ0D7XXJCc-oHidtbUN=ZA@mail.gmail.com>
 <116b3a93-2b65-4464-821a-cbc7aa1b3dc1@lunn.ch>
In-Reply-To: <116b3a93-2b65-4464-821a-cbc7aa1b3dc1@lunn.ch>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 9 Jan 2026 09:18:58 +0000
X-Gm-Features: AZwV_QhimVeaj0BZo6vXeCQ2DEHzUWu3cuaX8HijxvgSw9R7wuUKdQOxBALTGcw
Message-ID: <CA+V-a8tJp8bNNPAFmRN3WMmo1e+QPARCOkkoUdwsaiv1oDfG_A@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: pcs: renesas,rzn1-miic:
 Add renesas,miic-phylink-active-low property
To: Andrew Lunn <andrew@lunn.ch>
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

Hi Andrew,

On Wed, Nov 26, 2025 at 9:28=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, Nov 26, 2025 at 08:55:53PM +0000, Lad, Prabhakar wrote:
> > Hi Andrew,
> >
> > On Thu, Nov 13, 2025 at 9:58=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wr=
ote:
> > >
> > > > Each of these IPs has its own link status pin as an input to the So=
C:
> > >
> > > > The above architecture is for the RZ/N1 SoC. For RZ/T2H SoC we dont
> > > > have a SERCOS Controller. So in the case of RZ/T2H EVK the
> > > > SWITCH_MII_LINK status pin is connected to the LED1 of VSC8541 PHY.
> > > >
> > > > The PHYLNK register [0] (section 10.2.5 page 763) allows control of
> > > > the active level of the link.
> > > > 0: High active (Default)
> > > > 1: Active Low
> > > >
> > > > For example the SWITCH requires link-up to be reported to the switc=
h
> > > > via the SWITCH_MII_LINK input pin.
> > >
> > > Why does the switch require this? The switch also needs to know the
> > > duplex, speed etc. Link on its own is of not enough. So when phylink
> > > mac_link_up is called, you tell it the speed, duplex and also that th=
e
> > > link is up. When the link goes down, mac_link_down callback will be
> > > called and you tell it the link is down.
> > >
> > Sorry for the delayed response. I was awaiting more info from the HW
> > team on this. Below is the info I got from the HW info.
> >
> > EtherPHY link-up and link-down status is required as a hardware IP
> > feature, regardless of whether GMAC or ETHSW is used.
> > In the case of GMAC, the software retrieves this information from
> > EtherPHY via MDC/MDIO and then configures GMAC accordingly. In
> > contrast, ETHSW provides dedicated pins for this purpose.
> > For ETHSW, this information is also necessary for communication
> > between two external nodes (e.g., Node A to Node B) that does not
> > involve the host CPU, as the switching occurs entirely within ETHSW.
> > This is particularly important for DLR (Device Level Ring: a
> > redundancy protocol used in EtherNet/IP). DLR relies on detecting
> > link-down events caused by cable issues as quickly as possible to
> > enable fast switchover to a redundant path. Handling such path
> > switching in software introduces performance impacts, which is why
> > ETHSW includes dedicated pins.
> > As for Active Level configuration, it is designed to provide
> > flexibility to accommodate the specifications of external EtherPHY
> > devices.
> >
> > Please share your thoughts.
>
> Please add this to the commit, to make it clear what these pins are
> for.
>
Sure, I will add this in the commit message.

> It actually seems like it is mostly relevant for link down, not up.
> If the link goes down, it does not matter if it is 10Half, or 1G Full.
> All you want to do is swap to a redundant path as soon as possible.
>
> It would however be interesting it know more about link up. Does the
> hardware start using the port as soon as link up is reported by this
> pin? So it could be blasting frames out at 1G, until software catches
> up and tells the MAC to slow down and do 10Half? So all those frames
> are corrupted, causing your nice redundant network to break for a
> while?
>
Sorry for the delay, Ive now got the answer from the HW team:

When a link-up is reported by this pin, the hardware starts using the
port. If a 1Gbps connection is lost and then re-established at 1Gbps,
the ETHSW will transmit the buffered data. In general cases, there is
a possibility that a link that was previously at 1Gbps/Full-duplex
could, for some reason, change to 10Mbps/Half-duplex, but this is
usually unlikely. At least when using DLR, it is common to set
auto-negotiation so that both speed and duplex are fixed. If the link
comes back up at 10Mbps (a different speed than before), the EthPHY
will likely follow at 10Mbps if auto-negotiation is enabled, but the
ETHSW will continue operating at 1Gbps and start sending out the
buffered data.

If you are happy with this, I will send a v2 series updating the commit mes=
sage.

Cheers.
Prabhakar

