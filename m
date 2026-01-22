Return-Path: <devicetree+bounces-258399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AKjNz8lcmkVdwAAu9opvQ
	(envelope-from <devicetree+bounces-258399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:25:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A9C673CA
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D04F85406CB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB28346E7B;
	Thu, 22 Jan 2026 12:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LZdHrDWQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D9rSdzlE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA5D2DE70C
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769085283; cv=none; b=AIyvh+4netnrtteRXvtoYBPZwBL8V0yU7fpMgd1ZeNEKKrHY2ZK9NMvVrgrT4BIwfjdu1YyJEEWibM1oR/abXtuICq4Ihr/J0JvIcm4GfdL62aVNSJoqfxujjdFneWQ0m176+0BcYT1umDsHwoDPI6xIVJPJfiKRT81iKsoGWc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769085283; c=relaxed/simple;
	bh=zKZG6fn54Avf54lf7flmb7ZKSwbFMIeVamSom6YaUA0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NfNPdNMHlzsstiFcarh4EJPeX4Hur/S2yAzrRIE20pey0MD8BnEYLcZj0qEYLmFQ0NzLRNpq+nVDUvabKXyCF0g1WeEipy3K52x25rxLhbck9FD0DcuvSlWLFFk13QvDxVgr7emu2Sqpkd1bSDkERNPCVbruY7Ka4rWxWW6/6J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LZdHrDWQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D9rSdzlE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M8Tj5K3463810
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:34:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OQ9Hp0YXE7x+HtzPq+22mdatg3BzC8x6q18ktloaVtA=; b=LZdHrDWQizJ4LLzp
	vVK1EXsUnbwYu5JNptjC8GrH7eJw5ac5hf1Rr1zwghL/Xzl5StnxgyZXuTQ1Ov8i
	V9yqEapCqIPtX4KmHMfuv4PevxOrnjXtsoi/VP7ytkkwzz1WuWaNTVeH2skQsfb9
	BjW52hRFr86Us8bb7C5NKJ7oqkF+Tcau00T2NtI2mksLtv61C72Ang1CtLmC/dEP
	f+9mLhkXHTW+Y4Xb9ntJFvPHQqFLJ/AcRFujriKdbha3+5olas6h3iV86W+C7WfJ
	MWyQY14hNwlm1Rs7K/UT82kfCpBxYWfWO1hjqVsZyVz51Bo+jP4H1KGwzLGhOnRP
	LBil0g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu0653tup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:34:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6de73fab8so12526585a.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 04:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769085279; x=1769690079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OQ9Hp0YXE7x+HtzPq+22mdatg3BzC8x6q18ktloaVtA=;
        b=D9rSdzlEbrHK6Epxc/ZtMpt3t6wQw0lxcsn3wP546/L+Yo21mvBWJ03B4eSlUQA0TO
         UjtqlEZ1FNcZsQtgbWX3XW9gtrd2qhrMvOjA8DXOLPTTJcexQVuauOM2TP2Oc9QU9lEF
         5VQGeh9mBIaff4m5pRoeryuwEcq3vxOmkA67KKf+v7skS73B5zi8pH97wHMrEEJyC3Zy
         7VtDq8NliVkYUlwlYi5xZnB/AxWXYQ9bWoEJIq2Dr81x0FBU4MT59FIInArk613G+3+d
         EtBkvWPIxeO+C3YxcAfCibBgnDihplaFpdTr81EpaeV03jZ4M1yTIR2WSdZAHQWEuUxm
         ldhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769085279; x=1769690079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OQ9Hp0YXE7x+HtzPq+22mdatg3BzC8x6q18ktloaVtA=;
        b=kvHACZ8emIh++ZrGoIYlcS/8mlnEXgHS/P3kVCkTGHGbL3ecXr0k6JIIl6ZiyVcMef
         i1/JVUlFt7FjuYpadnRgrXwx+5FgPKg3B2czB3qpyN/6zRJA5XgitiRE058u7fx1PMqF
         OkS/TqolDjLkYnAxZdhnRi9krVZmRg4ZtnuyYv1e57sWq8YiTqM92hm48SSy8L0sW2qn
         PdE83PZpWdgJzhlYqOmgqtUhACN0/N1UWz3k3TpfUqJ8vjrmdpyTsm/iYCNih/OyEKYM
         h+06P57pL1YlAvfRfkfLrk//5hs3E7sdUA5ZH8pkStGesyYxNWtmqriIKFDjBcdIdNvy
         Z3xg==
X-Gm-Message-State: AOJu0YwDlNMMr4BtXImZRdYkMOD3/a7P+SqI1SyAo/q7ufZlMUXcuJ+h
	9e2FBI8MPnpOe7dx/0jbTUpRZWf6Cjz2G0uSHs52D4JEgCuGTO91doeORV5hpT0LiAwy57KqSQY
	/KKgVGukQgxPFSpbT56Rm+yJqLQc/N7+XRpBt7gZdOp0qtil1PSh48RJpJujq1Pb/
X-Gm-Gg: AZuq6aIubOAMjDv1eea3tsJmLsoPJXraZGYhg9ZBGQn6xd1m4KlghZpn9crVH5OGjxe
	jHdDYSsfvl4g7uUBO5IlgG3Zo54DJsIFQ0b7ES9XGIBBy2w52ikQi00tswj7mDHA+C+CjpCockd
	VUkW+V8V3R7Ta+A5OR8EoiVcaIeHuiSWiXI6b/Shi5bPeMSEXlIwXy4JE3ehKC/bbvlo1COhNN7
	8wCIKjJTzzif2gWF+hKLmQm+SJaGyEiPVUZHUM/17a1eL+tGnruYk/uqBjrzSnc8BH1YDqxO3Rq
	cLh8Co2E842g/t/rc1mLB3LsXK12gROOHpq9tPqdJ5t9zqJvJNs6HhULqr5+fOJsH0hsV/LRCjz
	8/stNJrb4Zfw5rjWpaxmeqD9Tn8Q0c/bv86LK9AF9pWYrsVgZcSL07EqgmMdfc2E7j5c=
X-Received: by 2002:a05:620a:4492:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c6a6606fcamr2126204885a.0.1769085279316;
        Thu, 22 Jan 2026 04:34:39 -0800 (PST)
X-Received: by 2002:a05:620a:4492:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c6a6606fcamr2126202585a.0.1769085278826;
        Thu, 22 Jan 2026 04:34:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a2f1aesm1725477066b.61.2026.01.22.04.34.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 04:34:38 -0800 (PST)
Message-ID: <687b781c-dee6-4b8e-89b2-e082a860be3a@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 13:34:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: add basic devicetree for Ayaneo
 Pocket S2 gaming console
To: Kancy Joe <kancy2333@outlook.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org>
 <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-3-bb3f95f1c085@linaro.org>
 <01de9fc2-f60c-4bc0-af61-c070213df29b@oss.qualcomm.com>
 <53a1370b-89a4-4276-949a-e3ad95dbad2c@linaro.org>
 <SEZPR04MB6873411EA1A8B69AD45B286CA397A@SEZPR04MB6873.apcprd04.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <SEZPR04MB6873411EA1A8B69AD45B286CA397A@SEZPR04MB6873.apcprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=HOHO14tv c=1 sm=1 tr=0 ts=69721960 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=UqCG9HQmAAAA:8 a=KKAkSRfTAAAA:8
 a=xRqI7NLVZAYiWIq_3gYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 0MdiTH2T52OUqWSrS53VhFVqRH-xWOtb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA5MSBTYWx0ZWRfXwgQfJci1fmgm
 BweOOuQHrgrKipeH8WdHuSa5GTn5mhM71y0LUNUyQfnBH+9M2WyBD4rSL3pdYpMNxVZc3l3YrX5
 /ipbGY3J6jA4/6lKpUAyHN3ZCP0CWdcxsLjVzqSl/vSqP5m2h7WaRM8SO3txnE5YA60fGVWLA42
 eW1uWsgLNJ+J7J3qMY2D8yi/orqXxP1oDRpS6yz2xjaoyTfTPggYKoCTD48o5eZGLTOx570tjxy
 DI8k9DhkmaTvhwaJ8IgfWdggw/bV4ClEBJRd3UL5qUcE8P12SrzdigpskbuJRuvB6TuLieY58VL
 hJ0F9A5A0RZtmZATHHXvmkIaNWQzkrX0+08ggFl7EHkITDRYfb8Ua3WQKS/ih5kE+bkzscMbYFH
 bFOz5kpaLKrsE7DXRhqxWRp3+tqOeOk3LcwPfXCS3LX+QL78e1fWtvJJqKbGcAnc2InpACgR/Ow
 g4zH/EAAjW0AfdXUW+A==
X-Proofpoint-GUID: 0MdiTH2T52OUqWSrS53VhFVqRH-xWOtb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-258399-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[outlook.com,linaro.org,kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,outlook.com:email,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F0A9C673CA
X-Rspamd-Action: no action

On 1/22/26 10:34 AM, Kancy Joe wrote:
> 
> On 1/22/2026 5:25 PM, Neil Armstrong wrote:
>> On 1/22/26 10:15, Konrad Dybcio wrote:
>>> On 1/21/26 5:40 PM, Neil Armstrong wrote:
>>>> From: KancyJoe <kancy2333@outlook.com>
>>>>
>>>> Add initial Device Tree for the Ayaneo Pocket S2 gaming console based
>>>> on the Qualcomm Snapdragon 8 Gen 3 platform.
>>>>
>>>> The design is similar to a phone wihout the modem, the game control
>>>> is handled via a standalone controller connected to a PCIe USB
>>>> controller.
>>>>
>>>> Display support will be added in a second time.
>>>>
>>>> Signed-off-by: KancyJoe <kancy2333@outlook.com>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---

[...]

>>>> +        pinctrl-names = "default",
>>>> +                "sleep";
>>>> +
>>>> +        pwms = <&pm8550_pwm 3 50000>;
>>>> +
>>>> +        #cooling-cells = <2>;
>>>> +        cooling-levels = <0 16 32 45 60 80 105 130 155 180 205 230 255>;
>>>
>>> Does this come from a preexisting map?
>>
>> Kancy ?
> 
> No it is not a preexisting map. I add it(and the thermal part) myself to get dynamic fan speed control work. Perhaps you can also use userspace fan control daemon instead of hardcode it here. In android the vendor control the fan speed in userspace too.
> 
> Following block is what the stock fw defined. I changed the granularity to make fan speed (or noise actually) sounds more "smooth".
> 
> ```
> 
> cooling-levels = <0 64 128 255>;
> 
> ```

FWIW the corresponding pwm-backlight driver has this
num-interpolated-steps property which computes a smooth map.. not sure how
many cooling levels are resonable for a PWM fan, but then I would intuitively
not object to having more as opposed to less..

Konrad

