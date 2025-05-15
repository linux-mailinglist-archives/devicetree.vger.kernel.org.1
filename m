Return-Path: <devicetree+bounces-177717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1623AB8B44
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC6509E381C
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEF8C21ADC5;
	Thu, 15 May 2025 15:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nY1mWB4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E97E20B7FE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323663; cv=none; b=XaG0kRId4fo/SSApqnPp3CSdheK/sg2y9y12I3ac+19TzgKkZh8Tvj+SqPuiHi44CR1y784vPCGhOtAxL88YpfLsnMoIm3iRMdSHAsgVFstpdwwFVocFe7sjYy5eotLVA5FgKI1EstDz2qsQqLZwtOCjThfx7HwccyuHN/0ivgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323663; c=relaxed/simple;
	bh=r8Rz9y5mBO826o6HxT9wcmQ+Cgxb+4L1qYpw84sCd1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bGr/S66X0SbcH/w2KKAm4/qnTwUVJAAxdDNh/1/T9VKmwCHAjhWLwwFt2U9Kdq7RBctcFSZMhWzSSfmcy7KXDpHtPiYw7SpvMOEcakWhyhhUn0KokByDYNy4w1ZZ700OplojYj7ZsncVb2utUzIefv4RJbjC0DDNSIQNbtO534A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nY1mWB4k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFYfN031713
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:41:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hDP2BOABWrcdmtprDmarKLv3ZXSLVag50oTBIKB6RbY=; b=nY1mWB4kDphGytYu
	iWSFS+6yKBWXV3C0FVD+NKWS+voV4MwFhjezUbgnJtHOjcK5kMa74wx+L4/T3aKg
	WmHyNsU8CZYGq6LTEeTzoRMfEnpNOEwPcJamrLFeIpegOoxG22cHmVrcQoSXN87f
	G5yCWm3Vm1zWmv5gREHlwDCC42wEwL1uCKJqNHByG0GpHEnHdCe3FVUYeSc524+e
	6vmS7DjMTzON7w+MdvePKkO7m4gooqd9I7dFyoEoYcl/sfuHyNCBDOg1yni+AIVh
	Mt7EEwwbGSc9ngXmDgSYKmIELS4AatMXMfAQTO8z7jl9hpa/e45OOI2/KhPIvd2H
	KxPVfw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcr6hvw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:41:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5466ca3e9so24557485a.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:41:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323660; x=1747928460;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hDP2BOABWrcdmtprDmarKLv3ZXSLVag50oTBIKB6RbY=;
        b=drJ/qbYCHIowGVMZrY7y+VtfRdSIJ9zFhiFH3YydzYWXaXKpWm2WldJK+0i7yvnR2H
         f4nIQC9UmwsVTtvnk59E90E0XW1OjQUxkgncVpQ+Q6MQmWnLvcMmWPMtf9QvW95A4WkG
         nT9xLlq2t8Xf2/bvHSkKTPfjGoZtAGeKw+FFrl1olDLat9TWbdxKFwQ9e/ba8hphBrcQ
         Zuwh+TGlrb+ESv1Toy6ARCPs1UIAKjk52YoDlI4VjMyVHBcjtcIzeH4s2kt5p4LGV79x
         SGRdozSPNC9oJxsk1+L34mq6oI/1Y8x1Gykqm6VT5RFBiRIvZxwuolpvBNvgsA6rLDlp
         ZEkA==
X-Forwarded-Encrypted: i=1; AJvYcCVksxp5pRe2A0RDQRHtygzYPAnYd4dqGTwIZtfuWGUzT/29bAjWIk91bnuaDGok4AVoSoXKqTyLeZfB@vger.kernel.org
X-Gm-Message-State: AOJu0YzqFeS4auL2yF1Y0ViAaA91DYZ8OZ0bhZgzO08XNQw3v01Z8/7i
	COvECu0itkmsTmMEIsELVG3brPd0arLn+cSyZ0eeSLRinX64FVIfuk7AWeG3RgTCU6gHA9G0CIa
	NBOfpxLahE95v86ESHwk6AlLRYH3+RPP1ecFrNIgCJZBTtpinLMcj3qE0cvIn
X-Gm-Gg: ASbGncu095HpfQMEx1sN0aKk3Abw5eqZxByYSzWnGG4Mdu+x2UUMl2gJGpoNaT8lE6o
	cKhDMak4vlo/Q5RUzvBIxZAqZ/x3MpPeyChHJXz1Wcu4adoHAp/UpLC5+2SPpUelGyx3PHIE5Ge
	oWYX5msCXt2GkU9BKzHho+o3VvhPg5jqm8mhqsz1fqYzn2/Xu8/9yBF6zN6DXDkAORCRUMQwXAZ
	j36gH/Pxnf4gvEmhxhowUIbdx/G99XtXpdJ/RqVIrL3qCr/rveUHmTMwJHX+vOY+Yfz+MHGKBfe
	Em+9zYvyZsgsQZ9HNARjMa7gHMzmj9T7xRM9IefidI8EMKLiaFHjHIw/CfIY91ndMQ==
X-Received: by 2002:a05:620a:2696:b0:7c3:d266:3342 with SMTP id af79cd13be357-7cd28817e46mr483161085a.5.1747323659954;
        Thu, 15 May 2025 08:40:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkD/kSx20+qw6EEF+iZGvVJtXA5uOZxo7BEHt8EbD6OzUqzYurpQEx+s5agdussKHsTUcOVA==
X-Received: by 2002:a05:620a:2696:b0:7c3:d266:3342 with SMTP id af79cd13be357-7cd28817e46mr483158285a.5.1747323659432;
        Thu, 15 May 2025 08:40:59 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d497a0fsm5132866b.140.2025.05.15.08.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:40:59 -0700 (PDT)
Message-ID: <764e3582-6e09-4252-8e5c-12a7c5ba58f3@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:40:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/18] clk: qcom: camcc-sm8550: Move PLL & clk
 configuration to really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-10-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-10-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GrDAxYsZZlViO2XHc1Bek32PRU31J80M
X-Authority-Analysis: v=2.4 cv=Auju3P9P c=1 sm=1 tr=0 ts=68260b0c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=OU1JASuMovj745rkUKUA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: GrDAxYsZZlViO2XHc1Bek32PRU31J80M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NSBTYWx0ZWRfX8dSqeDtYj7Ho
 zO9V3dON2pGPrnmbEd6kgroLLvlaiIcQgvM1D9qw7Moso8tLvGpLJdOrXspqyWZPIy+mKJyaD+M
 nW0ccqW+QMPsHqntbnf2pyZ0y0SOipir2mm1qcbE8aLbKgUVCA0vjBRXbHDWZJR5suTgNMOAPoU
 nqx9WO/UHpbw1Q6XEEoHoDMrJjrjfLDrH+EL7bkOkNE01WMvRd3SBpO1gfLlF57ZIbKRiF0f/JV
 mmfmnCrslXRuEfzbHmrYD5ImSqa1X8vWMraEpxmwxTyDSN17BWih2whc/UsYdjb+hrfFTwYuptp
 RgPHp/QTKWei5u79VV+3snuPHnm133vpWAazxyl1ANx5P92ZFsM70wd5DjeXAKi+KvIedjC7sgY
 hxdIEl6IR6uO16TIU9tdCRzMtz42ClNmhrSLjNcYFhMg9ndXDunZ+7ywaZOcBLK7bv4jyZrz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150155

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Camera PLLs on SM8550 require both MMCX and MXC rails to be kept ON to
> configure the PLLs properly. Hence move runtime power management, PLL
> configuration and enabling critical clocks to qcom_cc_really_probe() which
> ensures all required power domains are in enabled state before configuring
> the PLLs or enabling the clocks.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

