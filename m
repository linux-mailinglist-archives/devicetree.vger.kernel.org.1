Return-Path: <devicetree+bounces-14214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C739F7E2C0A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 19:32:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03A721C20C7A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9EA29CF7;
	Mon,  6 Nov 2023 18:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="j28deEqa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972F12D03B
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 18:32:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCF210C1;
	Mon,  6 Nov 2023 10:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699295543; x=1730831543;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=xB9O68mNc90W92yqVxu/OruoUG4dfgmMYk3mdXUmL80=;
  b=j28deEqaUYbjA4zBGUrw2NMsUgjrbtDwqkw0qHctlXqyfbJQG9A9cFhO
   nE8xEKcVgurEDDeeuz+/efDrYAaiDCFYbZKARc+gvgDD8hPYIJTVj9oGO
   Uctc1rmQp1pKA06TMeDu4q90D480RZ1CNH49UcmszBKxpi67auP/uHcoM
   j/oxYJXnGnEsKGg5djSKyQYEinUFFyrRjMoB8um8ZG4m1kyPKs4l2Di//
   8FJBUZ0ADIAfq+DXcuWTuKYLF8zKjMDK3JTkri020AbHKXhPx9gLo/h2Q
   0ckplijPE8gE5ZcPR2V4s47DeawmInSTm0QDeZ1sdGTB38Nih6awVxDmk
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="2333943"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; 
   d="scan'208";a="2333943"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 10:32:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; 
   d="scan'208";a="10159225"
Received: from ahunter6-mobl1.ger.corp.intel.com (HELO [10.0.2.15]) ([10.251.215.231])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2023 10:32:00 -0800
Message-ID: <ef8032ea-4cc8-411e-b2c5-07353cabbe9e@intel.com>
Date: Mon, 6 Nov 2023 20:31:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] mmc: sdhci: add __sdhci_execute_tuning() to header
Content-Language: en-US
To: Drew Fustini <dfustini@baylibre.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor@kernel.org>
Cc: Robert Nelson <robertcnelson@beagleboard.org>,
 Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>,
 Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20231101-th1520-mmc-v4-0-86e0216b5994@baylibre.com>
 <20231101-th1520-mmc-v4-2-86e0216b5994@baylibre.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
In-Reply-To: <20231101-th1520-mmc-v4-2-86e0216b5994@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/11/23 04:48, Drew Fustini wrote:
> Expose __sdhci_execute_tuning() so that it can be called from the
> mmc host controller drivers.
> 
> In the sdhci-of-dwcmshc driver, sdhci_dwcmshc_th1520_ops sets
> platform_execute_tuning to th1520_execute_tuning(). That function has
> to manipulate phy registers before tuning can be performed. To avoid
> copying the code verbatim from __sdhci_execute_tuning() into
> th1520_execute_tuning(), make it possible for __sdhci_execute_tuning()
> to be called from sdhci-of-dwcmshc.
> 
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

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


