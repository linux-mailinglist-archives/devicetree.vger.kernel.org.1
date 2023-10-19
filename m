Return-Path: <devicetree+bounces-9952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D69687CF2AA
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DAE6B20F63
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7169B2F52;
	Thu, 19 Oct 2023 08:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfOJFjvN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5533C15AE4
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:34:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2400DC43397;
	Thu, 19 Oct 2023 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697704462;
	bh=NhE5UIsqUJ4efk9oQr6qapwxmbKSoNoKRWUzC+fdU/U=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mfOJFjvNTwSFckxY8HVYKBdkuAvKK2M1sGBFjPYxaefFJOs25rTAhU+Rz/XkzUDsP
	 7ZG6NVlLtrmyh2UnWdcTTvKnv0Ri9cTPDKnnP8QKgoDoQte2xDFxuqHh+2CFJni6OH
	 UnpSCujhj0HqMbcfS4yyAemzQCrEcGslxDqcd+joFCb/HlB9dYh+6QLIzjscIvWMCB
	 h0p3a4ysggwrxmCyWDOHqdti1U9h9XmWwvUKhrItqUaZSFYQRW3xh6eG5Uyags4OOl
	 kIpJPJHJDIEKQp20gjbHYBc0ytizLGA52FaVFGs5LAn97piCYpUebHipa9tJal98Oi
	 rmq6AhSP9zb8w==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-53b32dca0bfso1158721a12.0;
        Thu, 19 Oct 2023 01:34:22 -0700 (PDT)
X-Gm-Message-State: AOJu0YwYzLsNEpIaQBHWwnvuYjBWZI2B5DxhBz2HwcPrOHMEGlxjfD0k
	XcqqZXTuAprq99czDj8J8lFjF4tjsa5SDnpDVzE=
X-Google-Smtp-Source: AGHT+IG1scZ789rr7dQG139RsrK3rRMsLv+J/dEBVZhjOtJ1+/tUHJQBuLx63Z1s4dB1EVoakod2MaMhPSLUphq3mAo=
X-Received: by 2002:a50:9353:0:b0:53d:a18d:73b4 with SMTP id
 n19-20020a509353000000b0053da18d73b4mr998683eda.12.1697704460540; Thu, 19 Oct
 2023 01:34:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com> <20231017-th1520-mmc-v2-1-4678c8cc4048@baylibre.com>
In-Reply-To: <20231017-th1520-mmc-v2-1-4678c8cc4048@baylibre.com>
From: Guo Ren <guoren@kernel.org>
Date: Thu, 19 Oct 2023 16:34:08 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSZPR1Gxj8sCB6Q7KiJiYot60qryEzt8GFwtwMubFBWsQ@mail.gmail.com>
Message-ID: <CAJF2gTSZPR1Gxj8sCB6Q7KiJiYot60qryEzt8GFwtwMubFBWsQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head
 TH1520 support
To: Drew Fustini <dfustini@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, 
	Robert Nelson <robertcnelson@beagleboard.org>, Jason Kridner <jkridner@beagleboard.org>, 
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 4:45=E2=80=AFAM Drew Fustini <dfustini@baylibre.com=
> wrote:
>
> Add compatible value for the T-Head TH1520 dwcmshc controller.
>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yam=
l b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index a43eb837f8da..42804d955293 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -19,6 +19,7 @@ properties:
>        - rockchip,rk3568-dwcmshc
>        - rockchip,rk3588-dwcmshc
>        - snps,dwcmshc-sdhci
> +      - thead,th1520-dwcmshc
Acked-by: Guo Ren <guoren@kernel.org>

>
>    reg:
>      maxItems: 1
>
> --
> 2.34.1
>


--=20
Best Regards
 Guo Ren

