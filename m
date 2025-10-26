Return-Path: <devicetree+bounces-231071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2FCC0A18F
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 02:07:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19FEE3A607C
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 01:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE2B286359;
	Sun, 26 Oct 2025 01:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="u/exQROQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA47D72605
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 01:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761440825; cv=none; b=sPZ5oNNcG8HEbIEuOl4AGVJRHCQwevhQhk9N+VYgd93KaN2gBkCL2iYszb6oDrh90WdPd17mknsSfKemlhXPE7suXTabXluev2xcDo0rpGjR3Y3MElkoCyVejMipCOljBXFdeg/TczJxCRMlt/FzLuj8KJoIpQ4fvbMA3J15eqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761440825; c=relaxed/simple;
	bh=h1BWNVuiQqVThhPkqmgYTLIaAh0PxR2NeIciEEycIA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TgGj53uTIaPiK8bjQA90mI0Z7QfKmQ0kkBR1Y5V//x+DqUH/oA6vGBC+WEDrPCLMGWfVb2/P6+/r/CItffxP7Ho+KR1xrTZaAdFGt8nZ63AlPrE+X1fW5YWyYyOGOvbu2PmnVb9F6iaOQi6YNSfdhF1gzTFjw4exc8WX7r2W/xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=u/exQROQ; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-63c4c346bd9so6675671a12.0
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 18:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1761440822; x=1762045622; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HJ61RpudmfZrh/HJbvgg8/1ZTRvQLwFHMelmv5U31PQ=;
        b=u/exQROQohikUYw1lGsuL3/C2DIsgF62hp/haB20D3gLhr7fbZoTr6fl5HiZUdQAm/
         yEtwF3uFraCzGWQ5AYxUEPUk79Kdd6xZ7Eah+jXx7uYseYVIEvIY1Q3AsRqyCA4T3aIf
         ++x8G4ir4yrkCPaccRDvpmTNhBItNgNulWbjfGCxb1xlvxkwfiJvHD7RGZYu9r79S5uG
         BFwl2SIEbI43nBLo3Hb+6zlXQjUnUgDG0nWxCL/hJaKoe/KXFlFGvo7tnHilXwXK5K/M
         RJ/6PoFyYvqMrR6Td0IeJDI2+xtTC8NUI5eb95EgX3W1nAjJCjDpV8nLi33CdC6azwn8
         qq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761440822; x=1762045622;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HJ61RpudmfZrh/HJbvgg8/1ZTRvQLwFHMelmv5U31PQ=;
        b=AsNbEZIZvkf8XXAZY54g8g8sQyfJHfwQLgi0xJa1DfJ2yLGluMiIoaHw0TRgVztvv/
         1oyHPH3QteVWarKQN1iaH2DKeKPU+5u7Tljn0XGaIqwzFwVOr2WSfYPhzUuU3iOH35dG
         SOY4/fQHB5pdtMQ6PWwJEVsLOJViUTFuPYnKjhgMqeYNnRqgbZImF1lPgxTbumdIGhda
         VLzV3r5Gms0gdsYDA73EdJ1JqKvMqd4qk8YK7xvkvivLcvMzMr3gHCHeoHr3pWDNkIPk
         9yJHhKt91aqfMh/I7o3YE5M/np7UeklmwoomgAEKzT5Y5iTUD8pcM908xDvdmuSihR0e
         T3Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUp6W1666fH3wd1C6jUMgtDYyPGdL91lBfiExZ4t0/f7Ier1v7IrI0Z/78XbjI+tPp+w89nK2rrJt3q@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ+1XhbtNLQeQYAGpC7vvF5a06IpyJ/kjdjQJkb3sB5/UHW12S
	281nT3tlUQGgDPwtu3NhG4WD9MPH5+zaphJyeNQSPfuFP1qR4jkbv5q6jmlCWCWbAMbkfmDLQ6A
	T90RHzhKDm9KupT3PXYtkvWPF9/o2eSg8QLCsEI8=
X-Gm-Gg: ASbGncv+3SgGBF/H6+LLIYPolf994vOHaHAhE72M0lUEe181aTZzOq/eI1m7Wz8HWTl
	LqsW9ZZG+qSd9kOWWxI6asSqHqYxVlbAm6njlTIavr/pXhpk9k2j5t7gTEA1rcriQ723AB4yIfi
	vOUU7klcGMN/+jW2YWWidQko2xZPF4vWPtI54a1VJD5uT/Vexjsu5K8YOce6ym5qlrphh1HmrGY
	lGjIn2KQvzV508bC9GWOJMiZ7wDVmeYthLQ0RI14OkH0ZiAbJklCrWgMGdGJotX
X-Google-Smtp-Source: AGHT+IENhmql/pNlk0Cy8pruLhuU9WbGD4F06YxuTssPEuvz4gMG6F2ON9DfPG/aPIMA/9whw/Uc2noxL2TdxgjPjag=
X-Received: by 2002:a05:6402:2787:b0:63b:efa7:b0a9 with SMTP id
 4fb4d7f45d1cf-63c1f633e3dmr31828969a12.9.1761440821097; Sat, 25 Oct 2025
 18:07:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_eth0-v1-1-0d8fdcbceb9a@ideasonboard.com>
 <CAMuHMdWZD1m6t8MnYTA83RV=h9G9o6M3KSZjO32rRjOpz6px+w@mail.gmail.com>
 <bcdc9a86-bda1-4646-9ccc-1dc00a710b44@ideasonboard.com> <CAMuHMdUDuuXncX4sbd6oa+8KcS8x+1Sp-ahmvyh8fRdQt1GqKA@mail.gmail.com>
 <8b984f13-0498-4cc6-a64e-e2b6b147c346@ideasonboard.com>
In-Reply-To: <8b984f13-0498-4cc6-a64e-e2b6b147c346@ideasonboard.com>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Sun, 26 Oct 2025 10:06:35 +0900
X-Gm-Features: AWmQ_bkvr4ujmOFdrAKUAnfTnu6JFNfmGrsL4ZHx1rZI0CaBJutKAJ8Pr6Jq1lw
Message-ID: <CABMQnV+z=8-ORRGTjxM=6iP+6+qbJa-N_C0csi8K53wpFwLp_A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g057h48-kakip: Enable eth0
To: Dan Scally <dan.scally@ideasonboard.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I was late in noticing this and the Kakip patch.
And Dan, thank for your patch!

2025=E5=B9=B410=E6=9C=8816=E6=97=A5(=E6=9C=A8) 19:51 Dan Scally <dan.scally=
@ideasonboard.com>:
>
> Hi Geert
>
> On 16/10/2025 11:40, Geert Uytterhoeven wrote:
> > Hi Dan,
> >
> > On Thu, 16 Oct 2025 at 12:23, Dan Scally <dan.scally@ideasonboard.com> =
wrote:
> >> On 15/10/2025 13:32, Geert Uytterhoeven wrote:
> >>> On Fri, 10 Oct 2025 at 13:11, Daniel Scally <dan.scally@ideasonboard.=
com> wrote:
> >>>> Enable the eth0 node and define its phy.
> >>>>
> >>>> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> >>>
> >>>> --- a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> >>>> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> >>>> @@ -50,6 +51,33 @@ vqmmc_sdhi0: regulator-vccq-sdhi0 {
> >>>>           };
> >>>>    };
> >>>>
> >>>> +&eth0 {
> >>>> +       pinctrl-0 =3D <&eth0_pins>;
> >>>> +       pinctrl-names =3D "default";
> >>>> +       phy-handle =3D <&phy3>;
> >>>> +       phy-mode =3D "rgmii-id";
> >>>> +       status =3D "okay";
> >>>> +};
> >>>> +
> >>>> +&mdio0 {
> >>>> +       phy3: ethernet-phy@3 {
> >>>> +               compatible =3D "ethernet-phy-id0022.1640", "ethernet=
-phy-ieee802.3-c22";
> >>>
> >>> The first compatible value corresponds to a Micrel KSZ9031 Ethernet
> >>> PHY, but according to the block diagram and the picture in the Kakip
> >>> H/W Quick Reference, the board has a Microchip LAN8830 instead?
> >>
> >> Ah, my bad...I thought it was the same as the EVK so I copied from the=
re. I think then that this
> >> should be "ethernet-phy-id0022.1652" (based on reading PHY registers 2=
 and 3 with phytool) and the
> >> other properties look to be KSZ9031 specific so I'll drop them and re-=
send
> >
> > Hmm, include/linux/micrel_phy.h has:
> >
> >      #define PHY_ID_LAN8841          0x00221650
> >
> > drivers/net/phy/microchip.c has:
> >
> >      .phy_id         =3D 0x0007c132,
> >      [...]
> >      .name           =3D "Microchip LAN88xx",
> >
> > I haven't found the ID in the LAN8830 datasheet yet, it seems to be
> > buried deep...
>
> Indeed, I couldn't find it anywhere either so resorted to phytool.
>
> >
> > Which PHY is actually mounted on the board you have?
> > Can you inspect it visually?
>
> It says LAN8830, plus a couple of other strings.
>

Yes, this board has a LAN9930 chip.
Since this chip's PHY_ID is 0x22165X, I believe the PHY driver needs
to be modified.

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

