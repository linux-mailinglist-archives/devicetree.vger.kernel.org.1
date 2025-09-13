Return-Path: <devicetree+bounces-216771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 198A2B56081
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 13:31:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50F771BC56D0
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0645627A931;
	Sat, 13 Sep 2025 11:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G+T8hLja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CC4B67F
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 11:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757763105; cv=none; b=XzRQ2hMmAeK701wpYmZf96HMBpJM995d5TRIuKxw9G2siCakPEp2lNKk0vwc2yYXJebFE2xZqyJ0Av0MPJ6veeUBaWVLakwJfA7LgqiGuPsFD3jAV6tJ7nGGAHeqF/Sr+E2Y8IYrKvo8ir9M80zo0t122v9FiS9lObf09ePz7EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757763105; c=relaxed/simple;
	bh=Pd7LXL3e3fziuQtA+gIdsuKsBHrZf8/dR473MaUf6HY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PdkxdS83r0vJpVJt25dNMdVtO32zmF6YRPx5XZ8+PLiD8AWuYxdkuv8BKFaCc5D/oJhUwU9h2rQgU0qKg7JoU4nBxAZ0T/tlPB0Y28MVoPCHLWo+kfYI3BPID1zZZtPl3HVAhYUfeGY1A2Vl7thz1vWSukgY3q/jZ8gjdp8Kwfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G+T8hLja; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-62f1987d4b2so320535a12.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 04:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757763103; x=1758367903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhiOMZzJmlK07q9Yx4eHe//JB/+U6zF5S8d+vjc7i3g=;
        b=G+T8hLja00fDYD5eggA29QCGKu/MVbP3nf2Nr817eqWHvCR8kvymXueuMANRAUxoEP
         +EX/i1F/9HANozGk+wl+Nop8GaLpr55NKNhezZ30MZql/eZgtAjsjnEqXXnUB86Qz3T7
         xyCtJmYUDBknPR3YwohoCfuvtuYf9cnq5eIlBUH1CpXQZ1I0D6OYkxfho1XVOexuiZFh
         C5AVLA9vppURkIqBo3TB/BV0TCu34hwn3MzZfyJRlRJRmuViRkvlvZgmXxaxQ/W90TZR
         2pjVZ+gtHoWBESMONde8nr9qVuIWW7GDzJENuSLwDAz3ybqUAZ0nCvpJNlkOVcyyJVOQ
         BDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757763103; x=1758367903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhiOMZzJmlK07q9Yx4eHe//JB/+U6zF5S8d+vjc7i3g=;
        b=LkSQi+oLkXWtGVQ8fH0LobtEjTUCakx3fnugY5fW99J5GHTUf4GZZ1vHfvU218DaE7
         lz3TQOke6glWD7HngQd1tik5L6wDABR2PFTdQtUi4eNKgwoV044VPdx6ySWYRX1LpfAR
         WpX+ZTnVRnVeOSfOEgyUQnDMjFL0UoH1RXZIAEvcmwgOjymvKbv673NSx8564H9YWUFN
         qi626pjPxO+Wu0J8fB/qCpcU6l94bpAmKGUimSJP5ph4Gz+5qhVb3Cf3xcJ1ZyNC2Ttq
         HohpTl5DAgv8+fFUm4xsG8JWQ2pVbiIVV5tqbgk2cVElNzV8KKJC+VNfGCVkyIpX/Gnm
         Q+Cg==
X-Forwarded-Encrypted: i=1; AJvYcCWLpVD1JS1DjKdh1o85zGquQ8f38P4XoWfVqZfLN+MSrEPf18/lqRagrslXk0HDUT9Qzke0UgMflToY@vger.kernel.org
X-Gm-Message-State: AOJu0YydIly2Ry3wPjwt9U/6+PTAUR7ZN3/Bdno6LQAh6ieXuQ9RKof7
	f5/+B1UC3HaBLWQnPWrIvB8hS67MRIvtWaK6s5OrF3JSuLdWvBsudR+j
X-Gm-Gg: ASbGnctbTllfuScHUKV6FmKBeVvaEdMZKkMKwrTZfr15QZ7mYF23TeOXUUWqqsrQDGt
	yI2nnI2A5pCzjgtCPk7N2zv8IF2WUVbJ22JlWOlK03ogjKLg0AV7jqr+JFyrGHEV5CJThjk9+eL
	ypAHgvtHevIjn6NF0Rzx3eX5+yOdgji92Yzuj19AvYyqft6+yZQMoj1ZgJcpfFTV+uGPxxGV0Rs
	ZaNZXBHgKjbDaOiQaanCWqTF2kfUxxTgHIWy0ZqBTzgy8xh8wXcGMfZyaih0U0KLae2urnRLaJX
	YTfO2h3SpZ5rzJkWD+V+9yxGvFCcnVpnEbtsHXneiGhtcHwzaW3do3tEzbG8ITrvlKyiaavc63h
	DtLfRaxY+9KvumDQsFHXXcQbbZ6rBOwFb0BsZ/vzRElJHvYb7rXgmAAut30asyZWXQQ==
X-Google-Smtp-Source: AGHT+IHykb2wro/3EPEKGFRhfZdxz0R+s5067Brp4xRx1L5hET4V9Jhz88T1kD9l7Nn6Y1hOSTS1Sw==
X-Received: by 2002:a05:6402:5204:b0:62d:b1c9:f0ca with SMTP id 4fb4d7f45d1cf-62ed80c9f05mr6124659a12.3.1757763102637;
        Sat, 13 Sep 2025 04:31:42 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f136cead7sm825431a12.36.2025.09.13.04.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 04:31:42 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 3/3] arm64: dts: allwinner: t527: orangepi-4a: hook up external
 32k crystal
Date: Sat, 13 Sep 2025 13:31:40 +0200
Message-ID: <5009461.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20250913102450.3935943-3-wens@kernel.org>
References:
 <20250913102450.3935943-1-wens@kernel.org>
 <20250913102450.3935943-3-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sobota, 13. september 2025 ob 12:24:50 Srednjeevropski poletni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> When the board was added, its external 32.768 KHz crystal was described
> but not hooked up correctly. This meant the device had to fall back to
> the SoC's internal oscillator or divide a 32 KHz clock from the main
> oscillator, neither of which are accurate for the RTC. As a result the
> RTC clock will drift badly.
>=20
> Hook the crystal up to the RTC block and request the correct clock rate.
>=20
> Fixes: de713ccb9934 ("arm64: dts: allwinner: t527: Add OrangePi 4A board")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun55i-t527-orangepi-4a.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-t527-orangepi-4a.dts b/=
arch/arm64/boot/dts/allwinner/sun55i-t527-orangepi-4a.dts
> index fb5311a46c2e..f71860db83d3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-t527-orangepi-4a.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-t527-orangepi-4a.dts
> @@ -393,6 +393,14 @@ &r_pio {
>  	vcc-pm-supply =3D <&reg_bldo2>;
>  };
> =20
> +&rtc {
> +	clocks =3D <&r_ccu CLK_BUS_R_RTC>, <&osc24M>,
> +		 <&r_ccu CLK_R_AHB>, <&ext_osc32k>;
> +	clock-names =3D "bus", "hosc", "ahb", "ext-osc32k";
> +	assigned-clocks =3D <&rtc CLK_OSC32K>;
> +	assigned-clock-rates =3D <32768>;
> +};
> +
>  &uart0 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&uart0_pb_pins>;
>=20





