Return-Path: <devicetree+bounces-54745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 717A589269E
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 23:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C805283F19
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 22:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7744713CF86;
	Fri, 29 Mar 2024 22:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XyNBJj3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B490B13B58D
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 22:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711750139; cv=none; b=lsm7l4OH80HH4/ET2eFi/CqRmB16Zz4ZTGCxUkSByJ0RTEVbzNUoabND5QCEsaJfuTkJ/xPjG/GWDQScrBarbzML6S/UN5v88kwzR+bh8hMc3FKT6th1pTpliWxKOwpTW2cbdqrnXkpGNOhRv13pxPN8FM0pk6xND12TiMskPKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711750139; c=relaxed/simple;
	bh=y7G4DYNMOFyxffVLJMZBeVXO/WaC4q6q2VAU4bC9rXY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aRJS9CZzOErk7lSHS82fZX6LaYxTqV/J4P49IujMC9L9r9ebcUgmC4WuItL6GfdCuk3j+jDs21Bg1k4shwaLOPH6U/NpsFRV5xqtbp9gDuYcANgl2HALnJDCuw61DpsOeLLwonL0VhFaBBm1s3WICBC0a3NP3fWXZeEh+FiTTf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XyNBJj3b; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-513d4559fb4so2779694e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 15:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711750136; x=1712354936; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S66csGSC2x765yPT5DOSH4bfdTHAf2X5g8oHEEBVFJs=;
        b=XyNBJj3be4iqOUbnStQ+OIRe3Zh412OoJ27r0VRxyRuUkxAT+T/3C8mtiR3DZvSIlT
         A2A78dEkt+eP/pxMUWvT/JfkfsBJaTmn0DDqcx1FelFJVghLtfA8Uct5BtlTxEIB4j+m
         dMJlNQo9q1E+bNAXy0rLYLaV7bCRs/ZSqg2uNK8vyKzpCURaHxYvwACyCzc7Wc2G3skc
         7gAEsEAcwpToaU224xZuvKe6VycKx3sVcOr/+BWdP0FABca/iSa5agnwsmjaletQyyLe
         3+m1ibDbp7xnPjtDj3dUXPH5v1SQdd3wyZNP8OOgI6Tg98W3/4xw+KhXZOtKd5PZPpTe
         S8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711750136; x=1712354936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S66csGSC2x765yPT5DOSH4bfdTHAf2X5g8oHEEBVFJs=;
        b=T+qCdNMP8LQitMYSG1WV+0BqAKKRI4sm4SuZGCDI0FUsAvIuXLLpwE/plFRqFH3kOf
         MSpMsMEVpIYNZkyRan2gfFqCjSyeVvSQt5TYF+JUx49BQTaKTsdu//lqc5D0Q57oSzbx
         DigsGsucD0RjPBHhZhru3yd/zxFf/SIBkQX1Nb+gMsvs65HD/wEqDK8VpS26YEwTsBM2
         /4nwMvp/SqVNA6WPI8/8NQCFZanxr2On78bQXGvfulHe58y2cWPw/4533R8KclF88tk+
         LEAwO5V7lrxIWQubDOs7tGg9GWMXwr07jv6L0t/YmLFOY3Bgj9+zyoDmxpSi8oHU62vY
         5F2A==
X-Gm-Message-State: AOJu0YwoKi8TzL38EKPQIuZ4jQUiJfJYolcQf51/JnDO2IvHBzfivlV7
	nyFd4B0Qc49rTe7NeWs2YK6cvE3YOeVVqDkhHKXZzBogDUw0wfSeNqHD65GaC3n2PjPGAo/ohVU
	fEVLnoz9x+jdZlxRvemrGTkx5bb8=
X-Google-Smtp-Source: AGHT+IF/i/keKyUqajH+MNEiAQeWqJNezNRGZW9H1GCKnNaMSID2v8bQk8oNYVdfDdGN4IlNDcT0n/51mjCqfqlkJlQ=
X-Received: by 2002:a05:6512:344b:b0:513:c632:24bc with SMTP id
 j11-20020a056512344b00b00513c63224bcmr2380546lfr.35.1711750135729; Fri, 29
 Mar 2024 15:08:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328202320.187596-1-gilles.talis@gmail.com>
 <20240328202320.187596-4-gilles.talis@gmail.com> <147dfc5e-91e5-4ad4-b818-f6717e62df45@lunn.ch>
In-Reply-To: <147dfc5e-91e5-4ad4-b818-f6717e62df45@lunn.ch>
From: Gilles Talis <gilles.talis@gmail.com>
Date: Fri, 29 Mar 2024 18:08:43 -0400
Message-ID: <CAKcgs2xJ1pgzuARV+qHgoqDXi7uE85FbAiGRiT8uwT=BM6yiCg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add device tree for Emcraft
 Systems NavQ+ Kit
To: Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, shawnguo@kernel.org, 
	festevam@gmail.com, alex@voxelbotics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Thank you for your review.

Le jeu. 28 mars 2024 =C3=A0 18:11, Andrew Lunn <andrew@lunn.ch> a =C3=A9cri=
t :
>
> > +&eqos {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_eqos>;
> > +     phy-mode =3D "rgmii-id";
> > +     phy-handle =3D <&ethphy0>;
> > +     status =3D "okay";
> > +
> > +     mdio {
> > +             compatible =3D "snps,dwmac-mdio";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             ethphy0: ethernet-phy@0 {
> > +                     compatible =3D "ethernet-phy-ieee802.3-c22";
> > +                     reg =3D <0>;
> > +                     reset-gpios =3D <&gpio4 22 GPIO_ACTIVE_LOW>;
> > +                     reset-assert-us =3D <1000>;
> > +                     reset-deassert-us =3D <10000>;
> > +                     qca,disable-smarteee;
> > +                     qca,disable-hibernation-mode;
> > +                     vddio-supply =3D <&vddio>;
> > +
> > +                     vddio: vddio-regulator {
> > +                             regulator-min-microvolt =3D <1800000>;
> > +                             regulator-max-microvolt =3D <1800000>;
> > +                     };
>
> Please could you explain what this last node is doing.
>
>        Andrew
It seems like this might not be needed. Will check that and fix as appropri=
ate.
thanks
Gilles.

