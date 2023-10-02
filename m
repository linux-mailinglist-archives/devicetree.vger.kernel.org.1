Return-Path: <devicetree+bounces-5224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 618797B5A6F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0B5BE282357
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06DD21F166;
	Mon,  2 Oct 2023 18:45:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD52C1D54F
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:45:29 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75A69AB;
	Mon,  2 Oct 2023 11:45:28 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 392DeOKH026344;
	Mon, 2 Oct 2023 18:45:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=3wU1MhJWEST554d4LwEyoTXgt68gsjdDbD2JetUjQM8=;
 b=ojqjVNAFqGp+MwaBu0JqubNoVWfJCdwXKmM+V6invskDGrk10KD1JlrUc8nBQvgvWPYm
 Kd0AySVNqtTSY82CHgCgpykdWge/ryeh8Xh1IzZuRNe0XRhFCUbb17KCIvA6dNf1NFfX
 vJZGs4stpMEy/yeAqDqEBQLg5V2+FVWJp+74vdK5oMjEkXxndiDr3eqs/ACiJfSCQzK1
 39plRYLZvpL5doAASt4SM3SKWB8uGdB2CcLiqxo7cGzIH0xZr/RFhDHnlacy7Y0BoTLu
 duJlgZ4P/O5Idv3IMd4iZjbDJ3cn7r6N5N8conTPlVv4CwvaBopI/XeNOtN86MSyNp8N 6Q== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3teapev7n3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Oct 2023 18:45:15 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 392IjEAo017149
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 2 Oct 2023 18:45:14 GMT
Received: from [10.110.71.113] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Mon, 2 Oct
 2023 11:45:13 -0700
Message-ID: <6220ce37-dd39-5664-b5fe-5279d81ed228@quicinc.com>
Date: Mon, 2 Oct 2023 11:45:12 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 4/4] firmware: arm_scmi: Add qcom hvc/shmem transport
 support
To: Brian Masney <bmasney@redhat.com>
CC: <sudeep.holla@arm.com>, <cristian.marussi@arm.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <20230911194359.27547-5-quic_nkela@quicinc.com> <ZRsNHnuUdGl+vuqz@brian-x1>
 <ZRsOTH//BZ74mU6P@brian-x1>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZRsOTH//BZ74mU6P@brian-x1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Tz2vkXRfvlTs3vQKf5BCdakYE2UF3KTL
X-Proofpoint-GUID: Tz2vkXRfvlTs3vQKf5BCdakYE2UF3KTL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-02_12,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 adultscore=0 clxscore=1015 mlxlogscore=732 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310020144
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 10/2/2023 11:39 AM, Brian Masney wrote:
> On Mon, Oct 02, 2023 at 02:34:06PM -0400, Brian Masney wrote:
>> On Mon, Sep 11, 2023 at 12:43:59PM -0700, Nikunj Kela wrote:
>>> +		func_id = readl((void __iomem *)(scmi_info->shmem) + size - 16);
>>> +#ifdef CONFIG_ARM64
>>> +		cap_id = readq((void __iomem *)(scmi_info->shmem) + size - 8);
>>> +#else
>>> +		/* capability-id is 32 bit wide on 32bit machines */
>>> +		cap_id = readl((void __iomem *)(scmi_info->shmem) + size - 8);
>>> +#endif
>> The 32 bit case is defined as a u64 in two places above.
> Also should the 32 bit case be 'size - 4' instead of 'size - 8'? Sorry
> I just noticed that as soon as I pressed send.
>
> Brian

I already addressed this in one of your previous comments. We are 
keeping last 16 bytes reserved for these two parameters regardless of 
the architecture.



