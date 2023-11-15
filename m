Return-Path: <devicetree+bounces-12835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B124C7DB7D4
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B4C8281347
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BED9610A3D;
	Mon, 30 Oct 2023 10:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="mUd6JAOV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEC2379
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:19:46 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A89361B4;
	Mon, 30 Oct 2023 03:19:38 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39U7LaqC011534;
	Mon, 30 Oct 2023 10:19:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Qwhg6QaANKJI9p6AtVTu2QzMj27rtudbTshH5jutdb8=;
 b=mUd6JAOVFV2nv/7ZHrl12YdX6hgCp/YA//iYM3iAWvWxcqycxr40CJmuX9azCtTT4I6G
 UtvbYO6KRsZcH8JbLSKUlj+/jUovqBDWOvQ+Soo4eRKeVufIsOftixERMWdtEKQNwwyw
 tkXWv6My/lZG/3M+0iiQG75CYnQMSRfAldP5pyb5/GPFOGPyUdCz2Nk/MuNuOfhmtumn
 WercNDx/4qjm4eERNCXdne7ThAuzc9z5O2CxLmKJOmI5xT2EGyS8w452Pqgm0pvnAp3a
 ox/0WjqP1lDvlskUHbY2RwZh1FpCnh5YZigOcaBFjVGr9CyDXDAdPfQHOOlgqWuj00ea Uw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u0ufykbwx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 10:19:30 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39UAJTaC029922
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 10:19:29 GMT
Received: from [10.216.34.48] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 30 Oct
 2023 03:19:21 -0700
Message-ID: <4ea52adf-9f64-7aa3-1d88-e90ce1d9ff4d@quicinc.com>
Date: Mon, 30 Oct 2023 15:49:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 1/4] dt-bindings: PCI: qcom-ep: Add support for SA8775P
 SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <konrad.dybcio@linaro.org>, <mani@kernel.org>
CC: <quic_shazhuss@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_ramkri@quicinc.com>, <quic_nayiluri@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <robh@kernel.org>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>,
        <quic_parass@quicinc.com>, <quic_schintav@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        <linux-pci@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <mhi@lists.linux.dev>
References: <1698413592-26523-1-git-send-email-quic_msarkar@quicinc.com>
 <1698413592-26523-2-git-send-email-quic_msarkar@quicinc.com>
 <45b8f4e1-b915-42f2-aa03-03cc9d1be9f7@linaro.org>
Content-Language: en-US
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <45b8f4e1-b915-42f2-aa03-03cc9d1be9f7@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LPVRZkKEP-q0WE5oDCx7QMRpyYv6fUFm
X-Proofpoint-ORIG-GUID: LPVRZkKEP-q0WE5oDCx7QMRpyYv6fUFm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_09,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1011 mlxlogscore=936 phishscore=0 suspectscore=0
 impostorscore=0 spamscore=0 mlxscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300078


On 10/27/2023 7:20 PM, Krzysztof Kozlowski wrote:
> On 27/10/2023 15:33, Mrinmay Sarkar wrote:
>> Add devicetree bindings support for SA8775P SoC. It has DMA register
>> space and dma interrupt to support HDMA.
>>
>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> Unfortunately I do not see any of my comment addressed. :(
>
> This is a friendly reminder during the review process.
>
> It seems my or other reviewer's previous comments were not fully
> addressed. Maybe the feedback got lost between the quotes, maybe you
> just forgot to apply it. Please go back to the previous discussion and
> either implement all requested changes or keep discussing them.
>
> Thank you.
>
> Best regards,
> Krzysztof
Thanks Krzysztof for your review and patience.
Sorry I missed your previous comment.

If I understand correctly by constraining IO space/interrupt,
you mean to add maxItems for reg and interrupt for other variants.
If so, I verified adding maxItems for these properties and dtb check
seems to be good. I will post the same in the next patch series.

Thanks,
Mrinmay
>

