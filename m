Return-Path: <devicetree+bounces-10269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC227D08BA
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:46:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B726282280
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 06:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51920B653;
	Fri, 20 Oct 2023 06:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Gy9D9VWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C5EC8C4
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 06:46:26 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2671598;
	Thu, 19 Oct 2023 23:46:25 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39K5OJtP024300;
	Fri, 20 Oct 2023 06:46:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : from : subject : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ehATourjSW2RB4zjc0CeHK506bFDAo3dFHe2K8h+9Es=;
 b=Gy9D9VWZeeLWc3gH97WqhufNxf0jfHgwYr4O+WuLGkM8ShWMXa248CPOgRsdjuNZAhpS
 o8T0ZGj5/gvinCTU/aQABT+btCbMF0PKkRnJydawG3S+s2xRnhzK744PQxS1Vq7Jtggt
 0Uf50ttJ/JQ6cmNfEwvfe5YYENlqLJJNp3BBQFNe63G+LsKZx5gplTK6X1E/3aayq4/k
 mEOfYl0EAmiO941D8hZaTuh7JDl7KZA6wcJS0oBi5upaXOkS+dqh9sbQw5yR9/IKM66y
 cbOWCWiti0dz+yAQUDCMq24LLiWueSKFvrJhDEXM4WSjiE9q8KNJDhUzYk9pT9UxU1ab EQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tubwkh1sg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 06:46:05 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39K6k43X006291
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 06:46:04 GMT
Received: from [10.216.18.86] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Thu, 19 Oct
 2023 23:45:57 -0700
Message-ID: <3bc7ed02-709a-4216-b077-82082f6729e5@quicinc.com>
Date: Fri, 20 Oct 2023 12:15:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Maramaina Naresh <quic_mnaresh@quicinc.com>
Subject: Re: [PATCH V1 0/4] Add per-cpu PM QoS support for QCOM UFS
To: Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "Rob
 Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen"
	<martin.petersen@oracle.com>
CC: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_cang@quicinc.com>, <quic_nguyenb@quicinc.com>
References: <1696952947-18062-1-git-send-email-quic_mnaresh@quicinc.com>
 <23c91551-9d94-4ec6-85eb-be1e2af20dc7@acm.org>
Content-Language: en-US
In-Reply-To: <23c91551-9d94-4ec6-85eb-be1e2af20dc7@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UmNAVeBex0NdLO1uq4C4oY4VBxeS1BvJ
X-Proofpoint-ORIG-GUID: UmNAVeBex0NdLO1uq4C4oY4VBxeS1BvJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_05,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 adultscore=0 mlxlogscore=868 impostorscore=0 mlxscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310200057

Hi Bart,

Thank you for reviewing the patch.  This is not specific to the Qualcomm 
driver.

We will move this feature to core UFS.

Thanks,

Naresh.

On 10/12/2023 2:26 AM, Bart Van Assche wrote:
> On 10/10/23 08:49, Maramaina Naresh wrote:
>> Add per-cpu PM QoS support for ufs. This improves random io performance
>> by 20% for ufs.
>
> What in this patch series (other than the DT-bindings) is specific to
> the Qualcomm driver? If the answer is not much: please move this
> functionality into the UFS driver core.
>
> Thanks,
>
> Bart.
>

