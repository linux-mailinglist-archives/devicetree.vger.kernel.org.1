Return-Path: <devicetree+bounces-45984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2954186781D
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 15:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8ADF2893A9
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 14:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4674D129A64;
	Mon, 26 Feb 2024 14:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="aH97eKeO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 966807FBAA
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 14:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708957459; cv=none; b=RdkfxJK42sAPW8sydC1pIWKBHC+yMYIce7SzUe5l49TtP4buSYDNSNYhsnH3aOoeBOUVduADodfZYNjuR6xqUhHFwehRdIkcyytz49EJgtY+eQLvllSNgqeeovOaCOqdADT06dCBqz9KJLFp0Ya4poq/e1zcxVyPnyPjNB5lrXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708957459; c=relaxed/simple;
	bh=trgnlu3YxZyhsA+SWtO8c5g7JI9KtFCbpwvOIV2VgdQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
	 In-Reply-To:Content-Type; b=AUNPfsInH2R5XZmS/4kExRcWCnTWve26zwDW/TyNjyiwRcvR30Khl1d1BnRXlPZlgIi9lIibxVs7EQM09yGTIupjugKXDCQK9yeznuT83Y/cGt0c8BgJps2cqkOSzrTOPLXrkoZvOwlAVgB2q+gXqqZcPxiPiXWWyTGHKP/wn2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=aH97eKeO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41QBt3EI030684;
	Mon, 26 Feb 2024 14:24:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:from:to:cc:references
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=RbqZWmXmsSN0oZ0FA1gaxmCUvMYzNJnVhZvQglGeVHE=; b=aH
	97eKeOMu0VRE2fQiOX0KIGoWg/nQ4trftHih2NSrvY9JOMLiX5VPaon9+orbx2NA
	T7wooGMNmeKSKuoj2al9N8zKKDRbBlLaEUKNLUYTJxYXsUMf/0peusC/CCwkqMIh
	wpUdpw0gNRcCMYTTke2Q+F7lcXznMMPzCPQL+LANuabDbnmWoh/DJcN1F077uwcB
	SOR1LNCRKpDL7b0m+ECuaYgdvb3Q++Cs8PCZlyCBXXApNqK9jko/mOBjOBbK4IZ7
	ZZnE2uoEtGGj8pJ+WgEG0RVAiM8r2K1H9npbEFEKGSlMiZOWwUtOXndWOmsveSZA
	9RuPvVxB30oCxGid9WMg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wgkxn93tm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 14:24:06 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41QEO5LB024438
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 14:24:05 GMT
Received: from [10.110.114.250] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 26 Feb
 2024 06:24:04 -0800
Message-ID: <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
Date: Mon, 26 Feb 2024 06:22:41 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
From: Nikunj Kela <quic_nkela@quicinc.com>
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
 <ZbFH0UE9zZQFWm8Z@bogus> <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
Content-Language: en-US
In-Reply-To: <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: wqP7oieQ2dC0eTAiRkN99hslFojYDS8e
X-Proofpoint-GUID: wqP7oieQ2dC0eTAiRkN99hslFojYDS8e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_09,2024-02-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=809 bulkscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 impostorscore=0 clxscore=1011 malwarescore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402260108

On 1/24/2024 9:33 AM, Nikunj Kela wrote:
>
> On 1/24/2024 9:24 AM, Sudeep Holla wrote:
>> On Wed, Jan 24, 2024 at 06:28:33AM -0800, Nikunj Kela wrote:
>>> Let me try another shot to convince you :) Currently, driver is 
>>> dealing with
>>> clocks and regulators using individual framework APIs(e.g. 
>>> set_clk_rate,
>>> regulator_set_voltage etc.). With defining perf to group them in OPP 
>>> APIs,
>>> we need to now use set_opp. Therefore the driver needs to change to 
>>> use OPP
>>> framework APIs instead of clocks/regulator APIs hence this query on 
>>> how to
>>> distinguish the two configuration even though the hardware is same.
>>>
>> One option is to make dev_pm_opp_set_opp() work for both. IIUC, opp 
>> layer
>> can deal with clocks and regulators. A quick look at 
>> dev_pm_opp_set_opp()
>> seem to suggest that.
> I did explore that and there are some complications due to the 
> abstraction we are trying to achieve.
>>
>> Another option is to try both one after another. Here I am assuming that
>> clk_get() will fail and return error. One could check if it has 
>> pm_domain
>> with "perf" support and use opp APIs.
> This sounds promising so I would like to explore this further. IIUC, 
> you are suggesting that we check if genpd->set_performance_state() is 
> implemented when the clock APIs fail?
>> I don't think we need DT changes to achieve what you have explained 
>> so far.
>> At least not at a level of per device node compatible or extra property.
>>
Hi Sudeep,

I would like to conclude on this thread. I was discussing this with Ulf. 
He thinks that using the domain names to identify if platform is 
abstracting clocks etc. are not scalable and sufficient. Instead he 
thinks that the change in the interface to OS(and FW) is a good 
candidate for a new compatible(even though HW is same).  Even for SCMI, 
we do change phandle in DT to SCMI protocol phandle so that is like a 
different platform altogether. Could you please let me know if you still 
think that using a different compatible in this case is not warranted.

Thanks

>> -- 
>> Regards,
>> Sudeep

