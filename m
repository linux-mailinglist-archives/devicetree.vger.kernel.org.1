Return-Path: <devicetree+bounces-254896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 672D8D1D90B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:34:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74D8D30CCC50
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E595389DE2;
	Wed, 14 Jan 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j5toNNkh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ds+p2+0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A605138BDBB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768382912; cv=none; b=XCChdvPaDmEZsPmhfpUvTqvXbi4pE2NnAN75wDTeemuwGnaJKnG4uScMRuTFYRc3GjWedas9sKsvNFLHBcoAWOnA/gbOTE66E/zQcHUWcfnioDzXOgwH4D6U266N9vjNAXF/ZUt1PA1LBmo1kxMuzQuSkHjp0iR7pnEPUNvjI+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768382912; c=relaxed/simple;
	bh=r+fMS30EtzARniU5cs46o68pVaXBqknYn5kfwYqE36w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kimRwOOo7lN/kE19OxHdq+MkSFyo+nxHXG1f/wi5rl02l6jx9ijxLEoqnwSjGas+MmrevFkuIYbwKuwrlmAgkkKQDP7ok/zBaYA6cTdJkmOWSvicrIlhjbHv7Vtbm9/efeDT1jzgj21ROeO4QDhJatZ4a1m6MWXWtsyCWnAAUgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j5toNNkh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ds+p2+0o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7j4Nd2587207
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:28:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jkjywSEnTo62yijFNv9Vz8+BMDykhmcTR+WiIydKgag=; b=j5toNNkhfpRdd64c
	fbvsbv+QJ6aSIffHYjzucd/HRS7HBfFL0p4yybdH8Kt+rrVHXXCDr15ISl6t2A74
	0e4zzq88k6BE1teg8ZtHH8oXU9i75gX9ptdSdhgKV6F1ZtujYD2HDFwWzm4WLXit
	+Kh/EZhljVgzRpvq08Laqy4L7nfK47H/zFgHPsbiH+JTq4p3WHiKAgE2RousdtTS
	AtMFxLYeF+QPcni0XJvYMlLWfjmgU3AGCqiw3iisCHQBfo4IXbXxiHZmpTCygv41
	9VDQHMADrnWroNPEi6EWctxjHlGmQttZSPl6bKacidwWQhm//w4SaHj5cqcuwXEB
	A2GITQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnymssv2t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:28:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b25c5dc2c3so175298185a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768382906; x=1768987706; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jkjywSEnTo62yijFNv9Vz8+BMDykhmcTR+WiIydKgag=;
        b=Ds+p2+0oi1ND6xxbZS7plQr/LGS/D6LQwi4CpK5+PZJF+ROxUB5imD6fucC/R7Ygr5
         KXEoBdp3d56iCmE8T2LlrZ5Lb4x91/UMFXPomj5WBdFqlNfkUhGXupuXF8/SX2fh3Itz
         BZ139GNv0a/qek/r4gqeH1TujCVtYJfCAf3QGVWzNG5Y7Lh3YsWrqiZjHLH3JX7C1P5G
         vYptmBUgUu/n4fptvbAyVcxQCznziBJucW+4amAtebkpKQZq+sr8h1aJu9LQkKg843tw
         WDl1JfbJ4JaXIJCiD+KbxX7w8e3i3ZJzTs4BMC3pn6X6NSz5lI6byZNQOGgNhidEQGLc
         0UDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768382906; x=1768987706;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jkjywSEnTo62yijFNv9Vz8+BMDykhmcTR+WiIydKgag=;
        b=vIIHvQv4EpWckNd2sg6SnEdE+OpSlFCg2/lC9VVn0x4dq2F0Lhji5QU4bdGyuYX5ip
         BEh4GxUSTc7VPBErrYGAmFenQ7rrXgvHrkvBNG4Kdaza2NRik4iYV4JkY9FGh0yurmRB
         cPxPYcQ3HqO2A9Y9k+eFUbHWf5YtQwqaIhoamPdnQ3Aj8Q1q/jzJw8tLWKxbqlGURJFj
         ImC0FyzT4LsLJcVugDp1RVTMPZWjAiVQBZPrnF6CqBtoZuY2Cq1RJCQC8iT01gZEskPi
         xQcNSRlxnxCXB2UEvqRHizT8RcFIM2CGCVZXrhlReCA+BklGIiGcC/c0oc1n9+NJSnMQ
         piQA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ8Oa4DRyhGfBAU46TVANn/WepVp/YJ+hjOpwieVar70U/SBXFI1Zhx2pUDPs5sHPKzXTztLY1x0+n@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1QKnZRpcecd+iQqjJAQydp9TA1G8/c4bkfEjY3E300uaCI7KM
	/19pAnSLzGtTy1hNepU+XerlmZLofs9lKSuunlU8hwrsuFg1CJXW8Y70FVWTBDROjL4qYbermFX
	T/Cz62ePGbYzGsmNVWCjv3hXUFamSI5TmqXj54YaGE6tVYaFIF6OoJpc5RLokvQPd
X-Gm-Gg: AY/fxX4pbJ8Hyu6maJ3RrFuQ6yIoqjXpCndkuGi1KmBtRkGkrv9VIItz3Zuikwqtlty
	EhCN96CLJXI80zQ7EmxKJnIzP1Oz1rDfM65lZSQj2UEvu+7D6yv0Hv3FcDSFlhEDGXdtWuZZRma
	0TUtc7WeSSbEFdud2cl8uTOEYCor2SWLBsCaQtVyRO/useI1JsxpRNVKcfmQdurZg0PrFlyyVlD
	kkTwT+3E5CIEMR1DtlxGCLSmcmcV1s4+98WD2j2nm6AD3TKBYWdnme026F2vocsEckJMqc1s9jB
	B//RJSpoZhIf/j7liFax1jwSmO9X1o3sFpk8UJLtkKR2Hsw5DK0C8EUvLOzxVqiy5JQ2qlQKT8f
	OqzrsfN4D9L+qd48FhrMvQEaOV2SYGLS+tUOkmvKpF1w86+g5WuBxxlkx36eR/741O6g=
X-Received: by 2002:a05:620a:4707:b0:8b2:df32:b900 with SMTP id af79cd13be357-8c52fb284d5mr228997385a.4.1768382905839;
        Wed, 14 Jan 2026 01:28:25 -0800 (PST)
X-Received: by 2002:a05:620a:4707:b0:8b2:df32:b900 with SMTP id af79cd13be357-8c52fb284d5mr228996385a.4.1768382905439;
        Wed, 14 Jan 2026 01:28:25 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b876b6865desm87727666b.12.2026.01.14.01.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:28:24 -0800 (PST)
Message-ID: <67bc5301-8649-4aa9-bdd7-7f3b57d7da76@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 10:28:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: add apq8096sg-db820c, AP8096SG
 variant of DB820c
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
 <20251111-db820c-pro-v1-2-6eece16c5c23@oss.qualcomm.com>
 <02a9d6eb-e480-431b-bd4c-a35cee170516@oss.qualcomm.com>
 <wf4h2lwyvgswtv4bgdfidj4vpvykwhu2gri4crvvtd644hf6nr@cnpqi5bmpvm5>
 <f4fbc949-415b-489e-b333-4c846d3ce8c7@oss.qualcomm.com>
 <CAO9ioeWpOArPm3M5hjR5PMbu4rkV1HHxQOZjOe5LwTKK7xMWJg@mail.gmail.com>
 <d5fc8900-e720-4f5c-b456-67c4ae03f711@oss.qualcomm.com>
 <gwlwlqxo7xbsws2lpmb3pppevthtuxfy4m77hdpyvx2m23vbr4@6jujptqhdump>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <gwlwlqxo7xbsws2lpmb3pppevthtuxfy4m77hdpyvx2m23vbr4@6jujptqhdump>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA3NSBTYWx0ZWRfX5isDwCr8TOsr
 lhc6Fi3zr6+Z6i4Xz9/W+1EhnK6G0u9K8pHdkppEgeZ/WUh+SbktI2Z0pV8iVDpxhHat1fgjD3z
 5wa6FnJT5ejzJyxn3x2PZw5/QQzwQHj3bMPXAylhiWREckuLQ34eNytJzp6luGeQkS2lKUvrmCg
 GYV1LTYMztzHthsbbOAEG19J69cNkmH++0P9uVjkVL25uU6UN1RWWBY/E+RBkSvuTHrb9jI6pFw
 cTN1nQXVnlLsXgOAs9jyWxk1ppEz5SCk0OYJt2PqypKo6CA7oQC8/ES8+W6CKsq9v7gGkZbPosa
 ehEm/WXe97HNwFS1J3tvlfiWYJnFP3CD7oP7czpXsMrW2y+CLLYmrU+c1gvhhnoqLp8xpHjz5nc
 Vj/XQS5jOrqIVecc0HHCmpApzhmzODVTJiLUFC+PUULdMJUR+/2DcGE/oqCSLqWANi9w8HDX3mh
 8CVk2JHa2L1yTbSjZxA==
X-Proofpoint-GUID: evOPrLLIQyvAIm3yfPzDMx4cWRiN67Lt
X-Proofpoint-ORIG-GUID: evOPrLLIQyvAIm3yfPzDMx4cWRiN67Lt
X-Authority-Analysis: v=2.4 cv=RuDI7SmK c=1 sm=1 tr=0 ts=696761ba cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jziRN_jVPNxdJwAr87wA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140075

On 1/14/26 1:12 AM, Dmitry Baryshkov wrote:
> On Mon, Nov 17, 2025 at 12:54:22PM +0100, Konrad Dybcio wrote:
>> On 11/15/25 1:09 AM, Dmitry Baryshkov wrote:
>>> On Fri, 14 Nov 2025 at 23:31, Konrad Dybcio
>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>
>>>> On 11/13/25 9:32 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, Nov 12, 2025 at 10:44:49AM +0100, Konrad Dybcio wrote:
>>>>>> On 11/11/25 5:02 PM, Dmitry Baryshkov wrote:
>>>>>>> There has been a (rare) varint of Dragonboard 820c, utilizing Pro
>>>>>>> version of the SoC, with the major difference being CPU and GPU clock
>>>>>>> tables. Add a DT file representing this version of the board.
>>>>>>
>>>>>> So is the conclusion that both flavors were used?
>>>>>
>>>>> Yes. I have had a production unit with a non-SG flavour. Bjorn's lab
>>>>> has a standard one too. All units in Collabora lab are Pro ones.
>>>>
>>>> Pro doesn't necessarily have to == SG, this seems to be sort of
>>>
>>> My understanding was that APQ8096SG is modem-less MSM8996Pro.
>>>
>>>> a "MSM8996Pro" and "QCM8996Pro" situation.
>>>
>>>> I'm hoping that speedbin
>>>> fuse values don't have different meanings for mobilePro and SG
>>>
>>> At least downstream doesn't have separate bins for APQ versions.
>>
>> arch/arm64/boot/dts/qcom/msm8996pro.dtsi:       qcom,msm-id = <305 0x10000>;
>> arch/arm64/boot/dts/qcom/msm8996pro-v1.1.dtsi:  qcom,msm-id = <305 0x10001>;
>>
>> this is interesting, perhaps Pro==SG then
> 
> Yes. At least it matches what is written in the LK sources (or in
> MSM8996 Device Revision Guide).
> 
> The JTAG ID matches APQ8096SG, the bootloader identifies it as 8996 Pro.
> 
> Any remaining issues?

No, I think we're good

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


