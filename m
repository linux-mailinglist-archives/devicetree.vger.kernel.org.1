Return-Path: <devicetree+bounces-22587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D066A8082F9
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7ADBE1F21B02
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A48D2E3E5;
	Thu,  7 Dec 2023 08:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgoWbrNo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0211E4A9
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 08:27:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5C38C433CC;
	Thu,  7 Dec 2023 08:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701937672;
	bh=HdOGiDC74cN+R/1jMps1M6Cpu/JgOIIA9PS+KkU5Jho=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EgoWbrNoeKido2fp/wA97ahq5XsTXL4sEr/J2gWH910uAuctgxAFaAILpYZDqyyuy
	 a9AfrDDgo+547ZeCPEmkjBIADRRzWvX2IVano5agHWaqcLO4jdUpnzxT2HMeIg56VK
	 +fAIABDaN+RtzZZUovQJb73/hWDBPOvwfO6Y2zmeG2rpZAPOCg9NxQ+U1xNZCn9pwA
	 ZBHG+h4KbU8ElJ/hUEb32SDhmwDGZy91f92qsb0TdeaxyCjKyt0LRIV0vNgtMArvNJ
	 oGOP1IR+GloFvwX+L5GW1wnXVVvH3dtuMzZvQYac+sh+OSlRcaB4PTn5Z1OiUNvGnZ
	 /tozLi9yduL/g==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-54c846da5e9so561852a12.3;
        Thu, 07 Dec 2023 00:27:52 -0800 (PST)
X-Gm-Message-State: AOJu0YyFQZVfS+qOV4kWT5xslC8rjKwhkdK7kyQfjZ/SgilVXZ+MrchS
	na+tBkTtE8zrW9Zh53LRCll/aezhthi1pEzghg0=
X-Google-Smtp-Source: AGHT+IEEeQLs48FjD1tu1jCgFUiaF0NFFL7hxNR/0WeiCAyg/3xhAHxC8hLAJhTy47fdCXPPs95Vlrxh7blFLytYhjg=
X-Received: by 2002:a17:906:a2d0:b0:a17:ab92:3d55 with SMTP id
 by16-20020a170906a2d000b00a17ab923d55mr1658721ejb.19.1701937671332; Thu, 07
 Dec 2023 00:27:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com> <20231206-th1520_mmc_dts-v8-3-69220e373e8f@baylibre.com>
In-Reply-To: <20231206-th1520_mmc_dts-v8-3-69220e373e8f@baylibre.com>
From: Guo Ren <guoren@kernel.org>
Date: Thu, 7 Dec 2023 16:27:40 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSXwFpnQKxKx2SkV91rjE1zo5L8Y=jVoc+A0CO1i3mz1Q@mail.gmail.com>
Message-ID: <CAJF2gTSXwFpnQKxKx2SkV91rjE1zo5L8Y=jVoc+A0CO1i3mz1Q@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] riscv: dts: thead: Enable BeagleV Ahead eMMC and microSD
To: Drew Fustini <dfustini@baylibre.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Jisheng Zhang <jszhang@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Jason Kridner <jkridner@beagleboard.org>, Robert Nelson <robertcnelson@beagleboard.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 6, 2023 at 4:09=E2=80=AFPM Drew Fustini <dfustini@baylibre.com>=
 wrote:
>
> Add emmc node properties for the eMMC device and add sdio0 node
> properties for the microSD slot. Set the frequency for the sdhci
> reference clock.
>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 20 ++++++++++++++++=
++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/ri=
scv/boot/dts/thead/th1520-beaglev-ahead.dts
> index 70e8042c8304..d9b4de9e4757 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> @@ -48,6 +48,10 @@ &apb_clk {
>         clock-frequency =3D <62500000>;
>  };
>
> +&sdhci_clk {
> +       clock-frequency =3D <198000000>;
> +};
> +
>  &uart_sclk {
>         clock-frequency =3D <100000000>;
>  };
> @@ -56,6 +60,22 @@ &dmac0 {
>         status =3D "okay";
>  };
>
> +&emmc {
> +       bus-width =3D <8>;
> +       max-frequency =3D <198000000>;
> +       mmc-hs400-1_8v;
> +       non-removable;
> +       no-sdio;
> +       no-sd;
> +       status =3D "okay";
> +};
> +
> +&sdio0 {
> +       bus-width =3D <4>;
> +       max-frequency =3D <198000000>;
> +       status =3D "okay";
> +};
> +
>  &uart0 {
>         status =3D "okay";
>  };
>
> --
> 2.34.1
>
Maybe, we could share some parts with th1520-lichee-module-4a.dtsi.
Others, LGTM.|

Reviewed-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

