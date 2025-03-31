Return-Path: <devicetree+bounces-162056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7386DA76ACF
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 17:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 989D816F421
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 15:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DEC4221D9E;
	Mon, 31 Mar 2025 15:25:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDFC221DAB
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 15:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743434729; cv=none; b=sHiJqli5b4Gw7BYgtImtQjJU3gAtrjTxCtYbbJjAaEREISVeqVdGIVUw1rUN6U6wNWcr09HjEsCAKHVjGrqzHEuxJq+yY03Ry5ss45YacJmJu5N2Q7RUUKNPmrEJT64Y47WSBcIBRSvTLCmUF2ASYgkWBWITZYmgoCqONKGlCT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743434729; c=relaxed/simple;
	bh=Ss77VAHk8eVOAa8cwgXm9lkzs8JtRwEns8qC9n6KLm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jEQh2w02ssiqgqJs2/OJVvWyf10OVdtdjlguc7Sq0ug+EqDnwf7FyqxDSWID3WwaQH45JzSow/JPG4+OfWjwPyShTW3qJfsUJc8XlbCLtgkYt03ika2UcmdnyDiiYsK/PH6zLpN9xHHu7fn6j5+BhSZvaXL7jVr12jh0uRSLInM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30beedb99c9so41783791fa.3
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 08:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743434724; x=1744039524;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Ffgl1EJ78XV8Ww8+yzDw7A3vtP3rI2eTTBEDeOFpPo=;
        b=IMuF7NBrvt11yNnz8wmFBHfgrNvGYGR+I3X4503yoIVJ7XIun5jKV7X83W6kzEeT4c
         3RaTqGEIcqYPP7Sh+p0mQR2YDC/fBnWTQ0WznG1uAT3Bq+HBMwBmxT59QtAzy01nGwVN
         Lov5fIf8DBrK/LAYZh0F2F5xzN3Q+pfYPjEPQxrg6UpNhz96DA+XWgbHAQNMKuIzKTTD
         QG4FRZUNWAPvrlwi7q9elCe1N14sGn2Em7ZsmfR8fuh4fzLrHmBGEWjSE2Iat1xPsfIl
         Ym6gfB6Lh9UOHLl2djbZp50lKRC8xUNBKlmlkyZptdb+TjpSI3Kt6XYU8LxJEDFO+vEX
         F1lA==
X-Forwarded-Encrypted: i=1; AJvYcCUPYRnWLzDJJ4iguXkWJE9IKCRrhg+fG32HBoYU4ClyRh6BzUgrlW3wR4+DmC4WK07YDLFhEkZhRSRk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4BOt5h+AWqF18Tb67i4tVbGGzgzWh3/CbZKuTcP9cdK4A/mlu
	Jw3RgPC8eUuK89zeWwZDvzV1iyg/Bjxo1q6aN5iNe+aEWECV9ApYdu+Q2lQv
X-Gm-Gg: ASbGnctRJ5NJhfzP1/umWDVAG/AbcmXUsmNPKad2Mxax6ZnX5fiphe1ybn7M2oEm7Rp
	zL2Fr1US0uW9otMxplYesUwmiAbQiTvwBoDopnyVu/BXREdKplBww8aKEn3q3xSDShtYen7MQ4y
	rh+igGWa7bkk6xt7kE+xmID2XuQUfmakj2bt2XiNQYt2dDRrYSf/KaSJXSnWZ2G3uYRhxlh2Ecx
	jFfPXEmpJycn1kZRH9Y3ay2SiQIJu9vHf/xCpEvvfgWUuLFKaRnQU5W6po3CBYYdbjid+1GrsL2
	CJZCtvrx7T0enbbPNU1H0yG6dJhj/X6n36TlwrIlaapoMsOSatO5STrweSJHYH9+a5LMfITNpcY
	oJQ==
X-Google-Smtp-Source: AGHT+IFUjwcEiqCSrmuv+/pWpHh3Hm7uVR83V5hVKJzrD6UkXuuKTTMkK9jfqg9wuTuTmFYNYKCTig==
X-Received: by 2002:a05:651c:144c:b0:30b:b00f:9507 with SMTP id 38308e7fff4ca-30de02ccf45mr26671241fa.24.1743434723797;
        Mon, 31 Mar 2025 08:25:23 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com. [209.85.208.177])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30ddcf8dd9dsm10944261fa.84.2025.03.31.08.25.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 08:25:23 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30beedb99c9so41783491fa.3
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 08:25:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVSzSs2zt0UmH5xuMCp9pupveKzgYXWv6fWutcF0VxfhRENcsWE5t2WC7Es72J52bG2aZpvl17+D1FJ@vger.kernel.org
X-Received: by 2002:a2e:9a0a:0:b0:30b:b987:b676 with SMTP id
 38308e7fff4ca-30de021a5e7mr27500301fa.2.1743434723282; Mon, 31 Mar 2025
 08:25:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241220120038.3137248-1-pbrobinson@gmail.com>
 <20241220120038.3137248-2-pbrobinson@gmail.com> <CAGb2v66enf0ybbyW3tW_YRdJB0=aOsXidm_bNHh=wdmm+HPBuw@mail.gmail.com>
 <CALeDE9MEBn+Sdi6VDPwv8KNqTGa3sUsvBWUStzg9eOTDCVi82Q@mail.gmail.com>
In-Reply-To: <CALeDE9MEBn+Sdi6VDPwv8KNqTGa3sUsvBWUStzg9eOTDCVi82Q@mail.gmail.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 31 Mar 2025 23:25:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v65sanUAiMNm+Brpm+p+r5PoEJe5cU6-3ES2w4+7BDUK+w@mail.gmail.com>
X-Gm-Features: AQ5f1JqaknCpQUGEiJLOOM81wDYjjstnDdXE6imvYdtIgyUSyVJlVKvFRiCt9rM
Message-ID: <CAGb2v65sanUAiMNm+Brpm+p+r5PoEJe5cU6-3ES2w4+7BDUK+w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 31, 2025 at 11:16=E2=80=AFPM Peter Robinson <pbrobinson@gmail.c=
om> wrote:
>
> Hi Chen-Yu,
>
> Apologies for the delayed reply, preparing an update, comment inline.
>
> On Sun, 22 Dec 2024 at 17:19, Chen-Yu Tsai <wens@csie.org> wrote:
>>
>> On Fri, Dec 20, 2024 at 8:00=E2=80=AFPM Peter Robinson <pbrobinson@gmail=
.com> wrote:
>> >
>> > This adds all the pin mappings on the WiFi/BT header on
>> > the original Pine64. They're disabled by default as the
>> > modules don't ship by default. This includes, where they
>> > haven't been already, UART1 for BT and mmc1 for WiFi.
>> >
>> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
>> > ---
>> >  .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17 ++++++++++++++++=
+
>> >  1 file changed, 17 insertions(+)
>> >
>> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arc=
h/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
>> > index 09e71fd60785..f04f0f1badc4 100644
>> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
>> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
>> > @@ -35,6 +35,11 @@ hdmi_con_in: endpoint {
>> >                         };
>> >                 };
>> >         };
>> > +
>> > +       wifi_pwrseq: pwrseq {
>> > +               compatible =3D "mmc-pwrseq-simple";
>> > +               reset-gpios =3D <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 *=
/
>> > +       };
>> >  };
>> >
>> >  &codec {
>> > @@ -124,6 +129,17 @@ &mmc0 {
>> >         status =3D "okay";
>> >  };
>> >
>> > +/* On Wifi/BT connector */
>> > +&mmc1 {
>> > +       pinctrl-names =3D "default";
>> > +       pinctrl-0 =3D <&mmc1_pins>;
>> > +       vmmc-supply =3D <&reg_dldo4>;
>> > +       vqmmc-supply =3D <&reg_eldo1>;
>> > +       mmc-pwrseq =3D <&wifi_pwrseq>;
>> > +       bus-width =3D <4>;
>> > +       non-removable;
>>
>> Please also add an explicit 'status =3D "disabled"', like what is done
>> for the uart below.
>
>
> So the status is disabled already because it's disabled in sun50i-a64.dts=
i, as is the uart1 actually, so in both cases it's not actually needed and =
will then just be set to okay in the overlay, do you still wanted it explic=
itly, else I'll drop the unneded uart one too.

I know they are disabled by default, so yes I still want to see them
explicitly disabled at the board level.


ChenYu


> Peter
>
>>
>> ChenYu
>>
>> > +};
>> > +
>> >  &ohci0 {
>> >         status =3D "okay";
>> >  };
>> > @@ -286,6 +302,7 @@ &uart0 {
>> >  &uart1 {
>> >         pinctrl-names =3D "default";
>> >         pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
>> > +       uart-has-rtscts;
>> >         status =3D "disabled";
>> >  };
>> >
>> > --
>> > 2.47.1
>> >
>> >

