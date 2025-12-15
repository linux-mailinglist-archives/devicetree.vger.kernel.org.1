Return-Path: <devicetree+bounces-246611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32873CBE1E3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:44:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C10F3042191
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327FC2ECE9E;
	Mon, 15 Dec 2025 13:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="DDc3dK1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA32A2D321A
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765805478; cv=none; b=O7F2ozVytEFMllpWHjto0mw+XY95BE9p0fScmIuaRhsnpe1wuT/6gdrNJIfLIR8EZXJZApEDrCQ82x+Jn9mEc0AenXIfkQTlus66fVn9Odec2zio7pGE8Bp7ZaR42OofPNppZPYlkyEb5XhtfRRAA8Gx/zCTLgqWO4ZjWghysV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765805478; c=relaxed/simple;
	bh=4IqfV+21sXkT4rpB7ZnZy6NpjdC+V8bm8PwvIB2EC48=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E+Wx35zsNAfvSOt+Nf6d0WsdQnyvVMa6Y8HfpgTfPLyHax5VuZ/moqDzvPq/AdTpAaNDA6s5XGr2QSKu8ay/c4xqja86SVUzTrvSngaUlmZdvspht6gwmYF5NqPjurw0pD1cDZHuX9ddOoSZBN97FFvaBfxlUrk18C3vu27w4nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=DDc3dK1J; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b7697e8b01aso653655866b.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765805473; x=1766410273; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bw+VWiqd/R4wFDIFdR2X28ZvT94yjzl0km0pBRnN7OY=;
        b=DDc3dK1JEMys5rx3jlagp4hyDgT2wdeH3AuguuaL1lwpP3RSnZaB0xLasscVY5r655
         NoU75j94IxqSRKfmFoB8DKDcGYpRFRds4QwciNrUqJ83gbZ+20nTtgExzWuXDZ/aM899
         WVCt+m1pS6PRKov5t91SolcAmZzM+Vy0t+OkPxc2Pzk+PirWOZhHgG8L2RYQaZiNPrlS
         HAa6KtTrxEeowAwLLv/OyrkghYzyTfi3+LbklsvlrRRzFtT1TE6sm+Phsrv7n59n9luQ
         0HvQEEEAQDPn5cZhaXm4p31cIw+dza2sRvw/6oAJwKHJW5F7CmUMKSPwyECKzL0U0ev8
         Gezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765805473; x=1766410273;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bw+VWiqd/R4wFDIFdR2X28ZvT94yjzl0km0pBRnN7OY=;
        b=vDt4eqNohZwP1o6cjDlujO9CoeX37p+cFFNO8S+QhVCpxITreuVSl8e4SAyPTRxXdj
         v23olk+VIbucSNMO1jb/Lnj12XnlVmVDDgeu2Qf+p4OfE8wTz6X4/6eG3hE7YWSMbENh
         /NADxku4sg5/q7mBvM9jTn+kmzNyKJweuMeG1lQg1egt4gNohhDDB50z10yyJtgTKP24
         NVF2XqcV3F0esFBh6L2V3LNsAnPtXUSzl45NFKF47+AVSwsEbwTeBcM3OJE1hB8kD2B3
         SBIQ6Zi/OnCLJqtXtx9xPz1RdBmTiJ/XdFDlkZO5Pbr7kAfGKRw8xKmP1l0OEyNScK99
         CwUQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8D4Je8zJ/IuUp4fmJKoiw+wNSUkw1Krv/NE+GaEDU98OvggmmCqeORp1wmM0BZQX5PVW5k9oRB/TK@vger.kernel.org
X-Gm-Message-State: AOJu0YyTlrfFnd8V6+DC41uFQdPQSrLBKxBmHaC+I/qaQQzCeUXfLBfQ
	uXetDL3XSxVe8zwDiCBRicu86DEEmBuROPh+63uf/iKvGTi1kQRlcrK7tE5Swr3dDrIz64N7znJ
	wWI9IznhuFDVN18h/+aGfPvOFJswtiYtkztvGkDraLw==
X-Gm-Gg: AY/fxX46hlScrhmz+0xLGHR84tHx4E9xvWsvjPGHaZ1s3YYHl8OroxZOXja2+B31t5L
	rYK9b24LdFoMkqdPbi4mP1YxN5ndes3E66xzN7f+r1UHRVlTSHrox95AmML4HN0XeMullbkC5vb
	bX6PpuCQkzyFKQpCSmopt1VElPkL23HWbuZNpaXkpaWDJ9ZS6KiKrhg6Fcruo7OhNHzsjgTu4GJ
	0hXM5MGoNWKhnXIed24MbJRZHV4H7EBrxKEiWRErFPUVpzcMxGcJW3w/xF9d4/cpt8IfroF
X-Google-Smtp-Source: AGHT+IH0jOC7I2V4n9q5hO9cE+4qZGL5l0QgmCHa+z37icAIbpE4GF3fcjaXDt2pkrHPiEtG7N6pGTFx3A7hEnLj0+M=
X-Received: by 2002:a17:907:9496:b0:b7a:1bde:a01b with SMTP id
 a640c23a62f3a-b7d23d13da0mr931934966b.63.1765805473126; Mon, 15 Dec 2025
 05:31:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203122313.1287950-1-robert.marko@sartura.hr>
 <20251203122313.1287950-4-robert.marko@sartura.hr> <20251203-splendor-cubbyhole-eda2d6982b46@spud>
 <CA+HBbNGdd-u=4PtXZtirqRkFBhKwraa5gV-32QChDDjfVARPRg@mail.gmail.com> <173412c8-c2fb-4c38-8de7-5b1c2eebdbf9@microchip.com>
In-Reply-To: <173412c8-c2fb-4c38-8de7-5b1c2eebdbf9@microchip.com>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 15 Dec 2025 14:31:00 +0100
X-Gm-Features: AQt7F2riRZ6DJPf2Vnc_Dn8R65r6BvztUnfjR9AMbbKZbxLcNxf74LNl1xmAB1k
Message-ID: <CA+HBbNFzETiySdw-VuzMJx6vdhPU_3d_aU2v9eJ4-_OBaTn2mA@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: microchip: add LAN969x support
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, claudiu.beznea@tuxon.dev, 
	mturquette@baylibre.com, sboyd@kernel.org, richardcochran@gmail.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, daniel.machon@microchip.com, 
	UNGLinuxDriver@microchip.com, luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 15, 2025 at 1:32=E2=80=AFPM Nicolas Ferre
<nicolas.ferre@microchip.com> wrote:
>
> Robert,
>
> On 15/12/2025 at 12:36, Robert Marko wrote:
> > On Wed, Dec 3, 2025 at 8:21=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> >>
> >> On Wed, Dec 03, 2025 at 01:21:32PM +0100, Robert Marko wrote:
> >>> Add support for Microchip LAN969x switch SoC, including the EV23X71A
> >>> EVB board.
> >>>
> >>> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> >>> ---
> >>>   arch/arm64/boot/dts/microchip/Makefile        |   2 +
> >>>   .../boot/dts/microchip/lan9696-ev23x71a.dts   | 761 +++++++++++++++=
+++
> >>
> >>>   arch/arm64/boot/dts/microchip/lan969x.dtsi    | 482 +++++++++++
> >>
> >> The majority of devices in this file are missing soc-specific
> >> compatibles.
> >
> > Hi,
> > I missed this before.
> >
> > The majority of the devices are simply reused from the AT91 series, so
> > I thought it was not required to
> > update all of the bindings to add the LAN9691 compatible.
> >
> > If that is required, I will do so in v2.
> Well, history told us it was better (in addition to be required by DT
> best practices). Indeed, even if the same IP block is used, sometimes
> integration subtleties pay game with us and a dedicated compatible
> string saves us.

Ok, I will then update the required bindings and include them in the
series in v2.

Regards,
Robert
>
> Regards,
>    Nicolas



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

