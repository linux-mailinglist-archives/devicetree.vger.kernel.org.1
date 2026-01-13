Return-Path: <devicetree+bounces-254393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C5D17CCE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6F0DB3003B18
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B93A341AB8;
	Tue, 13 Jan 2026 09:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E6BfDETu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25E41EB5FD
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297107; cv=none; b=RpVBor2njAQXGl4HUQK+jnw1UBrddByt67t4guDGslfTYuVh2i4mxlOqkG6Yu8pen3MuKkY81CNawyL8pSjOGEO7wrqyfXz0rdumw24OZ27HVtjeHusn2lOYlwcgGJ26LkFIYaCHIzejPoYkb3wDK9C21o6IhzuAtysY+yRw2Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297107; c=relaxed/simple;
	bh=3sZ87tkjULAE02/8O2owzvHX55sNt5JMqodLHGbF6bM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rsNJZ7zo8CStfTxqBA4A3M1SngkgOhH/G7IYr/IqpCg/he/bi9V4Z521MjsBDK78pC3SmdykeSN4FuSiQXISJ2fm7iexG660UcpQE4fY2OmczSqPCBtTAg5Tkb57UbxTkYlep6VOjn0kEf1AS1y/7QOfrBQBcqxert4E+BfC3p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E6BfDETu; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-37fd6e91990so71345431fa.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768297104; x=1768901904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w8KWgyjMXHabGU6AkOW8T5Mt3kkTj5EnHFmAPDuCp/M=;
        b=E6BfDETuO0CpuebB4wryylo8Ps8bF11Jq87wPXUMrrgBzfP2gm0biS08ZX8VnXKtss
         ytKoQNSfbAHo/aTs/wah5da/OmPgjHuemr+Rr4RakaFxHOSsBWtbsYMPw//6j8HgBkwC
         ZApF9DNKzfkVnkNHs0xLFeyI/8XoBpprihem+2r4qctJ8Tg9OwRdKiHePUe7VT8Xjeqv
         /PN9bnda6n2hoTNSCN/pOuG89FMQWYBj55+QE0FkeqLYs2HVRmv5gY6czC8grS+zRYLU
         bNS/EExWbVoOq2WF5/39osLEDylelw7VDzMM3X6AmDDLp2PZ0ow7k+t6ALhPT4Rx7Q6u
         Ziaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768297104; x=1768901904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w8KWgyjMXHabGU6AkOW8T5Mt3kkTj5EnHFmAPDuCp/M=;
        b=ujEiw6JWQoj8rrr779fVY9jKxEENpulubkGNu40QNZdUkbp3FxQOx2F9fCA+hZq31s
         mj2xELUtSS1tcJPpYaqowzXJYH9MPY+zQXXCaZf3M+bkiynDfFOeiM3hd463Nud8y4Hw
         NzbkOFUjWQh/XOgFJ1BifckeXb0ubcrClng0NlaDpM6d8ZdwX0pSLIQbkMDu5jZqB2Id
         4apkJQHvRN71VbAFsWdu6dTL4fZNAyZH4L0BNg688WFZmllBO0hRTOK9jigwxUG+clX4
         zc3tEvaySzgmEKa5et98F9o/0GB3WaQhG1JRAOq8hY6mhu0vHZsX6Z8SGpA4+5loCskm
         JNFg==
X-Forwarded-Encrypted: i=1; AJvYcCXrlCpVzZkSg8VN++H00Mjc+sO1BcmJABEGxSfg26OyU4Jyfepxbi0Bx42wyzrZAOfkb5FPOwLMuMY6@vger.kernel.org
X-Gm-Message-State: AOJu0YyaHTqlMHSuADXjzTVCzKOffP1Z0cDarSRDazM2mlg2ot3CgIw4
	IBEfdyCwb7KBMWi9ntPc9v8q3UakqAnivanBt3Jg6fIon6QmXfWb97pQplOCuWejKKDg07awzG8
	z5Zsj5ae7aQwdFRTMG+Zrnd6ZkjJH+F4=
X-Gm-Gg: AY/fxX51ulTavgOd9Ndu91CAa6telAkdJIGD4Bet/5dbjNJXnw23yqUIEx2Nxj+qdEJ
	x9gdyE8OTp6WYJh1sw6PO5dMB0UYDpMmMHequQz8ejpxmtdbKlFgy5ijU6rF1gnrJFbHuIbbyeM
	4CfDQdGPHa2t//xeuh34GjNx+ayPNVLattM4DOPROhUQPwlBT+plbLtf/lAGyD4fpZF0nhgfoyE
	xzEm4AYEFv12J/w60REjhuRRnhRLKpRlvqPY2FrBcpWfmsjd7kfC9NXNXdKdFtSspVn
X-Google-Smtp-Source: AGHT+IH5vuof9lI6QD87N6B7LDe9P2FN4oZsCmNAYwjolnj651Y9hadagnFcBF2OE8xJNcMfTyaxXnX2atsCncCn3Rc=
X-Received: by 2002:a2e:bc21:0:b0:383:1d66:c204 with SMTP id
 38308e7fff4ca-3831d66c785mr40711961fa.38.1768297103626; Tue, 13 Jan 2026
 01:38:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113011931.40424-1-nick@khadas.com> <1jsec9ritd.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jsec9ritd.fsf@starbuckisacylon.baylibre.com>
From: Nick Xie <xieqinick@gmail.com>
Date: Tue, 13 Jan 2026 17:38:10 +0800
X-Gm-Features: AZwV_QiMouZEUcMJMc0NkPa_HjjwbFSXhGJqMCfsVehqjMCt6pkKsbPx_-HuidM
Message-ID: <CAP4nuTXUd23e6k6iqRVJw6Rcsc46+RrLGR9ZCu=o28g3u2FKSQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: S4: fix SD card initialization failure
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, 
	martin.blumenstingl@googlemail.com, xianwei.zhao@amlogic.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, nick@khadas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jerome Brunet <jbrunet@baylibre.com> =E4=BA=8E2026=E5=B9=B41=E6=9C=8813=E6=
=97=A5=E5=91=A8=E4=BA=8C 16:57=E5=86=99=E9=81=93=EF=BC=9A
>
> On mar. 13 janv. 2026 at 09:19, Nick Xie <xieqinick@gmail.com> wrote:
>
> > The SD controller (sd@fe08a000) requires a clock source capable of
> > generating a 400kHz frequency for the identification phase.
> >
> > Currently, the sd node uses CLKID_SD_EMMC_B as clkin0 and CLKID_FCLK_DI=
V2
> > as clkin1. Both of these are high-frequency clocks (e.g., ~1GHz).
>
> The reason you are having this problem is because CLKID_SD_EMMC_B does
> not provide 400kHz by default on this platform. We have been operating
> with this (weak) assumption so far ... and it was OK until now.
>
> > The internal divider of the SD controller is limited to a maximum value
> > of 64 (2^6). With input frequencies significantly higher than 25.6MHz
> > (400kHz * 64), the driver is unable to generate the required 400kHz
> > clock, causing the probe to fail with -EINVAL.
> >
> > Fix this by reparenting clkin0 to the 24MHz XTAL clock, consistent with
> > the configuration of the sdio and emmc nodes. This allows the divider
> > to successfully generate 400kHz (24MHz / 60).
> >
>
> DT generally describe what the HW is, not how you wish to configure it.
>
> What you are doing here does not reparent anything. You are actually
> mis-representing the clock tree, making the MMC device believe it has
> 24MHz on its clkin0, even-though what it is really has still is
> CLKID_SD_EMMC_B (presumably running a 1GHz)
>
> So if my understanding is correct, you are indeed setting the divider to
> 60 instead of 64, but you are still dividing 1GHz so what you actually
> get it 16,6MHz
>
> If you want to get 24MHz the clkin0, we need to assign the rate,
> something we probably should have done before.
>
> I'll send something for this
>
> > Verified on Khadas VIM1S with SoC S4 S905Y4.
> >
> > Fixes: 3ab9d54b5d847 ("arm64: dts: amlogic: enable some device nodes fo=
r S4")
> >
> > Signed-off-by: Nick Xie <nick@khadas.com>
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boo=
t/dts/amlogic/meson-s4.dtsi
> > index 9d99ed2994dfa..b87bc83b5a9bb 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> > +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> > @@ -833,7 +833,7 @@ sd: mmc@fe08a000 {
> >                       reg =3D <0x0 0xfe08a000 0x0 0x800>;
> >                       interrupts =3D <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>=
;
> >                       clocks =3D <&clkc_periphs CLKID_SDEMMC_B>,
> > -                              <&clkc_periphs CLKID_SD_EMMC_B>,
> > +                              <&xtal>,
> >                                <&clkc_pll CLKID_FCLK_DIV2>;
> >                       clock-names =3D "core", "clkin0", "clkin1";
> >                       resets =3D <&reset RESET_SD_EMMC_B>;
>
> --
> Jerome

Hello Jerome,

Thanks for your review.

I also checked the Amlogic 5.15 vendor kernel [1], it also use xtal as clki=
n0.

[1] - https://github.com/khadas/common_drivers/blob/khadas-vims-5.15.y/arch=
/arm64/boot/dts/amlogic/meson-s4.dtsi#L1358

