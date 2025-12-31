Return-Path: <devicetree+bounces-250827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D40ECEC228
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 16:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6490F30071A8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 15:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467D027FB1E;
	Wed, 31 Dec 2025 15:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EAOPOTct";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VosMBU5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1D5262FFC
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 15:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767193454; cv=none; b=nZcQPtgaZcLkOuvnr1UID7JdsJai7bq4OoIrcYwtHOiJyl3bvexHVJt4hFwe75GNMxFhzhnK5+JhmcOj9XD4A+tzWHsL6tb3qLkGIWazZSJaar0mwcQ+F1tb9CRYCowc08G5SUmIT3RnQKZsPHS6T9xRQa5RwepV+kLexcQzKNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767193454; c=relaxed/simple;
	bh=JZRtFiP89TAPkvU8wmTIGomtzkCcSAfExo2HTo/boCs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=thg5FNAtN6g3uqPZr+nCupGfjZOe1ZmAhlVPDll3hCBPQMVSBJ+hkAsi7BZG9xHmSuQQsa/0M1K30O3VlVb83QhA05e+dzRBgMfMCqLiy4E5LhK5ILR1eF1nlqrblBfljLcTmMg3UxXSSXeA61wLUHZRyiQjf2OM3HrotsRm95I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EAOPOTct; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VosMBU5l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVEXciq2723181
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 15:04:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JZRtFiP89TAPkvU8wmTIGomtzkCcSAfExo2HTo/boCs=; b=EAOPOTctdPz7f4gD
	uzKPZdaB1B7kBNOGKCGCGk/l0zPiIiOeKV1W/BFwopiBeV9QBzQseAP55tVda5TJ
	kX2NrfwaWGjRvDrzxShh/V8fc7Y5s0FA2URouPcp7Q1W189jHekPQgvLEhUpveco
	4FXTrHsJLcQDWBA+A+QFXlYYwJ4L3tLHO93XORvEf6fu8u4ntrP2oe1Ts0RL8tzI
	iF6NXkpw6V06II9Rm3ZmuQoGppfPPrOYxh42qk+ljEUVR76C7ulkmYpubAtpw65w
	pI3+2/1I845dcCB7jKs9hqe+04gheYmIIaEmt++PbukJfRupMAgAJsN5fHoVnvkG
	4gLtyw==
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com [74.125.224.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0vdmhyn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 15:04:11 +0000 (GMT)
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-640cc3f5e75so3886311d50.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 07:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767193451; x=1767798251; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JZRtFiP89TAPkvU8wmTIGomtzkCcSAfExo2HTo/boCs=;
        b=VosMBU5lU4RjdY9QmUogN36lrnZehhBq043SJ+4//HE9pU46MBi+MkSvtHMosT5r+0
         MKFWEN9e9oeCBOzaEayrSndgsqzDmI8OS90N/I+gKkrgBxgSxrOJ/ANkODvwAeHrIMtV
         VkuHbqp137yuVSj5Iu0ePdDAQzFWYoThTLSXEYfvvue0oaHtq7+D0/HeeqqKLr8oiayz
         4GpOFcYx6PbKdHeKtow5uZ+0g9ejn+So3/Yud13hziFV7LktBpqceUjx+F68bjSCodOO
         Zd7nuUFFt1lQb5uCCnFu4ph4tl6ZP5AmPcL0qWKszljnhUa0mmA1YiUOfvOTWHsV4VyQ
         3xiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767193451; x=1767798251;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZRtFiP89TAPkvU8wmTIGomtzkCcSAfExo2HTo/boCs=;
        b=DQDSDJ/999ybRxF+GggDF1iPxNZ1bxZCgGqpGvBQUIyTqjQjE+bCznVPA05cVIbU9e
         7v/LgQkgi3IVLc+509mLsiLPtHoQSoSfzuphNSKpFTr35qMm6eJUG5hF1uvWTDvayL6f
         Oyr0P1teeMIjG4adhm5pHrQBNeXusKoDnkyAT2gP970fbrgZYjmQ8UQdawBiv+0Rfedn
         VCc+Y/xolkYfi+vZ7NatssLHpzMxaEgI2qOHW741yduvcqkSb/JNIYJrMOzXas/e8/vZ
         KNPOcbbSooztiinyOrP/jvtUKwggpBmxF4aSl85yliXD32pvsQzvZVlrW3OF0VqU5O8/
         mlpw==
X-Forwarded-Encrypted: i=1; AJvYcCXiF+ca/QYtS0YoYGVJB/zg8++7+AEO33BXfGjwN9cXbEuO1eRzVitS9doihDNKv+pR7diRPs0xCyWU@vger.kernel.org
X-Gm-Message-State: AOJu0YzenEM1+/l52fP+XIteoSk1814gHVd4luZQAtuKL6EArVegXWrq
	NzhtiYdEmu7JrCaho5+xmMvCO15bhInq3WIP/7A4Y0lsaSEQVNVhpaEJ6ROqRadNQmTyr+PPDrf
	Pkwezhya0QM+RsZI/OCyeUERdjHggbzCkHcDVfxoiO1TSHBxs+peoIg8e2j6U0JYk
X-Gm-Gg: AY/fxX4PLxcbKA/ymhHDhg9v7aaS0uspsQntKO10xLAVEMnR/0pD78bXdrd3qtjlSa2
	eBjjSsEYTS7aW1KBxzatLPqWn2pCQvm11I2m6/8kjw6q74MiGL1GuIeX5daovM4DmMicrnn/mLz
	DhKZXYqEkpiTSefd8ZNMRUGlbKJj9O5ejtRqY77Zm38yTNym8E+vtfU2UN/hLyIuUM3IkTBqHw6
	Bd8vkFm2eHf11e9zC0DforTIDP6AxIQSnmE2GAYtowiRwzXZdIKuMSMBnHhPHdE+e0ybkYf1ca2
	zjAyR8uShbG+z3Ysp8y75PpeJuKfOYEGBMbrG4esfzu4vVnOjRGrF/6TrSgE9MNpUKUaUeFz4Fm
	ooJz1AlTvSRx59+ga/ciBQprbJzU79T9o297qySP6x1NDS+JIPlZrmVReUPIO9vimMg==
X-Received: by 2002:a05:690c:fd2:b0:78f:cbac:51f4 with SMTP id 00721157ae682-78fcbac5d51mr228668937b3.2.1767193451112;
        Wed, 31 Dec 2025 07:04:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZD0JhovC3u04T9aejPVSNFPquL2HuV0SmdMjnlpa/Rn6qMkTE3WoEauL2oZuBHYl8loIfEg==
X-Received: by 2002:a05:690c:fd2:b0:78f:cbac:51f4 with SMTP id 00721157ae682-78fcbac5d51mr228668537b3.2.1767193450561;
        Wed, 31 Dec 2025 07:04:10 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5bdf3sm3998770966b.12.2025.12.31.07.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 07:04:10 -0800 (PST)
Message-ID: <482fcafe-240f-458b-af56-eed1b19ad19e@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 16:04:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/9] remoteproc: qcom_q6v5_mss: Add MDM9607
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251231-mss-v2-0-ae5eafd835c4@mainlining.org>
 <20251231-mss-v2-3-ae5eafd835c4@mainlining.org>
 <e4e94f2c-98f3-414f-bad4-d23f7cce8047@oss.qualcomm.com>
 <12650361d3a0e0444e9e10e26c5d5597@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <12650361d3a0e0444e9e10e26c5d5597@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dfONHHXe c=1 sm=1 tr=0 ts=69553b6b cx=c_pps
 a=S/uc88zpIJVNbziUnJ6G4Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=j8Cu_9a8AAAA:8
 a=8VC0GeoxRXGp83daypMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=nd2WpGr1bMy9NW-iytEl:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=A2jcf3dkIZPIRbEE90CI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEzMiBTYWx0ZWRfX7FKMRbc4f/U9
 3coHZ+x0iw7XtNE3EzqiStdduEHBFrqqgiPEBxGGVexRRk0NuhzC9geQfGdgje1F32uyx32pPsW
 20ZRoGlg/zgN7qCy/lrj6QEZK+m6aLvTVxouIXdFhAD1solT815rvE5nMVSdDfyLMDhTG6d+3ua
 je6ulMh29fmBFq3/Gf7jJomgsqeVIyu5qQxb9ro8DqzWsb/GJHIL6d7MAbU/wGh9z2S9yqpvvlB
 L8fIQANpw1UAoRTgGIuVkAvmd+l2Dgii+lRic6ZW8CQYwRSEIjyyKiU4DuPkS8rwyrYMgxIJhSW
 O7Kr52XfCqoU/YNz3b9HhoLB6UyRJS2CmO8Z0X9w9TjA28ZqhMlxRBSAfBLtoSgroHtpkBx3zd4
 6lK1mbwXAIYiOh6hg3pVOCuLbvZssyVA/5mXBpBm9rEkkMYWYTk/NOyzqerjF9TpdQxxD47ZXui
 fxtLBee1KGUrY5XDWlQ==
X-Proofpoint-GUID: aWGrpTKGVLfbQ8A6bcfxs1atEEdFQWNl
X-Proofpoint-ORIG-GUID: aWGrpTKGVLfbQ8A6bcfxs1atEEdFQWNl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_04,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310132

On 12/31/25 3:50 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-12-31 13:27, Konrad Dybcio wrote:
>> On 12/31/25 3:29 AM, Barnabás Czémán wrote:
>>> From: Stephan Gerhold <stephan@gerhold.net>
>>>
>>> Add support for MDM9607 MSS it have different ACC settings
>>> and it needs mitigation for inrush current issue.
>>>
>>> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
>>> [Reword the commit, add has_ext_bhs_reg]
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---
>>
>> [...]
>>
>>>              val = readl(qproc->reg_base + mem_pwr_ctl);
>>> -            for (; i >= 0; i--) {
>>> +            for (; i >= reverse; i--) {
>>>                  val |= BIT(i);
>>>                  writel(val, qproc->reg_base + mem_pwr_ctl);
>>>                  /*
>>> @@ -833,6 +847,12 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>                  val |= readl(qproc->reg_base + mem_pwr_ctl);
>>>                  udelay(1);
>>>              }
>>> +            for (i = 0; i < reverse; i++) {
>>> +                val |= BIT(i);
>>> +                writel(val, qproc->reg_base + mem_pwr_ctl);
>>> +                val |= readl(qproc->reg_base + mem_pwr_ctl);
>>
>> Downstream doesn't do val |= readl() in the inrush-current-mitigation
>> case
> I have checked you are right, thanks. 1_8 reset sequence have it but 1_8_inrush_current have not.
> As i understanding from downstream it should be handled in both for loop, i could add an if for
> handle this or implement 1_8_inrush_current reset separately. Which one would be the preferred?

Let's do the latter - there's enough nested 'if's in here already

Konrad

