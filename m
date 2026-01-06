Return-Path: <devicetree+bounces-251960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAF8CF8D95
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 15:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 36F12300E635
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 14:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869A532E720;
	Tue,  6 Jan 2026 14:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bAr0MDmy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d6dLLUxk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79BD242D8B
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 14:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767710842; cv=none; b=L2EzhVBW6QsUT+H6X/r4kNB3bbFt0dgHlNZRVFgVr3k3qTEIC+RKJrkRgR9nEZnHJK84XxfyR4n2htdyAjyN+SGV18ZXr5I8ERHWoPg1qX6PLa/rr7aDvH+qFeGiO3vQQxgaGnYvL4IhXg4jnb3gyGht66wy3jdswjFl23X3KKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767710842; c=relaxed/simple;
	bh=1BLBAQMk8pTE3hF64+V13g2KSdCDa8b+lx+TiAfkmfg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SnhNEkgsJa5/IOXBXIYDCXyz8Cxx1Lf+dkN3mIvTbJjjvzVgifZYg86+ORDXsb5m+YR8uGKGXnTJlhtM9S5rKEMhZcI6J1wTwoudPzF3iOOvWqTTRaf/MNIHQg5UgpSOeV7HOsHEi5keBdXMkpwF4wUu5knsBJD4kZwE4iwLGsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bAr0MDmy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d6dLLUxk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606B3o1I2684965
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 14:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zcfsFS04VN0Soi3THqaIkbsPmr9ODp+iS17uQAxtAY8=; b=bAr0MDmyIkL6yg9w
	SUhQGeEyloBC+6OLCP+Q9x2cmKDih9Qt2O+RNLsXi+P/5JNviDJTAJAmyG+UW7XS
	8Yc9YKoxhy4wpIJ5o0PBYb+uOceiEHUa/iLd1hDEn0c6mNCIaDsRp0XX0BTVd0h7
	bJ5XZVpd8fyWllMfnz82uX03oAnq5b4xGClzIF52jRziejYayiPJX/yrdy5nY3j7
	7YAnA53HsbgyrLtRNLH+60i6G8UNG4ra7KGvPOw1SJdMS4Xqf7j56B6L3mManify
	wn7cZTudXPInisJ96H0WIkOlaMzv059RiOyYygntr9ulFgv5habNGxs522wp3IMj
	UkSAyg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgty5hr9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 14:47:19 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34cc88eca7eso2418982a91.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 06:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767710838; x=1768315638; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zcfsFS04VN0Soi3THqaIkbsPmr9ODp+iS17uQAxtAY8=;
        b=d6dLLUxkXJ6kY0M/MCiQIRn2/WaW/HxBjUiRqQJp4DHicbr99w5Z4g1wyzHXBWRtWX
         t6i499brNVyFS9gW8fE3tAJ2LGCbyzWDY2fNJR4yybu6hWEPK6MbngY0bV2RCc+NQMit
         LCn0p1gP3X8TwRlFHWrfUEw1qQxPOQdjJzXAOvKyPCGnow8EJTSlwqNwO3x6euH8dyyn
         C89xS64P51kTFG0IYLTBOeR6ajn4L6eZiATW/YFGXXWHMo0iky9qVwet1r1ZYZNdxswA
         HJKRcnDMGdxMlIFqiKYK2ByLMcacmgEXolFb3J9pwprEC5xPaXme/vRiXm3x0Y6Ih/Eu
         WTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767710838; x=1768315638;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zcfsFS04VN0Soi3THqaIkbsPmr9ODp+iS17uQAxtAY8=;
        b=L2Tdw5e3iZX4XL6CATWARnBDEge00W6AkMI0gNzK9h88Teim72NqSQHOiVe4AhfYFB
         +qYutEOUZC3D0AxWZGVMy+32Ys3MQKp7u1Vgd4Xtb8mT2jKGd7HRLWCuK2TeGmubrrEq
         2Wpe6rCy+vileS8CgeJBclrlqwmJYbQIEO2ebRG2da/9xKnN08AsEQ+Zl5/CJHyAD48d
         Iz41eGE3ZpCE40qKrKl+j+ngLB9B6tpwgm83mzlzA8ffe5vRPEY5/bUYDdS1IOs/21/n
         EvbGU48TSrz+2tHekZR2+ylvctu8GcWqmewEYETnmne21VYMGgIVVQdmRxy0ibF/Cck5
         6HlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVmj6urPEVI5iOtzWwrITINU8W65qvcWl9ia1W3Hovdhhid5WxCv7i64Gm/g62cM+rIpiwJ1pred9c@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcznkc1VJwudUhPenxDhDkxGRTUHy2fgP21pFOLi8KXew2HePK
	SNn1w9YxTb40wc74UsAJV1Vm1J0Yb2d3GoIFM7AsGAm3XHdhEAHu/Qr0Fkz2fpDEHgTOfjCAfMn
	WgzBjaJtPK5dmCQpmGi6c3e6HUem8dgj42YHkM3PjF+MNf6y4mibeO+HPCy5g8PdT
X-Gm-Gg: AY/fxX4xkUxqIxhCz+K4/CdKnfo2TUIgJsyq7Ca298ny3GS2HATWdd+STLXjK4VM2dP
	FPDKXquyRLIbdpEpq0t5NMfI1U+ANHtiU2wh4qgvKu3c0f+DaSNyrettV78xTqj9Vm0A3xV5qDV
	G2Oa6YY6YbigQDgQgC0P3EX7JB/9R7tqp7kb+/82CQVXrJ5zX/bjcC79eW+h7nZkJkxwN1lkQRn
	3ggLMS3TxESNs1t18C9BAcpjsJ/SF8xs/MQpnKHEfhYLP93Kjn/hfAiYAB0yAMbpFWxzrfG+7jE
	ncFcuT/mkyD9fCYiY3ee4Ld11/qZpmhlyQRtpKSq+uc1V/x7MF1g7lvPRWb78aF8yrpUc59gLEi
	pdFD3mgTMoZhX9V00XC8kopE2rxQA9++85YlIEA897Yk=
X-Received: by 2002:a17:90b:4f88:b0:32e:5646:d448 with SMTP id 98e67ed59e1d1-34f5f30038bmr2743047a91.21.1767710838378;
        Tue, 06 Jan 2026 06:47:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNSDUxkQhO/yV3l5ELdMmGOkQbRz1mErp+pZNgrdUbiWyRnlViktR5bVwFxL5b/wwflX2M1A==
X-Received: by 2002:a17:90b:4f88:b0:32e:5646:d448 with SMTP id 98e67ed59e1d1-34f5f30038bmr2743028a91.21.1767710837911;
        Tue, 06 Jan 2026 06:47:17 -0800 (PST)
Received: from [10.216.40.68] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc8d29521sm2634999a12.23.2026.01.06.06.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 06:47:17 -0800 (PST)
Message-ID: <107b43ab-85fe-8b09-a622-854f9672f45f@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 20:17:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v19 01/10] power: reset: reboot-mode: Remove devres based
 allocations
Content-Language: en-US
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>
References: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
 <20251228-arm-psci-system_reset2-vendor-reboots-v19-1-ebb956053098@oss.qualcomm.com>
 <CAMRc=McEB+yVYxropzsqLExZCU5Pd_iy_=5N3pTxu28-ZX=7_w@mail.gmail.com>
 <acbb37a1-3189-4d4e-5c05-55b13cd40a7f@oss.qualcomm.com>
 <cvmtn335gwnl6rvmlm4vgyablsj735rknga4ffv53gpk4k7d6g@tt7ebuyusocu>
 <e4b01dc7-02dc-060e-d1a6-abd2c801a78a@oss.qualcomm.com>
 <CAMRc=MfaCKe2-Eca6fZ00NQkdLqJV-NH0XAsTKHkU3N7P7pnEA@mail.gmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CAMRc=MfaCKe2-Eca6fZ00NQkdLqJV-NH0XAsTKHkU3N7P7pnEA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEyOCBTYWx0ZWRfX6OhTwK/CHDL2
 S2P+u1zHfT02gIGAf3gagI/biGf+mQssI6pbTHdsbewVgaYD9p5td+EqSvIdLWOlqYhdN/Grk6n
 MexOPbB9qvwsc/aofDKwhfDCqbziBJnSExM75855p983ieSXjQYiA1aGx1yH8H1J35BhCBHv/vn
 myuJBig5C61vvjeZL37u4W45VGSDzTE+Wbxww/mgIn96aaBszMtqgYHITaMNR7ZMdXBRP7gJQrD
 VVEIDXppoSUNKu0iniJNHviMItAbZ5ilG014PM79v1KMO/ofDx32Z5AyvWP4axpxITci1XLzmfH
 42bEZjv+L8zlgaS44ckIG3fPmKYSKtweKcvZ0F6p/DpXMwsxjjUv4vNwyEmaTp+qDluuodDyeqe
 XK5qJw5SDsOwY+Fy5MXSZDO9JztRX3WeU+oYEy9ST3Hft/CdOqjZoGafGMJ5sg3Dz8lAYQPJ3+P
 aaf27UfxFn7FbF7zjCg==
X-Authority-Analysis: v=2.4 cv=Rfidyltv c=1 sm=1 tr=0 ts=695d2077 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uBB1BXs7VCbqA7mTJTUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: bSjQbg4rRFmUt67wDL3psj1yjqGUv2ST
X-Proofpoint-ORIG-GUID: bSjQbg4rRFmUt67wDL3psj1yjqGUv2ST
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060128



On 1/6/2026 6:00 PM, Bartosz Golaszewski wrote:
> On Tue, Jan 6, 2026 at 7:31 AM Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 1/6/2026 3:01 AM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 05, 2026 at 11:46:40PM +0530, Shivendra Pratap wrote:
>>>>
>>>>
>>>> On 1/2/2026 3:35 PM, Bartosz Golaszewski wrote:
>>>>> On Sun, Dec 28, 2025 at 6:20 PM Shivendra Pratap
>>>>> <shivendra.pratap@oss.qualcomm.com> wrote:
>>>>
>>>> [snip]
>>>>
>>>>>
>>>>>> +                       pr_err("reboot mode %s without magic number\n", prop->name);
>>>>>
>>>>> If this is an error, shouldn't we bail out?
>>>>>
>>>>>> +                       continue;
>>>>
>>>> This is not an error as per original design of reboot-mode framework.
>>>> The code as of now says, if the reboot-mode node has an entry without
>>>> proper magic value, ignore it, and, process the next.
>>>
>>> Then why are you using error level for the message printout?
>>
>> I have changed from dev_err to pr_err. Can make it pr_info. Will
>> that change need a mention in commit text?
>>
> 
> If we can ignore something safely, then I'd just use pr_debug().

Ack.

thanks,
Shivendra

