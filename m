Return-Path: <devicetree+bounces-192106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A36AF1659
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 15:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D27AB3A080E
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E53274FC1;
	Wed,  2 Jul 2025 13:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fmnZwApL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03C2267387
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 13:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751461251; cv=none; b=pvaf+nMVwEBTMjs8MpBOGiCa9EgfKY4XJJpAUbLl+7IV1BzwKOJ4DuwA6/6nz2c9VcpoPpr1eHeoMSG204uwzd/cNCv7e/zirXIBQIA9QzgNPQL076iPOrKCADa/XUPkruwHcCjueontqmPQDRjRwXy4CgBih0Gr4qpS3kQZP8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751461251; c=relaxed/simple;
	bh=lV32kChCuVqH8yCvDu+qF7ZrBKPBDV6XI5jEvKcTek8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=chsL/74w9MGSs3gnDPH3T9m9aA6u3VR4xDeTiFUxHVA7uY5Sf2RNBK1f7MTD/EK9glRbadcFYWlZMkzeZ6+SjUzkDW1cVavLefYMb8yTD4BRba0ZNqVUD08xhx4/O4ZZccPMLNvktWFFcMb258Vg5zZfMH71PjSQ1TZspjIDrDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fmnZwApL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5629DPZ6022207
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 13:00:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T3NQ7HW39R+Gt0CitY5eJYcMoF47O8lIW9qMV+Vh880=; b=fmnZwApLB40IE3D/
	m+ovqXGXHqi0C0RIEETMaMMGq6Ehu0skXl6t3s5SqxkyuDnCa1VAotZDdbzhZouT
	0TvVcTJmmnz4gP4gRh9K8kSvaqfKpwA8C+qnPNf8PGjgrSrLkJdo8KMNtdMJFGm7
	GzOF24ZKBOd/jrbuazz/xbgal8ae2/zajSeod3v+yd1vFDDxNovhMFnHnQo0JJPK
	8k5GmK+F5hZLKeonIzqBql56BE/FzHkwJUovrqHRvX8+wJ0AEz11o3IJ0TdU/8uF
	R/XavCrjLShOHvx6f4fA8R1jaGYB0J+jG8mMfx3rfg1iSGFR5qftO0uUGRRnr2JA
	YtHOOQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7bvvp9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 13:00:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0979e6263so39373085a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 06:00:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751461247; x=1752066047;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T3NQ7HW39R+Gt0CitY5eJYcMoF47O8lIW9qMV+Vh880=;
        b=bZ66M6lkQfJo9+ZkzpMTmpaxYu9EH7kEotYlNe8HsUJDMpdEn89m4VhnggVOB2AuQZ
         V3Tc+w1zwhiCzDlvu9EPI7pgBZQ3ceEpX3RpamTS6+8jwEVidfGfs/akIugKLZ2+JgwO
         AL5TlgykrpYx0Ykrc3tbhZcYSn+QAw4aZgeJalsvZ+e6VZpK6DmuodIg8z5SglFTvl4U
         WZ8pRnkj06M+/B5aiYQ6DCoIfVx8HUgJl+GIQf+isDA8ns0n1KCYrDq+/tWItVMO+jEO
         hjc8ndFWdJkdut4EJbIOVG5hbLL0BYAs/ZMFVSiUoJfB5nJvLXJMYPZSpdShqmRja7b9
         PMpQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/mHLRQ6N0k5EycEGTroKaPMi4wkSNO861hm546sbsAbtg74FoH4o5LVnAEhazQnGTU+lAZzFqtbS+@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj+nUcup+3IuuLDV35SMm0BB/PwoIdO1HNsk3039+I6i3/Glsc
	Z3+romSXndjVRnpJ4qsiOoYLVdnIecMIIKR4GCT8q/YJh+RRZ6uLWTgRuRf3YOqss+x6QOz2YIH
	216yBxByuIgSHkebTF1wPV3w+Czo/mXUFtLGPNDbPn6EzCYU7nFjLxTbGhokisSBg
X-Gm-Gg: ASbGncvdZqBRAQsNtlshnAtEytCeHqQrTtt4q2PG/jAMxJ2ZZHFtu5rPCqX+2pZYB4M
	hqkdGRt9R4LbkjLR1+oRo2iYspj4pnT7+yXbOE6d/rluV4UIeb5R0k3WYyDDqHmhVZ528MkWh+H
	Y5MezDA6zfUsLGRLA853mw8ufn/2o3iu/BbwhpDqPTa8n5a0Hct+LMJ4zZsHbW7c93NlBXndrHI
	DScSfnuAxAkU1pdX4bkYyLYfHJIKq3gzktX6CcLuY6xkwiN0EA8WieMCzDDwBIZSnz3fqpnV4jL
	by1UvnmCjN9kOGuXed0McvXpB87xUzfmo+dPXS8x1M4s1yCIRicQuu3CqlXjjXiJfcpOT30Qje+
	a0to=
X-Received: by 2002:a05:620a:2552:b0:7d3:f0a1:2f3e with SMTP id af79cd13be357-7d5c464cfeamr150088085a.2.1751461247139;
        Wed, 02 Jul 2025 06:00:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3/BXMk7FAeZKeLVzLwjtOhnzyC65WEm5pD1H2XXARo1S5Jr0K/z7PoCIEXLabu0cpABZM9w==
X-Received: by 2002:a05:620a:2552:b0:7d3:f0a1:2f3e with SMTP id af79cd13be357-7d5c464cfeamr150084285a.2.1751461246447;
        Wed, 02 Jul 2025 06:00:46 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c01636sm1079292166b.105.2025.07.02.06.00.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 06:00:45 -0700 (PDT)
Message-ID: <0a646e08-8007-4bc0-9324-fa1d40b90d20@oss.qualcomm.com>
Date: Wed, 2 Jul 2025 15:00:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: ipq6018: Add the IMEM node
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
 <20250702-imem-v1-3-12d49b1ceff0@oss.qualcomm.com>
 <f66611e3-2961-4435-b276-7f13041518cf@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f66611e3-2961-4435-b276-7f13041518cf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6qoSf1FBYrXTq-1SzXO3_AryM--muGUo
X-Authority-Analysis: v=2.4 cv=RJCzH5i+ c=1 sm=1 tr=0 ts=68652d80 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=jZhe5MNW9S75RuEgyRIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 6qoSf1FBYrXTq-1SzXO3_AryM--muGUo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDEwNiBTYWx0ZWRfX+hfX08wicTuv
 H05HUe4CELWFbVU7IENohOmldsZrsgWmQ6XQRf3L62jvLFm6a+unlhTEjBHusOMnI4HK9AB4fvL
 jTe3TSj4Mh6oE8Zr8jTvX5kgYjK6lfRfQxYKu2j5be5DwYyC9LXmAXyfP1iNA6ojtQ9zm9qCgLB
 nXK3/f0+T8smmOdhM8+L9n6PId2KcojAfJtA5Pu25gD8P2r8bUNPGYRdx3L4IhCgNrJV+rq81bE
 udkHAjV0gnis0MGJDLaxG4sEgKjkC66R2gONemtL4F7AS/T7frC7rrtcpRs5JQBN4TTDSj6h7aK
 rHMknTPICppwKrDrm03oG33nq+k9svat3w8mtMh18WqKwlm/VtHWKByxycBG+t8y3gLmUIsxYEU
 M4frlX9RYl+/b0Oa8aaD7XgewMXtydOCcn4PiwQDASvsSFn+5V+ljNJMa4feaNneA3/VTkQa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-07-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=957 adultscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 phishscore=0
 bulkscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020106

On 7/2/25 12:50 PM, Krzysztof Kozlowski wrote:
> On 02/07/2025 12:17, Kathiravan Thirumoorthy wrote:
>> Add the IMEM node to the device tree to extract debugging information
>> like system restart reason, which is populated via IMEM. Define the
>> IMEM region to enable this functionality.
>>
>> As described, overall IMEM region is approximately 32KB but only initial
>> 4KB is accessible by all masters in the SoC.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> index bfe59b0208415902c69fd0c0c7565d97997d4207..7eca5ba416c2ef5ef1c4e0eb4f58f1ca94fc92f0 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>> @@ -659,6 +659,15 @@ qpic_nand: nand-controller@79b0000 {
>>  			status = "disabled";
>>  		};
>>  
>> +		sram@8600000 {
>> +			compatible = "qcom,ipq6018-imem", "syscon", "simple-mfd";
> 
> No, this is not a simple MFD. Where are any children if this is a MFD?

IMEM is just a block of SRAM shared across cores on the platform.
It's present on all Qualcomm platforms and usually stores cookies
such as reboot reason.

A user would be welcome, but I'm not opposed to a lone description
either, at it still shrinks the undescribed-reg-space-hole

Konrad

