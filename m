Return-Path: <devicetree+bounces-135935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F9AA030EA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62BEF16524B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9CD1DFE22;
	Mon,  6 Jan 2025 19:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TweFXc0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C7E1DFE06;
	Mon,  6 Jan 2025 19:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736193067; cv=none; b=hUgOpLz+khT9DO6vovghwcAJLeGCeuoEB+WDC4PbIPL1B0cnjZl/RF4Ma+OrckZYPddMXBPkmEwLqHRYnl7WHKFp+LXJ/p0za/yh70Acd/UO6XcH/dtQYtpOqZVmFpKCI7zAEpsMsBGBJtmLkuVeEneQ/uJDxvteO2O86fWL74A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736193067; c=relaxed/simple;
	bh=Xchqv6yuyxaT2ZAuRHcutI+wkXjxGEbzhrSub0J0K34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lRH+XDt0ddJbyAMyBVaGmdV5njkEUgs+2BuFaZD7NhII37wOM9wnlFNOToe4hKn1HIpybOMZEGQqBbDW4msoZaSOwocCWxDCeqbAyk+SORZC6ZTsQd0GmnYJvGbJNz8N4ohP0ukbdbin239YG6qtueXjzpxb3O8RBS35Ifso2SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TweFXc0I; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7b702c3c021so1296094285a.3;
        Mon, 06 Jan 2025 11:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736193063; x=1736797863; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVD38ry6XjUWoVgJ+oJLF45j3WXHuey6ua4rBWQhTj0=;
        b=TweFXc0IetJAb0JrbTIuJuTJl6TgMEDyNJIYJkRuSvkZDVxQ6QCjjZsGmhV7c6Afv6
         iMo+8q/IWb62uVPZxNfxVKuowmzfy/wEtr/Rm3+iqI2pLp9WLWy8wjrUVkr0vh5fHhCK
         7WFyCUPCO8UoiyvoYOjsAtxZZJL7+o7YChl55l80noSLu+BRyqRbWDvSMk0JmhfX/hNl
         54vuZBtHShfNT1C45TXYQMv5PFF+qu0UPMbk7zYMxPFAwFmnTHuqC848lXoPRwZyfXSG
         X2QFzmuZx8GjrxfE/uLzyt3Phjw1Jir1CdKn3f2Oc332KLk0eOH2E7hi/VrDc25Z7too
         +ZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736193063; x=1736797863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVD38ry6XjUWoVgJ+oJLF45j3WXHuey6ua4rBWQhTj0=;
        b=nVtQ5Yx0X2QLJ+dhgSW/bqeO9lxKqYvZcxEb9ERsm+bCODmNArZAM/b2y192VCUGG7
         NFsJPSFqGbMJbWj0i2E/WDkwODB5NcIcsbGbsLZudBsRoDD8u90/oEYg8xmX0T7WF8SZ
         vFe7Ejous83weGXf6wU20UWrpTeYO7V36tjvXeklSVLUO4tU39JrpvMBMWlxDevmxJrG
         llFYkyZv7qZRcSAm2C4r09mYcnGuhzUZz3MBQwkSM1C3JWA77v62ytI0TCsZUsvjJoMn
         XbmDoysP06Cs8xZfT64ArG3DcgW1IndwX45C5QpjcTHws2HaT1w56jk93aVwLi0Wq8ET
         m3eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUS36QVP2y+c82Y9A30pkcbmS/hHu/cvpxw5d/7CdE4Ai0PNzH3vq/XPUSwWlwXDYPpBEl1eEymI15UjWs=@vger.kernel.org
X-Gm-Message-State: AOJu0YzNGR0URPYkk5zm+cZetMkmZ/59kD3yjc6VU/NZ0gdwMhkvJMEe
	Sxcx0yqDFBr/fHij5WaB1drYwao593vgQPsyEjR/sudKDyOQBX4AUICP6kV4EysS0GpayBmcHU5
	jrdVX+jfRN7JJkNjWGMzAseZlXFqDDWnJdK1kn1oG
X-Gm-Gg: ASbGncuXE9b8CoB/FktN7MG6skTW48mT/IyswT0HwkkueivEkb31PJZVq/mc503V9eH
	FtUUFgnMuIvNJLCRlb1UQ9HSn12ZHny6l1MYtowqJc01cN5q6zg==
X-Google-Smtp-Source: AGHT+IFFhXRZczwYX7+y4k2AHyUXGH6DMbUubnu6jmb6A/f/+7SoRgMGuMBQkStFKpYVSokMXldT0Z3yBk0oZOPbm+w=
X-Received: by 2002:a05:620a:1790:b0:7b6:cb4c:10e8 with SMTP id
 af79cd13be357-7b9ba716c09mr9322005585a.11.1736193063281; Mon, 06 Jan 2025
 11:51:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com> <173619154694.838812.1604486663887944578.robh@kernel.org>
In-Reply-To: <173619154694.838812.1604486663887944578.robh@kernel.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 6 Jan 2025 23:50:51 +0400
Message-ID: <CABjd4YxP4jXZbRV0X-E8JntV+hzSo-4Jiq3yaequWuiWkqoUJg@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add H96 Max V58 (RK3588 based
 TV box)
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 6, 2025 at 11:28=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Mon, 06 Jan 2025 01:07:16 +0400, Alexey Charkov wrote:
> > H96 Max V58 is a compact TV box based on Rockchip RK3588 SoC [1]
> > that ships with Android by default. Add support for it.
> >
> > Note that there is no publicly available hardware documentation,
> > nor vendor sources to be used as a reference, so this implementation
> > is best effort based on poking around my board and staring at the
> > decompiled stock DTB. It works for me, but improvement suggestions
> > are very much welcome.
> >
> > HDMI output is not tested, but expected to work.
> >
> > SPDIF output is not enabled (base RK3588 .dtsi needs amendment)
> >
> > Auxiliary LED display is not enabled (no mainline driver available).
> > The controller used is FD6551 connected to GPIO3 RK_PC7 (clk) and
> > GPIO3 RK_PD0 (data), which happen to be the right pins for
> > i2c5m0_xfer pinctrl config, and thus might potentially be used with
> > the hardware I2C5 controller (to be verified). Out of tree userspace
> > driver is available at [2].
> >
> > [1] https://www.h96tvbox.com/product/h96max-v58/
> > [2] https://github.com/arthur-liberman/linux_openvfd/blob/master/driver=
/controllers/fd650.c
> >
> > Signed-off-by: Alexey Charkov <alchark@gmail.com>
> > ---
> > Alexey Charkov (2):
> >       dt-bindings: arm: rockchip: Add H96 Max V58 TV box
> >       arm64: dts: rockchip: Add H96 Max V58 TV Box based on RK3588 SoC
> >
> >  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
> >  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
> >  .../arm64/boot/dts/rockchip/rk3588-h96-max-v58.dts | 785 +++++++++++++=
++++++++
> >  3 files changed, 791 insertions(+)
> > ---
> > base-commit: af349ca4d3f8659d84abc667125c826fda155109
> > change-id: 20240618-rk3588-h96-max-v58-c2c1bf8e6996
> >
> > Best regards,
> > --
> > Alexey Charkov <alchark@gmail.com>
> >
> >
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3588-h96-max-v58.dtb=
' for 20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com:
>
> arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: syscon@fd5d0000: usb=
2phy@0:otg-port: 'vbus-supply' does not match any of the regexes: 'pinctrl-=
[0-9]+'
>         from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.y=
aml#
> arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: usb2phy@0: otg-port:=
 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/phy/rockchip,inno-=
usb2phy.yaml#
> arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: regulator-3v3-pcie: =
gpios: [[267, 1, 0], [187, 20, 0]] is too long
>         from schema $id: http://devicetree.org/schemas/regulator/fixed-re=
gulator.yaml#
> arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: regulator-3v3-pcie: =
Unevaluated properties are not allowed ('gpios' was unexpected)
>         from schema $id: http://devicetree.org/schemas/regulator/fixed-re=
gulator.yaml#

Indeed. Will fix it in v2, sorry for the noise.

Best,
Alexey

