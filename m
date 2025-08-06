Return-Path: <devicetree+bounces-202142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0CCB1C2AC
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 11:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C013F160F80
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 09:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45F022332E;
	Wed,  6 Aug 2025 09:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LmWZchVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C59289816
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 09:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754470885; cv=none; b=CGmItWaxqbtzINTy8gnlL+QgLws9ZE2kiu0cEVTiHnzYViarJh6v4mksGQ2MUXYufomxsB99csjjjijT+2nIjrrALYgP2y6NJzv8HkvgHcQDJrX6auGSj6Yiip6mhN09+Jqs+m2YFrt14YXRZI66JSt6weFD8/01L4IcY++bIaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754470885; c=relaxed/simple;
	bh=eXeFflPzyYElNM7RCdEcYbzkvkU93X8aeiBdOj0Htg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mXxxtXGnLtLv06SQhAeElRY0EKqMZ+97V8ErwwN9U3ewmUFiSoaI7BOw+KKCnhRHGnQOrdV966PtE/aC0S5oUCsT+y0Eak0Q/LN8ehAM/KnqC2fgc2N/QDzCZJKDzMNOMlzjeWa+iqgUsZ4U2ksZK0Mpa+HZk15TCsAsF+ipRsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LmWZchVg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5765kFbf025172
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 09:01:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6D+xwxfaNPC764NxYBxFtb97mFQ1jkjyZhyg4hVCh4U=; b=LmWZchVg8NuIE4jQ
	rM42U7p52Jc28Jo3fLE3S84DQLS8UD3F/D06WIwMjPM69EXfsNbaNlGjI+uB0ugk
	MOWJPyZpWL7YEVLSoeF+6e0/CchKFvX7n8IpWij3pYFuignp0xwgJc4iMGzOcWa4
	hVazFSaNR9dT06CaZAaN9lz3odHtq/Aa27D+M49rn83mS0PA77pSqn7qI0MaIFgT
	hbauKmydFUSt70hbO98EsPp6S1Iwo04geC8KitENwE4xLkefnSA2M6nIGK4rBSP0
	mKzOJe1qgw2vfl/c6YgOf4RWNZfagMd6XqPVpdIywTH7LI2Ec5SmMsLqTNpiZvZn
	1FGS0A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvyt7at-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 09:01:14 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70778c8179eso11858526d6.2
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 02:01:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754470873; x=1755075673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6D+xwxfaNPC764NxYBxFtb97mFQ1jkjyZhyg4hVCh4U=;
        b=P+KOrpSOfsNrq2OiNXdKQubwphtXcBTqiwmv1VDv4V5YdVrLTcYB9ZyLsdr75tDcqX
         +8/vDxtlV+Uh2acVDIqLzeQACOsemOoddUvf11LI3N/DUndpCpm6PYRk7hzjruqNExdL
         jU4nN4NjRnktEfYkgbd6Crg2pc8XMOjz5eJA6CbnaUQamHwxzbdbizgU58FltZmsvu6L
         oY9nuG+fd/YjUAgKcV2I5lpkqsABoBgBVV/np7CbsBnaRucAac+Ni4m/nirzhICo4zNp
         LwgbPasRJd1xpiTe3/g4jGh3CfLarhvfgweL3Q0JMeQspAJg037OVdoH6AyALWCnmkG5
         PAOw==
X-Forwarded-Encrypted: i=1; AJvYcCVduM3b+ra18463luF7di09jnnow0LsTJfZ/cLNRjqQrJlj79Axfhi2LWGS8cJb0GMx2BCAWmHqohIT@vger.kernel.org
X-Gm-Message-State: AOJu0YyMcvQvmdFp6rzdEG5WKzfPabS9uzwLAgyDEd9JptxNuV9Eqnq1
	7oj2i3Bm1NtKhSFV/tLGkqmQKuOlPdAbAj7++8ogsYtA/FW96K6rI2Lu2DsnbGAZbZVHsUYoq9M
	WSFi4ObcE9sd8YKMrva/S4lJ2kcAfNeQilkoVXrAPRLjnRKgCzgRDlDJq2MNCUvb9
X-Gm-Gg: ASbGncvisphPvJU0Wvzk6MMQTkG41S1JMZ845Ku2tRYdtaOZFhbRAjFVVDptV27Zwyj
	xAFRbhWK1lF7Y9AFCf+65jBHQWcv1Sl3O3bfYWSZFEX1m6Iw563Ktk+nTuZ/df73nbJol3oOwvy
	acVsWutb4h0ro4HOXsLiNRygp7BHJ3IUHMBGrxH/8QBfV6TMURPrJm+pQtFoJzUzoEqxe0ZKvdd
	pSty0b5FjgAynWmKCY8CDM9CmW4DJBmOFwp2wuGPhVFqduSsCjhCQ3hebmq5550eqOYDlqPKl3t
	bgjqgk0EhF/QfQZYaILxy2x1iUyxhhsX9pO6BzdmtBYaTZiC+oOJQ5ghgoRPcaA8PIrzeV1sqS1
	r5e86hsAW45x0poULwQ==
X-Received: by 2002:ac8:5d08:0:b0:4ab:701c:aa54 with SMTP id d75a77b69052e-4b0913f27a6mr15927891cf.4.1754470872826;
        Wed, 06 Aug 2025 02:01:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQfhvBz/y7VBf77xH41t0vN0JNTEXgDYwxJcvoC4l/blB8yRe/xKAvpfQqePz0oZyARObcPw==
X-Received: by 2002:ac8:5d08:0:b0:4ab:701c:aa54 with SMTP id d75a77b69052e-4b0913f27a6mr15927561cf.4.1754470872234;
        Wed, 06 Aug 2025 02:01:12 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a078cbasm1067576766b.5.2025.08.06.02.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 02:01:11 -0700 (PDT)
Message-ID: <0248afed-b82d-4555-8277-e84aacf153fd@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 11:01:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, quic_dikshita@quicinc.com,
        quic_vgarodia@quicinc.com, konradybcio@kernel.org, krzk+dt@kernel.org,
        mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex> <aJHqpiqvulGY2BYH@trex>
 <to2hrxml3um6iep4fcxhkq7pbibuimfnv4kfwqzlwdkh4osk5f@orjzbuawwgko>
 <aJMMhIqNupwPjCN+@trex>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aJMMhIqNupwPjCN+@trex>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NUF-B6WlWiqO6exoWEOxTKb4ztLxdaJR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXz+IkfYPA2PRm
 +jQSTBGBwOOtfL9RsiM0YMYwVLxYRFBnRD1CbnRoYSkRmyLnhK9h8NYs0STruvUS7lmZZzTwOXJ
 k2htE2znpM3QJ+TO3pIvBdhPKOx5Chn6dx6+wBuAEu3s+teUutQahGLCiNFBh5uXLs57NQnYNbY
 dLpv9/h1ckKt5ykwXcDGrmqwFbTFDSfuZ68yr+0WEdO/FgYrWkLjFsNp9QWhiVWfQYbwweDWd8Z
 vcB6YQEqta5M/WNAnV0YbKvUNxCNLrtXqz7OPuzu2Xv4lzZOvtIWvFF25WKsQzLsMGGL/yqzm94
 mXSCSgPHeh+q4VWk5ro4TkE+2faVFijglS/RVoKDOCKkV+kAnnzKowMKkqKulUWUMb4o6IFzghH
 yqYIPltb
X-Proofpoint-ORIG-GUID: NUF-B6WlWiqO6exoWEOxTKb4ztLxdaJR
X-Authority-Analysis: v=2.4 cv=NsLRc9dJ c=1 sm=1 tr=0 ts=689319da cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=JpaEw4Cn0_AnavUb80UA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/6/25 10:04 AM, Jorge Ramirez wrote:
> On 06/08/25 04:37:05, Dmitry Baryshkov wrote:
>> On Tue, Aug 05, 2025 at 01:27:34PM +0200, Jorge Ramirez wrote:
>>> On 05/08/25 12:44:23, Jorge Ramirez wrote:
>>>> On 05/08/25 13:04:50, Dmitry Baryshkov wrote:
>>>>> On Tue, Aug 05, 2025 at 08:44:28AM +0200, Jorge Ramirez-Ortiz wrote:
>>>>>> Add a qcm2290 compatible binding to the Cenus core.
>>>>>>
>>>>>> The maximum concurrency is video decode at 1920x1080 (FullHD) with video
>>>>>> encode at 1280x720 (HD).
>>>>>>
>>>>>> The driver is not available to firmware versions below 6.0.55 due to an
>>>>>> internal requirement for secure buffers.
>>>>>>
>>>>>> The bandwidth tables incorporate a conservative safety margin to ensure
>>>>>> stability under peak DDR and interconnect load conditions.
>>>>>>
>>>>>> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>>>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>>>>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
>>>>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>>>> Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
>>>>>> ---
>>>>>>  drivers/media/platform/qcom/venus/core.c | 50 ++++++++++++++++++++++++
>>>>>>  1 file changed, 50 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
>>>>>> index adc38fbc9d79..753a16f53622 100644
>>>>>> --- a/drivers/media/platform/qcom/venus/core.c
>>>>>> +++ b/drivers/media/platform/qcom/venus/core.c
>>>>>> @@ -1070,6 +1070,55 @@ static const struct venus_resources sc7280_res = {
>>>>>>  	.enc_nodename = "video-encoder",
>>>>>>  };
>>>>>>  
>>>>>> +static const struct bw_tbl qcm2290_bw_table_dec[] = {
>>>>>> +	{ 352800, 597000, 0, 746000, 0 }, /* 1080p@30 + 720p@30 */
>>>>>> +	{ 244800, 413000, 0, 516000, 0 }, /* 1080p@30 */
>>>>>> +	{ 216000, 364000, 0, 454000, 0 }, /* 720p@60  */
>>>>>> +	{ 108000, 182000, 0, 227000, 0 }, /* 720p@30  */
>>>>>> +};
>>>>>> +
>>>>>> +static const struct bw_tbl qcm2290_bw_table_enc[] = {
>>>>>> +	{ 352800, 396000, 0, 0, 0 }, /* 1080p@30 + 720p@30 */
>>>>>> +	{ 244800, 275000, 0, 0, 0 }, /* 1080p@30 */
>>>>>> +	{ 216000, 242000, 0, 0, 0 }, /* 720p@60  */
>>>>>> +	{ 108000, 121000, 0, 0, 0 }, /* 720p@30  */
>>>>>> +};
>>>>>> +
>>>>>> +static const struct firmware_version min_fw = {
>>>>>> +	.major = 6, .minor = 0, .rev = 55,
>>>>>> +};
>>>>>
>>>>> This will make venus driver error out with the firmware which is
>>>>> available in Debian trixie (and possibly other distributions). If I
>>>>> remember correctly, the driver can work with that firmware with the
>>>>> limited functionality. Can we please support that instead of erroring
>>>>> out completely?
>>>>
>>>> yes, in V7 I did implement this functionality plus a fix for EOS
>>>> handling (broken in pre 6.0.55 firmwares).
>>>
>>> just re-reading your note, in case this was not clear, the _current_
>>> driver upstream will never work with the current firmware if that is
>>> what you were thinking (it would need v7 of this series to enable video
>>> decoding).
>>
>> I'd really prefer if we could support firmware that is present in Debian
>> trixie and that has been upstreamed more than a year ago.
> 
> 
> I share your view — which is why I put the effort into v7 — but I also
> understand that maintaining the extra code and EOS workaround for
> decoding needs to be justifiable. So I chose to align with the
> maintainers' perspective on this and removed it on v8 (partially also
> because I wanted to unblock the current EOS discussion).

+$0.05

I thought we were going to eventually relax/drop the fw requirement
when the driver learns some new cool tricks, but are we now straying
away from that? (particularly thinking about the EOS part)

Konrad

