Return-Path: <devicetree+bounces-262511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBACA1zdgmlJdgMAu9opvQ
	(envelope-from <devicetree+bounces-262511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:47:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ADFE215B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:47:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6C4A3014654
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D92327EFFA;
	Wed,  4 Feb 2026 05:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aQA5piNp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dA6biXv/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABB023D7EC
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770184017; cv=none; b=o2pzZNa9i+7pX/0NoEaCbHfoKfnPg5w2sMM6bKs5hUzEvITCL4f7KysyhnMQ8RCPXA35HS3P6UX1LIsvXVkcZ/MRNpijV+c/1+OMuyiZzFxzNKRo/xWhALO/24GPM/p1zprPdZcDquAstcJcZFeF8lFXJEev5+7dTZ9m3M7I22g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770184017; c=relaxed/simple;
	bh=tNnd9yFOMETSUFiIUmYcFlJeVCp0RKC4c6TG6wvbL78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WXGqMNlvfAJuO+CUDEeanuZ+61R/SFBL5rpcwpOLNI5DYiszK7Dbeu1XP4EQk6et3S2ZVsyWY4wks2OxbbrwkY508naNqvPHdoqPV3c/iWsfdWIPaQ2fHwPFYc7watWzVWmSHSG4oRBHW3BwTGP8jzb5uYTIf7SGClGrgjJvtH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aQA5piNp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dA6biXv/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6144Wheb2613555
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:46:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pw6pgiUBqTssrPGSNsLlGv5r8wuOBZBhuul/MWgVYX4=; b=aQA5piNp7L4Ufb0R
	4kgNuLNLKpx8VURWd23feq8FcXglZ/P6Z6YQ4/gmkwEk4iC6Xg0irwqsWkpnZY/Y
	YmrrDqm3qwObahSPoa/CyLt3tRhSfCcCgdJQW+xys/rJ4TyXMDWkWWY1xPQXvTxI
	q2K+jfjKC5hamyvskrtXagzDKO9AVfLxcfPUSeX+jIV2X9H2Av+j3NJpPozJNI15
	4ufNRVab68wEXsGJ1f2+/KE+OlIVmreonBSnrTVqQ1ki9fLpMSEJYPo38en9M5Q9
	pc+B8DjUT0vlBM1Vd2H6W0vfaDc3gukCc16k80IGAzt9G9VWpXZKvjf0ULXhdiJ2
	F5q9pw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3h07k3nj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:46:56 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8230e2c00dfso3311773b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770184016; x=1770788816; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pw6pgiUBqTssrPGSNsLlGv5r8wuOBZBhuul/MWgVYX4=;
        b=dA6biXv/MJEO2WMAuwQRiQV33OxE0ngqra/CMNXC5o19bNmbcuKKJqVKB5RejdeMb4
         5BkthuyqYD5OjJhXrLrZbow1nJNpaCdHuEQaY7FJYZqeFqP3HfKFhK6wLGAGIIATTQ6T
         rkXJ8UtGX4E7aStFJGtYX3tP/fvjNHscgbqjNKBJDdjgUYss3OeN98PZYidO9x6JCqBx
         Q5eK9pn8iuz8csTR5h601wZTxQqcnBg+Zh0RsJYtqZhERw0oipRKXqvNIbQpAIeVRes4
         ZH/P7mznoFMJr5qA2BQWrqIhbfLrFMCPTMohEophk3gtvKAIPacS9gfWFOBe7WhEfV6Y
         b9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770184016; x=1770788816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pw6pgiUBqTssrPGSNsLlGv5r8wuOBZBhuul/MWgVYX4=;
        b=c6lK5nO01C3RinNbYmR25qfysgeGSRwkoxnlF12oYYv/YVUJTeCuFzSLRVJKo7pEul
         cbzzv3bbwW1+sWEXwdl5X2X7FTOX/dJAgzGgNygSR/ie+bluM5SJkuEbstX2J5lk7itX
         EriXkfNubWbPq/O5i5/qedhQnx65TE56lJYe/0rtCWSDZAGtW24pO4EkR6Cv3o4Kjoc/
         PKTJbYhGvLRiIvM4Ge8FVSsJHA8FTFEMO678BxseuTOfcj70eOmjIiYs2462OKTUftqY
         0DRXCbw1uo+vHrWo6tx+WLT4aIjZUQk3kUuE0OS8QT6mTrNgmO0vnwrXtWG/YlJ3VYvQ
         hpSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDdlrsTIxk/5NgeOr+p6K3eG8hf0E+zJvjH32a+YqrMFUR8FdMrQVKhzKCYFPIHiHLbWQC+mePG30Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzE4Yk0Gdgv//RWOGiamj4TAWJn3RrxwV5B0id05wTOragf1GiW
	0Uk5Y4puvpXKNA2CnFWy2Ldsr0RXVpNXfs63b3BwaRZYBJX6z6jt32DXWxxUngKTnOpJgt/7lTO
	M94AcqmX4W8Najmm/1WqddqfDnTftrD8PqjAWRM0d2J70z5nQBTRMKz3hF+MKdA4P
X-Gm-Gg: AZuq6aJAE4i5RBf8kVUyiDsmUpSKYgDkrSeAZbP4n/EHh1oqql2Avjn0mYI7MEfeqKe
	3nx5TIcBQhCIKRKv1fiJLgDayWAStH/AcrpL7y4fovQ0b6zLrbyobepeoPFxaeMcQiRxn8j++13
	gb1wPcmLrNUAGul+k/MzNlAw8C7gkWjU/r6lSlRS922Lk371mRpI8wq3vSEjNFPusbUxU8FrS6x
	6yvVTRVVVc3Xj3aD1dYP5B0xq8KzOC7hoEvSOoR9jBzRlskB+LMapnviW3nxwmpDlqXSKR3uQjK
	GEe27ZCAROXDjYLGKXk1/5FaHLYT7/Who+K52wW3pLhxmAkAC9uBxTnUMAoXLIdNJTwYN6lERth
	fnBsO3KRNXm0S60dWSHMoBgYMKzeqkVc3FoPEbusfKw==
X-Received: by 2002:a05:6a00:a04:b0:81d:d666:72e1 with SMTP id d2e1a72fcca58-8241c1973ddmr1840197b3a.10.1770184015619;
        Tue, 03 Feb 2026 21:46:55 -0800 (PST)
X-Received: by 2002:a05:6a00:a04:b0:81d:d666:72e1 with SMTP id d2e1a72fcca58-8241c1973ddmr1840179b3a.10.1770184015030;
        Tue, 03 Feb 2026 21:46:55 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d163b8asm1250196b3a.1.2026.02.03.21.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:46:54 -0800 (PST)
Message-ID: <fcb56bf2-aa0a-4812-8ef4-b92ad7478096@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 11:16:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
 <ce78b376-b581-4053-aa23-4f41ea0d140a@oss.qualcomm.com>
 <e887a7b5-d2ed-435a-9961-5a64b0494351@oss.qualcomm.com>
 <638daf43-d80c-493b-a88d-18bef447c02e@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <638daf43-d80c-493b-a88d-18bef447c02e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA0MCBTYWx0ZWRfX5qdv1Up+Axjv
 xT/oEw+TrFYMrXTtiKJX5GDj/e8sr4U64MFykh9XBoMsqkhxb44Krc744sPPJwtOKv23v2FS7yv
 Mydk/7eHk5vvVDDIsZrgYH/QsvhG6/v2lRCjnkD9Ylsp1i/DfOX+co3Ec98SEYa/+0rMu3IXsoI
 8hVxYy83zT7TAXblbGPwNHB1/+cNwaSewuvqw7Ma6hBPiOKytwuclcLJL4fJwlpw5YonDiUDx+z
 fwUbVGJJGT5+5UpXCWi9FxLhLMudcNuD21wBsj1HuvoIYAjV+59YqR93yTl0EPJXTT4ZZIfkgUA
 8hiGyAsAMeVqFUjsh0VoJ8x5UVuO01yOSfkRXFV/JdnKlMPfd6wxm3W9ahxkJTDcPMAgJS/TlNl
 fGJsJICWH8flb+tezBzmrg9WcsDTy/Izs/GIqrixvzovkq0G+xspCb7TnZHQFPlZn3atHubJRwg
 LwysC+78UPsAP1KeQdQ==
X-Authority-Analysis: v=2.4 cv=CMknnBrD c=1 sm=1 tr=0 ts=6982dd50 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=A8oE7KmpfnhtQquP3SoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: aGatf7WaiwuWMRJIItUGULxmzj0dxCtx
X-Proofpoint-GUID: aGatf7WaiwuWMRJIItUGULxmzj0dxCtx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040040
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262511-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 58ADFE215B
X-Rspamd-Action: no action

Hi Konrad,

On 2/3/2026 4:43 PM, Konrad Dybcio wrote:
> On 1/30/26 5:48 PM, Praveen Talari wrote:
>> Hi Konrad,
>>
>> On 1/30/2026 5:35 PM, Konrad Dybcio wrote:
>>> On 1/12/26 11:47 AM, Praveen Talari wrote:
>>>> To manage GENI serial engine resources during runtime power management,
>>>> drivers currently need to call functions for ICC, clock, and
>>>> SE resource operations in both suspend and resume paths, resulting in
>>>> code duplication across drivers.
>>>>
>>>> The new geni_se_resources_activate() and geni_se_resources_deactivate()
>>>> helper APIs addresses this issue by providing a streamlined method to
>>>> enable or disable all resources based, thereby eliminating redundancy
>>>> across drivers.
>>>>
>>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>>> ---
>>>> v1->v2:
>>>> Bjorn:
>>>> - Remove geni_se_resources_state() API.
>>>> - Used geni_se_resources_activate() and geni_se_resources_deactivate()
>>>>     to enable/disable resources.
>>>> ---
>>>>    drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
>>>>    1 file changed, 5 insertions(+), 23 deletions(-)
>>>>
>>>> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
>>>> index a4b13022e508..b0a18e3d57d9 100644
>>>> --- a/drivers/i2c/busses/i2c-qcom-geni.c
>>>> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
>>>> @@ -1160,18 +1160,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
>>>>        struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>>>>          disable_irq(gi2c->irq);
>>>> -    ret = geni_se_resources_off(&gi2c->se);
>>>> +
>>>> +    ret = geni_se_resources_deactivate(&gi2c->se);
>>>
>>> This calls dev_pm_opp_set_rate(se->dev, 0), dropping the performance state
>>
>> This does not apply to I²C, since I²C lacks an OPP table, so the callback is only relevant for SPI and UART. All the refactored APIs were added as generic interfaces shared across I²C, SPI, and UART.
> 
> Does the i2c mode not require any ratesetting on the SE clock, or

Yes, it is not needed since we are updating clock related values in SE 
register like I2C_SCL_COUNTERS.

Thanks,
Praveen Talari

> any >= LOWSVS RPMh vote on the power rail?
> 
> Konrad


