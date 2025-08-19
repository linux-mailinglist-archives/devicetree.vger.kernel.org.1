Return-Path: <devicetree+bounces-206236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2204CB2BCAD
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:12:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E652682FF8
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE8B31987C;
	Tue, 19 Aug 2025 09:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ALYpNebQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C558B31984A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755594654; cv=none; b=Q/6OmCUlAYKsASkM0XjdSndBLAFhrO4mo+9RZxI7GW8QNe8aNV7Afv3+9QceNtGN+4idk7qn7CRhwYpjHm7Fetyb4mabvZMhSbbTnh4DbfWA30XPfkEi7jxrLk/vwHZ7kiXDxD0cBHe5RpiJaixuExTupl9hoiaSr/BxPEwJ/UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755594654; c=relaxed/simple;
	bh=c/0xNcgwWCHWAKR+JVYlYWfbwgtw6ExzI4wBauUtpcY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ibikwbhesD44eZzHNz6e3YrERgWbZvD2i5dOw8RJvvUZYAPht5UXKi5SPiGlWZICFLcsNi5ohdAs0vz5mZqe99pXz3LDPXPLfBgozbCqHQcxqB55nDLXbUbMMK+ZVmTJPMZHalEM5Pi/U/Qo8OycUiXFSHaHNB6hqAZqkTWR2rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ALYpNebQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90asG021803
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:10:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XsV7Sy9k+vwy5ouGV8qiQwIlxBTG3StwfrEciiJABG8=; b=ALYpNebQBBPQijLH
	hUgUj/WaqcCgC6a24ZsazZdY6HSViOWR2cUpffsVfFMQBcwMU/ci0l59/XhzRlMY
	HUDYarrd2Qo24Bh0U5Ir1DBmsNLQ2HuvxLh5Vxa8N/s3vC5vJL5fuU/KWnsSgTU4
	f8QSTKUZOAaEr2gr0R8+bvO54UYch2wljZYFQvx8V8OlMYYbRi0OQVTJTAh9D9V8
	hdENLe9vQNi+00MiYn4UyhMtJ0f4ut0glI52e2q5wSxZCcADoI3eLb1Oe9p1kTdJ
	4fw5+a2ZI4G/BwYxOLUP6EIlTDczbOH8KR655mMtJcvrvXl0uaD5xwyIwaDpXTEX
	tc06/g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71cjnew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:10:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2445803f0cfso54615505ad.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:10:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755594651; x=1756199451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XsV7Sy9k+vwy5ouGV8qiQwIlxBTG3StwfrEciiJABG8=;
        b=aNnm2psHOH9Pg48y68dMrctLQOg/lT2IvTtCoV8tbUcLAlbHPdI688qFGFrQS/xEp+
         H2SmyXzabrya0EMEy6qfg+qEWLQ3/NSXwDKTVioJLtpR/GheJeuh9ihGP1XjGK0m4Oub
         8vbrASIjZDnonFzMykHZpGDA1vtUT+8kW5wKaywEJaztUWYMkAKFfKOTL+Z0dyyKHEzq
         Y0Bs9OnkJUot5Z2RU396iCrmFOM+OaCjDGSeV1lil/NasCQaRNUBhUaN71q6+7ljUYSe
         ZV1Wk/vpDej+MS35xq1BOxeEAmVszJWkStS51FB+o8GkiIOV+wTgjKKPEacq8UoiLX83
         s8Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVNlfiW0mzsoyUmqeNiShbWkZ1UbwCooSpILdwH/G9/UEvVZSNPf8JfWWAIWMwHEuZlP7v+qyKukOw5@vger.kernel.org
X-Gm-Message-State: AOJu0YxILN8ehDwvT7AxSPMWd7rSDGImSncGJYP9oUj1+q2KBTvJFKOt
	e9KaiD6xZIHQRJ+t1cYbUhmRgDyNqRxEAH2NNvxhjpyfcMMga1tLt0DQD/kyg7cylc3/25klKqk
	qTJas8z0Iememar+XJpkhkq154A3J1Ju8qV2WNV7ja9YlbQDFx0BMfF2SSG+pOzHG
X-Gm-Gg: ASbGncuPnxzGuOSbexldaKMXOGWiA+JGIChwglM87V74/degVBxz4hq+2o9wxAmvNY3
	pHaI0iQGz6Fp0pvHTtwUQn5HEOorXEux7xQx/sPgXCby30lM/xx4CdekPITj81VY/pjAyjxN5np
	kFaRc+aKyMyWCQwQ8NVBde6lFyao4it41nLmEgiIpUlQVONy7Efu5+ynYirIcI/NMYi990ZnwFW
	RG5uyr7cHvOFq5ujv/LPMFTj0KHGseRfv9tUOpiFgYwCO1tpJuMGLIgWqVv73H9h02sb0kM7H1Z
	h9Jz+UFYJP98mblqbqdiQ1gx9iCwmNBtkqEnh1hioEhl3z3FvKfdFv4yOgutbTsfIE8LlZm8
X-Received: by 2002:a17:903:2442:b0:225:abd2:5e4b with SMTP id d9443c01a7336-245e0491239mr19189315ad.16.1755594651144;
        Tue, 19 Aug 2025 02:10:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcIlqBWyX5Tv1soCJZ6KctFg2AezqPzi/p+uzBDvpy7KJX24LI0Ju+K0knNxrEaJDXB3Sarg==
X-Received: by 2002:a17:903:2442:b0:225:abd2:5e4b with SMTP id d9443c01a7336-245e0491239mr19188855ad.16.1755594650142;
        Tue, 19 Aug 2025 02:10:50 -0700 (PDT)
Received: from [10.217.216.215] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446cb065a6sm103629125ad.52.2025.08.19.02.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 02:10:49 -0700 (PDT)
Message-ID: <be066c47-5d94-4182-b8f2-5c353e078227@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 14:40:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sa8775p: Add clocks for QoS
 configuration
To: Georgi Djakov <djakov@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-4-odelu.kukatla@oss.qualcomm.com>
 <857f56a9-0fe7-4c10-a55d-b00740a8be02@oss.qualcomm.com>
 <7c96f881-23ae-484c-82b8-d388a5c637ca@oss.qualcomm.com>
 <04e09739-2462-4a4d-8378-6c6514dca752@kernel.org>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <04e09739-2462-4a4d-8378-6c6514dca752@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: EuoBi8hWemKN-c1ZkmzWEl8QtDD97zpP
X-Proofpoint-GUID: EuoBi8hWemKN-c1ZkmzWEl8QtDD97zpP
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a43f9c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Oyi9YktmGe5suzeJu0oA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfXy1AAV4BgjCEt
 J9pbOInvRC1BaiANjSUCoXtGjl1w0qvzR1GwezjocCKBSaKTapK/AdDVYjtwE4qkv36VrKnVjfY
 JkXMg9asnkOFqJH2K0dPv7S12KXYUaegiLVBb5FVcB8bJBo5tPZEj38dZxrcnm4W9BNmRkxF423
 3RX+iTdUnSwlzIKqKl4cqPuXHqC1ZOqaOJ6srC3S+0aXhlv7SOBtxSPNsV3PtYjcjQdEfJbxPK5
 4MxDyP7c+GzUaUf+brX/ZqaO8r/HcPk3LSrGI5oFKNA2Qf8dxA9cBCpNqrz61CrLmLQGJ5GLRkY
 X19QD6VwaNWZb/CFecZfEG8a0Nytunyo+IG7DyBAd+7fR3v0Hs6UixC9OmxCh3FddUUSeUTjB/L
 1xglkF7W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147



On 8/15/2025 6:41 PM, Georgi Djakov wrote:
> On 8/13/25 8:45 AM, Odelu Kukatla wrote:
>>
>>
>> On 8/12/2025 3:21 PM, Konrad Dybcio wrote:
>>> On 8/8/25 4:03 PM, Odelu Kukatla wrote:
>>>> Add register addresses and clocks which need to be enabled for
>>>> configuring QoS on sa8775p SoC.
>>>>
>>>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +        system_noc: interconnect@01680000 {
>>>
>>> stray leading zero
>>>
>> Thanks for the review, i will address this in next revision.> I also
>> see there's a camera noc.. are these controlled internally
>>> by Titan nowadays?
>>>
>> Yes, camera NoC is controlled internally.
> By internally, do you mean that it's controlled by some camera driver?
> Why the camnoc is not using the interconnect framework?
> 
Camnoc is internal to Camera subsystem and is controlled by Camera FW, i
think it is not by camera driver in kernel. > Thanks,
> Georgi


