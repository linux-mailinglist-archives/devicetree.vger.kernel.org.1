Return-Path: <devicetree+bounces-11246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 896087D4E65
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB0071C20B05
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A6E4250F4;
	Tue, 24 Oct 2023 10:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lBNkjWJe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7322510D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 10:57:30 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8C1810C8;
	Tue, 24 Oct 2023 03:57:29 -0700 (PDT)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39OAclG3005207;
	Tue, 24 Oct 2023 10:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=wjKCaHK5gmxgZ3eDTKvPeTS/oEAxXy4wT1s9zV6Jv0U=;
 b=lBNkjWJeBR/J6AjH5s+vZVJgbGlQgL6qq2CqssJQoCROzS28PR+KSmjKSpKOFeus9O50
 8iaX9OWQONP2en02m8U7nMMMFKGKnMjFvkVE0UJD1w3pOlMsS0Ht4hKqPeG273c2Ce5A
 Ne18l6UI7vf6WHB9GIVitYaiu57BZSdVKJ4C3eW6ub+QZHn6Qm31lJAhE7zOLkHrDLFR
 HZtEOfekC227jpbDHKfRVcQngPZhea4FeuAsq/GdoxbpF/Rf1Mx6jUMqwCGsQqBZQtfx
 IPYpH+B30Pd1Jj94sbpMXLDZEA2mBobHKch3xtWDuY+xlx/58pjipjhT/IINSkDr9Dfs 7w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tx4tv0uhc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 10:57:21 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39OAvKrU027794
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 10:57:20 GMT
Received: from [10.239.132.245] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 24 Oct
 2023 03:57:15 -0700
Message-ID: <45b115e2-9e44-266c-e2ec-751392ce1c21@quicinc.com>
Date: Tue, 24 Oct 2023 18:57:13 +0800
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
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-4-git-send-email-quic_zhenhuah@quicinc.com>
 <5bac8188-7d27-4efe-9493-dec4393fbeb0@linaro.org>
 <b455d4f7-0347-ac07-6d41-32b3f06c4f0a@quicinc.com>
 <454c4267-6bb7-456e-8dc1-cba83ffd1641@linaro.org>
 <1a5b2381-8987-2f92-d018-29fdbc23b826@quicinc.com>
 <2c8cc463-84dd-4f28-812d-f5eea922daef@linaro.org>
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
In-Reply-To: <2c8cc463-84dd-4f28-812d-f5eea922daef@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: RnnQvTVUV9-yVAE4cdQxZAzqXyd_S6Ua
X-Proofpoint-ORIG-GUID: RnnQvTVUV9-yVAE4cdQxZAzqXyd_S6Ua
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-24_10,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 spamscore=0 priorityscore=1501 mlxlogscore=324 adultscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310240092



On 2023/10/23 20:53, Krzysztof Kozlowski wrote:
>> It's not same as below case. Allocation is successful here, while the
>> driver used more than allocated size.
> $ man errno
> ENOMEM means: Not enough space/cannot allocate memory

I think "Not enough space" should be applicable here?

Thanks,
Zhenhua

