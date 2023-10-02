Return-Path: <devicetree+bounces-5208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 195047B59E8
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B8F5A282DBA
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146F51EA7D;
	Mon,  2 Oct 2023 18:18:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718A11DA28
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:18:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98A43A7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696270695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JTHelUlse8IqAMEkn3+OwaSpVuDEvR+XOh2gu1M9D5c=;
	b=OAwC8FPwv097q12cpcGP3xfDTMHgrabvSAdL2LD9J1p9bLJxEf9iso07FI0ShRubgzl7wo
	+3Wjc7xjIS9GvquAzWh9IoILASzussuZRcA7M6AtzCni/lrb/1RbTNkGiCpladrtqerE2F
	GD8ioZdkTtFRK7Uvfe4lDFmPEfD3sf4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-350-cieijYsANua4PhwMOL_8tQ-1; Mon, 02 Oct 2023 14:18:04 -0400
X-MC-Unique: cieijYsANua4PhwMOL_8tQ-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-775869cf2f5so335280985a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696270684; x=1696875484;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTHelUlse8IqAMEkn3+OwaSpVuDEvR+XOh2gu1M9D5c=;
        b=wrg0Uj8PV8IUtY0uqK7ir2YliKBCoxMyxUYsKG0zVP8XsuGt8hs/MLOfDFbBMgesPo
         kayd0/7svrtX9KtzEJuAEGbPBZ85+h6AEBHj+RwrERDc5pf1FjvLv9Ork+f7MX0R3jwm
         oLarmf69+TUjCmIn5X/pw0wYIkg6WAn7y/UswthE94LSNjJy05Sort5ft34SgA323hB3
         EhwOQHm2NOWgg8jL7oUcBXLnxZY4/dUULa0604V+JI7Jqn9aHOInhqmr4aJp31RNZ2ox
         z1SfZvPbKwF1Uccjj6kvKqsC6Lkw9ZQn6vXCE0m99ZAPJ/QGefq19Hov+d6kuTq1cNr2
         Mpvg==
X-Gm-Message-State: AOJu0YwZ+EI/YPzp3rgH84R6P9QY3bQDHJ3TVMB0mV8iefulC+yfJliX
	HpiHTSgXPq8QRWpDvM55skW8Zp55jnf/ouLVeTREGFKmzVkdX9idKK2zhbFybB7QiBaSViFYBi9
	9VlD/hDyKKvgdBGQC5mU/RQ==
X-Received: by 2002:a05:620a:4090:b0:76c:ae1f:201e with SMTP id f16-20020a05620a409000b0076cae1f201emr539268qko.27.1696270684160;
        Mon, 02 Oct 2023 11:18:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjEc7izGr0GyD8cKh/uiIXCkEVxKgvtniJXa7m5bt13+TPqrNIMC8w/At/Vr4WizGwvTagDA==
X-Received: by 2002:a05:620a:4090:b0:76c:ae1f:201e with SMTP id f16-20020a05620a409000b0076cae1f201emr539250qko.27.1696270683850;
        Mon, 02 Oct 2023 11:18:03 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id ld7-20020a056214418700b0065d89f4d537sm3313105qvb.45.2023.10.02.11.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:18:02 -0700 (PDT)
Date: Mon, 2 Oct 2023 14:18:01 -0400
From: Brian Masney <bmasney@redhat.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 1/4] firmware: arm_scmi: Add polling support for
 completion in smc
Message-ID: <ZRsJWdZVMc+F5ZgF@brian-x1>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <20230911194359.27547-2-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911194359.27547-2-quic_nkela@quicinc.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 11, 2023 at 12:43:56PM -0700, Nikunj Kela wrote:
> Currently, the return from the smc call assumes the completion of
> the scmi request. However this may not be true in virtual platforms
> that are using hvc doorbell.
> 
> This change adds a Kconfig to enable the polling for the request
> completion.
> 
> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
> ---
>  drivers/firmware/arm_scmi/Kconfig | 14 ++++++++++++++
>  drivers/firmware/arm_scmi/smc.c   | 15 ++++++++++++++-
>  2 files changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/Kconfig b/drivers/firmware/arm_scmi/Kconfig
> index ea0f5083ac47..771d60f8319f 100644
> --- a/drivers/firmware/arm_scmi/Kconfig
> +++ b/drivers/firmware/arm_scmi/Kconfig
> @@ -125,6 +125,20 @@ config ARM_SCMI_TRANSPORT_SMC_ATOMIC_ENABLE
>  	  in atomic context too, at the price of using a number of busy-waiting
>  	  primitives all over instead. If unsure say N.
>  
> +config ARM_SCMI_TRANSPORT_SMC_POLL_COMPLETION
> +	bool "Enable polling support for SCMI SMC transport"
> +	depends on ARM_SCMI_TRANSPORT_SMC
> +	help
> +	  Enable completion polling support for SCMI SMC based transport.
> +
> +	  If you want the SCMI SMC based transport to poll for the completion,
> +	  answer Y.
> +	  Enabling completion polling might be desired in the absence of the a2p
> +	  irq when the return from smc/hvc call doesn't indicate the completion
> +	  of the SCMI requests. This might be useful for instances used in
> +	  virtual platforms.
> +	  If unsure say N.
> +
>  config ARM_SCMI_TRANSPORT_VIRTIO
>  	bool "SCMI transport based on VirtIO"
>  	depends on VIRTIO=y || VIRTIO=ARM_SCMI_PROTOCOL
> diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> index c193516a254d..0a0b7e401159 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -250,6 +250,16 @@ static void smc_mark_txdone(struct scmi_chan_info *cinfo, int ret,
>  	smc_channel_lock_release(scmi_info);
>  }
>  
> +#ifdef CONFIG_ARM_SCMI_TRANSPORT_SMC_POLL_COMPLETION
> +static bool
> +smc_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
> +{
> +	struct scmi_smc *scmi_info = cinfo->transport_info;
> +
> +	return shmem_poll_done(scmi_info->shmem, xfer);
> +}
> +#endif
> +
>  static const struct scmi_transport_ops scmi_smc_ops = {
>  	.chan_available = smc_chan_available,
>  	.chan_setup = smc_chan_setup,
> @@ -257,6 +267,9 @@ static const struct scmi_transport_ops scmi_smc_ops = {
>  	.send_message = smc_send_message,
>  	.mark_txdone = smc_mark_txdone,
>  	.fetch_response = smc_fetch_response,
> +#ifdef CONFIG_ARM_SCMI_TRANSPORT_SMC_POLL_COMPLETION
> +	.poll_done = smc_poll_done,
> +#endif
>  };
>  
>  const struct scmi_desc scmi_smc_desc = {
> @@ -272,6 +285,6 @@ const struct scmi_desc scmi_smc_desc = {
>  	 * for the issued command will be immmediately ready to be fetched
>  	 * from the shared memory area.
>  	 */
> -	.sync_cmds_completed_on_ret = true,
> +	.sync_cmds_completed_on_ret = !IS_ENABLED(CONFIG_ARM_SCMI_TRANSPORT_SMC_POLL_COMPLETION),
>  	.atomic_enabled = IS_ENABLED(CONFIG_ARM_SCMI_TRANSPORT_SMC_ATOMIC_ENABLE),

From a Linux distributor viewpoint, it would be nice if this was
determined at runtime, rather than at compile time. We generate a single
kernel binary that's used on systems from multiple hardware
manufacturers. We'd run into an issue if one company required this, but
another one didn't. We may potentially run into this same type of issue
with the upstream arm64 defconfig.

Brian


