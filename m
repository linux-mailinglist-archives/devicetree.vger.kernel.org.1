Return-Path: <devicetree+bounces-17516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 138AD7F2B86
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:15:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1328282694
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5862482FA;
	Tue, 21 Nov 2023 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="MqoOrrMP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E14319C;
	Tue, 21 Nov 2023 03:15:30 -0800 (PST)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3ALA99hm005185;
	Tue, 21 Nov 2023 11:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=M9DOrdJVKMsr8o6F5WAHynnyalc9MnI3i2BK37d48Bs=;
 b=MqoOrrMPDIgqJAIFe0l3PAOKMehydECbcWJnSVjdnSKQD3rYREO4d76C/Fjy5hJ1MZNv
 QCuU4w0aAdoEMHyKvJ76Cvk/yT+NHIt2HD5W93EYzeLTVNtiT+lBQvTJPSlqtgS2qTTx
 Na0x7KYRYgkr2OZxFezfGJF4R3/XDzJ/k/xxDxFdcc5RqWoLtEXJhUk3fG8Xyh5pm1GA
 B1XKZ3feoQvAl56dBMgbJx3t3E7Lel4OPkNyiNqwWlRMsdrQJVad7NKtRG+nLV3vt3NB
 5u7o3QuAsG06XJvKXq+QYUpFxj1eM8pHLDcJ1HLJuiNwZnme7ma2v1vwj6qJ4gCKM742 tQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ugge19evg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Nov 2023 11:15:15 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3ALBFErn009234
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Nov 2023 11:15:14 GMT
Received: from [10.253.72.26] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 21 Nov
 2023 03:15:10 -0800
Message-ID: <d123cc36-f467-40b4-b792-98fd2104c878@quicinc.com>
Date: Tue, 21 Nov 2023 19:15:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/6] net: phy: at803x: add QCA8084 ethernet phy support
Content-Language: en-US
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
        Andrew Lunn
	<andrew@lunn.ch>
CC: <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <hkallweit1@gmail.com>, <corbet@lwn.net>, <netdev@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-doc@vger.kernel.org>
References: <20231118062754.2453-1-quic_luoj@quicinc.com>
 <20231118062754.2453-4-quic_luoj@quicinc.com>
 <1eb60a08-f095-421a-bec6-96f39db31c09@lunn.ch>
 <ZVkRkhMHWcAR37fW@shell.armlinux.org.uk>
 <eee39816-b0b8-475c-aa4a-8500ba488a29@lunn.ch>
 <fef2ab86-ccd7-4693-8a7e-2dac2c80fd53@quicinc.com>
 <1d4d7761-6b42-48ec-af40-747cb4b84ca5@lunn.ch>
 <ZVuGv2005eaw+R6u@shell.armlinux.org.uk>
From: Jie Luo <quic_luoj@quicinc.com>
In-Reply-To: <ZVuGv2005eaw+R6u@shell.armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: itCDhuVuSbrHvoLLJx9XAomaO2avh_Rr
X-Proofpoint-ORIG-GUID: itCDhuVuSbrHvoLLJx9XAomaO2avh_Rr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-21_04,2023-11-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 malwarescore=0 mlxscore=0 adultscore=0 mlxlogscore=941 phishscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311210087



On 11/21/2023 12:18 AM, Russell King (Oracle) wrote:
> On Mon, Nov 20, 2023 at 04:34:55PM +0100, Andrew Lunn wrote:
>> Are you saying there is a USXGMII-M level link change status? The link
>> between the SoC and the PHY package is up/down? If it is down, all
>> four MAC-PHY links are down. If it is up, it is possible to carry
>> frames between the SoC and the PHY package, but maybe the PHYs
>> themselves are down?
> 
> It shouldn't do. Each "channel" in the USXGMII-M link has its own
> autoneg block at both ends, each conveys link status independently.
> 
> The MAC side structure is:
> 
> 
>                              +----------+                +-----+
>                      .-XGMII-> Rate     |    PCS         |     |
> MAC1 <-MDI-> PHY <-+        | Adaption <--> Clause 49 <->     |
>                      `-GMII-->          |                |     |
>                              +-----^----+                |     |
>                                    |                     |     |
>                              +-----v---- +               |     |
>                              | Autoneg   |               |     |
>                              | Clause 37 |               |     |
>                              +-----------+               |     |
>                                                          | Mux <--> PMA <-->
>                                                          |     |
>                                                          .......     USXGMII-M
> 
> <------------------------------------------------------>
>        These blocks are repeated for each channel
> 
> The spec goes on to state that there must be a USXGMII enable bit that
> defaults to disabled and the PHY should assume normal XGMII/XFI
> operation. When enabled, autoneg follows a slight modification of
> clause 37-6.
> 
> As far as the USXGMII-M link, I believe 2.7.8 in the USXGMII-M
> documentation covers this, which is "hardware autoneg programming
> sequence". It states that "if 10G link is lost or regained, the
> software is expected to disable autoneg and re-enable autoneg". I
> think "10G link" refers to the USXGMII-M connection, which means
> the loss of that link shold cause software to intervene in each
> of the PCS autoneg blocks. It is, however, rather unclear.
> 

The link status of PHY is updated, software should do the corresponding
QXGMII mode configuration per channel for this PHY.

The PCS QXGMII configuration reflects the current link status of the 
connected PHY.


