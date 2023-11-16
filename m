Return-Path: <devicetree+bounces-16147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 307D37EDC11
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 08:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C51A71F23C42
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 07:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C6CFBE8;
	Thu, 16 Nov 2023 07:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="PhjCwyCO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF688120;
	Wed, 15 Nov 2023 23:35:31 -0800 (PST)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AG30TJN003603;
	Thu, 16 Nov 2023 07:35:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=vvMnm4WhkueVlpEI/cCYzO1lCBkUqil1M9OZTa0l9Cw=;
 b=PhjCwyCOkci33gIfguS+xGg0un3UJVXyWwEHJefgcF5YGmcpECi8UXBfRpMabZcCrJSt
 bpiTIvXeWXarFrt4lF9IVgoyabSjK9uwpxyKeb3ZJZpb1y86ao97jtakUigxHzlkRYQJ
 IhgzqX6sWBtMsDnUXNaUiC4HnpnnI1HwPYU1PnA1AvjC2rd2N3MtDWdzAyScI0Bfetdf
 4glIfBe/xu0rtm6uYV0VgXNFpxyyvKT3M6l8yc/JtSC4QUgXfwwhnAia625EAIXZU9cQ
 Hnto++hC5momrCYXQOJBekoBXFETy/ZcvfHS8uw4725RLgMlic9jyNZN1pg5R8X41M4s 8w== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ucu27tp50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 07:35:19 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AG7ZIp4028915
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 07:35:18 GMT
Received: from [10.253.72.184] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 15 Nov
 2023 23:35:15 -0800
Message-ID: <6a44ac62-50a8-4f31-9504-10a0d12791f4@quicinc.com>
Date: Thu, 16 Nov 2023 15:35:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] net: phy: introduce core support for phy-mode =
 "10g-qxgmii"
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
CC: <andrew@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
        <kuba@kernel.org>, <pabeni@redhat.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <hkallweit1@gmail.com>, <linux@armlinux.org.uk>, <corbet@lwn.net>,
        <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
References: <20231115140630.10858-1-quic_luoj@quicinc.com>
 <20231115140630.10858-3-quic_luoj@quicinc.com>
 <20231115-tightness-naturist-459776cff199@squawk>
From: Jie Luo <quic_luoj@quicinc.com>
In-Reply-To: <20231115-tightness-naturist-459776cff199@squawk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WivfknNt5PU1gvPggLGPuyqiAlvKbmrF
X-Proofpoint-ORIG-GUID: WivfknNt5PU1gvPggLGPuyqiAlvKbmrF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_05,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 clxscore=1011 lowpriorityscore=0 suspectscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311160058



On 11/15/2023 10:31 PM, Conor Dooley wrote:
> On Wed, Nov 15, 2023 at 10:06:26PM +0800, Luo Jie wrote:
>> From: Vladimir Oltean <vladimir.oltean@nxp.com>
>>
>> 10G-QXGMII is a MAC-to-PHY interface defined by the USXGMII multiport
>> specification. It uses the same signaling as USXGMII, but it multiplexes
>> 4 ports over the link, resulting in a maximum speed of 2.5G per port.
>>
>> Some in-tree SoCs like the NXP LS1028A use "usxgmii" when they mean
>> either the single-port USXGMII or the quad-port 10G-QXGMII variant, and
>> they could get away just fine with that thus far. But there is a need to
>> distinguish between the 2 as far as SerDes drivers are concerned.
>>
>> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
>> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
>> ---
>>   .../devicetree/bindings/net/ethernet-controller.yaml |  1 +
> 
> I know it is one line, but bindings need to be in their own patches
> please.

Ok, will split the binding change out as a separate patch.
Thanks Conor for the suggestion.

