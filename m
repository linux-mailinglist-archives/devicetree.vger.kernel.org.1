Return-Path: <devicetree+bounces-179316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE158ABF889
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E97A616BCA7
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB83229B00;
	Wed, 21 May 2025 14:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XpZJc3Nk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519E020E708
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747839172; cv=none; b=LXk6O7cFiLLMUZj3I1QExSfv9H1TTSV8feRaLk+NIjIfZ7+mFLbghD0ghKwB/Lf6LNJaBhHrBNsUo3rEzDavgTtLtow/+3C4mFcx1oEvYWnu56PO974NEVv7TfRBojyrmguNXAKuLVrILqDAhZv5uRNHDAZZvLFPw3h0Saekbb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747839172; c=relaxed/simple;
	bh=aNzroqIxURgqE3w48N8JYf0Tg2XM1K6UlHLDOl3M1i0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oaj5RsUb5eBYvL1WyNdFuuH9bbP0DltbuCXqe93k9ECzCHTdhjx/Gb0lVTvkdVGGzqagCCiSh2R71dimv2SSR7MyzIwypcrF0jJHbd6pqG7hJaRM60076wPIhGlDeKNrgY7FL8bQ0IT7lrYvelKeVoB39TJG37xp/hEaBr6UyaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XpZJc3Nk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XNAU029170
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:52:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u4Zvv4Lve36XriRiQpKqbCb+vrtuRWZbxGxM5SWigA4=; b=XpZJc3NkPQt8OtDT
	GLE+y7ZeRuA01WtsNGl6DONfKQuKvfC4im+3olz3RgzjKmCzFR/EOvQknYo0VMML
	S3KNpxtOaXqX4IfdUUlqBuaily69GBZT2haLwjm0FRxUdSl2okPbsm7QcYv3DIdG
	8rdLQdI8mUfq3VwYpJ40Ly+FcJqRX8cJr1SzMiV5a+15Gb7tX2SV1IoHnB5yRvmt
	HpZt+ZT+NMhq/Dmhw8PtqDKIbGdiuHaGu+v6HklTUocnJEcqsH10XRN/WTPj4Ztr
	df+dA+ORoGr9wW43cROAHBia/duLMc27GItA66o5/8wpbXIJit08qlA0MCf3tfUZ
	JYQNEA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf43bw0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:52:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f53913e2b6so99373826d6.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 07:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747839168; x=1748443968;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u4Zvv4Lve36XriRiQpKqbCb+vrtuRWZbxGxM5SWigA4=;
        b=gHKxHmRu5hrbNXRixicn3Ydz0gnM1FllVopwq3cd2Qi62zM/HD4cYweKTEr8GffOnE
         2ZoJiWzFX8bHmbXtn3yhxT/TKg0kdIF/SezMH89gMybwbDfeF4A1rpP3HkMIVRdxPt2Q
         2ebISY6uy50ZsoqjyvOKo87udu8tHsuq2y4MjpLg5Y0zqbMB5OOXjSiIw3vQbDQH9MEP
         3KCOaN5N47YtOJ92WToeMH+WobPfeVGVWfTkyZuzMoDPen0WSWTePeqtwaGwN94ZK2Us
         zVzWBFH2BGASfeZYxVGs0J7RtMnQp9cQPoF4hBNN1JcBXUlPV0jg68pYktMn2wVFy+Y4
         uaTw==
X-Forwarded-Encrypted: i=1; AJvYcCVAs4my0BfUAoOhsu7Aja2TwnTj6HeB11zs4CmYXNxZA+SHYcgk3aIZBDXKACx7OPgTIxTrCxPyU4Y3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu4/1DVnbykPJZowgIQhL5xAhp8J9Nabke7N/LwhycEGqEy8cM
	hmtpj9K87qLev1XfCwrhe2KsUxMufUpJTnytZqFguaiHIEyjjGCMyd13Z2RDHD62D0Cia0mH3NE
	lIauEHV5BThGVsbntCNNAx7qJ0zlr3R6Bx7vMWwnoBB0fCwgvG1KNCE5YjLLu1FWo
X-Gm-Gg: ASbGncvzkXKSEcTJFczWWmNgY3PbE46XCKLOxTpUhrQYjCCjVDmvIaGyUnCBclyHMt5
	OGBc12VzziQZPaTraIJ7r81ehskqwxvmNyr3jzsBrkDxEQZ4VXtcXlbX9rNnwYa3m3Bzx0gAsp7
	t/nFAJ/pGQdQ3JpUVt1yoazTSQyGRpXzBA/nGhe1IQHXFffM/JBOo16XhhKc2aii8+gzOEUifIH
	9eMAubqiUJBDM5DXRdU+jwnzpPfa9dIW2ddJCNfMiqcGCFs3yAS6nHkJjuzN8FIW1JbMBXCCk2I
	T99wSB+8PbK6Cfee7uZZZHrqqwtsoIDSCwKTL6Yv3/Q8IAZIgYCgiMTnHA9Z3n5odwJlxaGUcjH
	wWPMHHLLuLlz0UNRX19zL6muGC2xmG28fvMhKV7cjH0ysRLR05xBnzDxnXUfSHjhb
X-Received: by 2002:a05:6214:1ccf:b0:6f8:b011:cbac with SMTP id 6a1803df08f44-6f8b08ceae1mr337215526d6.35.1747839168079;
        Wed, 21 May 2025 07:52:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEY5yP0CLnTt//gohFf5UwR7ErzPhdBiAag+ixC0szgLaww/eW1j4yyAr2W8/zdejzufNwJ2g==
X-Received: by 2002:a05:6214:1ccf:b0:6f8:b011:cbac with SMTP id 6a1803df08f44-6f8b08ceae1mr337215096d6.35.1747839167522;
        Wed, 21 May 2025 07:52:47 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c7:69ba:b852:d3f4:8957:5a1e? (2001-14bb-c7-69ba-b852-d3f4-8957-5a1e.rev.dnainternet.fi. [2001:14bb:c7:69ba:b852:d3f4:8957:5a1e])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084dc67bsm27690351fa.59.2025.05.21.07.52.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 07:52:46 -0700 (PDT)
Message-ID: <045c2ba8-3ac5-4773-ac7b-a6d8625891c8@oss.qualcomm.com>
Date: Wed, 21 May 2025 17:52:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Mark FastRPC context banks as
 dma-coherent
To: Xilin Wu <sophon@radxa.com>
Cc: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250416-sc7280-fastrpc-dma-v1-1-60ca91116b1e@radxa.com>
 <tqddtxx25bi6xb5jilpbgfccn7qz4qkonmstfbpz36rl3pnrwt@u4lv2tn46e5z>
 <DAC123579553F487+1871efee-51e7-4049-8a15-9cf8bd286f03@radxa.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <DAC123579553F487+1871efee-51e7-4049-8a15-9cf8bd286f03@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDE0NSBTYWx0ZWRfXx4+iTcHiFihx
 nQQ9h2uFW8pMvHBuXDThW35K9jV3Pby9yFwrq37QdpFjZNB00TMevZ8tIG1sgcugB2juI+sNuzW
 nOyLCr1/5n0nXkLy7yh7GeYNrZ6O8vT4F9Ic00cjUhqXoTRtCz6aIX5nKvJMmq3F8rwqv6c5i2y
 lt0luSKxcfnEnTEUzxCvuF4LpGXTxqP684RU3xxabmV+PHF9+aFynlqjwhZ66ieHYwaoxd6wkZh
 7VSm0Bk6roeeRiSPIDDJ91Qg/Iwa/GDv8Emv3aLiXIi79R/T1k20s5HsB3HggsuybvJ+qaBgUSZ
 PQ2ymoV4h+FmZ5/nEJmdOjRTsOFF1VKbauBic5dq1UYoy2YaePxzTw6Cpz/9a7XAcsZXSl9ieio
 ufoDEsea/g+gahZwfdh3HohSGLpJqs1lxiFGrFDkNYZcZ6cPK7A4RUyEsPRS6VR5yDgXQhNX
X-Proofpoint-GUID: -B2B99KC9xNb2ebD5nJFmX8ZUjleBKY5
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=682de8c1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=ksxQWNrZAAAA:8
 a=mSK3FFS5vNSzVinocfkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-ORIG-GUID: -B2B99KC9xNb2ebD5nJFmX8ZUjleBKY5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=597 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210145

On 21/05/2025 17:08, Xilin Wu wrote:
> On 2025/5/21 05:34:08, Dmitry Baryshkov wrote:
>> On Wed, Apr 16, 2025 at 06:54:18PM +0800, Xilin Wu wrote:
>>> The FastRPC context banks are DMA-coherent on sc7280 platform. Mark them
>>> as such.
>>>
>>> This allows LLM inferencing on the CDSP using Qualcomm AI Engine Direct
>>> SDK on the qcs6490 platform.
>>>
>>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 15 +++++++++++++++
>>>   1 file changed, 15 insertions(+)
>>
>> Are context banks coherent on FP5? On Herobrine? Or Nothing Phone?
>>
> 
> Hi,
> 
> This was tested on an upcoming SBC (Radxa Dragon Q6A) with the Qualcomm 
> Linux cdsp firmware. There would be an error in the LLM demo app without 
> this patch.
> 
> I'm honestly not sure about the devices that you mentioned, since I 
> don't have any other sc7280 devices to test.

You have enabled dma-coherency for the several families of devices using 
SC7280, QCM/QCS6490 and SM7350. Some of them might have older firmware, 
etc. We had this issue with SDM845 / RB3 boards.

Bjorn, do we need to revert this patch? See corresponding discussion at 
https://lore.kernel.org/linux-arm-msm/70ffec25-17c9-4424-9d0b-da6560f7160d@quicinc.com

-- 
With best wishes
Dmitry

