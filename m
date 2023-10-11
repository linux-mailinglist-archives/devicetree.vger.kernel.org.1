Return-Path: <devicetree+bounces-7739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 849887C543A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B52F11C20C0F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B925013AC4;
	Wed, 11 Oct 2023 12:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="DBxhL3cb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDF5F4E5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:43:14 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7F888F;
	Wed, 11 Oct 2023 05:43:10 -0700 (PDT)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B8MSC2016824;
	Wed, 11 Oct 2023 12:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=acx6hk7Jo0khXp2YwEVfvLXqnhVpfglq/OyDMm2N7i4=;
 b=DBxhL3cbmXgWWJlTsBviBdnYBDvbtmKe+0HCFtLy91cs6+WncyrhrXgDMYfGn2bSJGrx
 qesqGNuinN8nS+qJDytcEXp2p+i8MYOhROYhKYnaWEz4D2H/3NPU+EjHEGOInsr/7bgs
 mbMDH0q9sdiZbxsKgS7xwdH/95ik98AP/btLly8pMizfcIPSFCZpglQFJqZTsImv0KB4
 mqb6JWAbAvWF/5J8bzW8Df6V0x0yJO5ZXuR15YFg7meHH6fgqgf8jdbZfwIkdXzJxxk2
 cmtF+VriC+bpSwB3+2+XGDCue9cC924RrYEaSTevutW3QG/ynTpzpySMw+NvE3uN+S6H 0A== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tn3s1b76t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 12:43:01 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39BCh0VZ024840
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 12:43:00 GMT
Received: from [10.253.39.162] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Wed, 11 Oct
 2023 05:42:56 -0700
Message-ID: <e0493132-cde2-cd84-3a79-94d036cd0311@quicinc.com>
Date: Wed, 11 Oct 2023 20:42:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v9 4/4] clk: qcom: add clock controller driver for
 qca8386/qca8084
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, <andersson@kernel.org>,
        <agross@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>
CC: <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_srichara@quicinc.com>
References: <20230923112105.18102-1-quic_luoj@quicinc.com>
 <20230923112105.18102-5-quic_luoj@quicinc.com>
 <10bcb0cc-19db-4914-bbc4-ef79c238a70d@linaro.org>
 <49c8a8ff-bdb9-a523-9587-d2a46d401e41@quicinc.com>
 <fc35b4e4-a1ef-4200-a7d4-1f8ea3afa5c9@linaro.org>
From: Jie Luo <quic_luoj@quicinc.com>
In-Reply-To: <fc35b4e4-a1ef-4200-a7d4-1f8ea3afa5c9@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: BGob7W29__jVcKicM_trKeSrYhfpOBqA
X-Proofpoint-GUID: BGob7W29__jVcKicM_trKeSrYhfpOBqA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 mlxlogscore=559 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110111
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/2023 7:33 PM, Bryan O'Donoghue wrote:
> On 11/10/2023 12:26, Jie Luo wrote:
>>>
>>> 0004-clk-qcom-add-clock-controller-driver-for-qca8386-qca.patch has 
>>> style problems, please review.
>>
>> Thanks Bryan for the review. The code line mentioned by CHECK is more 
>> than 100 columns, so i separate the lines.
> 
> Yep. Remember to align the indentation as much as possible/reasonable. 
> Use your discretion.
> 
> ---
> bod

Thanks Bod, i will update the patch for fixing this CHECK print.

