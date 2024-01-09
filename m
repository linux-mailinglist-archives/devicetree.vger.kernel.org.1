Return-Path: <devicetree+bounces-30596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD23828528
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 12:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C465B1C2378A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 11:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B8936B1B;
	Tue,  9 Jan 2024 11:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eWy5B/Ss"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B534C374D4;
	Tue,  9 Jan 2024 11:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4099UjfP030376;
	Tue, 9 Jan 2024 11:33:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=BFDoTnGaouRkhGufZSmVdgklTbBF92kYJkToRoZxYAg=; b=eW
	y5B/SsW7t7iLZNA5p7HbUXaCiSA243Kh741Xu53V4NKINt9ys0RMSxF5PRCMF0cj
	WAOnhnJR+ZoOVkryraB0lDeqOVVeoPeXsLmeJYNaBIr4Yn1uxXcT0jSBs6qlH9jQ
	+mbDlOC1mxINUWA+d+PQuPHH5OWrglkJpNpA3KTBMBVRluw11Mxpxtd0SK2AvwRC
	f3IwHhQu43MgitsSP7EM6shO1ry9G2jW8wrp2RNz8QpA+VXxnYvrGG6rjqHvmhVT
	bHsT14+QP9aHzBoIWXo9yxWm3lzE4zgAX7anyDASaKL/zAOxQTjekOIONhfATOgd
	fi7kPEtHkc6SGcAYRMfA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vh234gdfh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jan 2024 11:33:52 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 409BXpH0012561
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jan 2024 11:33:51 GMT
Received: from [10.253.15.239] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 9 Jan
 2024 03:33:45 -0800
Message-ID: <ba8767a2-b81a-4462-a65d-0096c7df26dd@quicinc.com>
Date: Tue, 9 Jan 2024 19:33:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] support ipq5332 platform
To: Andrew Lunn <andrew@lunn.ch>
CC: Sergey Ryazanov <ryazanov.s.a@gmail.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <hkallweit1@gmail.com>, <linux@armlinux.org.uk>,
        <robert.marko@sartura.hr>, <linux-arm-msm@vger.kernel.org>,
        <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_srichara@quicinc.com>
References: <20231225084424.30986-1-quic_luoj@quicinc.com>
 <a6a50fb6-871f-424c-a146-12b2628b8b64@gmail.com>
 <cfb04c82-3cc3-49f6-9a8a-1f6d1a22df40@quicinc.com>
 <dd05a599-247a-4516-8ad3-7550ceea99f7@gmail.com>
 <ac1977f5-cd6a-4f16-b0a0-f4322c34c5f5@quicinc.com>
 <bdeca791-f2e5-4256-b386-a75c03f93686@gmail.com>
 <895eadd7-1631-4b6b-8db4-d371f2e52611@lunn.ch>
 <e8722b79-e58a-4856-ae56-e44e2860c2f6@quicinc.com>
 <3ae7f014-5b51-4198-a8e1-c042a7926969@lunn.ch>
Content-Language: en-US
From: Jie Luo <quic_luoj@quicinc.com>
In-Reply-To: <3ae7f014-5b51-4198-a8e1-c042a7926969@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: mv-2Fo_RQplrYO8EqhADtPuZLdqHZMS2
X-Proofpoint-GUID: mv-2Fo_RQplrYO8EqhADtPuZLdqHZMS2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=437 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2401090094



On 1/8/2024 9:27 PM, Andrew Lunn wrote:
>> The IPQ PPE includes MAC and UNIPHY integrated, the connection with
>> external PHY is as below.
>> MAC ---- UNIPHY(PCS) ---- (PCS)external PHY.
>>
>> The UNIPHY here is the Ethernet dedicated SERDES for connecting with
>> external PHY.
> 
> You call it a PCS here. So does it implement clause 37 or 73 of the
> 802.3 standard? If it does, the driver for it belongs in
> drivers/net/pcs.
> 
> 	Andrew

Hi Andrew,
The PPE integrated PCSes support multiple interface modes such as SGMII,
UXSGMII, QSGMII, PSGMII and 10g-baser etc. which is configurable for
connecting the different PHY devices.

the SGMII and UXSGMII follows Cisco standard, which does not implement
the 802.3 standard in this interface modes.
PSGMII includes the qcom private protocol.

The PPE driver also including the integrated PCS driver will be
posted for the review in the near future, we can discuss in detail
based on that patch series raised.

Thanks for the suggestions.





