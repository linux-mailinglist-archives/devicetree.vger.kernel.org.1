Return-Path: <devicetree+bounces-12856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B67DB8D9
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 12:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F7EB1C2094E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4BB12E65;
	Mon, 30 Oct 2023 11:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2DC12E5B
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 11:15:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 025D1B4;
	Mon, 30 Oct 2023 04:15:52 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65CF4FEC;
	Mon, 30 Oct 2023 04:16:33 -0700 (PDT)
Received: from [192.168.1.3] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 57BFD3F67D;
	Mon, 30 Oct 2023 04:15:49 -0700 (PDT)
Message-ID: <fa8320f7-3126-9bd1-a0ca-b53017eaa35c@arm.com>
Date: Mon, 30 Oct 2023 11:15:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 3/8] coresight-tpdm: Add CMB dataset support
Content-Language: en-US
To: Tao Zhang <quic_taozha@quicinc.com>
Cc: Jinlong Mao <quic_jinlmao@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, Song Chai <quic_songchai@quicinc.com>,
 linux-arm-msm@vger.kernel.org, andersson@kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Konrad Dybcio <konradybcio@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <1698202408-14608-1-git-send-email-quic_taozha@quicinc.com>
 <1698202408-14608-4-git-send-email-quic_taozha@quicinc.com>
From: James Clark <james.clark@arm.com>
In-Reply-To: <1698202408-14608-4-git-send-email-quic_taozha@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 25/10/2023 03:53, Tao Zhang wrote:
> CMB (continuous multi-bit) is one of TPDM's dataset type. CMB subunit
> can be enabled for data collection by writing 1 to the first bit of
> CMB_CR register. This change is to add enable/disable function for
> CMB dataset by writing CMB_CR register.
> 
> Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
> Signed-off-by: Jinlong Mao <quic_jinlmao@quicinc.com>
> ---
>  drivers/hwtracing/coresight/coresight-tpdm.c | 31 ++++++++++++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-tpdm.h |  8 +++++++
>  2 files changed, 39 insertions(+)
> 

Reviewed-by: James Clark <james.clark@arm.com>

> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
> index 97654aa..c8bb388 100644
> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
> @@ -131,6 +131,11 @@ static bool tpdm_has_dsb_dataset(struct tpdm_drvdata *drvdata)
>  	return (drvdata->datasets & TPDM_PIDR0_DS_DSB);
>  }
>  
> +static bool tpdm_has_cmb_dataset(struct tpdm_drvdata *drvdata)
> +{
> +	return (drvdata->datasets & TPDM_PIDR0_DS_CMB);
> +}
> +
>  static umode_t tpdm_dsb_is_visible(struct kobject *kobj,
>  				   struct attribute *attr, int n)
>  {
> @@ -267,6 +272,17 @@ static void tpdm_enable_dsb(struct tpdm_drvdata *drvdata)
>  	writel_relaxed(val, drvdata->base + TPDM_DSB_CR);
>  }
>  
> +static void tpdm_enable_cmb(struct tpdm_drvdata *drvdata)
> +{
> +	u32 val;
> +
> +	val = readl_relaxed(drvdata->base + TPDM_CMB_CR);
> +	val |= TPDM_CMB_CR_ENA;
> +
> +	/* Set the enable bit of CMB control register to 1 */
> +	writel_relaxed(val, drvdata->base + TPDM_CMB_CR);
> +}
> +
>  /*
>   * TPDM enable operations
>   * The TPDM or Monitor serves as data collection component for various
> @@ -281,6 +297,8 @@ static void __tpdm_enable(struct tpdm_drvdata *drvdata)
>  
>  	if (tpdm_has_dsb_dataset(drvdata))
>  		tpdm_enable_dsb(drvdata);
> +	if (tpdm_has_cmb_dataset(drvdata))
> +		tpdm_enable_cmb(drvdata);
>  
>  	CS_LOCK(drvdata->base);
>  }
> @@ -314,6 +332,17 @@ static void tpdm_disable_dsb(struct tpdm_drvdata *drvdata)
>  	writel_relaxed(val, drvdata->base + TPDM_DSB_CR);
>  }
>  
> +static void tpdm_disable_cmb(struct tpdm_drvdata *drvdata)
> +{
> +	u32 val;
> +
> +	val = readl_relaxed(drvdata->base + TPDM_CMB_CR);
> +	val &= ~TPDM_CMB_CR_ENA;
> +
> +	/* Set the enable bit of CMB control register to 0 */
> +	writel_relaxed(val, drvdata->base + TPDM_CMB_CR);
> +}
> +
>  /* TPDM disable operations */
>  static void __tpdm_disable(struct tpdm_drvdata *drvdata)
>  {
> @@ -321,6 +350,8 @@ static void __tpdm_disable(struct tpdm_drvdata *drvdata)
>  
>  	if (tpdm_has_dsb_dataset(drvdata))
>  		tpdm_disable_dsb(drvdata);
> +	if (tpdm_has_cmb_dataset(drvdata))
> +		tpdm_disable_cmb(drvdata);
>  
>  	CS_LOCK(drvdata->base);
>  }
> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.h b/drivers/hwtracing/coresight/coresight-tpdm.h
> index 4115b2a1..0098c58 100644
> --- a/drivers/hwtracing/coresight/coresight-tpdm.h
> +++ b/drivers/hwtracing/coresight/coresight-tpdm.h
> @@ -9,6 +9,12 @@
>  /* The max number of the datasets that TPDM supports */
>  #define TPDM_DATASETS       7
>  
> +/* CMB Subunit Registers */
> +#define TPDM_CMB_CR		(0xA00)
> +
> +/* Enable bit for CMB subunit */
> +#define TPDM_CMB_CR_ENA		BIT(0)
> +
>  /* DSB Subunit Registers */
>  #define TPDM_DSB_CR		(0x780)
>  #define TPDM_DSB_TIER		(0x784)
> @@ -79,10 +85,12 @@
>   *
>   * PERIPHIDR0[0] : Fix to 1 if ImplDef subunit present, else 0
>   * PERIPHIDR0[1] : Fix to 1 if DSB subunit present, else 0
> + * PERIPHIDR0[2] : Fix to 1 if CMB subunit present, else 0
>   */
>  
>  #define TPDM_PIDR0_DS_IMPDEF	BIT(0)
>  #define TPDM_PIDR0_DS_DSB	BIT(1)
> +#define TPDM_PIDR0_DS_CMB	BIT(2)
>  
>  #define TPDM_DSB_MAX_LINES	256
>  /* MAX number of EDCR registers */

