Return-Path: <devicetree+bounces-181636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA6EAC8274
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 21:08:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFE941C02186
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 19:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A40822F164;
	Thu, 29 May 2025 19:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JnvFzhDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B787E647
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 19:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748545678; cv=none; b=rSi9K3lbvZ4mJDRLd4TiplIoto3Y1zzhJT+N9wJNuWDgrgWHa70lWjgR1acKm8dqj9p5L9jgSDknBwr9+2xwLjq5iACiiDswzqssbFQ9GuD/x6vxM9yyg4J1grjj2mrLR8FtzMep4PZsFuuITtKzSDKEez35zOsw2Y8500bGtMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748545678; c=relaxed/simple;
	bh=Y9/wIvTPGPbaia/ygwyG7lu/okfgCYkuhDeI142REbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lwbFzLzjrqhpDonBdw+dSTUipU5dk/+099J7Ref5hwSdOB5xzJi6wApVuOW6+EiyELL2GJa/NKhsWK1zp+yafW5wRkj9nDE5cmCMfl5d3BMGZJx1ZAvLDsMZ+iLNpT7xmkcA1K5/s484OjfoCGCI6xpWRcNBxI+zHO4STENISHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JnvFzhDv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54TC1TEA003598
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 19:07:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CqWWxEjhd9byE+G7iHgmKGApOto/HY6xBgh2ceMrgG0=; b=JnvFzhDvNSVhh506
	DnLGaLR6MyrI55KfSidvRDKiORP+KT4yT5MP4qcb3EsAb7gZd4mfl9Uwz0NiS7ls
	CH5g3emwLWQEMkWC2+gKgzQL4hL4sJfC+VOnAouLtW4zp0p7QRAYKWmIKrd4/knp
	AWE3vmGydSWNj0Fg+nidjYv9QDMaKVTBuQUNBB+O3OfRjlNFwn+gpEn721ASk5Uc
	435TyvylKbWponiMGAAABWB9CQc2MEDme/KtJN/7Q6gLLvPCFF5U3ZTE6IkMiJBC
	9d2MP37ImIHvjjYTpq3a6Hw9vI7M1Zql4F+gJJQ+H78LN4ahKBHc1K4j8xUlbR02
	XmWBKw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549pmad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 19:07:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabbaa1937so3645826d6.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 12:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748545673; x=1749150473;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CqWWxEjhd9byE+G7iHgmKGApOto/HY6xBgh2ceMrgG0=;
        b=QXuQbVuAXQUtH1iekSKAL2wuUjePiZGZZ3WNSaJYdhTye1buzHP35KOriq9k8XRdFx
         1DVpqms4kraBpBIUXkLhHbifq109A/caeZ8uG1rsbS1hQH71O61FiVdII0JABZJY1DAR
         RK0L8kyRMwr70S7vQhI4koxKySFYS8M0BXMG/nEAqMarOpwhEV3q+Pai6Mi3tYzUHXXr
         o23t8huPM878HR5UXmvomPDvCQ+Xi65Z4xad76luM0D5+k8kE6zXAmmxZgNl2KPev61j
         2D49y+6u0lgVXCZ803dYkDVep11W48YdMlHgYUIH1zf1l3GDODKVS1D3zTNI29AznRWm
         U6/g==
X-Forwarded-Encrypted: i=1; AJvYcCUQ2OtCUIOkKeDuO7uIiHpxBvS8L02xu8UebqZjyUaNne3aSzd6u8Fe9R+UsgRUJFLZEh765CrvJeJ6@vger.kernel.org
X-Gm-Message-State: AOJu0YwfSuY1sM/h3YgoRZXh4VVY2nerMjeP5wfe3yg+7I945T0vdMUI
	zOJdbq0H1RIdXTeSzRQw1n9ZCzup6kK+S/auMQd4qKZApqN1fR15bqXTrMHBTc6eCl/mdxIKsxd
	g+zJ3XFiUqS/+O5S894D6t+5oJuTQgJhwsOHcZQri0Vf+ipn2GecFG6VpQH63hPeL
X-Gm-Gg: ASbGncs9wU4UKFS4JpS7m/fYOUvnAmbTzL2cWd7UAiRJIT+nL/qaLaRMte7usCU+rE2
	i2ixi8K4r1nELRCkUIDE1iZsVdHeCQjwS6pn9zB50O9Q09tKwadEvPfm61GIgiZdaejNz1DU+bC
	xCWslmJatk8mwY2ObMZWJwflY08km8MFV2Jzmz18/gCXiU+6IX0ARPdvW3p68ysyHGswbV0Nm/z
	zz+PuIHJdJSUagygtMl7rmF4s91WFWMSEO9YDWC8SxSHfTFZ40UblnokXhVtPORnmOhe7/8dP94
	euznAw+2LDaxUmF97WWt8ScZuNBlyW2R4rs97oeHBRCrVaM+xxlGsExsoQEFFR7yOw==
X-Received: by 2002:a05:620a:40c3:b0:7c3:e399:3289 with SMTP id af79cd13be357-7d0a1fab4c9mr34134485a.4.1748545673112;
        Thu, 29 May 2025 12:07:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+6fTbto8Ers/c4bHlYLggztbwikg2RvRjJ2GbWmBPA2RfY7pGoWtgPCowFqHPfhtiiq2N/g==
X-Received: by 2002:a05:620a:40c3:b0:7c3:e399:3289 with SMTP id af79cd13be357-7d0a1fab4c9mr34133385a.4.1748545672597;
        Thu, 29 May 2025 12:07:52 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada6ad3948csm186704066b.128.2025.05.29.12.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 12:07:52 -0700 (PDT)
Message-ID: <4f7168d9-8d8e-4fdf-8917-47c1cc71cf82@oss.qualcomm.com>
Date: Thu, 29 May 2025 21:07:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] soc: qcom: qcom_stats: Add QMP support for syncing
 ddr stats
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250528-ddr_stats_-v4-0-b4b7dae072dc@oss.qualcomm.com>
 <20250528-ddr_stats_-v4-2-b4b7dae072dc@oss.qualcomm.com>
 <6ldwvqqhk4lndesk7oac4ly2vhdxyd57f5hhijvutik5gm2czu@vmkasgeg2tmm>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6ldwvqqhk4lndesk7oac4ly2vhdxyd57f5hhijvutik5gm2czu@vmkasgeg2tmm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: o9ZSUqbfuZ4oLUCd1Q54W8aKnm07nzc-
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=6838b08b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=o6kQi37HjthQItwaaD8A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDE4NiBTYWx0ZWRfX+WcOiiiwrENG
 pxwJRrNdtV3S8K6lgbbQS1JpAlgogCHB96NaSxJnItk1cysuUCH0vhGx2v3kBzy2sLu3cLoYFAB
 fxmUWOV35St7ijpRItoPtxYuSGthLJjxKkWRs2CSHkUeSmJrqDOf2zsdC8BFfEyXhKYyOnqEAvs
 mZ9VgdlW3yfZYRtXwEwJC+O3hSfpDnozVEVlI2bTccb2COnRZRhFr12h2huna1absrlhmF+3ydZ
 XX5XGxpzK2w6S/vnLnFXr11KdQYGT0D4jcesUkatSqv9zz/K3hSm3a0nY+3caWRCTj1JoPiC40V
 uQuCVB61PoaqSU9bT+PpvjklWO0bOKfEzlylfkyNC6r2IrGVJuTWbVxnRD0qUMev6YKzUJ9CiAY
 OYHTGRHklkeSnRL75nh7MqF92kNUvdlhiFVv42/aNWarS4s3beMgVn70WYynm4/wOJBJEZdb
X-Proofpoint-ORIG-GUID: o9ZSUqbfuZ4oLUCd1Q54W8aKnm07nzc-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_08,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290186

On 5/28/25 1:02 PM, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 02:51:32PM +0530, Maulik Shah wrote:
>> Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
>> ddr stats. The duration field of ddr stats will get populated only if QMP
>> command is sent.
>>
>> Add support to send ddr stats freqsync QMP command.
>>
>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
>> ---
>>  drivers/soc/qcom/qcom_stats.c | 34 +++++++++++++++++++++++++++++++++-
>>  1 file changed, 33 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
>> index 33fd2a1574464768bd07289e743fbb79ba415e84..0545c8cbefb8f18758d4eb51638e4ecb94e05422 100644
>> --- a/drivers/soc/qcom/qcom_stats.c
>> +++ b/drivers/soc/qcom/qcom_stats.c
>> @@ -13,6 +13,7 @@
>>  #include <linux/platform_device.h>
>>  #include <linux/seq_file.h>
>>  
>> +#include <linux/soc/qcom/qcom_aoss.h>
>>  #include <linux/soc/qcom/smem.h>
>>  #include <clocksource/arm_arch_timer.h>
>>  
>> @@ -37,6 +38,8 @@
>>  #define DDR_STATS_TYPE(data)		FIELD_GET(GENMASK(15, 8), data)
>>  #define DDR_STATS_FREQ(data)		FIELD_GET(GENMASK(31, 16), data)
>>  
>> +static struct qmp *qcom_stats_qmp;
>> +
>>  struct subsystem_data {
>>  	const char *name;
>>  	u32 smem_item;
>> @@ -188,12 +191,28 @@ static int qcom_ddr_stats_show(struct seq_file *s, void *d)
>>  	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
>>  	void __iomem *reg = (void __iomem *)s->private;
>>  	u32 entry_count;
>> -	int i;
>> +	int i, ret;
>>  
>>  	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
>>  	if (entry_count > DDR_STATS_MAX_NUM_MODES)
>>  		return -EINVAL;
>>  
>> +	if (qcom_stats_qmp) {
>> +		/*
>> +		 * Recent SoCs (SM8450 onwards) do not have duration field
>> +		 * populated from boot up onwards for both DDR LPM Stats
>> +		 * and DDR Frequency Stats.
>> +		 *
>> +		 * Send QMP message to Always on processor which will
>> +		 * populate duration field into MSG RAM area.
>> +		 *
>> +		 * Sent every time to read latest data.
>> +		 */
>> +		ret = qmp_send(qcom_stats_qmp, "{class: ddr, action: freqsync}");
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>  	reg += DDR_STATS_ENTRY_START_ADDR;
>>  	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
>>  
>> @@ -304,6 +323,19 @@ static int qcom_stats_probe(struct platform_device *pdev)
>>  
>>  	for (i = 0; i < config->num_records; i++)
>>  		d[i].appended_stats_avail = config->appended_stats_avail;
>> +	/*
>> +	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
>> +	 * The prior SoCs do not need QMP handle as the required stats are already present
>> +	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
>> +	 */
>> +	qcom_stats_qmp = qmp_get(&pdev->dev);
>> +	if (IS_ERR(qcom_stats_qmp)) {
>> +		if (PTR_ERR(qcom_stats_qmp) == -EPROBE_DEFER)
>> +			return -EPROBE_DEFER;
>> +
>> +		/* We assume any other error means it's not defined/needed */
>> +		qcom_stats_qmp = NULL;
> 
> I still think that we shouldn't be ignoring actual errors here. I'd say,
> check for of_property_present(dev->of_node, "qcom,qmp") before.

/**
 * qmp_get() - get a qmp handle from a device
 * @dev: client device pointer
 *
 * Return: handle to qmp device on success, ERR_PTR() on failure
 */
struct qmp *qmp_get(struct device *dev)
{
        struct platform_device *pdev;
        struct device_node *np;
        struct qmp *qmp;

        if (!dev || !dev->of_node)
                return ERR_PTR(-EINVAL);

        np = of_parse_phandle(dev->of_node, "qcom,qmp", 0);
        if (!np)
                return ERR_PTR(-ENODEV);

        pdev = of_find_device_by_node(np);
        of_node_put(np);
        if (!pdev)
                return ERR_PTR(-EINVAL);

        qmp = platform_get_drvdata(pdev);

        if (!qmp) {
                put_device(&pdev->dev);
                return ERR_PTR(-EPROBE_DEFER);
        }
        return qmp;
}
EXPORT_SYMBOL_GPL(qmp_get);


Konrad

