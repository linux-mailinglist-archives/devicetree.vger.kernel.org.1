Return-Path: <devicetree+bounces-225904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9FBBD225B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:51:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EFA0A4E50B8
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982A62FB0A3;
	Mon, 13 Oct 2025 08:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TBfPFFUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B062E7BCB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760345492; cv=none; b=Izr6wBCFqxonRGCO/2PQzm+WrTo3KkxEFTqy3TpESq1VySrpZnVT3aPclCFVtafWH0eQiOkH6E7oHk3ri8rRSBBXdBN9THRO7uhk5iOFBNT+VNuXgGalS+I3+nxg8hchci/cx6C8oz97/rvJMnWEMROADF3Pnhx4dTq6Vnz4gsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760345492; c=relaxed/simple;
	bh=VzBv3KTbloHoOcCj5Ty92AOuV2cf3sONAtqYw+eEuKc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RTDcbOm19VVvrC6GqEL4SeLHIzc9OFOxXLVZnPpeuUymN2WawSuwH3bfB1c9Loshe3ZQnvBS++Mkv9SnmwqwD3TK6P9fLOD76bU47u4qbUd1q1vUfWH7J8wZodYn+fceorjqDVkk3aKK+u74nA9aa2YhwWibw7dpxUIGTmCPdFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TBfPFFUb; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-78defc1a2afso82782186d6.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760345490; x=1760950290; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qjn80fxqTnWd47bRID7zagiFWJvRCbz/QkHXqwtfnJI=;
        b=TBfPFFUbrbk/3pBthhjRiQLHdh78AjVh1gmQ5IT0+8DJoHl/lod7Yib9GNB9K75gpu
         x4d5bd6ibn1u/AogOTpqadA7JwRdIkz/iFbUOelxvN6hgtosYzi7p2v6J6AV94cZxtWd
         D3kWXw6KzvqYne5+hN9q/vz3JkkUj1O8NhT7HqITzSL0XnlZJvNzzvaoNhRcLQHk70eO
         wdSNmfFcMDGWgZIfEyS3X9DuVfrO3xUTWqNe0uLfaXLqm39sr1ppQZASP0HaCCu+GitS
         ingYPCEN7GsfszEYYCBX+zSfiAucCwyDh33xDZiaz9o1xAbe7CwgultU0+ffe9m/nm7J
         1FTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760345490; x=1760950290;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qjn80fxqTnWd47bRID7zagiFWJvRCbz/QkHXqwtfnJI=;
        b=UQaNtwi9RpK8P5efz6ANC8kSS+xD07xPoeTaZvvjTsuYsexorvm+Yx8izjlcyUrjJ3
         5iEdXJvUt9TbFDN6b2Wi9r0FgExhEY2MOOkV389HK6kRSudu5dVBh9AqCPFEhjvapZ1n
         raLZqx8DJZjBfmL/P70YDWcGOP5Za5tLL6eQl5a1Y4pdqvhb80XDnL419MfEy4gG5wbB
         4742j5+ZotrHEJry857NXXiPjiH6PFUj8H6zxSy2RW9up7d6q3FsnJQ+GQCTlmS0GFw+
         06/yf3Ncww7g+auteu67YedOYjzUc1L3AxAl5tcba1xSIQIog9F8We8w2VTz7v+mSrQw
         o68Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWx8rU9XXbcPtSCj6lO1ztefYmjwVG4bjHgrMU+n40aaFp4xn0pseA+mFQdqdIekirV0VLLD/IsaMi@vger.kernel.org
X-Gm-Message-State: AOJu0YxfwQTWGx/FPDvFHhT9M/e1vn5g3gjlixniYBFWWlUpwY37esw9
	e0l1PmhOwDPvACC0hTRRQNATLCk9XhqMZQZFJzJ1LNHXNUqEZtSnWcgue67NpNbZ9UUXj35Sw0p
	L7X6y8mn64JjgZgFr641yuFvGThPAsnBGmoPo9SM=
X-Gm-Gg: ASbGnctS3TW+b6MT84DswUIjNzl3LsFsSL8uKb9+09I0W5O71KbcbLYo/0YldO4MYkq
	u9vAy0aPugJcfYru2Q5/lqsbST7GieBlx2SK3XHPtjpEA55JismDoW3StXAv2Ob/gJlrgEDK+qW
	YTgMum/dEWssB+6HLZj9JHE6+OItE6xCfqsgPC7mDPFB+J9DA45gCVqH3i/PSW2n8IwSb7wrZPq
	uwTaAzpvYP6873/kp5C0rsRETa3nsrz4I4KuQ==
X-Google-Smtp-Source: AGHT+IH0ySB3maj/sC8FUBTcxwFiIagWYmPDEWGIQC6hjlTOe05KTYNWC9uE9sG+FKiibmlzh++7qDDMrC8I5v1tVfE=
X-Received: by 2002:a05:6214:2264:b0:78d:4b1a:5ac5 with SMTP id
 6a1803df08f44-87b2ef37479mr282594966d6.48.1760345489748; Mon, 13 Oct 2025
 01:51:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009084416.45542-4-jjm2473@gmail.com> <20251013070036.66901-1-amadeus@jmu.edu.cn>
In-Reply-To: <20251013070036.66901-1-amadeus@jmu.edu.cn>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Mon, 13 Oct 2025 16:51:16 +0800
X-Gm-Features: AS18NWBHP3UXJATnpuEz0GehP1fSNqq1qliSBomIm1t4FH_TTzg2ldtvn1AzLb4
Message-ID: <CAP_9mL5=GmtJF3nSbfX6gRzPc=fAMrTOfMuOLyWFwq5D4OYUFw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Chukun Pan <amadeus@jmu.edu.cn> =E4=BA=8E2025=E5=B9=B410=E6=9C=8813=E6=97=
=A5=E5=91=A8=E4=B8=80 15:01=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> > +     regulator-vdd0v95-25glan {
> > +             compatible =3D "regulator-fixed";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pwr_25g_pin>;
> > +             enable-active-high;
> > +             gpio =3D <&gpio3 RK_PB1 GPIO_ACTIVE_HIGH>;
> > +             regulator-name =3D "vdd0v95_25glan";
> > +             regulator-min-microvolt =3D <950000>;
> > +             regulator-max-microvolt =3D <950000>;
> > +             regulator-boot-on;
> > +             regulator-always-on;
>
> The property order should be consistent with other nodes.
>
> > +             vin-supply =3D <&vcc3v3_sys>;
> > +     };
> > +
> > +     vcc3v3_nvme: regulator-vcc3v3-nvme {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vcc3v3_nvme";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             enable-active-high;
> > +             gpio =3D <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> > +             vin-supply =3D <&dc_12v>;
>
> Same here, keep alphabetical order.
>
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&vcc3v3_nvme_en>;
> > +     };
>
> > +             status_led: led-status {
> > +                     gpios =3D <&gpio2 RK_PD7 GPIO_ACTIVE_HIGH>;
> > +                     color =3D <LED_COLOR_ID_GREEN>;
> > +                     function =3D LED_FUNCTION_STATUS;
> > +                     label =3D "green:status";
>
> The "label" property is deprecated.
>
> > +&pcie2x1 {
> > +     reset-gpios =3D <&gpio3 RK_PA4 GPIO_ACTIVE_HIGH>;
>
> vpcie3v3-supply is missing.
>
> > +     status =3D "okay";
> > +};
>
> > +&pcie3x1 {
> > +     num-lanes =3D <1>;
> > +     reset-gpios =3D <&gpio3 RK_PA3 GPIO_ACTIVE_HIGH>;
>
> vpcie3v3-supply is missing.
>
> > +     status =3D "okay";
> > +};
>
> > +&sdmmc0 {
> > +     max-frequency =3D <150000000>;
>
> max-frequency has been defined in rk356x-base.dtsi
>
> > +     no-sdio;
> > +     no-mmc;
>
> no-mmc and cap-mmc-highspeed are mutually exclusive.
>
> > +     bus-width =3D <4>;
> > +     cap-mmc-highspeed;
>
> > +/* Micro SD card slot is not populated */
> > +/* Wifi module is not populated */
>
> Why would you define them if they aren't on the board?
>
> > +&sdmmc2 {
> > +     max-frequency =3D <150000000>;
>
> max-frequency has been defined in rk356x-base.dtsi
>
> > +     bus-width =3D <4>;
> > +     disable-wp;
>
> disable-wp does not work with sdio
>
> > +&usb2phy0_otg {
>
> phy-supply is missing.
>
> > +     status =3D "okay";
> > +};

Chukun Pan:
 Hello!

All except usb2phy0_otg will be fixed.

> > +&usb2phy0_otg {
>
> phy-supply is missing.
>
> > +     status =3D "okay";
> > +};

VBUS on usb2phy0_otg is floating, this USB port only works on
device(peripheral) mode.
phy-supply is optional, so this should be fine, right?


  Liangbin Lian

