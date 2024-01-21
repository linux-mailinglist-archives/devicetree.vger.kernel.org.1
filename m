Return-Path: <devicetree+bounces-33516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39126835857
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 23:57:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D75952818E4
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 22:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CBC036139;
	Sun, 21 Jan 2024 22:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="UYx7Hsdo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682431DDC3
	for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 22:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705877833; cv=none; b=hgGqbCEMw4m+YW2YNXzr6EJbwQPTQd0sMWcvCIswnXkr+VJD+1IN8F+DC3LPskKcaFX8lVkR35wB4uFc3xd5PPjzWliG0GtbD3WX10FJEyLThziMmgqPKK/pG21BzvTiAOgMp1l2FyHWbpm6CRPPhKZU/Q9eZVqMGDvMGJdOqi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705877833; c=relaxed/simple;
	bh=cgZ5ysUZFWfL2yJu6wt2ND90oEx+DS2j5MeDpXsLens=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bn8bIloqK5WVj09oum1wgSwfLKj/Hi9KTyLMIzD7stZhSk9HSUjIfkz0btCxSqHYYGWzRMkYya5f+z5aHu+pj4FXZgW8OoiVlgjTaDkpBpw1hgUqRZgmQKK0KFDWloqLqyNOpR2cKmAiCfgv+p1G4KZ7TtRLMmcwhcJfry99yjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com; spf=none smtp.mailfrom=shantur.com; dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b=UYx7Hsdo; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-4b7e0f53437so496522e0c.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 14:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1705877830; x=1706482630; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3nIhznf2h9PpvWK5/Dbn9QHP5caRPajJwXiPd6lkHO0=;
        b=UYx7Hsdoa2G8JRpAURMA/XkUrKoB/b3lCLUoPhZ4Z7fzEmAaT9kL6c044JDDw7bR1z
         9tz+obO6fLXOj5rdUlAnQ/LHA6On8hGOJ+GGlOzn4h5as4ezssh9fJDcFcWor7BoFwA9
         onyi7IbcCQYmaB4Sx0ZwzF7iYx1El7nOxI8bORi9w20XzwayfekMmpaSsfWsR/E/b96O
         aJO0+w0Hk4lZCISUEuxMC3zDJBzO573HquXzqHb86Mgw9oUFnss78bNdWBANojtql9SN
         W0mMCrLDRLAY8Yo5zfFTI7/nPQrlW8HQlKGWB6bNrGv4CBfL8aRClOFKNr46R6Yigl/S
         Olbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705877830; x=1706482630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3nIhznf2h9PpvWK5/Dbn9QHP5caRPajJwXiPd6lkHO0=;
        b=vpWxAe+7945FtmGQY70vzQkc+6IXTbWWGdQenIUt9hrgi785K1PDDP6CRDTLHg7Aiu
         T8XU8666+ZPiyDAqL0ktQZMFmX/gsTKDXUSDdOqP8DvXfp+YQuOWAfIliLoxGTY4b56T
         FFwCXDHPJ95N6KuAAUVp+7ZT4luIN4jrmwliquu504LjH+CxyuQqF7+hlHw5Brz58tg9
         oBshDymYW9HoGYunbOJcm+oqFhMLoYzYJ//qETh6yAKuSP9cW+DFHAlMXFkEURGOaj9d
         G9vl4OM8Z4LkelogxLKfyciy5QwVU+Ixy3jfiOIFzddDGtx8ghI5fwDn+xV6MNQQwmXz
         RMhQ==
X-Gm-Message-State: AOJu0YyTdcJN36HlC5qNOG94TKrCAQpmJ/VGz0vIf9faXAxQmy+iuEkg
	jFPG7841qKpqBscor3fPCYrt9Vc5asgiGqoSmgeSdzTsQ36uoinDFwI3jUYofPN+/EicQqGdhAQ
	HrJ0IvJLby6EtYz7rIM2Ynb7qtHIJAv906AT5nA==
X-Google-Smtp-Source: AGHT+IGFtF6VkotjMrzG+mk/aqjQSbwfWiBlIzDY+TYgWBlGtoJ/gIyOe/XlUVC4/TVXAf0arfMrYheZwE+Il9zup5M=
X-Received: by 2002:a1f:ee47:0:b0:4b6:f0c7:62e4 with SMTP id
 m68-20020a1fee47000000b004b6f0c762e4mr511746vkh.12.1705877830153; Sun, 21 Jan
 2024 14:57:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego> <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
 <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com> <18b48da2368dbd7af20b5440d8621d86@manjaro.org>
In-Reply-To: <18b48da2368dbd7af20b5440d8621d86@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Sun, 21 Jan 2024 22:56:59 +0000
Message-ID: <CABEcMwWH+DjZtZdawXZSdd=u-zKnr7Re-urJyomRMyBxxHc-WQ@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 21, 2024 at 10:24=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> =
wrote:
>
> Hello Shantur,
>
> On 2024-01-21 23:12, Shantur Rathore wrote:
> > On Mon, Jan 8, 2024 at 2:47=E2=80=AFPM Dragan Simic <dsimic@manjaro.org=
> wrote:
> >> On 2024-01-08 13:29, Heiko St=C3=BCbner wrote:
> >> > Am Montag, 8. Januar 2024, 13:11:17 CET schrieb Shantur Rathore:
> >> >> On Thu, Jan 4, 2024 at 9:50=E2=80=AFAM Dragan Simic <dsimic@manjaro=
.org> wrote:
> >> >> > On 2024-01-04 10:44, Shantur Rathore wrote:
> >> >> > > On Fri, Dec 29, 2023 at 10:08=E2=80=AFPM Heiko St=C3=BCbner <he=
iko@sntech.de> wrote:
> >> >> > >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Ra=
thore:
> >> >> > >> > USB port regulators should be controlled by PHYs
> >> >> > >> > so we remove always-on property and let PHYs manage the
> >> >> > >> > regulator.
> >> >> > >> >
> >> >> > >> > phy-supply isn't sconfugred for the TypeC port and now that =
we are
> >> >> > >>                 ^^ configured ?
> >> >> > >>
> >> >> > >> > removing regulator-always-on, we need to fix the phy-supply
> >> >> > >> > so the PHYs are able to turn power to type-c port.
> >> >> > >> >
> >> >> > >> > Series-version: 2
> >> >> > >> >
> >> >> > >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> >> >> > >> > ---
> >> >> > >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
> >> >> > >> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >> >> > >> >
> >> >> > >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.d=
tsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > >> > index bca2b50e0a..f7273f7990 100644
> >> >> > >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> >> >> > >> >               pinctrl-names =3D "default";
> >> >> > >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> >> >> > >> >               regulator-name =3D "vcc5v0_host";
> >> >> > >> > -             regulator-always-on;
> >> >> > >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >> > >> >       };
> >> >> > >> >
> >> >> > >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> >> >> > >> >               pinctrl-names =3D "default";
> >> >> > >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> >> >> > >> >               regulator-name =3D "vcc5v0_typec";
> >> >> > >> > -             regulator-always-on;
> >> >> > >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >> > >> >       };
> >> >> > >> >
> >> >> > >> > @@ -859,6 +857,7 @@ &u2phy0 {
> >> >> > >> >       status =3D "okay";
> >> >> > >> >
> >> >> > >> >       u2phy0_otg: otg-port {
> >> >> > >> > +             phy-supply =3D <&vcc5v0_typec>;
> >> >> > >> >               status =3D "okay";
> >> >> > >> >       };
> >> >> > >>
> >> >> > >> Just to explain for me, what is supplying the "other" OTG port
> >> >> > >>         u2phy1_otg: otg-port {}
> >> >> > >>
> >> >> > >> in u2phy1 ... this one is status okay, but does not have any p=
hy
> >> >> > >> supply?
> >> >> > >>
> >> >> > > In RockPro64 there is only 1 USB-C OTG port and the other port
> >> >> > > is a USB-3.0 port.
> >> >> > > To be honest, I am not 100% sure how this all works, as I under=
stand
> >> >> > > the USB3.0 port is wired to the second TypeC Phy.
> >> >> > >
> >> >> > > Maybe Dragan has more info on this.
> >> >> >
> >> >> > I'll have it checked and tested in detail, of course, but I have =
to
> >> >> > recover from this nasty flu first.  Unfortunately, it has rendede=
d me
> >> >> > unable to even think straight.
> >> >>
> >> >> Hope you feel better soon.
> >> >> It would be awesome if we can get this in while the current merge
> >> >> window is open.
> >> >
> >> > just a small comment regarding timing. All regular development chang=
es
> >> > need to be finished and in linux-next _before_ the merge-window open=
s.
> >> >
> >> > As this is not a fix it will go to 6.9 anyway - hence no need to rus=
h.
> >>
> >> Ah, yes, I keep forgetting that the current merge window basically
> >> goes
> >> one more kernel version into the past. :)  Thank you for the
> >> clarification.
> >
> > Hope you are feeling better.
> > Just to update, my patch has been dropped in u-boot in expectation of
> > it being fixed here.
>
> Yes, I saw that message on the U-Boot mailing list.  Frankly, that's the
> usual way, i.e. having the DT issues fixed in the Linux kernel first,
> and
> then synced back to U-Boot.
>
> > Do you foresee it happening anytime soon?
>
> Unfortunately, I've been unable to focus well enough to be able to work
> on
> this, as a result of still recovering from the _nasty_ flu. :(  Though,
> I've
> been also getting gradually better, thankfully, so while crossing all my
> fingers and knocking on wood at the same time, :) I'd dare to say that
> I'm
> expecting to be able to work on this in the next few days.
>
> I apologize for the delays.  Bear with me, please! :)

You are fast in replies. Thanks for that.

I hope you feel 100% soon and no worries I was just checking.

Regards,
Shantur

