Return-Path: <devicetree+bounces-222291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA4BA7E20
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 05:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 387A53C2728
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 03:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E182F2135CE;
	Mon, 29 Sep 2025 03:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QRYZC0dV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A62A1F099C
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759118075; cv=none; b=L6W9fSKhGXTlnz/4sNnAZi4iZme/X22jR9cP2SVhPcK0y7z06Ue8mxBFsq0OiPqK283IIHmxu12BeyjCqaS/cwlMxz1J8jT+527kaJjOiXqiEF6YdbQo8ZOiYiJY3wPSxFvJaNYJalYqFB3h/dCcYFwp00LGFLFnAb/3yYeMo6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759118075; c=relaxed/simple;
	bh=ZgxPc7jFvUfo8e5NtggRb7C8nqmi6ZL8Hl0RkT2XVZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C0HuBurZoaoIKuWXfQM3GRO0CwziVE8pjmSeD3G1lsB1ILprpUHEjfcpA3hJEnYX8Elg6jqmuAo53xwJGFqyZNknJaQs0NN2iXui4+gn7qXXg+BYatt0Z/jGLxscQb5yHaKFYL/5CSy87+IebVo+HO5PR3NhKwGcNTLIEZOczvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QRYZC0dV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNrE5o017780
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:54:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4greNtdLmdKbk4oGv4Sp7lDz5yvjNosCueZfHE8CDt0=; b=QRYZC0dVYJPuoLpC
	3oHa2TjGFh3mFhhxs8ugjyBxXLp8EaSudWfSwtKWPYcW2JPXodh4pgr2UPeaMSGe
	hx5V8jzyGC3p/gabZbYyhyAAcXJqW97vkPJu5aJ6r5cTVq9E2Fbw4ex8lsAqCpyr
	1UTUz5wiXJjnOkK9Sro4fEYd5Ov/7eg/xeKBbNFt+SP1M7ksikWrGOflxBpNkQ9Y
	xYc+B5DohC5b2oEYRsUeTvxwlR+lEbDjUPdhTAndle7LIqSCv7gW1zf4IpAxsyuz
	T/XmCGdjx4lNS6ZOYzvOLnwktlyQdqGSYYD4iOaVsya/3+YDcA4f2su8SFy9Gscj
	jN3R4A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tkrpj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:54:33 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso3521934b3a.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 20:54:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759118072; x=1759722872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4greNtdLmdKbk4oGv4Sp7lDz5yvjNosCueZfHE8CDt0=;
        b=D0Ps1qz22G8Scwo3IjqWr0blo0nvGgsVTuMy59iU1DmtLGNYUKvCNLJrFCHMSV9XoH
         bV9I+LMzRWBgZl7Fp4uJFP14tUCtjRWdJqL208PaENj2H+AuWGIEVE5wR0y8nUgrwdbq
         CijmdZDKV/ljxERCpIDDLP+GLd8ZY6PIlx2S8oOcrlPtu2dGpmwKljZAmcMIEkWi+zPa
         gR/blL6O2OF3zleo2/w4BJmMWlfQKymoyWkm/TJ+llgI81OFOf79Ojzmtuj7xuyKjiWT
         aKibtJUaLkVAtIZvNzQMio7NGq0tCZFK7jVCPKz7r3CD03zxlkwhPw9xkJUkH6mzOo3/
         iAnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVDDc10VwrUgQQrsCAxLsi1ktNQoPOY2mYACBEgLucDpIGRsZSgQn856Z7/h/xa3x+w/cz0cxsqwrd@vger.kernel.org
X-Gm-Message-State: AOJu0YwlObsWPMYoK7AKZxvnQxoHlFLxKe9nj4VIF9LujWiaOnQFdOSs
	9cniz5H7ou1xQIhfA974Qp09BzynUQERZVmhQmJ/uwwWPtjbOO8QYS0k/djHH7vVdymqST1jSHp
	r1QP79/QjvyOXGXsBsq2/gJjf26jQxfUeeRaPvgp3wrlNyyozwpbmj4XFHZTfNif2
X-Gm-Gg: ASbGnctYSwHEfik4Wb76RrmunWlKeJN7v6ERFK+dS4lR+tAutSKKTsBlAz/MzOF1xiy
	heLAVA0mlsSxBMIY00OdMEpy7PBj5lwrxRj+JMqCKORYZ4cmDuByFsV/FztxvnyadqAqMw/Ot2I
	0lKZX6QYcZnOjjsEJdhGgu3bflJNSWsQ1kds2/ZiRSwD0sPPe5E1dG7FhJTXR/OH8DDWNPDrdjS
	Wy03U3LM71lX2Odze7lFgngubmNuZrRb78xLAYGfrj7EoaoumaI4gohonV+d3x/amizQmorLoCZ
	+TKVd96qlakL0G/kz+LNKqpEAweft34r2szjU7qDTgPrFh5atpfCiG8U03F2tUF9nhA=
X-Received: by 2002:a05:6a00:2395:b0:772:397b:b270 with SMTP id d2e1a72fcca58-78100fcf632mr13590990b3a.10.1759118071849;
        Sun, 28 Sep 2025 20:54:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2r20Nsx0mZ0boHn8hMxT8AW4ANlluUVZDARoW/YbMmCXP9ImTSzIHu1YYxNmhr//RZpnyzw==
X-Received: by 2002:a05:6a00:2395:b0:772:397b:b270 with SMTP id d2e1a72fcca58-78100fcf632mr13590974b3a.10.1759118071380;
        Sun, 28 Sep 2025 20:54:31 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.98])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c279f8sm9954388b3a.98.2025.09.28.20.54.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 20:54:31 -0700 (PDT)
Message-ID: <a0a70337-6474-4568-9006-dda66371fe7e@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 09:24:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-22-24b601bbecc0@oss.qualcomm.com>
 <3c886104-937f-4d2e-ade0-fd525d56dabc@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <3c886104-937f-4d2e-ade0-fd525d56dabc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX54wdd7Ns88P5
 S6yQy1WyKyu7uNl2p7MU2AROAC4Psr9rv/AXJc7TohZDoNuAlZBxwZNGaXeZxaRlm2PuDVrlFzz
 CgJRBFWSuXf3aOM/WwNUImJggtlhbCJWuCAnBc67l/s7dwqvf2y3p+b/1u4sMuxe5MllSyFq2vV
 QH2jgtJAS5xRUKvJFBO95qwZpfoPrFaVMER0zZii4UOWHfVwEaW+ADBYollVHP71rjSGW+1EAwo
 kyXAv4JtFLn2XqfWUBDqOXFdhwwcL3n+Lbcepbo+teJMT/MwK8PppjHCTY/trLONKj1mHz/KflJ
 CLzdsiuaNrju+fK5DvNYB1XBrkfpF2pPnSVxlyOhv7rPok/Mcm0otGl7vpxBP4uE5ssgJKgAEZv
 90eNLWTmBWfXMJO5jBLlK9yZ9PV2Ew==
X-Proofpoint-GUID: Ndh0D2O5i11PD76VAy3IOGLswpvfSH9k
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68da02f9 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=YGGbjFxyX1jBzPa45jwK0A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kGSp5kWzczO3mCTFYtUA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: Ndh0D2O5i11PD76VAy3IOGLswpvfSH9k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_01,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029



On 9/25/2025 4:03 PM, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> Support the display clock controller for GLYMUR SoC.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		dispcc: clock-controller@af00000 {
>> +			compatible = "qcom,glymur-dispcc";
>> +			reg = <0 0x0af00000 0 0x20000>;
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&sleep_clk>,
>> +				 <0>, /* dp0 */
>> +				 <0>,
>> +				 <0>, /* dp1 */
>> +				 <0>,
>> +				 <0>, /* dp2 */
>> +				 <0>,
>> +				 <0>, /* dp3 */
>> +				 <0>,
>> +				 <0>, /* dsi0 */
>> +				 <0>,
>> +				 <0>, /* dsi1 */
>> +				 <0>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>,
>> +				 <0>;
>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>> +			required-opps = <&rpmhpd_opp_turbo>;

The SVS level didn't work when Abel tried out. I will check with Abel again.

> 
> Really odd!
> 
> Konrad

-- 
Thanks,
Taniya Das


