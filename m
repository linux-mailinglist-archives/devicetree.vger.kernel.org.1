Return-Path: <devicetree+bounces-3138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E34527AD6C1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:11:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2F070B209B4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0075918E06;
	Mon, 25 Sep 2023 11:11:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1696718AE7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:11:05 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F048DC0;
	Mon, 25 Sep 2023 04:11:03 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38PAKPEo022153;
	Mon, 25 Sep 2023 11:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=06zw0yftt1QZ42hSHAqdLVM1z5Q8BG0w8ufCiqKGdcM=;
 b=QtIoFWY8bljQFpkLh18jJUcUWITU1jb1T3krDgtLpugOk56JLO/S8B0qpeW3Xbe9pneR
 UpVKtwnif5sEsxmoB98Ymi/gjgvFEtA73bhTsxN7wS1swrQ4k77imKDGHamgBw3FdqIS
 gbOb/LpmziCx2FJLWlhACPcLY8sXd/2KbwuumUtfL9iz3ChN4r20h18+vp/H4Vs+OvdN
 HwtmVq0ObyPWPRntbWDH4UlBmrvnviX27czEeXyeitnL+OcN0nHLKx3o8tYIW6HB216u
 6fNETDWB29PikQOmrifDtb0vvO70IiFdEImgAdHo/A1RYVSkyr9nL+74AjDgWgRRQPQ0 hQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t9safbvfb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 11:10:50 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38PBAoU2023655
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 11:10:50 GMT
Received: from [10.218.47.181] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Mon, 25 Sep
 2023 04:10:44 -0700
Message-ID: <f6a1d8f0-6af3-4e58-8c1b-7d41d46b7ce0@quicinc.com>
Date: Mon, 25 Sep 2023 16:40:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2] crypto: qcom-rng - Add hw_random interface support
To: Bjorn Andersson <quic_bjorande@quicinc.com>
CC: <neil.armstrong@linaro.org>, <konrad.dybcio@linaro.org>,
        <agross@kernel.org>, <andersson@kernel.org>, <conor+dt@kernel.org>,
        <davem@davemloft.net>, <devicetree@vger.kernel.org>,
        <herbert@gondor.apana.org.au>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <marijn.suijten@somainline.org>,
        <robh+dt@kernel.org>, <vkoul@kernel.org>
References: <20230905062420.3983268-1-quic_omprsing@quicinc.com>
 <20230920030408.3181394-1-quic_omprsing@quicinc.com>
 <20230922151651.GA437346@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Om Prakash Singh <quic_omprsing@quicinc.com>
In-Reply-To: <20230922151651.GA437346@hu-bjorande-lv.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: E1QCyqpvPv60va_rb2m7NC2b_qLs6i5i
X-Proofpoint-GUID: E1QCyqpvPv60va_rb2m7NC2b_qLs6i5i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-25_08,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 mlxscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309250083
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/22/2023 8:46 PM, Bjorn Andersson wrote:
> On Wed, Sep 20, 2023 at 08:34:08AM +0530, Om Prakash Singh wrote:
>> Add hw_random interface support in qcom-rng driver as new IP block
>> in Qualcomm SoC has inbuilt NIST SP800 90B compliant entropic source
>> to generate true random number.
>>
>> Keeping current rng_alg interface as well for random number generation
>> using Kernel Crypto API.
>>
>> Signed-off-by: Om Prakash Singh <quic_omprsing@quicinc.com>
>> ---
>>
>> Changes in V2:
>> - Updated patch to fix the return value from qcom_rng_generate() to be
>>    consistent with current implementation
> 
> As far as I can tell you didn't change this, see below.
> 
>> - Updated patch to make it more concise
>> - Removed unnecessary use local variable and it's initialization
>> - Updated patch to use devm_hwrng_register() instead of hwrng_register()
>> - Updated subject line of the patch
>>
>> This patch is depends on [1]
>> [1] https://lore.kernel.org/lkml/20230824-topic-sm8550-rng-v2-4-dfcafbb16a3e@linaro.org/
>>
>>   drivers/crypto/qcom-rng.c | 65 ++++++++++++++++++++++++++++++++++-----
>>   1 file changed, 58 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/crypto/qcom-rng.c b/drivers/crypto/qcom-rng.c
>> index fb54b8cfc35f..e5a574a3cc59 100644
>> --- a/drivers/crypto/qcom-rng.c
>> +++ b/drivers/crypto/qcom-rng.c
>> @@ -7,6 +7,7 @@
>>   #include <linux/acpi.h>
>>   #include <linux/clk.h>
>>   #include <linux/crypto.h>
>> +#include <linux/hw_random.h>
>>   #include <linux/io.h>
>>   #include <linux/iopoll.h>
>>   #include <linux/kernel.h>
>> @@ -32,13 +33,18 @@ struct qcom_rng {
>>   	struct mutex lock;
>>   	void __iomem *base;
>>   	struct clk *clk;
>> -	unsigned int skip_init;
>> +	struct qcom_rng_of_data *of_data;
>>   };
>>   
>>   struct qcom_rng_ctx {
>>   	struct qcom_rng *rng;
>>   };
>>   
>> +struct qcom_rng_of_data {
>> +	bool skip_init;
>> +	bool hwrng_support;
>> +};
>> +
>>   static struct qcom_rng *qcom_rng_dev;
>>   
>>   static int qcom_rng_read(struct qcom_rng *rng, u8 *data, unsigned int max)
>> @@ -70,7 +76,7 @@ static int qcom_rng_read(struct qcom_rng *rng, u8 *data, unsigned int max)
>>   		}
>>   	} while (currsize < max);
>>   
>> -	return 0;
>> +	return currsize;
> 
> As I pointed out in my previous review, if the qcom_rng_read() is
> requested to read a number of bytes (max) that is not evenly divisible
> with 4 (WORD_SZ) the loop will exit without accounting for the last
> bytes copied...

I will update implementation to account currsize for accounting 
remaining bytes

>>   }
>>   
>>   static int qcom_rng_generate(struct crypto_rng *tfm,
>> @@ -92,6 +98,9 @@ static int qcom_rng_generate(struct crypto_rng *tfm,
>>   	mutex_unlock(&rng->lock);
>>   	clk_disable_unprepare(rng->clk);
>>   
>> +	if (ret == dlen)
> 
> ...this means that if dlen % 4, you're changing the return value of this
> function from 0 to dlen.

I will Update logic for success case return value.

> 
>> +		ret = 0;
>> +
>>   	return ret;
>>   }
>>   
>> @@ -101,6 +110,13 @@ static int qcom_rng_seed(struct crypto_rng *tfm, const u8 *seed,
>>   	return 0;
>>   }
>>   
>> +static int qcom_hwrng_read(struct hwrng *rng, void *data, size_t max, bool wait)
>> +{
>> +	struct qcom_rng *qrng = (struct qcom_rng *)rng->priv;
> 
> You missed Herbert's request in [1], which I presume implies that
> qcom_hwrng should be moved into struct qcom_rng, which would mean that
> you can get the qrng by container_of().
> 
> [1] https://lore.kernel.org/lkml/ZQQvlXvGy8p01uJS@gondor.apana.org.au/

I will address this comment is my next patch set V3.


>> +
>> +	return qcom_rng_read(qrng, data, max);
>> +}
>> +
>>   static int qcom_rng_enable(struct qcom_rng *rng)
>>   {
>>   	u32 val;
>> @@ -136,7 +152,7 @@ static int qcom_rng_init(struct crypto_tfm *tfm)
>>   
>>   	ctx->rng = qcom_rng_dev;
>>   
>> -	if (!ctx->rng->skip_init)
>> +	if (!ctx->rng->of_data->skip_init)
>>   		return qcom_rng_enable(ctx->rng);
>>   
>>   	return 0;
>> @@ -157,6 +173,12 @@ static struct rng_alg qcom_rng_alg = {
>>   	}
>>   };
>>   
>> +static struct hwrng qcom_hwrng = {
>> +	.name = "qcom-hwrng",
>> +	.read = qcom_hwrng_read,
>> +	.quality = 1024,
>> +};
> 
> Which would mean not adding this static global variable...
> 
> Regards,
> Bjorn

