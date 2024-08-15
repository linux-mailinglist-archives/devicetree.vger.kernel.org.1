Return-Path: <devicetree+bounces-93903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC076952ECC
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 15:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04DC5B27B4C
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 13:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A4419DF78;
	Thu, 15 Aug 2024 13:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qieAn9XT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB82917C9B7
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 13:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723727343; cv=none; b=heYwydXBcHeU3W8IRVLRO5M1bHQrUrAB6kT0If4Y4qkZXk0lyocN0vPlpk14XZbxedZkppw5U3S7JvFqkin/gnsWeVTxkxtdDHkFD7P59/NeGpNg451OaxfwHwTK/mgvmoaAY/mi2n7ZeJ608686AoDLenrlOAPcAqQQWkfsiwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723727343; c=relaxed/simple;
	bh=ZNiq2dS7G8t+fkB7QAgvHsxKjUH2MxNcZXjk9gsTVRc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bECpuqIaFOCCouFHhY4rPxDRsLQS1d3SvtGYJvhmtTl2SOTE7tOoSSbeCj0Ay48m0GsX6OU9nbo//KrQKr5A+2s1G/kjFiwxJyqvIItOf06ZXVv3NectEwE8hGJqJkV0mWb5Evo3Tbxp36n6m/JU7x1XJglZUIg6vD7J2V95hzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qieAn9XT; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f035ae0fd1so10286071fa.2
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 06:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723727340; x=1724332140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TNY1eM+k8dVypAWpZEMkyA4Ex7FP/CU7h/TDaorYfbM=;
        b=qieAn9XTOcFXLy1q6ngbr8ohGiyMYSkbbgYITEVXOjgodlaX70MEymEn/xwYRhEKtC
         7nnvEBibVEMeIzW3anm0ti3i7mr28qu30gHUZhSfhJIJ3tvQpJfCeC9xHJUrcOPIGL0z
         sOjCyltVwivnlhKZzVXQbhga9dRWMukWZAH1IZxg/PFqaJVIbGUNYuXtpyy25Jjds9h0
         zXC54Q+/4mz1oydMbtXvtELsdo9Ex1LLphiQ1BsClC7lJrM0NOSF6yRc0GBXsPbUKyc8
         N3sxOcuAPNb6b6VPpy5RWlfz4lGGOSD9eJLoyneUjs4nO6D2D2cC30JOPUb3g1Xl69Qv
         Vm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723727340; x=1724332140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TNY1eM+k8dVypAWpZEMkyA4Ex7FP/CU7h/TDaorYfbM=;
        b=UTAt7We6zTvSCZ+sUID5csRfi5yZSL4ZN3ma/ATtnadP91WXCWYB3NkLIesZVX80Y1
         n0leK8j+fLJqP+gYZW4Ig301o2UDn2khdaiD8iRESD8L/z8AM6/0mS6a566mP3OOcb5p
         FCN2xqXr0Z89vuaVJIZXbeiDq3Ne2EJV2Ww9JQpUULPpuGQMdhbH0hQhpjXuvBmcDIG/
         +c6C3zXWxto826/YJF+aHMNe07cdItEOM7Jw1CoYgeCuTThufsoodQXQHXMGq6LdTWd/
         IcwxmDsnGHP9iqebOsaRAsUTcn+lW+CRm6vdCmjUYwu+poXvKmc2L313jCsYkmlvq7dM
         z/aQ==
X-Forwarded-Encrypted: i=1; AJvYcCUosxojqx/D/xqvT/Bk78I1saXddy2gwFG7DQ8Gj5MlXBbtZWsn9pjtzvVdVPcLJGxeBg/Dm5XCf5gOI8x44IKfEY7nhxfC3DDvLw==
X-Gm-Message-State: AOJu0Ywaz7gKMrB0gs5uZnTufKOGrrVMQ67Wz1hdoWz/ZdBAQs/i2pO7
	sKNMq4XfPk0cMFQWzFUfWebxLvSem7CFNNBI/cIKBBq3kz84d75rqYriGh3HjQ8=
X-Google-Smtp-Source: AGHT+IE+mnCIG8BYgBw5oHWVA2VHQioa6RNCWwiCufSDfkzDIzHQOepsTOsLlr6E2Nlerb9pp9JkZg==
X-Received: by 2002:a05:6512:1292:b0:530:e228:7799 with SMTP id 2adb3069b0e04-532edbcaab6mr3519137e87.58.1723727339644;
        Thu, 15 Aug 2024 06:08:59 -0700 (PDT)
Received: from ?IPV6:2a02:8109:aa0d:be00::e7e1? ([2a02:8109:aa0d:be00::e7e1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a838396dfddsm99761266b.214.2024.08.15.06.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 06:08:59 -0700 (PDT)
Message-ID: <f341e9e9-3da6-4029-9892-90e6ec856544@linaro.org>
Date: Thu, 15 Aug 2024 15:08:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/16] Add cmd descriptor support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, vkoul@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, thara.gopinath@gmail.com,
 herbert@gondor.apana.org.au, davem@davemloft.net, gustavoars@kernel.org,
 u.kleine-koenig@pengutronix.de, kees@kernel.org, agross@kernel.org,
 linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com,
 quic_utiwari@quicinc.com
References: <20240815085725.2740390-1-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20240815085725.2740390-1-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

A note for future patches, please scope your cover letter subject:

"dmaengine: qcom: bam_dma: add cmd descriptor support"

On 15/08/2024 10:57, Md Sadre Alam wrote:
> This series of patches will add command descriptor
> support to read/write crypto engine register via
> BAM/DMA
> 
> We need this support because if there is multiple EE's
> (Execution Environment) accessing the same CE then there
> will be race condition. To avoid this race condition
> BAM HW hsving LOC/UNLOCK feature on BAM pipes and this
> LOCK/UNLOCK will be set via command descriptor only.
> 
> Since each EE's having their dedicated BAM pipe, BAM allows
> Locking and Unlocking on BAM pipe. So if one EE's requesting
> for CE5 access then that EE's first has to LOCK the BAM pipe
> while setting LOCK bit on command descriptor and then access
> it. After finishing the request EE's has to UNLOCK the BAM pipe
> so in this way we race condition will not happen.
> 
> tested with "tcrypt.ko" and "kcapi" tool.
> 
> Need help to test these all the patches on msm platform

DT changes here are only for a few IPQ platforms, please explain in the 
cover letter if this is some IPQ specific feature which doesn't exist on 
other platforms, or if you're only enabling it on IPQ.

Some broad strokes testing instructions (at the very least) and 
requirements (testing on what hardware?) aren't made obvious at all here.

Kind regards,
> 
> v2:
>   * Addressed all the comments from v1
>   * Added the dt-binding
>   * Added locking/unlocking mechanism in bam driver
> 
> v1:
>   * https://lore.kernel.org/lkml/20231214114239.2635325-1-quic_mdalam@quicinc.com/
>   * Initial set of patches for cmd descriptor support
> 
> Md Sadre Alam (16):
>    dt-bindings: dma: qcom,bam: Add bam pipe lock
>    dmaengine: qcom: bam_dma: add bam_pipe_lock dt property
>    dmaengine: qcom: bam_dma: add LOCK & UNLOCK flag support
>    crypto: qce - Add support for crypto address read
>    crypto: qce - Add bam dma support for crypto register r/w
>    crypto: qce - Convert register r/w for skcipher via BAM/DMA
>    crypto: qce - Convert register r/w for sha via BAM/DMA
>    crypto: qce - Convert register r/w for aead via BAM/DMA
>    crypto: qce - Add LOCK and UNLOCK flag support
>    crypto: qce - Add support for lock aquire,lock release api.
>    crypto: qce - Add support for lock/unlock in skcipher
>    crypto: qce - Add support for lock/unlock in sha
>    crypto: qce - Add support for lock/unlock in aead
>    arm64: dts: qcom: ipq9574: enable bam pipe locking/unlocking
>    arm64: dts: qcom: ipq8074: enable bam pipe locking/unlocking
>    arm64: dts: qcom: ipq6018: enable bam pipe locking/unlocking
> 
>   .../devicetree/bindings/dma/qcom,bam-dma.yaml |   8 +
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi         |   1 +
>   arch/arm64/boot/dts/qcom/ipq8074.dtsi         |   1 +
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi         |   1 +
>   drivers/crypto/qce/aead.c                     |   4 +
>   drivers/crypto/qce/common.c                   | 142 +++++++----
>   drivers/crypto/qce/core.c                     |  13 +-
>   drivers/crypto/qce/core.h                     |  12 +
>   drivers/crypto/qce/dma.c                      | 232 ++++++++++++++++++
>   drivers/crypto/qce/dma.h                      |  26 +-
>   drivers/crypto/qce/sha.c                      |   4 +
>   drivers/crypto/qce/skcipher.c                 |   4 +
>   drivers/dma/qcom/bam_dma.c                    |  14 +-
>   include/linux/dmaengine.h                     |   6 +
>   14 files changed, 424 insertions(+), 44 deletions(-)
> 

-- 
// Caleb (they/them)

