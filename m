Return-Path: <devicetree+bounces-162247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A85A77919
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 12:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AE0216A5D3
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3CB01EB184;
	Tue,  1 Apr 2025 10:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="D/rhkeFj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186241EB1AB
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 10:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743504580; cv=none; b=FrAqMK+jr4dtTz8+8JVu8V+bzeAx0pSAaYlZjS7RCVufvKc8X3Gyt86pgV4NGs5RGUuym01tE0AR+37QldAuokOsCu2OA/EgSf0g7Sjj7TUn+6IfauDUBVa2UuT+HhJInNrMlXNyCj4C9EGH/gqaGHD7U5iV/OIJuoT9IV9gfc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743504580; c=relaxed/simple;
	bh=OOepOiqFqRlmLoXak5gxjM36EmsSrYTY1w5WKsXtPD4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=FwWD1ItuO7Y4K4jGHNajTvzJmVA3IbBnIVymP5NZS55wn0tmj/ys1c8Rh6z9uuyI8omu/pQjRdeeCa5mW5GzzW1mnYpIA/eE8RUX28YETk23EvZyFPyRM0GYHZHW/9o1vMJB9nlZO8wAoBOtjpU+hOtqhiD9nHySTtha8zKsBRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=D/rhkeFj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5316DwN5031693;
	Tue, 1 Apr 2025 10:49:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TqlHcJmwy5AlQMbkRyoGvlYmnthAkMJYYdoNqJfK4T8=; b=D/rhkeFjJrC4XHDr
	G0+DP3tX0F1DZGVOqZo5S7ibFVSBG9TJvJ0vW+hLfZWw3J9yQGViJVjXoEUnbdy1
	ZkWEPhfhzx4WZNiqFmypRVLzgJ0wgB2jLzOTzBesnQ9pvrYnQRVov9mATKiaOwDx
	MhmOIRFSkqD8sgs50xNI4AcEHPNz9lN1qqykCityF6jzvbiGdab2BZm4dckalX2d
	0+RBoaI8zQxls9aHcCflQ0lbjyVLbBPeSpzRLt3g8h0EkfEe9KskYou9yp1Cbej6
	9jqY3kpHP7eAMqeyVzYg1sn85ckaUrfuEvqpaqs3/2iz3GpzUtCRZmXSBCHW23dX
	t+pjIw==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45qxa7trem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 01 Apr 2025 10:49:35 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 531AnZ3d014840
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 1 Apr 2025 10:49:35 GMT
Received: from [10.218.13.83] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 1 Apr 2025
 03:49:33 -0700
Message-ID: <d5fce388-cd46-4596-b7f7-e69797255910@quicinc.com>
Date: Tue, 1 Apr 2025 16:19:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: An effort to Bring uniformity in yaml file names for QUP GENI
 drivers
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        <devicetree@vger.kernel.org>
References: <3622df25-fe4b-495f-9ff0-eeb59b690bc6@quicinc.com>
 <d14a3f92-4260-4a46-a01d-900e89f74c2e@kernel.org>
 <0a121547-9e8a-4630-acc2-697ff9764b41@quicinc.com>
 <ffaea856-3c0d-46f2-bc54-6b26afb06213@kernel.org>
Content-Language: en-US
From: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
In-Reply-To: <ffaea856-3c0d-46f2-bc54-6b26afb06213@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: iT7Ig5Df5PBVZYpTEVmZHSNL2H3E_RDp
X-Proofpoint-GUID: iT7Ig5Df5PBVZYpTEVmZHSNL2H3E_RDp
X-Authority-Analysis: v=2.4 cv=J9Oq7BnS c=1 sm=1 tr=0 ts=67ebc4bf cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=tf8MKmU2gwl57ggxKIAA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 phishscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 adultscore=0 spamscore=0
 suspectscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010069



On 4/1/2025 2:32 PM, Krzysztof Kozlowski wrote:
> On 01/04/2025 05:51, Mukesh Kumar Savaliya wrote:
>> Thanks Krzysztof !
>>
>> On 4/1/2025 2:44 AM, Krzysztof Kozlowski wrote:
>>> On 31/03/2025 19:02, Mukesh Kumar Savaliya wrote:
>>>> Hi Krzysztof, As we found some disparity in the conventions used between
>>>> compatible, driver filename and dt-binding fine name. Hence wanted to
>>>> share current view and decide next based on your guidance.
>>>>
>>>> Below i have listed per driver file name, it's compatible and yaml file.
>>>> 1. compatible name looks fine across the drivers.
>>>> 2. Driver file name looks same across the drivers.
>>>> 3. Yaml file name looks different for i3c against other 3 QUP GENI
>>>> protocol drivers.
>>>>
>>>> please help guide when you are fine, This is not a high priority though.
>>>
>>> I find renaming existing bindings just to rename a churn, so I never
>>> recommended that.
>>>
>> I agree, its definitely a churn.  I assume we are fine with geni-i3c
>> yaml diverge against the i2c/spi/uart.
> I don't know what you expect of me, but in any case keep all discussions
> public. This was sent first to me, then to some more maintainers. It's
> just confusing.
> 
Below i have pasted the context where we are reviewing geni-i3c.yaml.
Since it's changing from other geni drivers, i wanted to confirm if it's 
fine to diverge i3c.yaml file OR need to change spi.yaml naming ?

As per your ask i have listed antipattern files here.

====
 >> I have also checked for qcom,spi-geni-qcom.yaml, it has below :
 >> properties:
 >>     compatible:
 >>       const: qcom,geni-spi
 >>
 >> Let me know if i can correct for SPI in separate new patch ?
 >
 > I love such arguments - let's find whatever old bindings and whatever
 > antipattern.
Sure, once i know what should be the ideal pattern which is 
unique/should be unique, will share you other files.
====


> Best regards,
> Krzysztof


