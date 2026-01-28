Return-Path: <devicetree+bounces-260548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOilFzFEemn34wEAu9opvQ
	(envelope-from <devicetree+bounces-260548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:15:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A271A6A72
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:15:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2823930FD415
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FC730F94D;
	Wed, 28 Jan 2026 16:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f6MBlL8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCD030DD03
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769619164; cv=pass; b=QT0EOhqF9q34nGvOZ64jq2mSOndc8OSfOEeKm9rp4tfHo/s+oY7Bgsrg49WwnVYQNBFXUCQKfORX1NHwg4hAiRQYLwh7N0GIPlcgw3HiLnazhLwyhas8q3mvT0TcDw/L3CweW3NSKuLv3owVwlp/eON3/yoK8ukPmkBtF8vMx/g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769619164; c=relaxed/simple;
	bh=TpCucwmKAK2k086DcpFd+VvfN1GaOQ0WjNJ+vGCA69U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nNs1W6Uk25zZ8YesJEgqiPd/q0aCfbXsEhlQQtn1tUEykbmbKNSKSNq0feT9zOAWyJ7sEQ+ccMsh4K6rn39MDez0ODYLXiE42UO6KnwSa2i9+n5JQB09ByQ70+KutTD1AmsQM7LvxYXYhdX0f6PFAJ/6B5aPoxELjXA5NFJk/7s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f6MBlL8W; arc=pass smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so51499615ad.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:52:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769619162; cv=none;
        d=google.com; s=arc-20240605;
        b=JIfOXtehYqDmVbxVHYFh5sjVeAh4fEfv5owopDy3aAGq8dYPLFCgmHEctjhNDWMtUE
         8hcvulvu7EcLDKtzK47I8JrowHNLR/UMrokFQ0RfH2MaJ/ZIyCI+Dq4llJRW8Va79aTf
         z0wb4bVBLyYK9IQGq6rET8e3W2chMwrwgPZHQKmjcdEOTawM5yOWffTGOFXqGzW/C7U/
         gXTFOUI1yvqY285mklo5lslc+dMEoNnJiuR+OmFJ2FN46DXZXY5houj4wg/OygtFr/pA
         OXuxSxf0OAMrVYAzYvniSnbE+tbTSUpQ8HUcs1aPtX9Gy7BsZ8SP6ar8oiS3LKLpkhm8
         zEhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LX9gDx3KFBF5yxVstQOoU+G8u/eBTnZN64aCXHiziSg=;
        fh=0Eok7C87sEWE401T51+fI4QbOjyDhS8AHNhYqlQk6e0=;
        b=jKYDll625tj0lZBcBny5ExcNiShiScMiBzJfajy8uVEj/2vy483wUbcrDz96j0HE95
         +eAd36RXboqgsqkRFhSEka1VEnhvnuPDpr0MuUXqSOvNLSftmymuO9ilrBjYpr5UBcV3
         q39UfCUXfFUUE6bVP9G0dWBkxPbTu030nolzHCVZcb+KEC7J0inofnL0+L3uYVj4Snrl
         7bZO3oN3YfLUQuevS+ZAfPeAcHEK+GG+6U0XBZwqgTrS4rMSbU0tNqdZkY66ccKypBAZ
         SwId69t/ShliBr8lXmU7nNJCufyfUhWc3oTze4xw45dpQRq87OhmIYj5pTQolQhPbXTV
         ezOQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769619162; x=1770223962; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LX9gDx3KFBF5yxVstQOoU+G8u/eBTnZN64aCXHiziSg=;
        b=f6MBlL8WIhAFafLJ4DAT4Qk50DyvXWHd74MpB3ulde8nHx4dpYcJboAen5DZPrtJzQ
         lOqwPZrmxS35O1Nlq31pE+DHZTc6fcD+sGMO2dOHOwfhfnz27iloilRinJFB/ACpt0S9
         sb/4wof6twWUqMk/3Pz9x5hv21Av6BLTgIUm9PnIk83/RH+dltp9mNsvr4kFqZvlBQ0I
         5Ve++Wk9WtkpJAx9yE1FeT2Lu7eiYw1bYDnbDoNlko5jwNwSj9Tn8mvZFD3S+bYi5l6V
         Nuve8bAO++/eiHCTO1FHyFnTnyxm0EFGzKSCc+nHCgs9FO4BtlYM40nv86B+hCO/7CtK
         usKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769619162; x=1770223962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LX9gDx3KFBF5yxVstQOoU+G8u/eBTnZN64aCXHiziSg=;
        b=RlG0STceGpKWKmfMlcrC1+Hj86YT+Ae6ghx77SnCN5H7Yno5Zy5RAuCl2ND4aNkQqc
         jiOhtamxUaN5lqIBgzpYIOvELMqdBvuvnAg3hm2NQOCkWOGrR5ax9SUJe3Uyccrs5qsg
         7TkIo54bSyZbyuK1ljoslZdQWxtGUadOq7/P4qBYDlgcO76bRuyNzHnajLjaY3mCPDBP
         unrdpk889cape2QJB33+j7wHQJpXchEtt+z01aNqHSqBTDEqJNHaI8tTNOXMTqpgmLUN
         B+SpaLfriuqTobJS9V9Iu+l4i+/wpBECfE7fFBX6Uo1lvvrJNy2o1un5r+j13jz5aqP1
         YCyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFmP0JbfAxmw4YimGnthgetjYky6EPHQAh9GJgLq5jiyW9IGwQh5aPFeGc4VqbLLQpySLj/cBzjtsX@vger.kernel.org
X-Gm-Message-State: AOJu0YwbkM2fyYqKE9u62u3SX7QKuqK9G1bMjmroxXbsP0vEMCO5kEHE
	gU3HjqbB4mb1P3HCMV5c6biKNk6dreHvmARQ2XqTsVHv/9tuSQMLLG1zsGSx4DU8kmwpfBhClyv
	HEPGl2MXF7RVyWjWgXnKf5d30rejSyQ==
X-Gm-Gg: AZuq6aL9jQC5s1KqfNNuzlp9b4dakaMym97pwZmqDH/WzFUR9t1AJyeLRuBm/yomcIl
	uODDSpG+I7SZe2TG04Edu+0620wgOfejiNHZ4mFKTxnohW1YtOkMJjsG9Wo3b0kixq1CQ7BBiU9
	Nf0Y7AokaHtFi6+xUqKIAejrDnM/KMZY5/KfSsrl8vPAZRDNAiVWtaltV089/eKqTAu8XgZSzyG
	dpAleTYFKt1xtYFNo36PXC/V0CAdiH2aXDN46nv4lwfj64fCuHvq52/mQuteoaKDA4kECaZ
X-Received: by 2002:a17:903:249:b0:2a5:99e9:569d with SMTP id
 d9443c01a7336-2a870d6483fmr54239625ad.18.1769619161524; Wed, 28 Jan 2026
 08:52:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250427142500.151925-1-privatesub2@gmail.com> <aXJTqzZaBrCMnTvv@shepard>
In-Reply-To: <aXJTqzZaBrCMnTvv@shepard>
From: =?UTF-8?B?0JDQu9C10LrRgdCw0L3QtNGAINCo0YPQsdC40L0=?= <privatesub2@gmail.com>
Date: Wed, 28 Jan 2026 19:52:29 +0300
X-Gm-Features: AZwV_QjtfqpOuCyYtNE1xKe0593NpcMxJ89wFPIBopBcRc0tp-flqstJbbXGRk0
Message-ID: <CAF4idN=h9u2LX8Oa9_LcyM9ANUNtLbPTMyn_pHbZVBCXc5Orvg@mail.gmail.com>
Subject: Re: [PATCH v12 0/3] Add support for Allwinner PWM on D1/T113s/R329 SoCs
To: Paul Kocialkowski <paulk@sys-base.io>
Cc: linux-kernel@vger.kernel.org, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Cheo Fusi <fusibrandon13@gmail.com>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260548-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,csie.org,gmail.com,sholland.org,sifive.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,pengutronix.de,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[privatesub2@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[paulk.fr:url,ozlabs.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,sys-base.io:url,sys-base.io:email]
X-Rspamd-Queue-Id: 7A271A6A72
X-Rspamd-Action: no action

Hi Paul,

Thanks a lot for the detailed review and for testing on A133 - great
to hear it works there as well.

Good point about the naming. I can rename the driver to sun8i-pwm and
send a new patch series.

Thanks again for the pointers and the context.

Thanks again,
Aleksandr

=D1=87=D1=82, 22 =D1=8F=D0=BD=D0=B2. 2026=E2=80=AF=D0=B3. =D0=B2 19:43, Pau=
l Kocialkowski <paulk@sys-base.io>:
>
> Hi Aleksandr,
>
> On Sun 27 Apr 25, 17:24, Aleksandr Shubin wrote:
> > Aleksandr Shubin (3):
> >   dt-bindings: pwm: Add binding for Allwinner D1/T113-S3/R329 PWM
> >     controller
> >   pwm: Add Allwinner's D1/T113-S3/R329 SoCs PWM support
> >   riscv: dts: allwinner: d1: Add pwm node
> >
> >  .../bindings/pwm/allwinner,sun20i-pwm.yaml    |  84 ++++
> >  .../boot/dts/allwinner/sunxi-d1s-t113.dtsi    |  12 +
> >  drivers/pwm/Kconfig                           |  10 +
> >  drivers/pwm/Makefile                          |   1 +
> >  drivers/pwm/pwm-sun20i.c                      | 379 ++++++++++++++++++
> >  5 files changed, 486 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pwm/allwinner,sun=
20i-pwm.yaml
> >  create mode 100644 drivers/pwm/pwm-sun20i.c
>
> Thanks for your work on this driver!
>
> For context, this PWM controller seems to be a second-generation design f=
rom
> Allwinner, which is found in the following chips: V5, A50, H616, V536, T7=
, A133,
> V833, R329, D1/T113, R128, V851, A523 and A733.
>
> I've tested your driver on A133, which works fine too. It seems that H616=
 uses
> a similar (but slightly different) register layout.
>
> In case you've missed it, there's a follow-up series adding H616 support =
at:
> https://patchwork.ozlabs.org/project/linux-pwm/list/?series=3D409036&arch=
ive=3Dboth&state=3D*
>
> And there's also a standalone effort (which I've redirected to your serie=
s) at:
> https://patchwork.ozlabs.org/project/linux-pwm/list/?series=3D485644&arch=
ive=3Dboth&state=3D*
>
> Now given that the new controller was introduced with the V5 (sun8iw12) f=
rom
> 2018, I think it would be a bit confusing to keep the sun20i-pwm name.
>
> How about renaming the driver to sun8i-pwm instead? That would be more
> consistent with how other second generation designs from Allwinner are us=
ually
> called in Linux and makes it more clear that it also targets sun8i and su=
n50i
> chips, in addition to sun20i.
>
> All the best,
>
> Paul
>
> --
> Paul Kocialkowski,
>
> Independent contractor - sys-base - https://www.sys-base.io/
> Free software developer - https://www.paulk.fr/
>
> Expert in multimedia, graphics and embedded hardware support with Linux.

