Return-Path: <devicetree+bounces-11752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7111E7D6869
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:27:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BE13281844
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E22262AF;
	Wed, 25 Oct 2023 10:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B37D2566
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:27:14 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 22DB893;
	Wed, 25 Oct 2023 03:27:13 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 506412F4;
	Wed, 25 Oct 2023 03:27:54 -0700 (PDT)
Received: from [10.57.2.113] (unknown [10.57.2.113])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 337073F738;
	Wed, 25 Oct 2023 03:27:10 -0700 (PDT)
Message-ID: <ccb5590d-b936-435a-bbf6-3894194e8800@arm.com>
Date: Wed, 25 Oct 2023 11:27:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] coresight-tpdm: Correct the property name of MSR
 number
To: Tao Zhang <quic_taozha@quicinc.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Konrad Dybcio <konradybcio@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jinlong Mao <quic_jinlmao@quicinc.com>, Leo Yan <leo.yan@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, Song Chai <quic_songchai@quicinc.com>,
 linux-arm-msm@vger.kernel.org, andersson@kernel.org
References: <1698128353-31157-1-git-send-email-quic_taozha@quicinc.com>
Content-Language: en-GB
From: Suzuki K Poulose <suzuki.poulose@arm.com>
In-Reply-To: <1698128353-31157-1-git-send-email-quic_taozha@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

Please always run a checkpatch on your patch before submission.
(And of course test your patch properly for all the functionality
that it introduces. We don't have the hardware for testing all of
this. So, there is only so much we could do with the eyes)


On 24/10/2023 07:19, Tao Zhang wrote:
> Correct the property name of the DSB MSR number that needs to be
> read in TPDM driver. The right property name is
> "qcom,dsb-msrs-num".
> 
> Fixes： 90a7371cb08d ("coresight-tpdm: Add nodes for dsb msr support")
> Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
> ---
>   drivers/hwtracing/coresight/coresight-tpdm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
> index b25284e..97654aa 100644
> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
> @@ -892,7 +892,7 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
>   
>   	if (drvdata && tpdm_has_dsb_dataset(drvdata))
>   		of_property_read_u32(drvdata->dev->of_node,
> -			   "qcom,dsb_msr_num", &drvdata->dsb_msr_num);
> +			   "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
>   
>   	/* Set up coresight component description */
>   	desc.name = coresight_alloc_device_name(&tpdm_devs, dev);

checkpatch complains:

ERROR: Please use git commit description style 'commit <12+ chars of 
sha1> ("<title line>")' - ie: 'commit 90a7371cb08d ("coresight-tpdm: Add 
nodes for dsb msr support")'
#13:
Fixes： 90a7371cb08d ("coresight-tpdm: Add nodes for dsb msr support")

total: 1 errors, 0 warnings, 8 lines checked


Suzuki

