Return-Path: <devicetree+bounces-11155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1FD7D48AC
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:36:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A73FD1C20B3D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE1CDCA4D;
	Tue, 24 Oct 2023 07:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="SUX8FoaY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B3E7486
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:36:29 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73CDD90;
	Tue, 24 Oct 2023 00:36:28 -0700 (PDT)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39O6aOqH016838;
	Tue, 24 Oct 2023 07:36:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=3TkzCPFwvwoSNH8d3uYV7Kg+w3JutoBRVLLZtxyqVQI=;
 b=SUX8FoaYBNpSnIBv/oSZ9ZIwziaPLcxmomaxKJPBojX1qP5ld6+LLPDWsAgJ8pAf6fCh
 W4x6yvJYtqvVNVvpMUjsdWT5reE+kq5dW9uFp8fAF2Xrnd8zZidlJZ/+6dZOqFem6xja
 VPR6snGJkh1H4lJpbPCcmhWYUixoGugYmiy/U9z8I24AyXkRiybaX2ZHycVAfEpwmEK+
 0qBrYGtwSxwujcW6XFR1mj5FtnOtlbkFvhUZKMvnJI7mnxoqih7ehdjasdUYSQG8/lSo
 uYb4UVk3lvqCzzcMzL5JPkp6l9+kXzAbPa0itjgfEu33RW38xIYydA4FzG4TlMqssdV7 vw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tx4tv0heg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 07:36:23 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39O7aMp4011420
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 07:36:22 GMT
Received: from [10.239.132.245] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 24 Oct
 2023 00:36:17 -0700
Message-ID: <5a1f42bc-f4ae-4691-07f5-76d80f6fb3ff@quicinc.com>
Date: Tue, 24 Oct 2023 15:36:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 3/5] soc: qcom: memory_dump: Add memory dump driver
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-4-git-send-email-quic_zhenhuah@quicinc.com>
 <1e9605c6-0afb-4613-927f-c07227334f51@linaro.org>
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
In-Reply-To: <1e9605c6-0afb-4613-927f-c07227334f51@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: IP1xqR9qHHmf0WRJ5IOY2okQ3vzygGCg
X-Proofpoint-ORIG-GUID: IP1xqR9qHHmf0WRJ5IOY2okQ3vzygGCg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-24_06,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 spamscore=0 priorityscore=1501 mlxlogscore=876 adultscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310240063

Thanks Konrad.

On 2023/10/23 21:56, Konrad Dybcio wrote:
> On 23.10.2023 11:20, Zhenhua Huang wrote:
>> Qualcomm memory dump driver initializes system memory dump table.
>> Firmware dumps system cache, internal memory, peripheral registers
>> to DDR as per this table after system crashes and warm resets. The
>> driver reserves memory, populates ids and sizes for firmware dumping
>> according to the configuration.
>>
>> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
>> ---
> [...]
> 
> 
>> +#define MAX_NUM_ENTRIES		0x150
> The number of entries makes more sense as a dec number

Done

> 
>> +#define QCOM_DUMP_MAKE_VERSION(major, minor)	(((major) << 20) | (minor))
>> +#define QCOM_DUMP_TABLE_VERSION		QCOM_DUMP_MAKE_VERSION(2, 0)
> I feel like doing this:
> 
> #define QCOM_DUMP_TABLE_VERSION(major, minor)	((major << 20) | (minor))
> 
> ...
> 
> someval = QCOM_DUMP_TABLE_VERSION(2, 0)
> 
> would make more sense, since v2.0 seems to be the only supported target..
> 

Done

> [...]
> 
>> +			if (phys_addr > phys_end_addr) {
>> +				dev_err_probe(dev, -ENOMEM, "Exceeding allocated region\n");
>> +				return -ENOMEM;
>> +			}
>> +		} else {
>> +			continue;
> You can check for the inverse and bail out early, saving yourself
> a lot of tabs

Good suggestion. Thanks.

> 
> [...]
> 
>> +MODULE_DESCRIPTION("Memory Dump Driver");
> Missing some mention of it being QC specific

Add Qualcomm tag. Thanks.

> 
> Konrad

