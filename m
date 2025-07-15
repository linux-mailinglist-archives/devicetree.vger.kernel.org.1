Return-Path: <devicetree+bounces-196461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A039BB05787
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:10:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E536C3B36B6
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC33D2D63EC;
	Tue, 15 Jul 2025 10:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tzh9VO3/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1CE275842
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752574191; cv=none; b=s5YSMhqLgfW2X73B6UrY/6EXlrtHnPHlAGjubuSo/u0JYYwMDFHQnrPz2snrqtGclGM0n9gc8ifBf3I7z7nws7JtwmnKX9emwtJz3KYNRQyI914uMkEz1GSkwqWxubd+83GHSK8KSrpzB+y1EwZ6RnVBt67GQoUVGZOMXbHzUmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752574191; c=relaxed/simple;
	bh=i+gH7R0LZRVIIIuYrUj5ZHZ2SixenD8ZXHuSoR9aPY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HMH9uiwigTuu+I0HuW0h1nT4O3voBe4KB3gnMrfHN5g+YcsvJo/xI0MCA4psDk+hGs635xVS5eF94KOUdfU5X5MM8pmo99MYVeZ0C8P8Ff6S5gH1h6khvOZqX8AgVaGTnJn4l0jO5yoskRg/AxFUFpoNYfJ/3Kbp46VtYOgMS9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tzh9VO3/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F6hclK026582
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:09:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p/9yPeCO/DS01G52hKx0pmh8Iyn7M6trOa1KExfG4Fg=; b=Tzh9VO3/UhkfHXiL
	gRXOgUowcGJmhRtEl3SS/6PqtsHwzKmxonGt/FvvYtHL3SVaz5HHePbWOs5OnfIm
	8TBvU4VyqJOb6v//P0V4Ruk0qqP1j91JUrTdfGWgDpmssohpb44PP/4fTBo/2l1h
	wF5kMuLThOH/gUmVm0ZXfncX1eXO2aY6g/MW4tz8eQQQH2T5ecluEU/L2clwSYoo
	7IK3uekaQ7htGH4dthfoo79zMeCQ/5I7uNJ8/N0o8/wZ6aksF5fJXfqHRChVASbX
	tgKf2+tHQX9Txuc93PkCITZRtpwefATgUob6WQl1KYVZmQz9lMYtt5bxm8478wfp
	VOX/sQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug37ywkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:09:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7dfeacb6dbdso22399485a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:09:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752574188; x=1753178988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p/9yPeCO/DS01G52hKx0pmh8Iyn7M6trOa1KExfG4Fg=;
        b=IvzFJbEWjdyN/nWO47NAtuZdWaFGkJCvcnc5OBNb3c26reJfBbyUcP9f6IoUgG+oy5
         MVfgwxCSYqvK1xKUBQMzySWP03derZywVqVGgCxGaq1CS6LVT6lbq1YrwpO7HhgxQYdu
         DFRqlfESNix9QwNCIsjpLWOzfGyOKQ9ksDxcivBkBOtqdAeOmA5oSaeRj+tI6sTWHMma
         6QfYitSdd/bj6Y83Fc41e82GAYWmoQqb3jQPrvUBQbmoUyr5xAYJTdDlTUIDHRcFCovy
         ar9+J5Xb8948pa+FRrE5UgBOegIaZ6ft9CTdq+xC8pTndtWnGLdq+U9nm+FEcSeeZXBZ
         fnrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUT3uCSj7W+TfCJGRXn2FdaxAZgEeM+RUGno9865XCn/3H6H89DES0nTaNpzr8PqOSyF43z4e5VlAjP@vger.kernel.org
X-Gm-Message-State: AOJu0YxpR+QX5HhjpVjZTkc1SZAt6f+uBEf9DRylXSwXxdfj6+3ob2L+
	TKg3NfcdySiOSOcS0KdX3D4elFJYysiOxWmEO+t0f8P+Ullv9PZqNQ1tBFmT3qdoawG2TO97Kpo
	4C4rPX6kK6kQieoPRD8B2tnIK3hwKJxcoJ5U9srBb0JSjkxoIfJZiTglfpIk6WWSoqgpnC4vt
X-Gm-Gg: ASbGncsMyPyyFAISqK66FuNyGpqaO4PjxrpfY0R8Iyc9+vKnBcy4ytPlYb6n+040e1U
	spfdSgDIvwfJPuOU7fhjiTPJTISiEAgk3mec3sGuK5zEA6L4TJZixvrfNR7hwGUIZUrc6ZHW9ty
	jHwRErNytWz47twmxCsOBiKX24BER1ahYfMDxvOZdm3w30+CK9p7WJokT41tWDns3WxC1qEX5p3
	5q/kePKotCEgbjlLr1SasDbvd+uC8Aw2CFCkQEIc7NNiWXZE0zEteRrDrS0IKzkOEl47HEagDwv
	klGNti31rWeQl58XcvozEuwdCPsYFFfhrDa0/BIBCkn4t8xYa8k390rBKzSUvs0TLs/eJxMHqv3
	LyK3EdoBsu3y5vdCwOxoJ
X-Received: by 2002:a05:620a:294a:b0:7d5:c29a:b41d with SMTP id af79cd13be357-7e33c732767mr48851985a.6.1752574187574;
        Tue, 15 Jul 2025 03:09:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEucUXdsrXGUZIWwqatrgphc74gzCF2olPTtlwfbIxpe9espEQV4QYSpJZP78hbow6C50+e0A==
X-Received: by 2002:a05:620a:294a:b0:7d5:c29a:b41d with SMTP id af79cd13be357-7e33c732767mr48850285a.6.1752574187039;
        Tue, 15 Jul 2025 03:09:47 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c94f2bcdsm7032397a12.4.2025.07.15.03.09.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 03:09:46 -0700 (PDT)
Message-ID: <b5a68138-4eca-4bdd-8f72-d80236b02c0a@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 12:09:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250714-b4-sm8750-iris-dts-v1-0-93629b246d2e@linaro.org>
 <20250714-b4-sm8750-iris-dts-v1-1-93629b246d2e@linaro.org>
 <5dd36649-821c-450e-bdcc-871735d10059@linaro.org>
 <15b8b9e0-a211-4102-9b68-994c8ab50a7a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <15b8b9e0-a211-4102-9b68-994c8ab50a7a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA5MSBTYWx0ZWRfX0fKQkmCLl0tk
 X4NME4wb5Magl2JEugiCARZVsqXyZ5w3chNSLfRiLivhw9bK18Tm5R2KwrDv/x0X5OJLRTDyoF1
 gGKeZMI2r4dAXaforFj6Pq9u7rfbSKv73E7RWgpjfC9iUbB7kxITkdDFLwsy6A4lh8F449/Sfdh
 z00XFjb4UuGMS7aIMXvavmV3PZJMs3pEnBkfKckqX4O9r2wvmR060oHa0wuO5SqP4aZ+uySXgOp
 utJVURRMqRfEGyP8qeKHkZ3m6OY2ZEYiV2fS7OT6k1+vqgQWJ+MjLwR8KAcog9Z8QXoJdgKQMsr
 OCObxCpEnHuBBogNj6iFqGVgbOzSTBKrp3HqpSkm00pwgPZGQTuvvYC8gNrsSlM7l5sih067Qzs
 DspGMQnNwpk06M0eAxcf2P2qg+iwzT2z0GZWX26LZUVcSh2xp1Y/wPGlJMcDEd+A9tUrbxER
X-Proofpoint-GUID: TuE32kvIbUjvGjvVkWHGsZ1kQXyDimKL
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687628ec cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=DXF70n8Wv7XxJ0iPIvEA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: TuE32kvIbUjvGjvVkWHGsZ1kQXyDimKL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=743 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150091

On 7/15/25 12:07 PM, Krzysztof Kozlowski wrote:
> On 15/07/2025 11:32, Krzysztof Kozlowski wrote:
>> On 14/07/2025 15:55, Krzysztof Kozlowski wrote:
>>> +
>>> +		videocc: clock-controller@aaf0000 {
>>> +			compatible = "qcom,sm8750-videocc";
>>> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
>>> +			clocks = <&bi_tcxo_div2>,
>>> +				 <&gcc GCC_VIDEO_AHB_CLK>;
>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>>
>> This is incomplete, need second power domain and I did not check against
>> qcom,sm8750-videocc schema before sending. I will send a v2 a bit later
>> (maybe some reviews pop up).
> 
> Heh, no. The DTS here is correct. The videocc bindings are not correct
> (and that's not my patch).

Well, you want two power domains here in either case..

Konrad

