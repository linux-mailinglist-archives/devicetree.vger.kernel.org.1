Return-Path: <devicetree+bounces-10748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F117D2A05
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:13:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 446AE2813D5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BE4612F;
	Mon, 23 Oct 2023 06:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="o+yNL3pY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C5C568E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:13:11 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0435D66;
	Sun, 22 Oct 2023 23:13:09 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39N5FlfY022651;
	Mon, 23 Oct 2023 06:12:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=M+iFK5+PcVKN8mUgauBvkmpQBmdovrmtIryqU01G0gk=;
 b=o+yNL3pYuDDVBxMnOLwKs6nWE/X+6l8lGF05wZIAa8pLo4Z2xwYCqPddnUQfeMelGvVh
 GgrH7DwbirDS9efImq2dLbKqMkHRh66z/KnUEutewIlnWsqnPHYUSJsZ32HJ67ztOVGo
 yJAJcVzU5755edJJo+g3xTwz2ZxWqUCtZ46ieeUr607xeOMniaQZ4HCA8J8Zom28Gtt2
 qB339CB+KBS/TZRcDzsvXhCap7+gdcc9rrVoY7SBty5c3NqO4qgMDR05IeZHvZ0fBou2
 y5YCpR/De7Q+cIPC+Zw5816JrLWQB5CAAGNiPpBhXEjDBNpXZsiu+QbdyOXZUNCbye8C Tg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tv71d37ak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 06:12:48 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39N6Clmm031445
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 06:12:47 GMT
Received: from [10.216.48.174] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Sun, 22 Oct
 2023 23:12:39 -0700
Message-ID: <0c7c7e70-f809-4728-b11e-948309b7f398@quicinc.com>
Date: Mon, 23 Oct 2023 11:42:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 05/11] iio: adc: qcom-spmi-adc5: remove support for ADC7
 compatible string
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linus.walleij@linaro.org>, <Jonathan.Cameron@huawei.com>,
        <sboyd@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <quic_subbaram@quicinc.com>, <quic_collinsd@quicinc.com>,
        <quic_kamalw@quicinc.com>, <marijn.suijten@somainline.org>,
        <andriy.shevchenko@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jonathan Cameron
	<jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, <linux-arm-msm@vger.kernel.org>,
        <linux-iio@vger.kernel.org>
CC: <linux-arm-msm-owner@vger.kernel.org>
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
 <20230708072835.3035398-6-quic_jprakash@quicinc.com>
 <3b417e21-1726-a026-cd53-e68cc49b56fc@linaro.org>
From: Jishnu Prakash <quic_jprakash@quicinc.com>
In-Reply-To: <3b417e21-1726-a026-cd53-e68cc49b56fc@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Fd9GcZrJokIwJnhoQ3xgJo9hsaJDrhFP
X-Proofpoint-GUID: Fd9GcZrJokIwJnhoQ3xgJo9hsaJDrhFP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_03,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 mlxlogscore=877
 clxscore=1015 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310230054

Hi Krzysztof,

On 7/9/2023 11:08 PM, Krzysztof Kozlowski wrote:
> On 08/07/2023 09:28, Jishnu Prakash wrote:
>> Now that usage of "ADC7" name has been replaced with usage of "ADC5
>> Gen2" name everywhere, remove the "qcom,spmi-adc7" compatible string.
>>
>> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
>> ---
>>   drivers/iio/adc/qcom-spmi-adc5.c | 4 ----
> Your patchset is not bisectable. Neither this patch nor cover letter
> marked this. This is not correct and will lead to broken kernels.
>
> Even if not considering bisectability, this basically breaks the ABI
> without any explanation and rationale.
>
> Breaking ABI just because you want to rename something, is not the way
> to go, so NAK. Sorry.
>
> Best regards,
> Krzysztof

I'll drop this patch and just mark the older name as deprecated. For 
concerns on bisectability, I have asked some questions in my other 
replies for this patch series, I'll structure my next patchsets 
according to the replies I get.

Thanks,

Jishnu

>

