Return-Path: <devicetree+bounces-8453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 836897C83B9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B428B1C20A2A
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC1F125A0;
	Fri, 13 Oct 2023 10:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YxLE+hSo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B99111A1
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:51:27 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43EFBBE;
	Fri, 13 Oct 2023 03:51:26 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39DABwJJ032430;
	Fri, 13 Oct 2023 10:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=XRv42xHAis5Fhtay5EJ5egtLIimhKpgjtjPqQOtZ6xM=;
 b=YxLE+hSoD2NiLJO9/ar/jt11EKRwEnGlJw9GJh7YveraBISOw5q98lPWH68BEWnFRKwf
 ddpAkp8/9yY3lqnGUHJVO07A78GuWkY7Drt16SOxQke5MYIyb+aipNfnJTl/w73K1mR+
 tdpA6S2B7HgMjGZQSLp9wrYNQeSWtL6FvWb0WCsPenMu4hVt4EH8uHS1VIxHAK6HRQ0n
 rPmrk4nexCLaDVM9KGeRv1Zrepr8JrHB9B6WDIqS8CBtQFM8wZBXEjrd4BvP9/50z6Zy
 yzp5ytO4anntSD54qwwHZ5+6QenSIEXWWCBrDj4OaDwv8QZA+sbNQuiNmQXi8HSLwTjV cA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tpt1u9fxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Oct 2023 10:51:10 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39DAp0eT014032
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Oct 2023 10:51:00 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Fri, 13 Oct
 2023 03:50:55 -0700
Message-ID: <eabe2aea-7d21-4dfa-a1cc-1267ec31c5d9@quicinc.com>
Date: Fri, 13 Oct 2023 16:20:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add devicetree support for SDX75 Modem and IDP
Content-Language: en-US
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <rafael@kernel.org>, <viresh.kumar@linaro.org>,
        <tglx@linutronix.de>, <maz@kernel.org>, <mani@kernel.org>,
        <robimarko@gmail.com>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>
References: <1686311438-24177-1-git-send-email-quic_rohiagar@quicinc.com>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <1686311438-24177-1-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: an_5d6ILC_lZxz9Z4aroIVhfcpcVYArK
X-Proofpoint-ORIG-GUID: an_5d6ILC_lZxz9Z4aroIVhfcpcVYArK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-13_03,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 mlxlogscore=688 clxscore=1011 adultscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310130089
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 6/9/2023 5:20 PM, Rohit Agarwal wrote:
> Hi,
>
> Changes in v4:
>   - Addressed some of the dt bindings check mentioned by Krzysztof.
>
> Changes in v3:
>   - Clubbed all the dt node into a single patch as suggested by Krzysztof.
>   - Removed the applied patch.
>   - Addressed some comments from Konrad and Dmitry.
>
> Changes in v2:
>   - Added the CPUFreq support patch.
>   - Collected the Acked by tags.
>   - Addressed some minor comments from Konrad.
>
> This series adds devicetree support for Qualcomm SDX75 platform and IDP
> board. This series functionally depends on GCC and RPMh Clock support
> series [1], and pinctrl support for SDX75 [2] which are under review.
>
> With this current devicetree support, the IDP can boot into initramfsshell.
>
Can the patch 3/5 and 4/5 be picked of this series? All changes apart 
from these are picked.
Somehow these patches got missed.

Thanks,
Rohit.
>
>

