Return-Path: <devicetree+bounces-245669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E72CB407A
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 22:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEA95300CCF6
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 21:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81AF2FF67A;
	Wed, 10 Dec 2025 21:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h/il+UyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5492F5A1F
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401023; cv=none; b=FXtcurYw8gNTWlODaRBR1ZIOSTZN5Txt1Dv1YRjegyB8mtaHeGhbVfnLf/+JO/2QJ9BhYW2oZ6tj3OLQxKFnhPgZd2M8q8vBnoLzh+dBSCxpphV6cwxeDI2F6YU4oav7McOrfklJtYabBm7fbQ2p10Q0iCV4rZjs7tFUE/u9FvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401023; c=relaxed/simple;
	bh=Uh+9H8bdDNwclyo234VBfjWf+hPZD/RjvnJ13fK+bUE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NA2DlteO+urG89FmWkU+ASlcDqikSO7cEHJr8+fjSdw216Q+ZeVeWycw+0YKPTDKzfODRS4N+P4AobtQpdq8X8mqe4C6U69pVUzLwI31B0ELLTOX2AwJ8/SEWxs9avMZszApUgqOi9FIx1vt9XGMaRfPjwS+ERaE27mLsRXWzRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h/il+UyR; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47774d3536dso2605135e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 13:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765401020; x=1766005820; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6Ap2wL2QNWzNOuJh0hZXjD0O0VdpkojkcVs56Al8cw=;
        b=h/il+UyRcfUV5ophE7yr1bMcD8/fMeLheEypjbuvu7gg07nvOz18oRtr5oLVz5LIyH
         xUf21BFcctap5DVpMyUTbqXg8IKTvg45zLY1ajh6etNnEuom/Cx52lsTKw3LTj41JRMB
         foS0SH8GdRloYqhxhBULP2sGCsUU2nngKpmtzwl7C11IdHVzd6RWOt8wmFfvyjn5pZpj
         VIaB0tSnlnaKxfAc9hB7116T9zslVFg+lNl+TfIgyFnFTx12y6nF4wwZveALQl5HgPu8
         p7YgcSurCZH/C/4PrCxCf2AdPcs7FoXdfw7qRqe7G76B4qLIg/ayaXaSL5cYqrCXNCoG
         HcSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765401020; x=1766005820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f6Ap2wL2QNWzNOuJh0hZXjD0O0VdpkojkcVs56Al8cw=;
        b=ZJpiZBb2LaziYRrZmrcYHPyZNxHVNK8BnOFBXCH41b4TzTB+x+MDp6xj0fyVem/2dw
         GvtOyAast2sQmyT7vMMr0HHWF0AQkXE30BZLA1PR5TpfuXQvPuQ7+2v2Nj/NxkY01lXG
         wDVhX3Yw2JyYz4NlPPqcNtyD/LeGhVCN4FCDPxDI/QGHZXO93BDWs1GdlzbJKkDKkoML
         +Ltk6eNLVtvbCrzi9cJ8mSKqcFxxg5AhcPvDmaJeuXMmTH4Tam7FoQjnrxAq4Im/b02n
         1ReNqGJ/vMg03/nIelq9omXKtUkf8c9PO1c2rZcgu5ER2R6cc85pC8isF5nRWuzV3H1X
         dgMg==
X-Forwarded-Encrypted: i=1; AJvYcCVLEUC0amQEkHkMLxbfnErZP+4Zv9+ZsbjlRVyNNHzVy+0zVtsW+76llcWlsWRqptYsaHmSRHTlBiN0@vger.kernel.org
X-Gm-Message-State: AOJu0YwksFAUAoXUR7WAhxRZcWS8zb6azdUW8hZSQ9GL008+fhvTdHX+
	a2+0E7GWAL95ldvxqWzH5LHg/3GA0xKNY7Hhr3o5ah6cYHHJ2UKajs3TB2w9aLx9hhPZsXRZHDd
	0HXAy4eh2XR0J0+T93bcyK4YymZ5hUbQ=
X-Gm-Gg: ASbGncu1MPgKT12EgYeWWtAeHj8+jwswQYP86v/5rCUV6muEkqQAzL+RWxT+2ryFKf1
	MQyscj4qfJvx3P8CJnW6Wh5gZ4IMzCkCX/jvQbi4f75bP3LX7y9sxTWXUtHznPRFAxvqXOvazoQ
	z+u4c6A2pHIdydyZtcAypUEpkgj3QdfUURTCPpK7RLAYfGiZnlYfv8rX0nC/DcO46CLUOBuWcYs
	i3mPNnFDKJ17NikNB/Hju0S+OlFG9ecxbZX1aCuHw7Kmek2/hNbwFAj20gSpLDjo69itZjbhw==
X-Google-Smtp-Source: AGHT+IFQU1/Jhu22RnkhsOBefhQOpeX8PaoabdXqTjqdirBbdMixKWOg/r6NaWYfEBa73u04Avqi37Rvk+u2FM+qxao=
X-Received: by 2002:a05:600c:56c8:b0:477:9890:4528 with SMTP id
 5b1f17b1804b1-47a886a08e1mr5232305e9.2.1765401020116; Wed, 10 Dec 2025
 13:10:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-10-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121210504.ljeejnltaawahqtv@skbuf> <CA+V-a8ve6vV_O1XwPX0sn+Qqm5QoYrf6Xu5gansxW05waMf43Q@mail.gmail.com>
 <20251209212841.upskgi5dphsmkrpi@skbuf>
In-Reply-To: <20251209212841.upskgi5dphsmkrpi@skbuf>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 10 Dec 2025 21:09:52 +0000
X-Gm-Features: AQt7F2o4iDtd3Rpuz4FTtk60m3_b-aAdWYBIboBEH1hguLv-mqZPIp_mG5EBJfA
Message-ID: <CA+V-a8vkzrO77UBeR+YhPwcv608Zh9n7CHL-ugcsuhk-vuRyMg@mail.gmail.com>
Subject: Re: [PATCH net-next 09/11] net: dsa: rzn1-a5psw: Add support for
 management port frame length adjustment
To: Vladimir Oltean <olteanv@gmail.com>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simon Horman <horms@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vladimir,

On Tue, Dec 9, 2025 at 9:28=E2=80=AFPM Vladimir Oltean <olteanv@gmail.com> =
wrote:
>
> On Tue, Dec 09, 2025 at 04:02:19PM +0000, Lad, Prabhakar wrote:
> > > In the next change you set this to 40. What's the reason behind such =
a
> > > high value (need to set the management port A5PSW_FRM_LENGTH value to
> > > 1574 bytes to pass L2 payload of 1500 bytes)? It sounds like this nee=
ds
> > > to be called out more clearly for what it is - a hardware bug.
> > >
> > Regarding the question about the relatively large adjustment value:
> > according to the hardware manual,
> > =E2=80=9CSet the FRM_LENGTH register in port 3 (CPU port) to more than =
or
> > equal to the initial value. When you want to limit the frame length of
> > the received frame, use FRM_LENGTH registers in port 0 to port 2.=E2=80=
=9D
> >
> > In practice, with the default MTU (i.e. without applying the +40-byte
> > adjustment), RX traffic operates correctly. For example, running
> > iperf3 in reverse mode shows no issues, and frames are received
> > without errors. However, in the forward direction (TX from the CPU
> > port), throughput drops to zero and iperf3 fails.
> >
> > When the MTU of the CPU-facing interface is increased (e.g. ip link
> > set lan0 mtu 1540),
>
> "lan0" isn't a typical name for a CPU-facing interface. Do you mean that
> the primary action is that you increase the MTU of a user port, and the
> FRM_LENGTH of the CPU port is implicitly readjusted by the driver as
> well (to 1540 + ETH_HLEN + A5PSW_EXTRA_MTU_LEN + ETH_FCS_LEN)?
>
> This isn't actually bringing new data, because unless you also increase
> the MTU of the other iperf3 device to 1540, the TCP MSS will still be
> calculated as if the MTU were 1500, and you won't be making use of
> larger packet sizes on the wire. On the contrary, you are introducing
> one extra variable into the equation: with this test you are also
> increasing the stmmac MTU, which you later clarify that by itself it
> doesn't change the outcome.
>
> > TX traffic immediately starts working correctly.
> > Likewise, increasing the FRM_LENGTH on the switch side for the CPU
> > port resolves the problem, which indicates that the frame length
> > configuration on this port is directly involved.
>
> So increasing FRM_LENGTH is the only factor that alters the outcome.
>
> > Given this behaviour, it appears that the management (CPU) port
> > requires additional headroom to successfully transmit frames, even
> > though RX succeeds without it. The STMMAC driver is used as the
> > controller driver for the management port, we are trying to determine
> > whether there is any known interaction, alignment constraint, or
> > undocumented overhead that would explain the need for this extra
> > margin.
> >
> > Could you please advise on how to handle this issue?
>
> Have you verified that the value you need to add to FRM_LENGTH is linear
> for MTU values above 1500? I.e. that at MTU values of 1510, 1520, 1540,
> 2000, ..., you always need to add 40 additional octets to FRM_LENGTH on
> top of the ETH_HLEN + A5PSW_EXTRA_MTU_LEN + ETH_FCS_LEN extra that the
> driver is already adding, and no less?
>
> One other thing to look at is to send known-size Ethernet frames using
> mausezahn or ping over lan0, run ethtool -S on the eth0 stmmac interface
> (this will also capture the switch's CPU port statistics counters) and
> see by how many octets does the aOctetsReceivedOK counter increment for
> a known size packet. Then, if you go oversize, look at the statistics
> counters and see which counter marks the drop. Maybe this will provide
> any clue.
>
So I started off with ping and that worked i.e. without +40 to
FRM_LENGTH. So when I increased the size upto <=3D1440 ping worked OK.
Anything after 1441 ping failed I could see
p03_etherStatsOversizePkts/p03_ifInErrors incrementing.

              MTU Ifconfig
-----------------------------
ETH0 -  1508
LAN0 -  1500
LAN1 -  1500

After increasing the MTU size to 1501 of lan0 propagtes change to eth0
as seen below:
root@rzn2h-evk:~# ip link set lan0 mtu 1501

              MTU Ifconfig
-----------------------------
ETH0 -  1509
LAN0 -  1501
LAN1 -  1500

$ ping -I lan0 192.168.10.30 -c5 -s 1441 # Works
$ ping -I lan0 192.168.10.30 -c5 -s 1442 # Fails and
p03_etherStatsOversizePkts/p03_ifInErrors increments.

So +40 to FRM_LENGTH just made the iperf worked earlier as the length
of iperf packets is 1514.

I'm still looking into the switch on why it could be dropping the frames.

Cheers,
Prabhakar

