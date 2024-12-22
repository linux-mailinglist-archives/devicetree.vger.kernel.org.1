Return-Path: <devicetree+bounces-133390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FDE9FA731
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 982D77A068D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B90518E056;
	Sun, 22 Dec 2024 17:20:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979F6185B4C
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734888014; cv=none; b=TmHnbkivmTzPKIGtGRnrdtcZSuW27WTe/203IWpzoz28cbepc9eIQZoMayGGDly9gKPtzDswg6KCSae2+8wQmBLRbTSTgozsl4V3rJ6LnWhpf3wlkdxY98stuN18EhB6qM5fpsUI6BTZRpJxbySro65VYdOcmgH2v2l9nw6mlwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734888014; c=relaxed/simple;
	bh=R08a595WG14Nf08Yy+YZ2kWZj1o355YbNgR6KJeIdWU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZHjl+AhRtQhU+zb2dX8waC8Fp9J1S8+W4bzkO3PALYvo869ZSPx8yDJoF7bgrEB/Ieix6FJzGVEH9LXvqEIgduso+iBBauLGcc7GgM2Bt4f17iw2BGGh1Px/sQMCVJm4UnJfNSWWNuf0qcQBfrVTjEZbp9SalAEBzf0rugATSpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3a9caa3726fso12010615ab.1
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:20:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734888007; x=1735492807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qFhKn5TumItblZr+eQzLDEEKMdJqIvr95GEz6QTXuVk=;
        b=S6IJdeY3x2CW9mqXKjOtuAdts74lrkfqiM2cnA4rOsYW9Qnm07lSKQPFHJDRPHdyF1
         k7q+tgs+3IAnqNn+ZG3GqB9hlcW3Gb1nCjA9QXVzgBvKq2ajp3n9Fc9dTENbVgW9ygmg
         FjhPabhxzf+jlR9CEVuASpkICVtnTCfsNHl9mX9Q2XMjaJJZ1r2+EOzj3tcn37nAShsO
         N6sOHA94UUNiei6Lkk2LhqyHXDXUqB/O4kjScvAcc2vRdamCnq6KNINS9FA80h07eI56
         cfTKBLpaYKwh0z2QNoompqsnpTSP9aroR8/lvZD2KUfzMKLM/DvP3l056ceZiNVLggur
         85Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUSMZEuRFpnN56lAl8e/SgrDhCLMbcJGDwOtYCOljwlz3yVD7pFEo0M4k1RPHO96xhtGaEqrzmHR6pH@vger.kernel.org
X-Gm-Message-State: AOJu0YyTBJanUbIx9gnHg9nl8dzXoA8Yv/YigBynTx038faYBsO6+0a1
	vqN4eA1q6Ci4irD1hEQjR1K28bawsgFawHvfPJ8qJcYfS7Z62n5CD3gDMOaNOkA=
X-Gm-Gg: ASbGncsFsii9SvZzjrOIA0I4ilSSTPCvrKe21inNpPnQ6rkRFdOznDrmeLfuUL5Rjne
	rvgS3VoKeatbq+F6zCVGwKjODz0Oudtg1HKg0BNVT7l3a7YHuAa/qwP7bzl54LMu6ruVoIK7mIE
	UkT6BRQtVWinuU8uY7D1yaCBRZjzWvNig0qQPn39Fokxnw+qjZrxdB/hu7nrhwwvBrum9D8gwOL
	LT14+irpr7nd/2H9dguDFjeUWvJpaUGsNu28j1737SCEFpUtX3QMLKKOtrKKekImf7H4ibfzA5q
	jWLDdjE8rg==
X-Google-Smtp-Source: AGHT+IGxlYWCzowxAGjN3jdf6q4nzID6c1FtKjd2xX1QOn2dx1Wrjmj9qsaEJ9JkMIC+WF59C6vUPg==
X-Received: by 2002:a05:6e02:349c:b0:3a7:d02b:f653 with SMTP id e9e14a558f8ab-3c2f9815c0emr95231435ab.0.1734888007462;
        Sun, 22 Dec 2024 09:20:07 -0800 (PST)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3c0e3f3627fsm20065675ab.57.2024.12.22.09.20.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 09:20:06 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-844e7bc6d84so131920539f.0
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:20:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXLGn3CtLi/LNCY9FKScXDoxbmHV7pldSsjJ/M9alOLHERzNuBrGzQ4dRwSSvawiG/0QFB0ecej2cSA@vger.kernel.org
X-Received: by 2002:a6b:7f0b:0:b0:841:9225:1f56 with SMTP id
 ca18e2360f4ac-849887107d6mr1158827839f.3.1734888005725; Sun, 22 Dec 2024
 09:20:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241220120038.3137248-1-pbrobinson@gmail.com> <20241220120038.3137248-3-pbrobinson@gmail.com>
In-Reply-To: <20241220120038.3137248-3-pbrobinson@gmail.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 23 Dec 2024 01:19:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v67re8kjHzmPQ1z6Jrvz4x5TBK+hD=DOxtGNTOFOJKAhvg@mail.gmail.com>
Message-ID: <CAGb2v67re8kjHzmPQ1z6Jrvz4x5TBK+hD=DOxtGNTOFOJKAhvg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 20, 2024 at 8:00=E2=80=AFPM Peter Robinson <pbrobinson@gmail.co=
m> wrote:
>
> This adds all the pin mappings on the WiFi/BT header on
> the SoPine baseboard/A64-LTS. They're disabled by default
> as the modules don't ship by default. This includes, where
> they haven't been already, UART1 for BT and mmc1 for WiFi.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dt=
s b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> index be2347c8f267..752d2aae8465 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> @@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
>                 regulator-min-microvolt =3D <1800000>;
>                 regulator-max-microvolt =3D <1800000>;
>         };
> +
> +       wifi_pwrseq: pwrseq {
> +               compatible =3D "mmc-pwrseq-simple";
> +               reset-gpios =3D <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
> +       };
>  };
>
>  &ac_power_supply {
> @@ -103,6 +108,17 @@ ext_rgmii_phy: ethernet-phy@1 {
>         };
>  };
>
> +/* On Wifi/BT connector */
> +&mmc1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&mmc1_pins>;
> +       vmmc-supply =3D <&reg_dldo4>;
> +       vqmmc-supply =3D <&reg_eldo1>;
> +       mmc-pwrseq =3D <&wifi_pwrseq>;
> +       bus-width =3D <4>;
> +       non-removable;

Same here, please explicitly set 'status =3D "disabled"' like what
you are doing with uart1 below.

ChenYu

> +};
> +
>  &mmc2 {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&mmc2_pins>;
> @@ -175,6 +191,14 @@ &uart0 {
>         status =3D "okay";
>  };
>
> +/* On Wifi/BT connector, with RTS/CTS */
> +&uart1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
> +       uart-has-rtscts;
> +       status =3D "disabled";
> +};
> +
>  /* On Pi-2 connector */
>  &uart2 {
>         pinctrl-names =3D "default";
> --
> 2.47.1
>
>

