Return-Path: <devicetree+bounces-5196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE3A7B58CF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 24DEA2830E9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759EE1E520;
	Mon,  2 Oct 2023 17:39:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C226F199B2
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:39:43 +0000 (UTC)
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 920DD9E
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:39:41 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-27763c2c22eso13157a91.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696268381; x=1696873181; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gZNTSehxjITuhkQRTwrb8eQONMtbuUB30cNWiClHfvA=;
        b=BTqY5zkAGmTtykoB6SS9SOHSzyRiGLaRrj8T1sgyIlCeubXkz55g1XcxVTXzoGp97m
         YJPszIeU7MweKLN0CmRm17t+ORUY8EjTxKisTPk6Y125s2yFP6+GeFBAc7QXVMUAwRzB
         hk5fzIUurSUDhc4TfJlrNgvPj/ArG5eicqhQyS8bEpV45wtUDC7obc1NRoGJSHABYLRG
         9o/RZIT3oVVS1gSov6DcvLNCVzwtbDYhHBRWOLPuU8A4MjF2QOvOi6cD6HFCgnsSKCrr
         fZ1odJ1gSOSYVdTAyP/TAOch6l6wWumsWhvEpMj5aMWKIs880/mIBEUp9241ZF6mUwN+
         3oKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696268381; x=1696873181;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gZNTSehxjITuhkQRTwrb8eQONMtbuUB30cNWiClHfvA=;
        b=cVrMVfEzkSmJHbMN4gaW+fq7jA1ixwgoi5W/Dd3cjetjx2iy6uR5dK5yPCFK/RJmeE
         OOG49dQmPjSXGObLTGU19DPV5ORWr1ColUHVTPTv7gpYLJBZ6+VSQFdmGvCAziS+YVwl
         qcELwFYDbV86jf3e94qcZaL3Q+sVsC1RrWiRfxH9EoQgLOYFxi7GJspF3poFCSy3whgJ
         1DgXGPy19GvRcON9YemwH+Zpkin1s/79mY9l+c5VRc7vk6J0VXMHPeeVTxECU1UwNNad
         l5FdOF8/S9DxifW4/FPnDpOG7jJ1eqHi2iA10eKAIXG8dEQJ2r1Nt5VYR3XAkMp2+XLE
         yyUA==
X-Gm-Message-State: AOJu0YzxscLiXArFL/uFRAHK3Pdi3gf9Sx1ru0Nehr1atBNGpTmYmybO
	PMEUQ35miDCaEfMSvfsVmTjsCQ==
X-Google-Smtp-Source: AGHT+IF4kFEVOXMqu0GUPWxMsg3dRaiH+WTACsdoB+nXDNfYPQTGTxsMDtCnlP0WYVQCBT4PoSdYbA==
X-Received: by 2002:a17:90a:e283:b0:279:23a:9e70 with SMTP id d3-20020a17090ae28300b00279023a9e70mr9756290pjz.2.1696268380960;
        Mon, 02 Oct 2023 10:39:40 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:fa62:edba:ab23:c762])
        by smtp.gmail.com with ESMTPSA id 23-20020a17090a031700b0025dc5749b4csm7132960pje.21.2023.10.02.10.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 10:39:40 -0700 (PDT)
Date: Mon, 2 Oct 2023 11:39:38 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, michal.simek@amd.com,
	radhey.shyam.pandey@amd.com, ben.levinsky@amd.com,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 4/4] remoteproc: zynqmp: parse TCM from device tree
Message-ID: <ZRsAWodXRJr7TT3B@p14s>
References: <20230928155900.3987103-1-tanmay.shah@amd.com>
 <20230928155900.3987103-5-tanmay.shah@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928155900.3987103-5-tanmay.shah@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 28, 2023 at 08:59:00AM -0700, Tanmay Shah wrote:
> ZynqMP TCM information is fixed in driver. Now ZynqMP TCM information
> is available in device-tree. Parse TCM information in driver
> as per new bindings

Missing '.' at the end of the sentence.

> 
> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
>  drivers/remoteproc/xlnx_r5_remoteproc.c | 122 ++++++++++++++++++++++--
>  1 file changed, 114 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/remoteproc/xlnx_r5_remoteproc.c b/drivers/remoteproc/xlnx_r5_remoteproc.c
> index 27ed2c070ebb..749e9da68906 100644
> --- a/drivers/remoteproc/xlnx_r5_remoteproc.c
> +++ b/drivers/remoteproc/xlnx_r5_remoteproc.c
> @@ -75,8 +75,8 @@ struct mbox_info {
>  };
>  
>  /*
> - * Hardcoded TCM bank values. This will be removed once TCM bindings are
> - * accepted for system-dt specifications and upstreamed in linux kernel
> + * Hardcoded TCM bank values. This will stay in driver to maintain backward
> + * compatibility with device-tree that does not have TCM information.
>   */
>  static const struct mem_bank_data zynqmp_tcm_banks_split[] = {
>  	{0xffe00000UL, 0x0, 0x10000UL, PD_R5_0_ATCM, "atcm0"}, /* TCM 64KB each */
> @@ -613,7 +613,8 @@ static int add_tcm_carveout_split_mode(struct rproc *rproc)
>  						 bank_name);
>  		if (!rproc_mem) {
>  			ret = -ENOMEM;
> -			zynqmp_pm_release_node(pm_domain_id);
> +			if (pm_domain_id)
> +				zynqmp_pm_release_node(pm_domain_id);
>  			goto release_tcm_split;
>  		}
>  
> @@ -626,7 +627,8 @@ static int add_tcm_carveout_split_mode(struct rproc *rproc)
>  	/* If failed, Turn off all TCM banks turned on before */
>  	for (i--; i >= 0; i--) {
>  		pm_domain_id = r5_core->tcm_banks[i]->pm_domain_id;
> -		zynqmp_pm_release_node(pm_domain_id);
> +		if (pm_domain_id)
> +			zynqmp_pm_release_node(pm_domain_id);
>  	}
>  	return ret;
>  }
> @@ -1064,6 +1066,107 @@ static struct zynqmp_r5_core *zynqmp_r5_add_rproc_core(struct device *cdev)
>  	return ERR_PTR(ret);
>  }
>  
> +static int zynqmp_r5_get_tcm_node_from_dt(struct zynqmp_r5_cluster *cluster)
> +{
> +	int i, j, tcm_bank_count, ret = -EINVAL;

> +	struct platform_device *cpdev;
> +	struct resource *res = NULL;
> +	u64 abs_addr = 0, size = 0;
> +	struct mem_bank_data *tcm;
> +	struct device_node *np;
> +	struct device *dev;

As far as I can tell, none of the above initialization is needed.  I have
commented on that before.

> +
> +	for (i = 0; i < cluster->core_count; i++) {
> +		r5_core = cluster->r5_cores[i];
> +		dev = r5_core->dev;
> +		np = dev_of_node(dev);
> +
> +		/* we have address cell 2 and size cell as 2 */
> +		ret = of_property_count_elems_of_size(np, "reg",
> +						      4 * sizeof(u32));
> +		if (ret == 0) {
> +			ret = -EINVAL;
> +			goto fail_tcm;
> +		}
> +		if (ret < 0)
> +			goto fail_tcm;

                if (ret <= 0) {
                        ret = -EINVAL;
                        goto fail_tcm;
                }

> +
> +		tcm_bank_count = ret;
> +
> +		r5_core->tcm_banks = devm_kcalloc(dev, tcm_bank_count,
> +						  sizeof(struct mem_bank_data *),
> +						  GFP_KERNEL);
> +		if (!r5_core->tcm_banks) {
> +			ret = -ENOMEM;
> +			goto fail_tcm;
> +		}
> +
> +		r5_core->tcm_bank_count = tcm_bank_count;
> +		for (j = 0; j < tcm_bank_count; j++) {
> +			tcm = devm_kzalloc(dev, sizeof(struct mem_bank_data *),
> +					   GFP_KERNEL);
> +			if (!tcm) {
> +				ret = -ENOMEM;
> +				goto fail_tcm;
> +			}
> +
> +			r5_core->tcm_banks[j] = tcm;
> +
> +			/* get tcm address without translation */
> +			ret = of_property_read_reg(np, j, &abs_addr, &size);
> +			if (ret) {
> +				dev_err(dev, "failed to get reg property\n");
> +				goto fail_tcm;
> +			}
> +
> +			/*
> +			 * remote processor can address only 32 bits
> +			 * so convert 64-bits into 32-bits. This will discard
> +			 * any unwanted upper 32-bits.
> +			 */
> +			tcm->da = (u32)abs_addr;
> +			tcm->size = (u32)size;
> +
> +			cpdev = to_platform_device(dev);
> +			res = platform_get_resource(cpdev, IORESOURCE_MEM, j);
> +			if (!res) {
> +				dev_err(dev, "failed to get tcm resource\n");
> +				ret = -EINVAL;
> +				goto fail_tcm;
> +			}
> +
> +			tcm->addr = (u32)res->start;
> +			tcm->bank_name = (char *)res->name;
> +			res = devm_request_mem_region(dev, tcm->addr, tcm->size,
> +						      tcm->bank_name);
> +			if (!res) {
> +				dev_err(dev, "failed to request tcm resource\n");
> +				ret = -EINVAL;
> +				goto fail_tcm;
> +			}
> +		}
> +	}
> +
> +	return 0;
> +
> +fail_tcm:
> +	while (i >= 0) {
> +		r5_core = cluster->r5_cores[i];
> +		for (j = 0; j < r5_core->tcm_bank_count; j++) {
> +			if (!r5_core->tcm_banks || !r5_core->tcm_banks[j])
> +				continue;
> +			tcm = r5_core->tcm_banks[j];
> +			devm_kfree(r5_core->dev, tcm);
> +		}
> +		devm_kfree(r5_core->dev, r5_core->tcm_banks);
> +		r5_core->tcm_banks = NULL;
> +		i--;
> +	}

Given the devm_xyz() API used in this function, is the above needed?

Thanks, 
Mathieu

> +
> +	return ret;
> +}
> +
>  /**
>   * zynqmp_r5_get_tcm_node()
>   * Ideally this function should parse tcm node and store information
> @@ -1142,10 +1245,13 @@ static int zynqmp_r5_core_init(struct zynqmp_r5_cluster *cluster,
>  	struct zynqmp_r5_core *r5_core;
>  	int ret, i;
>  
> -	ret = zynqmp_r5_get_tcm_node(cluster);
> -	if (ret < 0) {
> -		dev_err(dev, "can't get tcm node, err %d\n", ret);
> -		return ret;
> +	ret = zynqmp_r5_get_tcm_node_from_dt(cluster);
> +	if (ret) {
> +		ret = zynqmp_r5_get_tcm_node(cluster);
> +		if (ret < 0) {
> +			dev_err(dev, "can't get tcm node, err %d\n", ret);
> +			return ret;
> +		}
>  	}
>  
>  	for (i = 0; i < cluster->core_count; i++) {
> -- 
> 2.25.1
> 

