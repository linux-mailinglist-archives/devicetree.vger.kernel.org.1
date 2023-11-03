Return-Path: <devicetree+bounces-13714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 742687E0230
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 12:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A57DE1C20A8D
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 11:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A0514F9F;
	Fri,  3 Nov 2023 11:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Wkxl8puX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE9A15485
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 11:26:47 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA2C7134;
	Fri,  3 Nov 2023 04:26:42 -0700 (PDT)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A3BApAX021726;
	Fri, 3 Nov 2023 11:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=lfQIATagDXr/IHl018bEVxuu1E+1OhBeQ1S0dtuTD7U=;
 b=Wkxl8puXjlYAzj4Ieivbx7VPVNi5cMv7U0Dz3OdlbtfIF8kIv0o1qaoZ8kRbYjRLFYGm
 m+B+W8vDhRMX8BTZtAghu/Z7DLNKpqzkXzLZ8UlPNwdnA5o4lsoJPxOtvumUWtUe5ovQ
 Nig6XYuhWkPR4lSKvEIVM/I2r9x5RvKnWNGgieXoR0bAI7LGLYZcj5/ekdNhAJ+vW9vu
 Mo4f2/fjUPdTvArWmm5yJyvmAyJxQTDqmxuHxk186F09m5h1Or9mWsaZwkUcV/TTJtu4
 Y8AH466xorSLTzurkd9bl6XkiZ9ZonYnrVH5SDkDzXLkFsAm7AG12YrEM2c4FH5xJjiU Sw== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u47dy31jf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Nov 2023 11:26:27 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A3BQQJg016440
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 Nov 2023 11:26:26 GMT
Received: from [10.216.26.1] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Fri, 3 Nov
 2023 04:26:20 -0700
Message-ID: <0140b8b9-0043-4cf4-0704-7727774dba0f@quicinc.com>
Date: Fri, 3 Nov 2023 16:56:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [RFC PATCH 2/5] arm64: dts: qcom: ipq9574: Add ecc engine support
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <miquel.raynal@bootlin.com>,
        <richard@nod.at>, <vigneshr@ti.com>, <broonie@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
        <linux-spi@vger.kernel.org>, <quic_srichara@quicinc.com>,
        <qpic_varada@quicinc.com>
References: <20231031120307.1600689-1-quic_mdalam@quicinc.com>
 <20231031120307.1600689-3-quic_mdalam@quicinc.com>
 <873c1b14-5b7c-4fb1-8f09-6344a4bf901b@linaro.org>
From: Md Sadre Alam <quic_mdalam@quicinc.com>
In-Reply-To: <873c1b14-5b7c-4fb1-8f09-6344a4bf901b@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZK53JGex603L5pTAe7eCzW7u4s1svBif
X-Proofpoint-ORIG-GUID: ZK53JGex603L5pTAe7eCzW7u4s1svBif
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-03_11,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 phishscore=0 impostorscore=0 mlxscore=0 mlxlogscore=798
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311030096



On 10/31/2023 8:53 PM, Konrad Dybcio wrote:
> On 31.10.2023 13:03, Md Sadre Alam wrote:
>> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
>> ---
> Hello,
> 
> you're missing:
> 
> - dt-bindings (make dtbs_check is unhappy)
> - a commit message
> - Co-developed-by for Sricharan

> 
> status should read "okay" instead, but in this case it's unnecessary
> as you're defining the node and lack of the status property also means
> that device is enabled
> 
> however
> 
> this ECC engine seems to be a part of the NAND controller, so it's
> unlikely that the DT maintainers will agree for it to have a separate
> node
> 


Will drop this patch as this was NAK-ed
QPIC controller has the ecc pipelined so will keep the ecc support
inlined in both raw nand and serial nand driver.

Regards
Alam.



