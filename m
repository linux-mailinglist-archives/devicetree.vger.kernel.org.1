Return-Path: <devicetree+bounces-50102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A4879966
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:53:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA81E283A67
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 16:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7215F137C20;
	Tue, 12 Mar 2024 16:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="pMA+xc6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3EDF137922
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 16:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710262405; cv=none; b=coXv1ls7M9kiZAZGp1ItV0NRkq0UfQkVKfXICVuf5ZBgTks6/4vC6pUhojNSqY92LufemxR9sRSBl6XlID4KLKNdU/lnkE+eVrffAjN4W77+WaerMed5CsX1Zh99I06hLjA8qww942WLJPusZH70ByQ3AJdpWBvs0B9OYujA6wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710262405; c=relaxed/simple;
	bh=nHt3jEqye/6m5mzWCobj85UAwrM4Q+DFY5nyyFTE7KI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=kAd+1AxvuJ9Vz0gnZYRpytzkBq3SUR7W+8U5O8eMu3u3hfpWKSahSE9aLAl95mQ0zXEELdgibvxUrszQzSGmj1cPDb1T1Hz0JNX0vjPNc+XmqMhXA7+asG/+DAp5xWUo5MB9039Lo58+edWlb75FhI0Qc5b46cOBncEiX/40z/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=pMA+xc6K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42CBpYQN002790;
	Tue, 12 Mar 2024 16:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=8LY7cEBTduySVm57bvN9C92O2QU1lpWpb6Wpt/CacD4=; b=pM
	A+xc6K7XnTcOdh6v7JucHO3dXoAvpDPycEGy1Djb0k5e/cHBsgRoAaRE/WzbD8HZ
	IqYJ9N0nJcTIzHZOx8dnI6oaG7yZi+17vC4rTt0qaVBJyJ95CFWyy20vxlFZ44w8
	yYD5BhEJIq8n6K6lwgFl9zfu8Py3nYK63Ouz98bqa8nNDo/XJ424cC4OgvqMmUe9
	jwU6kVYXYHJLC+l8FDNCOLtVuZQmq9dw4XH6fISPsLsosH1DKCgJnxaygXubAD8X
	20+7khBBZQMfYmXx+wSmirvyUCdZOjrM3sjBEEqvCUfO2kzwQb5hTNBPBKYAXj6F
	1m9YVHSajy6Li2IuEuaA==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wtjef17h0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Mar 2024 16:53:16 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42CGrFCP020814
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Mar 2024 16:53:15 GMT
Received: from [10.216.51.194] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 12 Mar
 2024 09:53:10 -0700
Message-ID: <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
Date: Tue, 12 Mar 2024 09:52:56 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
CC: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        "Trilok Soni (QUIC)" <quic_tsoni@quicinc.com>
References: <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZeWp_UjYfWsnEB-K@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: q_ArOhFZRM9Hd6flMYS8o0MqoD5KHqmj
X-Proofpoint-GUID: q_ArOhFZRM9Hd6flMYS8o0MqoD5KHqmj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-12_10,2024-03-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 suspectscore=0 bulkscore=0 spamscore=0 mlxscore=0 phishscore=0
 malwarescore=0 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403120128

+Trilok

On 3/4/2024 3:01 AM, Sudeep Holla wrote:
> On Fri, Mar 01, 2024 at 12:53:25PM +0100, Ulf Hansson wrote:
>> On Wed, 28 Feb 2024 at 18:11, Srinivas Kandagatla
>> <srinivas.kandagatla@linaro.org> wrote:
>>>
>>>
>>> On 28/02/2024 16:22, Ulf Hansson wrote:
>>>> On Wed, 28 Feb 2024 at 17:09, Sudeep Holla <sudeep.holla@arm.com> wrote:
>>>>> On Wed, Feb 28, 2024 at 03:20:44PM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 28/02/2024 15:02, Sudeep Holla wrote:
>>>>>>> On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
>>>>>>>> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
>>>>>>>>> Hi Sudeep,
>>>>>>>>>
>>>>>>>>> I would like to conclude on this thread. I was discussing this with Ulf.
>>>>>>>>> He thinks that using the domain names to identify if platform is
>>>>>>>>> abstracting clocks etc. are not scalable and sufficient. Instead he
>>>>>>>>> thinks that the change in the interface to OS(and FW) is a good
>>>>>>>>> candidate for a new compatible(even though HW is same).  Even for SCMI,
>>>>>>>>> we do change phandle in DT to SCMI protocol phandle so that is like a
>>>>>>>>> different platform altogether. Could you please let me know if you still
>>>>>>>>> think that using a different compatible in this case is not warranted.
>>>>>>>> My apologies for joining this discussion at this late state. Yet, I
>>>>>>>> just wanted to confirm what Nikunj said above.
>>>>>>>>
>>>>>>>> In the end we are indeed talking about adding a new platform, as
>>>>>>>> changing the FW interface from a QCOM proprietary one into SCMI,
>>>>>>>> simply requires updates to a DTS file(s) that is platform specific.
>>>>>>>>
>>>>>>> The way I read this sounds like all this are platform specific and need
>>>>>>> new compatible.
>>>>>>>
>>>>>>>> That said, it also seems reasonable to me to use a compatible string,
>>>>>>>> to allow us to describe the update of HW for various affected devices.
>>>>>>>>
>>>>>>> While I agree with the above statement, it depends on what you refer as
>>>>>>> update of HW above. It is all Qcom specific and there is so much turn
>>>>>>> between SoCs that this shouldn't matter but I would like to take example
>>>>>>> and describe what I initially mentioned/argued against.
>>>>>>>
>>>>>>> Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
>>>>>>> new and migrated to use SCMI. Now let us assume both A and B SoCs have
>>>>>>> exact same version/revision of an IP: X. Now just because B uses SCMI,
>>>>>>> should X have one compatible to be used in A and another in B. That
>>>>>>> doesn't sound right IMO.
>>>>>> That's trivial to answer, because these are different SoCs. Compatibles
>>>>>> are SoC specific and every SoC-IP-block needs its compatible. Rob was
>>>>>> repeating this many times that versioned compatibles are discouraged.
>>>>> OK I may have confused or derailed the discussion with the mention of
>>>>> "exact same version/revision" of X. This is not related versioned compatibles.
>>>>> Let me try to explain it with some real example. If you look at all the
>>>>> users of "arm,coresight-tpiu", they all have same compatible on all the
>>>>> platforms irrespective of the clock/reset/voltage/power domain providers
>>>>> on these platforms.
>>>>>
>>>>> E.g. on juno it is based on SCMI while on qcom-msm8974/apq8064 or
>>>>> hi3660/hi6220 it is platform specific clock/power domain providers.
>>>>> However all these platform have the same compatible "arm,coresight-tpiu".
>>>>> That was the point I was trying to make and not related to versioned
>>>>> compatible for different versions on an IP.
>>>> That's perfectly fine, if that is sufficient. It would also be
>>>> perfectly fine to extend it with a platform/soc specific compatible,
>>>> when needed.
>>>>
>>>> An example could be:
>>>> compatible = "qcom,sm8450-coresight-tpiu", "arm,coresight-tpiu";
>>> The issue is not the same as the above example.
>>>
>>> We already have a soc specific compatible in this case
>>> ex: "qcom,sc8280xp-ufshc"
>>>
>>> making another compatible like "qcom,sc8280xp-ufshc-scmi" or
>>> "qcom,sc8280xp-ufshc-xyz" based on how some of the resources (clks,
>>> regulators) are provided in bindings does not really make sense.
>>>
>>> Fact is that we are representing the same IP block.
>>>
>>> AFAIU, we should go with same compatible irrespective of how the
>>> resourcing needs are satisfied.
>> I get your point. Nevertheless, we need to create a new platform (new
>> DTS file), as we are changing the FW interface to SCMI. That means the
>> toplevel compatible for the platform will be a new one
>> (Documentation/devicetree/bindings/arm/qcom.yaml).
>>
> While I don't understand the details of the above mentioned platform,
> it should be a blanket rule that the toplevel compatible for the platform
> has to be new.
>
> Check
> arch/arm64/boot/dts/arm/juno.dts
> arch/arm64/boot/dts/arm/juno-scmi.dtsi
> arch/arm64/boot/dts/arm/juno-scmi.dts
>
> One is with old firmware interface and -scmi is with SCMI. No new top
> level compatible change is needed. I understand it was switch from one
> interface to the another and not like Qcom platforms which is moving
> from in-kernel solution to firmware solution. But the general rule applies
> here as well unless there are specific reasons for needing that exception.
> I am not against it or ruling that out, just curious to understand them.
>
> --
> Regards,
> Sudeep

Hi All,

Thank you all for all your inputs on this. I discussed this with Srini 
and he suggested that we could use a new optional DT property like 
"qcom, fw-managed" to ascertain if we are running on firmware managed 
variant. Thus each device node in the dts can add this. I did ask him 
if, instead of putting it to each device node, we can use it at the 
board level however he thinks that it would not be easy to update yaml 
documentation on DT nodes with board level property. So if everyone here 
agrees with this approach, I would like to close this thread.

Thank you!


