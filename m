Return-Path: <devicetree+bounces-4523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FA77B2E67
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5C8C42845FE
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B484811708;
	Fri, 29 Sep 2023 08:52:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B78AD47;
	Fri, 29 Sep 2023 08:52:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABF6794;
	Fri, 29 Sep 2023 01:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695977535; x=1727513535;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bxjnnMTEfiYHjMl/VzP/xRuB60mcYj1DgtGGuQgN3Hs=;
  b=g6yYQ+Iefg22lv5yGHgMwWGzRMjvI85SNfTiVUlqSYX70uBMLUwP/Vh0
   06ryHpQmtlJBdNo2TAh+FP95WQBE09de2GZOgKCax3C7hItnN2oV9NNmr
   qXOBSEjSmd4a/vGhLBGYagZaErbmFgPuiTZQv5xQrQ0/L3jpDQABLqRVc
   rOLCvyg/D6p9KBTrLoHgqCQDo9tFcHWf9uRMiBdIXmstY+5ofgRsTuD5w
   JiAEuPqBgJ44uLaV0R2LrsV3wfSSl+RjFnA0dIri8k/4tdbgrGfXkAHtp
   9RvkgIRf2/37epaYcWdhmhPYJvQs9k8jcml6aIFxy3U6E3vO4TSX4MDCe
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="863667"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; 
   d="scan'208";a="863667"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2023 01:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="743396335"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; 
   d="scan'208";a="743396335"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by orsmga007.jf.intel.com with SMTP; 29 Sep 2023 01:52:09 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Fri, 29 Sep 2023 11:52:09 +0300
Date: Fri, 29 Sep 2023 11:52:09 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Abdel Alkuor <alkuor@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, bryan.odonoghue@linaro.org,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, ryan.eleceng@gmail.com,
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	Abdel Alkuor <abdelalkuor@geotab.com>
Subject: Re: [PATCH v7 02/14] USB: typec: tsp6598x: Add cmd timeout and
 response delay
Message-ID: <ZRaQObkJ5kQhhhYs@kuha.fi.intel.com>
References: <20230927175348.18041-1-alkuor@gmail.com>
 <20230927175348.18041-3-alkuor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927175348.18041-3-alkuor@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 01:53:36PM -0400, Abdel Alkuor wrote:
> From: Abdel Alkuor <abdelalkuor@geotab.com>
> 
> Some commands in tps25750 take longer than 1 second
> to complete, and some responses need some delay before
> the result becomes available.
> 
> Signed-off-by: Abdel Alkuor <abdelalkuor@geotab.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> Changes in v7:
>   - Add driver name to commit subject 
> Changes in v6:
>   - Use tps6598x_exec_cmd as a wrapper
> Changes in v5:
>   - Incorporating tps25750 into tps6598x driver
> 
>  drivers/usb/typec/tipd/core.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index 37b56ce75f39..32420c61660d 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -282,9 +282,10 @@ static void tps6598x_disconnect(struct tps6598x *tps, u32 status)
>  	power_supply_changed(tps->psy);
>  }
>  
> -static int tps6598x_exec_cmd(struct tps6598x *tps, const char *cmd,
> +static int tps6598x_exec_cmd_tmo(struct tps6598x *tps, const char *cmd,
>  			     size_t in_len, u8 *in_data,
> -			     size_t out_len, u8 *out_data)
> +			     size_t out_len, u8 *out_data,
> +			     u32 cmd_timeout_ms, u32 res_delay_ms)
>  {
>  	unsigned long timeout;
>  	u32 val;
> @@ -307,8 +308,7 @@ static int tps6598x_exec_cmd(struct tps6598x *tps, const char *cmd,
>  	if (ret < 0)
>  		return ret;
>  
> -	/* XXX: Using 1s for now, but it may not be enough for every command. */
> -	timeout = jiffies + msecs_to_jiffies(1000);
> +	timeout = jiffies + msecs_to_jiffies(cmd_timeout_ms);
>  
>  	do {
>  		ret = tps6598x_read32(tps, TPS_REG_CMD1, &val);
> @@ -321,6 +321,9 @@ static int tps6598x_exec_cmd(struct tps6598x *tps, const char *cmd,
>  			return -ETIMEDOUT;
>  	} while (val);
>  
> +	/* some commands require delay for the result to be available */
> +	mdelay(res_delay_ms);
> +
>  	if (out_len) {
>  		ret = tps6598x_block_read(tps, TPS_REG_DATA1,
>  					  out_data, out_len);
> @@ -345,6 +348,14 @@ static int tps6598x_exec_cmd(struct tps6598x *tps, const char *cmd,
>  	return 0;
>  }
>  
> +static int tps6598x_exec_cmd(struct tps6598x *tps, const char *cmd,
> +			     size_t in_len, u8 *in_data,
> +			     size_t out_len, u8 *out_data)
> +{
> +	return tps6598x_exec_cmd_tmo(tps, cmd, in_len, in_data,
> +				     out_len, out_data, 1000, 0);
> +}
> +
>  static int tps6598x_dr_set(struct typec_port *port, enum typec_data_role role)
>  {
>  	const char *cmd = (role == TYPEC_DEVICE) ? "SWUF" : "SWDF";
> -- 
> 2.34.1

-- 
heikki

