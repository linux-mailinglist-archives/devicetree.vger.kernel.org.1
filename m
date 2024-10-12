Return-Path: <devicetree+bounces-110635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4772199B524
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 15:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 796E01C21145
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 13:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76023187330;
	Sat, 12 Oct 2024 13:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQRLqgj5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468341865E5;
	Sat, 12 Oct 2024 13:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728740717; cv=none; b=RpBn+Vkvf0NctsA9ATiNS4BuU9NNkX5EaZiYPm/gARwM4D4pFT/Q3BvgT7UF1vWR5iSy1OvRL4XTxNZgxvxFKmfrU8Z5V2SZYrLYgSaaM1hCkg/11gxa4npU6QjSSU4RMjapTDqf5+m6Pu3Y5XmG5WYpl3PI6C9yePmM9EiPeEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728740717; c=relaxed/simple;
	bh=wFO/BEkxAv0jnR74dC7SV1DUeOypHs1KnzH88SIcVbk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JBFJsUddVXbJLxGtsu6KqxvBv44iQ+v7Y76d1Cvs1Zy/fWWRiBies7EE+xuJoA4hf6Q1jBsC16YiZxPx9OKJHY5RM3jUG1GUElVuZTEVm10OF5B3Stz3N0PKpH2MZyGSMkxekxDg/IbRF6y40vfLAhvQ+zrfWeByltfJDN2be5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQRLqgj5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320E5C4CEC6;
	Sat, 12 Oct 2024 13:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728740716;
	bh=wFO/BEkxAv0jnR74dC7SV1DUeOypHs1KnzH88SIcVbk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=eQRLqgj5XlXG3GF32bVL4NXFRBzU35TzISHvO2DutQvf8/yRoxPp06jIcP6Yi/aBe
	 NuSt+6nd11fLOcDWY0yHm6LoRDsSH3Q4CY+qWt39R39TQVeOpQtcJZDKQx0pVKbXLN
	 0VMvFuzYc6GVbWh8T9RyOCCTESLT/YhJw5zNxmMmLh+1jTeZs351Q6xgqMGWb1bE/W
	 4oIzKaKJetmsEwRR7Ag1JQhS07tAWGpFSbcRqJiLn7xhtRWUEZSW9MeJMqQP6ny4LS
	 JTLMrPbtp1uEUhPMQ0GmANhJF8GiGTfFOYhVepTWcWR9rLpu3+BENwks3RqNjFq/g2
	 kFmr3e/YLJ7KQ==
Date: Sat, 12 Oct 2024 14:45:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Angelo Dureghello <adureghello@baylibre.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dletchner@baylibre.com, Mark Brown <broonie@kernel.org>,
 stable@vger.kernel.org
Subject: Re: [PATCH v5 01/10] iio: dac: adi-axi-dac: fix wrong register
 bitfield
Message-ID: <20241012144507.216027e1@jic23-huawei>
In-Reply-To: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-1-3d410944a63d@baylibre.com>
References: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
	<20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-1-3d410944a63d@baylibre.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 08 Oct 2024 17:43:33 +0200
Angelo Dureghello <adureghello@baylibre.com> wrote:

> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Fix ADI_DAC_R1_MODE of AXI_DAC_REG_CNTRL_2.
> 
> Both generic DAC and ad3552r DAC IPs docs are reporting
> bit 5 for it.
> 
> Link: https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
> Fixes: 4e3949a192e4 ("iio: dac: add support for AXI DAC IP core")
> Cc: stable@vger.kernel.org
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
Because we have a series built on top of this, I've picked it up in the
togreg branch of iio.git - not as the fixes-togreg branch.
That means it will go upstream and get pulled into stable etc next
merge window.

If anyone needs it quicker shout and I can rethink that.

> ---
>  drivers/iio/dac/adi-axi-dac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
> index 0cb00f3bec04..b8b4171b8043 100644
> --- a/drivers/iio/dac/adi-axi-dac.c
> +++ b/drivers/iio/dac/adi-axi-dac.c
> @@ -46,7 +46,7 @@
>  #define AXI_DAC_REG_CNTRL_1		0x0044
>  #define   AXI_DAC_SYNC			BIT(0)
>  #define AXI_DAC_REG_CNTRL_2		0x0048
> -#define	  ADI_DAC_R1_MODE		BIT(4)
> +#define	  ADI_DAC_R1_MODE		BIT(5)
>  #define AXI_DAC_DRP_STATUS		0x0074
>  #define   AXI_DAC_DRP_LOCKED		BIT(17)
>  /* DAC Channel controls */
> 


