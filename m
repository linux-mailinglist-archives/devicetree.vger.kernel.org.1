Return-Path: <devicetree+bounces-12063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC417D7C4D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DB051C20E48
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 05:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA2CC8DE;
	Thu, 26 Oct 2023 05:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="MFK7KMgj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D54CC134
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 05:38:28 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42891115;
	Wed, 25 Oct 2023 22:38:27 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39Q3Otwx017422;
	Thu, 26 Oct 2023 05:38:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=fkSeqXomzCL96EMHGzEvzbs4O6q4EfsPRcDgEiGKLaI=;
 b=MFK7KMgjL85YyufW38WA8h5NF3bvpEQGsZhrPjRiXoCPcbTDDMVXvzwFhevPamgtjpp3
 c2Gt9+2UysuhcDvil1rFGo0a5iLmeMogTlbD3pFkz2DkvTv1XCRS7fruCgH92XterjGT
 3tO7ltsO32yVAaUOGzOuUIaMBjbQUc4PTSKbEBFwlWB2GSbCAKoMw7/UaBD/dcze/fdG
 I7HHwnEZyp+l5RNNr6jv/BxoQm+ulTAHKxgwntu/Zk0Z6R+rjrLB6EnXp3orvfKk5XeP
 b16NJQ1eEM75Wth9pJ7dBbyR3EMHgTqv4hthA2gaZQhHfH3GA8J2RyUPOOEcYlz6tQXp kw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tye3trdj5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 05:38:16 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39Q5cETR012187
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 05:38:14 GMT
Received: from [10.216.45.182] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 25 Oct
 2023 22:38:06 -0700
Message-ID: <adbca084-a74b-51be-67b5-a3b9e45da506@quicinc.com>
Date: Thu, 26 Oct 2023 11:08:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 2/5] PCI: qcom-ep: Add support for SA8775P SOC
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <quic_shazhuss@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nayiluri@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <robh@kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul
	<vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
 <20231025075317.GC3648@thinkpad>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <20231025075317.GC3648@thinkpad>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aWWc90mcD3ASVtrDYp15LOh2IKMbAlM7
X-Proofpoint-ORIG-GUID: aWWc90mcD3ASVtrDYp15LOh2IKMbAlM7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_03,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 adultscore=0 bulkscore=0 clxscore=1011
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310260046


On 10/25/2023 1:23 PM, Manivannan Sadhasivam wrote:
> On Thu, Oct 19, 2023 at 05:07:07PM +0530, Mrinmay Sarkar wrote:
>> Add support for SA8775P SoC to the Qualcomm PCIe Endpoint Controller
>> driver. There will be some change specific to SA8775P so adding new
>> compatible string.
>>
> What are those specific changes?
>
> - Mani

Need to enable cache snooping logic for SA8775P only.

--Mrinmay

>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
>> index 32c8d9e..4c01c34 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
>> @@ -858,6 +858,7 @@ static void qcom_pcie_ep_remove(struct platform_device *pdev)
>>   }
>>   
>>   static const struct of_device_id qcom_pcie_ep_match[] = {
>> +	{ .compatible = "qcom,sa8775p-pcie-ep", },
>>   	{ .compatible = "qcom,sdx55-pcie-ep", },
>>   	{ .compatible = "qcom,sm8450-pcie-ep", },
>>   	{ }
>> -- 
>> 2.7.4
>>

