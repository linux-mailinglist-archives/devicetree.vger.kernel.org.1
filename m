Return-Path: <devicetree+bounces-216769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C258B5607D
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 13:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4132583F11
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F642EC0B5;
	Sat, 13 Sep 2025 11:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PYQRnEbH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8AB2773C9
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 11:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757763016; cv=none; b=ar+YHu5n3S1qpGaM/K3WAFD1inPZq/A8TMj0sdr2IWM2vzGYsPNDXRNE9bBZ+28tyv+X9315+0JD/f2AyyWTz09hS86Z77G6ReloMV1urUfCbbiwrccx3RZQV4YQhv4fnYaOdLRnCsKGXHsd45YlB9LjcOmTRIZdhMjdzjXPk4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757763016; c=relaxed/simple;
	bh=x7djyqcnacv1DN7MFD9deVtmkZvxAh8dRtXGYaZoXno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ON8upZbej6a6fzeYYdF/O/iSKcwSWFf6eM6ABtSBRPOXf87z+57Sh+swJEx7q6vDMrbnHLbjecbePu5L4gRpQk2MrfCivmkQtGg2edaak1HGCvTUWqWRA9q8B3m7j7qcrJzuQm2FVixuUH66f8e0qjCNunfi7VhuigOLctQzpU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PYQRnEbH; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb7322da8so519182766b.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 04:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757763013; x=1758367813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vM/wOHbGgB/+niDKSnNnlcAAPUzV0FZzOUIFNQXZ5cc=;
        b=PYQRnEbHjEe0Ti84EVD0gMk0InqJQo8jzCXSJTzExiUn7oSRecH4mkyXMGG/7pIXqC
         oMZSseshivrQIxS5uYjk0hQRC40BOmqWObm9uJhXfPV5qNfo9QDHSpaGfX0vfbLyUiA+
         2qxI2PNqKrOkGVSlWjT4MHShidtCFAPNYf1nZy5KMdztHdemkOi2Y1FO2knr6b08FK1i
         lwinu9xiHhRzy63+63hA6NwpFM/m8BALMkRheu18gsHi5y/2YApCpMP+zk1J9b7ewNqN
         st/qFh7pRoFx94QlPnautAFz80hX9PQafFzUSwf597yMts2mAMfrnrKZB4Q36QwbCpa7
         5byQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757763013; x=1758367813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vM/wOHbGgB/+niDKSnNnlcAAPUzV0FZzOUIFNQXZ5cc=;
        b=eFoZofOEa3GobYxCPDozLiyZMhiKlusNwjgnQzy3EoHQt9SsoPPFW5+EG/EmcDwp8R
         LKAusS86Icr/iiwFy2sZPZSeQvh3w4+8xZH3qgSlcjG8cl+dmPlEibClHYTjAw/MbKFW
         AkYMMBWOGJpfrjZUlKY5pwjAGab9G8CamHKuLbCxyzHhOc92B7ibRNWVVg71ABzvpYjt
         fAbE2AWfj+c4qD6bF95iq4B2A3uhoFefqri2NJ0imyQuJptxQ4MWNcfJS75d+yKD0YnF
         R24urX4BsOzQabci/A8IWr9k2R+iWxKIaS+N8niT0Wr0BF+Y3YdzOyp1hzgrMRMLmRq/
         wnlw==
X-Forwarded-Encrypted: i=1; AJvYcCXN5XDJvXxP72uoqK74g73ugkMIQIxc7eddgXwYtDWyfUVP8gUnzm92nRjxCdYqBFS3cF7Xvxb9lwgE@vger.kernel.org
X-Gm-Message-State: AOJu0YxB85AN25onSNNJ/AjHrFaqNnzh0x+mENka1T+6IcZjU480Nghs
	USE+MDB0prTSxh5AEWETV6V0vCEasbwy/aBkMW4ncR39JfyKhLbbcuyy
X-Gm-Gg: ASbGncvweOlyg9TexZ4KxcansagIDBy2Y13fXKK6XOq1jbRTH6jKXEZ5FQlkgqBUA4i
	grU2YOumk+hUOP92bnd2oQkY8m7iDhsplOuYsYWtTM6a3mV8lMQHnLwbHS8OeRQ1Ex4Sdy65+Tg
	ggd1NDymJm/JZHUeuWF09jthz2hop3YSFUhWetxJRTN8cuylY9tM4meQWACLzpOlslNxiD9zayJ
	yO4hD1kAdg/y33EozApdVHFAu38TI7JCzBDPbAgbtkrLv5ez9SmTOw/JMnCap66C4xhJhYiQ9jQ
	s580f8jQ0iSfvmP2Tl0JNLamUbbRxlo0r+oH123tgpUz/VQIAOEHth5MrjCTXv9VlNlsvSM+yp1
	TtHaMwcTutxCp/nwLbgJtvlIf+UEKjptLYN8cjrdG6zCO6P5NZUX8aRM=
X-Google-Smtp-Source: AGHT+IHGrkQn7+NmuVgBdc10MUVOT+vd1j8NXgn0gL8ncYy9IeCu/BFaE0KTAPOvNiL0g93r6GOAgw==
X-Received: by 2002:a17:907:3f16:b0:b04:5a74:b674 with SMTP id a640c23a62f3a-b07c3a88730mr640143666b.58.1757763013249;
        Sat, 13 Sep 2025 04:30:13 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e720sm551560166b.104.2025.09.13.04.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 04:30:12 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 1/3] arm64: dts: allwinner: a527: cubie-a5e: Drop external 32.768
 KHz crystal
Date: Sat, 13 Sep 2025 13:30:10 +0200
Message-ID: <6190895.lOV4Wx5bFT@jernej-laptop>
In-Reply-To: <20250913102450.3935943-1-wens@kernel.org>
References: <20250913102450.3935943-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sobota, 13. september 2025 ob 12:24:48 Srednjeevropski poletni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> The Radxa Cubie A5E has empty pads for a 32.768 KHz crystal, but it is
> left unpopulated, as per the schematics and seen on board images. A dead
> give away is the RTC's LOSC auto switch register showing the external
> OSC to be abnormal.
>=20
> Drop the external crystal from the device tree. It was not referenced
> anyway.
>=20
> Fixes: c2520cd032ae ("arm64: dts: allwinner: a523: add Radxa A5E support")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts | 7 -------
>  1 file changed, 7 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> index 71074b072184..e333bbaf01d3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> @@ -24,13 +24,6 @@ chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> =20
> -	ext_osc32k: ext-osc32k-clk {
> -		#clock-cells =3D <0>;
> -		compatible =3D "fixed-clock";
> -		clock-frequency =3D <32768>;
> -		clock-output-names =3D "ext_osc32k";
> -	};
> -
>  	leds {
>  		compatible =3D "gpio-leds";
> =20
>=20





