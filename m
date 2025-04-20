Return-Path: <devicetree+bounces-168815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C39A9475B
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 11:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED44B3ABA83
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEB20192D96;
	Sun, 20 Apr 2025 09:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bzbDXCf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9961CA9C
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 09:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745141605; cv=none; b=l6y1B1amzAJpWk5tYhe8U8TmfPBHzpNhf1o2oDYYAe5nPH98n1GU3n5owFp05P4Ec81qiLoyXYLzrQ55cULn2Z3v1oJKFhMqc48vMnwuYwmXZzPSQYaCbjHqufmto1YP/5GZmzDXum3eyGoJeDDTfgfEZXVjLvbS/h+eIOC5znA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745141605; c=relaxed/simple;
	bh=CERzLF2HMMagvpVmZ72rVu4QgARchQ1fUnnFwJHdGug=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k+EJiPDQgvUIC5IX6Jy9cgwOKLzw9LeIRi0MsMqa+Sa4xpv0rwNxaJhRfqWmGfasTuJmBrb7noxmsQ6vI99pLq1Y1i4xgjhUU2pCuP2Q54rkGX48vv6XHOoeuUfw9W0YhSn9OW1oil/ezvndOnlsrVKhrR0ukRoo3MRRLLlNKGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bzbDXCf/; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac2902f7c2aso479190366b.1
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 02:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745141602; x=1745746402; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/8TOZ1wqavZra/je2htJyl9Z7dmGZ7iMnPc5kvx9b5c=;
        b=bzbDXCf/soA6AvLAj0QQBlMA2Pne5PX2zQCd+NVb6TtYibyBFTZdEgAp+mr1uAn43y
         h/wk/2qeukXsJy3HY7EGiu4XXccA//9hUFLFIoml+Iqh2bOXCyz3Rv0fkYeNa/Q54vw9
         nAasv+nN5pLW/lp+NoTeEoGKSwj5QBSQVTH7Bby98Nxgt8eIFHAyu8eu/3dz9fwEWPTS
         iqtLJfC4z+G6G4OCeOOPQBYVDNsS+UM+aS3U7aDBuj4LQr06vmB+dU0J35UK2jIXoZ6C
         eXwBHnZQUUtgtOEoslNwBMZjfNld7LZBFkdZHkX7uCLUTBKHsI4zKJvPwy0UK7CrpLSg
         BUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745141602; x=1745746402;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/8TOZ1wqavZra/je2htJyl9Z7dmGZ7iMnPc5kvx9b5c=;
        b=V9u/GE1P3IgEywZxbwttCDdOjv1WHSQq1Gtb5TwMyy8d+2T4q4bRiaqT/dqNRjnKfR
         X22uRWckdCFTrzWlLZQtto5BwMSomzZ3Du9HR/Yc/XFOhGlzzEvxldifUlIIPK9+EiTc
         9+XGDQg/b7/HCr8NX78gk3AkSOnhJ6++3B4JbUd0ibzR2xq011n+S4joxVUMnYptsmtR
         wd678scCuCP1/QdKLeRozCn2HGDsIjFs16gw6FqTY4JBtLUZxWlLqFzO91XeQSFbvEvr
         LJ+IYGA/jmLDJymQVyhBWUyGCz7Ym2zPCD7HA4tkBIiLQOgv2bbble6UnrG/ZJWyovzr
         IalQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgp1rRVPEaxqnCYty4zQXEhcW5o62pNt0v1AgSBx1nJNGgruBJfxPcuZWV9ozRj0bcoobFhHViAdRf@vger.kernel.org
X-Gm-Message-State: AOJu0YytOg99j6ihhSwUaV8alWFv0BRyPXaYecOJMROx/kwSntbFr0uq
	191HfwnsylKRGhl6tSH3Nkbx0/3jXgyrbqAkoLOIeu61HJZfrlQbAxQlCl+is7UUQodazu2Jc3L
	FnldQ2+ko+7RP7CvW/6qmDTVJAsJ5ckr3
X-Gm-Gg: ASbGncvVOSGJMENbSdNYtbfiBQ0lVSxxbNdRiZGzq2JxukX85ErtWSMkbQTCgglK9y6
	5mm9RyqgGLt6fzS0C9hswX8xxvDk98ROAYulUQjTYgd5PTIY4Ii9O20ssioVHjxkl+aPsNHRlRp
	IwmvvhPCySsiQ3/9+cP8KEIvzBsyH9IPsJdVx4F+WZJKsBj/tvLW7vHSM=
X-Google-Smtp-Source: AGHT+IGX10xsrDu5V/UjkEupGH0LyUzW3ha9EoTXPcUMoBfunRTwSAC3I1NonXEe/hPiG88ngXa6JOs1oqW3vl3TGZA=
X-Received: by 2002:a17:907:1c07:b0:ac6:e20f:fa48 with SMTP id
 a640c23a62f3a-acb74bdcde0mr706379066b.33.1745141602109; Sun, 20 Apr 2025
 02:33:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250419160051.677485-1-pbrobinson@gmail.com> <20250419160051.677485-3-pbrobinson@gmail.com>
 <5dd7825c9fcc83764fbb4b0b53704152@manjaro.org>
In-Reply-To: <5dd7825c9fcc83764fbb4b0b53704152@manjaro.org>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Sun, 20 Apr 2025 10:33:11 +0100
X-Gm-Features: ATxdqUG50NCyTDEBxJuIUN4T06VkkXzEZg9j2zhXsssvhxuy2mRvejdomh4GKDo
Message-ID: <CALeDE9Nyt7Di2_u-Vf=6OCAg-6wmbz75Cs_MCfZrk6upbD9nZw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Dragan,

> > This adds all the pin mappings on the WiFi/BT header on
> > the SoPine baseboard/A64-LTS. They're disabled by default
> > as the modules don't ship by default. This includes, where
> > they haven't been already, UART1 for BT and mmc1 for WiFi.
>
> The patch subject should be improved a bit, to include
> "Baseboard" as well.  Having just "SoPine" is a bit too
> vague, and it should actually be written as "SOPINE"
> at all places in the prose.

It literally has baseboard in the second line of the description.

> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git
> > a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > index be2347c8f267..64d696f110ee 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > @@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
> >               regulator-min-microvolt = <1800000>;
> >               regulator-max-microvolt = <1800000>;
> >       };
> > +
> > +     wifi_pwrseq: pwrseq {
> > +             compatible = "mmc-pwrseq-simple";
> > +             reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
> > +     };
>
> Is there a reason why the status of this node isn't set to
> "disabled"?  Or even better, why don't we move this node
> entirely into the proposed DT overlay?
>
> The required reset procedure actually depends on what's
> found on the add-on module, so it should belong to the DT
> overlay that defines the add-on module.
>
> >  };
> >
> >  &ac_power_supply {
> > @@ -103,6 +108,18 @@ ext_rgmii_phy: ethernet-phy@1 {
> >       };
> >  };
> >
> > +/* On Wifi/BT connector */
> > +&mmc1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&mmc1_pins>;
> > +     vmmc-supply = <&reg_dldo4>;
> > +     vqmmc-supply = <&reg_eldo1>;
> > +     mmc-pwrseq = <&wifi_pwrseq>;
>
> Of course, the "mmc-pwrseq" property would then also be moved
> to the DT overlay that defines the add-on module.
>
> > +     bus-width = <4>;
> > +     non-removable;
> > +     status = "disabled";
> > +};
> > +
> >  &mmc2 {
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&mmc2_pins>;
> > @@ -175,6 +192,14 @@ &uart0 {
> >       status = "okay";
> >  };
> >
> > +/* On Wifi/BT connector, with RTS/CTS */
> > +&uart1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> > +     uart-has-rtscts;
> > +     status = "disabled";
> > +};
> > +
> >  /* On Pi-2 connector */
> >  &uart2 {
> >       pinctrl-names = "default";

