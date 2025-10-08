Return-Path: <devicetree+bounces-224491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8EDBC44A2
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 691D74E4F76
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96C9A2F3632;
	Wed,  8 Oct 2025 10:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="awYUZIYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DDD2F549B
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759918850; cv=none; b=ux1Z6y4BybbpJk2f2Mr6ovge0G0nKljbeU0UK+dYGASX/bQiS2hxgrkf+qJS/LgAGPFAqXpr4EO3uHKISuV5HoWC8PAn4BsMsMFu/kiRqAiTqpuZufkCdVmD/iqyX3MAR0VXj0lpABMtyX3jbNVu8yuNKL/vu8z+Y7QfMeDCYOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759918850; c=relaxed/simple;
	bh=Lr09AlCI9tmALrlNWWYo2diNjyAqc2PL1Wfv06g5EdU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzzycp2avKNfa5gm0m9C30RThZo1h7qKpiVVvfaWJ13ScjVkKqCBJAPmYDUTqReGq7B6uA53iNty5WckU/KpGVqK1o2xG79tvYKdJBUR6j+thr0SgEJgzJDjxkGkmLlItTYK96tHzEsMskEC75MUYuPaWhcI7Eaaf5CmJ7b/wXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=awYUZIYV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890QfQ015831
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 10:20:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	skZej2QK7qLiwq43MFOuoC8Kz7XZV3jwiPvyq5Yz+/c=; b=awYUZIYVTtP/+Wao
	LuedFDi4C6eKkeNOcwsTNqwwe4ePXsEsMNXUTLSkBSvO5m99Gk7XxZun3Oi9k5Fs
	E0JJim/UKCHV5IDbKK7q1CWJnG3a5xMb4BhSigDOR6R65VHaWjanRiXbbcgkRjDR
	ZwhgVmY10fU3JKbV+QQPnKzIK2mmETCrSqu8eHRBpJxF3DJAgzi2ccsl2LrDgo0j
	5kHSXEl1ojq3XiSal91JA2Q0cPHxf4SGOGFgi1qm4ly1ImxaPOFJqKAG2HPANnp6
	7ze41TZqwJ4aHZvRWh2y20wWMkirfAx51DiyftoeMpFfmdgYEfCVhIVAXfdqBkE3
	5YT94A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk7241s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:20:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-883618130f5so33277485a.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:20:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759918847; x=1760523647;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=skZej2QK7qLiwq43MFOuoC8Kz7XZV3jwiPvyq5Yz+/c=;
        b=p9LbnftIlzsMJ9ijiOjXxZaeLKIjAW4SMWX+4TYTNHjHtEjhIsoEKGvx6VGTlOSre6
         S2u131tSipSq1Y7LW+umqx8iZarEc7j8whMeR3uWFIc4jyDyJ+N8WL7tAyYaKUBwo5rh
         c5lADd5ycNHkLvggfEndAMTXhgA4Wgfcs2xMMpA42kYIPtq8Kva19Udbg1rOtS1QqjQ4
         xVA4mhyyyHZ9hDSlkvt/PJ4eK3XOE53NgWjRVU/w47XGPSPTsaHL0i2HPZrK6+ObY/nc
         JfZUT2Gak5YS8WDgdroDrO599mvTztwHwGohXax0ii15MzWEXfLTc9N+iaeCsXUjGEhz
         Rv4g==
X-Forwarded-Encrypted: i=1; AJvYcCXo3x1ZLxbApsTVRkn2Osp0OnxAfEb0I5Ht37GE4sAHwkmN0I9uLMtT2tRtfCe7zjGbMbLj5IQj1zAF@vger.kernel.org
X-Gm-Message-State: AOJu0YynyU6A4BO07bYeT9N3mo3GkN01FRt6Lr0ixpxZqoeZ4zamC5vw
	S+1c+6qmksxx0X0amAVd1VzmytLwtfXptyXTNGC75DYi6ZWvD2mpM76d6/OHTcvWPprzvw5AZju
	fAgC4n40IVbnksA9suvajg2iR661HiVSi5lTp/uLv2jmG9g1t7B19sy4KaQ4AhyBF
X-Gm-Gg: ASbGncvZNzp4Dmv02lpM2jqKwpuaU5y/9oT9msaNFNeTKWuZSZ6CUitotjG8cjXlFa9
	WwKJ6sl1pH5w0qY5CWJBWk20sNGSPFT2qPKrsX0EjOaGMUYWIYnpjh2vJJALJx88VHmpR4Nv5Ma
	2QNfg4ITUxh93VmLd4Fk/GcjD3ibhKr1fU74MhDimPbS8WIT0kWQVe2kBZxYtAyF4aVHgIgAwz+
	UzM2iTsvxvV4wF56DCErzc+My2+G3PoB/kPFDWjwoJlK/r1Cn/NO1qDS6oGAcsKmYC6KoxqAoGE
	YYgbo63847VuxRRN19MMW5dIz/1S4DjwEVcDIZX+U+kfOyz5gxlOw5uSIrK/VEMs4lPr/GApZsc
	7mCDuBFJ3NqJagHJ2OXTdYAM7+ms=
X-Received: by 2002:a05:620a:3905:b0:878:7b3e:7bbf with SMTP id af79cd13be357-883527ca0b4mr298298385a.3.1759918846836;
        Wed, 08 Oct 2025 03:20:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLHDjHHvjj8j9dLTGHWXGfTR4aJjre+aHMWNbl/tFlpXmEHkL+rMhFOApHFHL+DL/d9ZVLIg==
X-Received: by 2002:a05:620a:3905:b0:878:7b3e:7bbf with SMTP id af79cd13be357-883527ca0b4mr298295885a.3.1759918846201;
        Wed, 08 Oct 2025 03:20:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4f94asm1619475866b.79.2025.10.08.03.20.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:20:45 -0700 (PDT)
Message-ID: <392d2e9a-dc31-4916-ab8a-680b2ec4dca5@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 12:20:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/20] arm64: dts: qcom: kaanapali-mtp: Add audio support
 (WSA8845, WCD9395, DMIC)
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-18-3fdbc4b9e1b1@oss.qualcomm.com>
 <CAJKOXPfY-CpE_aKd910PQ2+u9ux2EvuVEt9ArzhdVCJcTQJUQQ@mail.gmail.com>
 <51637d37-aa5e-492a-851c-e5d6bfbe421e@oss.qualcomm.com>
 <43ba93bd-0dba-415b-8a7e-cdc4d954f79d@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <43ba93bd-0dba-415b-8a7e-cdc4d954f79d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX9me+VFfdQTHB
 afW3Eqaad02Bhvhms78hJV84ELw1xUpRc+P+3QI8KGjITFZc7TzWsonj/CoaknZfcLNfbXrv0Lx
 YrXlseaYmqXViHpGQPJfWh4cN3LXUeB4q6vf5LdbViUvzNx9oGC+LTz83jVnvN/5K9aFMt/SQCQ
 XaOUIhOXJGzHBNFmk+zjXgy8dj4jCa+e0p7DN8aicyRhBVd3JUX+j9HTQC5IcllR5DoEJfOZV9g
 kvVGvQmjXTa6isHSeGdm+8KjGt58aZX5/Ma1wrkpg7ZDXAfeQGGfNAzVCP8J2JfOn9SYGTaqJPq
 1W1h48M9G1v40w6p2tmGJte47A1bMlwKmJ7bkamxIQaJz0KA9RYUTzWRxwCqsoR3N66YPLhvnv3
 014dPCBU2tYZkblsQih2OuIPT+UZ0w==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e63aff cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=CoZnzqn1Vmb4SI8PR-kA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ZoOg_Y0ErZgrdKyjZ-2zsvnns226TJNO
X-Proofpoint-ORIG-GUID: ZoOg_Y0ErZgrdKyjZ-2zsvnns226TJNO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/6/25 10:48 AM, Krzysztof Kozlowski wrote:
> On 30/09/2025 21:06, Prasad Kumpatla wrote:
>>
>> On 9/25/2025 6:56 PM, Krzysztof Kozlowski wrote:
>>> On Thu, 25 Sept 2025 at 09:18, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>>> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>>>
>>>> Add support for audio on the Kaanapali MTP platform by introducing device
>>>> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
>>>> microphone for capture, and sound card routing. The WCD9395 codec is add
>>>> to supply MIC-BIAS, for enabling onboard microphone capture.
>>>>
>>>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>>>>   1 file changed, 226 insertions(+)
>>>>
>>> Audio is not a separate feature from USB.
>>
>> I didn't understand this, Could you please help me to provide more 
>> context on it?
>> Is this regarding Audio over Type-c?
> 
> USB depends on ADSP, so your split of patches into separate audio commit
> is just incorrect.

No, this is no longer the case on Kaanapali.

PMIC_GLINK is now served by the SoCCP rproc

Konrad

