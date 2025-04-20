Return-Path: <devicetree+bounces-168787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BD5A94673
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 04:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50F483B8DBA
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 01:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1824A29CE1;
	Sun, 20 Apr 2025 02:00:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49663A8F7
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 02:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745114412; cv=none; b=EAOMj/M7KQAJGr+G6ULc2QvxoQuWtPivfBwoBEauy8wDZRtukuKjvlPpb8lLqwFJJC6slR0n0kL+GDTXS3PPnf7YX0vuxNxI1SmK0DdZpk3keq4WV4eH9/Z1hAcDXm9lQnEzOBjDI7TmvU3EatOdYTPqA8KljFBLbpODLiUPt4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745114412; c=relaxed/simple;
	bh=zGQ0p3zQpngvnxIeTQlS8kggRpSOVurioGEBZX3eZcc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=atxh7mGK22oKA6awM6Mc4M23hBqArUR/zWsgfN/NiOIKJ2T7gqqHRMo97ETmqmlBOPXnvDYXdRM613l+SMjgVYhk1wAY5XgG4bamYYwGMfpmunotJNMjXwddv2h63B2JD2luxEFx3RqIbEYdqiotY7H9G9EUljgJU+gTG20xtE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-549963b5551so3193727e87.2
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 19:00:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745114406; x=1745719206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WuUiJAprhTfd/7N1cTCz1I/bNbyZ2dvM2pkrLYnbO14=;
        b=qL+MIG4JLzHuovXm4VdziTC5kZnENVglZJ1GpbJGL0dDNpF21en0qlM2+RqzBvFew+
         c7Vlh+DW2OsJjHv64MV5yAz9x802qNNuPgVeDwWqkTcQnCjGVd8AwqHQPdQWQWNeD+4f
         hz1MSpMT58BHeBXFsKqBqCJza4bdR7RLM52iw39igrlwL7btNr4f277CH+nu0kOws9qb
         SX/ISPgAeZVATR0kIAWu7O4kb3SoSNhZGzaWt1oeyPzkj82EMq1pCHsEGb9s9guljp+P
         w/ZshFtrn6CMSKzMBXCXTngtrN0KIlN3ch+47gpvq2vWJ1Veh9dO92Pi4o8hsH9797LJ
         Y2lw==
X-Forwarded-Encrypted: i=1; AJvYcCUnppJU4zd4WxCu8jqg1SjuGa5M1XkQ1kCY9b5U+pBaWz6GXRq4XsFLhJBNy5AN2UYrL1ta8qVfU7LJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYVmqs3BLDBqNI3IpMk3VSpycGbhDXkzwwIpQ56hjTp6sYQTHT
	dTo6akxOQ1fLrUnnLrKluNlQPAPvDsWIcPvfZzw1V5McwYu57hOAkbfyTILJ
X-Gm-Gg: ASbGncshEBta4xxGWATl+fkeFGYor9I3d6JqEy/FuxJz6PlyXgFNyBv/yGPOaIdcZqy
	q/CbIwcuIRp+4FYhCFywxda2H27w5IcCAQk/rAsoyQvIdKL00gL1AK2FTSmvHJ6Bcnh8k90jokt
	+Wg9BO7WRlxCHLCPS6xPIt6vMxSiPpdZ1fziu0nCHwY+T9cb+nMQlDg1egPmrGGQnSIKi70+t3Q
	rAfII1GWgv60Xmbx6qLUtmHmBt8aWWXMDQRMsmqDFjc+qmoMCjzThnpNhTTryETps8IuzX9AwBK
	dhuak1xBvod+aUi9WmM8hvUh6waOS4Owr/kVXnx0iTDshPQCnpoJoDwoFI4PzvXOHYwvpYudoZ0
	3tkbG
X-Google-Smtp-Source: AGHT+IFuBKrRGKghjATcrAVaw7NdS19GhDaE7RRIPnbbohJx1DrweT8Yzyv9SVrV/Jb9c2oVwh53gA==
X-Received: by 2002:a2e:bc29:0:b0:30b:e983:9ba0 with SMTP id 38308e7fff4ca-31090501a60mr21769531fa.23.1745114405567;
        Sat, 19 Apr 2025 19:00:05 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3109084d1d0sm7057151fa.88.2025.04.19.19.00.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Apr 2025 19:00:04 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-549963b5551so3193698e87.2
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 19:00:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUOvoL+p48YvcpYC/IuXCwuA9uZGYimCXCbOqqC6nA9QDXO1C/IUf0WQfu+ZVtChHfmdoqBPuZA1Lry@vger.kernel.org
X-Received: by 2002:a05:6512:308f:b0:549:7d6d:3db5 with SMTP id
 2adb3069b0e04-54d6e634e96mr1867868e87.25.1745114403930; Sat, 19 Apr 2025
 19:00:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250419160051.677485-1-pbrobinson@gmail.com> <20250419160051.677485-3-pbrobinson@gmail.com>
 <5dd7825c9fcc83764fbb4b0b53704152@manjaro.org> <CALeDE9M_c7556sTdTC37Ce5vzLC2E8SV_P-J2CtFiUksdM_71Q@mail.gmail.com>
 <9380495a5dd09c6ab08e0a8cd315bf45@manjaro.org>
In-Reply-To: <9380495a5dd09c6ab08e0a8cd315bf45@manjaro.org>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 20 Apr 2025 09:59:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v65s8d_jA3JveqTWUUGkXrAs6mBuNTwP1DahfLNz+x8sRQ@mail.gmail.com>
X-Gm-Features: ATxdqUGNwcZRn9djcXgz8WhuVq93RxzgStGeSJRbMh_1bf7iGfQQ1FrDXrf-rrs
Message-ID: <CAGb2v65s8d_jA3JveqTWUUGkXrAs6mBuNTwP1DahfLNz+x8sRQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
To: Dragan Simic <dsimic@manjaro.org>
Cc: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 20, 2025 at 3:57=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> w=
rote:
>
> On 2025-04-19 21:26, Peter Robinson wrote:
> > On Sat, 19 Apr 2025 at 19:25, Dragan Simic <dsimic@manjaro.org> wrote:
> >> On 2025-04-19 18:00, Peter Robinson wrote:
> >>> This adds all the pin mappings on the WiFi/BT header on
> >>> the SoPine baseboard/A64-LTS. They're disabled by default
> >>> as the modules don't ship by default. This includes, where
> >>> they haven't been already, UART1 for BT and mmc1 for WiFi.
> >>
> >> The patch subject should be improved a bit, to include
> >> "Baseboard" as well.  Having just "SoPine" is a bit too
> >> vague, and it should actually be written as "SOPINE"
> >> at all places in the prose.
> >>
> >>> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> >>> ---
> >>> .../allwinner/sun50i-a64-sopine-baseboard.dts | 25
> >> +++++++++++++++++++
> >>> 1 file changed, 25 insertions(+)
> >>>
> >>> diff --git
> >>> a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >>> index be2347c8f267..64d696f110ee 100644
> >>> ---
> >> a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >>> +++
> >> b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >>> @@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
> >>> regulator-min-microvolt =3D <1800000>;
> >>> regulator-max-microvolt =3D <1800000>;
> >>> };
> >>> +
> >>> +     wifi_pwrseq: pwrseq {
> >>> +             compatible =3D "mmc-pwrseq-simple";
> >>> +             reset-gpios =3D <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2
> >> */
> >>> +     };
> >>
> >> Is there a reason why the status of this node isn't set to
> >> "disabled"?  Or even better, why don't we move this node
> >> entirely into the proposed DT overlay?
> >>
> >> The required reset procedure actually depends on what's
> >> found on the add-on module, so it should belong to the DT
> >> overlay that defines the add-on module.
> >
> > But the pin itself is pinned out through the header on the device.
>
> Good point.  On second thought, the right approach should be
> to reserve the reset pin through pinctrl additions to the
> board dts files, but to move the "mmc-pwrseq-simple" nodes
> to the proposed add-on overlays.
>
> You can have a look at rk3399-pinebook-pro.dts for an example
> of such a pinctrl definition and its use.

For sunxi, we don't add pinctrl nodes for GPIO usage.

ChenYu

> >>> };
> >>>
> >>> &ac_power_supply {
> >>> @@ -103,6 +108,18 @@ ext_rgmii_phy: ethernet-phy@1 {
> >>> };
> >>> };
> >>>
> >>> +/* On Wifi/BT connector */
> >>> +&mmc1 {
> >>> +     pinctrl-names =3D "default";
> >>> +     pinctrl-0 =3D <&mmc1_pins>;
> >>> +     vmmc-supply =3D <&reg_dldo4>;
> >>> +     vqmmc-supply =3D <&reg_eldo1>;
> >>> +     mmc-pwrseq =3D <&wifi_pwrseq>;
> >>
> >> Of course, the "mmc-pwrseq" property would then also be moved
> >> to the DT overlay that defines the add-on module.
> >>
> >>> +     bus-width =3D <4>;
> >>> +     non-removable;
> >>> +     status =3D "disabled";
> >>> +};
> >>> +
> >>> &mmc2 {
> >>> pinctrl-names =3D "default";
> >>> pinctrl-0 =3D <&mmc2_pins>;
> >>> @@ -175,6 +192,14 @@ &uart0 {
> >>> status =3D "okay";
> >>> };
> >>>
> >>> +/* On Wifi/BT connector, with RTS/CTS */
> >>> +&uart1 {
> >>> +     pinctrl-names =3D "default";
> >>> +     pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
> >>> +     uart-has-rtscts;
> >>> +     status =3D "disabled";
> >>> +};
> >>> +
> >>> /* On Pi-2 connector */
> >>> &uart2 {
> >>> pinctrl-names =3D "default";

