Return-Path: <devicetree+bounces-10886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE0C7D34EE
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB1E728143C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F123315EA9;
	Mon, 23 Oct 2023 11:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="JqOesyuM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9194216405
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 11:44:01 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0F5D1715;
	Mon, 23 Oct 2023 04:43:53 -0700 (PDT)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39NArQdk028226;
	Mon, 23 Oct 2023 11:43:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=BFBsXqpTPC7PYtElIcdoek5rj2BCE48uFUhmf1evqIA=;
 b=JqOesyuMeDyQ4fH87BMMUivbwueOFkOZGSiVOfgKxxUsmSopeKiv0o1wGclebk2Z661u
 ishV8ZGOrbIz0Pvwdsz3Evatny59iejzM5AiTMk6KFm39r9avimxj8ztFF6wrSwdDajh
 BEe/6b1reRF40PFYu4XMYIwp6+Ove7kglR9U1QqmgOGb8icj1n27Se89I0rG5qKOww8a
 5D6G8r2wEO6O4E17TFL/ZovMgp+SriUagLCB3PmrdxQfWqAQQW7xOEgsvqEOqPuQU48Q
 aULZf+z2puVr1jZR3TTWyIaaASTaaMwFHGNp51Sf9/doUR7xlivoUuRgCe4l/+eDrG14 xw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tv5yr3w0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 11:43:49 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39NBhmWR023512
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 11:43:48 GMT
Received: from [10.239.132.245] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 23 Oct
 2023 04:43:43 -0700
Message-ID: <ca27f6a2-b681-8ad2-9df2-71c5a2742484@quicinc.com>
Date: Mon, 23 Oct 2023 19:43:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 4/5] arm64: defconfig: enable Qcom Memory Dump driver
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-5-git-send-email-quic_zhenhuah@quicinc.com>
 <f3d3a532-bb01-4ed7-be0a-ec021095964a@linaro.org>
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
In-Reply-To: <f3d3a532-bb01-4ed7-be0a-ec021095964a@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Z1U6dX4ZL7Yc72_cDdJDVqVUrXeHEOI4
X-Proofpoint-GUID: Z1U6dX4ZL7Yc72_cDdJDVqVUrXeHEOI4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_09,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=11 mlxscore=11 malwarescore=0
 clxscore=1011 suspectscore=0 bulkscore=0 adultscore=0 mlxlogscore=93
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=11
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310230101



On 2023/10/23 17:32, Krzysztof Kozlowski wrote:
> On 23/10/2023 11:20, Zhenhua Huang wrote:
>> Enable Qcom Memory Dump driver to allow storing debugging
> 
> s/Qcom/Qualcomm/

Thanks.

> 
>> information after crash by firmware, including cache
>> contents, internal memory, registers.
> 
> Which boards and SoCs need it? This is a defconfig for all platforms,
> not for Qualcomm only.

Currently I'm enabling it for sm8250, further will enable for other 
targets. Yes, it's a defconfig for all platforms, do you mean I can 
enable it other defconfig file, or?

> 
>>
> 
> 
> Best regards,
> Krzysztof
> 

Thanks,
Zhenhua

