Return-Path: <devicetree+bounces-7514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0DA7C494B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6147E1C20C03
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 05:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D835D30E;
	Wed, 11 Oct 2023 05:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="NaDDWMc3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA396847D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:40:43 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276B698;
	Tue, 10 Oct 2023 22:40:42 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B3BXqj003446;
	Wed, 11 Oct 2023 05:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=nss9gpufClIrS/DhhbQnnEbqgQIYyDsSOz6GGJ8lyRw=;
 b=NaDDWMc3IhzDGmr2H7/eK4I0VqXYWkdAW5wYFV0ILcodUE466tvsKrSH25InIFVBB6Fp
 /kvGNKpKnw1uKgzEqdyQrnPoTB+mZ/vmvj7YzFicjuNKBLtlDX+lRqxg/KeqRvVMXtXV
 rb5kCvwyboPJrLf9IQdlxiBkxIhd2YJEF4xxJuT0eaaukcvzsYaevJv3X8cAzDtRsAd2
 nESyFqan4iD6eG5drGq9t0bkYKf12MNck9kJECKPcBQ8e9D2YvcykurHTHvE1LXxdAb+
 AkNBuKN46vyJoS1phtwJP4K/HCwAffYMelhqaua5GFYd4HKBLrltvrx9goxjAC4ztOq8 yQ== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tne0q0qxp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 05:40:33 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39B5eWYG005207
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 05:40:32 GMT
Received: from [10.214.66.81] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 10 Oct
 2023 22:40:28 -0700
Message-ID: <3fd31aaa-f6bf-8440-6b08-fca2803171d9@quicinc.com>
Date: Wed, 11 Oct 2023 11:10:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm6490: Add qcm6490 dts file
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Komal Bajaj
	<quic_kbajaj@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <luca.weiss@fairphone.com>
References: <20231003175456.14774-1-quic_kbajaj@quicinc.com>
 <20231003175456.14774-3-quic_kbajaj@quicinc.com>
 <5da2ba4f-5bf7-46ff-8204-0c169042dbfa@linaro.org>
From: Mukesh Ojha <quic_mojha@quicinc.com>
In-Reply-To: <5da2ba4f-5bf7-46ff-8204-0c169042dbfa@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: J-ZS4t0giwB-D8qk47t-PQ2LDwTMfN_4
X-Proofpoint-ORIG-GUID: J-ZS4t0giwB-D8qk47t-PQ2LDwTMfN_4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_03,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 spamscore=0 mlxscore=0 clxscore=1011 priorityscore=1501 phishscore=0
 adultscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110050
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/7/2023 5:02 AM, Konrad Dybcio wrote:
> On 3.10.2023 19:54, Komal Bajaj wrote:
>> Add qcm6490 devicetree file for QCM6490 SoC and QCM6490 IDP
>> platform. QCM6490 is derived from SC7280 meant for various
>> form factor including IoT.
>>
>> Supported features are, as of now:
>> * Debug UART
>> * eMMC
>> * USB
>>
>> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
>> ---
> [...]
> 
>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490.dtsi b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>> new file mode 100644
>> index 000000000000..b93270cae9ae
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/qcm6490.dtsi
>> @@ -0,0 +1,94 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
>> + */
>> +
>> +#include "sc7280.dtsi"
>> +
>> +/*
>> + * Delete unused sc7280 memory nodes and define the memory regions
>> + * required by qcm6490
>> + */
>> +/delete-node/ &rmtfs_mem;
>> +/delete-node/ &wlan_ce_mem;
>> +
>> +/{
>> +	reserved-memory {
>> +		cdsp_secure_heap_mem: cdsp-secure-heap@81800000 {
>> +			reg = <0x0 0x81800000 0x0 0x1e00000>;
>> +			no-map;
>> +		};
>> +
>> +		camera_mem: camera@84300000 {
> Uhh.. this is totally not the same memory map that I have on a
> random msm-5.4 source+devicetree drop (which does in turn align
> with the one on QCM6490 Fairphone 5, as it should because it's
> a rebadged reference device for the most part)..
> 
> Did you guys *really* redo it between software releases?

QCM6490 fairphone is special case where same SOC is used for mobile
product and it uses sc7280 memory map.

Current patch adds support for the same SOC marketed for IOT segment
[1] and very active in the development and soon going to freeze its
memory map, so we are deriving memory map from sc7280 and creating
a new memory map for all IOT product with qcm6490.dtsi .

[1]
https://www.qualcomm.com/products/internet-of-things/industrial/building-enterprise/qcm6490

> 
> This SoC family has been on the market for quite some time,
> breaking software expectations like that is not cool, especially
> on a product with a promised lifespan of 10 years or whatever!

I agree, but we are not changing anything for product which are there
in the market instead defining a new memory map what is going to come
with qcm6490.dtsi for IOT. Sorry, the other qcm6490 soc with
fairphone(for mobile) can get confuse with qcm6490.dtsi but that
is special case and i hope, that should be fine but, let me know if
there is concern.
> 
> With that, this really seems more of a change that would belong
> in the IDP dts than the 6490-common one..


We wanted to keep it in qcm6490.dtsi as there are some more product
going to share this in future.

-Mukesh

> 
> Konrad

