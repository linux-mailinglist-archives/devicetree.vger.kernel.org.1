Return-Path: <devicetree+bounces-257567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMB4NTrdb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:53:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1384AD2A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C22809280C6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4A8466B44;
	Tue, 20 Jan 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QyEsyoJo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WGlJyQ1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6040F3D7D60
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935513; cv=none; b=SnFNivADiro0dBr8A6Zt6Zmk0gbZ+vJZyZlsKcZmaz0g0pa9/sAM/2l+05igEoRbODhHljJdiB7b18TNGxXcOwRvzftEiA7UtXwZFQGE8fUTVhKNZhhSDjqkS1wYZwb0TbPhyrfNFDoTBahSNQ1uHU9QaSb6NtJathdDuA1ffUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935513; c=relaxed/simple;
	bh=tuJI+bZdE38xqpRoGqY5Ek5ezzOOPhAo/pIML6D72VY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bPunp8uMYYnpHoEKZiLKS8grmhZrL1ylMB73jMaSpyltn1TuEVGESYTUDZaUtFZAmKDpnKgGvcXLF9P/lStRr55htVrXJ+FRhKwHpyiFoqQBu4MNf00sUeDW9RVKyYf77umc4TDTo9Wct8t65FtGXvJJ8rgOolu1M8cXrhzQMV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QyEsyoJo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WGlJyQ1Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KGmc9V3257527
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:58:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Pt8ZH2d9C50JLSWpW2IpAcAr0/x53HA+0v+ovrnVR4=; b=QyEsyoJon21Ij7Tj
	XDGmKg0KMsOyZeOm1CpYxAp6A1hhvIvy+qbSDqMLnVNupYVXtK+3ro8NU2m0PN6p
	N3eKcpKIc62Jywmlpzaqf/XdeHhQgialP7s/HkeecjS/A32m+v2KFLBuDD8AuBo/
	MIi9+DAIWRD6W4oFhkBXR/RKO74ZXl09M256f8uK6D8u67qyFsMejKks/7CTCBa2
	Js2oskuJETx7b/VzsmyM/rWq6392mG6KvOJbJob5IC3AxEjg+rorOJVC0+LCApyk
	1h5H0RoMz7qwlSUeM6XPzudPs6epVxtHw5gO2Us/9GF7apDGdM9lWNbneL/RxSHs
	g57fqw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7svqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:58:29 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-12337114f3fso8549497c88.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768935509; x=1769540309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Pt8ZH2d9C50JLSWpW2IpAcAr0/x53HA+0v+ovrnVR4=;
        b=WGlJyQ1ZH7OXwuU19dn+7pUVxyyH6TGj9mP1EV8OGAc7RX1Z1xKnbvnjZP/LYudbyy
         PUuQmFTuoagqCykVzusFhUVWjHLF6iJZK5O0I58pj/C8g/eZb94qpXwEs1phZAp9npNR
         GjQomVeKsOd33Qc5AewV24OEPV2oCZ2dxDWWMIho6rziJrQGn28WcnXCPbPkSpt+atjK
         Lr9FexYa6zYUh5ysdf4cawCOJbPaBW4oWH1e1KAtKk3AfiP8jB0B+zpBwXsMKfcHjVfo
         KMmSRHjYwsjcr94lpAaCvd00WAfV2sSiDCNRnPfVXYEsB7LMPlH8Y/v1y26CGSHp+KA0
         UICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768935509; x=1769540309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Pt8ZH2d9C50JLSWpW2IpAcAr0/x53HA+0v+ovrnVR4=;
        b=bQc8mBpityZ4EPzXgUN+XjSSg91w14NLaePigTH9IFbzm2MS82OK6vz7FapyICVcfw
         82FJKTINAARPxkGYIzHrsytIsnanUxBN5nOKlB1RYeWXq+azGjroBPy3rMeXTASsOdEF
         q2f4kQqPrEECWJ5ryuZ8ksPqcna/6+/RW2yKu0ZSLIlbi2h7Sn15hr+7adL2fT8Bz/Di
         A3gevdAn60EUNEe5Nu9UsgpU8cDnfNs9VnhOY5JnjZL7/GC9rG+jVUPpNjvbGRzAf+HQ
         ZxZ94hKGR34GKRWsc5VESDGWL5NrRz2G2w0GGZUchvb981q0ViyVojAfXZBultsC1lXw
         pYMw==
X-Forwarded-Encrypted: i=1; AJvYcCUIG6WHL5BAsW6vMs9HlW8NLMtd9YykLb12LzDA20UqsOrlChKy+R5WVh6kch+pMlyy/SDvpqq/2Wqu@vger.kernel.org
X-Gm-Message-State: AOJu0YzeEfU+zF9Zca6COZKTwqttK7t/hMYph5H6iqYJHCU3Fsi63HQn
	HMaZWtiujsx7E7v1OIzyENK/tvceMI5BWqOXUf/APS6oZt2w7VWYXkXfwddoLSleKXtYLSgii5K
	UqB7Deuj0yBvAEiHBgnJT7p9U/+T6IgtMtIzVhJTu2J+VT1JwL5uR1PP3rS4HWWeY
X-Gm-Gg: AY/fxX72wKFdNC9i1CfJOvQ7Uz7U0FXJItT+hR5DXO8mx9fYKhfj+o0NYfFsok39JzB
	h6unG4YPfm30geq73nv8qimmAwDK9K2TRPmAQJFzlZDkGDaVzw+vBAdZ/c2uYTNhVg1FpAqRoSS
	pMrqCZ5PkDu1dcAvoUeXe4+ByqpFdFVGJ3iMonN053ZkQ6hjOsi6EqQve/yRG52Y0lm6AYxKrC+
	edwZksOpmqahLJs31uLK4Lndle86R/uY7nAGDeA/R9vMONATYsXXTQEq525jpa5hXBA9FAu2MFx
	TzAu4jq3GcUvq1NvxZxCgettq7MH1SBHpsd5KLrMJIxrs5ODiTreKATXjdIMNAzhnzkn1C5g+Mz
	XQMmy966KdqWvLZTvYOEUAQb6r288UeiIa6ZwvSBcqA7cbfI9HGuc/NGc/M7AisBaAQ==
X-Received: by 2002:a05:7022:2208:b0:11b:ca88:c4f5 with SMTP id a92af1059eb24-1244a776fd6mr10924859c88.35.1768935508784;
        Tue, 20 Jan 2026 10:58:28 -0800 (PST)
X-Received: by 2002:a05:7022:2208:b0:11b:ca88:c4f5 with SMTP id a92af1059eb24-1244a776fd6mr10924840c88.35.1768935508234;
        Tue, 20 Jan 2026 10:58:28 -0800 (PST)
Received: from [10.62.37.112] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10736sm22091198c88.14.2026.01.20.10.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 10:58:27 -0800 (PST)
Message-ID: <86661c45-d9ab-4ce1-bb92-d9da49e6851f@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 10:58:26 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 1/5] media: dt-bindings: Add CAMSS device for
 SM8750
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com
References: <20260119-add-support-for-camss-on-sm8750-v2-0-3e06583a0a81@oss.qualcomm.com>
 <20260119-add-support-for-camss-on-sm8750-v2-1-3e06583a0a81@oss.qualcomm.com>
 <20260120-kickass-taipan-from-hyperborea-e53ea6@quoll>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20260120-kickass-taipan-from-hyperborea-e53ea6@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=696fd055 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=lh10_vM5Hw23kVgsv4AA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE1OCBTYWx0ZWRfXxhJKZpfo7O3c
 C1gt7J3jiLbEznloZhXIOqck2DT5KOloUAY4V/wIx+lg4tt116BEHgfSZjrG2TNJGVDJG2d2xUS
 fyG6RN7tmTQH0bHfiyYW7r8wToxiPw1cq9STZMUmvlY297ZrwI0FvIb3yio8vpuxMtHGwwzDXAQ
 EfadBbqFoBhGbZwmO/g778BBiZXgvf6j0v1nqMS1k36Bk6NJ0/sX5XLTpG9Bgp/SilP9wxLVTbj
 e36zOCrSAWvra0Ya4vJUAtbYCXKAJha0QmbOwNo+aMPu5aoTWhuW2ErfHVcmNJKpyI7bfEDute1
 9k8cZpaTS8qomsVYSVflg61oS/DDjwnmLWMU+DCrp3DCRQ3H7+cnRUcMYHfopSNUBdj3PquEDoB
 PFWupbRLmlb0VAQNl0oWTZWYFU2vEoZNPs5GgHxdZ56eettqPCFbPmFsFxvC5MjVcJvz1A5x3Cz
 RmIcoD0FcIllSc0DcYg==
X-Proofpoint-ORIG-GUID: DtppVJpdXaZ_RkW8PqxzYfoWe2rBRKR-
X-Proofpoint-GUID: DtppVJpdXaZ_RkW8PqxzYfoWe2rBRKR-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_05,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200158
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,vger.kernel.org,oss.qualcomm.com];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257567-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C1384AD2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/20/2026 1:35 AM, Krzysztof Kozlowski wrote:
> On Mon, Jan 19, 2026 at 10:42:51PM -0800, Hangxiang Ma wrote:
>> +      - description: Registers for RT CDM 1
>> +      - description: Registers for RT CDM 2
>> +      - description: Registers for RT CDM 3
>> +      - description: Registers for RT CDM 4
>> +      - description: Registers for TPG 0
>> +      - description: Registers for TPG 1
>> +      - description: Registers for TPG 2
>> +
>> +  reg-names:
>> +    items:
>> +      - const: csid0
>> +      - const: csid1
>> +      - const: csid2
>> +      - const: csid_lite0
>> +      - const: csid_lite1
>> +      - const: csiphy0
>> +      - const: csiphy1
>> +      - const: csiphy2
>> +      - const: csiphy3
>> +      - const: csiphy4
>> +      - const: csiphy5
> 
> Same comment as last time - nothing got resolved, nothing got concluded.
> 
> And before you claim without supporting arguments "we are not blocking"
> let me clarify: yes, you are blocked, because I am not taking bindings
> which are known to be incomplete, not finished and already being
> changed/worked on.
Hi Bryan, can you please advise on how to go about this? I don't think I 
see the driver support in CAMSS for separate CSIPHY nodes on linux-next. 
Are we mandating anything about this wrt ongoing patches? Thanks.
> 
>> +      - const: gcc_axi_hf
> 
> Best regards,
> Krzysztof
> 


