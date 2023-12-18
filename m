Return-Path: <devicetree+bounces-26549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E5C816DCC
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DCBC1F218D0
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286F549F6F;
	Mon, 18 Dec 2023 12:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="GrRmicxq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6E59200A7;
	Mon, 18 Dec 2023 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BIAsB4e027739;
	Mon, 18 Dec 2023 12:18:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=ehaUjXs4CdaBiJvv1AkLYb5dA59kogKiyU+o1F2szjg=; b=Gr
	Rmicxqgr+1gdRhuOwCiBxynYs4xLOsoSKBE7Wy0tRSFWY+gHUq5g31paXNtMSChT
	623TP9tAdQwdk1ACkLiBsvCnQCLn9nJ4OZKjrdwxtODdhvKKYQ2OSn0GOFHDgxf9
	rkmHBB+Xnu2IMlvCGxy65J7iKp//59TUUykdgzkmGmyQC8uyXLCgE5/VQdw1P5X2
	5lBUMzQnmxdDtJsdy5yzgaOmSDKCWrqjhtiaSpkdM932Fs24MY46CCMEihS/sJc0
	psghry94rbTnaIgcww4aqVIind7oysX/Jhxm1Wxjz/0QunZLGJHZzuHtejdkQ8dq
	aETvTiu3uS3fdldhmiOQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3v2mjfr69e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Dec 2023 12:18:10 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BICHrxs028840
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Dec 2023 12:17:54 GMT
Received: from [10.239.133.49] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 18 Dec
 2023 04:17:49 -0800
Message-ID: <8051b5ab-4f7f-4a8c-9c4f-fe1f46bb1951@quicinc.com>
Date: Mon, 18 Dec 2023 20:17:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] dt-bindings: arm: Add support for TPDM CMB MSR
 register
Content-Language: en-US
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Tingwei Zhang
	<quic_tingweiz@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Tao Zhang <quic_taozha@quicinc.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Alexander Shishkin
	<alexander.shishkin@linux.intel.com>,
        Konrad Dybcio <konradybcio@gmail.com>,
        Mike Leach <mike.leach@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Leo Yan <leo.yan@linaro.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <coresight@lists.linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Song Chai <quic_songchai@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <andersson@kernel.org>
References: <1700533494-19276-1-git-send-email-quic_taozha@quicinc.com>
 <1700533494-19276-8-git-send-email-quic_taozha@quicinc.com>
 <e5fbbfab-02bf-4eda-8353-87c54c307af1@linaro.org>
 <1d57590d-2ecf-4bf6-9c8f-2a9d1ba08aaa@arm.com>
 <caa424d3-7af0-43e6-8e13-e87cde0c4f67@quicinc.com>
 <ca624e71-c487-4004-abc4-126442b92f33@arm.com>
From: Jinlong Mao <quic_jinlmao@quicinc.com>
In-Reply-To: <ca624e71-c487-4004-abc4-126442b92f33@arm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: P_gCS0pT-rVTt7gzYRB-h3WuLpIIlvE6
X-Proofpoint-ORIG-GUID: P_gCS0pT-rVTt7gzYRB-h3WuLpIIlvE6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1011 malwarescore=0 mlxscore=0 mlxlogscore=790 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312180089



On 12/18/2023 7:56 PM, Suzuki K Poulose wrote:
> Hi Tingwei Zhang
> 
> On 18/12/2023 11:23, Tingwei Zhang wrote:
>> On 12/18/2023 6:47 PM, Suzuki K Poulose wrote:
>>> Tao Zhang,
>>>
>>> On 21/11/2023 07:24, Krzysztof Kozlowski wrote:
>>>> On 21/11/2023 03:24, Tao Zhang wrote:
>>>>> Add property "qcom,cmb_msr_num" to support CMB MSR(mux select 
>>>>> register)
>>>>> for TPDM. It specifies the number of CMB MSR registers supported by
>>>>> the TDPM.
>>>>>
>>>>> Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
>>>>> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
>>>>> ---
>>>>
>>>> I prefer not to take any new Qualcomm Coresight bindings or Qualcomm 
>>>> SoC
>>>> DTS nodes with Coresight till we fix all existing warnings. I don't 
>>>> know
>>>> how to fix them, so I need help with them. No such fixing happened so
>>>> far from Qcom, so pushback is my only way to get any attention.
>>>>
>>>> I already commented on this in other email thread.
>>>
>>> Are you addressing this ?
>> The DT warning is fixed in 
>> https://lore.kernel.org/linux-arm-msm/20231210072633.4243-1-quic_jinlmao@quicinc.com/.
>> It's applied to linux-arm-msm yesterday.
> 
> How are you supporting remote-etm ? We haven't merged the support for it 
> in drivers ? We haven't even reviewed the remote-etm support patches ? 
> Why weren't the coresight maintainers Cc ed on the "new" binding support ?
> 
> Suzuki
> 
> 
Hi Suzuki,

Sorry for missing coresight maintainers in the remote-etm binding patch.
 From the comments, we can add binding for the connected hardware first.

https://lkml.org/lkml/2023/11/30/539

Thanks
Jinlong Mao

> 
>>>
>>> Suzuki
>>>
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>
> 

