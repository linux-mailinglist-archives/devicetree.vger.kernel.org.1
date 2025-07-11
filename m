Return-Path: <devicetree+bounces-195445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C76B01BC2
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:16:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8EE77A47FA
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948B528A1C5;
	Fri, 11 Jul 2025 12:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S3GWZoan"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EAF1F09AC
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752236188; cv=none; b=nRhz5FyviLA8PrylelrZFRB6pYv23+JSf+3tOvtNia9XVjE6xFjARVc7YCL1U51slwkEauw23kBgOB6egq9z2YlPehNCzRR1e2f8J190wmXpQxuIKNZ95M6h7t8dXBazskJgFiWeJqWb8dTrlVo6hvTYLApD/PDTipnnUWLowPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752236188; c=relaxed/simple;
	bh=jzx49LWasGFGGlxR7Ivay1UaWJmdLn3HEDsV3AUB9C8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hXZ1fy0IXzWFxQ9hEBlDk9DIG4CZZA1JRY0vYOvDoxgo8Y8E2ericl+lzX4t5w2I4D1MA+IkJ8rqYDG/VsC9xUpL5PvuGItQ7uLryEQAiyE31JUTo5n+Au5mUXt49XoFuDzrbJSvaZGrX9tjvqTnAmtLvLih3Jl6whJZQNBOiSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S3GWZoan; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAor07029977
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:16:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Ptpi4wEY0VGWKqhP6TpsQQpNA7vOEtkh/zteGyElO4=; b=S3GWZoan6d/rpmox
	q4U0H4l9UhJz6raT1pEsDusqo+f417src7m+DQAdVZB7kQtM0gQ6fbZibMCLMqIq
	1QqgAhdm84nWqNbsz8yJj0/L45TNBFWPxv+CyUbL6Kva+qVU+6lxMl0dPitizGEs
	MCYmTVlYh7+LmkmuW4iyW1sfVK609ikHEnfRn0BgQ48Oifo2Bd5Bxo+uEwyDSHBa
	FuEKVYdf/pHAvU0XpV2a4POtgq4z2KkQNUypj7blCgJaHzEb2HhLcDvmBwXtXyru
	+PG09gTglWi0/wrXXO0K1QrGwIIE1xJJ3knryTZRJ5VYKOlPVNJw51ZLO0ht5JY8
	a+4ocQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smberjmm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:16:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7dfd0470485so15657285a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752236185; x=1752840985;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ptpi4wEY0VGWKqhP6TpsQQpNA7vOEtkh/zteGyElO4=;
        b=LYr6WBy7Y4wP7J0691Vv5JeBo27STVGZUmvOBJXlNrtFSESlHvvlkJUDeUkwEbp3FP
         GWU+tR3jRWdzYpqI3Nvu9vXPBoOODQNRHqne+WjNc0KNxjyCye7SXadmTzjvqNHUkRI1
         BHh+7kyN9tj8rIWofJHlL0vyJXqIE00BAnvYNDs7vOfh66YuvYtf+rZHMi1DLUlFfYa/
         ztoDNA6MAC+Za0XMaRXgBM8Ofl+bZ4MOpEZaBa9WLlNvu/R2NCvTAz/N29C8AfJMrE2r
         tCHNdZ8+t8Pv3MoCdCz/tP0otQhDwIwKIE3vvK4k8J0KdAnrM6rVVeMk5yF499DjICKI
         xviQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8Lr0sZATJO/PaPKvxX9GWXi+LmAPs79J5b6oO/jV37AoNbA54gtyNIDA+UGfpGrSlPRrbB3HC3cHr@vger.kernel.org
X-Gm-Message-State: AOJu0YxPtmBHyVi59sSFBr+QCCoJPClrVIyKjh1+R58bv7wuiPZWEpWu
	IP7fuZx1hVOwCSbLX31NTIhSjdkmco++67qWw/8CorWpGOC+E9c0syJrDRqHUMw+nxqQCYk9VmD
	RqvYndhRnKTnLZ79Iw1bIqgoPkKQSKt9MLOrdZtw6QecSuwAiurCaMehvHIYKoUG7
X-Gm-Gg: ASbGnctLoh8srtIWX5q4ktV5d4JI6aL0LbVCdA3fDvDasmB8YmFxXMn6VDX2BmmHbaB
	RpTXHkrJREnBAFud0szLjC6ej0tEKLUT/s/pzWZ+7Hs7/3PAB9pldXDZ58vG0R/5Ol8K1UR/BoV
	KcTlv4nT4QWQrNfQDFspXTZAtvm7klGvgn9fPLL3FCfkEHQh2FquUp7tiZ6tqN0LIsrgPZN2jGL
	5DeAiRf7FetU9eqKw0/JwyFBwBYQTK5MJUJ/kFKg8anBesGERR2TLej1aBPeujuP1AD84yK4ECW
	pDI+HdC/W13z9T625/Q8u7QplPlwB1YcSdHlAOAAXu8X8n4Dlgsh8xYqyCnGl7LCnf5Es9hqpQx
	dkUMFdOMKyKf9aLqBFzGB
X-Received: by 2002:a05:620a:4004:b0:7e0:1c52:685 with SMTP id af79cd13be357-7e01c522468mr49299285a.5.1752236185095;
        Fri, 11 Jul 2025 05:16:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwKjT0BW3S+d8V+GzTuZSU/tPNQqmTbJ/pUFGmyL6fSlH8EpT5RkkPdl3aoxFddiWPJQIw9g==
X-Received: by 2002:a05:620a:4004:b0:7e0:1c52:685 with SMTP id af79cd13be357-7e01c522468mr49295685a.5.1752236184618;
        Fri, 11 Jul 2025 05:16:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8265bbesm286528966b.80.2025.07.11.05.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:16:23 -0700 (PDT)
Message-ID: <0ef83a1e-38c3-41bb-8fd2-c28565f2a0ba@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 14:16:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] dt-bindings: clock: qcom: Add NSS clock
 controller for IPQ5424 SoC
To: Rob Herring <robh@kernel.org>, Luo Jie <quic_luoj@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250710-qcom_ipq5424_nsscc-v3-0-f149dc461212@quicinc.com>
 <20250710-qcom_ipq5424_nsscc-v3-7-f149dc461212@quicinc.com>
 <20250710225539.GA29510-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710225539.GA29510-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4NiBTYWx0ZWRfXyHF1Vjmh43Tb
 j1RLHK9IxNadThqmfjKpeokyUyG8WLmD2ijkMtKLVlAPo8CRIzVF1LYdgAm/2UEKGaWW62qfokp
 gfjFUXl4C490BWtLCjBl5rbmbGQHDXo4a1AM7w8WAZcnmvqQOP6lGN3G9t4Zq41w4zxInQCCcXU
 7v34nKYW/DWH+A9kI4/HLR9Oi5D64qzfgZF+k+WT9cwnH48hLyJU8LP2qlzHrfL72IiT6Z9q7Dc
 CamfoJEgbBPh8xBnqkTzaaCD50qne6+/7NqoFxxbn5cE7bmlT65kpeftpBqAvK2DdrlH/M32cpE
 GPiveFb6w15CRHbBFnih7VOiOfgIdP9K6hcmWz2EGcaAsiQvWAZL2CoBojtYeDV6ZixmXwVTtpF
 Z5ZATkkjDfXxm1e1cYfiIgYTbq1tPbntxel19D9wBpraLP+NojQMjOc21usAIqUos4BMFNR5
X-Proofpoint-GUID: 0hmZEOYsogTgM4McZlHsx1HAEkRUOBoH
X-Proofpoint-ORIG-GUID: 0hmZEOYsogTgM4McZlHsx1HAEkRUOBoH
X-Authority-Analysis: v=2.4 cv=VpQjA/2n c=1 sm=1 tr=0 ts=6871009a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=AWTENMeICeJJ9JQOPWgA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110086

On 7/11/25 12:55 AM, Rob Herring wrote:
> On Thu, Jul 10, 2025 at 08:28:15PM +0800, Luo Jie wrote:
>> NSS clock controller provides the clocks and resets to the networking
>> blocks such as PPE (Packet Process Engine) and UNIPHY (PCS) on IPQ5424
>> devices.
>>
>> Add the compatible "qcom,ipq5424-nsscc" support based on the current
>> IPQ9574 NSS clock controller DT binding file. ICC clocks are always
>> provided by the NSS clock controller of IPQ9574 and IPQ5424, so add
>> interconnect-cells as required DT property.
>>
>> Also add master/slave ids for IPQ5424 networking interfaces, which is
>> used by nss-ipq5424 driver for providing interconnect services using
>> icc-clk framework.
>>
>> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
>> ---

[...]

>>    clocks:
>>      items:
>> @@ -57,6 +61,7 @@ required:
>>    - compatible
>>    - clocks
>>    - clock-names
>> +  - '#interconnect-cells'
> 
> You just made this required for everyone. Again, that's an ABI change.

In this case it's actually valid, but should be a separate fixup change

Konrad

