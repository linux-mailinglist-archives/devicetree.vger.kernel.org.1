Return-Path: <devicetree+bounces-34721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E583ABD4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 15:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A2D41F2685C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57500823A7;
	Wed, 24 Jan 2024 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="X9k3km6/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D1C7F7D2
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 14:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706106524; cv=none; b=YEwPZfEFquzBvGG0JmS99xPdmfN0wZdQlVdPTdAl93JB/BCa+eq79wdDIUffkR4zx1YtI6z30HHemFKB8RQzVLZ7bC0nC4vpoE+H3gYrUC10GGJefL+Mrxf8uZw28ah4OuQH7HvWz8dAdhfUIZqycQZfGsyGmy47x8o2e9Tfzxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706106524; c=relaxed/simple;
	bh=4HyJMOeGqWeAy5MzwuuojRWWOyWv4pteb1DdJLnUfGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=SQX74m6TUoRYI64M8gvJphC9BJppn8YaleRdxF7lFVl6qdVMvt0KY5L0jtwGBbmGy95HMkDO8sovOcQgDgfCGxn0x8PWYznqu0U8OuW5rkfVZ/TNEylRnO72R77Ojqfdqr5147fJ56XWqhFjDvhubX9/q0//LAJ3lz75rRRIRos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=X9k3km6/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40OCotw6009777;
	Wed, 24 Jan 2024 14:28:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=t2HaALGc46vsTkTlTYFJlBGtywFJcfrmOFDUnTIxUEM=; b=X9
	k3km6/MsRyNYIba8pdPt1QRZNt6pVu3UgOMmg+4QPodwvzUg/2TpB1YCUVbf5NTr
	7mLmSJNorScjjezPKIimA1/03g2kHkiuArGRYuw/WHJoV6e4lyt1PpLVOoFyI9x8
	A1ULZa0wb61Hel/W32VX7wZ3yW1xzuwygV2d9kPMx9qFb2PSE9oZZLkIPMYM9pse
	C33d2tq4VWgZCh9SJpem6JffQAxq3YYi95qGKg/p5oA+LFqiXh/KsxKrnWlHLJY3
	iI4BgY42ijaiDEzMyS1IQXZHRXcm1YQp8nCuxsto8rgCeYgYkBP2eLJVk5iA1eRk
	1QW9rcBHYJMjtq3/5cuw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vtmhr1yvs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 14:28:35 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40OESYme022431
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 14:28:34 GMT
Received: from [10.110.125.140] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 24 Jan
 2024 06:28:34 -0800
Message-ID: <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
Date: Wed, 24 Jan 2024 06:28:33 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>,
        Vincent Guittot
	<vincent.guittot@linaro.org>
CC: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <ulf.hansson@linaro.org>
References: <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad> <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad> <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com> <ZbEHNyLE8bQlZHSZ@bogus>
 <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZbEY2X8CfOc-vPbe@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: --33kW4tD-SZ03GN6FGtCJwh498JyF0l
X-Proofpoint-GUID: --33kW4tD-SZ03GN6FGtCJwh498JyF0l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_06,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 mlxlogscore=564 mlxscore=0 bulkscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2401190000 definitions=main-2401240105


On 1/24/2024 6:04 AM, Sudeep Holla wrote:
> On Wed, Jan 24, 2024 at 02:38:54PM +0100, Vincent Guittot wrote:
>> On Wed, 24 Jan 2024 at 14:17, Nikunj Kela <quic_nkela@quicinc.com> wrote:
>>>
>>> On 1/24/2024 4:48 AM, Sudeep Holla wrote:
>>>> On Wed, Jan 24, 2024 at 04:27:55AM -0800, Nikunj Kela wrote:
>>>>> On 1/24/2024 3:02 AM, Sudeep Holla wrote:
>>>>>> Not really, still puzzled may be more than before as I don't understand
>>>>>> what is going on with the approach as it seem to be deviating from my
>>>>>> initial understanding.
>>>>>>
>>>>>> May be take an example of one driver, present the DT binding and driver
>>>>>> changes to make sure there is no misunderstanding from my side. But I am
>>>>>> not convinced with the explanation so far.
>>>>> Hi Sudeep,
>>>>>
>>>>> We are not using clock protocol to deal with clocks individually. We are
>>>>> trying to define different perf domains for peripherals where we are
>>>>> grouping clocks/regulators/interconnect bandwidth into these perf domains
>>>>> and use OPP levels via SCMI perf protocol.
>>>> That clarifies on what you are trying to achieve.
>>>>
>>>>> This is done so as to avoid individual scmi calls for these resources
>>>>> hence avoiding any race conditions and minimizing the traffic between SCMI
>>>>> client and server to get better KPIs.
>>>> Fair enough, why can't you just use genpd perf APIs to achieve that ?
>>> OPP is built on top of genpd perf only and was recommended by Ulf(PM
>>> maintainer from Linaro) hence we decided to use OPP APIs instead of
>>> directly genpd perf API.
>>>
>>>
>>>>> This is being planned for sa8775p platform and any subsequent platforms will
>>>>> use the same approach. The idea of using perf protocol for peripherals is
>>>>> new and Qualcomm is first one trying to use that.
>>>> Sure.
>>>>
>>>>> Therefore existing peripheral drivers will require a way to distinguish between the
>>>>> two different configurations. Hope this provides little more context and
>>>>> insight.
>>>>>
>>>> While I agree this is new, use custom APIs to control standard resources
>>>> is simply *VERY VERY BAD IDEA* IMO. You may be fine to have these custom
>>>> API calls in qcom specific drivers. But what if this is needed in some
>>>> generic IP driver. Just not scalable and why should the maintainer of
>>>> such driver accept you custom API.
>>> Apologies if it wasn't clear but we are not using custom APIs. We are
>>> using standard OPP APIs to set to opp level of the perf domain.
>>> Example-dev_pm_opp_set_opp(). As mentioned above, we are following PM
>>> framework maintainers recommendation to use OPP.
>>>
>>>
>>>> So I would suggest to work towards using std framework APIs or create one
>>>> if you can justify the need for it. Please stop creating custom APIs for
>>>> using SCMI. It defeats the whole standardisation it is meant to provide.
>>> Not sure I understand what you refer to as custom APIs here. The OPP
>>> APIs are not custom APIs. They are from OPP framework built on top of
>>> genpd perf. [1] and [2] patch series might provide you more insight into
>>> the work that Ulf did to support SCMI perf with OPP framework.
>> I think that you are speaking about the same thing. They plan to use
>> SCMI power domain for idle states and SCMI performance domain for
>> setting a performance mode. Then, the OPP library is used on top of
>> perf domain to gather and manipulate the  different perf levels.
>>
> Indeed, I just realise that after Nikunj's last email. Earlier to that,
> it was not so clear and it sounded like some custom way. Anyways I am still
> not convinced if this is something drivers need to handle with explicit
> DT support for this distinction in particular.

Let me try another shot to convince you :) Currently, driver is dealing 
with clocks and regulators using individual framework APIs(e.g. 
set_clk_rate, regulator_set_voltage etc.). With defining perf to group 
them in OPP APIs, we need to now use set_opp. Therefore the driver needs 
to change to use OPP framework APIs instead of clocks/regulator APIs 
hence this query on how to distinguish the two configuration even though 
the hardware is same.

>

