Return-Path: <devicetree+bounces-199680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAF0B11AEC
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:36:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7A4A189DADD
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 09:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89102D3727;
	Fri, 25 Jul 2025 09:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fgWkHBuN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B652D1F44
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753436205; cv=none; b=uBbZeQzxSD5YQWYPZcMsy2JhuS6WEB9VvGfMyMGjV32RB6RwHGWy+OjEOz19w7FW33DHqkbhftdc65Xjr3siG7q3ZfOfXG3mwoULmSGpqu++oUpeHnHONP6EjIPjvxoBeky617yZcL/Yt0eGQni9PM6tfVQWlUBouxqMZqpQEQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753436205; c=relaxed/simple;
	bh=khoTYrfoYnB9YM56nKHfbl2OMpC++rooCel5p6UgM4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DPp810dmuY2/IZ7ss2gV5r445pYtwWORlvcHdkqb4wrcFZHjjWrdgkisgVxHyGAKYIfsxVdRz8s0YxrgZj/tmMpQeYI217rLiKa3W6r9yp70P01CDQ+waBqJH9ItvzN+0+oiccw4JFgSoRuKJhGDPTVkXcF6N1zkeTX0ndww3/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fgWkHBuN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P8vEZx026745
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:36:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8fGqVCbKdUD5IhTQGdpZfzscjaHJZUBYNn64bhKqYT4=; b=fgWkHBuNJDbkhIhw
	AxC2uJTLEXRNI8Ix3WR2RQZmmj5gMWrJoBAEo6B0XdtZVZXXR93wW50fjRUiNS0t
	bGPoXKI3lEby69VBbAungCRQP3dLfzKbC2iTCBtAjCXn1Bflb/wcgHghS34xzChW
	PGh9XzboVYVRcLUtADuwPCt5WiCBOcN717oLozASa6xdq0R3rB9t783wu3SIOd/J
	AEat6Alg2isnhwI6/vp/1WKG1TkgmCh+CsG73cSdLeJy+vPo1i2jeJIHnI5NFAVj
	hrgsxRG16BKyZZDuUdUVWswCfxqThM85gRuBJTiAHhHg8WKHo+pILan2+NiXnlwu
	Qyrq+g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2u1jwp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:36:43 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-31327b2f8e4so1832505a91.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 02:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753436203; x=1754041003;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8fGqVCbKdUD5IhTQGdpZfzscjaHJZUBYNn64bhKqYT4=;
        b=kIBbA2GuDtIT4frvbTHLk8HnKl/L+h9MQgzxVEfJaDh7MGipaGgKfUs3IEEaFtL6CE
         65KbC/gXKqXKXfbOYfiSs+5RGb58JZUghvR/ZTrkmvr292mXirMcqBdAxx2Ik4c5wMPl
         nmkcSrAViEmW0Xl6N1sNx2O7e64D3TS5dHQZCQcfzLtbrOimei0GZCFZArY+kIFDj175
         v95SgvL84mJgIaMqJ30i8HqPwDWHq+jcRzShLLpJ6dCct9kO6/B22sPk2EvkUKuStHVL
         5nh9zVQklGB5rEdPceUYztOiqiZJZV+8NVMBvaCOhvCF1/f9WZt6+7u6WZ01hxFsjD5r
         zvhg==
X-Forwarded-Encrypted: i=1; AJvYcCUVrrfORlBWAtRpJnc1TaNXGTy8jjaA77Y5msMPWVToLiyg3JYCtzVCt7PR8njKWwuvUAoE8z6obYXB@vger.kernel.org
X-Gm-Message-State: AOJu0Yya6a3Qy+YmpnEO9WxvWVPOuvuB7cGbJHT5aTQaRbXi0Jady+D8
	UjRLMQi8oTCb3cHyaHfQJiWGfdowUSIKqqR7PWwOz54CzN9Gq44c+sBYtWmngA+KSWjwteJnWyE
	wNp9JV1KamD3YT5ABY6umhGXWWT63vfUDeXLDwidRWXgb9u2USR7ZgozkLe68vEi6
X-Gm-Gg: ASbGnctsAZrgvBuG0scW0E208dFlPewT+riLyOeaHJ4a0E3NeYctd6iteo9f3/94Gv0
	FVi95YL0mi6BB5YJJzFL04Jf41UX+0eMe+Nbu4UBFT6GeSgGiwsHCA4CTjVmAsaWDxjfqqGINfw
	AokQBDd+4FpsIttfLcWYVTDjKRg16WAW2xmWf2Pu/SSjAvBw7SzOrTt/QdS84we2HxPCkuqNRYc
	Wyt3fhpq9bFBg4OZCQs5jxxGn9y9ZBn3Pr+39oMiysHUkxG6aryt4Lbmf59MwJJZvzZjfZbmxUt
	RlebuMpjSfh4wE2L6KL4j7AzhfHUX/iR6aLxnOh9hJDyAPPqfN2qhlQLPofGjkm1LDDWyop91/O
	e0oBSkY97WEHXi1JwTkn2GOND3Pw=
X-Received: by 2002:a17:90b:2d8b:b0:311:e8cc:424c with SMTP id 98e67ed59e1d1-31e779fce5amr1572779a91.25.1753436202676;
        Fri, 25 Jul 2025 02:36:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6VQ+hjM+9VTW1JluX17yS5gKOukl9PngNrV2/3XdW+Tv7bW62cUA8gef6d9gMhfXtDXlJ2Q==
X-Received: by 2002:a17:90b:2d8b:b0:311:e8cc:424c with SMTP id 98e67ed59e1d1-31e779fce5amr1572748a91.25.1753436202270;
        Fri, 25 Jul 2025 02:36:42 -0700 (PDT)
Received: from [10.133.33.89] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e6628b1fbsm3127948a91.12.2025.07.25.02.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 02:36:41 -0700 (PDT)
Message-ID: <20829683-b2ce-4aaa-beb4-4ca5774350a2@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 17:36:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
 <20250724-hamoa_initial-v2-4-91b00c882d11@oss.qualcomm.com>
 <d55f79ed-0bec-4045-8bc6-9005d19f865d@kernel.org>
 <cf84a8ef-9f4e-4f13-b41e-9525e21a913b@oss.qualcomm.com>
 <3f03b1c0-94a2-4081-adb0-aac4f42ee430@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <3f03b1c0-94a2-4081-adb0-aac4f42ee430@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4MSBTYWx0ZWRfX1cFTqlJSDyJL
 gVfzoFXUPM02keyG0VK+DGLkshzvxBmggWtPUh4VpRE8Psa0369pj/mXGt/NgbbU2dsYpBqyDh7
 dHy3EdoC7iFvKL7/keaiXLtVAmCYkVM1Ahs4cbUcdYqmyeaUDxlbZ7Yc6o2tmpwjZdpAF1iLWFT
 137YJU0I3R66MLh9uGDIj+ORw4teNh0NoxqP9uWB+Pru7HsgfJj5oDrokn/o7ubn45jZZLx2WaF
 2/6zyeFCd1BkI8y1Wt2s9zqSyv41rrtrIR1QVRdDCwQWyN1cb98I4GCby/GAxCvYHMVzpwAM9dO
 O9OP3fLnrgyIfrZgg0yLmcoeGAehtTvY7AFl2JMY7YKD6+YQIK6SsLD4tj0SK1ByQjsDkGT3Suy
 2Eff6QFfQHsUCu+8gaSgpaAMe3lX9P3FXcOMKi453jkbr6WtN6pGLsZ8uLlxUs0nDSumrBw8
X-Proofpoint-ORIG-GUID: Li8wF0XRXWx6BsFblsRaf-z5RDEj4RTQ
X-Authority-Analysis: v=2.4 cv=FcA3xI+6 c=1 sm=1 tr=0 ts=6883502b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=kD3CWL0wyOYqigJ9jOwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: Li8wF0XRXWx6BsFblsRaf-z5RDEj4RTQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250081



On 2025-07-25 17:18, Krzysztof Kozlowski wrote:
> On 25/07/2025 11:01, Yijie Yang wrote:
>>
>> wcn7850_pmu: wcn7850-pmu@xxxx {
>>       compatible = "qcom,wcn7850-pmu";
>>       reg = <0x...>;
>>       vdd-supply = <&dummy_reg>;
>>       vddaon-supply = <&dummy_reg>;
>>       vdddig-supply = <&dummy_reg>;
>>       vddrfa1p2-supply = <&dummy_reg>;
>>       vddrfa1p8-supply = <&dummy_reg>;
>> };
>> This approach ensures the DTB passes schema checks while keeping the
>> implementation clean and consistent with the actual platform setup. Do
>> you think this is appropriate?
> 
> No. There is no dummy regulator in the hardware, so you cannot add it to
> the DTS.

What should I do in this case? Is it acceptable to deviate from the 
dt-binding rules due to differences in firmware behavior? Otherwise, 
I’ll need to revert to the first version, leave a TODO in the DTS, and 
wait for someone to properly model the M.2 card.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


