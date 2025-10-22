Return-Path: <devicetree+bounces-229910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBFEBFD848
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:18:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1995E1A00B35
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D7F274B53;
	Wed, 22 Oct 2025 17:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pqkFYBE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75177255F31
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153480; cv=none; b=G55msJDskFm10MlIvvT4rzFhchTojUBZhMkkLMZi6uRTkGMcQil68l+/EaoL2GWqu3FAd8OiRl7EbGq/JB5L8egzE9P+3brrv5uf2rtM2lE6yfyoLG0Qm3786c8Upuukaij8Cw9SVqqRPSHSvP/SBinX4fy5lwZWX01hvzSKsTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153480; c=relaxed/simple;
	bh=CExEECZTFOuFYGzdnRRTlZ94V5lWnXLzE5kfc7eohvI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NlRVt89QAqNDMnV6YgaifpqwDIRv0GD+55K7lF5PWopQjo3KLHeI3jsgLiME1tsF9F1MJOHFiVx+C3rZGWiG/dSa7zdf2e+3RSupt7MD4o5fTxdPA0lMFPouI4rZa2NishLCJMESPR1Wgp6SBDIgyLsjhRmyP2Tlohn97oChDJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pqkFYBE6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MGSAAa003553
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:17:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LyU88Pot6EZ2LgQ5OCVhej1+8SBV2PixZ/z1OwnNxwk=; b=pqkFYBE672cIdHE3
	mg+w3U9r20hFTGdfjhhoJ0xXMLlcewwAMkJoo55Yyzbtc8H2tsdSdfLyHOA+/sOK
	IcLtpaR+peI2tYYYWY+nFFb0COsSgnC1YkwtJHDXSHjAPM2OMLGO6GG44OfGCIix
	dH1AF8ldaopxEKD22ITuRGkId42JCcl6aAgKcKsl82eDqcZmNGVtUbvPZ4Ho2DNJ
	ikxVGa1ruS9z8PpAIqNGnH6deXCwyQWSrfbGKRyh1mCgg5ZOWDOJXKLWRJ1t8y7G
	OVIesfsvFu9ZB0V6J+q63B5Omn4/2ZNEfZZHg9xksLiANOYKy+5wuzSYELSE91RS
	VIldAA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsb3dt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:17:57 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87bd2dececeso24340506d6.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761153476; x=1761758276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LyU88Pot6EZ2LgQ5OCVhej1+8SBV2PixZ/z1OwnNxwk=;
        b=w+T1TBaMUZHyZVbGad0OyJ7Ib7Vv5DulXgzSP7a7nT8FA5fx9cqW/r37ZdAcyBAJse
         /aw7tyWnTuFQi6Gqhqotx9VmbTd5wsMEFWdlmfMk/9kD5PnQo8n/OzqdD9S8xZoinNTl
         vrzmBG9KlfleUuHkm7kS+mI0xwKyXADVd3bmyI1qi081+S8vYQj45G4UEzKgo7vuQvYD
         XStV99dACB3A08b0wOGFBHhXas+6j1eJ0O5N1r46PU5yoQnME9Gl5J7ulHN+b2t3EVWV
         OtYc3e55iABmod/qynogbkT0w0NYFOEY/tIE2jL+8kRWpVT1y7QpbBj2ug6XoHYBh5Ar
         wVqg==
X-Forwarded-Encrypted: i=1; AJvYcCUxXFadHqT9GmrpesLnify3ERcKoJbfCd/C+qjW2GojYCwXMChPmEZ9YcoRwLt43XPH3gp89Hq/FlB0@vger.kernel.org
X-Gm-Message-State: AOJu0YwMIGksz+xYtYK/t0ER0jH3m/7FPnkQZmSZBgUMhW8f6UvWFoI/
	luaj2jl3ECqvAYLbUT7DHzc2cv8pTTdOcE8GY2iiyNfypVncquJmmSlw1pUXJztSHcfoF0oB9cB
	C3vYRdVMSf/7zAqkQ4DQ65WrOU+dLVOQwFYbcJoa2XgCTf8Q8rjNN08zRnoPXlKYY
X-Gm-Gg: ASbGncsLgmZ1cCcy9wKk39I8brrttXY/k8VGpWDLla58iF52GRPnXIWY6A83GAPyUPs
	904LrwFYYE0Mr9KeS6QAGq7Tj7MgFIGijEJkuE3K//9s3sPFbfUPQ6pXwmqeZmd8wrCS3HtSvGK
	QyHGVDqQURoKx5KD0WT46GO7fFXTE6T/aBrgwLYWP57Z/uzF67BVVXue8MkADkpqlujFf/1m0HG
	su3cvCqKwHhS3ySFoL/qLxRuJCJ5OPxpGqxMmv7IkID9oUAjg2Q8ivCeAxEljM2kGNjEOS1G3bH
	RUbHoTlMBeLQHuEQ1K+bPz4r9V8k9/8CXEBNCSBJdmDHnSewWqA59YWwGoGr4Fc1FaobrlSrmkv
	LKSF8jOQUl0LOKB4HuHHl3WY2yumHuEaQrIQyCqVa/6Wgs8gbWXONb4Wi
X-Received: by 2002:ac8:7d89:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4ea1155ca2dmr64258901cf.0.1761153476114;
        Wed, 22 Oct 2025 10:17:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0FvIF8PqRON9r2jQFOp30M/SkUX6E0MHABKJZmBOkOv2WvHcZhGWybIVBgEjPUf0XJZccsQ==
X-Received: by 2002:ac8:7d89:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4ea1155ca2dmr64258551cf.0.1761153475641;
        Wed, 22 Oct 2025 10:17:55 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c4945ef35sm12967508a12.28.2025.10.22.10.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:17:54 -0700 (PDT)
Message-ID: <141450a6-4578-4823-b516-d180eaf3ccc7@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:17:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm630/660: Add CDSP-related nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
References: <20251019-qcom-sdm660-cdsp-adsp-dts-v1-0-9ab5f2865a6e@mainlining.org>
 <20251019-qcom-sdm660-cdsp-adsp-dts-v1-1-9ab5f2865a6e@mainlining.org>
 <5hbc24lihvau7s2opzcxxgxkzugmbqmdtqwy23m45j4po23lnh@jyjlbgfjaddw>
 <f8daddfd-e0ec-4acd-afc5-cf0969aebb9f@mainlining.org>
 <0ca0bdfe-b228-49be-9ef7-71482d372e0f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0ca0bdfe-b228-49be-9ef7-71482d372e0f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfXzIpDCXF3L8Kl
 dY/doHC1k5EjZ9K1o2PiKVnvNqgHlLOjELS7pl+y8nfBovNLJkE/DpA+6RCHTaMmIIkS32L7rUS
 3BcpsIGi6GRV5mvvjNMxidIBVhzjgkDpLTFZNo3vDec2MYicS8LeiwgX8HedfsVDoQuFTfOeBu6
 a6pKUn/TCPe2I4l2atah24gCHAy8CHP0tJAWzlMrRFSCiS9kAVCZHBt+/s1msvbj+5TWGGUWkyD
 V1jo+f5pe47tOmqCXmgZ51Ux+bHAVftbhE7jdyq5gCHCb935N+wvkFHlTtneiAKIj/m+B4/6HbN
 nEi8vljFr4q1QVkt2gcY5Ujo/NUxvdqyj4CeL9G4+H8ElQjDe347nr8ZQnArNZvO6VbdLNS6txi
 y3S6oFN3QwHDAwZiqyR4E1R0PXM5KA==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f911c5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=q0T5L8gon9ZBDEW-TvIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: hK-nmtJtS6VRMslpcpo8FryLLQr-mz6i
X-Proofpoint-ORIG-GUID: hK-nmtJtS6VRMslpcpo8FryLLQr-mz6i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

On 10/20/25 5:42 PM, Nickolay Goppen wrote:
> 
> 20.10.2025 18:27, Nickolay Goppen пишет:
>>
>> 20.10.2025 16:14, Dmitry Baryshkov пишет:
>>> On Sun, Oct 19, 2025 at 07:27:06PM +0300, Nickolay Goppen wrote:
>>>> In order to enable CDSP support for SDM660 SoC:
>>>>   * add shared memory p2p nodes for CDSP
>>>>   * add CDSP-specific smmu node
>>>>   * add CDSP peripheral image loader node
>>>>
>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>> cdsp_region, which is also larger in size.
>>>>
>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>> related nodes and add buffer_mem back.
>>>>
>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/sdm630.dtsi |   2 +-
>>>>   arch/arm64/boot/dts/qcom/sdm636.dtsi |  14 ++++
>>>>   arch/arm64/boot/dts/qcom/sdm660.dtsi | 152 +++++++++++++++++++++++++++++++++++
>>>>   3 files changed, 167 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
>>>> index 8b1a45a4e56e..a6a1933229b9 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
>>>> @@ -563,7 +563,7 @@ modem_smp2p_in: slave-kernel {
>>>>           };
>>>>       };
>>>>   -    soc@0 {
>>>> +    soc: soc@0 {
>>>>           #address-cells = <1>;
>>>>           #size-cells = <1>;
>>>>           ranges = <0 0 0 0xffffffff>;
>>>> diff --git a/arch/arm64/boot/dts/qcom/sdm636.dtsi b/arch/arm64/boot/dts/qcom/sdm636.dtsi
>>>> index ae15d81fa3f9..41e4e97f7747 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sdm636.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sdm636.dtsi
>>>> @@ -16,6 +16,20 @@
>>>>    * be addressed when the aforementioned
>>>>    * peripherals will be enabled upstream.
>>>>    */
>>>> +/delete-node/ &cdsp_pil;
>>>> +/delete-node/ &cdsp_smmu;
>>>> +/delete-node/ &cdsp_region;
>>>> +
>>>> +/ {
>>>> +    /delete-node/ smp2p-cdsp;
>>>> +
>>>> +    reserved-memory {
>>>> +        buffer_mem: tzbuffer@94a00000 {
>>>> +            reg = <0x00 0x94a00000 0x00 0x100000>;
>>>> +            no-map;
>>>> +        };
>>>> +    };
>>>> +};
>>> This probably means that we need to invert things and make SDM636
>>> inherit SDM630 and SDM660 inherit SDM636. Would you mind doing that as a
>>> part of this patchset?
>> I'd mind
> Konrad decided to do the split this way for some reason initially

This isn't a very good argument, but I think keeping it as-is is a
good idea in this case, as opening sdm660.dtsi I see a need for some
more cleanup work on this platform.. which I don't think anyone
is willing to do short term, this is less invasive

Konrad

