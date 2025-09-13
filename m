Return-Path: <devicetree+bounces-216770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97547B5607F
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 13:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B68B3A7D3D
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A23A2727E0;
	Sat, 13 Sep 2025 11:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AfN419yu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D6BB67F
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 11:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757763075; cv=none; b=qwC1kFKc3iMxKC6dHKSP0CqAzW75c1belPzPuOL9NrmAmVlHsx67wjdegJcE/+qLTkCgOicPrD3Y4e7ppx0mx5gAWCrBMWFW59Ch1Vbbg1ycBmq9ejRvLjaxltmA7J4MD4HnViYQQjLFmxqTgtYXXB6IEJ3RMBqXhVVNMUzubkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757763075; c=relaxed/simple;
	bh=Bgi/LtOZegcBC2paPEdpNuoA8uNY2waphFWpS0NN/k0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qhWNlanfoLIZt+wg2oc9f6QYblgw48kaBqg2FSFscsEylS7VahwYZV8j55y60WiMPpDcmTGHsL7XEDgS20OGo57H1YvqxZ1ErCNwsVMdZFCaKFLaZjv3vIoIKtGs4T0XdcsJTSnQKF5SaGc955lEJu3Yhpk6a4vo8Q4ODx9pEPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AfN419yu; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b07c081660aso359094766b.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 04:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757763072; x=1758367872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbaWkghAVJNKzBV/Fp3pj0pkQCQlDE9HrxdJcUrmDgM=;
        b=AfN419yuohMKYMdIU+2No/QLVzEgG82Gic+xV7MzrB6aoCbo/w7+YBbtz0YAOFwmsg
         Y8Lc9uQiwK7zL2iBUdH1hQP6Nej/c9CXsBbWV6P046hYnLthb0Sv/9bxvTvT37W2ab7t
         HwiM7ZOXZ43IFSzDeUm93wRST6COFetO2L4FLKUTqahctcqjyu0YZK+tXTds1HiyL36E
         YoZ2KbH4Z+88du3scCDCwXIPVUhUhJdDzfGfihzInlrPfP2+vgG5gqbYJeBcbvQ6cNEr
         J27sLZ4lIfg5vRaBCZQ8ZbxBaAMMHY8Iu3MIGRufGYCuHb2CiuEKylF9bV/rMYxYHv9z
         ESAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757763072; x=1758367872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbaWkghAVJNKzBV/Fp3pj0pkQCQlDE9HrxdJcUrmDgM=;
        b=jjN/m/bwEeBOui2JC6soZDclUeg2nSuwESbqyNyprxmesadKVBAO0xO7h8K4WSPtWn
         pM4k/jLNzmcg/V2QYy8A2sK7SAV6M6iaUUNHE9XyIM47SzT3cGj95v0lCV3OJrFJ4eQN
         NeT4Jz9+pfjKmCUG7lPv9Tf3Tf7MowmdxQSJxwI/d5d3fJEG35HnTnKct+gBtfQ8q82W
         +QoeiKDfT7Gn2bPQ7Uz1ee4WPOH3eBgBjwFM+Q6KYVN3NcI9a0+/AE+AI9MQCgEhY6qM
         n1fNLghafQciJrcoU4TzEg8V2nLUoc0kEUAXPJLj3mGgtBqpc+t0H5fApaRMQj6tgl7s
         86mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvsR2i9oqCCJXepdvVP80O/4qNNjAYd7k0KyIvH82rdzAXr3y6AdchFBxX9vl9+KSAE3GDry2Ojpq1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzvo3/SKijghfDfytdKjPNoKQn0lw0XKCFv4vMea3qgthLpVdQ
	mHWl6DfRlqPteMUlOtVYrcvc9m2R/yIFJgq5We7uSDBVis3UZUdsaq1z6YbbVQ==
X-Gm-Gg: ASbGnctTqYnqpHGryfCraf1WxqEj211abKIUouUcE2vQDAgPp//6ngY4vLi3DrOa4O8
	84mWQdSfL6vTw6XT5/PuXCUxPbHwmiJ748+b7Py5kvyetwipa2hNCozT0L+D4zSXfIF0XmDTLS1
	Dee35p0pZs0JnXw7V0WTkw6RugGWtUhnKD4mCOReM0avQkEYTlPgy6xXVjzCZN2gwnNFaMxizql
	DsY2+PHy0Q+0bLYx0rPK4s44xHPeCeJ2nL7U1BqaERqLuvAgoUcfp9dOcd/Hx/aPx0DqR0RmAAd
	IMEVNdjAfGQYvUd8FnjCnZm6j6o7+Ahh7NlxrtCRVgvUJssvsB8MVrsGANZjGbgNqoKdL2v/3Gu
	DfA5yssdZ1FvUCWi0OY08Zf+m/RG8Gt7YWirccXD1iV8BQoVnsNcTqsA=
X-Google-Smtp-Source: AGHT+IGo8CziTZlFFDXaGrQNSM6imSKcLrT5E0r4aNs8WHUFIZfpN9rTwSz+1wD/ImFHnj2/i6E30Q==
X-Received: by 2002:a17:906:ca56:b0:b07:cd08:ff34 with SMTP id a640c23a62f3a-b07cd08ffe4mr358053766b.51.1757763072002;
        Sat, 13 Sep 2025 04:31:12 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b30da327sm560756966b.11.2025.09.13.04.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 04:31:11 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 2/3] arm64: dts: allwinner: t527: avaota-a1: hook up external 32k
 crystal
Date: Sat, 13 Sep 2025 13:31:09 +0200
Message-ID: <4676490.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <20250913102450.3935943-2-wens@kernel.org>
References:
 <20250913102450.3935943-1-wens@kernel.org>
 <20250913102450.3935943-2-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sobota, 13. september 2025 ob 12:24:49 Srednjeevropski poletni =C4=8Das=
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
> Fixes: dbe54efa32af ("arm64: dts: allwinner: a523: add Avaota-A1 router s=
upport")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts b/ar=
ch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> index 535387912d9b..054d0357c139 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> @@ -354,6 +354,14 @@ &r_pio {
>  	vcc-pm-supply =3D <&reg_aldo3>;
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





