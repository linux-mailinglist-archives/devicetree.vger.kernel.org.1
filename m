Return-Path: <devicetree+bounces-241224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 053ECC7B10D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 18:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 55A3234801C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8BF34D4DF;
	Fri, 21 Nov 2025 17:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="apz7gHg/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ExWqQHBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE9233C532
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 17:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763745907; cv=none; b=hdymlNes4VDXXOX5R7BQVwWUHyS/q6NzVjaVEvT6ZZ+ShlA52csMmpB383Rm26UyF0edlb/2BQdolMqLOOektv1U73dwj3Q/ZJT1zDe8d+CWMyYXJSuubBnkqpRkMH6rwjZyCciOTcpUqXAfY79XXKjzzLxaSEU5I89I4NHwbdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763745907; c=relaxed/simple;
	bh=8c1/bEcyP8yhG6CKZxPLYATSjeuF+KNzmpdbDZa8a9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bxXMeainszH5/HHTxwNSooGJ5QKnUKuYkFsdxLrqb6N/lFZLZ/7i9UsUhd7V+KNnAN6cYkTlgBdMRFCQP8mRk3wlZdaqBlBxEEOehdT7RkmssuqrrcK1kGE955HJ6YchPcPqcp5Xq2dL5aEBwKBgirDYJ1ON8uJIiludmYLiGBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=apz7gHg/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ExWqQHBR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALDBDW01637279
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 17:25:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cy4rp9dVZphWluUO7liWO+PJgOF9A+36SCG9zUcIBJ8=; b=apz7gHg/Ez07d+T7
	6pwnL4tqmjPZy2O3Qz4+Ne9qPTqtwt0JxOIEe0xYpwOYN6m88XNGuMQaOZMQtmyo
	kVfjQ3MAwWDyZh4lDcn96GFeKlfyO4rI8QmRNxBaakyG5HxQ+J0t9qGHc0hta9gA
	U22bjDeThReshOvMTf76U+osKS9vtwFPPMuLkv9gTZ9NYEBeWSh1Ca5moQg1uwqz
	jgzIf71T/0+HME3mW2LVw40ab+2y+/eplayRpuF1mRTJS/Uo4yDCSayxEEDeszoq
	sdpOBstf+1nHRupuRh0Kx/cAvQSGtqpjPsVn8+mWK2PEqLk3p/zJH5/bUjL4G5r5
	Qm41dQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajagauj5s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 17:25:02 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7aa148105a2so2259003b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763745902; x=1764350702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cy4rp9dVZphWluUO7liWO+PJgOF9A+36SCG9zUcIBJ8=;
        b=ExWqQHBRH3OwKBWgZY7rxMQ/bmk87d9abn7NtO28+vNZ/wgzXlEWjrRx9+FLfjYP62
         5pQxLSRNG5O82Mcd5lA6UEZ8PxDBY5GK6ZlgYyitoGj4aZ73yQNpNBcdYAN7bIL6OdLS
         s8moksjVNWHIcVDITZr6m9MBcVmygfC8pz08Zkbq4hxP1cluReIIHsVcDtgqma9aY1pp
         pusNJAF/OEu4HdoW3kTcLpWx1Sg9m49xDkc8fhjbRIiAXzO6LJSpXpBeldCroKD9LvJR
         Awx6N3r18kHcGx9pueM3Y2hEM0yQE1XkvtTbPrDPJAN7NDCu5MWyv4bAzlwp4piOoTsT
         /spQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763745902; x=1764350702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cy4rp9dVZphWluUO7liWO+PJgOF9A+36SCG9zUcIBJ8=;
        b=R116T+HEX9aEfyoeIEofxt2FxBeEt8aeXz78JljCyyZnOBAkJnN6VqDHoOZ/t0bmzC
         SLTJe8hcszQCjPhJbz8Az3wOn2SMVD0A2lnTy1pD5jIfGn0vZ3VTfMgPr3UVCbhpq2SP
         VeWce2wph5z7t6K0Kigz3sSeof7elnw+Rtz8/yvRpo92MYpO6MHh8/J/OGnewhajRqmh
         3z9nse9LvdVgN9bQ3PDnV3FopcjMnG6VsrnhbZEgWnnmUYRe2c5Jqj7jwE0eugggMIHB
         MZ01bp8jQ2hXEDTVG5yQnp18HHVnNvhE5WZJpr//xY+YFaf65jI3iM57PQ2nn1TuJ48Z
         8Iyw==
X-Forwarded-Encrypted: i=1; AJvYcCV3q2FinUNW+4d2PU5VdNAgDMVvj6Xnl8lOo9qdcWHixigztibsJYxc0qT7iQynFVA7tA6v9sP2JcWg@vger.kernel.org
X-Gm-Message-State: AOJu0YzwVnpcCSMFGG8xn8MXFrHtKwx5rJDeND+2HspyVNuDE7NLF6B+
	LSgfv9nehDh94AN2k60cXUALefhqqlxQ+r99yhQhBqK+AMr4FlQW7HAOdlBEqqoAKNtMRvUkWPk
	ka6rEYlUCS/MzoIMnUWGvNDk9OLSFMqPZu0qSZPSBH772OTpFrKJ5uMhs5yJJa0D0
X-Gm-Gg: ASbGncvgLQIPtq7+aArlxSCpk0i+y1UEZRjP1Q2tYAoCqN0na+OGX/VWWOLUtWnyT4+
	m9MBlcT/qLp/2NWICOBNqzuLbKojH2sB/vcywulAnsrCjj4F2cPE71EdQh5X5gCDzXgY/axcrxy
	kyX1hrfEoJJdgfca7sznUM3tSeCKJX8dmaKHnCz7eCZHYYA4jJ9iQAAVsr77QF+sFg9Cmwp2jcx
	5rD7l+JHoSLWHYFWamjMR+z/HTduH8G1eT8Ul1mqpq4dFtdLQqJ4wR0L6jDtPTDTfNUTqzCQIZE
	ibXEPKJkzoENyQIuc/nLE6+NXjODmHcX3eoQyWqmiXeP5tBxAS6WPbrrR4n3bbSf1gGRyiJ89sq
	xAYWSXan9TIIp9H16CVuUY4W01UvnAthP27PxeA==
X-Received: by 2002:a05:6a20:3d06:b0:35f:fafa:a198 with SMTP id adf61e73a8af0-3614eb3a094mr4593726637.10.1763745901589;
        Fri, 21 Nov 2025 09:25:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSqOSAg2bp+ltWxvM/VuhIwUQjlal1yRK2gw86abl64MdwTVzYBtgZK+Z5ah7FKPCKX+lBbA==
X-Received: by 2002:a05:6a20:3d06:b0:35f:fafa:a198 with SMTP id adf61e73a8af0-3614eb3a094mr4593695637.10.1763745901019;
        Fri, 21 Nov 2025 09:25:01 -0800 (PST)
Received: from [192.168.0.195] ([49.204.24.237])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f0b69e1dsm6611980b3a.51.2025.11.21.09.24.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 09:25:00 -0800 (PST)
Message-ID: <7be502dd-1627-4a9c-a860-bab622ce1e07@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 22:54:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] clk: qcom: Add support for Global clock controller
 on Kaanapali
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-6-a774a587af6f@oss.qualcomm.com>
 <vomgxeiqctbnezwunxovwznbepmhxbmixkcpi7qkmic4xhhm3t@fwc3rp7r7ylm>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <vomgxeiqctbnezwunxovwznbepmhxbmixkcpi7qkmic4xhhm3t@fwc3rp7r7ylm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ce8FJbrl c=1 sm=1 tr=0 ts=6920a06e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=JNCjnJIMGS+pfmg2DM0HVg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=V3eG9db71aL9wJGKIsUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEyOSBTYWx0ZWRfXwihcB6LPuKq5
 5wh5spMRcrTm4BIKyhPUPIeWIqsGV3MUuLn/QxHYcy4853IGs9BrTa5cd0hbFj8gH/7u6r+wPjR
 h23aIxA07+/3NMM5IY1YcR05jcMMc2vGM+MjPitLyvHrs29CJrfM2eOA8mk7DN7bK4Nv0G2+6eU
 K1/o8bYF78OHQYV7wyAeUk9OqtkCQjQziApa/Iv+/l549p1TPaY+g0KIEOqc8stEDZv3GRLWoVi
 mSEahmPtbe8wa+sR2v9lEyZ6WHpJyMUtNv9id2JxA1kkRLUhHkn3pSUjp44i/WrIHzKmuRSLPcI
 UqbuoR9bt1ULtm9nB4pvp2lwpfoRLv/M96GCcVIy5RhznTbH82WizZfguw0RhsX6UGbOkMhZ6Sp
 U9d49mFHiTUIcr28D3B6HCzBxbY4kQ==
X-Proofpoint-ORIG-GUID: hpwT104cdd1Tak5eTmSw2HCp6qsDC0fZ
X-Proofpoint-GUID: hpwT104cdd1Tak5eTmSw2HCp6qsDC0fZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_05,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210129



On 11/11/2025 4:18 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 30, 2025 at 04:39:09PM +0530, Taniya Das wrote:
>> Add support for Global clock controller for Kaanapali Qualcomm SoC.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/Kconfig         |    9 +
>>  drivers/clk/qcom/Makefile        |    1 +
>>  drivers/clk/qcom/gcc-kaanapali.c | 3541 ++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 3551 insertions(+)
>>
>> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
>> index 8ec1803af76cb87da59ca3ef28127c06f3e26d2b..5289a3f07379f3cea6f6192bcb0d73117fe51a5b 100644
>> --- a/drivers/clk/qcom/Kconfig
>> +++ b/drivers/clk/qcom/Kconfig
>> @@ -46,6 +46,15 @@ config CLK_GLYMUR_TCSRCC
>>  	  Support for the TCSR clock controller on GLYMUR devices.
>>  	  Say Y if you want to use peripheral devices such as USB/PCIe/EDP.
>>  
>> +config CLK_KAANAPALI_GCC
>> +	tristate "KAANAPALI Global Clock Controller"
> 
> Kaanapali?
> 

Will update in the next patch.

>> +
>> +MODULE_DESCRIPTION("QTI GCC KAANAPALI Driver");
> 
> Kaanapali?
> 
> Is there a reason for keeping it in CAPITAL LETTERS?

As we use to keep the SoC name "SM...", "SC..." so was following it, but
I will move to lower case.

> 
>> +MODULE_LICENSE("GPL");
>>
>> -- 
>> 2.34.1
>>
> 

-- 
Thanks,
Taniya Das


