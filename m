Return-Path: <devicetree+bounces-175875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C3EAB22A8
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 10:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF6F04C10CE
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 08:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC7A1BC073;
	Sat, 10 May 2025 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="QHBF1OOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9558C1F151D
	for <devicetree@vger.kernel.org>; Sat, 10 May 2025 08:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746867443; cv=none; b=Y8Q5xlOLtaIMbWcxJ+jBKtlMK7KYzFxOiY1NjIDKtAq1iMO+8EkwPtDQmgBRx3Do2/eQJwmUO7Sh3MP5KfG4p1188RI8r9ZkmdRszVeBbsFd0PyUzGI3hMWcCjoxtM1sryZMCALRMDZU9J30fgOA1ONgt2Tiqkj3ycEDhrSKbR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746867443; c=relaxed/simple;
	bh=mJbUEuWIDZmZSgYloTIxFbJwiSQBRe3bVworWD1I4HY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=minZqwKRTCdebMXFnzWrKEBCFYrFyFywo2GbhmSSSUdgjPqZTqfh4M/okkGzKKAVKXLiXtNgyqzTrp3MY28ArEQzKSHqYp5O2e3Sfseem7j4CGJdYOpAqG/0NjFuLP61wVXPDRSOKAgqs1xbdAa0xMfu6jTm6HvljXxGDd9/q00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=QHBF1OOA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54A4TqZ2021846;
	Sat, 10 May 2025 08:57:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PR3GzZu5gaB58TohyrBz4lAoGyxFweCEiKZE6ujbYwA=; b=QHBF1OOAFWsGOF8F
	sbt3nRYUx/jUWQqfcmGFPIoB24jHuzvY2T8MNbkuLNxW/luAQUN018ZnpzBDbzb1
	OwaKtzRPQVmOPAVbM0RvW7BGdLFJtxp45dUJZ3d/aLZo9Oe8W/UYgLptMVFpYIYr
	C+cvC6Ox63Le8/1jghEh31hqwSW4AyheX1ynBkgY1US8Yx81veB5KUKV4d2Rc27P
	FNVkzD7Zl1X/kRBnxYplEU6PPOh5v06ErcQP199O1W+9Jcm54LEz19sjLQThd300
	pHQTMojAp0r67XEePDKv9aarR/0YmLI7G3yBLXxhdfs8VK/ms3VWCcmjM40dOWdm
	AY9mGA==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hy68gbhb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 10 May 2025 08:57:17 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 54A8vGcc020803
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 10 May 2025 08:57:16 GMT
Received: from [10.50.62.222] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 10 May
 2025 01:57:14 -0700
Message-ID: <e7038d86-12a3-2f9d-870d-d1c91379e814@quicinc.com>
Date: Sat, 10 May 2025 14:27:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: Using iommu-addresses beyond reserved-memory
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        dt
	<devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
CC: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <9439182e-3338-4d57-aa02-b621bc9498a3@oss.qualcomm.com>
From: Vikash Garodia <quic_vgarodia@quicinc.com>
In-Reply-To: <9439182e-3338-4d57-aa02-b621bc9498a3@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEwMDA4OSBTYWx0ZWRfXzd+BpN289I05
 4i6pfn5rVN21ZY/zHPK4yXybdYLxJSObzGeCKkP8LVUYYbYUxeEDIxJhkw1a6RkHr+uyE9tvOgm
 Raxrb5DkHYNFtLjhfNEae0VsDW7K+DTdYY4K32Ij5U+V6pGAI7U1oeAm4bY4TGFv05PkwkZViZ0
 dZiuxD/FF3RT8Z9nbsMYlkB6tXoCqcpsyMBriXNUk35DWqxvJ1K3RD0TYrzGNvVUqIZgvL2rVml
 FJWoeYd9+dAhRCxyx6l41Gh81RhbAiLWdOZxoomtGkx1Qhaa4SXcFiHCawMWd5CrrrlxHH27WGP
 lCPcMFGWodIw6+o+ckKoo/oSQQU2jXkOs1Z6BcwlyFQxw5pHYexY1YaY1IWTPCHxZbvYEcz92AY
 3XKP8BkGGkWg1bFDchkLYPFbWoLZXQO/x+wTsFiVZRVcGWQD+iEkgWUtCuSZQ1AHpIWasrbe
X-Proofpoint-GUID: _dw8imcZ8aXeJb3cs0Ws9UjsA8HdXldh
X-Proofpoint-ORIG-GUID: _dw8imcZ8aXeJb3cs0Ws9UjsA8HdXldh
X-Authority-Analysis: v=2.4 cv=c5irQQ9l c=1 sm=1 tr=0 ts=681f14ed cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=MK8VCAILhkIZzigJMIsA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-10_03,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=644 mlxscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505100089


On 5/1/2025 2:05 AM, Konrad Dybcio wrote:
> Hi,
> 
> We're exploring the use of iommu-addresses due to hw specifics where memory
> regions for some devices must be mapped in a given range.
> 
> iommu-addresses currently allows us to achieve that, but it's incredibly janky..
> To achieve what we need, one has to:
> 
> 1. define a negative of the desired region (i.e. reserve all memory except where
> we want the allocations to happen)
> 2. pass that to a dt (sub)node as a memory region
> (3. pray that you reserved enough memory after the region and there's no board
>     with a larger amount of RAM down the line)
> 
> Now, the obvious idea is to redefine this property to consume the **allowed**
> ranges on ""normal"" devices' nodes (i.e. not under /reserved-memory) - would
> that be an acceptable approach? We're totally open to suggestions

Any suggestions ?

Regards,
Vikash

