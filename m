Return-Path: <devicetree+bounces-13382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5166D7DDE21
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38052B20E57
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 09:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F326FD0;
	Wed,  1 Nov 2023 09:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="pb+S8+C1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFB16AB2
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 09:07:23 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5636E102;
	Wed,  1 Nov 2023 02:07:16 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A11vm1Q006624;
	Wed, 1 Nov 2023 09:07:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=IOlBThydEMhGc7QoFRuOa4ssmZqQYyjeSpWiLRMWaiM=;
 b=pb+S8+C1C0ENS8wkTfcjzxWma+/yfLMhd+mytUpxMF7lzk1fLQBdVf98V07DCQbh7DFz
 a7vAHQTnBPiNqfLHbzYTJluLcl4XLI1x64134aYbMSuADkegLgQgO3NHOdkpoQhxCuWo
 bmHkN+2xO33ExB8Pfq36X8th1CT65BDeulPfNQ70TBm1SYmQ9uxSjA8+QHrlXEV6WOR/
 v3fB3WqlqtWCywjfF+iTdfLWt2XrCu92bXG5JBGQA3IjiiJDYTZ3oToFBWHuiA2rikEl
 gKkpb0S82ZhV8XkDH2+u5bp41WF/A38rO7fbAPvf3RZ1+P0gU/pLBjDCucPZHsKnRgaf YQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u34sc2mhc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Nov 2023 09:06:59 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A196vBK030531
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 1 Nov 2023 09:06:57 GMT
Received: from [10.239.133.211] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 1 Nov
 2023 02:06:53 -0700
Message-ID: <7389a1de-feed-4fe5-9aaf-75e3f11bc1ec@quicinc.com>
Date: Wed, 1 Nov 2023 17:06:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] coresight-tpdm: Add support to configure CMB
To: James Clark <james.clark@arm.com>
CC: Jinlong Mao <quic_jinlmao@quicinc.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <coresight@lists.linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Trilok Soni
	<quic_tsoni@quicinc.com>,
        Song Chai <quic_songchai@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <andersson@kernel.org>, Mathieu Poirier
	<mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Konrad Dybcio
	<konradybcio@gmail.com>,
        Mike Leach <mike.leach@linaro.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <1698202408-14608-1-git-send-email-quic_taozha@quicinc.com>
 <1698202408-14608-5-git-send-email-quic_taozha@quicinc.com>
 <288bcd70-ee12-e4f7-2381-8d18e6fc0c1b@arm.com>
Content-Language: en-US
From: Tao Zhang <quic_taozha@quicinc.com>
In-Reply-To: <288bcd70-ee12-e4f7-2381-8d18e6fc0c1b@arm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: iCQJHJmpYoZrRR5KAkYUZp-fQELYwrrU
X-Proofpoint-GUID: iCQJHJmpYoZrRR5KAkYUZp-fQELYwrrU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_06,2023-10-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=502 bulkscore=0 phishscore=0 priorityscore=1501
 mlxscore=0 spamscore=0 clxscore=1015 adultscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311010076


On 10/30/2023 7:29 PM, James Clark wrote:
>
> On 25/10/2023 03:53, Tao Zhang wrote:
>> TPDM CMB subunits support two forms of CMB data set element creation:
>> continuous and trace-on-change collection mode. Continuous change
>> creates CMB data set elements on every CMBCLK edge. Trace-on-change
>> creates CMB data set elements only when a new data set element differs
>> in value from the previous element in a CMB data set. Set CMB_CR.MODE
>> to 0 for continuous CMB collection mode. Set CMB_CR.MODE to 1 for
>> trace-on-change CMB collection mode
>>
>> Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
>> Signed-off-by: Jinlong Mao <quic_jinlmao@quicinc.com>
>> ---
>>   .../ABI/testing/sysfs-bus-coresight-devices-tpdm   | 10 +++
>>   drivers/hwtracing/coresight/coresight-tpdm.c       | 71 ++++++++++++++++++++++
>>   drivers/hwtracing/coresight/coresight-tpdm.h       | 12 ++++
>>   3 files changed, 93 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
>> index f07218e..ace7231 100644
>> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
>> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
>> @@ -170,3 +170,13 @@ Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_t
>>   Description:
>>   		(RW) Set/Get the MSR(mux select register) for the DSB subunit
>>   		TPDM.
>> +
>> +What:		/sys/bus/coresight/devices/<tpdm-name>/cmb_mode
>> +Date:		March 2023
>> +KernelVersion	6.7
>> +Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
>> +Description:	(Write) Set the data collection mode of CMB tpdm.
> I know it's expanded elsewhere, but it's probably worth expanding the
> CMB abbreviation here as well so people reading the docs don't have to
> go into the code.

Sure, I will update in the next patch series.


Best,

Tao

>
> Otherwise:
>
> Reviewed-by: James Clark <james.clark@arm.com>
>
>> +
>> +		Accepts only one of the 2 values -  0 or 1.
>> +		0 : Continuous CMB collection mode.
>> +		1 : Trace-on-change CMB collection mode.
>> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
>> index c8bb388..efb376e 100644
>> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
>> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
>> @@ -148,6 +148,18 @@ static umode_t tpdm_dsb_is_visible(struct kobject *kobj,
>>   	return 0;
>>   }
> [...]

