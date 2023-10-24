Return-Path: <devicetree+bounces-11332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7892A7D53E8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:25:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EE75281A4D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B3F2C870;
	Tue, 24 Oct 2023 14:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="A8algEI6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E052C85D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:25:13 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6734110C8;
	Tue, 24 Oct 2023 07:25:11 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39ODrxKR001519;
	Tue, 24 Oct 2023 14:25:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=3jI3kYo6MSjoZXwrxGZSSAnW85dfc/1b0/rMXhFki8s=;
 b=A8algEI68zxhUwb0GIR3ZUn62JOoMI5rg7yQ/HesbTjMA3pvobslekfU6V5pPTJtl1rG
 X0EMzTw/HtH7QtIrYkyaK5JNe/xBGXi/P3p2XYCAr/amiNMlrxCYWmnRX2OQW8H9QA1V
 03VqoKEiOYhV4aE/mv04QhLJjLZ+QMxJHWgDqFHVyr5IN++hhyKWlsLx539wDHP/rJxL
 RcUev3AvLyDTvDzFOQKuCDPA7R/L5IJZ1bmFZDi3GKKjEEsNGbs69Weuac1E6j5Jngt3
 i8yKV9ra/POlQVP78vTI8ibAqYJWEC+I2MlvFHIj3CyAHN4HJgfN1TkHdaBbtj/1/Shb Vw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3twtxwtnra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 14:25:08 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39OEP7Qq030556
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 14:25:07 GMT
Received: from [10.48.243.236] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 24 Oct
 2023 07:25:04 -0700
Message-ID: <fc0bbd15-209e-412d-a132-6aac2e871c71@quicinc.com>
Date: Tue, 24 Oct 2023 07:25:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/5] soc/arm64: qcom: add initial version of memory
 dump
Content-Language: en-US
To: Zhenhua Huang <quic_zhenhuah@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <757382c1-142b-454c-b2b5-7ec97bd7328d@linaro.org>
 <ac42f27e-007d-1157-ae46-403420d9fdcb@quicinc.com>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <ac42f27e-007d-1157-ae46-403420d9fdcb@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: auGaGknsxaKm8eBOzPJWInTVbC7XxVvJ
X-Proofpoint-GUID: auGaGknsxaKm8eBOzPJWInTVbC7XxVvJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-24_14,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1011 phishscore=0 adultscore=0 spamscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 mlxlogscore=622 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310240124

On 10/24/2023 3:10 AM, Zhenhua Huang wrote:
> 
> 
> On 2023/10/23 21:50, Konrad Dybcio wrote:
>> On 23.10.2023 11:20, Zhenhua Huang wrote:
>>> Qualcomm memory dump driver is to cooperate with firmware, providing the
>> Firmware == The hypervisor? The TZ? Some uncore chip?
> 
> It's part of bootloader which also needs to cooperate with TZ. After 
> system crash and warm reset, system enters debug mode which needs the 
> dump table.

When you re-spin can you be clear about for which firmware this is 
applicable? On a Qualcomm SoC there are multiple integrated peripherals 
with their own firmware, so it is important to clarify which ones can 
utilize this framework.

/jeff


