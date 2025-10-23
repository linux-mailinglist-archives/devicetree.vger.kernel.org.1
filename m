Return-Path: <devicetree+bounces-230063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A11BFF6D1
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 30E694ED1A4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9910C279DC9;
	Thu, 23 Oct 2025 06:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="khCqelEB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF2B1EB193
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761202612; cv=none; b=prf0IEPmBTEH1ot1bLxPbWSejXCJBLP3ice724e39fKDeDccC5jBrcmEW89Hoq1SlNkqdyDo5mdITOgg6Yz8jBaaElHEj5TypC3U13GnFguJfMxBG4coy2O4THd8DaURfC4VKjU3+KOnB8WXzxVe0kzZyog0oNHegxtMOqR83Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761202612; c=relaxed/simple;
	bh=BW+kg8htBMkugNFEx4R0pb35ItCAPtb2W8sPE7A0J6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ifKbUvdFIk1jkYhANEWwr4fQa8FYlAt0wJY9MB+WWfJ89fbk6i0EyR2bCfCX0iENW1goBTapqgXIwogIy1LzfWFbZupegq7zFH1PhPiwWeexMmC0Y1P+w+7yX08+mqwhImz2WINAF0UeD8zkjWuLKc545Fje+yBIKnLqrD6mlag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=khCqelEB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6tloO008060
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:56:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+efyRDA4riV9spYnZlw/APnqKUaUaN3qfqzGJ8qH2uc=; b=khCqelEBy4lVeQ7+
	FYXiHgICW1lqub4Fz526fKpkit0d1GcoHObWhLZfP4e+1w5eMhN8G9m92i8kOQbu
	pk6tdkx9zXgqdiF3kCVo2ncrZoUNjwSuwsJghNhwBdxlGuzvtFQMbfSevvJ//YN2
	xaBzoYaf1mCYqA/vu9vEJu7lwl1UdnkxeqFlr/AhRNGDBdgGOkcKltniP2j4DY89
	mSdzsn4y/O47MJJd281VFpl0ABxugU/dlhSaPBX1+UHisWZapQFH0zWSaPTvlucQ
	Z76p1tLGpXpgKa4LLIrOoNibnam0TYiW29b4eCiRWWTONiGwArDeBYkCbNgRv4e+
	axpTAA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27j78yb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:56:49 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29085106b99so5104995ad.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 23:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761202608; x=1761807408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+efyRDA4riV9spYnZlw/APnqKUaUaN3qfqzGJ8qH2uc=;
        b=szmzb6kZeHsMXmhSsNQwM8r6TFN9Z8PWR+qaoG8Etpbjyeq70J9iy5AdHhBjlSxsXi
         JuObuludAWfvPUmos6VDkk2P4wIv5H6jIHA6KkrQPf9m+yPcoHKGxIhjkJToKDgHk76e
         gvnH8VkYPVepIv+lDc2aILITVCQ1nE019QPF5E40krTn7Fh9JdQ+KaSz+rxFZaygA0CP
         ZuDpqYNdtTLeHTjB3Ag+lPymOaogZ5wYDRIcCNhiPSyb+5y8vHgukDxoJtJhfeXy4K9e
         RgG5XMo0oGaZUEQmZ3te/CRDY0ysLd5swcsZA+/L2kXdytPQsiyavOw01vuhVWAFJIzY
         d4AA==
X-Forwarded-Encrypted: i=1; AJvYcCWWoGJmEoCJn3A9+rCrVkiJTbZ7i+Wiz1NpKuZDIF3vyN1gFFYLiGEF00y/RKA6Um0JT5+GY8iCtDDP@vger.kernel.org
X-Gm-Message-State: AOJu0YwwQra03ny1k3IASLuBP7DKHlqtzIwLlqHKnA9O2VEXWnVzw4VD
	NX1tKhzbhcpU4vyXNcMDCM4Xe3suawoX7IoPh+fw78VXGg2mSNx6jd/+IG8fkIQVsN+rvbaL4qd
	pn+N9Mqk/JrRNgB5+Jc6EMBOe1prVCvWkjJ9+0wbda2EWu2S1wVicEOpnHN00OdYD
X-Gm-Gg: ASbGncsSR5fwYD++Aw6ax6Oxvh9y/axTQ2OG1rZhrLskflpR99ilSUry78TVbKKM+8b
	YyzWQQvrwCQIaYSKRaKtBNMvs7bykFJi4X0NrGZv9Y+2g48tFGttQGCilVFn7KKyxqITgxC91lA
	vGXgHOcw9zp/4XL9gZYl4/yrIg9R8VDxJHFeUTHQnZKzeSP7Yzos+BpNLhqT9BwtQPRZQzu/xrm
	jY+uSsbvNb2HejeRywoB2BUc/9VkfCKUz+Z9XemPKrLO3UEVfMdoBuIU5MLiVYnOUb4Ds4BzWBp
	H3fBnAdwdEwyAL072AlG3wSmuWXMGFVmF9jEP8g+CXjY9LlY7qwn5M7ujZtoz3f5qGPKSnPgFsY
	RK7fZFRear3+0zffXtUu5t7ErM1A=
X-Received: by 2002:a17:902:e5ce:b0:290:af0e:1191 with SMTP id d9443c01a7336-2946dea1368mr22465225ad.21.1761202607971;
        Wed, 22 Oct 2025 23:56:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUW0YEaHqb+o6OIwpRYA3a26EAhwWv+kJ8gb2tFkO8g+VN+YewDwGtLNYa5D2L0rAadSuNVg==
X-Received: by 2002:a17:902:e5ce:b0:290:af0e:1191 with SMTP id d9443c01a7336-2946dea1368mr22464925ad.21.1761202607483;
        Wed, 22 Oct 2025 23:56:47 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946de02357sm13016435ad.41.2025.10.22.23.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 23:56:47 -0700 (PDT)
Message-ID: <c2429e35-7d33-4500-8e0d-a992cad99f63@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 12:26:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] clk: qcom: Update TCSR clock driver for Kaanapali
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-5-29b02b818782@oss.qualcomm.com>
 <jr6qz23acm2ipspsvyxjpabg3b4bspapia2pqd7b2grrtvnct5@v7mjwnr5o6qa>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <jr6qz23acm2ipspsvyxjpabg3b4bspapia2pqd7b2grrtvnct5@v7mjwnr5o6qa>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX8eM6vfKWvA1t
 aHfRGwn3m3WFS1UwG9jkZX+VNcCNwHvZU6KiK0z93PuLYHU4uLda0ATEdEMz18IkDbe+oSWWySb
 RcWGkEa5mos44JHCSzJOQ3FAT7dZO2vIBQO6oLHsgszszXUfrOS3L0QwN3wWPBOHbVbV2AopEkn
 LCTnpnBHpwng8bOFuXmCS0djln+5M921/z1hPuMPRv8CjEW7CAGvVS2T5GgJbh9gCxLimoxurod
 7w66zJY9py+kEU96bRfYp0wC949hQaGNDmz3vWJdJsXftkE3vuNT4CMlpBOP7L+EnlE4WJ5KDdB
 G6CHSEWugYP0NTW+xoIpzjjcdkkLj+6zG7icDfQINyefO8wX0vRRCsySyn50pEqCa5CswQoGrcL
 xJhGw1weB0YWTAg+h/iQymYlj1eNwQ==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f9d1b1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=peCUsVMnvPp5iizJ5UwA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: w4nAlmLeODmEyewzmFKl_0mGqebG_p3q
X-Proofpoint-ORIG-GUID: w4nAlmLeODmEyewzmFKl_0mGqebG_p3q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018



On 10/20/2025 4:33 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 03:58:57PM -0700, Jingyi Wang wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> The TCSR clock controller found on Kaanapali provides refclks for PCIE, USB
>> and UFS. Update the SM8750 driver to fix the offsets for the clocks.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/tcsrcc-sm8750.c | 34 ++++++++++++++++++++++++++++++++--
>>  1 file changed, 32 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/clk/qcom/tcsrcc-sm8750.c b/drivers/clk/qcom/tcsrcc-sm8750.c
>> index 242e320986ef..f905f3824d7e 100644
>> --- a/drivers/clk/qcom/tcsrcc-sm8750.c
>> +++ b/drivers/clk/qcom/tcsrcc-sm8750.c
>> @@ -100,21 +100,51 @@ static const struct regmap_config tcsr_cc_sm8750_regmap_config = {
>>  	.fast_io = true,
>>  };
>>  
>> +static const struct regmap_config tcsr_cc_kaanapali_regmap_config = {
>> +	.reg_bits = 32,
>> +	.reg_stride = 4,
>> +	.val_bits = 32,
>> +	.max_register = 0x18,
>> +	.fast_io = true,
>> +};
>> +
>>  static const struct qcom_cc_desc tcsr_cc_sm8750_desc = {
>>  	.config = &tcsr_cc_sm8750_regmap_config,
>>  	.clks = tcsr_cc_sm8750_clocks,
>>  	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
>>  };
>>  
>> +static const struct qcom_cc_desc tcsr_cc_kaanapali_desc = {
>> +	.config = &tcsr_cc_kaanapali_regmap_config,
>> +	.clks = tcsr_cc_sm8750_clocks,
>> +	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
>> +};
>> +
>>  static const struct of_device_id tcsr_cc_sm8750_match_table[] = {
>> -	{ .compatible = "qcom,sm8750-tcsr" },
>> +	{ .compatible = "qcom,kaanapali-tcsr", .data = &tcsr_cc_kaanapali_desc},
>> +	{ .compatible = "qcom,sm8750-tcsr", .data = &tcsr_cc_sm8750_desc},
>>  	{ }
>>  };
>>  MODULE_DEVICE_TABLE(of, tcsr_cc_sm8750_match_table);
>>  
>>  static int tcsr_cc_sm8750_probe(struct platform_device *pdev)
>>  {
>> -	return qcom_cc_probe(pdev, &tcsr_cc_sm8750_desc);
>> +	const struct qcom_cc_desc *desc;
>> +
>> +	desc = device_get_match_data(&pdev->dev);
>> +
>> +	if (device_is_compatible(&pdev->dev, "qcom,kaanapali-tcsr")) {
>> +		tcsr_ufs_clkref_en.halt_reg = 0x10;
>> +		tcsr_ufs_clkref_en.clkr.enable_reg = 0x10;
>> +
>> +		tcsr_usb2_clkref_en.halt_reg = 0x18;
>> +		tcsr_usb2_clkref_en.clkr.enable_reg = 0x18;
>> +
>> +		tcsr_usb3_clkref_en.halt_reg = 0x8;
>> +		tcsr_usb3_clkref_en.clkr.enable_reg = 0x8;
>> +	}
> 
> Granted the size of the driver, it doesn't feel like these two entries
> belong to the same driver. Please split it to a separate one.
> 

Sure Dmitry, I was looking for re-usability, but if it improves
readability and clarity, I can split it in a separate driver.

>> +
>> +	return qcom_cc_probe(pdev, desc);
>>  }
>>  
>>  static struct platform_driver tcsr_cc_sm8750_driver = {
>>
>> -- 
>> 2.25.1
>>
> 

-- 
Thanks,
Taniya Das


