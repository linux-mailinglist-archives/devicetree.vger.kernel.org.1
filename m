Return-Path: <devicetree+bounces-266100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HzFJwFZlGkXDAIAu9opvQ
	(envelope-from <devicetree+bounces-266100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:03:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E49C14BBB3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:03:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 021E23043D28
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867A23370E4;
	Tue, 17 Feb 2026 12:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hvfclo9b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h4QELh4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423B6337B97
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329733; cv=none; b=ZpIha1Z7v592FveUpBRomr2Xm8b/hH+Zqan5cq0Gt+u3CmogRTU8V+vWTeTD30y+J0FPtNzAbBV6T8exzqpwIHfupddVcGNTKfx3viKmZuoxeC+DNu16vYYBZCxnXloUqpBlkDdzas4wVaxF+HRceICnS7lsHoCg2jMienDDkKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329733; c=relaxed/simple;
	bh=5716HxySxYgesPMYObLsvfNKf2FB8Di/1BrEhT/qcHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P5Bgk7xWdiqAI04OwhmjDeHe+UWW1/kwi5BHjt2BymR1eLSHBsSOLZCQwbrN6+EuDX490Dm7KKsXLWjxsKI57pp6Sy23hfPtZs+WV/0WiVgDBfiUC6ARNhU97PQFOZN8toeQzJ/yhKNmcFfOlsO7wv52HSVk1W55k86lXeDL8AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hvfclo9b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h4QELh4e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HBeu9L911039
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:02:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dqPOiVgA/LPAUkGW1EX1UemeyO4lv7fTBluprRdgR4g=; b=Hvfclo9bAahDk7q5
	MpDFvxK7wn0DwQxQ3tM4Gpx1Ml5AakmvHI4eVntH8g2+edkM5FmvWo7A5yZpt70e
	E0O8M30UZerMNLLNTO91REy4Qcjlue9RcMTwCYv4ysToXRvxfsdLGt4S1rjNikth
	UVMTrSCSpkuESAgRPmFAL+HkMeGbJ9z+XGCJ7cVP6hKnPPklMI9pXfnQCpsKHiwx
	se35bLl98mpIPDiqaq0JhMsXy0jxOLK8spkTBMHPapLHGzZOReMUZ7gUGg+i/Pin
	w1jXoms5bFgyRyvjNYS7hmAN37/ABzOh3WI5rvbUmkzBU1hCjuIhiy94kpgz7S79
	julpxA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6a9t893-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:02:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5034247408dso38162291cf.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329730; x=1771934530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dqPOiVgA/LPAUkGW1EX1UemeyO4lv7fTBluprRdgR4g=;
        b=h4QELh4eQHSRk7Isfu8UJF1OkCky9IDJio0fYDKHPSAlI9XeR9fe2ttfKfa0U9phZf
         hACdbcLP63U5auTlsV2ddv2lq8yKgcemtNJ8cfYqpTgau1dWj/hfO7/BHoUi3RZinsG0
         kFrrprzIw0FAhNpjnk5AGciRjW0OFDOzPSJie/uCjXHuKdGWi2cLAzlvc5e6tvaSwlNy
         H5dqTTiiOu4fRAowcypGy4iUgLh1j078LeqTB631COvilXA+bvgPgKm+DTK41Yle2TmW
         tEqHYgHap83TMlmnv6SdLYpYCmKLUCu/BrsfuhzXN7JCuzHDIuPUfIBMkmOCg033zmx0
         ahpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329730; x=1771934530;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dqPOiVgA/LPAUkGW1EX1UemeyO4lv7fTBluprRdgR4g=;
        b=ktg2V7j8A/S4mYyTTZvKcqqW46cpAzZ0zG7smwtWcNLa4ViH0EW2K+wV18rmUoRyup
         TC0W1SqtnxlMCiFdQ5tEReQXXwOkt4QMQ+yX9QoAgQFXhcd/+3Fz2OC3Z/QwZc9Jet7D
         el3aLvrv86obujczzei5EX7E2jLQ86KaRkiNWq71oXKH+w68EhksvImLPp3pzTTZVUgw
         uUWdytjlDTTDqpT9GBa+lsqOlu/Hfv2ULygznXQgWBVC/i6Eq/+b8q+1wRz1WegG2pK0
         gGkR2l7nEXOBCz60m/WYsIuan0pFwrKvIVoQlu1AZQwBFARzWYSHTg/yomZz9EM36alG
         c5Sg==
X-Forwarded-Encrypted: i=1; AJvYcCUQmsGBzvCJmcfG4KjPmZfbw921yUnJID1KU2gZAUgXMetUW9FzjXzNc/a7+XtMxJp3WX/TUAAH+TfQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhe5JSrj8MNFpsYpQdvzTpnqnWg373dZgUAzvyXtMSp7C2zuDb
	PTKOoQ0qIWHMPatTKvZkEM5+IvU6W1k//SKnoPLu/gA2l1+iAwtBy5Ab2DVjNBD069x5tJK7S/O
	Ih5u/IFg27u1zTKgWRdT4kpDTKeULamXI9FzfSytBxrMtjUeWZwxUqmus03L7qoIz
X-Gm-Gg: AZuq6aLOLhllc5LIX7HTflBPzqqGd7Ls29KV9musLy/jLd3IL3JM7Lg8NTobXEW9YAp
	ViKwUCAsLCeuO1oFYhwrJqk54hjy7GC7P6NSVDL3Xfm93cDCQY+P6fAIA9JcWF5l20sW614+AWH
	/moKc3YUyCw1k8XpWeOJ3tg0U4pqEBGDKili76OIZ6NSK/Vvs2WN9LShlfDFhWTRNh2/LByB1K0
	fcOiuQN0WTtaALle0JV7RFysdWFjVl/A7XwLNlqkv9DzsfB1gxFrfHHl3PEBZuEPFW8fXkgJs1m
	vKgSaMQL7XuOr/jaZ9BBP16vf9TrQjkxE3r8ZeE4moE4jNHIcFe2IW/zjtQKhn6kfa/iM3kKN2g
	eGf7ZCe5AE9hQmpqAtqfY/KGLVlAccXmSRpGQ6jWwpRTdGJjGavSv8CWyzxcP5BRY0BoS9wFimO
	jTENo=
X-Received: by 2002:ac8:5f0a:0:b0:501:4504:6f80 with SMTP id d75a77b69052e-506a6a4d9d9mr136978361cf.9.1771329730588;
        Tue, 17 Feb 2026 04:02:10 -0800 (PST)
X-Received: by 2002:ac8:5f0a:0:b0:501:4504:6f80 with SMTP id d75a77b69052e-506a6a4d9d9mr136978111cf.9.1771329730143;
        Tue, 17 Feb 2026 04:02:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e38f5sm2332241a12.19.2026.02.17.04.02.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 04:02:08 -0800 (PST)
Message-ID: <05340972-2013-45b6-801c-7e52fe48cef0@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:02:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/13] soc: qcom: geni-se: Add resources
 activation/deactivation helpers
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-6-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206174112.4149893-6-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OSBTYWx0ZWRfX6FolEGaNYjpb
 SERag53WMLdx81EVp6az0XRvypF53Yk+YI7phTfFOwtzN8d70HZrH5iWdKb2iuUv8/UZpWTfa1N
 Qpb/V16GNARiTOcok0L0k10soqG7DRoKepnFInPm+sPEF42J1t++sj9IobUiLzYZ75vsWphwr9e
 XvyAo8n3Lvdr9Bb0drLi0L1Odmw31jg769ExBwQXnEV6Zssg7vDIKE81YubCWRwOI0siYQC/7Yd
 W2wtyI/4oSqAVaeFrij1tA0ooqlPorPhLFKRSXoEUhqAGj/P5ASbQQrFVrnI0bvwIYSK78Iw9XK
 QK/XX9wwe1yw0KFLBRinGwMIu5lvM/aMDopgXUiZJ4IUpENDB89xjnVOVnByR1u3O09CpFQiuCj
 VmMiHa3YFBXwpTFrSMpc082LtAwBBYo5GIvTlbEyLRDZTlw3a2o7CkmH0GyGT051E49FZo/eclG
 qNDbSb0EkZKXhAKtN+Q==
X-Proofpoint-GUID: arbe80ligdK9XvU_nnivwNBCe92fGL-p
X-Proofpoint-ORIG-GUID: arbe80ligdK9XvU_nnivwNBCe92fGL-p
X-Authority-Analysis: v=2.4 cv=TPNIilla c=1 sm=1 tr=0 ts=699458c3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=W3I9JGv7J1k6QNzkgEYA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266100-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3E49C14BBB3
X-Rspamd-Action: no action

On 2/6/26 6:41 PM, Praveen Talari wrote:
> The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
> activation/deactivation sequences independently, leading to code
> duplication.
> 
> Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
> power on/off resources.The activate function enables ICC, clocks, and TLMM
> whereas the deactivate function disables resources in reverse order
> including OPP rate reset, clocks, ICC and TLMM.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---
> v4 -> v5
> Konrad
> - updated return value as 0 for geni_se_resources_activate().

I would really like you to include that kerneldoc bit I mentioned it

https://lore.kernel.org/linux-arm-msm/ff9a2aa3-1b2b-4001-82ce-198c61a4b637@oss.qualcomm.com/

Konrad

