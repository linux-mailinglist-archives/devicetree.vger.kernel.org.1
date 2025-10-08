Return-Path: <devicetree+bounces-224502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A480CBC4914
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:30:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C6ABF351641
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970C72586C5;
	Wed,  8 Oct 2025 11:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z7s9GJzB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D2D1C5D7D
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923041; cv=none; b=iTfi+XlQ744Hrb4PGwbzayBB577Uj7nlXYrvbAI71Z/I/dxmjq/OfslfWz/YMmQxduFC70ri7Lw+LlR9++hoHOhqCazeQMZp5glyOsb+x//O1YGp8oWt/CtEi1cwjg+tJ7slNRJYP/h7a+tOmyiKWOJzYv0QJrjd8tzNGEk1ROM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923041; c=relaxed/simple;
	bh=nhpi83JznvSwAdgmbRAiGKVw0NVvV3h7g4Wp4+iFfq8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nMybMcdNWhqoiPJX02TRge3o2tLn0YoQUSvyft6Pci4vZxSRLNYw3jnlPc+Qo0yBcxbZ3RLdg9X2N9nMpa3p81BnnoQKe9UW4yNMzWucqkjgyaVOz9V7aKW8GQOjP53+7uXSIKxn0+Ce7l2e+PXAxVn6LJ282S4ILHnB6r/7e2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z7s9GJzB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890mOO029962
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p3dB7DImcsn8ypdPvXx1SaULRrictHxPEcCfKBFsYI4=; b=Z7s9GJzB3SROL95j
	yRJTCjmY7o2yEyJifMGqgDaUyzgnShW/E859p+/L0E58ut+i8Un84kHH0uI95iyq
	0dLBPAs39Tj8dw+nVyPJ2mWVrZEQLBOIrH6ZHImsUTkxsmLS8F3zMWODMdvb5ZaM
	+uqtIbcjl6uPTwen1Q15GxQROPMIqaTiVDtyNsXviZmN+m25oibmHiHS+Va/gYgk
	PgKXAg8zpvkniDb7epqCvZfDHNH2u1CQlXAak2emv5Jo5R6izijsajEFBdjJShTo
	wJz/0Cl8gWOfJb9GgTr4WD+KjSOgMD20dyIODfS92l7+0PKK9r+wzxUdendKIevb
	Hdwa2A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgt8y7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:30:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d6c3d10716so13628561cf.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759923038; x=1760527838;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p3dB7DImcsn8ypdPvXx1SaULRrictHxPEcCfKBFsYI4=;
        b=pm/qNoWzlGCh81gaNyBPEcFMVCI8Jj3/zC0CcGT90QXseNErjzvinHdtH1Nb/r7cm6
         n4Nw30bLOcJfRKcMBJkTUgZ/TQJusoU6lw0keRY4qhwD5oqkCfla8tCUL1l4SGnrDmDT
         NQpBgMdJ9FtzNESdfOCWConJRBQyyQCro0yf+VKQ8OadX1lOjvgxUbDqxq0gNkTre1SX
         Y6MEPYTmt2FTEx4KIJOjv69RYfliuWQEgIzkoTcHT6sO8I/nfzRPpOH9nmfQyaHHLm+b
         AoxyMsdovoxn5b1KNQr+6lG95+ZgU1OMh6Ukh1rERXA+hCcGj4Ps9CVjyM8tyMfDrsT8
         wNYA==
X-Forwarded-Encrypted: i=1; AJvYcCUIlholVSSBiNAGe86GquSCiviabLm3RKUBTyOX55uHadhWUiAXhs5sIA3skYPPaHxaQ1ytBg3ithcC@vger.kernel.org
X-Gm-Message-State: AOJu0YyD2jhnWp8qZc0lKNejD8gyYa3vjYHBijJeURPn/rrEhd2UL1dz
	XxNnyVwB/lp6xJjaOrx62NU7Z4HblbuCV3YX62up4OGJGA0crx1mdzsE6bmVoaVBLNiSrZ4zx9g
	dlJQgSsXRmx0yRjIxj4rdv7SSzNRRe1WojRWxtvrrNlCgPVJo6rzOLaed66bpm1el
X-Gm-Gg: ASbGncu5FDkavXnEvJ7mZ8yODGY9FSZ9r2FaA9Bk8MXyGklxLg2NpPQUGdQLNRIvy27
	Dle4Kdlv1Zrk5imvR6ph7G4JzMk974lAdNKUpTCe9+vVe9eUkDwLL6E7+SBL7QEjkPEvtms6Y7A
	aK0UKMyac48JUWcSAsQLr3lHek2uXm8OYiIQVqMRux0suTfqIXNzGrZlDF+IuUskSFY/KetB8ye
	+MA/PAmn6MEyJeV73CVhZ1lAz3UKXRlXJXASYIbRxGMBzg+rPV4cwTDiwTds3jXpx/f1e1YAipa
	GOcgxKRTEEHQ26zmnIwos6kK895eajaPevegtvf8cQ6kVArAxXwYyYQ4ZllUaEmu30Ahn4uzKxq
	nDZzjgnJS2+O4XKtvy/DO2yS2ylo=
X-Received: by 2002:ac8:58d2:0:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e6eacd5b7cmr27615201cf.1.1759923037775;
        Wed, 08 Oct 2025 04:30:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6uuOJkmzqkpWxNRJcrKpuJOzIOVtnFzI7SgSZotUMBOtnoIvLxg5u1HtsT32WaiX1nRyRuA==
X-Received: by 2002:ac8:58d2:0:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e6eacd5b7cmr27614781cf.1.1759923037299;
        Wed, 08 Oct 2025 04:30:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a83f5fsm1646099066b.32.2025.10.08.04.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:30:36 -0700 (PDT)
Message-ID: <7ef31348-78ca-4abc-9eaf-5041e2e6be82@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 13:30:34 +0200
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
 <392d2e9a-dc31-4916-ab8a-680b2ec4dca5@oss.qualcomm.com>
 <19639c5e-7aa8-4e75-812d-93d805802cd3@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <19639c5e-7aa8-4e75-812d-93d805802cd3@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfXz5mw9rCU7qWX
 qs/Ro2qsFvmlXTEAPGRikP9iOG54SrOmABjZongVIsDnl2iZ1Zr4E8G+2SGREDiq31Utu9iT7Qt
 8tuDqi7fBRzvm0RmVmwpTz0F7DsC25NmFLbl8qbW0h+ZhihbhfTQq4BWd8Rwc9M+LIQZBtpua/4
 kthkeX2Y9LZWoenBkHj7pBZPFYKrVgxmVEdqL6PPQsvzo6RFWcTi4sbEoJvoqc/VBHJKwdbIgpI
 KAw/rFMbqgzAnd8ydSwQA/j/vbhokKf9N51PUay39in49cV1mS05DEN1qXtRRVg1XPqjJQp8gp/
 b9t8aeFsE0pa3M/Gn9JE33ZSdDFDOKR29b37JzXWtV/yYArknaXdpz+hJch0BUzajzxgYGhlF4h
 Um5uwD/19L/0xbqxX0llZzO2Ub53wg==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e64b5e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=209rYu4UdfZk2wwxGmMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: ZwNzENSe4aBEVgfh6LenbC-tXlNysNrT
X-Proofpoint-ORIG-GUID: ZwNzENSe4aBEVgfh6LenbC-tXlNysNrT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/8/25 12:51 PM, Krzysztof Kozlowski wrote:
> On 08/10/2025 19:20, Konrad Dybcio wrote:
>> On 10/6/25 10:48 AM, Krzysztof Kozlowski wrote:
>>> On 30/09/2025 21:06, Prasad Kumpatla wrote:
>>>>
>>>> On 9/25/2025 6:56 PM, Krzysztof Kozlowski wrote:
>>>>> On Thu, 25 Sept 2025 at 09:18, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>>>>> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>>>>>
>>>>>> Add support for audio on the Kaanapali MTP platform by introducing device
>>>>>> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
>>>>>> microphone for capture, and sound card routing. The WCD9395 codec is add
>>>>>> to supply MIC-BIAS, for enabling onboard microphone capture.
>>>>>>
>>>>>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>> ---
>>>>>>   arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>>>>>>   1 file changed, 226 insertions(+)
>>>>>>
>>>>> Audio is not a separate feature from USB.
>>>>
>>>> I didn't understand this, Could you please help me to provide more 
>>>> context on it?
>>>> Is this regarding Audio over Type-c?
>>>
>>> USB depends on ADSP, so your split of patches into separate audio commit
>>> is just incorrect.
>>
>> No, this is no longer the case on Kaanapali.
>>
>> PMIC_GLINK is now served by the SoCCP rproc
> 
> Hm, ok.... so there is no WCD93xx USB mux anymore?

I see there's a WCD9395 onboard which has that hw block

I'll try to find some schematics to confirm..

Konrad

