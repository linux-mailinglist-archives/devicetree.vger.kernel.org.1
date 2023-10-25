Return-Path: <devicetree+bounces-11922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E857D7116
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6855B21030
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C722AB55;
	Wed, 25 Oct 2023 15:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lI4Q9Gwo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046B9156E5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C50CC433C8;
	Wed, 25 Oct 2023 15:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698248503;
	bh=PzjgKpSa57giPfmrowGoMAs62Cov+6nezTmGkieIMeQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lI4Q9GwoRePYdEq52N3c61EeIRpMkDTqi5iRFrMExTJTacyDIyN9YPfehym+0288I
	 QYIJ6qIdPhPbIp3fNIKVMoZf7yx8kdD6htozlwjc0THS4jEU3HFGUivXVYCuRRBmz7
	 5lcLSeXaK9Jrfz9JBYeXauXCbAgNO9kq9obW3jJdOBtxOH2GJ+Q6PxsUxMtF8NinKT
	 PjojuRheRm6QfWUoTeUtl8wFLWHfvEIFhe/XISifpZfKoTsuf0FTBvplwLdSCE/fMs
	 N97EJD4KeRscOI/Em55RnBO+fPYO+KFd58sQ/W+Zt8az7zQHWfYR/RUY5gpruGryMf
	 BxZTSRD41fw+g==
Date: Wed, 25 Oct 2023 23:29:25 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Drew Fustini <dfustini@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 2/7] mmc: sdhci: add __sdhci_execute_tuning() to header
Message-ID: <ZTk0VcFd3FcXIABW@xhacker>
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
 <20231023-th1520-mmc-v3-2-abc5e7491166@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231023-th1520-mmc-v3-2-abc5e7491166@baylibre.com>

On Mon, Oct 23, 2023 at 02:07:03PM -0700, Drew Fustini wrote:
> Expose __sdhci_execute_tuning() so that it can be called from the
> mmc host controller drivers.
> 
> In the sdhci-of-dwcmshc driver, sdhci_dwcmshc_th1520_ops sets
> platform_execute_tuning to th1520_execute_tuning(). That function has

Hi Drew,

Just FYI, my th1520 version patch in my local repo overrides the
mmc_host_ops.execute_tuning as the following:

host->mmc_host_ops.execute_tuning = dwcmshc_execute_tuning;

In dwcmshc_execute_tuning(), I will do some necessary setting then
call sdhci_execute_tuning();

So I don't need to export __sdhci_execute_tuning(). The main reason
is that the __abc symbol is expected to be used internally. However,
I have no big preference. I would leave the decision be made by
mmc maintainers @Ulf @Adrian, can you please comment?

Thanks

> to manipulate phy registers before tuning can be performed. To avoid
> copying the code verbatim from __sdhci_execute_tuning() into
> th1520_execute_tuning(), make it possible for __sdhci_execute_tuning()
> to be called from sdhci-of-dwcmshc.
> 
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  drivers/mmc/host/sdhci.c | 3 ++-
>  drivers/mmc/host/sdhci.h | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index ff41aa56564e..c79f73459915 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -2841,7 +2841,7 @@ void sdhci_send_tuning(struct sdhci_host *host, u32 opcode)
>  }
>  EXPORT_SYMBOL_GPL(sdhci_send_tuning);
>  
> -static int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
> +int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
>  {
>  	int i;
>  
> @@ -2879,6 +2879,7 @@ static int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
>  	sdhci_reset_tuning(host);
>  	return -EAGAIN;
>  }
> +EXPORT_SYMBOL_GPL(__sdhci_execute_tuning);
>  
>  int sdhci_execute_tuning(struct mmc_host *mmc, u32 opcode)
>  {
> diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> index f219bdea8f28..a20864fc0641 100644
> --- a/drivers/mmc/host/sdhci.h
> +++ b/drivers/mmc/host/sdhci.h
> @@ -793,6 +793,7 @@ void sdhci_set_bus_width(struct sdhci_host *host, int width);
>  void sdhci_reset(struct sdhci_host *host, u8 mask);
>  void sdhci_set_uhs_signaling(struct sdhci_host *host, unsigned timing);
>  int sdhci_execute_tuning(struct mmc_host *mmc, u32 opcode);
> +int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode);
>  void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios);
>  int sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
>  				      struct mmc_ios *ios);
> 
> -- 
> 2.34.1
> 

