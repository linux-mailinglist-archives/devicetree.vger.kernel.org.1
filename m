Return-Path: <devicetree+bounces-243521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32131C988AC
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 01BF94E1B7C
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 390DD333727;
	Mon,  1 Dec 2025 17:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OOBalwkf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9800821CC4F
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764610521; cv=none; b=ErT2D5GgY3UIfCtYAGgaDnKTb6Cmu4CUXF2th5u7/Z8r79iFJMMTo00yNtsU06rtZOo7wtwpJ919UiCHVgjUE04pfiUBcl3c3Tnx44sS3ESileufGIJWjSSOCqHs1JHb+VvMpEXlr2U//YOM/PjP1vsjdyDJ0oW5M18fLx9xceU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764610521; c=relaxed/simple;
	bh=9/+YKSn6Mo31VedRJb+IibJXYf/85gv9udHE9tPq93Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g68T+rjFQxjWS+5fZqUwaSauJYqU5LFloXAlxW1NHZxSoQblwcBvCcIuWmwvuefKUhMpHwiw3We2kA47Jc1WX4xYGfMN5/B1kR8y0WfeBKi0thsF1gGIAEc248z6f75HQEjUcMTdaZiCX7VT5NDZbaXU95kqnpgFDuKDXZaPixI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OOBalwkf; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8b2dec4d115so448756285a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764610518; x=1765215318; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUy9/tMpZEG+dMBQoKUGEIkUyG26fQzLzLoG5fd72og=;
        b=OOBalwkfamJ0HbqbJdzy05QkeJR1iwN6T94oYuSwyZ00E45NgGuG7B+og81xhMg3P2
         H3ULAzRc3WU5P7UqZfAgynDZylCpdRftwneCOkaIslhkHxbAdUlFi6PPJfgBNysguwtu
         6j+YAcskWi6geAfsQnYfile3EPRA4NwYNBW1Gu2/VcE5IIy1INs/6RfK+WL8Z/+8J+er
         gjWVnBX6K6T29aqHQ/RwVjBDMSRpqljnzFpKH17IaUpqm7okc6CMxon+eqv7bE7k7Fpg
         Yg1DvFk4/i74Etr1NEilI0vgbCy3vHnv0Xdg+AVqFrB5RVtxyPoHLqJ5p5jgmHFWaWyi
         ij4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764610518; x=1765215318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HUy9/tMpZEG+dMBQoKUGEIkUyG26fQzLzLoG5fd72og=;
        b=tT4TIbm9wiPKtMN4qkb62dWO4zVo2txat/axeE1iDFaaX/dMIaFHgiQ4wFMvXGL46g
         2iXyryTgvnLRjQ1kq1b68+ppKjPb9xfxB5oOt+qU4/5ZAfC7+vywgZ4loY4M2V4uA26s
         U+Oc7307YO8hQnVKVsMKPesiRJsOm5BL4p0QLQPBKW8U0vi4Rt2aqqTyUJ9nn4Og8tNv
         WunJYfovWkTmVbZGVk2ZGKacrLxpBa9vYXp4GIR+1bO4PznCema/XH4q2j0I4OGzVRHV
         HL8Et12e8upT95FuGk8Ivv2qcMPRzyvWNiAeNeeHrkmkp9rNJmD5IW6y8jC83R324AK+
         dO2Q==
X-Gm-Message-State: AOJu0YwIi/2fgdns/6zbxLG7KPrj9bZMpjwXYwlP9PP68Ith4Qpwxf6c
	fjn7uAQMvH8RmFhRGur08/hNQu5i3s/zx8DZ+zQx3PFWYopbr517MdkO2cu50X/WFILf4NpNZi7
	yFeHiE7rrfFYV1CGBLq499QvgjzMb6aA=
X-Gm-Gg: ASbGncv+IKtMRx2tpp58egpKDqOtgqEmNMWOWLTAR4etBsRIWpQdzrCbtR7DhFrIkM8
	Tvu/XTI/OPCjRoaVBO6m5MtaS19HHXml3zOf1OtIqNB6WF7/sgSwjvVNqPF3WEY5cEmUZGQOsbJ
	H8CTHhLh1+Fy8vzK9S3f+96JwRZYeuKBdNFBHSmHBYsfeoz35XxEOzOCUxydMrmif97CAqrTspk
	vTh9JBW+uNnW+JWyf3W/5+F6ox6ixskn2MIGqUBaUhaJr0YmKqgRJnm52gWzMBJBNaMZhWkQLmi
	ULfkQj7xG8QgTW/UjQ+NsVNF3vHQmoveXuY9CGc=
X-Google-Smtp-Source: AGHT+IG9z48YMtq1Hoc/6GZ1Q2125xNYsRwXEceD8NyRrDRi12uj4aXH0Nvq70m/GP3MOT/fvQpHE0zCpZJfWXVma+M=
X-Received: by 2002:a05:620a:1a25:b0:8b1:f2cd:76ad with SMTP id
 af79cd13be357-8b33d5ffadamr5603990885a.89.1764610518305; Mon, 01 Dec 2025
 09:35:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com>
In-Reply-To: <20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 1 Dec 2025 21:35:07 +0400
X-Gm-Features: AWmQ_bkh-_4MrBD8Z1igFWdl8lWvuEpvTQY628KgzrJmFFeIaNlOE_zlYPP9A-Y
Message-ID: <CABjd4YxiOsw0_vR=igLhGkXUp4kSfx_eWv6j=FrsX-qo5sR2hw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add overlay for the PCIe slot on
 RK3576 EVB1
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 1, 2025 at 4:37=E2=80=AFPM Alexey Charkov <alchark@gmail.com> w=
rote:
>
> Rockchip RK3576 EVB1 has an onboard PCIe slot (PCIe 2.1, x4 mechanically,
> x1 electrically), but it shares pins and PHY with the only USB3 Type-A
> port.
>
> There is a physical switch next to the slot to transfer respective pins
> connection from the USB3 port to the PCIe slot, but apart from flipping
> the switch one must also disable the USB3 host controller to prevent it
> from claiming the PHY before the PCIe slot can become usable.
>
> Add an overlay to disable the USB3 host port and instead enable the
> PCIe slot, along with its pin configs. The physical switch must still be
> flipped to the "ON - PCIe1" position for this to work.
>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |  4 +++
>  .../boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso   | 31 ++++++++++++++++=
++++++
>  2 files changed, 35 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index ad684e3831bc..63198a618a2b 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -252,6 +252,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-armsom-sige5=
-v1.2-wifibt.dtb
>  rk3576-armsom-sige5-v1.2-wifibt-dtbs :=3D rk3576-armsom-sige5.dtb \
>         rk3576-armsom-sige5-v1.2-wifibt.dtbo
>
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-evb1-v10-pcie1.dtb
> +rk3576-evb1-v10-pcie1-dtbs :=3D rk3576-evb1-v10.dtb \
> +       rk3576-evb1-v10-pcie1.dtbo

Missed the separate .dtbo target. Will amend in v2. Should have
something like this further up in the Makefile:
dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3576-evb1-v10-pcie1.dtbo

Best regards,
Alexey

