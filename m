Return-Path: <devicetree+bounces-256805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A3156D3A5A8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 487F03000926
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE59357718;
	Mon, 19 Jan 2026 10:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KU+nREVb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hKCiTkGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE39733B96B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819814; cv=none; b=Fs42cSPTH+U0h69PhivuAsPIf052fKSg51YMu4r/LcSqQIlipGZFKZH202bOnqIhfL8ZqIy98qj1EEEv9cupluiYnDKMrOPFoOhkaUUAJx+rTKUwmmjn0i+GjKeNi02i24Xi60P143MlWC0f/UJcJRNzTtjAYgVqehdh8QNXo/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819814; c=relaxed/simple;
	bh=UWxsxlQPWGgXq/DOlhplQi/GnONVR1tj/vYqqBMh/aQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FS8l4HSFAkV//61DbbeoujGAlde7Mazt8iv+VuwGYVPnyET2yXVophM7rWcncjdES6kKAXPsWWvucHBik6XythxTCgvydb5QkJgLCYTzxFCEqZB+be8J4q/U1Wa29O4WBWnkTeXCRPbEOGKAzW/1nR2flm+oHqmkNIer9pjdswI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KU+nREVb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hKCiTkGc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91Ddk1150083
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:50:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i9dniL5q6VIDL4TJ7kyGbe4OF786E/8Yp0h8WVC/iQk=; b=KU+nREVbcpu+p5DR
	Qayru6y3UjQn0c2L9RhQwZA7yFeJg1Ux42i52IqwKKAodR/g8Q60neOpDXqwJDj4
	wubpUNqymreWiMGTf1VkJnhyBJWNM6G00sKoyS0G4jPjPtaPkFdulHTVQ0CEmfA3
	7k+WQywA+WyG6SYfpsFkP+2eIRFwwFVWT8UDMI90I0Ar/aGb6zjXvCg4O+obtpFf
	661Yh7KsoZ1+rdfs+B4gZ8WsROptRg9UpKLqTzba01Qo7lmCnniZYNulrjlsjnnS
	Xg/WrmEdwaLZSvKajfH6MzgQzbdOJEYY8fhTPDrxoW1Z+yyzFF4e/H6QDJbuLJ9T
	PmekTg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br04e559w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:50:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c533f07450so99753685a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819811; x=1769424611; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i9dniL5q6VIDL4TJ7kyGbe4OF786E/8Yp0h8WVC/iQk=;
        b=hKCiTkGcGjsvlCUteYC+aNtm9LaRVKRF8OjXFocMDG5dp9zv81U5tptAlKr17cDRfa
         v5VASey4wWGbJxiFCHUBGVmGDFrxEe6qYyd2HcSa6Bl76I8EENF3HY6rfElZzdLGljMH
         UPf1jwism4nl3YC5ACnrvcDtbjdmNWF+sBzGgun0d/yD1pyryi6ah/wIBaiJKFbYXzJG
         P180BMVi1Pcbk6+DdVlkyKdazpI6pU4obs4HsrhltVNd1G4SnXFTLqXGcLdOPDtfcBhU
         hvVWILQrYn5h/I/rUETVNeskwsO5lhKGRgAjy3SsjfGZH0fF1UZqqrnBcbiaY3jW5+OQ
         LVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819811; x=1769424611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i9dniL5q6VIDL4TJ7kyGbe4OF786E/8Yp0h8WVC/iQk=;
        b=gucCu5xCjmeoBtSXL5DYlQIg2t0uKNmvl/0lCpUQLy/VZkgc+Y+OCIk4x+iqQMTkit
         /FN8N4E9UuVqTVKZf6M58OOJN2cbj+OE5NVsaFEAmq9ncrYX7LcD33AmZaO2lVpSNOg9
         pxpG04jgmpmSplnKp5D8XnwV1oyoUVe4434b/9Yr5oaZkkIJfQE7szwu6tqPy/QkP0N6
         zF07v3ZNegSY0ndukd6MFc3IjJITRjxrOtyXhfezMO7xOfid4KjrugIbZ54oEr6Xx/wR
         bVmeMPObnqRb66X2055qm1LNJbmcoqhHlu74sXugGOPJwVMGeNStLyPvIzw6qLMOVjpo
         6j5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUloeIljqrxjm+esWvaeVchcXsppQxIrYgMqlq9DA+/0d2ZTNZqpaZN3aBFw9zK2nz9FRgR3LrtRNdY@vger.kernel.org
X-Gm-Message-State: AOJu0YxHj1wUYab6Dho4nZBXmbnMBlhiXNDV6THPshjdIQbimHryUOni
	McN3q77En1/7+L2rm3odpoym2bFqXJqpN7EPtXUJKH0hJ14B8zPPaB0SeYbmX0kKnAm2nawSq7L
	Wp9sLRPlR7Q+slQ4zrM61qm2abEftHnV6jLztZ1iLZzhR1WQWOSEl7UFZizDz37DQ
X-Gm-Gg: AY/fxX46VXXcdHMgnbwoldiJzfO6TbWu5g3hYQOxflqvF233K+PYtkXIKMMmWaryyP/
	nHyUOOzmBsdw8Cjh6kp6lSCFx0F2Y0fETJYASIg/dgZ9xJUZzQUPmcIIsx0VX+6uXc0yI3Xyg7N
	+kygkp9sFmztaqegMMXDHtBME+KWvDpo6oMI0PP4/4nI3yrDdiI2GCnjjZmRSjKCSg9tW3yeKhX
	nJjGWIHJKN6xcAsfAtW/sUSwUdNYOj/wmB5BaE4MmHOsijagBKab7wMNX+Cj4UnB6H73o4rGtnH
	fIR5BOFGKVVdDpMO3Uhy7Lhh89vH10zUn92e8YYCndZWHL1lhJRO7u+ISAGzZRCFvp67MPoJjvs
	/peR6c09sOb6SU6hUJxtzDOq6yijsBDLwDcTBjHu7bYzbMhA+uqqhbDch6kWE38udir0=
X-Received: by 2002:a05:620a:319d:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c6a66e36efmr1210480785a.2.1768819811097;
        Mon, 19 Jan 2026 02:50:11 -0800 (PST)
X-Received: by 2002:a05:620a:319d:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c6a66e36efmr1210478285a.2.1768819810597;
        Mon, 19 Jan 2026 02:50:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879513e63dsm1054358566b.14.2026.01.19.02.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 02:50:10 -0800 (PST)
Message-ID: <e4761a54-a172-4dfa-9223-0013913bea08@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:50:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: qcom: Add SoC ID for CQ7790S
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=J5OnLQnS c=1 sm=1 tr=0 ts=696e0c64 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=9D00k2bvbMmwnaV9gCMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4OSBTYWx0ZWRfX5vC09Isz6MnE
 uhRZZLECyTFNmzf+mmQjwbMwsvQoTJj2tQ5mydFl0PQuDvmqgaxaEeCGabxjvNzdVZod0bnNpdV
 Cm7DGQYIGz40fHJH4bwdwlvjg/Uyw/i3tvqs7IApBX1vK8WEX9ZMgk6NERnYvKYnoI2gZdwJP+h
 RJSEy27AD7rzUW/YXsAMfIosn5gRau1w2+XTZB8epBd1fYQ4J8YckkAQTV5XPG3evJG7YK20out
 kI239ddAJY1xDHxHJwx0LlAgfe2cW7grYL3zqEXOat69Hlm7pRtVczeHEDZT46zoZvkl/+ULZGQ
 vo+dVHgyveqADK5465jwxEYORkDihbLGVuzuD1i5LkmXEvXZrFVuetuWm1KCYMEw0ufjegGlQOI
 TojpmuFRDanL9qlXzUd6JDww+nkLSGrQbaxu6yCwWo0ZO735v3KnF8/JkWJRW5KWEAzVMrAmFO+
 T2XvuDCFc7E5+zlOldg==
X-Proofpoint-GUID: FuOI7xkq0fHVNqIeqOoatRyHxijrK1Vb
X-Proofpoint-ORIG-GUID: FuOI7xkq0fHVNqIeqOoatRyHxijrK1Vb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190089

On 1/19/26 10:59 AM, Krzysztof Kozlowski wrote:
> Hi,
> 
> This is early and first/initial posting for upstreaming Eliza SoC, e.g.
> CQ7790S IoT variant. AFAIK, there is also CQ7790M variant with different
> ID, but I do not have such hardware, thus only "S" goes here.

If you're sure about this marketing name being assigned to a specific
SMEM ID, those *never* change after they're assigned, so it's fine if
you just add it to the list

Konrad

