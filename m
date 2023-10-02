Return-Path: <devicetree+bounces-5218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A76B7B5A40
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 5DFD0B20A70
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A3651DDFA;
	Mon,  2 Oct 2023 18:34:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7B61DA21
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:34:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D329B
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696271660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=moRj567UqOl/iY2WCPLyt7FFc0+jEQjRNpNCUARYnqs=;
	b=FRfZoAZQa8c745jBvBu3sbtKo/fqYGrv1wXQh+P2TKUgaAoxinlhWnQfRTYFBxR0D0FbN/
	No/7x4UDRJxM+2X8/elpr/GOMaBXzryoxcKMzoJT1rBpp+xHzSKBO5UY+L+Hvd79+Rp63A
	T5KZhxvrEyJA27R/F052fIAf0g2ocKE=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-520-M6JmqvK-NweVpkm5mF51aw-1; Mon, 02 Oct 2023 14:34:09 -0400
X-MC-Unique: M6JmqvK-NweVpkm5mF51aw-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-59f7d109926so1300987b3.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:34:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696271649; x=1696876449;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=moRj567UqOl/iY2WCPLyt7FFc0+jEQjRNpNCUARYnqs=;
        b=JVlh9aMBYYPE2ZOyyrbAGDIOnoYgn1uC023Op9QaYC5o5Vkr7ziw3twHDiNqtf/iQr
         Evnkaiiac+unWWC/9Akmu7fuffHyxN69eHa2MQUGn0DHu3C1BR9WNsjqLdKgCnadCgj0
         1QAVckhFMd9A49WxiG3zlSeRh5W/xumxFQfFkWco+x91QO9Qq7hZCadVlJSzsRprwCHP
         uJL+Vo6W6YuYVU853uqja0b1kCKEbz/OmBAyFKYlaLyH1Kl6LbLwtMfcL3gV+wUyVB7C
         xl5gB4HZIFXFzjUEmnrNfCiaXq7/gaKj3tXQLl3q+Rl60uJwY6ARLr3Mh10s08xx1y7j
         Nltg==
X-Gm-Message-State: AOJu0YxRJ/8C/K3CJir4CVWRRbysVaPadmiku1Q1TeRTSp35b+qOqCC7
	FZ/KdzgXQwr3xou9nSDcj8loYX/TiOLAWyWzSUMvQ3pjIaddKFi4x1tuslCq6GsXu/4RFMLa995
	7mSRi5XtA1uASXLc5/e45jw==
X-Received: by 2002:a81:7c43:0:b0:58f:c78e:5918 with SMTP id x64-20020a817c43000000b0058fc78e5918mr10407281ywc.52.1696271649272;
        Mon, 02 Oct 2023 11:34:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6SP8Aiv3+xZec2xqHGrrNExMp/Wx6XTpZH0dl31Z6Rq6TSaKxSXmvluaLgNmK0B792p3syQ==
X-Received: by 2002:a81:7c43:0:b0:58f:c78e:5918 with SMTP id x64-20020a817c43000000b0058fc78e5918mr10407270ywc.52.1696271648909;
        Mon, 02 Oct 2023 11:34:08 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id a14-20020a81bb4e000000b00579e5c4982fsm7865199ywl.36.2023.10.02.11.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:34:08 -0700 (PDT)
Date: Mon, 2 Oct 2023 14:34:06 -0400
From: Brian Masney <bmasney@redhat.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 4/4] firmware: arm_scmi: Add qcom hvc/shmem transport
 support
Message-ID: <ZRsNHnuUdGl+vuqz@brian-x1>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <20230911194359.27547-5-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911194359.27547-5-quic_nkela@quicinc.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 11, 2023 at 12:43:59PM -0700, Nikunj Kela wrote:
> This change adds the support for SCMI message exchange on Qualcomm
> virtual platforms.
> 
> The hypervisor associates an object-id also known as capability-id
> with each hvc doorbell object. The capability-id is used to identify the
> doorbell from the VM's capability namespace, similar to a file-descriptor.
> 
> The hypervisor, in addition to the function-id, expects the capability-id
> to be passed in x1 register when HVC call is invoked.
> 
> The function-id & capability-id are allocated by the hypervisor on bootup
> and are stored in the shmem region by the firmware before starting Linux.
> 
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
> ---
>  drivers/firmware/arm_scmi/driver.c |  1 +
>  drivers/firmware/arm_scmi/smc.c    | 47 ++++++++++++++++++++++++++----
>  2 files changed, 43 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 87383c05424b..ea344bc6ae49 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -2915,6 +2915,7 @@ static const struct of_device_id scmi_of_match[] = {
>  #ifdef CONFIG_ARM_SCMI_TRANSPORT_SMC
>  	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
>  	{ .compatible = "arm,scmi-smc-param", .data = &scmi_smc_desc},
> +	{ .compatible = "qcom,scmi-hvc-shmem", .data = &scmi_smc_desc},
>  #endif
>  #ifdef CONFIG_ARM_SCMI_TRANSPORT_VIRTIO
>  	{ .compatible = "arm,scmi-virtio", .data = &scmi_virtio_desc},
> diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> index 0a0b7e401159..94ec07fdc14a 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -50,6 +50,9 @@
>   * @func_id: smc/hvc call function id
>   * @param_page: 4K page number of the shmem channel
>   * @param_offset: Offset within the 4K page of the shmem channel
> + * @cap_id: hvc doorbell's capability id to be used on Qualcomm virtual
> + *	    platforms
> + * @qcom_xport: Flag to indicate the transport on Qualcomm virtual platforms
>   */
>  
>  struct scmi_smc {
> @@ -63,6 +66,8 @@ struct scmi_smc {
>  	u32 func_id;
>  	u32 param_page;
>  	u32 param_offset;
> +	u64 cap_id;
> +	bool qcom_xport;
>  };

[snip]

>  static irqreturn_t smc_msg_done_isr(int irq, void *data)
> @@ -129,6 +134,7 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
>  	struct resource res;
>  	struct device_node *np;
>  	u32 func_id;
> +	u64 cap_id;
>  	int ret;

[snip]

> +		func_id = readl((void __iomem *)(scmi_info->shmem) + size - 16);
> +#ifdef CONFIG_ARM64
> +		cap_id = readq((void __iomem *)(scmi_info->shmem) + size - 8);
> +#else
> +		/* capability-id is 32 bit wide on 32bit machines */
> +		cap_id = readl((void __iomem *)(scmi_info->shmem) + size - 8);
> +#endif

The 32 bit case is defined as a u64 in two places above.

> +
> +		/* The func-id & capability-id are kept in last 16 bytes of shmem.
> +		 *     +-------+
> +		 *     |       |
> +		 *     | shmem |
> +		 *     |       |
> +		 *     |       |
> +		 *     +-------+ <-- (size - 16)
> +		 *     | funcId|
> +		 *     +-------+ <-- (size - 8)
> +		 *     | capId |
> +		 *     +-------+ <-- size
> +		 */

Personally I'd add one more space to the right side of the table after
funcId.

> -	arm_smccc_1_1_invoke(scmi_info->func_id, page, offset, 0, 0, 0, 0, 0,
> -			     &res);
> +	if (scmi_info->qcom_xport)
> +		arm_smccc_1_1_hvc(scmi_info->func_id, cap_id, 0, 0, 0, 0, 0, 0,
> +				  &res);
> +	else
> +		arm_smccc_1_1_invoke(scmi_info->func_id, page, offset, 0, 0, 0,
> +				     0, 0, &res);

Does it make sense to call this variable qcom_xport? Would hvc_xport be
a more appropriate name?

Brian


