Return-Path: <devicetree+bounces-125514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 933169DC2CB
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57EFE281219
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 11:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE0C19995E;
	Fri, 29 Nov 2024 11:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t/Fco5k+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D42519922A
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732879477; cv=none; b=hPwgnxLkFk8RmBA4hZgGs1NowH1Z8Y9C8iYLcPD+gpR33iy8Nc/UwYCunlr4fTar6O/8VpFMBAGXdOTUmcodHWvnolDeME7zYCB8URZZB40kjkgSY1mEzerSWqiZivsdmBlIkTwVpwG3Z7Gbr+GHbQOPU6QET2k4zU8JyXyZw+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732879477; c=relaxed/simple;
	bh=VwpdmW3NZbtKY8ETSgMCK73nCEbh1x28I08qBy9WpOI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=raeaU9GKqwGXEDVf7EfFU9Q8c+o8kzOc3HzsIXOek48TZdbRU2h+OYuvG2xQWwmCfvNEA/aWMhubKb7CHMfDOVZuUQp1++6sm1Cuc7QSU1jYJiZea+9J8qjXqVr0+6flvMwPY617BsBHbtu3kj0cy5FX3dcJY5Gl5kpDwWaQAcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t/Fco5k+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434aabd688fso10947375e9.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 03:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732879475; x=1733484275; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xjr4t6+jaVnD1Nnpoc97h5Ga1ERmjaQD302gTdpjnNU=;
        b=t/Fco5k+aFFSTAzSe0OfXGtCBUuycK2MTUdWllLULhZ013CXCBwSt8yIcp0sgI0VCs
         xncyUNpEBEwn3gqkl1fnrpIt9DdpfExAmRjR/vH8RE+CHHkuQ3lTFM4su+4YDLNnulJI
         XkzJsQgqoF8HZNZf7/XMyGzGJui+hz/oSrHn+DybfIQkAL0q1GywFaZk/UUrUPzNLhuP
         SW4LQto+SKxRd1oa0NbsjblM3KoR3f74/oB83avUmc+wb7q3MqkoTtOU4RiG0zVe8EtG
         54USodjZxXMEEcUX0iwJc1VLfMsNDZUj/xYbrlZomsD+0GXl3cq+4YsJiNsw1lihT0Q2
         9O5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732879475; x=1733484275;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xjr4t6+jaVnD1Nnpoc97h5Ga1ERmjaQD302gTdpjnNU=;
        b=KSagIzcHnlHzv4uKwCTYPLorG6/it5YYwdWlVnGX/p37LoFIZEImabz9p/sOpavphO
         mqnq4gba0hOyx5maC96+x8OGz67sXgGCzYswnVaygzJxLefcPH1giljQD7x5mrjDvI90
         wSb713mIOJm0y2Ok7M5XuuZnejDfB4AWEQuFnfOLHCNfRbkby4X8b59nomu7HPbQt94r
         4Szae3GxrBlJktsGtrHfAbnaJh+VmAfVElDyCIcb3pZ9cZOJ73hrkvlMo1EqNtpjVVOS
         vMOJrJ2KDKGy/SFIoN4ws1Qwl2RDHDwAAhtdDizcWwz+ZC8Hv0gEX8dUXhpJKGDLAwTu
         w9OA==
X-Forwarded-Encrypted: i=1; AJvYcCUJxfN+lzfg+uOVajgmIoXwI15JTm2eszWEoSnFmSmZIBRgckjuTsjEwMVHx03bp0WslEunVa46jGaz@vger.kernel.org
X-Gm-Message-State: AOJu0YzV6vTnBbox3xOpKl9QpmPnp5Jfe5xO9J2qQMH65mm0uYju8FG+
	yh87jHog8yVwSbqQ5YU8HJp48TaRG0nn3dUiyYHgwOHLJv7lDKQ/U/L50t5z/YI=
X-Gm-Gg: ASbGncsPEccMOjMqt/eoyk3a+UoPdr+A+TepcsU2gMr5Ox9J1qDnysLxuse4QKALLcc
	2gdiVK2WxhLVFtIrpX6+1R7Hl5hhy8VDHt79FFlMuW8UH3Kg20fpNVC8j/VrAdRqpyKaEQ+i3vN
	DpJ5S4DEVqkuzV5upnWdQMhiW9d30IkoJcqx2BU1p/BQmVyH2RBfA3QvgCLjUb0ajfTluHqQiHE
	cAoAOMYrdZV+e1eOEimyxVBXsH9w7ogW1THuKDDOJCqI15Lq+Mod3E=
X-Google-Smtp-Source: AGHT+IGJf7wL63WoRbY7Qyhb5Is/61MFEjb8kJtv26dX8E7BzS9uZFKdz8Zkaho5ks18oSvth2ZAng==
X-Received: by 2002:a05:600c:3546:b0:431:5044:e388 with SMTP id 5b1f17b1804b1-434a9de78d0mr93513265e9.22.1732879474788;
        Fri, 29 Nov 2024 03:24:34 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74f05asm80752145e9.1.2024.11.29.03.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 03:24:34 -0800 (PST)
Message-ID: <f14714b4bb667d339e6402c6cae37cee47406770.camel@linaro.org>
Subject: Re: [PATCH 4/6] arm64: dts: exynos: gs101: enable
 snps,dis_rxdet_inp3_quirk for DWC3
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>, Jagan Sridharan <badhri@google.com>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-samsung-soc@vger.kernel.org
Date: Fri, 29 Nov 2024 11:24:32 +0000
In-Reply-To: <20241127-gs101-phy-lanes-orientation-dts-v1-4-5222d8508b71@linaro.org>
References: 
	<20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-dts-v1-4-5222d8508b71@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2024-11-27 at 11:01 +0000, Andr=C3=A9 Draszik wrote:
> This is required for the DWC3 core to reliably detect the connected
> phy's Vbus state.
>=20
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
> =C2=A01 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index 18d4e7852a1a..ab016fe9b99a 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -1302,6 +1302,7 @@ usbdrd31_dwc3: usb@0 {
> =C2=A0				interrupts =3D <GIC_SPI 463
> IRQ_TYPE_LEVEL_HIGH 0>;
> =C2=A0				phys =3D <&usbdrd31_phy 0>, <&usbdrd31_phy
> 1>;
> =C2=A0				phy-names =3D "usb2-phy", "usb3-phy";
> +				snps,dis_rxdet_inp3_quirk;

Seems this alone isn't enough in all cases, I'll send an update in a while.

Cheers,
Andre'


