Return-Path: <devicetree+bounces-168789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2ECA94676
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 04:21:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C3E518988D9
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 02:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882DD44C94;
	Sun, 20 Apr 2025 02:21:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4FFD515
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 02:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745115670; cv=none; b=fgRsy0gfWBYBtB8FFFipg7p8Rn+KxROyswK0wdTiCsxlVnhIHiMXB/rMECCOuhvMbDYBoh2vqQRat7BjR8d1V1WWD/2JC9+Gi0nl7yVMm/sWoaNPpBBTOBW0oNDLkMSdLuBWcOXHS7cAHtkOg6JkXNya4/Lzk82hh0vzAXn9Ifo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745115670; c=relaxed/simple;
	bh=/oHR1mO+Ms0vTbiSKXZWwc+pJ/A4fZQHrfSjp0yXkhE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f00jDpJK1MMvNMwZDs9xkC4zOohUGrukzvO3atmp8hUMXCnNjtniB0l/VN8PUG+TUoBJV2SzHO4YVTS2Gh8qmfi0I8AkrRj6IZrTMXsS9PiIh1n4hvpxQ4WE20X1PzXwp/6Q5moBg428ssRkRnX+S4mmOLF3yz8K7RanvUJouO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-549963b5551so3201966e87.2
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 19:21:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745115665; x=1745720465;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qg2wv8GF6M7XRIb44nhP/CauCw9/Jy21/AsV6h0SZts=;
        b=Gfc1otCKaIUWAUo3qi9c/2Vu7Fgc1IkV/vQczDiXeZ7eWAvIPxXEksIYnzYyGhXZFp
         vDHWdJJDrU2MoVB9Wmd6nB8gAJ8jsgxvRMI7TafxEz4buZppMRa/eL7vMltSvwyw7vgN
         K+c+cVeYzQ3k+3sp/04Xd+KLtyC75q1PeB/v90DGcSG9JzdYUo0my+HdKzxUWOn5bzf1
         dnlL43me3LY8NcOb64WGVU3v+Awr6baIJd2C/OOHoKbmcxxRmmzgeXx08JCHiuf6kYBL
         vy51s3vCUUTQYjKc9JY1xSYYLKx4OYvAc7P7Rno88WHdL/cq51Z0/+wrOTos2oc0yVUx
         AFyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxXae8BVyWUcSH1EMmjOC/YXe5oPx3/KztClB4DUIWht0T823IuSWWNB4iYolR2CdMcM9Saw8v+OIL@vger.kernel.org
X-Gm-Message-State: AOJu0YxE+PkFUt3FtQSDyhyaNsF46mDHqTgz679tRqM3khokrUcjhs8J
	aTkZatGjq4xZkw1DbElcNX/qxlN5co47mvIMzUbL+81x0EHISXLOmHq0fHSL
X-Gm-Gg: ASbGnctC5cvhIvDbK8LmYRqbVDTi0ljDINWhalx/D/hxvP7DIjKOPF8YRLmzR6NrXSU
	/6lV7FWaOHhdeWVa9JgxNEsRX+sjN1cA4jnRsjXKJPLW2Iy45Bu39MCMoJCdP7HkHQs2dL0oyBh
	BMRvr1E8nja8E6cu6b81+8a1xEsS2vfP6/ec9/IrpPP2H276YsOnunvDAHwZXJRL3QLccN1VzXt
	hOgu1Jr2eoqbyVhps48pKMdrVYh0RAchwfzU7TNcFSpMo2+flqYUhhE7hxXlkQzRPA5NpME2dA/
	9KIjT8UBfWD7lzjIHZXZGvwA4ZsyG/Mk96wixy0cnEQlBpzvDHRpi/xV/q5hhohroWkUCQFjzg=
	=
X-Google-Smtp-Source: AGHT+IEA3vnnoff0FpHelu0M7BVMmsCc1yLeIkEp52To4bieD1M9N4Cruub/qGzKSJB9f+VhGlhNoA==
X-Received: by 2002:a05:6512:1045:b0:54a:f6e9:2c04 with SMTP id 2adb3069b0e04-54d6e635483mr1416045e87.26.1745115665227;
        Sat, 19 Apr 2025 19:21:05 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e524797sm576081e87.47.2025.04.19.19.21.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Apr 2025 19:21:05 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3105ef2a070so30157881fa.2
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 19:21:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXePqumIyNvpa3CPwgy+g4kq1iBgKSLC+9srJ8krKAhMvlSlLa2bP77U4j3U92fpiy8Fe9vAJX2WfYV@vger.kernel.org
X-Received: by 2002:a2e:a547:0:b0:30d:b49d:7fb7 with SMTP id
 38308e7fff4ca-310904db02bmr22991831fa.16.1745115664872; Sat, 19 Apr 2025
 19:21:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250419160051.677485-1-pbrobinson@gmail.com> <20250419160051.677485-3-pbrobinson@gmail.com>
 <5dd7825c9fcc83764fbb4b0b53704152@manjaro.org> <CALeDE9M_c7556sTdTC37Ce5vzLC2E8SV_P-J2CtFiUksdM_71Q@mail.gmail.com>
 <9380495a5dd09c6ab08e0a8cd315bf45@manjaro.org> <CAGb2v65s8d_jA3JveqTWUUGkXrAs6mBuNTwP1DahfLNz+x8sRQ@mail.gmail.com>
 <20b11baa25be196ec3e46144f11cb334@manjaro.org>
In-Reply-To: <20b11baa25be196ec3e46144f11cb334@manjaro.org>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 20 Apr 2025 10:20:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v66bui3Ddhteaz577okxAZjvW6q0KdK0rV6p5T4L15MZ_Q@mail.gmail.com>
X-Gm-Features: ATxdqUE0Ykt6DxMi0bwj0hRXcKnJZa21RBLZvuOPQ2qQ1O91XX1328QXUi7RSJQ
Message-ID: <CAGb2v66bui3Ddhteaz577okxAZjvW6q0KdK0rV6p5T4L15MZ_Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
To: Dragan Simic <dsimic@manjaro.org>
Cc: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 20, 2025 at 10:13=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> =
wrote:
>
> Hello Chen-Yu,
>
> On 2025-04-20 03:59, Chen-Yu Tsai wrote:
> > On Sun, Apr 20, 2025 at 3:57=E2=80=AFAM Dragan Simic <dsimic@manjaro.or=
g>
> > wrote:
> >>
> >> On 2025-04-19 21:26, Peter Robinson wrote:
> >> > On Sat, 19 Apr 2025 at 19:25, Dragan Simic <dsimic@manjaro.org> wrot=
e:
> >> >> On 2025-04-19 18:00, Peter Robinson wrote:
> >> >>> This adds all the pin mappings on the WiFi/BT header on
> >> >>> the SoPine baseboard/A64-LTS. They're disabled by default
> >> >>> as the modules don't ship by default. This includes, where
> >> >>> they haven't been already, UART1 for BT and mmc1 for WiFi.
> >> >>
> >> >> The patch subject should be improved a bit, to include
> >> >> "Baseboard" as well.  Having just "SoPine" is a bit too
> >> >> vague, and it should actually be written as "SOPINE"
> >> >> at all places in the prose.
> >> >>
> >> >>> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> >> >>> ---
> >> >>> .../allwinner/sun50i-a64-sopine-baseboard.dts | 25
> >> >> +++++++++++++++++++
> >> >>> 1 file changed, 25 insertions(+)
> >> >>>
> >> >>> diff --git
> >> >>> a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >> >>> b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >> >>> index be2347c8f267..64d696f110ee 100644
> >> >>> ---
> >> >> a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >> >>> +++
> >> >> b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> >> >>> @@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
> >> >>> regulator-min-microvolt =3D <1800000>;
> >> >>> regulator-max-microvolt =3D <1800000>;
> >> >>> };
> >> >>> +
> >> >>> +     wifi_pwrseq: pwrseq {
> >> >>> +             compatible =3D "mmc-pwrseq-simple";
> >> >>> +             reset-gpios =3D <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2
> >> >> */
> >> >>> +     };
> >> >>
> >> >> Is there a reason why the status of this node isn't set to
> >> >> "disabled"?  Or even better, why don't we move this node
> >> >> entirely into the proposed DT overlay?
> >> >>
> >> >> The required reset procedure actually depends on what's
> >> >> found on the add-on module, so it should belong to the DT
> >> >> overlay that defines the add-on module.
> >> >
> >> > But the pin itself is pinned out through the header on the device.
> >>
> >> Good point.  On second thought, the right approach should be
> >> to reserve the reset pin through pinctrl additions to the
> >> board dts files, but to move the "mmc-pwrseq-simple" nodes
> >> to the proposed add-on overlays.
>
> Actually, s/overlays/overlay/
>
> >>
> >> You can have a look at rk3399-pinebook-pro.dts for an example
> >> of such a pinctrl definition and its use.
> >
> > For sunxi, we don't add pinctrl nodes for GPIO usage.
>
> I see, thanks for the note.  In that case, I'd still suggest
> that the "mmc-pwrseq-simple" nodes are moved to the proposed
> add-on overlay, because that's where they belong to.
>
> In theory, some add-on module may actually not need resetting,
> so defining that should belong to what defines the specific
> add-on module, which is the add-on overlay.

I agree.

> >> >>> };
> >> >>>
> >> >>> &ac_power_supply {
> >> >>> @@ -103,6 +108,18 @@ ext_rgmii_phy: ethernet-phy@1 {
> >> >>> };
> >> >>> };
> >> >>>
> >> >>> +/* On Wifi/BT connector */
> >> >>> +&mmc1 {
> >> >>> +     pinctrl-names =3D "default";
> >> >>> +     pinctrl-0 =3D <&mmc1_pins>;
> >> >>> +     vmmc-supply =3D <&reg_dldo4>;
> >> >>> +     vqmmc-supply =3D <&reg_eldo1>;
> >> >>> +     mmc-pwrseq =3D <&wifi_pwrseq>;
> >> >>
> >> >> Of course, the "mmc-pwrseq" property would then also be moved
> >> >> to the DT overlay that defines the add-on module.
> >> >>
> >> >>> +     bus-width =3D <4>;
> >> >>> +     non-removable;
> >> >>> +     status =3D "disabled";
> >> >>> +};
> >> >>> +
> >> >>> &mmc2 {
> >> >>> pinctrl-names =3D "default";
> >> >>> pinctrl-0 =3D <&mmc2_pins>;
> >> >>> @@ -175,6 +192,14 @@ &uart0 {
> >> >>> status =3D "okay";
> >> >>> };
> >> >>>
> >> >>> +/* On Wifi/BT connector, with RTS/CTS */
> >> >>> +&uart1 {
> >> >>> +     pinctrl-names =3D "default";
> >> >>> +     pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
> >> >>> +     uart-has-rtscts;
> >> >>> +     status =3D "disabled";
> >> >>> +};
> >> >>> +
> >> >>> /* On Pi-2 connector */
> >> >>> &uart2 {
> >> >>> pinctrl-names =3D "default";
>

