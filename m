Return-Path: <devicetree+bounces-181945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA2EAC97F9
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 01:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54D914E4F46
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 23:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135E028C5B2;
	Fri, 30 May 2025 23:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fej/zpeY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7145128C030
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748646365; cv=none; b=IwK2Da9gxlrqttnr8dKEBvw0ZwdiClOVx1+Qwml41C8Jlyp/JbS0YnG5G7/53VkBVbOyXybjNFHF+j1MHMpoH+jVC1f658FpY3rKPc2XKdsZnZHP315fRefe+aVaqignjD+OOZ01p5vP61UnuRR80Pjb6p4MNeIvMacs6iRbD2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748646365; c=relaxed/simple;
	bh=9Q3zkS6WlUm0i6xiWVQMrm/0W/fDGiRMReHSQnHCLd4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=atxz5lmidWj6eBx6V5NsvW/fBJHV4ZCgJp5I3hpJz6wxzKbzNbMiZ4X1PtD/jZC1bEqxwJmKt+vCZWyqdNQqOFdYP6qWKCHGKLHWSNwhJy6nc87dUNuJTYe/buMUrtGBPp5Tf4cJ4vFTcxyws8XA4lZpAINDWXp8gjLDp9PhBGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fej/zpeY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UKAKKO010410
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0b1z4Tq2+rnRSWWaHM1bqTW0dz9iFSQvkviqR4iSpjM=; b=fej/zpeYIzthccqd
	Ht+CekZV1vFwNYEF+OZHz9+jijCByDJOipbPV+AFqF424SuQ0akrSp25VLUvb1nL
	jfeJULk2EW/bxG057/4dJ9G1+witZczS0JrS4XvFaWL3vB2rzKMjtB+Y9y/GsXUs
	ZiPvp19G7YHwAhE1jLRr7cDxWHzwFab1otTuC13GYWrHdFNuteu+dqcx7PDXBdvS
	RcuTHa6nrErT6nixTEvDB4bRTg+IVM30bitmjfOpLBv2HUuaiuEv7oAcGVLUAgMF
	oIzDrTgbFzImVxp7P7BbQao3Yjl1/XtitLv6Tgtp+7pw0TE7AikZosGoXDtDwilz
	JaM/6A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ykfbr945-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:06:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c555d4ad75so1395185a.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:06:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748646361; x=1749251161;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0b1z4Tq2+rnRSWWaHM1bqTW0dz9iFSQvkviqR4iSpjM=;
        b=bRz7jm8/guc+Xj4PhykptASyoKfKPENEZiEVP/q8G3bV0zg1WQEHffDm8SvXZd00/F
         Wkiw/xC9mm5fF3NKedvg9j1fwraJqLI+lES4qWbjRQJSw0yUgVDnONAQwt5ecqAqygO5
         bw+s9SlISRnOxgMeNpquK3cMFe74RlzHKwDDqOMdCCs6Yhite3aKWxSycvqcviQ1p+nX
         d1BErysJVB3CcUlC6zlL7bAzW+uwFFdZlixd8GyH69JQ+a0G2ss6WAtjrTHd+FB5zQBa
         apoYp4dT1aNfHRsE2wDEdSNJ9Ps/0wwopX6MUFqj5SHGEErc6sZj9rR29hd/0/P6LAMk
         NB7w==
X-Forwarded-Encrypted: i=1; AJvYcCU3Dw4nQe6aFSEygfz30XQwe2PtGta0/XuKbyA9nI44+fvF9+RNsz/y16Jit0huUhZWFbrk+H6dElM/@vger.kernel.org
X-Gm-Message-State: AOJu0YxLoN/F4d9HQKHll1F0HdKWh+9RGVTO3WCWUb9ZhYUgYhcz5gYE
	66D32ru3ediQU+EmkwwZOPC+dxnBcfmj1YWjxVh9w4t4MRBfSaOKV+a37SbSiks9YnV0IH2DmrY
	ifnxd+ZWRlGo1uoln8My49b7aOMBarau46scLAo1XFHcuGsGe6c07iVE6H2RIQC2a
X-Gm-Gg: ASbGncvMWzJmWnCMcYs9HO5txT3J1SjDIRJ9OsRF5sGbTecYN1LKgB/qUxs6/uiNTWY
	JWmY/6awSZv3UF1XXsr29TS0VVdPxQcr4BFFmCljKFZ5OWjL3Yw6eHaissbM6kN8Jk2mMAcbnXy
	37C1gepFgRxZw2AjElViubBZzreAAUWSvlwAkls0Tx2WU/TU83wlr5Lp4znLBcbg3e3jmHbYkwy
	BUFRh8SJkAcP4Xq1ny7i/6IKpq8I/BMHeV45eqUtBiPhOJ8brnqNvhjSlBpw3dk3sfxqmDT4Vsp
	uwKB6x5V/GLttOJJ+8QT0PYTVccwPhvN7QMyjMOhaUMOaA3ftltk6zsbvY4Y+zt3NA==
X-Received: by 2002:a05:620a:2490:b0:7d0:a0f2:e6ba with SMTP id af79cd13be357-7d0a3d938b3mr265414085a.5.1748646361292;
        Fri, 30 May 2025 16:06:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuW2Dm90PJkMPjDICfbP64xe5O0WLmye4UORnfpkTbHgki69F3jdJ6Wt5UO/xLdcA+ckvMJA==
X-Received: by 2002:a05:620a:2490:b0:7d0:a0f2:e6ba with SMTP id af79cd13be357-7d0a3d938b3mr265412885a.5.1748646360949;
        Fri, 30 May 2025 16:06:00 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada6ad394e5sm398937566b.137.2025.05.30.16.05.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 16:06:00 -0700 (PDT)
Message-ID: <f3f8f446-4f0d-482d-952d-35c80d7d7881@oss.qualcomm.com>
Date: Sat, 31 May 2025 01:05:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: disable the CTI device of the
 camera block
To: Jie Gan <quic_jiegan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250527015224.7343-1-jie.gan@oss.qualcomm.com>
 <5fbb515a-c3d0-4bbe-a689-41e730ecd952@oss.qualcomm.com>
 <9a156925-cf7b-4d2e-88a8-fdfed5528553@quicinc.com>
 <1fef810c-47fe-4f6d-95bc-0d72dbd63bf0@oss.qualcomm.com>
 <79f5e42f-f857-4247-abf9-d0f3f5c1a498@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <79f5e42f-f857-4247-abf9-d0f3f5c1a498@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=U4SSDfru c=1 sm=1 tr=0 ts=683a39da cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=P-IC7800AAAA:8 a=MEpl2RExcag3QXfMKmYA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: YUZ4bv1xqp1GSG-OJ5yzGHFK6f7vjNy6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDIwNyBTYWx0ZWRfXw07HWe7ebDw4
 jNNzkMTCVIq53bObXv1QXQPfkmN1csIx+mdIHu98GZi2HUSCCD89yGalTrLowTWlX5mumWdadc2
 VLisUphsfDOVASfnvt4XFj7t7s2uj/T7lrrB5wv7xHZr4beu5kcyD5MOPc9CBaNnzbBuOfbTb7T
 u2aeACs+f9yyCI5vNdRK/lpN4YFkAWakOFwxZpBQhaa1vhgOCsULm5+n92nGNHhTFO+b9+dljpZ
 Jdbg+dljFycrV/c4QALG/FCT5vYF5B30YcgU/FIDCEKaaLITqFJzAdnsvlGSrK5PtRouh5U0pcQ
 Crzv6swe98iwDj0JDh3O55qZgkeCASEWzVatj1SGRVsOAqp/5qDLIUF1pPXnHvB270oyIhJiUVe
 oNqP97MGyZI/+ytW3mOihqVzf8bQgAToJSSjx3eKu2NVj0YPzMg8IkRkB8LAZyGAeZz45thj
X-Proofpoint-ORIG-GUID: YUZ4bv1xqp1GSG-OJ5yzGHFK6f7vjNy6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_10,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 mlxscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 mlxlogscore=748
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300207

On 5/28/25 5:02 AM, Jie Gan wrote:
> 
> 
> On 5/27/2025 6:41 PM, Konrad Dybcio wrote:
>> On 5/27/25 12:32 PM, Jie Gan wrote:
>>>
>>>
>>> On 5/27/2025 6:23 PM, Konrad Dybcio wrote:
>>>> On 5/27/25 3:52 AM, Jie Gan wrote:
>>>>> Disable the CTI device of the camera block to prevent potential NoC errors
>>>>> during AMBA bus device matching.
>>>>>
>>>>> The clocks for the Qualcomm Debug Subsystem (QDSS) are managed by aoss_qmp
>>>>> through a mailbox. However, the camera block resides outside the AP domain,
>>>>> meaning its QDSS clock cannot be controlled via aoss_qmp.
>>>>
>>>> Which clock drives it then?
>>>
>>> It's qcom,aoss-qmp.
>>>
>>> clk_prepare->qmp_qdss_clk_prepare
>>> https://elixir.bootlin.com/linux/v6.15-rc7/source/drivers/soc/qcom/qcom_aoss.c#L280
>>
>> I'm confused about this part:
>>
>>> However, the camera block resides outside the AP domain,
>>> meaning its QDSS clock cannot be controlled via aoss_qmp.
>>
>> Do we need to poke the QMP of another DRV?
> 
> The AOSS has a clock control register for all QDSS clocks. when we vote the qdss clock, the aoss_qmp driver will send a message to AOSS to enable the clock control register, then the clock control register will enable all QDSS clocks.
> 
> The QDSS clock is not a single clock source, it is a term that representing all the clock sources utilized by the QDSS.

What I'm trying to ask is, is there any way we could enable that
clock from Linux? Can the camera hw turn these on? Maybe we could
trick it into enabling them?

Konrad

