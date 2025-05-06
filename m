Return-Path: <devicetree+bounces-173892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F1BAAB8C1
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 08:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1EFC3B8683
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 06:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4BD34E870;
	Tue,  6 May 2025 03:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HkpX+czY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223C2350DE5
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 01:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746493207; cv=none; b=i9luv0QOSReJZlLTy+76PezLxLaNdH28O+bVd+Gbh28H29GlzV7FTbHCSe50L3ux/bzXFQAR7Ib5lOHBluyj9v7RWGb0WEX8dHUJ960d55VqdWW5641gmJlXRITohfTJIFgwusY2euQ4Veb8v3lMdsyciSOwg+IlWt17ymdjV9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746493207; c=relaxed/simple;
	bh=mu+Bs8ufgmYPoMWaa3r4Rn+xjkFBtrCiihgK0Hdki7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jVOwKp1UOGtTi0EcGlbhbSvPCoPP64PhanF9yTGPpqsPnue5XcwiV9qlrqeDN3QMUXPy8FGcngeEeWRQHUuqoOH/F8nNpAQFMRz46z0TqyDinLOOoZWyLN/I93r+DpY3YqaBrxROZjsVe5srHztN0QBkTIHHVbGQhWPqYMATDXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HkpX+czY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545M8WNi026322
	for <devicetree@vger.kernel.org>; Tue, 6 May 2025 01:00:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xdv764RLRrGf3SUwbhabEY+EiTd1qUAhXP6mTrPrGoA=; b=HkpX+czYmjPE+Ljl
	Yu7zmZ6gdpcFxonh39cOaEq6Z9KbmHcNxGOEZTM2yrmu244MLQ7ccc4BiGRrRJN3
	YThX+WcL1fk5Gq8rKpnc7/QjsYLn+UKHXz+5NJcRRXXp6Jm9YIxeltquaQEBVwLn
	SLPnSl/Dql1Z+baVnO2QSeWRg/OieWVSCa2wSKYoJDt0JHzfbihjXc/14r/0sKUM
	0KehQDWdIuNLtyzW7ENYRIZxVCnvtPgAOzxUKTHXzdEYrs5WT21gFkyxcbAPrrW7
	oGPVEs9bBDqcc5wiwKud8pR4aiGOGLQhHsLRT6HYWZ88g7MN98Iq4+6J3BmSNXe9
	7bqqGA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5uurb88-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 May 2025 01:00:02 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47983a580dbso5391421cf.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 18:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746493202; x=1747098002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xdv764RLRrGf3SUwbhabEY+EiTd1qUAhXP6mTrPrGoA=;
        b=JeDXZYFjFVi6MIU7RUsaoJdP+dwPnJsJP+ijDYmZfq3YC38KpoNNQ9MqOX4Fj+k3nL
         mlyY7xPBLk6z907hbftbmN8Jy2agovzzYTD9YgESKE8XS8uovOypQG2r26I+X5QdWyyZ
         GmJu51FshGmDdRzrOOn1r5B/KjkjKHsYylATn9rpeMbyMlBCXzPXplCWGsLMi9tDgjnC
         1IelwnmrwaaRyKomTtyVxccZSoIeP+dtMRsU/Wk/3ZG8h9K3S4NtISYApR1TQad2k04p
         CZWL+7ORbE48pe2sD9rQRUzM1Bs58rA7RfjN4nK/HYGyO+JlJdV+KSj0O/hQruy7SV9R
         Bbqw==
X-Forwarded-Encrypted: i=1; AJvYcCVFiJcUZ35N8/A+kItQ/JXmI1rOQS5tkd+9hJlyjH5bcgXusqI2e/aWEA6ZxN5SILXHPf73NA2G2CRF@vger.kernel.org
X-Gm-Message-State: AOJu0YzuEfnYK/tdEjx3497plhBmc7/qAqOdxbjbxAf8N/MYvI6KkvPJ
	xRec4gilNHbySsWt2B0XrRXBET8+P6oZp8Z9IAjvSMLkw01Jvne9QEStqhe/ibJCb4Q7WOhcJyd
	FBmNKs7RxouYFN1nM7Q617PbbYWw8tnHHYnyR03VNZ30OF15I0/HJj+pnIvYu
X-Gm-Gg: ASbGncvHq3NH8x5aGHKQKa0X9zYgxpO3uV4cltTwl1vTdn9a2bX0bWZHwCAnUcKniMz
	yFqiUe5j88L/m8mSZ6xiHSaW1kH0YEKX6SF75UK395dkG40T7/hXtvIi3UDBxNnxWFSwPiTNzSl
	0vreow1S5O6D1abAxraVtrusNR5reTzw/vk5k+AUbtZJs3sJxrFymzDYxZOqg9htm3gTud1HvFW
	e2ScfekTFh8Zbsqr3UaFv9wi8zqw6l690L6WOsRHLkOLRxTZVKzpbU5E98eMkiprSklEV8ZMbpa
	xdj/9R9u3vaycpelXpY8ZvvSjzp4WaMN2y+TMQhlZRWMQ7VoFHo9IF9VI9oIgEWBznw=
X-Received: by 2002:ac8:5d0e:0:b0:47a:ecc3:296c with SMTP id d75a77b69052e-48c2e0916e0mr86864401cf.0.1746493201914;
        Mon, 05 May 2025 18:00:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2SXWHDRs6cCc/ENSCxWEM4J3053zB5ep3H8W4JdHCVxT6N9A6giFp3tQ2bpDMGbTdjClJzQ==
X-Received: by 2002:ac8:5d0e:0:b0:47a:ecc3:296c with SMTP id d75a77b69052e-48c2e0916e0mr86864211cf.0.1746493201577;
        Mon, 05 May 2025 18:00:01 -0700 (PDT)
Received: from [192.168.65.169] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fa77b8fe52sm6532159a12.55.2025.05.05.17.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 18:00:00 -0700 (PDT)
Message-ID: <31008c59-afed-405a-a330-e42d89a62790@oss.qualcomm.com>
Date: Tue, 6 May 2025 02:59:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] clk: qcom: ipq5018: mark XO clock as critical
To: George Moussalem <george.moussalem@outlook.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250502-ipq5018-cmn-pll-v1-0-27902c1c4071@outlook.com>
 <20250502-ipq5018-cmn-pll-v1-2-27902c1c4071@outlook.com>
 <1435b068-3bb9-4285-8399-81fc278152c4@oss.qualcomm.com>
 <b05d9351-cc79-4e60-a6e0-de2fe698098f@outlook.com>
 <DS7PR19MB8883995CB86AE2784CAFF8AC9D8F2@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883995CB86AE2784CAFF8AC9D8F2@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=L9cdQ/T8 c=1 sm=1 tr=0 ts=68195f12 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=qC_FGOx9AAAA:8 a=UqCG9HQmAAAA:8
 a=NYj23yi3rhxQzrYcNZoA:9 a=93bzvrPoB/MOLOjVLaw53YuoC0c=:19 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: 8VswvVpIze0EsbpiaaSE52uXEK-nyHAD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDAwNyBTYWx0ZWRfX2+wsbN5L7UUU
 NChjMnEVanBJ0w90GigWMMfg4mBgpz4vPGMCaM/XgKTtCHUau9HQTCXaJN6IVsNvXDbhJ1xRceU
 WdljuDHlh8UcjG528zWRp5M68tPZruN0FOGLo5fCLgvdQuy+7+5WQ90SWUng6N8z8Nn88kcJQV+
 cWrDou0Hqc5pZaFwvDVzfuKMMo6pdHCZxzh0F2YcNlZRpjJeQ2wt3JlZGzOJgnevm+gPNmppvhX
 yr2XWJS/jneSXpJ/1Wb3dVoQ8KD1Ebf9UQQdi/pg1kH7oF7PPGlUQGDMP/nGnBVQyGDVUkZCAJh
 41C4qjr3whMCsR0iFyjiYIdR2RVkKaRkLpf/MppOHTXXsTGomssrtDraf6RjRMfEa+0JO/Lt6OU
 xeg169S0IUxkApw81XUfgXhTNqw8PyE7x8e/nnDarZ8pDEhqExjqLRWA1ofILFM2dYoy8lF5
X-Proofpoint-ORIG-GUID: 8VswvVpIze0EsbpiaaSE52uXEK-nyHAD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_01,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999 spamscore=0 suspectscore=0 impostorscore=0
 mlxscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060007

On 5/4/25 8:59 AM, George Moussalem wrote:
> 
> 
> On 5/2/25 16:45, George Moussalem wrote:
>>
>>
>> On 5/2/25 14:29, Konrad Dybcio wrote:
>>> On 5/2/25 12:15 PM, George Moussalem via B4 Relay wrote:
>>>> From: George Moussalem <george.moussalem@outlook.com>
>>>>
>>>> The XO clock must not be disabled, so let's add the CLK_IS_CRITICAL
>>>> flag to avoid the kernel trying to disable the XO clock (when parenting
>>>> it under the CMN PLL reference clock), else the kernel will panic and
>>>> the following message will appear in the kernel logs:
>>>
>>> Remove the struct definition for this clock (and the assignment in
>>> blah_blah_clks[]) and replace it with:
>>>
>>> qcom_branch_set_clk_en(regmap, 0x30030); /* GCC_XO_CLK */
>>
>> understood, thanks for the quick turnaround!
> 
> Tested it, but then then the issue is still there. This time fixable by setting the CLK_IS_CRITICAL flag on gcc_xo_clk_src. I was looking at removing the struct for gcc_xo_clk_src too and use qcom_branch_set_clk_en, but there are clocks that refer to the gcc_xo_clk_src as their parent. I'm a bit hesitant to tinker with the GCC driver without access to the datasheet. The downstream driver actually has the CLK_IS_CRITICAL flag set too on gcc_xo_clk as initially proposed in this patch:
> 
> https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4/-/blob/NHSS.QSDK.12.5/drivers/clk/qcom/gcc-ipq5018.c#L1457
> 
> Are you okay with this suggested approach?

Since turning off XO means the CPU (and nothing else on the soc for that
matter) clock will not tick, just unregister the RCG along with it

you can remove the .parent_hws (dont forget .num_parents along with it)
from the affected clocks, this is effectively cosmetic

Konrad

