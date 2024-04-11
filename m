Return-Path: <devicetree+bounces-58394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E73CC8A1B4A
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 19:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C633287371
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 17:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE50E7E58C;
	Thu, 11 Apr 2024 16:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="W4qzsRW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4204579DBB
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 16:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712851203; cv=none; b=tSrunAYexvPpE4+R7f2sKE6EjSqbYYkoKnLOqwnegmGQ3mb8Lu3+cKMzMIiAMOIqxq8fZwtTZUa4VPIo+7VgzM0PkMolHN+9QtMxWgLuoV8Xq+3Np+cKeOiNwJuqIEE5AZrTqxMqu9HAbn+03VOCZq+ZCMiRRzeTkfGbGZUqIpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712851203; c=relaxed/simple;
	bh=2INPX9N4TVUU4+J27ExOti/bdWZ04ulwOh9MFKXB0gA=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=UP4RYw2v6wrunryEVPLBp/l8AExLP2luHg6tYzSF0OuF2jqXXRaFz+CNg+i97jjIKAR6lgprYkukqSRoJbZY6sjGBy4CbQMs3c5BpYpDOOS/m4bu5P+QLmJPGFMBn79sElK9M4SXrXXyrGt1Kye/8PHtho2pr2civbSFehIoEHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=W4qzsRW4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43BFRJpv022983;
	Thu, 11 Apr 2024 15:59:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=1uQxdp9QzgQxLS0/XJ2i3BVeOtxpJloVZABbkNLspX8=; b=W4
	qzsRW4T3BMn2mqe/OUU2g0MdJxPZgiQW6hr+mjX8S8XWDYKAiRYmw4Y1iWSaYQfd
	ATABY628xA1kSd+UjlJAGg99k7xIpPrMsDsH4mj5VfQI9sxiNAW97QZGKL0yA/ST
	YjS8vMvVTq5A+uSjIF17ZkGQlaJWbjqT+GGXTD1mcGhj+YRo+JtoWf18b0AG2Ezi
	fkoguPkJWnEl18VLTWJiPBFmRPW/vzmzH8yANzIVu8oxWxXnIJ05jJZYnZ2nW25+
	uR3cuHTNI5QV6Cx4ITLCg7l8XigrtdFgdtBWOwpYwimuI0CjY7fECn8P52Uoc8A3
	QJA3ZnNxpB1fBNZbaNUw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xe8yvjhck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Apr 2024 15:59:55 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43BFxsQ4018243
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Apr 2024 15:59:54 GMT
Received: from [10.110.89.60] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 11 Apr
 2024 08:59:53 -0700
Message-ID: <7d1491dc-fbe8-44e0-920d-b1bda1a64890@quicinc.com>
Date: Thu, 11 Apr 2024 08:59:53 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>
CC: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Trilok Soni
	<quic_tsoni@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>
References: <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus> <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org> <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org> <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org> <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com> <ZhesH9ikZiy8ah6J@bogus>
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZhesH9ikZiy8ah6J@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ioYZbECEVHXTE96BkfFGg7LCINpLzysb
X-Proofpoint-GUID: ioYZbECEVHXTE96BkfFGg7LCINpLzysb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-11_08,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 adultscore=0 spamscore=0
 mlxlogscore=999 phishscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2404010003 definitions=main-2404110117


On 4/11/2024 2:23 AM, Sudeep Holla wrote:
> On Wed, Apr 10, 2024 at 09:55:24AM -0700, Nikunj Kela wrote:
>> On 3/19/2024 9:13 AM, Sudeep Holla wrote:
>>> On Tue, Mar 19, 2024 at 03:41:40PM +0000, Srinivas Kandagatla wrote:
>>>> On 19/03/2024 15:17, Sudeep Holla wrote:
>>>>> I am not debating on the implementation just to be clear. I accept changes
>>>>> might be needed there. The $subject is all about DT bindings and what need
>>>>> to be changes and for me nothing, just use existing bindings and if there
>>>>> are issues there, let us discuss it with specifics.
>>>>>
>>>> How can changes to dt bindings be nothing? All the resources
>>>> clk/regulators/resets will become optional and a new power or perf domain
>>>> will become required for each device with firmwares that support SCMI Perf.
>>>>
>>> Correct, sorry to miss the point that few properties are now optional from
>>> mandatory before. Very good point. I was so caught up with the addition of
>>> the new "firmware controlled blah blah" property/compatible that I missed
>>> to observe mandatory->optional as a change. Thanks for correcting me.
>>>
>> If there are no more questions on this and everyone is on the same page, I
>> would like to conclude this thread in favor of using a new DT property
>> 'qcom,firmware-managed-resources'.
>>
> This is exactly opposite to what I have advocated so far in this thread.
> Not sure how you drew to this conclusion. Check [1] and [2] for example.
> The point was not to have qcom specific compatibles or properties as it
> doesn't scale well. Please chime into those if you have argument and how
> you came to this conclusion.
>
> --
> Regards,
> Sudeep
>
> [1] https://lore.kernel.org/all/ZfMZ9ATxuvONcGpz@bogus
> [2] https://lore.kernel.org/all/0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com
Hi Sudeep, we had a discussion with Linaro team on this and people 
suggested that this should be a vendor specific property since different 
vendors might abstract differently. Moreover, our changes are only in 
Qualcomm drivers so it made sense to use vendor specific property. That 
being said, if you are suggesting that we remove Qcom from it, I can 
again discuss this. I will let Srini and other pitch in here if they 
want to add more to it.

