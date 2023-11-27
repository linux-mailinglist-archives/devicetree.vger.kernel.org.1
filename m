Return-Path: <devicetree+bounces-19376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1C07FAA95
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 20:49:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCF4A28198A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 19:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 978833DBB3;
	Mon, 27 Nov 2023 19:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQmRGurt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6691DFFA
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 19:49:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF345C433CC;
	Mon, 27 Nov 2023 19:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701114586;
	bh=kLT4h06WD18nH9XJUOYId4CY/OMjL8Pp0wVPy8Dmo5k=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZQmRGurtQ/ymuqgkPK0S1auQK1jsqKsXA7ocVJ8YHFYFckwUYrdWasFs0vthwPFG6
	 cBGuFNJI0ddO7kW1QKc6Yu76RJ6F+jdK1uA9IFXFukRKB/QZpSDPByMLL+x9iXczaF
	 ihxrobCdRdEws2xjOf2N8p6R5ZH9Lkmwuro/zv+59tyIcoavkt/6B53khFbQBn2J6D
	 KrptU5Ez5t2g0e7dEbsTHGk+xOWdSOG2F2nl6IZMey806jXeFaGvmKCwbRJwUXpWQr
	 e+FnZbMo8h9N1MdTFLHkYW6r7skfAckBzAQTR6El+QFn+3FN2MIfP1BPfb5UWRVkkS
	 nepgkAVRhzUrw==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-507ad511315so6519543e87.0;
        Mon, 27 Nov 2023 11:49:45 -0800 (PST)
X-Gm-Message-State: AOJu0YwNX8RGa74I6oIsKbUZjRZfChBcxApGLLDNMkNFB4Ig/7N64cMr
	biYjrUWfoG3RT9260QyrO7sCGlSGHIl/rlMRTg==
X-Google-Smtp-Source: AGHT+IGNdZ3nXKFdr7ac3lMqcvw4UBbPABOb47aX7ue0+l6bJSzouGDgMxTJptlpiC2GKZuLcdUzV8D/ndIVyh6M4AY=
X-Received: by 2002:a05:6512:b97:b0:502:ff3b:766f with SMTP id
 b23-20020a0565120b9700b00502ff3b766fmr11352186lfv.6.1701114584115; Mon, 27
 Nov 2023 11:49:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231127190857.1977974-1-enachman@marvell.com> <20231127190857.1977974-2-enachman@marvell.com>
In-Reply-To: <20231127190857.1977974-2-enachman@marvell.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 27 Nov 2023 13:49:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ90mOMUS040SBtjnuELcyM1qnOyHzuga6xPNbMct2PvA@mail.gmail.com>
Message-ID: <CAL_JsqJ90mOMUS040SBtjnuELcyM1qnOyHzuga6xPNbMct2PvA@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] MAINTAINERS: add ac5 to list of maintained Marvell
 dts files
To: Elad Nachman <enachman@marvell.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch, 
	gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com, pali@kernel.org, 
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 1:09=E2=80=AFPM Elad Nachman <enachman@marvell.com>=
 wrote:
>
> From: Elad Nachman <enachman@marvell.com>
>
> Add ac5 dts files to the list of maintained Marvell Armada dts files
>
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index b81da7a36a36..6f863a0c3248 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2339,6 +2339,7 @@ F:        arch/arm/boot/dts/marvell/armada*
>  F:     arch/arm/boot/dts/marvell/kirkwood*
>  F:     arch/arm/configs/mvebu_*_defconfig
>  F:     arch/arm/mach-mvebu/
> +F:     arch/arm64/boot/dts/marvell/ac5*
>  F:     arch/arm64/boot/dts/marvell/armada*
>  F:     arch/arm64/boot/dts/marvell/cn913*

$ ls arch/arm64/boot/dts/marvell/
ac5-98dx25xx.dtsi                    armada-7040.dtsi
armada-ap810-ap0.dtsi
ac5-98dx35xx.dtsi                    armada-7040-mochabin.dts
armada-ap810-ap0-octa-core.dtsi
ac5-98dx35xx-rd.dts                  armada-70x0.dtsi
armada-common.dtsi
armada-371x.dtsi                     armada-8020.dtsi
armada-cp110.dtsi
armada-3720-db.dts                   armada-8040-clearfog-gt-8k.dts
armada-cp115.dtsi
armada-3720-eDPU.dts                 armada-8040-db.dts
armada-cp11x.dtsi
armada-3720-espressobin.dts          armada-8040.dtsi
cn9130-crb-A.dts
armada-3720-espressobin.dtsi         armada-8040-mcbin.dts
cn9130-crb-B.dts
armada-3720-espressobin-emmc.dts     armada-8040-mcbin.dtsi
cn9130-crb.dtsi
armada-3720-espressobin-ultra.dts    armada-8040-mcbin-singleshot.dts
cn9130-db-B.dts
armada-3720-espressobin-v7.dts       armada-8040-puzzle-m801.dts
cn9130-db.dts
armada-3720-espressobin-v7-emmc.dts  armada-8080-db.dts
cn9130-db.dtsi
armada-3720-gl-mv1000.dts            armada-8080.dtsi
cn9130.dtsi
armada-3720-turris-mox.dts           armada-80x0.dtsi
cn9131-db-B.dts
armada-3720-uDPU.dts                 armada-ap806.dtsi
cn9131-db.dts
armada-3720-uDPU.dtsi                armada-ap806-dual.dtsi
cn9131-db.dtsi
armada-372x.dtsi                     armada-ap806-quad.dtsi
cn9132-db-B.dts
armada-37xx.dtsi                     armada-ap807.dtsi
cn9132-db.dts
armada-7020.dtsi                     armada-ap807-quad.dtsi
cn9132-db.dtsi
armada-7040-db.dts                   armada-ap80x.dtsi                 Make=
file

Looks to me like a single entry will do:

F: arch/arm64/boot/dts/marvell/

Rob

