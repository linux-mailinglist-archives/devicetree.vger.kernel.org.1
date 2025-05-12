Return-Path: <devicetree+bounces-176481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B90AB4478
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 21:10:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06D6A3BD484
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 19:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F90B298247;
	Mon, 12 May 2025 19:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kB/UHNsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A43296FC3
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747077036; cv=none; b=B2zoi/K9xPqwE/j+l9ocDCC112rpzf53POc92F+/Yh1WQJv8KoX1e5KrzZsyQI0xXo8zOELLi0T2fMKpz6Ymi+7MZUUkNH/YugR0B+uO8JhP2+k4Kq3tEfjF382321eHJEzWVCd5VJBwejtYChsnxeAaeCGmfnZoTG0KAoVkiXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747077036; c=relaxed/simple;
	bh=7FDvjUhQK98zhiBlhvEoWtXdnuiVq1vo4/mLb46MPuU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oi4xvn9qFY/KDX+Rt6bnppF/F24K1+gVAtkJcXXgIizW1glwu8mrNEHndTu5EEqYaTSeK/bt2Ib3/M8al69s1xQqaOrK4qkFVDPLAml+RXrxlLuJHMv3V9Pm9u3pUYlq5A8WAEToxL2eI+VEDtR9HHKzPBwPC3ZB07QmICuSfwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kB/UHNsV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CCvluY028432
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 19:10:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YYz3l97YeUs4psiEgphr3ykxMpiyvXGE8Y78//T9RF4=; b=kB/UHNsV5pmCG15/
	QupdvEBHxFCXdLPF8zTKNU95oLEGz8XRpPW2VJZSd3NUmP+Cj+BnaLAudbo+c7yY
	h2KzdiDVo2thhgKA1LjeO1Jvn9bUV881pO2LYuPluNJs7q1C/CAnWj57BwcCgWpD
	Pi/yNC9qWRtZD90SYzavWAtWYLewkJ1lM9Lx8MIGxiN4DE1ciQ4O2dmN0Khep2yG
	iP3ETwy3hxnfG+FP5ib4of9xpAshjznNcSEk8I5SKODjujXGwVl5MQPrscaOr152
	bo8xqoNy5ojMhcr0i7pHafX6o7+lsz5s/nHoQ6WNRTYK/GiVek08HrluiPjG1+Vk
	PBHtCg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hxvxdbeh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 19:10:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5af539464so144538585a.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747077032; x=1747681832;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YYz3l97YeUs4psiEgphr3ykxMpiyvXGE8Y78//T9RF4=;
        b=kbe28jMd7r37FkOGDfO4SeNWlDG2JMvCLz2aDukkAIpWpJz30iCfftqvIFnTTUxk46
         92478IfLcl87rODm668vlXtZGoq1dPugv5kEQuFB5wkOMZv26rVNnSqf8ZWp/fBlNM+f
         5oR0636b4gWyReqJSVOH1bi24WdrAyH8GoWlnhM88S3CjR379I+I/5Ni4259sBxTjaxN
         6q+xPgSJrMIoGcE+Y+JiG8cIyiqGb9/7vP2HknR4bme7EYH08B0llBgqksbVOHuCBvJi
         jnmVhyK0pW4cxadSZ4QOSwCjmpIqh3gvKwH9P8nJqTOcDw4Jz/IJxSeco8noArKpIqTX
         qHAg==
X-Forwarded-Encrypted: i=1; AJvYcCW8OINvUM+fEfM7xIqKXJm1oX/BEPhpHLI4LdJIoBhs4M8B3eQVrO9Ph2+McEWG9Va1y907qJ9W+bFG@vger.kernel.org
X-Gm-Message-State: AOJu0YymB+uwnZBVz+vK08d4yr2/TPzoBMXpbdpmg0igVMG8pIswB+Dm
	28M3rwXdVuaUX+ljb8iKwV31jT+1pXv1EOmHrXJlouGAkFWEredaniWpfk52eI08r+Q4aMwU40S
	ulL1w8W8MUn6v6PPJWQXG3BgpQjYHBGrcswuhSP3iaNYgdeADlZ0HTIhRfUIu
X-Gm-Gg: ASbGncvWaca++I4k/IgHALKimMaxwYyXjVXGw642eg2nrJ8jDtm1r/FPLHhH0Jrt0Lr
	SiDrViH9V3QR/hkxMcHPUy7AOooGcKeGycORS9MLyOc71eRQ1j170pGTi/AgaHORqjYXgQr+CPs
	YrfBAymeHOyr7MN/9OWgVO3HOaMhmZ++UixY4H+iGHSwyBPMi6fkOKw1GC1dYrPl1oavnlAK+ma
	25iRvHjKO/jb1FRVSyL568Hwo7ZFjzWNy2CSCAp7DgWNEYu9wMOQgcNc929wYy2F3K/d6PBcJjU
	bjbfzkHd3qAq4QSIbmGGkgmYu7ZULw0ZPD82FX4aWzGf1zxoPpGDOy9STapyPgKBIfE=
X-Received: by 2002:a05:620a:198a:b0:7c0:b81f:7af9 with SMTP id af79cd13be357-7cd0120a6a2mr886745285a.6.1747077032127;
        Mon, 12 May 2025 12:10:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2K9ql15/d4D35gN1KXzYEavsjzdHbxihDRkp7GyzeRQABAyBVS1bBH8kySfi/iFDeV7zB6g==
X-Received: by 2002:a05:620a:198a:b0:7c0:b81f:7af9 with SMTP id af79cd13be357-7cd0120a6a2mr886742985a.6.1747077031702;
        Mon, 12 May 2025 12:10:31 -0700 (PDT)
Received: from [192.168.65.222] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9d700e7csm6014016a12.64.2025.05.12.12.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 12:10:31 -0700 (PDT)
Message-ID: <3065cdb1-30ff-4be3-8959-45e4c4edc123@oss.qualcomm.com>
Date: Mon, 12 May 2025 21:10:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: qcs615: Add IMEM and PIL info
 region
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250507-add_qcs615_remoteproc_support-v2-0-52ac6cb43a39@quicinc.com>
 <20250507-add_qcs615_remoteproc_support-v2-4-52ac6cb43a39@quicinc.com>
 <64893588-544f-4cb0-8c0b-7eef588468d5@oss.qualcomm.com>
 <c0ab504c-2b27-45cd-be8f-1176230b8bfd@quicinc.com>
 <f81b3f81-b14d-41c1-9968-2d473e1f0947@oss.qualcomm.com>
 <2eb4606c-16f8-4e34-8084-039c9e57bbdd@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2eb4606c-16f8-4e34-8084-039c9e57bbdd@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDE5NyBTYWx0ZWRfX6ercxPUlLlog
 gpDiU1m6bpU6z/5BDAWksmf5Tv0oLdoRuRn5P/i9Pf26QDEZdzSSK1vbTMQozZwmG7o5KvJ2k6U
 yLZtBNWi211nEqIm1bhX4bd/H+9ysM0AhMMUyQOtQRsZYhXo81WrSrEJTegrYdY7meNlbrZRwkZ
 Y9aMwofw7xB84ptWgDNRCo9XuXss4Ax6wtTMvq2OY9CyndOmQdR3eqRTFqt+PNKePY8iTAd5Hv/
 wL6YK6YIkujpfNDzjam5KDrM8qP5DVBnU8xuIXMvXWidL9ZZOJ1YYuKGXm8J0JjxXLiAqk6NOJ7
 87usztBRndUG1GmyexArzkqtfJ2PFtQzheED8+WBnd8ujrP4IFkXi0xNq5kp+LHPW6JGES2jVF8
 Kxl8UcfeHVLeTO7Nwk5Jbul7xz7LbYapBvZzjtFT3NnOBYoiccHKDYHKxekr6bPgcS6nxegQ
X-Proofpoint-GUID: j7XJ8VVeYiDl2n3aKpfh4bLkKYYX9htA
X-Authority-Analysis: v=2.4 cv=WMV/XmsR c=1 sm=1 tr=0 ts=682247a9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=BKL5ZcGrS_xDY7syMdwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: j7XJ8VVeYiDl2n3aKpfh4bLkKYYX9htA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 spamscore=0 mlxscore=0 mlxlogscore=989 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505120197

On 5/12/25 5:20 AM, Lijuan Gao wrote:
> 
> 
> 在 5/9/2025 4:54 PM, Konrad Dybcio 写道:
>> On 5/9/25 9:37 AM, Lijuan Gao wrote:
>>>
>>>
>>> 在 5/8/2025 10:41 PM, Konrad Dybcio 写道:
>>>> On 5/7/25 12:26 PM, Lijuan Gao wrote:
>>>>> Add a simple-mfd representing IMEM on QCS615 and define the PIL
>>>>> relocation info region as its child. The PIL region in IMEM is used to
>>>>> communicate load addresses of remoteproc to post mortem debug tools, so
>>>>> that these tools can collect ramdumps.
>>>>>
>>>>> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
>>>>> ---
>>>>>    arch/arm64/boot/dts/qcom/qcs615.dtsi | 14 ++++++++++++++
>>>>>    1 file changed, 14 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>>>> index 53661e3a852e..fefdb0fd66f7 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>>>> @@ -3266,6 +3266,20 @@ sram@c3f0000 {
>>>>>                reg = <0x0 0x0c3f0000 0x0 0x400>;
>>>>>            };
>>>>>    +        sram@146aa000 {
>>>>> +            compatible = "qcom,qcs615-imem", "syscon", "simple-mfd";
>>>>> +            reg = <0x0 0x146aa000 0x0 0x1000>;
>>>>
>>>> 0x14680000 0x2c000
>>>
>>> I checked the latest datasheet, the Shared IMEM address is 0x146aa000 and its size is 0x1000, 0x14680000 is the start address of IMEM layout. The shared IMEM is used for debugging purposes, while the others parts are dedicated.
>>
>> Even if we don't use the entirety of it, it's good to describe
>> the whole block
>>
>> Konrad
> 
> According to the definitions on all existing upstream platforms, this imem points to the shared imem. Should we stay consistent?

That is because everyone kept copying over whatever the downstream
kernel did ;)

Let's describe the whole region - at best, it doesn't hurt

Konrad

