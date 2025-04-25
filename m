Return-Path: <devicetree+bounces-171124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D70A9D54E
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 00:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD306189AEF3
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB01128B4F6;
	Fri, 25 Apr 2025 22:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="StnhT1Dw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DD3285412
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 22:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745619396; cv=none; b=B26+VekDmJQ8/Pfk9gKU+AwS90FP2O1I7fGUaIg/2EZqbE28wna5wgjkMUq3b38EgTLMzJXVGXyucx7NCOoCbIKCr/YwcVLN+ABPWoC5b6k0V5c4reYkcKMabWt+yQdOLcQP8mVFuw1R0pVTQ97B3zVd4nL3pKZwh5d0tj82wV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745619396; c=relaxed/simple;
	bh=W30Elu0BPXUZLgDMxTxpH20ZLIU0eYAyb8+7H14ZRjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=akaUYciEYbPSV/EamuxHNf41TcuvqRiecjOg48pCw9aiBp2I02ywOdx7VUr2F+AGZbGYnwruCnW3PNxWBShleBBA6M2r993hjqijPVqC32NPKrjmHhg3DyDMxH6M5oMMqyzvuWxwjLfdCGlBh2fMwAzRTpOAkd6kfq3hiRD6/Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=StnhT1Dw; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-736b34a71a1so3241720b3a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1745619394; x=1746224194; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WgXD6hkPKUGRTdY1zhGVp/H0Rv3gRoc0tuevqLhxiZs=;
        b=StnhT1DwrphxpWMTf+Y/JEzLMG3JkwBbljfQQAsYTbqZDhS1cuVzVU1fOo8EYeDSLt
         sV7GuBSYBsbN5NnUZ+rib0r4MaNOQDErIkvHEIUvBbFWGBryhdeOLPmt+HckATBax3cs
         n/Xy7gmfZ75jVfiSYnjfXPgo9u/3cD7J0RK60hDW33t8ScPXAcCiz9xHZ95ASnnZRED4
         ORWuKX5gvag2Xa8mU7pxlGyAzL0HNXOlZfjPCmPrbxqWpP+21/fh27cFTPzvz3R+HSGo
         tDfR0FD/0VNhv2zEX7vgucuXdg8d9uQSj+UTCfiOzK0HqsjUdDgelc8KEXZMuOiKUKhv
         CeRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745619394; x=1746224194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WgXD6hkPKUGRTdY1zhGVp/H0Rv3gRoc0tuevqLhxiZs=;
        b=elS+aJKwadBmcU1pMRqD7cO7brjW3VcRSKRT4KsA47T3Tz5vTkCYF3BtWipDE1BKIl
         8iv0Y1m+EkltJb/S+GZLFMiE6MMwXi8a1OlwBQvFCnk3oHVNl2wnmMHdUNAzWCehsVaM
         1EP6S5skGgQXovivPLnG3WDrgT/Pd4HxNkyC+qJjjIi5cttQypH2+4CdSXwkJBjsOueg
         1jVQ/H0af4S7mQsb41CrZnv3PIzPWGZlHiGNEhs/BwkwOEJuID1nzEvYIEn3eiuhzFqd
         O/Sp4lHSiShWTTZ46MvXvnQ8ko1cfS98Qjlp3ypGKQPGpx6mCkDb8h0kJF8BZlhHHyPG
         mA0A==
X-Forwarded-Encrypted: i=1; AJvYcCXDPR7hkA60v5li57PQjbCCpOEAUeGjdzk5wwpgE6lT42/cSLUa0N1s96G2Y1kmyxC+um9JeyjR2XFf@vger.kernel.org
X-Gm-Message-State: AOJu0YwMlQ37GjCSyl4gb/ABHDOej45J1WBe8UDZVP9FL5x3AD48OaSm
	gVk5k3pD6vKXxuuBQIpHTOEOuLQJ4ICnSVBayF+w8MHP0hNq0E13JXNoJ/+74EcYQeDr+YrGotl
	sYJh+2lBgCLsjvH8/L9K+Rbo5deGVW+bjmO2MNpqem98u44CFAxOvQA==
X-Gm-Gg: ASbGnct4taJm4r0o2TZuiXbi9NtrFG0LloBV2gFJIxFfcuqMRkEolx/EZdYcRr5qUjD
	mcs1mrIHZ2/XAxfgyjl9uLCfO2wqDYJUJs5oqv/mBNTOK/+WCF4YtSIpORjxVubt1C9lpYmfyD2
	0jO/fHVz8FaJsfl7Za7CZBqjG0vlXpLClXKDdi/sz/fbJHg+oa3wwXz4b4
X-Google-Smtp-Source: AGHT+IH2N4ln+J9HVbv+8+sHBp1P/isBj0gkTrIzOTOJCwbUCAtU7RG/jp9P807JAV09WP22RBF21hsTQbnlFLBbfcE=
X-Received: by 2002:a05:6a00:218c:b0:736:5c8e:baaa with SMTP id
 d2e1a72fcca58-73ff7255d1fmr1386610b3a.2.1745619394656; Fri, 25 Apr 2025
 15:16:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250415232521.2049906-1-william@wkennington.com> <79400920-22b4-4bce-b204-c58087495c22@kernel.org>
In-Reply-To: <79400920-22b4-4bce-b204-c58087495c22@kernel.org>
From: William Kennington <william@wkennington.com>
Date: Fri, 25 Apr 2025 15:16:23 -0700
X-Gm-Features: ATxdqUG71cOtnC9xnSIu_N-FLI_cL9Ilck2vh1utGY_dfZmPABCB1UECKPYRuu0
Message-ID: <CAD_4BXiaqLa563LoyGsPV=C164KxREzs0H+VcXPGR9QagzKs0A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Fix nuvoton 8xx clock properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Tali Perry <tali.perry1@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, openbmc@lists.ozlabs.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 11:55=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 16/04/2025 01:25, William A. Kennington III wrote:
> > The latest iteration of the clock driver got rid of the separate clock
>
> I don't see the binding deprecated.
>
> > compatible node, merging clock and reset devices.
> >
> > Signed-off-by: William A. Kennington III <william@wkennington.com>
> > ---
> >  .../boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 16 ++++++----------
> >  .../boot/dts/nuvoton/nuvoton-npcm845-evb.dts     |  8 ++++++++
> >  2 files changed, 14 insertions(+), 10 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/=
arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> > index ecd171b2feba..4da62308b274 100644
> > --- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> > +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> > @@ -47,17 +47,13 @@ ahb {
> >               interrupt-parent =3D <&gic>;
> >               ranges;
> >
> > -             rstc: reset-controller@f0801000 {
> > +             clk: rstc: reset-controller@f0801000 {
> >                       compatible =3D "nuvoton,npcm845-reset";
> >                       reg =3D <0x0 0xf0801000 0x0 0x78>;
>
> So now it lacks quite a bit of address space. This must be explained in
> commit msg.

Can do that when i make the updated series. Basically the old value
was just never consumed by an actual driver and the chip reserves that
entire 0x1000 size address space for clock registers. However, only
0xC4 bytes (0x78 was incorrect) of that space are used for these
registers.

>
> >                       #reset-cells =3D <2>;
> >                       nuvoton,sysgcr =3D <&gcr>;
> > -             };
> > -
> > -             clk: clock-controller@f0801000 {
> > -                     compatible =3D "nuvoton,npcm845-clk";
> > +                     clocks =3D <&refclk>;
> >                       #clock-cells =3D <1>;
> > -                     reg =3D <0x0 0xf0801000 0x0 0x1000>;
> >               };
> >
> >               apb {
> > @@ -81,7 +77,7 @@ timer0: timer@8000 {
> >                               compatible =3D "nuvoton,npcm845-timer";
> >                               interrupts =3D <GIC_SPI 32 IRQ_TYPE_LEVEL=
_HIGH>;
> >                               reg =3D <0x8000 0x1C>;
> > -                             clocks =3D <&clk NPCM8XX_CLK_REFCLK>;
> > +                             clocks =3D <&refclk>;
>
> Not explained in commit msg.

Yeah, I can do that WRT using an on board refclk instead of a value
that comes from the SoC.

>
>
> Best regards,
> Krzysztof

