Return-Path: <devicetree+bounces-28543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 075FF81EA06
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 21:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 733461F22961
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 20:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8932A23C9;
	Tue, 26 Dec 2023 20:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="U/bXYRkq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A95291E
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 20:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9BAB43F744
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 20:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703623128;
	bh=Djn6TTGNbUaMLBQ5Tkld5fmUYHXzaNFYV9Ts29FavxY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=U/bXYRkqvuPJ7jgH0SSqhByRXMJO+gO9bZ8EZSVfwp7FedxdosjlIbja4SfxTm+qW
	 6GetwR0A6vPuBQiPiliOLvn+oLtJZRqtfFiSM7jlTjB0l6+0Ef914557ypR2n2IhLB
	 ZrHPqS1K6Dkxv153a68SgRvENaqnLbW0dd4azW6BlpfTHiu/NbdNpo2aNbqlN3VCVf
	 50ZB93OAT4edKdOr+SnnzpkjdyLUQlEEXmVp27j7i9MMUJdsFx4eqNygYAFDOx+2Jh
	 +M/udGLhnZiszzv9+JpL9xvvlyLgR1WlzetLqQK9hQapQIfUyeUQXdWh4hL4pV8phv
	 JyHcX1+cdZ+0w==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-427e291776aso12793491cf.0
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 12:38:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703623127; x=1704227927;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Djn6TTGNbUaMLBQ5Tkld5fmUYHXzaNFYV9Ts29FavxY=;
        b=g7YirGnMZpka45/YLzdyYWsX5EcdGKEOVyTcuNowC3T0Gr8jdFaJcB+VZ5eIcDo+eP
         hv6+Qe17Nl5loTgKcPud+9K1Q0nSxwSzeHzAuthWPCSzL0WcUQv8dzWv70A+FZHkNUkU
         OstdmgrVrY77DIineWVE6JgqFnr8jJvIxDZ4XIfJ24xOTqSHkIpUSD+tz3acUEO0/c2W
         CkXz6vgKFLprv3y/G9WonzddJIzybP58nwtCVi6NJqzIKTQe4vQDbsDnHS2RPJMPoBw1
         UkdJpjYpFfcCSdSwhfmvgCp0b96Hfmv4T5UTWIm0YwZ4j5N4tZ/Ntm2aDJntlQl2gBAD
         lVaQ==
X-Gm-Message-State: AOJu0Yw0vw2wZSqkFoFCRYBvaCj4J/sICMcoZ+RSIBwuXvsmAooV/bok
	zCdOAybSGYsSTg714db/RkaAeuOvc3VWMGcmm/WfCcvtN0GBW/j1hdivGODGCkQ8wYH7sOfcEld
	QPovc8aCNUF9Kp7rrQGXw/cOBKZyNj3qEvtcRLp6dCY0/fq7ZQ6oEylvoRf1k5g==
X-Received: by 2002:a05:622a:5c90:b0:423:78de:56ba with SMTP id ge16-20020a05622a5c9000b0042378de56bamr13275528qtb.5.1703623127612;
        Tue, 26 Dec 2023 12:38:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkBcNmOkhD6wJMv531GgQEeoR49FI/OpBlYQ9yMs4vysRZYNTjlEtgtQz6jWi5pNKjnUkxUpT1fJtjnJHAMQ0=
X-Received: by 2002:a05:622a:5c90:b0:423:78de:56ba with SMTP id
 ge16-20020a05622a5c9000b0042378de56bamr13275506qtb.5.1703623127336; Tue, 26
 Dec 2023 12:38:47 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 26 Dec 2023 14:38:26 -0600
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231220211743.2490518-1-cristian.ciocaltea@collabora.com>
References: <20231220211743.2490518-1-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 26 Dec 2023 14:38:26 -0600
Message-ID: <CAJM55Z9tKQ_hpxrGUq1Rx1kxzzs-dyd=4yT1z=8B7KQ=CZ4mjA@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] Enable networking support for StarFive JH7100 SoC
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Richard Cochran <richardcochran@gmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Jacob Keller <jacob.e.keller@intel.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> This patch series adds ethernet support for the StarFive JH7100 SoC and
> makes it available for the StarFive VisionFive V1 and BeagleV Starlight
> boards, although I could only validate on the former SBC.  Thank you Emil
> and Geert for helping with tests on BeagleV!
>
> The work is heavily based on the reference implementation [1] and depends
> on the SiFive Composable Cache controller and non-coherent DMA support
> provided by Emil via [2] and [3].
>
> *Update 1*: As of next-20231214, dependencies [2] & [3] have been merged.
>
> *Update 2*: Since v5, the dwmac patches will be handled via [4], while the
>             clock patches subset via [5].

I'm not sure my rb my sense when I'm listed as a co-developer, but this version
looks good to me:

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>
> [1] https://github.com/starfive-tech/linux/commits/visionfive
> [2] https://lore.kernel.org/all/CAJM55Z_pdoGxRXbmBgJ5GbVWyeM1N6+LHihbNdT26Oo_qA5VYA@mail.gmail.com/
> [3] https://lore.kernel.org/all/20231130151932.729708-1-emil.renner.berthing@canonical.com/
> [4] https://lore.kernel.org/lkml/20231220002824.2462655-1-cristian.ciocaltea@collabora.com/
> [5] https://lore.kernel.org/lkml/20231219232442.2460166-1-cristian.ciocaltea@collabora.com/
>
> Changes in v6:
>  - Applied alphabetical ordering in PATCH 3 and 4 (Emil)
>
> Changes in v5:
>  - Collected R-b tags from Jacob and Andrew
>  - Squashed PATCH 2 into PATCH 1 per Krzysztof's review
>  - Drop unsupported snps,no-pbl-x8 property from gmac DT node
>  - Split series into patch sets per subsystem, as described in "Update 2"
>    section above (per Andrew's review)
>  - v4:
>    https://lore.kernel.org/lkml/20231218214451.2345691-1-cristian.ciocaltea@collabora.com/
>
> Changes in v4:
>  - Restricted double usage of 'ahb' reset name in PATCH 2 (Jessica, Samuel)
>  - Moved phy reference from PATCH 5 to both PATCH 6 & 7 where the node is
>    actually defined (Emil, Conor)
>  - Drop unnecessary gpio include in PATCH 6; also added a DTS comment
>    describing the rational behind RX internal delay adjustment (Andrew)
>  - v3:
>    https://lore.kernel.org/lkml/20231215204050.2296404-1-cristian.ciocaltea@collabora.com/
>
> Changes in v3:
>  - Rebased series onto next-20231214 and dropped the ccache & DMA coherency
>    related patches (v2 06-08/12) handled by Emil via [3]
>  - Squashed PATCH v2 01/12 into PATCH v3 2/9, per Krzysztof's review
>  - Dropped incorrect PATCH v2 02/12
>  - Incorporated Emil's feedback; also added his Co-developed-by on all dts
>    patches
>  - Documented the need of adjusting RX internal delay in PATCH v3 8/9, per
>    Andrew's request
>  - Added clock fixes from Emil (PATCH v3 8-9/9) required to support
>    10/100Mb link speeds
>  - v2:
>    https://lore.kernel.org/lkml/20231029042712.520010-1-cristian.ciocaltea@collabora.com/
>
> Changes in v2:
>  - Dropped ccache PATCH 01-05 reworked by Emil via [2]
>  - Dropped already applied PATCH 06/12
>  - Added PATCH v2 01 to prepare snps-dwmac binding for JH7100 support
>  - Added PATCH v2 02-03 to provide some jh7110-dwmac binding optimizations
>  - Handled JH7110 conflicting work in PATCH 07 via PATCH v2 04
>  - Reworked PATCH 8 via PATCH v2 05, adding JH7100 quirk and dropped
>    starfive,gtxclk-dlychain DT property; also fixed register naming
>  - Added PATCH v2 08 providing DMA coherency related DT changes
>  - Updated PATCH 9 commit msg:
>    s/OF_DMA_DEFAULT_COHERENT/ARCH_DMA_DEFAULT_COHERENT/
>  - Replaced 'uncached-offset' property with 'sifive,cache-ops' in PATCH
>    10/12 and dropped 'sideband' reg
>  - Add new patch providing coherent DMA memory pool (PATCH v2 10)
>  - Updated PATCH 11/12 according to the stmmac glue layer changes in
>    upstream
>  - Split PATCH 12/12 into PATCH v2 10-12 to handle individual gmac setup of
>    VisionFive v1 and BeagleV boards as they use different PHYs; also
>    switched phy-mode from "rgmii-tx" to "rgmii-id" (requires a reduction of
>    rx-internal-delay-ps by ~50%)
>  - Rebased series onto next-20231024
>  - v1:
>    https://lore.kernel.org/lkml/20230211031821.976408-1-cristian.ciocaltea@collabora.com/
>
> Cristian Ciocaltea (4):
>   riscv: dts: starfive: jh7100: Add sysmain and gmac DT nodes
>   riscv: dts: starfive: jh7100-common: Setup pinmux and enable gmac
>   riscv: dts: starfive: visionfive-v1: Setup ethernet phy
>   riscv: dts: starfive: beaglev-starlight: Setup phy reset gpio
>
>  .../dts/starfive/jh7100-beaglev-starlight.dts | 11 +++
>  .../boot/dts/starfive/jh7100-common.dtsi      | 84 +++++++++++++++++++
>  .../jh7100-starfive-visionfive-v1.dts         | 22 ++++-
>  arch/riscv/boot/dts/starfive/jh7100.dtsi      | 36 ++++++++
>  4 files changed, 152 insertions(+), 1 deletion(-)
>
> --
> 2.43.0
>

