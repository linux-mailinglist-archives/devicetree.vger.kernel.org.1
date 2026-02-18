Return-Path: <devicetree+bounces-266394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE17JnehlWlcSwIAu9opvQ
	(envelope-from <devicetree+bounces-266394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:24:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 109F4155E04
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB959302C33B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A5C30B517;
	Wed, 18 Feb 2026 11:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NrsCQP3/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ClaSVh3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD6030BB87
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771413872; cv=none; b=Dn6qJm3rwHYNKIQj1TVJAblvjx5njHOm4EY3OF8IZbL48HcNOHpX6+mhu9mMxZT/r2jwgatZq5r0hRIE7YyXBtf/Qo9fhcrBJshlp6ou4gbMIsZ0emxZfqCNqGZMKdMwGnMKmLioJb0eMX89Fy3DhVqh7HJGXK8OOgltzvb86lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771413872; c=relaxed/simple;
	bh=t3n84ScvnFt/PXH+NefQQz4XVZm8WFyP0DLTedCYLKg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F57cyMdypvYpbKhc09Oe55gTWPLFfh/l6zJdDPrXOBokO1jrDPNiknA17I19B6zTEDWi14Prlg0pFnzG9Rk3BDSW2WazZn215+nfeuZYKXBWRQatPDUnM01bK9rvRmehPX6zwg065EJo3L0D8GD/EjDK6xjK1X9HcjIXn+a/5io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NrsCQP3/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ClaSVh3S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61I8LmAx1943469
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:24:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pAXKc5L07Ay1wu1nVRVtQejd6bLqqaeTZlMEgqGt6js=; b=NrsCQP3/XLjHF/eP
	s1SF9G3wPkoR6/F/lYbEzRwIN9K0V7idR3JlFq6wRFc/E96lsePfxJ0Za49Luq5o
	pieNrKuTKzfWDcr4AHAUqZb7C6YkMyx0ISc7BpPqomBNj0baG3I6xtsAbelpUpDa
	8cIaVPqE72NBHw8EnWQ6SjjYMWYzRIciz35rzpRYwuYeJN4qYChtX7hZ2cyEJv3o
	DeR2dmz4YVUR6a4H+s1yEH6Maqt7GjBW1v95gwMz8RnxXXOxueMnbV3KPMTL6LNK
	YhI1oKw7jTdlKk3FyjqtrwMAj5GSW8Kfs3KBFSQJbKfadE4l7z9gyE+wEKSAX5Kx
	8narwA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccq4g3vgg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:24:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-897193937baso40550636d6.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 03:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771413870; x=1772018670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pAXKc5L07Ay1wu1nVRVtQejd6bLqqaeTZlMEgqGt6js=;
        b=ClaSVh3SK/ktxjJJ6A/qMMoLIANXXpctBSHSB8mCDLIw0ylBCUjpl4d6RUO5X3Y5/c
         2eE67seib1LSometEEmMklD1Nb//WIbEpl6dcd+ZqXxcp/2D9oRElnoxsfpHkty3Zy1G
         xRBnDxPaLthXwHHftfv4qRDxqj75Da5XEdCvhI8eKmC0oBnMxn/GMiegH0D8xS5wvVtW
         xW2faX+p6huyKVmoWEYho62M5DWCPlvamXo0l+aY6yidRiMnhXp33OSbf7QgDE5BQfm7
         W0YurUngLs7ET6NrzRoeihM7JwbhLO+cLORu4p+21/Zjd4cXhPKmUIQXfetAuJurB1Ar
         0ahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771413870; x=1772018670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pAXKc5L07Ay1wu1nVRVtQejd6bLqqaeTZlMEgqGt6js=;
        b=qdYthaR3i+olb8VtVQRFoMbucodMa5XcTQ69dm7vAbXwaaD9LnqUQupZP7NTgnPDSr
         5OUMkE84nch6ztBL6+W/ev9tZFdIe281cpdoLp+ERHsv+K0zNrmMK6CtSCupECTLT0Qq
         0oJljulMJuXRCkAtphraWc/6CSgUUbHffq7GaBma+CGPgCcLdXYh+Ty8ox9YjNwafKyB
         SfnjUvKrJ86ykCAZhFdBoby8+nec4JqtfPNSIAeje+WFfHAKE64X+GfAFqqvuCYE57Dv
         nW6ntvfwfOAYr7jxzinKoUQOu4UjqM2WWgXo47L56XAI1iktm+TjRhfDkAqvxJCBouCO
         sUKA==
X-Forwarded-Encrypted: i=1; AJvYcCVyaSVOM/7LyAsclNFlBj3Uz8vp8cc37cT5rWR9lV/zEX0HncnTqPjhJ8CARPO7n1gLqws/rQdflDDm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi1FxGMb46OIyWMk2o077fp6OYGbTrwN1dEZU6wLwqGs0H6nIy
	aYU8AoLoSJHQ1cIV+HWj7oNrw3Vc1NYjbOKPl4+f6pSl9hAK0cL/99/G2bo1GSePGKaMQruls4i
	IL1SmPKNerbiY1HvT3MeueRWQaH89dCQYNiJioivsX9DLmycRAWds004RFu0qjX/i
X-Gm-Gg: AZuq6aLjKesfiQRcOg0kvsk4c1SC5aaWcm91SCTmZm2rsfy2gIDufN4/m+sxOfkGduf
	Lf9MJmrJE/oXtGbbnS1XYcAKNJITC3a+fmnp4LttpwwiAmk5ZcilbpV21qYb6EtlBuSL+071ozw
	U76fnOaob2Rzf4Uo6A+LMJuRHzGPkTVdrYt0PR2KJxVPZiM2KrVmYPx3GpXH2IaJFsENMYmE7gr
	rM6c3zTrnLLdQMMGOxWCx5Z4l0qGcDtNpNM2ZYEHYkBztKcGN6P3/AtBzxuHDoZS9z0Gh+WyWRa
	9+FVo/nsN94ehs3KAMJ6BT/YqnIpAHpBz9+qkq4xiypk/WufywLkDPSyOxeoSTO/lBW4L/yJ5OZ
	TQPrOjSUFIJ+9ywxWmfriG8dw6tc3hCiY4qUQ8dVZDuUnQNpp6SO2XFAmpIxz4XwqGQeLxkCCYY
	O5TzY=
X-Received: by 2002:ad4:55ca:0:b0:899:5565:efac with SMTP id 6a1803df08f44-8995565f010mr19929926d6.3.1771413869676;
        Wed, 18 Feb 2026 03:24:29 -0800 (PST)
X-Received: by 2002:ad4:55ca:0:b0:899:5565:efac with SMTP id 6a1803df08f44-8995565f010mr19929746d6.3.1771413869292;
        Wed, 18 Feb 2026 03:24:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7629b56sm458895166b.37.2026.02.18.03.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 03:24:28 -0800 (PST)
Message-ID: <9405b67b-9e08-472d-a937-38c038fdf73a@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 12:24:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm845: Add missing MDSS reset
To: David Heidelberg <david@ixit.cz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
 <20260217-sdm845-hdk-v1-3-866f1965fef7@oss.qualcomm.com>
 <590f75c2-6418-4d39-ba7e-589acdf98786@oss.qualcomm.com>
 <e43d5bb2-bdbf-4439-933e-36591dcfd3c1@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e43d5bb2-bdbf-4439-933e-36591dcfd3c1@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDEwMSBTYWx0ZWRfX7mf4LSznYPty
 pOvGD5c4TyWkPwZ4RKYnLIcOrY8pyNE1kEzMF0vqp7VSRyiJGHwGL64Do1hTCTMW0fP6GQv3v0L
 i3y4/WLsuUsEtzi6AA/c7tXqNg9P8imBCNRhRWzyhDmGeKDNQD9X+NTFhzPgl2ckis3yVZUpxkf
 HqGJASOYqYlcgyoK+ENRJPHPBqw87RkmVIMwJZK0rFB/gHjRJlARToIbpAlXDoM3cH1yVHulPGx
 /uiSfvBw9q0jTzuwJsggRt9sifqOwDP+/9z1WpOKTZ8gOmcqfumakUKVcGayZqXkMQnHBC3d5H2
 PED28zsYxbm6SKg1EfTddLNd6NeG56Q7h1sll7QKOZXzJOxNazdoLfhMHHX4NN3DLkvUnYopClP
 3BeyLUDC3LF4H+g6PA5CWY4FvZXLdE9maJlfd9WnIh5Cr23HCtSWcZEFCnv582jCKhtTrgXWQTO
 Q/nMN6KngTlvhotH6zg==
X-Proofpoint-ORIG-GUID: D9nz1FSLd_43p2daYpMGD7ASaQ0zUUJT
X-Proofpoint-GUID: D9nz1FSLd_43p2daYpMGD7ASaQ0zUUJT
X-Authority-Analysis: v=2.4 cv=YdiwJgRf c=1 sm=1 tr=0 ts=6995a16e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=SXzkmgPmAAAA:8 a=VwQbUJbxAAAA:8 a=QSeG49lCECCrRmREOcMA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=EWLf6cg6Bh5aS0AxDgDu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266394-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ixit.cz:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,codeberg.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 109F4155E04
X-Rspamd-Action: no action

On 2/18/26 12:18 PM, David Heidelberg wrote:
> On 18/02/2026 11:30, Konrad Dybcio wrote:
>> On 2/17/26 10:20 PM, Dmitry Baryshkov wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> If the OS does not support recovering the state left by the
>>> bootloader it needs a way to reset display hardware, so that it can
>>> start from a clean state. Add a reference to the relevant reset.
>>
>> This is not the relevant reset
>>
>> You want MDSS_CORE_BCR @ 0xaf0_2000
> 
> Thanks, I prepared the fixes [1].
> 
> I'll try to test it if it's not breaking anything for us and send as v2 of [2].
> 
> David
> 
> [1] https://codeberg.org/sdm845/linux/commits/branch/b4/mdss-reset
> [2] https://patchwork.kernel.org/project/linux-arm-msm/patch/20260112-mdss-reset-v1-1-af7c572204d3@ixit.cz/

Please don't alter the contents of dt-bindings, it really doesn't matter
if on sdm845 it's reset0 or reset1, that's why we define them in the first
place 

Konrad

