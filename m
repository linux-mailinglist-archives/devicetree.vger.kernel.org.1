Return-Path: <devicetree+bounces-232992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5F8C1E071
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 02:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA5544E1EEA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 01:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C470628725A;
	Thu, 30 Oct 2025 01:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PgmFMFa3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF712868B4
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761788084; cv=none; b=Gjv1xH/iOOeXLDSyNM5+Vf4Hg+VOSOehYTsFqeya4VsoJs6DkIzK0gymcJBvIisEXjEFcEhg5/JexAU1BeF3GhgScWEu2QhI39JiKGGZA9jO6XNqLo6j5i3s71OFQ0ozqjSbJ+mpu9AXlG5HBO83RYjSkRw9zyxwOoL2DCcYkKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761788084; c=relaxed/simple;
	bh=xb4Ed7xxnUHohxYVYPSbZmxWzAnWJqJnF2jF01O3Y9Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=owjsmmnxn9cWvm4YOoUzTdnEqBOw3UjyQ/U/brXuaaqOwWQuT3In0quFqaYxiuVtnbZgqE2zGQFKUZGIs6lhL6RQrjeS4Lgi04EeoKX4rVFBqoteAgiAW2kGyvKu6VyvCCAZOMSBllodP9Y10OVxKnPIwUINgxv2yot7xoGTaCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PgmFMFa3; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-63e255e9a20so710126d50.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 18:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761788082; x=1762392882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSYKQjyLLpQ9U6VgF/+NC7c9Vfg3d8+LTPH7512lTcw=;
        b=PgmFMFa3StKOtmd66P+//uwqv0RqO3HpbyEBkM2URMmeX/UPPFZzURS8CvnfJUzRM7
         786NdtOYL6+7c5PR4NhbytiF7rwuxnCciT2SIGoGlAKKnnnimjDDvFlT7NBh8+ZtM6W9
         CTcxZYfkzVWJiwYMMr38iv7zLWUy38/UOLRc2wJSgIfArzdNIYe0JIh7+DD4V44f0a4A
         FFPAaLrRwS6SuCDKWLFRJuOfXJUSEjeBl9cXVfkmflm0wNwZYQgPI4RPiA2+0a9xvQMY
         aSGpT2OIV0hscn0CNrzSUbP334KE/+NWUKiTimUn8ZajnWnuf4IlF7o2rqrTng5XTyfR
         QfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761788082; x=1762392882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSYKQjyLLpQ9U6VgF/+NC7c9Vfg3d8+LTPH7512lTcw=;
        b=V0ejPa/+TmKrexiObC1Mtpr0NCUIi87Jku0rsOP9AZgCyvTigWPen8zHPjYJdAx2vw
         YIeLrG2RHmtPcXmsfswYkCft6edeTrDdaZDaGOCmJSBm+PYQEdTnbjKzbtXTHeFUtvGi
         Gh7kvO1IdTGQk6KRUj/2oO9wSdGLPvlNlJHYWcrqnmdP7nHw7Fa0UuTPNlVjzjIIK7jE
         I2Zhw5zHPUHjU5TlJ+uZfjkwDJm3Ial03xzwFB+qrJs4lqbFf7IX5J5O3LShESZjFmF7
         r89hRG9+4mPfDGTGuFttrjPXB913d/Jw3Bb39BefR9jJo5v4ysQwWyH0nbECAoLmjIhe
         1SdA==
X-Forwarded-Encrypted: i=1; AJvYcCXVood+ZZETk0QTdKaom2ip3MytsfwaInqK3cVnQiO5XrihC5GNy/VeTLcb5a+bDXDcEf/uTdpzPLHW@vger.kernel.org
X-Gm-Message-State: AOJu0YyElPsL49+EXkQ138KjjidoTLTakpzyyGdr0ovnIbYY/4zVIk9m
	xAnc1xXOZaLyuasVjciPnblP1xN1QHssUSFU+JfBmaj8Z8ExNPeFdRPzQ8zPuy+LQyoPhN2zrnO
	yAAqqhj46j2OfSPZu835w/xkePMPq1n8=
X-Gm-Gg: ASbGncvb4Ly4RdkPNCsHv8sTTKzMrvonJX+EXLV7Di8hZVtVueX6mGTCfderWswntwf
	fWrpB+5Zggs56Pz0Y5W2qerYE6D/Kj8PIacrc86apOdB2Z6u5Ws1h8gnpv+6OF7XKTQfE8TgLLB
	fkRReYRP+UTAAhjL2FESOTT6rrZG0zXpQky33U1Z/2cppyerEg9akpDm7KkmKsQVV16zCVDBxVr
	UGB1S/YfsAdkR5hM0TRHL5ZpsebFOZjMzuuTuGFlV3Ia9w7ppiUwSxhLBI=
X-Google-Smtp-Source: AGHT+IHMgJ4rKBE3uO85FiTJlzlAN942wrm4DmLjbiS0N7/wUCXXDdFNOdlxyLWqUIKEUXLtWtfDUoP0SJbFBB5hViQ=
X-Received: by 2002:a05:690c:6a89:b0:784:841e:c03c with SMTP id
 00721157ae682-7863903404amr16292487b3.15.1761788081875; Wed, 29 Oct 2025
 18:34:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
In-Reply-To: <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 09:34:30 +0800
X-Gm-Features: AWmQ_bnwd-FVfcBS5MP2Q8qG3_b5HlIQQto3HU-lVRe3FvjLA4i8HmYCB1URRXQ
Message-ID: <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 6:32=E2=80=AFPM Chaoyi Chen <chaoyi.chen@rock-chips=
.com> wrote:
>
> On 10/29/2025 6:21 PM, Chaoyi Chen wrote:
>
> > Hi Peter,
> >
> > On 10/29/2025 5:45 PM, Peter Chen wrote:
> >>> +&i2c4 {
> >>> +       i2c-scl-rising-time-ns =3D <475>;
> >>> +       i2c-scl-falling-time-ns =3D <26>;
> >>> +       status =3D "okay";
> >>> +
> >>> +       usbc0: typec-portc@22 {
> >>> +               compatible =3D "fcs,fusb302";
> >>> +               reg =3D <0x22>;
> >>> +               interrupt-parent =3D <&gpio1>;
> >>> +               interrupts =3D <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> >>> +               pinctrl-names =3D "default";
> >>> +               pinctrl-0 =3D <&usbc0_int>;
> >>> +               vbus-supply =3D <&vbus_typec>;
> >>> +
> >>> +               usb_con: connector {
> >>> +                       compatible =3D "usb-c-connector";
> >>> +                       label =3D "USB-C";
> >>> +                       data-role =3D "dual";
> >>> +                       power-role =3D "dual";
> >>> +                       try-power-role =3D "sink";
> >>> +                       op-sink-microwatt =3D <1000000>;
> >>> +                       sink-pdos =3D
> >>> +                               <PDO_FIXED(5000, 2500, PDO_FIXED_USB_=
COMM)>;
> >>> +                       source-pdos =3D
> >>> +                               <PDO_FIXED(5000, 1500, PDO_FIXED_USB_=
COMM)>;
> >>> +
> >>> +                       altmodes {
> >>> +                               displayport {
> >>> +                                       svid =3D /bits/ 16 <0xff01>;
> >>> +                                       vdo =3D <0x00001c46>;
> >>> +                               };
> >>> +                       };
> >>> +
> >>> +                       ports {
> >>> +                               #address-cells =3D <1>;
> >>> +                               #size-cells =3D <0>;
> >>> +
> >>> +                               port@0 {
> >>> +                                       reg =3D <0>;
> >>> +
> >>> +                                       usbc_hs: endpoint {
> >>> + remote-endpoint =3D <&u2phy0_typec_hs>;
> >>> +                                       };
> >>> +                               };
> >>> +
> >> Why USB2 PHY needs to be notified for Type-C connection?
> >
> > I think the USB-connector binding require a port@0 for High Speed.  So =
I filled in USB2 PHY here. And I have looked up boards with the same usage,=
 and some of the results are as follows:
> >
> > - rk3399-firefly.dts
> >
> > - rk3399-pinebook-pro.dts
> >
> > - rk3399-eaidk-610.dts
> >

Okay.  My question is basic: USB2 PHY supplies DP/DM, and the DP/DM is
short for Type-C connector,
and no control is needed for Type-C application.
Why is there a remote-endpoint connection between USB2 PHY and Type-C conne=
ctor?

> >
> >>
> >>> +                               port@1 {
> >>> +                                       reg =3D <1>;
> >>> +
> >>> +                                       usbc_ss: endpoint {
> >>> + remote-endpoint =3D <&tcphy0_typec_ss>;
> >>> +                                       };
> >>> +                               };
> >>> +
> >>> +                               port@2 {
> >>> +                                       reg =3D <2>;
> >>> +
> >>> +                                       usbc_dp: endpoint {
> >>> + remote-endpoint =3D <&tcphy0_typec_dp>;
> >>> +                                       };
> >>> +                               };
> >>> +                       };
> >>> +               };
> >>> +       };
> >>> +};
> >>> +
> >> .....
> >>>   &u2phy0 {
> >>>          status =3D "okay";
> >>> +
> >>> +       port {
> >>> +               u2phy0_typec_hs: endpoint {
> >>> +                       remote-endpoint =3D <&usbc_hs>;
> >>> +               };
> >>> +       };
> >>>   };
> >>>
> >> There is no switch and mux, how to co-work with Type-C?
> >
> > I checked the phy-rockchip-inno-usb2.c but did not find any switch or m=
ux. Does this mean that we need to implement them? Thank you.
>
> Wait a minute, actually we have multiple hardware interfaces, one of whic=
h is Type-C, eventually connected to USBDPPHY, and the other is micro-usb c=
onnected to U2PHY.

I assume the Micro-USB connector does not use Type-C/PD IC, is it
right? Does it relate to this patch?

Best regards,
Peter

