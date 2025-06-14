Return-Path: <devicetree+bounces-185969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E21AD9F8F
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B6341896F63
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4A32E62DA;
	Sat, 14 Jun 2025 19:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fpn6SiSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455CE28ECDE
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749930720; cv=none; b=tPVPguh2oUP8bO7UMQDVGBz+C6DV9yJjAvl4Ss6rRrMfFUNsKmFI+Ptwhh38Xi9JYbP3eZjUDSlEzRskoQe7nrqduAif9rt5+Qp7ocpKFJPMFTIKXUw7ktrNejKKdPJoE68XPa3J3xrTs9hqsZ6V1behyvOwlhrShY5nCi0HD4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749930720; c=relaxed/simple;
	bh=1DPQvWsMzZMsoVpRpNnhl/AD5OgV/RVFULIUzD7BJ3c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VEVFv80pwoFwehJLtJf2d+5YwNBixmLPNUAILSd5UwYZgAWYN5TP/BKaIufzkWKOOen32gHc/EwtQ3nMcLj+O2O4xLdEfqQNKkdmw2E1ZKIxHkrKkQOsjE099PDi++ZuXXXTkyMYyteJnO1DSmv+TnKYdcxLefEY2/w7xwg1GPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fpn6SiSR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EI023j015150
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:51:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZFSQodbNGA+hS7KOGAWPKvCuAsiSvwkzPnaELqxlmrc=; b=fpn6SiSRSzqa5HG3
	I3DMwRkFCN9/cdSMpQtPwFSlI24zrzhK2YM8qA5bwuEyYkudKr+1vcmQItmkNMgL
	vX4F0dRXvCW9BHZ0fyVqXpX/4YUdolMC0x62hfKSDEGQhNTzexF6eeYSQ0KC6jNW
	PYMg+cYT90VAFqtdvJhIK2Cegzm5lmOD6fLg9512Jw0Tp0GAoIJ2Cd1hj+9fJSI5
	QvNOiOReNOlv3qjxk7oMudH046UsffbnSbw3HbzD6tD1KAFQ+/qTYM8/HmBPjYzf
	wjuuoRkCKDNRk84nMj9yop8ccuVVui9HESKyuJkNTilEA0r5Zn/EyGUrk4DfAddJ
	sNDWcw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791fsrxp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:51:57 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a6f59d5ac6so6254021cf.0
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749930717; x=1750535517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFSQodbNGA+hS7KOGAWPKvCuAsiSvwkzPnaELqxlmrc=;
        b=Qf3jhWua2JKRCOOywN9mxakTlf6vnpxWjPm9tYS5XhpSmUVG+S/ZNz+OuA6fGitj+J
         M2GMoipXzioSRPdN4SlBcV7IDjoHQTtfJZU3UzMVgren/U3SFU1cMxCIVUhy48kJGpYu
         +Jfmhlzs2DSocz+TELLaI6y1y2TcS7YWQJaKJSyMzrDFNBiFOO1X9e6MMWYMJPRAfC2z
         KZWYgAopZOIBKmzB5u1X1C0/7KVfa10mbma4bFrO+KQtCks2dcWkEd0iuxw5NA5KV3A2
         UOIiTAQIsd3Ba+/SoKvBYKj14rfWkNLnpeCh3qWXPhqKiHqmokD3BH/Wxol0REIoY4O2
         Hxog==
X-Forwarded-Encrypted: i=1; AJvYcCX8ngtQSNcjPynhA7M5hGM2dQcbHI1SINLtWozE+MT2h/f8oQKPFs61w9qnR4pvoYW5v0K5DvZf6+xJ@vger.kernel.org
X-Gm-Message-State: AOJu0YykDpW/tTG87RBqbLQWCO4zSbax6V0dU7spxFM72ho+4O6s76qn
	OO4KGhQH37BMQIchBT+08FMhLapoeCyDU1L/+GGqnjl+glR6KLFi2bNAd/hS7fmJYHkmCiY/TON
	cflYBKfXrqFQZpHJad0vOdL65SnPlu0L0KYfFoKmQIPpx3ZIlS37/Cif3m6R9LSDN
X-Gm-Gg: ASbGncsKqo4P/O6UPFfVtZDmpgVfDhSzSc3ctrHw+9lC5yMjhm5Cdr86ljnGuW1TsBB
	vL8K4ZUTkGOcqXm0JjwpDf6Xz3Hdx7RcP84U8ZQjXaKXdFTkhrm1JDXVYL5EcoSIJ8WHLCH0uYO
	0pMs424l9Gap3dciSCEh/TBIQKH1dKahRHHgaPqbK8iKaXzrbQwHyH8wMJSTxn1hiQaxkx+tOfu
	h5GpnuoFDa5fuKtn98Gmtkpg3Bhf2P1KgUCjuJYKp8Rah6TODGcgDVLWFu+cEoEIB0wwcW3/YyI
	uq03MwwcrrRTnsl9VoAM02sI338+854L1ClxzkKHSmOiyjL6b/QcCYZJl/AeVOLMJgALdI4XBGQ
	7id4=
X-Received: by 2002:a05:622a:44e:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-4a73c5be235mr22201811cf.13.1749930716943;
        Sat, 14 Jun 2025 12:51:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8/5nTV1Eomja+a3luMnwGAOTXK/vyr0EsJUjxatqccQiFxtOzgnrCciQl5LhpzVTPdUykxg==
X-Received: by 2002:a05:622a:44e:b0:477:5f29:dbc9 with SMTP id d75a77b69052e-4a73c5be235mr22201551cf.13.1749930716448;
        Sat, 14 Jun 2025 12:51:56 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81562d7sm352547966b.3.2025.06.14.12.51.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:51:55 -0700 (PDT)
Message-ID: <08bb609d-bba1-4256-bf4b-1bed9524d66d@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:51:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, konradybcio@kernel.org,
        srini@kernel.org, quic_ekangupt@quicinc.com
Cc: andersson@kernel.org, linux-arm-msm@vger.kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        "Bharath Kumar (QUIC)" <quic_bkumar@quicinc.com>,
        "Chenna Kesava Raju (QUIC)" <quic_chennak@quicinc.com>
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <10f69da3-6f94-4249-a8f3-459dc48fa5e1@oss.qualcomm.com>
 <D9R4NCKH46WP.14C8F7W4M58ZQ@linaro.org>
 <3c0fea8d-0715-40e6-bed9-e0961bf034e0@oss.qualcomm.com>
 <bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com>
 <3f346bdc-81a4-4620-9a31-25c41d591c58@oss.qualcomm.com>
 <DALHL1IBO6TR.11KW7Z16V4SH1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DALHL1IBO6TR.11KW7Z16V4SH1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2NSBTYWx0ZWRfX21SaPw2t04rH
 xt5huwBdcxk4lEcRpZsAoc+73NpVcQf+swujDLHaTopghKpj+fW8Bh4kJCJAlPFsRKLHGt3SV5C
 xh17tUXwOE5xY/9OLzWie6cLUyLhY9yE4dNw7dEl55xoldbx7NB/4xFGrBEbnI6qJyzM+N5wx76
 qlilMwZiSdzXu1w7Qv2lBr9Gk6VHc5aBgjJaGpjhw1nSynADIh1n9xSNczw0FQHq5C8b0SosOAk
 rcxUkTjyRkTF9KALPBDvGYd9kKy1T0HTdKymH4BRmSzdTsGD95bvS9oJg6l5ys4kgFsiA8uyMnq
 F3wrHHIzZ+q+xIhhQC+bv/b07sNWiMIwQMuXAJVfvS1ZwTKIVZnBHJy6ZJBYiCOHPyxTyBoH9O2
 txjKIr/ptzAMojwiv0gHlh/KclJQ6/YbPzwZA4pGFznW1YnHd17trFXESl1tbnV/Fz//NJV/
X-Proofpoint-ORIG-GUID: 03JMH64wGx3QWbl4dHyQLIggidJJaHmh
X-Authority-Analysis: v=2.4 cv=OLIn3TaB c=1 sm=1 tr=0 ts=684dd2dd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=Il0LnrQAbVTfbyP1jTUA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 03JMH64wGx3QWbl4dHyQLIggidJJaHmh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 mlxscore=0 bulkscore=0 adultscore=0
 suspectscore=0 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140165

On 6/13/25 4:48 PM, Alexey Klimov wrote:
> On Tue May 13, 2025 at 2:09 PM BST, Konrad Dybcio wrote:
>> On 5/9/25 5:42 AM, Ekansh Gupta wrote:
>>>
>>> On 5/9/2025 4:27 AM, Konrad Dybcio wrote:
>>>> On 5/9/25 12:20 AM, Alexey Klimov wrote:
>>>>> On Fri May 2, 2025 at 10:38 AM BST, Konrad Dybcio wrote:
>>>>>> On 5/2/25 3:15 AM, Alexey Klimov wrote:
>>>>>>> While at this, also add required memory region for fastrpc.
>>>>>>>
>>>>>>> Tested on sm8750-mtp device with adsprpdcd.
>>>>>>>
>>>>>>> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
>>>>>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>>>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>>>> ---
>>>>>>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>>>>>>>  1 file changed, 70 insertions(+)
> 
> [...]
> 
>>>>>> IIUC the driver only considers this on the sensor DSP
>>>>> Memory region is required for audio protection domain + adsprpdcd as far as I know.
>>>> next-20250508
>>>>
>>>> rmem_node = of_parse_phandle(rdev->of_node, "memory-region", 0);
>>>> if (domain_id == SDSP_DOMAIN_ID && rmem_node) {
>>>> 	// ...
>>>> }
>>>>
>>>> maybe some driver changes are still pending?
>>>
>>> Would like to add some more details here:
>>>
>>> Memory region is required for audio PD for dynamic loading and remote heap memory
>>> requirements. Some initial memory(~2MB) is allocated initially when audio daemon
>>> is getting attached[1] and this memory is added to audio PD memory pool.
>>>
>>> Additionally, if there is some additional memory requirement from audio PD, the
>>> PD can request for more memory using remote heap request[2]
>>>
>>> The support for SDSP was added sometime back[3] to support SDSP usecases on some old
>>> platform as there were no dedicated context banks for SDSP there. On recent platforms,
>>> context banks are available wherever SDSP is supported. 
>>>
>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1273
>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1884
>>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/misc/fastrpc.c?id=c3c0363bc72d4d0907a6d446d7424b3f022ce82a
>>
>> Ok, this was mildly confusing given there's specific "normal" region
>> handling, but the DMA allocator takes care of this one
> 
> Konrad, Srini, Ekansh,
> what's left here -- I guess memory region is needed, 
> so do you want me to test with secure flag as the only required change at this point?

I think so, please give it a shot

Konrad

