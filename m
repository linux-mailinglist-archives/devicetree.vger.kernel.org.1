Return-Path: <devicetree+bounces-57992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 138D589FD80
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 18:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C843EB26D39
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 16:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE72017B514;
	Wed, 10 Apr 2024 16:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="gcRv1oC3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306261779B4
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712768135; cv=none; b=ub/MvJVHL1sprZPbqIUfHTqkIsN9tdw5wixO7RdXro8P+t6qAHiCOuTJU+2UJBhCVtxE28H3krnYa9dctAwlLFXLABvTe6IKENNtJaY9SQVmCq42RGTSe9C2TU2Ip7bSxeEZmUu1gtoRv8TromCjd8u86BqzS33R61mjm4SPDHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712768135; c=relaxed/simple;
	bh=yS9Vxa5LgM/BLQ0FXX6zLUfTP0mZB1sN2QWRMfF5guQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=cd02p65BtPJ/jOJ/L6dDej1YEaiJBkhGlWFwXsdpWSscatmOJZWKzNQacFKyyHk55otPLMmEY4GFvFIlQZxVKSiWrcipN+WR4hTZ0OEovQLUbOQYlShZhZdAF1rMVcQJSlCtbEqoxaNr6/pqG9sZt8MZ1JWzw4c4xN3dEMluOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=gcRv1oC3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43AAOsx5026479;
	Wed, 10 Apr 2024 16:55:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=27PJl3RH0twz0NzPOdu+K6ewlprPg3RVLdBS8erL27E=; b=gc
	Rv1oC3zwK6JupYQl69bDObzyuD9S6Vw6bBctwfZ04FLHV1QJ1qgBEc7uRPjgL2Xc
	rAiKcMw4rw89uvXdTNzdablIsrqjOjneujDBjvB8khuMF/kLuOhgGY2N48oxPI+R
	9nZ5NHIXWMoqFX1SDNkqnrdW5A7SUt7+lH+ybS0PB7lAqg9m12VAaoR57j8sr7L6
	+J/XGeIakOYVhZ3S/lYEkE3rQMoorEGulkv5oqweS9gFNCYCQhfIA69zy6jW6ohP
	xLAoGEZMkEGmDYKMmDaY20PzzloC61jRQp1ct+lf7iQuw0Fn82cdzmCV9sMWA2Mn
	YDeKwTFlVmD/FMSlKBBg==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xdnqtjyv9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Apr 2024 16:55:26 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43AGtORY018505
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Apr 2024 16:55:24 GMT
Received: from [10.71.80.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 10 Apr
 2024 09:55:24 -0700
Message-ID: <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
Date: Wed, 10 Apr 2024 09:55:24 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>
CC: Trilok Soni <quic_tsoni@quicinc.com>,
        Ulf Hansson
	<ulf.hansson@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>
References: <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus> <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus> <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org> <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org> <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org> <Zfm5m2zp4A06ZunW@bogus>
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <Zfm5m2zp4A06ZunW@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: LJAjYfHWsdGDhPsK_i9JCa9qtYg3ZEaq
X-Proofpoint-GUID: LJAjYfHWsdGDhPsK_i9JCa9qtYg3ZEaq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_04,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 mlxscore=0 adultscore=0 impostorscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2404010003
 definitions=main-2404100124


On 3/19/2024 9:13 AM, Sudeep Holla wrote:
> On Tue, Mar 19, 2024 at 03:41:40PM +0000, Srinivas Kandagatla wrote:
>> On 19/03/2024 15:17, Sudeep Holla wrote:
>>> I am not debating on the implementation just to be clear. I accept changes
>>> might be needed there. The $subject is all about DT bindings and what need
>>> to be changes and for me nothing, just use existing bindings and if there
>>> are issues there, let us discuss it with specifics.
>>>
>> How can changes to dt bindings be nothing? All the resources
>> clk/regulators/resets will become optional and a new power or perf domain
>> will become required for each device with firmwares that support SCMI Perf.
>>
> Correct, sorry to miss the point that few properties are now optional from
> mandatory before. Very good point. I was so caught up with the addition of
> the new "firmware controlled blah blah" property/compatible that I missed
> to observe mandatory->optional as a change. Thanks for correcting me.
>
> --
> Regards,
> Sudeep
If there are no more questions on this and everyone is on the same page, 
I would like to conclude this thread in favor of using a new DT property 
'qcom,firmware-managed-resources'.

