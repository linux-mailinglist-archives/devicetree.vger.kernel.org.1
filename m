Return-Path: <devicetree+bounces-58012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0DA89FE6E
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 19:25:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 614A71C22643
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 17:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D741217F36E;
	Wed, 10 Apr 2024 17:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="fB2/9ZSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CB917B4F8
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 17:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712769852; cv=none; b=S9+xUpwlkHH2cqwcE/Mv7/UEsTZ0YP0kwSERSV326g2Vx8rxbHLwaqm4LX/CR0lPpCJNBwajFu2hqUCcMyznRDnUKYG2b4l+J9JMV7NgGZc8u03XyqT0joq2wRyPmhf1oVPa/DOHh/Nawnmv0zQhELtMUOh64TIgYRctpKmRY4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712769852; c=relaxed/simple;
	bh=T58qNytxxfzTycOisnq+VRw8hxedCluwkFTrhnjXoOE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=BInmv0j6vh9cXjQF48s+H+Nroz2FZlLh1VqNGPbHwqPJwNlY2VeOBAb4n2Qf7Tw+9NwKQhIFox6VO2BSwmud9BS4sG/jq4+fL4f6K3SZ5cCweJNbRxj8DJzKfEJqR4hFotYAS/viu5Au1/wskKDqmOiBCyAInwVlmYxcYXmLVHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=fB2/9ZSE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43A97l1U016153;
	Wed, 10 Apr 2024 17:24:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=9gJQgFd+qcYRXpMqMooXX1Nm7TdMKnQKjdYT54V39z8=; b=fB
	2/9ZSECsZOTT+U6mbks9MUTL8ux3njYJsrbEfvk2asTQhqcSrctbEJXk1tVHdP6x
	5EgOGqX6HDFjmPMYGaQr+cqKAG2pmY6oSlEK8jd3NDXAufPBXw3Nr5QGTPGz5K7L
	w9eZJA5JVu+OShLX7Qqdr7PEvxwiBswIVGgyrmgveNBTJf70gTwGI1c/3ub13ayF
	b1pQvcGSBKV73q7zI2G23CI0ZfO9Vod77PjIzpNOIzXG20FTykXKBhC1Xql4Ir+U
	LPrgHqOq4kl4di5yJHcdZWV8I4M6zVdXJ/oI2JBBa90VULh3O+7TCDBfJwFYf/Kg
	6OxZ3Zva6tB1RAYkNoYw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xdquht9mc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Apr 2024 17:24:05 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43AHO3jR010022
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Apr 2024 17:24:03 GMT
Received: from [10.71.80.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 10 Apr
 2024 10:24:02 -0700
Message-ID: <ae74fd28-9658-4461-9b4d-e31443e7d377@quicinc.com>
Date: Wed, 10 Apr 2024 10:24:02 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sudeep Holla
	<sudeep.holla@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
CC: Trilok Soni <quic_tsoni@quicinc.com>,
        Ulf Hansson
	<ulf.hansson@linaro.org>,
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
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
 <afc07c5d-640b-4eaf-94a2-086a6d43d712@linaro.org>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <afc07c5d-640b-4eaf-94a2-086a6d43d712@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Ne7ZnHdYmkdAxUUATh2NaX5ivzx7ryCE
X-Proofpoint-GUID: Ne7ZnHdYmkdAxUUATh2NaX5ivzx7ryCE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_04,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 adultscore=0 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=791
 phishscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404100127


On 4/10/2024 10:13 AM, Krzysztof Kozlowski wrote:
> On 10/04/2024 18:55, Nikunj Kela wrote:
>> If there are no more questions on this and everyone is on the same page,
>> I would like to conclude this thread in favor of using a new DT property
>> 'qcom,firmware-managed-resources'.
> Just to recap my earlier statement, because I am not sure if I got the
> answer (if answer was provided, then I don't forgot... sorry):
>
> This is a new hardware, so you have a new compatible, therefore any
> additional property is not needed.
This is not a new HW, this is the same HW with different FW and 
interface to FW is different too. As you can see earlier discussion on 
this thread, new compatible was ruled out since it is the same HW IP.
>
> In other cases, just use existing properties, don't bring a third one. :/
Not sure which existing property you are referring to. There is no 
property to the best of my knowledge to deal with our scenario. Are you 
suggesting we reuse "qcom,controlled-remotely" property that is used in 
Qualcomm BAM DMA Controller for our case too?
>
> Best regards,
> Krzysztof
>

