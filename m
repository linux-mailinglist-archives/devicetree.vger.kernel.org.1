Return-Path: <devicetree+bounces-11235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E12867D4D5F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:11:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E4711C20865
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F3C250FA;
	Tue, 24 Oct 2023 10:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="jUogb4BX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA8F1FDF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 10:11:08 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6969F9;
	Tue, 24 Oct 2023 03:11:06 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39O8KD2u030309;
	Tue, 24 Oct 2023 10:11:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=YffooxULNv7b8kk2n2L8oG5mv+aN01WiO5p6mu3vx9w=;
 b=jUogb4BX3c4RGEd3Yjfsj3z2b1YuZnJPlwJZTk7u08L5jjrIuwVcMDVJzrn9BhmfrbJh
 4XKxkuqAcxg7UcwBdlVAqoJpMN7jNVScHJK/ZYaSo3PJTWzzvABecxJrhMfnhnifMbpf
 F7lkbbN7gudhFwiHJIXgXvvK0QZaOzrdU+5IW0epmw1GpNZfnzsQn99IaEv+oulpSqZK
 63siRJ2f+psYyD8A6CoFU5liPVIDGF/HLVHi/jNQiRQwMAj7uPnC1nJZoMaUWo5XbSqt
 Lt7Xm97HzMVdAoS2ohBRcXPkeDexoPr/phaKm4NC+3qgbQ6oJCjgtEeFM0PjzseUr7+4 rg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tx7r80h63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 10:11:03 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39OAB2NW012545
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 10:11:02 GMT
Received: from [10.239.132.245] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 24 Oct
 2023 03:10:57 -0700
Message-ID: <ac42f27e-007d-1157-ae46-403420d9fdcb@quicinc.com>
Date: Tue, 24 Oct 2023 18:10:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 0/5] soc/arm64: qcom: add initial version of memory
 dump
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <757382c1-142b-454c-b2b5-7ec97bd7328d@linaro.org>
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
In-Reply-To: <757382c1-142b-454c-b2b5-7ec97bd7328d@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Ci7jOvFrbEtjXvCsYpMVLQ1TMk__-oj8
X-Proofpoint-GUID: Ci7jOvFrbEtjXvCsYpMVLQ1TMk__-oj8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-24_09,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=747 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310240084



On 2023/10/23 21:50, Konrad Dybcio wrote:
> On 23.10.2023 11:20, Zhenhua Huang wrote:
>> Qualcomm memory dump driver is to cooperate with firmware, providing the
> Firmware == The hypervisor? The TZ? Some uncore chip?

It's part of bootloader which also needs to cooperate with TZ. After 
system crash and warm reset, system enters debug mode which needs the 
dump table.

> 
>> hints(id and size) of storing useful debugging information into pre-allocated
>> memory. Firmware then does the real data capture. The debugging information
>> includes cache contents, internal memory, registers.
> Exposing all of the user's data.. Is this enabled by default?

In theory it can be controlled by static bool download_mode = 
IS_ENABLED(CONFIG_QCOM_SCM_DOWNLOAD_MODE_DEFAULT); in driver qcom_scm.c.
But from my local test on RB5, it can always enter into download mode seems.

> 
>>
>> The driver dynamically reserves memory and provides the hints(dump id and size)
>> following specified protocols with firmware. After crash and warm reboot,
>> firmware scans these information and stores contents into reserved memory
>> accordingly. Firmware then enters into full dump mode which dumps whole DDR
>> to host through USB.
> Is that only something that works on engineering / prototype devices?
> 
>> User then get full dump using PCAT and can parse out these informations.
> Is PCAT open-source, or at least freely available?

I see it is introduced in doc of development-kit for RB5, but in another 
mail Caleb mentioned it's still needing to sign up... which I need to 
further investigate.

> 
>>
>> Dump id and size are provided by bootconfig. The expected format of a
>> bootconfig file is as follows:-
> Is it the same bootconfig that Google invented? Wasn't that just key=val?

Seems not same, the author is not from google :) it's kernel XBC(extra 
boot config): lib/bootconfig.c

> 
>> memory_dump_config {
>> 	<node name> {
>> 		id = <id of HW component>
>> 		size = <dump size of HW component>
>> 	}
>> }
>>
>> for example:
>> memory_dump_config {
>>          c0_context_dump {
>> 		id = 0
>> 		size = 0x800
>>          }
>> }
>>
>> Test based on 6.6-rc1.
> That's sorta ancient, especially since you're likely looking to get
> this merged in 6.8.. -next would probably be a better target.

Sure, Thanks. Will verify in -next.

> 
> Konrad

Thanks,
Zhenhua

