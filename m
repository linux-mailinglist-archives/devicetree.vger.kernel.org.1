Return-Path: <devicetree+bounces-16874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA397F0321
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 23:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25E5F1F22832
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 22:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D92DDAC;
	Sat, 18 Nov 2023 22:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JO2w5meS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9AC312B
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 14:32:38 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53e04b17132so4516294a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 14:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700346757; x=1700951557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xmodopo9n14EmEMv9SArLEUQIKXZI3v8dWw2wd5XbIo=;
        b=JO2w5meSdrjE1rSc3A3HS89krXKJvBA7+JZgxIYDF5OmSc/ScLmmfOF8MYe3hKcjKj
         s0IAVo+v2nENvQwQk1KtivzuNp6E0PpXNroduc3wpq1x/wvzVmQTwxfK4SYGzgSD30pM
         6F40h9GhEtQ8ME4PLiPEQTEUO4X9gN/3or+7l/Z77+rWuWoITLnFwrLJ2mqUsd9gx0pT
         NRvgqmzbhX6KSew62vq1vM3FwHSC1WpbtuVRD/tJGbECNfXXpWfN+yVVMb6E2iQ19WXl
         daMhFAzUwdSwcL+MZ/dsfUvZNkmfsBySiVe/U+ij7CRk9qrMKX2OgJKnnYaTy8TO64vy
         i09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700346757; x=1700951557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xmodopo9n14EmEMv9SArLEUQIKXZI3v8dWw2wd5XbIo=;
        b=dROm/UxKcA4viPPN1swPdbzxm5jyd6R6X8WAWKJLALpcY86dDkX+hgqMlGWnNzt6LJ
         fHglDIcr5BEzlFyHuPaTCMfE20c3F5BJPCDubsvXMfOt97QRQmKqY1AhHByLUM/iAttn
         +UsmToV1xj//xBPa1Ev30PvBt058YNEa20qvKs+R+jrA/VVaAIvIJ/3CbX0kMC03ReLI
         DZjzGgPOyLqz4+I35zB0L3v5juqVktPXelK5zEfD49Uh5EQucIjiiobLqYJQ0cSBYAd1
         0TjRwlT+cyagXC0xb+qS4UMrcwvZfY5N9s1JAcEhFzQibpv6zPCrI+IsDr7Axe+Gfae7
         wFuQ==
X-Gm-Message-State: AOJu0YwABui/flWOJ5weZ2G1rQU6SZdR1QTBFAowP4AQzwXZflpJ8GMt
	SMMnwDJYHcsszwPEqcWtH68=
X-Google-Smtp-Source: AGHT+IEkKJqoOlvE7wwcSvsw4Vcnw2NACh956uYFLCk9aIACXgIPmTqnxZlpAX4pgQsadsV5e788rQ==
X-Received: by 2002:a17:906:9e0e:b0:9c5:c9a2:9164 with SMTP id fp14-20020a1709069e0e00b009c5c9a29164mr1704667ejc.32.1700346756994;
        Sat, 18 Nov 2023 14:32:36 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id ha7-20020a170906a88700b009fc990d9edbsm168909ejb.192.2023.11.18.14.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Nov 2023 14:32:36 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Pavel =?ISO-8859-1?Q?L=F6bl?= <pavel@loebl.cz>
Cc: devicetree@vger.kernel.org, Pavel =?ISO-8859-1?Q?L=F6bl?= <pavel@loebl.cz>
Subject:
 Re: [PATCH 1/3] ARM: dts: sunxi: remove duplicated entries in makefile
Date: Sat, 18 Nov 2023 23:32:35 +0100
Message-ID: <3259833.aeNJFYEL58@jernej-laptop>
In-Reply-To: <20231118111418.979681-1-pavel@loebl.cz>
References: <20231118111418.979681-1-pavel@loebl.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Dne sobota, 18. november 2023 ob 12:14:16 CET je Pavel L=F6bl napisal(a):
> During introduction of DTS vendor subdirectories in 724ba6751532, sun8i
> section of the makefile got duplicated. Clean that up.
>=20
> Signed-off-by: Pavel L=F6bl <pavel@loebl.cz>

I guess fixes tag would be in order?

Best regards,
Jernej

> ---
>  arch/arm/boot/dts/allwinner/Makefile | 62 ----------------------------
>  1 file changed, 62 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/all=
winner/Makefile
> index 2d26c3397f14..2a4162657a2c 100644
> --- a/arch/arm/boot/dts/allwinner/Makefile
> +++ b/arch/arm/boot/dts/allwinner/Makefile
> @@ -260,68 +260,6 @@ dtb-$(CONFIG_MACH_SUN8I) +=3D \
>  	sun8i-v3s-licheepi-zero.dtb \
>  	sun8i-v3s-licheepi-zero-dock.dtb \
>  	sun8i-v40-bananapi-m2-berry.dtb
> -dtb-$(CONFIG_MACH_SUN8I) +=3D \
> -	sun8i-a23-evb.dtb \
> -	sun8i-a23-gt90h-v4.dtb \
> -	sun8i-a23-inet86dz.dtb \
> -	sun8i-a23-ippo-q8h-v5.dtb \
> -	sun8i-a23-ippo-q8h-v1.2.dtb \
> -	sun8i-a23-polaroid-mid2407pxe03.dtb \
> -	sun8i-a23-polaroid-mid2809pxe04.dtb \
> -	sun8i-a23-q8-tablet.dtb \
> -	sun8i-a33-et-q8-v1.6.dtb \
> -	sun8i-a33-ga10h-v1.1.dtb \
> -	sun8i-a33-inet-d978-rev2.dtb \
> -	sun8i-a33-ippo-q8h-v1.2.dtb \
> -	sun8i-a33-olinuxino.dtb \
> -	sun8i-a33-q8-tablet.dtb \
> -	sun8i-a33-sinlinx-sina33.dtb \
> -	sun8i-a83t-allwinner-h8homlet-v2.dtb \
> -	sun8i-a83t-bananapi-m3.dtb \
> -	sun8i-a83t-cubietruck-plus.dtb \
> -	sun8i-a83t-tbs-a711.dtb \
> -	sun8i-h2-plus-bananapi-m2-zero.dtb \
> -	sun8i-h2-plus-libretech-all-h3-cc.dtb \
> -	sun8i-h2-plus-orangepi-r1.dtb \
> -	sun8i-h2-plus-orangepi-zero.dtb \
> -	sun8i-h3-bananapi-m2-plus.dtb \
> -	sun8i-h3-bananapi-m2-plus-v1.2.dtb \
> -	sun8i-h3-beelink-x2.dtb \
> -	sun8i-h3-libretech-all-h3-cc.dtb \
> -	sun8i-h3-mapleboard-mp130.dtb \
> -	sun8i-h3-nanopi-duo2.dtb \
> -	sun8i-h3-nanopi-m1.dtb\
> -	\
> -	sun8i-h3-nanopi-m1-plus.dtb \
> -	sun8i-h3-nanopi-neo.dtb \
> -	sun8i-h3-nanopi-neo-air.dtb \
> -	sun8i-h3-nanopi-r1.dtb \
> -	sun8i-h3-orangepi-2.dtb \
> -	sun8i-h3-orangepi-lite.dtb \
> -	sun8i-h3-orangepi-one.dtb \
> -	sun8i-h3-orangepi-pc.dtb \
> -	sun8i-h3-orangepi-pc-plus.dtb \
> -	sun8i-h3-orangepi-plus.dtb \
> -	sun8i-h3-orangepi-plus2e.dtb \
> -	sun8i-h3-orangepi-zero-plus2.dtb \
> -	sun8i-h3-rervision-dvk.dtb \
> -	sun8i-h3-zeropi.dtb \
> -	sun8i-h3-emlid-neutis-n5h3-devboard.dtb \
> -	sun8i-r16-bananapi-m2m.dtb \
> -	sun8i-r16-nintendo-nes-classic.dtb \
> -	sun8i-r16-nintendo-super-nes-classic.dtb \
> -	sun8i-r16-parrot.dtb \
> -	sun8i-r40-bananapi-m2-ultra.dtb \
> -	sun8i-r40-oka40i-c.dtb \
> -	sun8i-s3-elimo-initium.dtb \
> -	sun8i-s3-lichee-zero-plus.dtb \
> -	sun8i-s3-pinecube.dtb \
> -	sun8i-t113s-mangopi-mq-r-t113.dtb \
> -	sun8i-t3-cqa3t-bv3.dtb \
> -	sun8i-v3-sl631-imx179.dtb \
> -	sun8i-v3s-licheepi-zero.dtb \
> -	sun8i-v3s-licheepi-zero-dock.dtb \
> -	sun8i-v40-bananapi-m2-berry.dtb
>  dtb-$(CONFIG_MACH_SUN9I) +=3D \
>  	sun9i-a80-optimus.dtb \
>  	sun9i-a80-cubieboard4.dtb
>=20





