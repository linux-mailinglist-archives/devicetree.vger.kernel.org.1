Return-Path: <devicetree+bounces-34777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 405F883B040
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 18:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F0E1DB2869C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 17:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF327F7C4;
	Wed, 24 Jan 2024 17:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="QV5RozhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9537A7E798
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 17:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706117625; cv=none; b=PpGizcglk5bV3rPfSqD3ni92taShL1lgTlQZokq7y5n/R2rvznTcVmiTHdhji+T7GyHgQaFTdmj0W6CTEKYKi1Q9pSwTiQp2VgT0r8/eD2gWeaP328ZYcCztgChK4gY5MHPCaoHogTNbNkaq3kHiwYMh/vfDp14Oj+UnKhfY2DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706117625; c=relaxed/simple;
	bh=k2mRIehLB9In949yPBujvLK6J4g0ntChvMMIf9iorNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=GRfEKwB1qkufx+Xw5e5WN66erypl7mcpZl+O8+EYwMnIHn3hqt/L1sCXFXlCorhcrtZdmikZUPJFLQsd0RZ2r3gMpPQwro2erFvLcCSWjUjF3adGIpz/wztxl/M6kMybFEF2jUcNYova3HmwlUIntXyP3+D974SP49uMAii8jF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=QV5RozhQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40OFYwKk022311;
	Wed, 24 Jan 2024 17:33:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=34G59yHCXic29RywTCHBTP/eWpW7Qpvz3vJKDk2gW5U=; b=QV
	5RozhQA8JPDNUr5TeUKOJkLJwM6VJHBcmmSzAXPQmqnovvOgzDivyb3pfJudTRC1
	HCLF4WMIXc5OhDozruYYMggk4Xq8PEroWZuAkcxZwESd1fI8hTPPpfJPPt7XwufE
	ECNgN+VKSflSeFWBAbBIBIbE+1sD4zV3aKLOoO3gwfc5DHdV+1JyoJpv4tw2y1SZ
	Ww6SzXjf0xDAn8IkBCIyOeY6Uo9CokblvwJvDrfoEtogVs9cb3k32NMLDIiAttyY
	l/NAY1FxIeRVk4q6tRBvmzRIoFQjbtEgHJH1NMx56Q3nxvRtG7nJ1P1r/JXl0ox3
	ldwW2Kcbc+3rBXneJq0w==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vu1ccgvv8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 17:33:36 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40OHXZpk011994
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 17:33:35 GMT
Received: from [10.110.125.140] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 24 Jan
 2024 09:33:35 -0800
Message-ID: <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
Date: Wed, 24 Jan 2024 09:33:34 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>
CC: Vincent Guittot <vincent.guittot@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <ulf.hansson@linaro.org>
References: <20240123161231.GG19029@thinkpad> <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad> <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com> <ZbEHNyLE8bQlZHSZ@bogus>
 <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus> <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZbFH0UE9zZQFWm8Z@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: SXqh6FzyRp051yBGmLzF0crI6GYMtg0O
X-Proofpoint-GUID: SXqh6FzyRp051yBGmLzF0crI6GYMtg0O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_06,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=431
 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 impostorscore=0
 spamscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401190000 definitions=main-2401240126


On 1/24/2024 9:24 AM, Sudeep Holla wrote:
> On Wed, Jan 24, 2024 at 06:28:33AM -0800, Nikunj Kela wrote:
>> Let me try another shot to convince you :) Currently, driver is dealing with
>> clocks and regulators using individual framework APIs(e.g. set_clk_rate,
>> regulator_set_voltage etc.). With defining perf to group them in OPP APIs,
>> we need to now use set_opp. Therefore the driver needs to change to use OPP
>> framework APIs instead of clocks/regulator APIs hence this query on how to
>> distinguish the two configuration even though the hardware is same.
>>
> One option is to make dev_pm_opp_set_opp() work for both. IIUC, opp layer
> can deal with clocks and regulators. A quick look at dev_pm_opp_set_opp()
> seem to suggest that.
I did explore that and there are some complications due to the 
abstraction we are trying to achieve.
>
> Another option is to try both one after another. Here I am assuming that
> clk_get() will fail and return error. One could check if it has pm_domain
> with "perf" support and use opp APIs.
This sounds promising so I would like to explore this further. IIUC, you 
are suggesting that we check if genpd->set_performance_state() is 
implemented when the clock APIs fail?
> I don't think we need DT changes to achieve what you have explained so far.
> At least not at a level of per device node compatible or extra property.
>
> --
> Regards,
> Sudeep

