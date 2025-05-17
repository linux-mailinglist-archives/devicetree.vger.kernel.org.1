Return-Path: <devicetree+bounces-178145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3725CABABDB
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 20:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 025233B2EBF
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 18:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E2E2147F6;
	Sat, 17 May 2025 18:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kUJ+dPzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1F54C9D
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 18:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747506538; cv=none; b=CIE5tBSL0n9qKhvcWpkpx+VLwCopy/t9T96PZyAnECSIutVec96b0zsFshB3DYeQuEu6w20yk+XPxWitAbCTMvBC2naka5J8kv0YBDmE2m3XnnK/rfuvvqzThkjzI2uzBNNX3DYZPO5itGQkL6YCDnI+ZL02rTn5tbZAjeCTTg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747506538; c=relaxed/simple;
	bh=venq4ySRUNYuHOZSXjX1NXCJQJfWk5jFiFmaLZjp1z4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6JBbPmIGM5n+//xA4sukXVN4Pvw/Wf8i/pcVAYOuaZZN8AC7XWgcW1ugJXuMGhHAO6e2BBIsfU7a2gQ11iVKCoXrTtEL+CWTRpSctIAjBAscJwBm9vU10yqJLejXE9K08u+bhAUvSs0+fhrubkSrqurs4nECEx5i3akVWW4sI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kUJ+dPzm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54HCKJuQ015751
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 18:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WM0LxhWS7WoqwNfrt1DjXdDre6/96mPxCXdCCzvVj2c=; b=kUJ+dPzmPOUT1H2e
	4f3vdsTGtRsnkKqfAHQaVG6C4ia/O5UBXNhiKnvDXpWPJLOE8wn8fa8CHIPZQQxb
	fSI67sTTSEaWrXxCWefbK1Cx3sgo2vf5h4aT+tK3DdS2hSl459bt6NoowRStl2+b
	/h2tFib9F1xUpRbecSDNtJpNpCUDXjMtC6LvdcMwddbid/XMZE3ryN1bXKF8HJAU
	C5bG4XIDWLKhxV/J4eLeKfo2EgtcPupxMzNHPFEHE+10FNbRR26YKUPbLUwRsLcE
	Q0X3KOx3wUnNrDx9uYI7E4pzVzYbDZH2+iCSlw8sZdOTnae8wA8gvgD4dXGDq10U
	yg4NaQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju78yns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 18:28:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54734292aso83003785a.2
        for <devicetree@vger.kernel.org>; Sat, 17 May 2025 11:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747506533; x=1748111333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WM0LxhWS7WoqwNfrt1DjXdDre6/96mPxCXdCCzvVj2c=;
        b=MxkVOvuQskrtKAgyBc4a6oQ5/poI7vXtQIGvGvVkPE8AwMbKNqBWv8e/DBg9yZowAx
         kz0UQMVzsEKyc8JITQcxq32Gt2QRzZ+DuYvyT5F5tm4cEmMw3WcufC8R2C1w5aJL3yAJ
         kmvnFHG4XuAKvS7poAg5h/3xwMNsnHbGV8QTHmn7PVcD24VRJUu8DOuaYuOtH/j3NcOX
         2J7WcfnZswlsgfncPlwrZW9IUhMU8FiUJjbjT2Mfqs4lxWC6FgQEHjSvOcH9pU580Z3d
         D64WwHN7NJjAVdTiBFTI7Xa4Iozc6Fjzi7Z8/KGJim/DkbCU/LI/4ob8t++irN0d8zL2
         KYQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKRXtTXffxfr0djgr7aSejdzsTvKyfSyiuye9utGuLH4sYdItET0eK7EJ+XjC+N/ON35kuoNo0EpZI@vger.kernel.org
X-Gm-Message-State: AOJu0YwXplpAZl1Iu0/hghlM42JodTKkrS8pdTRpsiGH4mQl97wPSWj3
	5ky+6S2BeqcJJ3+LEqJ/lB1jTBn0OyRroPGFEwtTea8qHZQfbSTBUlTbwrgnsjZ5V9IfWn9oaAZ
	Io/0TUYGcC+OzsOr8kMFTBd4L5Pn/p9Q61k9FYvP2+tsCC8OJ1MerIEao0dy3FgQP
X-Gm-Gg: ASbGncuxhvONusJ7xpVDQrhQdITe3dddCrGmDgGReZqQ6pH/dgnxNP4nqQyOg/SU4jm
	D6aVEgc1bTwxgGaBblq/Xit7r1HOmcaVPihC9c8v5lOxldX5E7DKlosoJn1ufaGfWJriD0pkjEi
	tlKIqq1OGHKBRsGM8ZbcHZRJ49QkQ0rDZAnEMVCG8VZemTkTiB8cB+Rg0k9MwpiSCoP+WGEsNs8
	vP8D5ewhM09mLhGP1VPuzF5x5xIQ8ljqvgKhYjuyl5gedQPmzf8b35Jt+A+ZEV6gFRLqfmOibBN
	NRnVihbUOpPRqQx1YgiDzHocGmMjEtmO74mngrPHbqf+v6KH7DeB9Mx/QuFy0veksQ==
X-Received: by 2002:ac8:5acd:0:b0:494:acf4:9572 with SMTP id d75a77b69052e-494ae232bd8mr46453541cf.0.1747506533370;
        Sat, 17 May 2025 11:28:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqlFqFfxfLYXFiiljRHIXrnkNmpSimkZBjJ/iFwPezDkWXAt4BzxdvbnuBYSABObtqzWL8Xw==
X-Received: by 2002:ac8:5acd:0:b0:494:acf4:9572 with SMTP id d75a77b69052e-494ae232bd8mr46453431cf.0.1747506532951;
        Sat, 17 May 2025 11:28:52 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4c516dsm325677666b.154.2025.05.17.11.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 May 2025 11:28:52 -0700 (PDT)
Message-ID: <6fa4959c-d733-4d50-904f-caf933e02da9@oss.qualcomm.com>
Date: Sat, 17 May 2025 20:28:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
 <Z/exOF4T+0vNLQwg@vaman> <0517c37d-b1ba-466e-bffd-9f47b0d458d5@quicinc.com>
 <aCRVaNDQP/PdAXPR@vaman> <5183b76b-8043-4309-b25d-e1ae505f929e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5183b76b-8043-4309-b25d-e1ae505f929e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=6828d567 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=jJrOw3FHAAAA:8 a=VwQbUJbxAAAA:8
 a=7CQSdrXTAAAA:8 a=VM-KvOk4zruIL__GPFMA:9 a=QEXdDO2ut3YA:10 a=-FEs8UIgK8oA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: O-GSTcZSoCqgxZGtkC2v8qvF3tkg7zQb
X-Proofpoint-GUID: O-GSTcZSoCqgxZGtkC2v8qvF3tkg7zQb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE3MDE4MyBTYWx0ZWRfX9KdIaPvPdwwV
 yaGzzEKhdsOLf6wCUm1GHD8J8yfLuIDU6K5Tovf2bh93HFqLO2VerKcJx7Z5QXcAsXcwuepsb40
 CgTUjaJauO964Q1+tdY8U5VNVXxybHjBWVhtQ9YHR+Nze2HJFMsdahWlUUw9f3GcHuo+N0npJa1
 NlywwJbgcRNNdPpAZzQiKb2smd5p0UuLRdOI88SkW0SRRkzpkWIzwgUe0yQbeq1k1SZ1LJB4nzR
 mXF6SEwhfoqifmUqqp2Zpkjb1CnlnLSHRHx/IIT6kG25YZOZnv2P8NL74C5plFlizh0xXFGIIg2
 kossCbvZ6aE+s6b/+yfGp3bV3rQ/b/GU13RrTqC6azF8Qmzaguie22e3Nj7nx6hDpH6eCNaulCK
 7fMFkvMaFV4+GbEUwuWM9eWXSV2dLz6YoCFu3wUacziZihMjYt46ewxz3rCauErqqMKYLhvZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-17_08,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505170183

On 5/14/25 8:24 PM, Wesley Cheng wrote:
> Hi Vinod,
> 
> On 5/14/2025 1:33 AM, Vinod Koul wrote:
>> On 16-04-25, 15:45, Wesley Cheng wrote:
>>> Hi Vinod,
>>>
>>> On 4/10/2025 4:53 AM, Vinod Koul wrote:
>>>> On 09-04-25, 10:48, Melody Olvera wrote:
>>>>
>>>>> +static int m31eusb2_phy_write_readback(void __iomem *base, u32 offset,
>>>>> +					const u32 mask, u32 val)
>>>>> +{
>>>>> +	u32 write_val;
>>>>> +	u32 tmp;
>>>>> +
>>>>> +	tmp = readl_relaxed(base + offset);
>>>>> +	tmp &= ~mask;
>>>>> +	write_val = tmp | val;
>>>>> +
>>>>> +	writel_relaxed(write_val, base + offset);
>>>>> +
>>>>> +	tmp = readl_relaxed(base + offset);
>>>>
>>>> Why are you using _relaxed version here?
>>>>
>>>
>>> No particular reason.  I think someone pointed this out previously, and I
>>> was open to use the non-relaxed variants, but I assume using the relaxed vs
>>> non-relaxed apis comes down to preference in this case.
>>
>> Nope you cant! There _needs_ to be a specific reasons!
>> When you are doing read, modify, write, it is very important to know the
>> right version to use...
>>
> 
> I mean, its a write readback, which ensures the bus transaction is complete
> based on [1], hence why **in this situation** it is up to preference.
> 
> Otherwise, w/o the readback then we'd need to ensure writes are made
> depending on the required sequencing (in spots where the sequence is
> strictly defined), and that can be enforced using barriers.  If you feel
> like using the non-relaxed variant is preferred let me know.  I can replace
> it and remove the readback.

Readback is stronger on arm64, as otherwise the writes may be buffered and
not observable at the other endpoint even though the instruction has been
issued, even if a barrier has been issued

Some resources:

https://youtu.be/i6DayghhA8Q
https://lore.kernel.org/linux-arm-msm/20240618153419.GC2354@willie-the-truck/
https://developer.arm.com/documentation/ddi0487/latest sec B2.6.9

There's been a real bug observed (pun not intended):
Commit 2f8cf2c3f3e3 ("clk: qcom: reset: Ensure write completion on reset de/assertion")

Konrad

