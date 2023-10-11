Return-Path: <devicetree+bounces-7703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 154CB7C5200
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A98B281F00
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E7B1E507;
	Wed, 11 Oct 2023 11:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="BNvxTM+N"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600B91DA32
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:26:56 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 472669D;
	Wed, 11 Oct 2023 04:26:54 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39BAxlA4013997;
	Wed, 11 Oct 2023 11:26:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=tnGoTFkoJrPWMi3LmZbVVptnwMyne89C+2c9NCHF0uo=;
 b=BNvxTM+N0ynRdL0Uq9EyC4wxqecZjxpcun18xBn/dceJ6ELX3dAlHk2EqYtpnovXVeBr
 Q3wyHMQ7w35ESDD4kzEycPojLUK2Jc9U8KnKWkF42n0A6GXKU9C/JqXhYXR60VEOCUFi
 KcBx7iD0eekexHTE+0m0cQJwuZ7BqxJ4/qb2yAXq8Fb9ejl5RwbbMKGa81v1nkFY3wMd
 Dp3GlbSBMiPDhjoQv49dr8gPfFkrOwenYPhMmUtSJkz9Ynq02CCauYolYevTJH6ke+kK
 uRGOncFrgCTBMTaotgZaWPwsLoLa5/nYRsuTXvnJQxpJ+my6rLQAENVKnUxL5gOWNmmR QQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tnstyr512-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:26:38 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39BBQc2f029508
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:26:38 GMT
Received: from [10.253.39.162] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Wed, 11 Oct
 2023 04:26:34 -0700
Message-ID: <49c8a8ff-bdb9-a523-9587-d2a46d401e41@quicinc.com>
Date: Wed, 11 Oct 2023 19:26:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v9 4/4] clk: qcom: add clock controller driver for
 qca8386/qca8084
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, <andersson@kernel.org>,
        <agross@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>
CC: <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_srichara@quicinc.com>
References: <20230923112105.18102-1-quic_luoj@quicinc.com>
 <20230923112105.18102-5-quic_luoj@quicinc.com>
 <10bcb0cc-19db-4914-bbc4-ef79c238a70d@linaro.org>
Content-Language: en-US
From: Jie Luo <quic_luoj@quicinc.com>
In-Reply-To: <10bcb0cc-19db-4914-bbc4-ef79c238a70d@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: dUA-wU0uTkaeUhmTA2v6l2Rxv4Ly_Y8H
X-Proofpoint-GUID: dUA-wU0uTkaeUhmTA2v6l2Rxv4Ly_Y8H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 mlxlogscore=861 lowpriorityscore=0 clxscore=1011
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110100
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/2023 6:25 PM, Bryan O'Donoghue wrote:
> On 23/09/2023 12:21, Luo Jie wrote:
>> The clock controller driver of qca8386/qca8084 is registered
>> as the MDIO device, the hardware register is accessed by MDIO bus
>> that is normally used to access general PHY device, which is
>> different from the current existed qcom clock controller drivers
>> using ioremap to access hardware clock registers.
> 
> "nsscc-qca8k is accessed via an MDIO bus"
> 
>> MDIO bus is common utilized by both qca8386/qca8084 and other
> 
> commonly
> 
>> PHY devices, so the mutex lock mdio_bus->mdio_lock should be
>> used instead of using the mutex lock of remap.
>>
>> To access the hardware clock registers of qca8386/qca8084, there
>> is special MDIO frame sequence(three MDIO read/write operations)
>> need to be sent to device.
> 
> "there is a special MDIO frame sequence"
> 
> "which needs to be sent to the device"

I will update the comments, thanks Bryan.

> 
> the following indentation splat from checkpatch
> 
> CHECK: Alignment should match open parenthesis
> #2071: FILE: drivers/clk/qcom/nsscc-qca8k.c:2004:
> +        ret = __mdiobus_write(bus, switch_phy_id, (reg | 
> QCA8K_REG_DATA_UPPER_16_BITS),
> +                upper_16_bits(val));
> 
> CHECK: Alignment should match open parenthesis
> #2131: FILE: drivers/clk/qcom/nsscc-qca8k.c:2064:
> +static int qca8k_regmap_update_bits(void *context, unsigned int regaddr,
> +        unsigned int mask, unsigned int value)
> 
> total: 0 errors, 1 warnings, 2 checks, 2162 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>        mechanically convert to the typical style using --fix or 
> --fix-inplace.
> 
> 0004-clk-qcom-add-clock-controller-driver-for-qca8386-qca.patch has 
> style problems, please review.

Thanks Bryan for the review. The code line mentioned by CHECK is more 
than 100 columns, so i separate the lines.

> 
> Once fixed
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

