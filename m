Return-Path: <devicetree+bounces-239985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCADC6BC0A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 25E3B2B1A5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 21:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B211E2E1726;
	Tue, 18 Nov 2025 21:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ee+v8QXt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YpMidsN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3EE289340
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 21:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763502361; cv=none; b=iA1tlXRbo38bHIkpzO0b0y+fTgGvVm+4D9w/UrVndUqKKTbDel+ELh9FVhu4MXxCMBps5sDU1kYmrn/Ct2D4TP9SQBqrBQPQJnl7Yctd9Pz5DA8Y/dDeM1ZcIGNBbYJOOlyRawH2yS83in7u4WZT9LgNdAS9sg1H8OZKsknUffE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763502361; c=relaxed/simple;
	bh=ls2Rw5xBdwyriW57f6EvboxT3meR68baJB60XNRB7gc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rS5PzxzlxmCLM+EADEuA6mMpEibudklsvyK/0FEo1OwookTDoNDdN2cPVTdEM8y8nCD8Zft0BFHvxerPZnmiSX0RRdfcQCS0UkHQktdH4Y0Kus7xeJi+MQfL3uwBtCv3OJ48ZXMvPiNd6Qcpzsb5ikFeqf0+djTxIh+cLn/w+J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ee+v8QXt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YpMidsN6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIGrPfS3165017
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 21:45:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x5iVPsaYlCb1RMVTHNymKIOQrhn6hE3lW1sYoQpRwNE=; b=Ee+v8QXtyh261DVW
	FZgce6h4fGZUj6T42xbyTWbTp8Ako7hkPkv1+PdUu+N3ZHDaIFH6UM0uageX/X7A
	xioCuVzt5xZBDelLrANoSJTw8KbhJwe5MBmQFUCTWAXVUaaHyyDR2+Wi+UkJXlao
	tnVy6dODUFjclRg0XqXLZ11uE20g425yIPlDxolzSgTsoBnNOcaOKeni8AgEo/gU
	g+4g5h0BMa5CmSCh+JwiUhG9ZEmudNq9hKWeEe5WTKPlr3TXqFSh0M/DcPQohGhz
	x4RukSvRdEpGp0RVYHFMwMGV+2oxoHPWKrkkBA3qrR45Q3NAiMeTyUrdcLJyHZF1
	V8asmg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agvqgrtm9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 21:45:59 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b609c0f6522so13647649a12.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763502359; x=1764107159; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x5iVPsaYlCb1RMVTHNymKIOQrhn6hE3lW1sYoQpRwNE=;
        b=YpMidsN623gjbLOYLs0Maen+G5R61N8w73E9kk+IY2SrKTRmKUKCmp0A1Xaz25Aq+a
         W6phUxg9vWnU1P8vNxXFYH9E3VdGh7PR20F9gCH2wYtkUnLKtEuwT+9LisV939ces3FL
         QuQ11tUxRgMH4v/pTKsaPMDWZvPX5Rp3vyfOSSTxEdom6cqCAmiUPc0TGxlYKkpE1Ger
         cx9reoukObwWFBCzvwfIdXYynUa1JnEQEkFNBPrsquegJzYRFGprqLLc/nV5f+BTJYu0
         KrcChaF6GoVZAAfqDSsOCCKcrNTWwcEwIAq1MNEE2MwuWhHHu2sMVlaDgj6ap6Uf0o9b
         M4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763502359; x=1764107159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x5iVPsaYlCb1RMVTHNymKIOQrhn6hE3lW1sYoQpRwNE=;
        b=k3zQnPRL2XzKKMsl2NEzBSIyBxr8sW9hdC49dXg5XdIv6GFC0HvgfOYpZpqE8j3/eF
         dHEEtdQWs37+2Ac6fUF85vXomKOFXsnAxwX9VlQAYlccXDYPAkE2s4+iOz2ZAQjAr1LY
         SrM6pFDMcTmsU44CC94GsoR0+s5bA3ehG66gIb5pbqZAER3z3uKjOd5A0VjR9cHU5hz1
         ItxFLnk5T0FIIv8M7+1qhUEkGPAaJXzUaIebPwCVyBzca5KqPZ39J/Lo7Dv9JUQHTmA1
         WbKGTtOC6pM+UJkv3Wr4+InKl5tl18IjTFar80nM58lXYGaUuA/oIo6zgLq+TMYN6jqv
         VqWw==
X-Forwarded-Encrypted: i=1; AJvYcCVWKKwENXCSWwfd/8Kl2QVEyPqmoqDhgLErQ7n3URPLdrMU1jePfX9pv2UFf6+uSYFgman+Lodrr8j+@vger.kernel.org
X-Gm-Message-State: AOJu0YxhMdttwtwJN6h7RsPiM+1F5lJ9XluUTPmur92/mPNTrAYuhhJi
	0BdZecGwMj4Z9J1xY9nkcyHRmG67ANdWux+Ef23WN9pMeLX3MO/R62YUB4zmq/J5RdvESkvtMCR
	PiDw5GVMirL3oyr4k+fW/EeXnaIsRzQsd/oZFRu6KL9R/bVuk3Gg4PFy6/Ave3BnM
X-Gm-Gg: ASbGnctMkb/nOzeCZJSNHwn/fTDI7AnQ8joTByVda+4aERJqBqwoZ7dhKIt8XiR5lTj
	QC0boUxLq+c5ROYL3w2RxlG8LgpH/SoAYhZBqbmim2t97YcB1pFlSDktu+0jNsChVonRs5hSxlw
	3YTxzHNX79Ac9aysTbfxJVMImxBBtqCBbaPelcFZ9cuMYxf6aV2hsusWhhMBOkCgru68hxcp+cl
	EJP40YB2lh5KLwI4ykTN5n3sc34DjthNTGOfPvS4ZI/jzstwBqvnIPIu/hR7Qe3KWmk+wEZwRQm
	VOt3iITYEcZiBL1Kci1W/BQLqMst3MsorskTQZLsas9CLlCur19rzg6+J4+nf6N3Bc0Nv4VULoi
	3d9klG9s27g7R/Q+RNcBn8+SfyTSC7QjYXnNcdQo9
X-Received: by 2002:a05:701b:260c:b0:11b:9386:8266 with SMTP id a92af1059eb24-11b9386850bmr3847560c88.43.1763502358470;
        Tue, 18 Nov 2025 13:45:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELTILBUpxHvNoH+O531dN5+wyeYypui6nPCf/ktkz+dWVwvrt1daR3IOAvqgTlEK5x1GA+Rw==
X-Received: by 2002:a05:701b:260c:b0:11b:9386:8266 with SMTP id a92af1059eb24-11b9386850bmr3847539c88.43.1763502357930;
        Tue, 18 Nov 2025 13:45:57 -0800 (PST)
Received: from [192.168.1.57] ([98.148.145.183])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b86afe12esm53561915c88.6.2025.11.18.13.45.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 13:45:57 -0800 (PST)
Message-ID: <1f320bc6-ba7b-476a-b9fa-b5333f66530f@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 13:45:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-1-1e6038785a8e@oss.qualcomm.com>
 <bd899586-f714-4d2e-95e3-6abf124e75a4@linaro.org>
 <37d0f89f-69be-45a7-90fa-347d6a3800bf@oss.qualcomm.com>
 <2d7ac7e8-ab69-44a6-b732-3657abf3a5a6@oss.qualcomm.com>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <2d7ac7e8-ab69-44a6-b732-3657abf3a5a6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 2nWC9G5YsK2ngmGGcavXxvQj8v-EHwqU
X-Proofpoint-GUID: 2nWC9G5YsK2ngmGGcavXxvQj8v-EHwqU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDE3NiBTYWx0ZWRfX5kF9PzVGWmrs
 ZZwKZTM9uPBWzjUH9sqqGUmYdZX2Pcx5NVnatEoUC5JmV1uibyOLXjFcyDjYFLIdUEqhBJMLW7m
 ssJn4AH3ibtatZ2YMHMiKN/cD467GSnn4IbvpS2HXW3IyUKFz+zX9kUXFlEkmwrnScZWNlKBmCK
 0bNRL8As2OaEQUf6v6sCpwAO+JizkgLo4LkFIfREuJ6a9Z+I1XNgTPjQlbPDXO7/JDrzR/IXs+F
 ROkhpUxAcbbOePuRBd8kyFhPGFZLM3EOY7KP87UAidHxehaTZYPzmadIHWFDZ2Xu3hjJ+21sqIM
 wAE3/cBcFjBZGUbthAsarnbWgni5gVUQaY+IEvOt4xZtBYBeVR9IXJTcNWEUVh0LOrcCgfvDFh4
 saYAOmhFtVthfneAnSKQlL/B05zRjw==
X-Authority-Analysis: v=2.4 cv=LMJrgZW9 c=1 sm=1 tr=0 ts=691ce917 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=BiHMn5M11h/vNwziJwzFrg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Im06aVK_WBUVNnXpTS0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_03,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180176


On 11/18/2025 10:44 AM, Konrad Dybcio wrote:
> On 11/18/25 7:25 PM, Vijay Kumar Tumati wrote:
>> On 11/18/2025 7:00 AM, Bryan O'Donoghue wrote:
>>> On 14/11/2025 03:29, Hangxiang Ma wrote:
>>>> +                  <0x0 0x0900e000 0x0 0x1000>,
>>> Why aren't you starting @ 0x0900e000 ? seems to be omitting some of the registers in the ICP block. Should start at +0xd000 not +0xe000 ?
>>>
>>>> +                  <0x0 0x0902e000 0x0 0x1000>,
>>> Same here.
>> Hi Bryan, HLOS does not have access to those registers. They are configured by the Hyp.
> If that's hyp, please add them. We already have platforms without
> Gunyah. Remember, bindings are defined once and for good and I wouldn't
> call it impossible that someone would want to run that configuration on
> Kaanapali some day
>
> Konrad

Sure, if that's the standard. But even on systems without Gunyah (say, 
KVM/PKVM), these will not be configured from HLOS in the regular flow. 
It will be done from TZ.

Thanks,

Vijay.


