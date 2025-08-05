Return-Path: <devicetree+bounces-201928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AC8B1B4C9
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 15:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 616A37B27B4
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 13:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B36A1274B50;
	Tue,  5 Aug 2025 13:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9AJgxDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B4D2749C4
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 13:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754399801; cv=none; b=m28VZIQmzEaljzAIWFt5PJi70CbaJm4ojyt6eqvPFD/0bH6T6B0KVnDv3TcqOH247FpKwZkHoS3J7cx9EMom5r1W+MzJ/13OloU6uT8Aj0rtmtOSjA1DNeUaF/g2Q61v/RlT1FbJVyEC6F2uQa51IP1QQTIAPMLZL9hV++QwtWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754399801; c=relaxed/simple;
	bh=xwxYSJqAOa2dswhRs3rVOJaTQiy6qaWgv8qoNhn4d4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hX4n4TmYWyAMnZyfllnOZUG+TOqlmjYzUY4seZnQKExBM/UFMHfT5BnKyscxwcO7DIifGYFfORp9J5XprNQRsMQfvb4TNc0y4VFF9RPmYNQrn6hLxSSspm3KQ+ezjJYEKVyDbLQ318Jyfl+SCr5HbcB0eU6HzLKPjGMgVRZUgw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9AJgxDb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5755rVVS029616
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 13:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vDcLe8zKX/SB4BPYrNHm0fL4uBKyff9MiXQwR+5hmYs=; b=j9AJgxDbOt8KR/kn
	4TnRGrzlbv1hj1bSUBbhlMx4T80D+YTEM1lBw14OaV7tShTMOdUIGKwKkQ9+/moc
	5EVnjH+uSK4C5TDnDDWNtF7BdMSVNIIWSSc3STulfHN4ufMS4tOR1AzphnHin9yZ
	NJ196Xkaq80gc9lkuvK2/lQkmUd+/gEZ6rcmdAX3H4BHbJIFR+kF65t1zTI5TV9e
	eqDlsUdzHxtAwsus2SLCxzvRUoGhbRDzEhDJCw7QnvS2kllNgC3XS+ESqKqiUGt2
	evjtxWfJwWa4UTH9ikQdAWGyUduIh6GdECLfH1DTDqDwxVj2qizjenCZaKT8PIeV
	gZaA3w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489byc8heg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 13:16:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e7f8e1dfd3so43546685a.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 06:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754399798; x=1755004598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vDcLe8zKX/SB4BPYrNHm0fL4uBKyff9MiXQwR+5hmYs=;
        b=CySwHnun/8GcyD+Q4ZVg9yH+/szNmO9uO9K5cL1i4Xb6lxYuzNVnWvGEb1tFRuLP7K
         MbghMexTWPK6P2hNctonbSigWZf5GzsGOP8oqpWyTqDXyvoq3AEuMcY0BDFNG+unQhjN
         1NP0AlK8DqbPMK/18cI8tJ8sP78nsPWvc0NdifJH2kaiAY7M39EZjeHSDyfR6J5c3jVi
         c0n6eUBmkLjafEnHehxtizxQTw4UZigkkT1ZiOwwU2Xpf4SxqgWSnKQrDfgtoPjgs5Q0
         PvUUOMx2p9kJX6iqCbs3QTn6ze0Zw+c5usX4csMhn4EZ178ywAzI2ZOAJj10SOhr1I3F
         4TTg==
X-Forwarded-Encrypted: i=1; AJvYcCW3v4qeLqDiMI8bpN0meRm0kXQriZsEQqpLmJoL2ql0UppBDDxLS4CU87YQ0zWtZ/T/oB9J+DoPZ+PU@vger.kernel.org
X-Gm-Message-State: AOJu0YxCsi3yG8O4AfhCEhCjZ5shyUN6hqkh3ULU82H8sEQwuNRHHXde
	7X2A7Hbj1OmiDvZpQRI/gMuGXa0soaGM4gp/D3OrdDEPwoCc28Gc8oZJ/0Y9UFAwx/SO6XLqp+i
	cxzIu82+wrTGykYDlgHMJhRn8N93QPDYER7Q2AblVArmHYp6ExHj4sFQAoIvr7kp5
X-Gm-Gg: ASbGncunhYv44uToVPD85Xed7xfstbzClf/qVrAPG9UhmDnIV74Y4AbbCQ1BaB0Z/Ny
	0qkts405+aAbdgGIrv3EiOJUC8iBIrbJojbNJQd0Cc7zfdDd/5V5dEnY9ljrfAqjipiQjKKVdDn
	n4Hn26cQ91y1w2S9RsaBYQl4b0lHe8nDJ5Eqv7ThUNvACSabkZ0cxOkoDiuA+Lz8HLWhLA5Op6N
	XtcZRq3y6Wjimvj/ELPVIiq1Wpj6gA1XL1Rl3ZtQ8/MMjz1WMtrl8jvm7VWean2lBZdiUJYghbQ
	hrGa0OIW70RJS+YAWTiqfiq3EW/vFReVFvMaZ534Fg5N5tDkurjwRdZ+OafnhijSmGC+q0iBvJw
	eUyKd/GXqQ42FkmFreA==
X-Received: by 2002:a05:620a:3910:b0:7e3:3c61:564a with SMTP id af79cd13be357-7e69637b772mr1033215085a.13.1754399797688;
        Tue, 05 Aug 2025 06:16:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2hUPem8LiGES/LWflDOyfSDfPc6bjk/5uUNypoybLkeo6W/T1Jtee8ToW21iWhAqLFav1wQ==
X-Received: by 2002:a05:620a:3910:b0:7e3:3c61:564a with SMTP id af79cd13be357-7e69637b772mr1033210685a.13.1754399797084;
        Tue, 05 Aug 2025 06:16:37 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f2d554sm8310553a12.27.2025.08.05.06.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 06:16:36 -0700 (PDT)
Message-ID: <11ea828a-6d35-4ac6-a207-0284870c28fc@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 15:16:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sa8155: Add gear and rate limit
 properties to UFS
To: Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>, alim.akhtar@samsung.com,
        avri.altman@wdc.com, bvanassche@acm.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, James.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250722161103.3938-1-quic_rdwivedi@quicinc.com>
 <20250722161103.3938-3-quic_rdwivedi@quicinc.com>
 <2a3c8867-7745-4f0a-8618-0f0f1bea1d14@kernel.org>
 <jpawj3pob2qqa47qgxcuyabiva3ync7zxnybrazqnfx3vbbevs@sgbegaucevzx>
 <fa1847e3-7dab-45d0-8c1c-0aca1e365a2a@quicinc.com>
 <1701ec08-21bc-45b8-90bc-1cd64401abd8@kernel.org>
 <2nm7xurqgzrnffustrsmswy2rbug6geadaho42qlb7tr2jirlr@uw5gaery445y>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2nm7xurqgzrnffustrsmswy2rbug6geadaho42qlb7tr2jirlr@uw5gaery445y>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Ch5o9yzDHuKikT3yzuL0iwtcsEp8a2A6
X-Authority-Analysis: v=2.4 cv=Y6D4sgeN c=1 sm=1 tr=0 ts=68920437 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=n5nAzIlM4DwaeDdO57oA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Ch5o9yzDHuKikT3yzuL0iwtcsEp8a2A6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA5NiBTYWx0ZWRfX7r7/21ARC/Yv
 ebq0HlHiooI55s5NgF69gOjLBChxlf2fUfbLCte1FcFPg2F3rHrmh4rHa5reJlZy50stViJWxp7
 hAOR+/nGnmN3WozuzeHBHYkHosjaT47TDMGBtn2Jmjpwv44yShBB/3AjsdQPP8NNw06cIT+SNCe
 Z78IOnkOn4TPbI1lc0Mq16BqvNWrqSoy89UoNvtGZKSB8mRzDkv8Ts7YU7MIO5zHW+pWG4/4nBK
 95EzUDqwuKmGlyv8pYD+cyNHjqfECeNp/foY1+h89djWd06jmYkAWAGU7BSEhC/ngNs+h0tmQnm
 13AEjrsGlwQCfs0qpd+1rwc9P4yfzcUyxJ71PfarbBOW6fodsiZyFc/9YLLN4eWqcM9DNt7LTIm
 33cMAiAjDXDQkTxzSZ+rcCru5YrqhiFWHZY0T6g4zYrz9k/29A2KYL/svE+Hv23HIOTDPuxT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050096

On 8/1/25 2:19 PM, Manivannan Sadhasivam wrote:
> On Fri, Aug 01, 2025 at 11:12:42AM GMT, Krzysztof Kozlowski wrote:
>> On 01/08/2025 11:10, Ram Kumar Dwivedi wrote:
>>>
>>>
>>> On 01-Aug-25 1:58 PM, Manivannan Sadhasivam wrote:
>>>> On Thu, Jul 24, 2025 at 09:48:53AM GMT, Krzysztof Kozlowski wrote:
>>>>> On 22/07/2025 18:11, Ram Kumar Dwivedi wrote:
>>>>>> Add optional limit-hs-gear and limit-rate properties to the UFS node to
>>>>>> support automotive use cases that require limiting the maximum Tx/Rx HS
>>>>>> gear and rate due to hardware constraints.
>>>>>
>>>>> What hardware constraints? This needs to be clearly documented.
>>>>>
>>>>
>>>> Ram, both Krzysztof and I asked this question, but you never bothered to reply,
>>>> but keep on responding to other comments. This won't help you to get this series
>>>> merged in any form.
>>>>
>>>> Please address *all* review comments before posting next iteration.
>>>
>>> Hi Mani,
>>>
>>> Apologies for the delay in responding. 
>>> I had planned to explain the hardware constraints in the next patchset’s commit message, which is why I didn’t reply earlier. 
>>>
>>> To clarify: the limitations are due to customer board designs, not our SoC. Some boards can't support higher gear operation, hence the need for optional limit-hs-gear and limit-rate properties.
>>>
>>
>> That's vague and does not justify the property. You need to document
>> instead hardware capabilities or characteristic. Or explain why they
>> cannot. With such form I will object to your next patch.
>>
> 
> I had an offline chat with Ram and got clarified on what these properties are.
> The problem here is not with the SoC, but with the board design. On some Qcom
> customer designs, both the UFS controller in the SoC and the UFS device are
> capable of operating at higher gears (say G5). But due to board constraints like
> poor thermal dissipation, routing loss, the board cannot efficiently operate at
> the higher speeds.
> 
> So the customers wanted a way to limit the gear speed (say G3) and rate
> (say Mode-A) on the specific board DTS.

I'm not necessarily saying no, but have you explored sysfs for this?

I suppose it may be too late (if the driver would e.g. init the UFS
at max gear/rate at probe time, it could cause havoc as it tries to
load the userland)..

Konrad

