Return-Path: <devicetree+bounces-178901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F312ABDF90
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 17:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FAFA7ABD43
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 15:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 010832561CC;
	Tue, 20 May 2025 15:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o/bD3Kjv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A2F2505A2
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747756297; cv=none; b=pXrqbVa/OaFgPw/G9uNiRjf8sMt+imlthwIC5JZirVK/Xv6srwpVry1I8gn4VlCl7CtkLvfHv2vt4eD2KLN99T4+UgKIe0aG1NVk6As8emEYK9uaYVJzOl0/lk3aY/qdcx+OiOqL3hkBMxhC028i72SZtrojegtHoGGrdWq+7Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747756297; c=relaxed/simple;
	bh=Y7XIAV4s7+6wpXXkG3MADoOCdShuSnlmVxRIVHAv5jY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q8xgXQu0vi59LKSaUDN1dSy6qOCrmepua4fc+aL5Bcu1GujmsvNAzjQjbILtcaDO51OAXi5y6OTWxYkJeiFvHLT/4LGopULhsy4lO5BpC9w/RfQMYbp8KK6LxvgeAV0GseDeogmeixJDQrGa57FmgOBbhAIJHSfx8a6knHEx7OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o/bD3Kjv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K7rpjd021031
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:51:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BVm8hj3QTMzoHvzRpuBZ/yanratkrX0/Rk3LxJxI1yw=; b=o/bD3Kjv4Lc+V5iP
	ERgXnF6DVdKRaeZTlFKdk1MN7rMRkxNzBp302jufkSm7h4EkP4utOORMEr1wAxQu
	7a3EzN+Trw85MVhowo8PJ4AH9YW+7Bf96mUH7BFJ8Ygu09krf+DJ24CPQCx5p9ub
	Knx3vmDkl8V2aThu4ePwqyNXQXATCg1m+w+VPX3Yzy5ICNCm2sp2v5qlUuwimXcj
	C4sQbuoA4s5X57F/YIhb5AuMPdIpqhczaDbc15bvz47M5dBidCCRDpDzJLku3BkK
	3qLDMks91uk9dTnNKP/JZUhnTSS1Xc5z6n0ec2Nbzgq02XY8aGpV7m0tphDuVD8g
	nJvsyw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pkra09w1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:51:35 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5ad42d6bcso164907585a.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 08:51:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747756294; x=1748361094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BVm8hj3QTMzoHvzRpuBZ/yanratkrX0/Rk3LxJxI1yw=;
        b=rPr5QYz8cMBcFH8WvtbepfhJgqMOhic0b+eSVKRTJtBIflMpLWtNpHREcK4GwzRMXh
         G+aoVhbNJRvaEZvMnNusMBIqzNpy5c+VRsebz33kKglrSnRprcU+ILsa2WcJ7H5rW6OW
         OrlXQ+oGHQ7DwhAqsL3NpZk2Mo+njtBu3XgN5peh3Vc/1fIIQyPnlIog2m5NJNrz9sVV
         A3/jsiMxf+VyYXGosakZDL4uIH2RooFXzRp9sEZoN1dt18A/dUwIQ9JThPpyqgMr3Sr8
         0zEe2zOxJPRK7JdwD7td4bDyKCF4zQG6spYgBz1uRDk6VlL6Ch4x9k/DP8ElT7Fs5zyq
         LG0g==
X-Forwarded-Encrypted: i=1; AJvYcCU4wRZP6YMn61E1qk5GCoYCrB5XfZy8z3q05Lt+JfrhK2mtyikopOxyXG4v61UtLUyps6rm6d3RyJg/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi3zrv+KHLN75RxKcrJgV/Awy3dpYGQjJl5WTo7VllTZdvIKqX
	hOnI2d93Vt7oyuStJRYlSOaQbwdyeZgB162K1qbhMmE98q9NYDbMYvWqNHoGL19Tx9cCyaXQILD
	DO7v+FE5V1ht0LfNRoGThDDg971zUTW9wBC1/bRd26pP976nlMwV35FN0XxES5kRp
X-Gm-Gg: ASbGnctO3i3O2m7IPIep2HLFoMKThHqOtX+4hzD07FWAULqiZyem/x5l/yYWGp151F4
	HwNBMtRfpzw3k1hpckwA/clXrFVJkdaPZR4467TBsEvCrUXkXAEUGGQDZgma5DPGohe20Nf7BNT
	MV3SfdsGtj9GUtHmh5+HaiuC6bByp1JVCUzzXGxoLs3O7fkUweoj86+xzuhDa+GEw1ghW7HuSgR
	tvVmOJFPaI5Xe/Z0kYsQIleSU2CAte/Xz6JkOiWZLDhiX8Xv55pXvFRJxe8mz31rVLrSuySsu1v
	AQuAFlcCWQPuq8J1ukyHyMhJUcrJE7de92IwMO2hLNv8g7gBNZPIWT5rInRotGnADA==
X-Received: by 2002:a05:620a:269f:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7cd467bc781mr1011298885a.10.1747756294283;
        Tue, 20 May 2025 08:51:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM2t5Fu+aTAl0x5RLl9YcGLpBbRfLqpqLY1GnUkrm0pYUTylXaIZvlzDkTHik+RLtPYhcfyw==
X-Received: by 2002:a05:620a:269f:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7cd467bc781mr1011296785a.10.1747756293733;
        Tue, 20 May 2025 08:51:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d502adbsm7343899a12.27.2025.05.20.08.51.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 08:51:33 -0700 (PDT)
Message-ID: <b3d42052-cc75-488b-a018-54d84550f62a@oss.qualcomm.com>
Date: Tue, 20 May 2025 17:51:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sm8750: Add Soundwire nodes
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250519-sm8750-audio-part-2-v2-0-5ac5afdf4ee2@linaro.org>
 <20250519-sm8750-audio-part-2-v2-1-5ac5afdf4ee2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250519-sm8750-audio-part-2-v2-1-5ac5afdf4ee2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VIEaMTDGdRwN9-_KMqBdV36hcA62i4h7
X-Proofpoint-ORIG-GUID: VIEaMTDGdRwN9-_KMqBdV36hcA62i4h7
X-Authority-Analysis: v=2.4 cv=DdAXqutW c=1 sm=1 tr=0 ts=682ca507 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=aXdyv8Fb0LjW2WrOllgA:9 a=QEXdDO2ut3YA:10 a=AdHoc0ENqhcA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzMCBTYWx0ZWRfX4fKHfwMWcrJ6
 aQ6mrEa+73RbHk/lpHCPy2uZKphn+UthFLxBUfTbfeVPpq5Yn2O+FRiM/djBwc3/u9liFcCPial
 /nuU7EJtN0PqFhCxVqTPygoD8pDUqdSQEPCrOK5dlI7vRZR/XaTfc2dNyfdBcXCQrcLo9iAkT2l
 lj9OfUItY1IL5zfFuqQ2Q+B9qL82FvbvBVLyRi0451EKdIkoDzTTOUhuV/xbWuJQs+BDka0Bvbb
 1156MWEs/j2JNBzvx3uUq3O+sIKwf6sIWaCtlPcgkQlTi8MqtBbpy4ZEOV1GQxnAWy0fbeW3S5y
 Gx9JhEj4ttbvR3gUWVlSu8wUETRnFVrUxOvZTjjt3S2AOEQYldb4ysePyS3OUjyCoX55uQ3xJkD
 xHh1KYnJXhFLgltrjEQpyOR7c+W3F1CdJfSkOY0C9Mg+9n/iAT144qF+Asl1kjIoGlJg7r1e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=820 clxscore=1015 phishscore=0 adultscore=0 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505200130

On 5/19/25 11:54 AM, Krzysztof Kozlowski wrote:
> Add Soundwire controllers on SM8750, fully compatible with earlier
> SM8650 generation.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

