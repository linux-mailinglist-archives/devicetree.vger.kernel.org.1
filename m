Return-Path: <devicetree+bounces-263880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMrtGLWaiWkv/gQAu9opvQ
	(envelope-from <devicetree+bounces-263880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:28:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BFC10CF3E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 069F53001FB9
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4273B2FB630;
	Mon,  9 Feb 2026 08:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kd+cXXlN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MeAhUZ6m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAF4309DCB
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770625711; cv=none; b=TMOm9AZtVOA5l0QT+XAlmLB8mxi0VG8Hoa/DfSaYs7xmHA+FNRvBCBRw0fnfKwtFmgSYKXRRxHk7wEhpa7CfDGzDip3vB4obdZezExQLgQyhkoYhvNuCEfWO8fp47JUdNfJwgcyRET4WGoKS55U4R1UB1xjHnDFBoBhcxjCHx2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770625711; c=relaxed/simple;
	bh=BkI3l0nh0UiTnME17fihmo4Jvy1q/3Qwyo8KCCWvClw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tDIf16TbJzFcAQG9+txFKAcFtyExSg+nC11KFyz2Ec7cWJuvcmBUb8J1/D1qUefZ2ML/RoBKpl9g1t1XADsC85y7tYNox4nZAIT0iOwT4b6JVxoppwAVSJxSyD3ObnuoXWtBIendMohRmnZTsnmoo9mLsk92ThOY2b1lFfeTt6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kd+cXXlN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MeAhUZ6m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6198DN5o3140010
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 08:28:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iSTng/cs6c95cVizWIkJzmj41GBBd9IVw6pXtCrOD+g=; b=Kd+cXXlNergRcSUg
	wUsdANhXGSo/9T7B3C8xYrfqTxPja8S857kzHUzGH3mnhijJP+wIP0YpL8pgHsb5
	Ze1ybcDprMEIp2E11mQt0rcewDSz3BLbYrYWjEl0ZCxZMkkYoQFzCtKP7i2zB8v3
	YOuX2eEuv/BSdxyYqCNe+AklkrIm4fXy9em3ranB9cNKh5J3FDa+12BkCwsgPec/
	Tdkk8VBC9wzp0K2Q5zRpBvIQ4lJxraGBVVoXky3JN177S7KTKCoZ5fTH8tf+v9xk
	zAsoTnP+CgqazS98roehjqhBQBoheebA9XOrJMQJFcsHjS17GzCMnBmgGo/A6C8e
	z83XYw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c6g65apb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:28:29 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8966be97747so7319606d6.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770625709; x=1771230509; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iSTng/cs6c95cVizWIkJzmj41GBBd9IVw6pXtCrOD+g=;
        b=MeAhUZ6mJST01YQrrdHBmlWBs9XRCiMqPlGIigjAh/EWYJzGF+9v84j+mDDTT4gjFA
         g5GldI5jl9NGm37RVSXUYE38REnhCRA4oMXQ/PZqN3mG4gHmNXxoxdx2cOFIV0+IGHNN
         5yzQejEYeDp7BrVG6L7dD9CHu3rbmVkPS1XNWov+lSaS7yPDgLwn9DX0VMijdjhUlFp3
         wbN4Pj5nM8W41HXgedF9Qd+8sKWPgecKE3/DWJT2y0VbBub9NWn07kr+Teyxntm1grJZ
         3TlczLcOXdr5BW+FmB9qo18gNWz9fzBC5gAJG2AnM94gSKfrVhYmAIxEhV8hscrYqmch
         EkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770625709; x=1771230509;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iSTng/cs6c95cVizWIkJzmj41GBBd9IVw6pXtCrOD+g=;
        b=BlNXPWxBAaykmNM9JO7L+rtugEojAhDzEQ7gr9DnGPodx9XsKA9GNwl9JuquIaQnpI
         H6QA8nqutsvofLPiY/nJXcFsi4PDyG84BfK6mZjIjbmJxtxe5mXpyvdqkfebzh54U6FG
         kqozGsR0Xv97QNg2KE/0ZE4NmVa3Y/CrXLT18n5F8ICi5dxsyCEUoT3TknZyREw89IMv
         WqzxPlzAL5p7QDnqR/H6nPqzZcrn/jNsf6+rorgdB0HO5wpipLziEupqEyG7b/IrQUJT
         zfbT2GyWcPqPYptGoisSC7hB3NES7Q/jKiMFybSK41+Z7s+0QZ+0mBCORoXePc02kJ9A
         9AyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMa9dCA/XYc4zlr7uzmFUHVFUSZM7u7AiPheadrYUXwSzuY/DOHA9zUxqQnJdjMGOPmTaOV+A3PyRR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7xeIaYbkSPLswPSuMe+jmK8AJBgbIlNueO3tGnyJCwHwhj4c3
	QWycuXo/xC2LO0i5VanTbcgt8YDQNXCdeHMOrpYgNcKe1JvZlqEXcguadyjQseShvrwFPkmAA0t
	dBNGUUoldb1RUfwZ6E0Yc/B0ZD5PBsrGd88gygNCYmkFEnGkSISuEHAwmJ/dEIxDY
X-Gm-Gg: AZuq6aJLg+20tAvMbi5PiQJIMgWxcAxekgF/g/vkJCUkAwstYRMfBreADUnSopbtTAl
	DJ/zQE5KkbT6JBTotOYG89dNI0UvoPw/8h7H4eikO2tzJz6Y3dwEu/1TAuM31RqFmqdIBFRE1Hp
	IIyav6s9vwp4FR5+wc3s/uoHVyMEEQwNPEmRVKiccMWTfosnUF3RrOrmFajmmGOE07WhfnS41sz
	dopx47u4guKj2GPfBCRN21/EMieYoRG9po3QwGQ7+BAaf05+GXGlJjgqMrSlsublt6NAPIzNFUO
	6y/ZnZ7lBmaAf269TRRVIrjHKNg0/zT9Hovxn9ozIpaRKKo0k563tCMxsayFHS+VJd2uESDuqol
	LmDuE4PDFZ0Tx90VQoFDdAgHK6Ksk4PfZWK1NK1jYLv32ZmGQpX/ok7jlxDWdud5f+zc=
X-Received: by 2002:a05:620a:2953:b0:8b9:fa81:527b with SMTP id af79cd13be357-8caef6e95fbmr1084476485a.5.1770625709435;
        Mon, 09 Feb 2026 00:28:29 -0800 (PST)
X-Received: by 2002:a05:620a:2953:b0:8b9:fa81:527b with SMTP id af79cd13be357-8caef6e95fbmr1084473485a.5.1770625708900;
        Mon, 09 Feb 2026 00:28:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacf1540sm356073666b.56.2026.02.09.00.28.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:28:28 -0800 (PST)
Message-ID: <cdc9fb39-3966-46eb-9182-fcb2c3c56dde@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 09:28:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add
 Senary MI2S port
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org,
        krzk+dt@kernel.org, cnor+dt@kernel.org, srini@kernel.org,
        perex@perex.cz, tiwai@suse.com, alexey.klimov@linaro.org,
        mohammad.rafi.shaik@oss.qualcomm.com, quic_wcheng@quicinc.com,
        johan@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260205171411.34908-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260205171411.34908-7-srinivas.kandagatla@oss.qualcomm.com>
 <jloqgua3e2lub2daplqlie6fhrsxntwepfwoa5csxdababstib@lp7b2uy3jqos>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <jloqgua3e2lub2daplqlie6fhrsxntwepfwoa5csxdababstib@lp7b2uy3jqos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GqNPO01C c=1 sm=1 tr=0 ts=69899aae cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=iexO-N7_dcyycZ0WZvUA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: hyzaV8fYE7EdqqQvxjHm7K4ZLnV8NoWy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA2OSBTYWx0ZWRfX+Vzy464dNZdy
 gVUeqlBNpLxxqelHfuY4iymDxWX0PVlBTwHOLxTcGX93VwEycLwlV0grz/gDDswJTd0ipypspNQ
 BmTv2uSut4SriTzQ0aYuXjZEafrmfPAjUk54mzRr0IG61byvwYPwFUdTtKPDEmZ8NaKEVGAWi82
 3uduDdZYLUe80F3I9Djfm4IZQ93iB80B0e4EkswnvD6Nh8iETmdbf9xYm8OqlWXzUd3+jIfnp/E
 ZJVu6w0uy0oxRRzXiw5G73dg5QB29Dd8/vq2uQzAD2fY/OZeSBly9oMh211cXyZ8pslZ4OD5U7l
 zRcDYPTgvaaueZkIJv8AKCXyvX4Dv/38MO3s8OcgfCtInDvTp0fVmIIh++Ri5yPgDVnNJ8PbkmC
 4b8Mrri5eF/ZuQgrrOtZlmbUuX5dpJgHvO8hW5eAY4JpRiqm3HDgadiz0tagYV7RPMVb3I60JMZ
 mugxdp0IqNlNPECdwQw==
X-Proofpoint-GUID: hyzaV8fYE7EdqqQvxjHm7K4ZLnV8NoWy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,linaro.org,oss.qualcomm.com,quicinc.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263880-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B2BFC10CF3E
X-Rspamd-Action: no action

On 2/7/26 10:19 AM, Dmitry Baryshkov wrote:
> On Thu, Feb 05, 2026 at 12:14:07PM -0500, Srinivas Kandagatla wrote:
>> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>
>> Qualcomm platforms support the Senary MI2S interface for audio playback
> 
> What is Senary MI2S?

primary
secondary
tertiary
quaternary
quinary
senary

Konrad

