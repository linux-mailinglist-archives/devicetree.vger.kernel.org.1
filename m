Return-Path: <devicetree+bounces-219815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55549B8E694
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 23:41:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AE9417C593
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 21:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C84296BC8;
	Sun, 21 Sep 2025 21:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IEFagO3U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C701798F
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 21:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758490861; cv=none; b=TnXaGCG675Pp3CZE0wH/YbR6fBAtusZ8HFXe80sqIBf5GMkNOEclHuipxAp30xZiRJEnOjaL69ZpSWBTcHfqcmeqpLpRAPs5UPSp4zai68arc/jSJdpLue4iQmGWDGlk3nLvHpGQFvHfUm8XsH8+ACg9y/YGn9c2krR+W4AwMEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758490861; c=relaxed/simple;
	bh=1oNc0sJYdb9rX45c7syeiBdncY9kKRBhqLifXQ83cWs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Aw+Av8v8J7WvdWqg0KcryymKNE9nFTNTGh4FiE4LtVRxd6+fAqUlxdWS2CtL64uuTny2Xf4B/phqh/7osMV9ZSxHJskRxSLOBLa14bpyIWI2MZzA5WfVxCB4eRoRvLdKBPse44OZ1ZhraqzHsdY2FUuLdntpVHYy1pTl8X+a/8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IEFagO3U; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45f2c5ef00fso27944765e9.1
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 14:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758490858; x=1759095658; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WosRKVT+AD3vASAmC7vYIumBFhKj0WFw859hR7TLepU=;
        b=IEFagO3U5hCLobCInDoUWdX+cA1L5BKqe7vFziLOlDQyrCIDGn404BS8nLOcd0LDXz
         MvIHk8jfT8ThEk7/VU5icdcJtU3OXQvyYVhBwPm9ftck7jbr88B70PIb0ClkiVaHz9fQ
         xSWOxwtchvSAzKP273aAWRSuqFDYyK61bp6TxIqOQ/3Ou7f1a8YWTmMRG15xG+pXkcJI
         dFlmlY4Qt2SFF/ssHHgA+8BuLtW80Ywt8h5lUXK/A0dwzGPjCOP2JlM5lD/Qz9cOzjE5
         hHRBqaV3FasUJz5r7RFIe/XnfLkSdWmRYdAnNwOqByxh/BwmgEvKOBSUX0p9RzIspj7v
         kizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758490858; x=1759095658;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WosRKVT+AD3vASAmC7vYIumBFhKj0WFw859hR7TLepU=;
        b=mU6fplkkY0CtvDB7SprOnUAOI1SLQNsKcnl00shUD7nb3goQaCKRX398fomanVfepy
         arlyjnc/AM+qm/xBmQfGXVVolgSskdX0BykaEQ1Dr5N5gG7fDI1htq0NWWPHKLAUaMp+
         Yil3qO4R1XABWIqfsozDYMMJuWws98qIt1hBi0gBsDI5iZOGvPkwS1/SNYvMUDtJxzD6
         rqa/HaGWUzsrcEBd2282G+FAJItXgxU3CaMPhHvhDzzZtOfdSkdvWcsNnXBUOuMBF4P4
         tJR9MIvoLQcm37l9sPUenV+D72GoSQ6NJLEqhJ2GXiSrjgCJfdfTOW5mAaWKUuaFjhpA
         H9PA==
X-Forwarded-Encrypted: i=1; AJvYcCVibcAF3LIW/Vh4omSa81q4B1Q8SLG8j9u3nRulkdVi0bQM720W+8Bf/7wNisbRgIprFhGc9XKnws6h@vger.kernel.org
X-Gm-Message-State: AOJu0YyUF/yau8IsubwxhniQBGx2BOyfJEOdGCR4ytHbGiYnqi5rnEE8
	+bKgOSBpJuykyHRZK3E9nETx6P2vSUaCen5dKTigQvr1EY6LTmgT3d62y4W2ZKzB8ho=
X-Gm-Gg: ASbGncs85KQz3Ciw5p/4RF8FuVHsrRKcfP3DSFshmyX1efRksOjCU8rV87lWQ9JudsW
	+n0vRzq2Qi0wu+tdCG6YqbKCyTgVZGwEKHm0ilOGNEK9LMIgmGaqUurIcMZ04mXb4gcqqwjJTCO
	LOR5EARPtMnHz7Gs4EGC+eRY8h1VsAp5OByEsv2O81WaxDtpL2ta6JoIcUUmPDal7/TsG0zDM/M
	uiYz0pRQBlKBdVNWotHKDVxhXlavKX/RJ5QqDtByotlfvLyfdr+OpKnnyhKbzEIbFv/GH+Wd7dA
	fVtiy65mW6e8hkuwgVxkFGa5dRloL7vezTY8b/FfF2Hr9sjzxhyCG87pyq17tnAFoxlz9zuTjuy
	/h6xgcqN+QR+awKyCEhm6EY2nJYShBdmZvaEvHpcOF9m3VBKiNlT3FLZxxSa9M00JF46ZX1iwGW
	WNoJBjX15x7Z1s4FieNpc=
X-Google-Smtp-Source: AGHT+IFxQ7JkZZfaB476dGmISNTL1lZ3jMkfAy+OvS9OYEaehjoDsIOQ0nLG6IoE+CEVTZH9/YurZA==
X-Received: by 2002:a05:600c:4ed1:b0:45d:d291:5dc1 with SMTP id 5b1f17b1804b1-467eb8e216emr94817635e9.15.1758490857615;
        Sun, 21 Sep 2025 14:40:57 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad30csm201206795e9.23.2025.09.21.14.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 14:40:57 -0700 (PDT)
Message-ID: <9139706a-708c-4be6-a994-120cce0cd0e6@linaro.org>
Date: Sun, 21 Sep 2025 22:40:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] firmware: qcom_scm: Introduce PAS context
 initialization and destroy helper
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com>
 <VaE1QImrKf8gxtMr-dFBEHJ0Mv9-1ugwsOz5I1Uaz1PXt6aJMrWR7G3c5bN74hJYzy5v6_obB1OqKgtgdbCUcw==@protonmail.internalid>
 <20250921-kvm_rproc_pas-v3-3-458f09647920@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250921-kvm_rproc_pas-v3-3-458f09647920@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/09/2025 20:41, Mukesh Ojha wrote:
> When Secure Peripheral Authentication Service (PAS) method runs on a
> SoC where Linux runs at EL2 (Gunyah absence) where reset sequences

"i.e. runs without the Gynyah Hypervisor then, reset sequences"

> move to EL3 and Linux need to do some extra stuff before calling PAS
> SMC calls like creating SHMbridge. So, PAS SMC call need awareness and
> need handling of things required when Linux run at EL2.

"Therefore the PAS SMC call"

> 
> Currently, remoteproc and non-remoteproc subsystems use different

"Currently remoteproc"

> variants of the MDT loader helper API, primarily due to the handling of
> the metadata context. Remoteproc subsystems retain metadata context
> until authentication and reset is done, while non-remoteproc subsystems
> (e.g., video, graphics, ipa etc.) do not need to retain it and can free

"do not need to retain metadata context"

> the context right inside qcom_scm_pas_init() call based on passed context
> parameter as NULL.
> 
> So, in an attempt to unify the metadata API process for both remoteproc

"In an attempt to unify"

> and non-remoteproc subsystems and to make the SMC helper function
> cleaner whether SoC running with Gunyah presence or absence by introducing
> a dedicated PAS context initialization and destroy function. Context
> initialization beforehand would help all SMC function to carry it and do
> the right thing whether SoC is running with Gunyah presence or absence.

Since you need to do another version of this patch re: below, please 
tidy up the commit log here a bit too.

> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>   drivers/firmware/qcom/qcom_scm.c       | 53 ++++++++++++++++++++++++++++++++++
>   include/linux/firmware/qcom/qcom_scm.h | 11 +++++++
>   2 files changed, 64 insertions(+)
> 
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index 3379607eaf94..1c6b4c6f5513 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -558,6 +558,59 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
>   		dev_err(__scm->dev, "failed to set download mode: %d\n", ret);
>   }
> 
> +/**
> + * qcom_scm_pas_ctx_init() - Initialize peripheral authentication service
> + *			     context for a given peripheral and it can be
> + *			     destroyed with qcom_scm_pas_ctx_destroy() to
> + *			     release the context
> + *
> + * @dev:	  PAS firmware device
> + * @pas_id:	  peripheral authentication service id
> + * @mem_phys:	  Subsystem reserve memory start address
> + * @mem_size:	  Subsystem reserve memory size
> + *
> + * Upon successful, returns the PAS context or ERR_PTR() of the error otherwise.
> + */
> +void *qcom_scm_pas_ctx_init(struct device *dev, u32 pas_id, phys_addr_t mem_phys,
> +			    size_t mem_size)
> +{
> +	struct qcom_scm_pas_ctx *ctx;
> +
> +	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return ERR_PTR(-ENOMEM);
> +
> +	ctx->dev = dev;
> +	ctx->pas_id = pas_id;
> +	ctx->mem_phys = mem_phys;
> +	ctx->mem_size = mem_size;
> +
> +	ctx->metadata = kzalloc(sizeof(*ctx->metadata), GFP_KERNEL);
> +	if (!ctx->metadata) {
> +		kfree(ctx);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	return ctx;
> +}
> +EXPORT_SYMBOL_GPL(qcom_scm_pas_ctx_init);
> +
> +/**
> + * qcom_scm_pas_ctx_destroy() - release PAS context
> + * @ctx:	PAS context
> + */
> +void qcom_scm_pas_ctx_destroy(struct qcom_scm_pas_ctx *ctx)
> +{
> +	kfree(ctx->metadata);
> +	ctx->metadata = NULL;
> +	ctx->dev = NULL;
> +	ctx->pas_id = 0;
> +	ctx->mem_phys = 0;
> +	ctx->mem_size = 0;
> +	kfree(ctx);
> +}

This looks a bit strange, manually destructing an object you then free. 
I get the argument you might make about use-after-free but, I don't 
think this level of defensive coding is necessary.

> +EXPORT_SYMBOL_GPL(qcom_scm_pas_ctx_destroy);
> +
>   /**
>    * qcom_scm_pas_init_image() - Initialize peripheral authentication service
>    *			       state machine for a given peripheral, using the
> diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
> index a13f703b16cd..e3e9e9e9077f 100644
> --- a/include/linux/firmware/qcom/qcom_scm.h
> +++ b/include/linux/firmware/qcom/qcom_scm.h
> @@ -72,6 +72,17 @@ struct qcom_scm_pas_metadata {
>   	ssize_t size;
>   };
> 
> +struct qcom_scm_pas_ctx {
> +	struct device *dev;
> +	u32 pas_id;
> +	phys_addr_t mem_phys;
> +	size_t mem_size;
> +	struct qcom_scm_pas_metadata *metadata;
> +};
> +
> +void *qcom_scm_pas_ctx_init(struct device *dev, u32 pas_id, phys_addr_t mem_phys,
> +			    size_t mem_size);
> +void qcom_scm_pas_ctx_destroy(struct qcom_scm_pas_ctx *ctx);
>   int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
>   			    struct qcom_scm_pas_metadata *ctx);
>   void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
> 
> --
> 2.50.1
> 
> 

Once fixed.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

