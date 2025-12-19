Return-Path: <devicetree+bounces-248229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F8DCD0072
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F3BB2300DE87
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D205032D7F4;
	Fri, 19 Dec 2025 13:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VwPgOcAa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d6wbTPhx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13353009F1
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766150149; cv=none; b=mcVs3IGqlfrRFbj+APQwxY5eMtnT2xdWKJf98enP2QDu5tW1kbLuhxhzg5ym115VXqixs30hA4ECTXeOfLC2/AHIUY20Dxj9KEs80JtKixHLv0k1Qlk2UqOn1mFpDeQM9AGQ8z98b0mnzyrhPDvOq3YPTv8PFT93TVDE2seynVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766150149; c=relaxed/simple;
	bh=mtVvIUS/JaJUCoLQVXSOzz/8MiesNRzguGmPjaF5OIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IFiqzJCdDrtanWsGSMDvWCSP5Beldh6xHs9iO0uZPaJ7HgYet3hYkTFSIyBzSynaUvZUPvJ6INDubToaQ2YzpcGQVwLJR57lK2CSWm8XM3UaPPvG/N6XiUbo3j+jU3EncZZSTds63zDOQ3qqhUz9AAiRmr5ryeggI0O4ngejN0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VwPgOcAa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d6wbTPhx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJB96KZ3999438
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:15:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UpN1l31PtsvvDzVVzcUO81N4UuEt2F++NIEqhVqZxkU=; b=VwPgOcAaZFwHecay
	WVwKGTlViyarYjlj0bZgxWoqkOsBLYJ6mdP17LrBMetlkdSGNhIfv+0x0E06zfMl
	uHuePSmbky9nqHkcEGMBqV+SKZCtNluD/9bF43U3/sAX+44AKSO6drHhJuYNKxyL
	ikkeJJU8Tt8/g4mR0hj7cjqgz8UTSN3sRa/c3uBkBwdlg27otK0TaaacJL4bZKsb
	19UdktJ/BXsCsZt+mjN3HHoapKQgXEbPhKo1uT7undUZ01EYr5+yAt9ARXYHjET7
	Wy40XlvPT4cCKXyFPL6VIXzPrvKFvCWXz3lphEzLjSvL/k8dvBPrDBJYrDr/7nLZ
	sahnHQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r29jrvc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:15:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b89c1ce9cfso2342056b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766150143; x=1766754943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UpN1l31PtsvvDzVVzcUO81N4UuEt2F++NIEqhVqZxkU=;
        b=d6wbTPhxeimSNmfo/zqQTnpJtmnE6Qs0g1lydF2FRvD2eLzDoLPtt4MNOOt58ZRcL0
         pKZGbQzuroVSk1AxLPefuGZHrrYJ8ZIAHlEChFhariRVpG4PRIifkJIS6TQuIviSyvHU
         M1mpST/cPEDnP3Q3GDNEyp4WJ3pNTjLLdZOpf0spkYMWJzfKN8xcK47w+qIJeO58EMlS
         MMRQawOi2N28UkCeosLqqPbmgbf3BWpFpTBSnaMqSoaHQAwzCENALnQo9V5FlXAGvGgh
         XnBS+cmQQHQtSsdrdSvcgPJJMAh+DEyV/8E8caxee7Nq7GxKVw01SseZtF+fhNYuBScc
         s2QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766150143; x=1766754943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UpN1l31PtsvvDzVVzcUO81N4UuEt2F++NIEqhVqZxkU=;
        b=VDlmuxUNGmwGH/uNdu7IU3A4l/Rp8e3nsHeUVZ34P1OEfDv2kHJByk1+/iP3bRePWs
         f7bihIf2CuMp8IP1aV/b6le3f+bcQLQn/AZ+Wihn0P2szgyS8EgY/6W+hpzWA3xPb43Z
         8XnMrgklAjma+J2XWbRET475ZkNGoh9p0NydxAdfwZOBZEIAkX3i0u05hKqNAhpvmHxg
         HlvQrkAbV4aAVPvRJw5z9j38WTbnBQBt/94Sk5i12sXMiZH/6ZcxKsfeiFF86EGwL7k4
         cGLWZPFYiilacG5iAeY0XKI8xPKXXthsdqcBMtWiTHkFB68Fcw9ca3Z0PHeClSwVi8A5
         oIuA==
X-Forwarded-Encrypted: i=1; AJvYcCWLn0n4Ht3zinaZT5GawoscFvBWv9ZfwXDSXef7CdLi0JOhxE51wqFbDQcUj4APzZxD+ZQWAUDD8UIX@vger.kernel.org
X-Gm-Message-State: AOJu0YzfpaSd/DxUxKaCl/28hd7IUC8IR4WLxImGWXr26UKg5BdUwG0y
	QntvpEcidZNJAsGL7lGWCnXR8xuHGte/fz+ToOwaTYVR5hPL6MvXQlxmocgfT8tQSv8Y4ve/p8y
	b3I42Djo0ZWJ3erEbRQpnfe8DGv91wVasIq9r/sWh4l++frwvH9iSrzC4y61NxlgY
X-Gm-Gg: AY/fxX7pDHQroelHyolTl0NYyj54ZUXOCkAGW96eHFvj8Lu0SpGsqM2pdlzJwgGT+J8
	D3C3KXscnrwkPCD/ihauG/MD2M1aRRD7cMLTRGxmFGOz/TiJpGoOIlPsuOwIqmbtW5HVWaWNS7y
	KivZHoIGBpimbJQMFfHth6/EgjHaIn0Akvld3ZTmYzFNUxIfCt1btVc/8B7hdz87vtK8/O7uAt+
	cbUxn5cZ6d7nyDEXPHyJP5sfjFPwathSlCTVwrSz7owipejZrGri/4bUdOTxD1wSpa3RgLgYjeE
	U6acBpjZrHPTJzhGlF5WYijCaL9BDOUui1nBOMVXJTG6ityPSYf0sjp9ou/72nrNA5MtnVPq19V
	HbTcKgHrTHc+y8z+RoxUzNCsxnd3OCCtl3Dzqsm7Edw==
X-Received: by 2002:a05:6a21:6d98:b0:364:86a:46b2 with SMTP id adf61e73a8af0-376a9ccbb0bmr3024519637.57.1766150142716;
        Fri, 19 Dec 2025 05:15:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsxyK5lHLg3u33gOcm5o66CK8suco88/56FRjoiS6lVtwAhOZVk1W29HbjNE5Gu3ZcAxPv+w==
X-Received: by 2002:a05:6a21:6d98:b0:364:86a:46b2 with SMTP id adf61e73a8af0-376a9ccbb0bmr3024453637.57.1766150142120;
        Fri, 19 Dec 2025 05:15:42 -0800 (PST)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e772ac06fsm2002400a91.11.2025.12.19.05.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:15:41 -0800 (PST)
Message-ID: <6afcb26f-6f6a-41ef-ac45-976e5e2f17ae@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 18:45:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V8 3/4] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org
References: <20251127134036.209905-1-jishnu.prakash@oss.qualcomm.com>
 <20251127134036.209905-4-jishnu.prakash@oss.qualcomm.com>
 <20251207165349.72f80659@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20251207165349.72f80659@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P6c3RyAu c=1 sm=1 tr=0 ts=69455000 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fLtpXVqzqxV2lCxwsoQA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: FN8G3tN0u1Zq_rATYvdfL0WCcws4fvlM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDExMCBTYWx0ZWRfX6OjNKZduE4T7
 BP1Tq23R6HcqLXDrpvAyvS/aLVGHZRJm+c3ajkT7AABRnRz90Oiyy78KeUKG2rSP8HF1M1Nk+Zm
 UMWW2CvQFwHVWeqCNjEXLwKHAEtsu/vWkD+YbNJuZGRlD5BHCcu7tQVLF28TLMfktIM4zZZ63pE
 ia2oNeMXViUkJQ2rkaWw4GpHt0clmRxvyPxWB0JEparm9HNiIGY0DquTDFYt2jmeDFyFSUABP0r
 LM3bS1oP0SyvbSyQctbtckrAg4UBMsqu5mTp/YmEDXSy2UAcRdfRCOc0oypuEgb4z6ftS2/bh83
 NcljMi1d2jWhn3AecKbpOr+A5e2F2gNQ+ffv0iss3IBByHmyc1gDgncVCzNNsXUTDzvllkSVRFW
 42xDHzNRv2rtOJZxVqJiXxzX+D5VNAzAXU37mgO+FSZNQq2QbCff6y8B9QJ8+WOTyn9OUEJpXXX
 m0kzWZ9OxAqEJAh7PPQ==
X-Proofpoint-GUID: FN8G3tN0u1Zq_rATYvdfL0WCcws4fvlM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190110

Hi Jonathan,

On 12/7/2025 10:23 PM, Jonathan Cameron wrote:
> On Thu, 27 Nov 2025 19:10:35 +0530
> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
> 
>> The ADC architecture on PMIC5 Gen3 is similar to that on PMIC5 Gen2,
>> with all SW communication to ADC going through PMK8550 which
>> communicates with other PMICs through PBS.
>>
>> One major difference is that the register interface used here is that
>> of an SDAM (Shared Direct Access Memory) peripheral present on PMK8550.
>> There may be more than one SDAM used for ADC5 Gen3 and each has eight
>> channels, which may be used for either immediate reads (same functionality
>> as previous PMIC5 and PMIC5 Gen2 ADC peripherals) or recurring measurements
>> (same as ADC_TM functionality).
>>
>> By convention, we reserve the first channel of the first SDAM for all
>> immediate reads and use the remaining channels across all SDAMs for
>> ADC_TM monitoring functionality.
>>
>> Add support for PMIC5 Gen3 ADC driver for immediate read functionality.
>> ADC_TM is implemented as an auxiliary thermal driver under this ADC
>> driver.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Hi Jishnu
> 
> Biggest thing I noticed on a fresh review is that you include
> very few headers.  This only compiles (I think) because of lots
> of deeply nested includes.  General principle in kernel code is
> to follow IWYU approach with a few exceptions.  That makes code
> much less prone to changes deep in the header hierarchy.
> 
> You can even use the tooling that exists for clang to give you suggestions
> though search around for config files (I posted one a long time back)
> that reduce the noise somewhat.
> 
> Jonathan
> 
> 
>> diff --git a/drivers/iio/adc/qcom-adc5-gen3-common.c b/drivers/iio/adc/qcom-adc5-gen3-common.c
>> new file mode 100644
>> index 000000000000..46bb09424f22
>> --- /dev/null
>> +++ b/drivers/iio/adc/qcom-adc5-gen3-common.c
>> @@ -0,0 +1,107 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + *
>> + * Code shared between the main and auxiliary Qualcomm PMIC voltage ADCs
>> + * of type ADC5 Gen3.
>> + */
>> +
>> +#include <linux/bitfield.h>
>> +#include <linux/delay.h>
>> +#include <linux/iio/adc/qcom-adc5-gen3-common.h>
>> +#include <linux/regmap.h>
> This seems like very light set of includes.
> If nothing else should be seeing linux/types.h I think
> 
> In general try to follow include what you use principles (loosely as some
> conventions exit for not including particular headers). 
> 

I have a question about this - I'm including some header files in my
newly added common header file too (include/linux/iio/adc/qcom-adc5-gen3-common.h).
Do I need to repeat those in the driver files where this header is already
included?

> Sorry I didn't notice this in earlier reviews!
> 
> 
>> diff --git a/drivers/iio/adc/qcom-spmi-adc5-gen3.c b/drivers/iio/adc/qcom-spmi-adc5-gen3.c
>> new file mode 100644
>> index 000000000000..effd4bd49989
>> --- /dev/null
>> +++ b/drivers/iio/adc/qcom-spmi-adc5-gen3.c
> 
>> +/**
>> + * struct adc5_chip - ADC private structure.
>> + * @dev: SPMI ADC5 Gen3 device.
>> + * @dev_data: Top-level ADC device data.
>> + * @nchannels: number of ADC channels.
>> + * @chan_props: array of ADC channel properties.
>> + * @iio_chans: array of IIO channels specification.
>> + * @complete: ADC result notification after interrupt is received.
>> + * @lock: ADC lock for access to the peripheral, to prevent concurrent
>> + * requests from multiple clients.
>> + * @data: software configuration data.
>> + * @n_tm_channels: number of ADC channels used for TM measurements.
>> + * @tm_aux: pointer to auxiliary TM device.
>> + */
>> +struct adc5_chip {
>> +	struct device *dev;
>> +	struct adc5_device_data dev_data;
>> +	unsigned int nchannels;
>> +	struct adc5_channel_prop *chan_props;
>> +	struct iio_chan_spec *iio_chans;
>> +	struct completion complete;
>> +	/*
>> +	 * lock for access to the peripheral, to prevent concurrent requests
>> +	 * from multiple clients.
>> +	 */
> 
> Whilst checkpatch is dumb on this and complains if you don't have a comment
> here feel free to drop it as the one in the kernel-doc is enough.
> 

I'll make this change in the next patch series.

Thanks,
Jishnu


>> +	struct mutex lock;
>> +	const struct adc5_data *data;
>> +	unsigned int n_tm_channels;
>> +	struct auxiliary_device *tm_aux;
>> +};
> 
> 
>>


