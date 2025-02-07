Return-Path: <devicetree+bounces-143928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA09EA2C2F3
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 13:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C7C7167660
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 12:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B5061DFE04;
	Fri,  7 Feb 2025 12:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="fCFBhiQk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813D32417E1
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 12:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738932374; cv=none; b=mGpaPq0xiRGGQqb+eOWBkSqJRAOonayiAOoDu+T7jAnQP7b/ogOqrFONair3vtZzAiqw2GdM887EkMaOKjxhAo0Q/J9Mu06DbUdgTXpxBCNB4n6gNArL0tFjp6XgtgMMTrYhXHJKeAYXCH4ZxIkNfStkoxUAMcLDme8goM614Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738932374; c=relaxed/simple;
	bh=fjwoDgTcd0sBN1WicHu/k9TRQMUS1W81Ig5M2xU9l7o=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Content-Type; b=hNLNOGoH/ea//y7RTsCb786QdwTfugRmhQM4F6ppYsLuLLg7YjPs7SoVL7bheKYPJaXnwk1Lwa7Xta0bN5OOYyDOE0R1RBOTSZcVA2NUNEhcpKtVg2Ifb/y1H24xs8z1RljLOZnMsF6+5p7xN5YUlex4SSEF1ZiwfMvpBAikWAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=fCFBhiQk; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 55E993FE69
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 12:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738932369;
	bh=2ZwUPJofjuVtYyvUvViroJ51go9pRIvg6aRbC/noSgE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Content-Type;
	b=fCFBhiQk+dHfmA7QV8FRDm0NxYcENWEy8owF+Qx3L97DxHt+ja3t0WLIrNqQAEVlR
	 9G36wUWbs/COxtP3On5TRLEQ+4UwjKtXWTVnMHc6L44Jyh+WmmSsFMZhy+k+1JXnKE
	 5YWzJvYv13uDqk6WqAPc+vt65QV7DXk5jl2/H41upg7JIKT+CsuzaL4aF3QNtSgY0f
	 LINK9TN+ScCIGBXh8egbIMYPBtmgt85V4+q4ty+7LIeOqw1IJTq96UoSaH6vKCpOuv
	 cQqGPY6JA+J+Rsz+CGhbGUy+/8A7gL4brhwQWjUzfHURe0rViivjauw1dHjpNjHDmv
	 6850BtUfNGtAg==
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-2b7f8307574so1986918fac.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 04:46:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738932368; x=1739537168;
        h=to:subject:message-id:date:mime-version:references:in-reply-to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2ZwUPJofjuVtYyvUvViroJ51go9pRIvg6aRbC/noSgE=;
        b=aDjZZa8PWSOgwV+SpVylJ4ld0C39p/1zlq2nCSO10Kk8Z86IzxmzH2pGzf9H7e2qHX
         crXrt1X1G+2kAQGKgrlChwk6gNPTvW2CtmSQ6VxLNTvAeRHX3JvRA+h3bqhH1TRwtwni
         DOCBG+yg6WV5UW0kuYOqS4Mcr2ZW3X02OcLsoSrqSzEya1ebdM/8ko8Omi7mEgzB+rIy
         2Yg/GXYuDdzEkg5CtsW9ToDLLO80OgVRlDfwYyKZoK5zDpZebZ0VSnDfbl+uhFzGQ+Sb
         fod1mWzl9ssUa6mJ3MCBEldg1heosThGVr32GiY7yGKiXusCEScyiG+4b8s8oJE/TIyR
         AMCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXX7jsVejvKnO+eGV/DKjO01S95FrQYyp/4Tgk2SFg7ULIixfrxsUbcqBNm9JVeKsWRpw7CDMO1kw7@vger.kernel.org
X-Gm-Message-State: AOJu0YxNmGDdeX3x1SI8YAhkbi1CQORTTPXyIHedpVYnB72+9MH2AVb4
	7AJDu8Hi11TKg6EZh5RhHrAkjM0pg41BV0HG1TmK3Rg/SRuAe9I8K+pFxJGQqSSszB8aHL42mKm
	6HEU//ZjcQ0sAlcqs13waMgX3k/J33pr8c+JJmm4foFULks2anpu2NwGQUIDzaWHHYAMR/iB+nB
	IcHsAAH6s/FpO4YCuRHFhF7KuXOhTtaPCuDUVkYaqUPhCduZbDUQ==
X-Gm-Gg: ASbGnctBlQYCIP/vmbjD9JsAgZEMhIh57Quv0SsOQRP9sAEnihpLQEFRqAufh4nnmzT
	5803sHZZMsFGBhFQcIoug0MNPnkBKZ0VYWp9wS3gw45eZPfqGtxS0xgDWUysF4Q==
X-Received: by 2002:a05:6870:c4f:b0:29e:354e:5fdb with SMTP id 586e51a60fabf-2b83ef92ce2mr1639816fac.37.1738932368243;
        Fri, 07 Feb 2025 04:46:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8717iINw6GQLmXUMzAsQEraXJmnomHeDq/9rOE8N8dSrNmc1FXULqlUBnU6Vyo0eCApuqsrLIMq5Hi2dty7Y=
X-Received: by 2002:a05:6870:c4f:b0:29e:354e:5fdb with SMTP id
 586e51a60fabf-2b83ef92ce2mr1639799fac.37.1738932368012; Fri, 07 Feb 2025
 04:46:08 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 7 Feb 2025 04:46:07 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 7 Feb 2025 04:46:07 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <TYCPR01MB8437F6FCD14E116B6CBBA09098F72@TYCPR01MB8437.jpnprd01.prod.outlook.com>
References: <TYCPR01MB8437F6FCD14E116B6CBBA09098F72@TYCPR01MB8437.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 7 Feb 2025 04:46:07 -0800
X-Gm-Features: AWEUYZmHbacGaT6tTq_P7xegNAmTpSpPwRhBA5Opynsjcw0ztqQPHtv9Yj0u9dM
Message-ID: <CAJM55Z_zuaXSchVFwdiCzJJ3j2fHKg-w6j4GP+sqKB3AgvipxQ@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: Unify regulator naming scheme
To: Shengyu Qu <wiagn233@outlook.com>, conor@kernel.org, kernel@esmil.dk, 
	robh@kernel.org, krzk+dt@kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Shengyu Qu wrote:
> Currently, there are 3 regulators defined in JH7110's common device tree,
> but regulator names are mixed with "-" and "_". So unify them to "_",
> which is more often to be seen in other dts files.
>
> Signed-off-by: Shengyu Qu <wiagn233@outlook.com>

Thanks!

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 48fb5091b8176..dd2eefc295e5c 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -233,7 +233,7 @@ vdd_cpu: dcdc2 {
>  				regulator-always-on;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1540000>;
> -				regulator-name = "vdd-cpu";
> +				regulator-name = "vdd_cpu";
>  			};
>
>  			emmc_vdd: aldo4 {
> --
> 2.48.1
>

