Return-Path: <devicetree+bounces-17005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BF07F0E34
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18508282092
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72FAE101C6;
	Mon, 20 Nov 2023 08:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="etVAaKNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2083983;
	Mon, 20 Nov 2023 00:56:03 -0800 (PST)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AK4TRwS025001;
	Mon, 20 Nov 2023 08:55:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=QM/c2askozX6qdB+0s5iSMHnwHG0bdRiJj+zuXgt4Zw=;
 b=etVAaKNtv0hghyrBUqEDqB/r/SlVV/U5/eAkpJUVAZ2995qXsBdhXhAqS6LBKNI2L0rp
 C0VHqLRr/wbmDuK2+PjiFWJcxatndi6QETtr3IbTIO8S6il5IEbQZClkNPkI2kV/uC3K
 +6Xc5BGJf5h2zl2KXnZ2A/bUU9wOIUFv37E6wyKl5debEThBeWdpB4l2sBRaALWJmtcI
 /BQslMg6VHKUrUoZU9p51sR52imFISdSujgmNG/smdtzCYt2gTUQCX0MnVwh5p54SAjL
 Bcs83FltwW9aXD6Raln6S88DlbMeekhbRFefLfkN4vvkYbc/OodCCunVtJLjjZ3rqYGP OQ== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ug0ey0khr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Nov 2023 08:55:50 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AK8tneS011175
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Nov 2023 08:55:49 GMT
Received: from [10.253.8.221] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 20 Nov
 2023 00:55:46 -0800
Message-ID: <0d767bab-a714-41e3-b062-a6855ae2aaa9@quicinc.com>
Date: Mon, 20 Nov 2023 16:55:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/6] net: phy: at803x: add QCA8084 ethernet phy support
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
CC: <andrew@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
        <pabeni@redhat.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <hkallweit1@gmail.com>, <linux@armlinux.org.uk>, <corbet@lwn.net>,
        <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
References: <20231118062754.2453-1-quic_luoj@quicinc.com>
 <20231118062754.2453-4-quic_luoj@quicinc.com>
 <20231118162346.0c66226a@kernel.org>
From: Jie Luo <quic_luoj@quicinc.com>
In-Reply-To: <20231118162346.0c66226a@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sCR8CXk70IxvJCPNGJKV0EYZ9j0OncMj
X-Proofpoint-ORIG-GUID: sCR8CXk70IxvJCPNGJKV0EYZ9j0OncMj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-20_06,2023-11-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 adultscore=0 mlxlogscore=496 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 impostorscore=0 mlxscore=0 spamscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311200058



On 11/19/2023 8:23 AM, Jakub Kicinski wrote:
> On Sat, 18 Nov 2023 14:27:51 +0800 Luo Jie wrote:
>> +		/* There are two PCSs available for QCA8084, which support the following
>> +		 * interface modes.
>> +		 *
>> +		 * 1. PHY_INTERFACE_MODE_10G_QXGMII utilizes PCS1 for all available 4 ports,
>> +		 * which is for all link speeds.
>> +		 *
>> +		 * 2. PHY_INTERFACE_MODE_2500BASEX utilizes PCS0 for the fourth port,
>> +		 * which is only for the link speed 2500M same as QCA8081.
>> +		 *
>> +		 * 3. PHY_INTERFACE_MODE_SGMII utilizes PCS0 for the fourth port,
>> +		 * which is for the link speed 10M, 100M and 1000M same as QCA8081.
> 
> Wrap the comments please.
> 
> Please use checkpatch with --max-line-length=80

Thanks Jakub, i will add this option for the patch check.

