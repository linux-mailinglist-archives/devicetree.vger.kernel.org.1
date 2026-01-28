Return-Path: <devicetree+bounces-260422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPFsDwcNemmS2AEAu9opvQ
	(envelope-from <devicetree+bounces-260422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:20:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B172A208D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5966C300C54E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1084352C48;
	Wed, 28 Jan 2026 13:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OGgSAA4z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RKsI1wES"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600C1352C3C
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606352; cv=none; b=P11npRcMF6pg+/NR/HCWnqfG+qkiqbXtZT5iONvAOgX2R0a22nYCwzXojV017dQbpAd2HweQDRXUSEnVFUIV3wi0cfhFZRyVDsNBPwOvcSsaYsuaelYVFN6DWhVcJKR0v54CH90lvr4jKJDn027somiVaz8Hf/WjnQxZrspgNn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606352; c=relaxed/simple;
	bh=QO2pAI/Vv2Z6kufeJJdU9NeV/PumRQ6m5o1iD6ZX3w4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VdHAqAaSE6TWf41FMW70pTijUdHEQfl8Yy3/4fmHXXKLjNTmvhz04o2njb0CM5IXq/KtgLu4ZaIiipGDddwpZXWpV/Zb+EurZqwZowaj1j0OvUyECmf4ckUa2BWhvAkHGRSRFfC6lngUaKhFEW6kwicccnf+N1X4K5GZ+gLf3u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OGgSAA4z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RKsI1wES; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S938FM3247337
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:19:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rH4qQKPHxV6KC04uNpQ1ZaSsZ/qpSvcg6cesfcYHkJ4=; b=OGgSAA4zBK+NYdt0
	5NnU4WgKszPY9JgVJQVqxOx+7YnE7AI4Wg4UdERTYVm++EjpPeFL2Jhg2gmr0nrm
	XtAEW2eKnoRfXTXrcFqK7u7lSDwwnWTPNnbsiFNFlDQ3J6yErkk0XD/n0xX0bXye
	mAdcVck415SkmpoaQDs60TB/O6pMT3VNlFz4TNATgRZ8ozC2RL1ZF3vNiPHXMyI+
	qd6XeW7iAtA0NSeEjwJcnvkR38WViayAyAZvgIy9jaLSfk+Nia2BBPykn3r1R6yY
	SsWiRNaie0afk0idFBQzABuWQbML8goOx4yTzr/QQ/rCxMx4fwfC6n72OREw203Q
	kMMdtw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bydfk1ax9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:19:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e518fb75so102872785a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769606348; x=1770211148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rH4qQKPHxV6KC04uNpQ1ZaSsZ/qpSvcg6cesfcYHkJ4=;
        b=RKsI1wES4fWiNBRGJ+Gzb9bLdKwsLPI1XFLQcDLeuxmDKxPyq1jstjkKQR0FF4xhuD
         mc8luqOqByQrNJdEOGYEYRy2q2l1HOkqvjuiPxOg0M9hJo1zCh6v+fT/vBb/YvrKAgo/
         6dD7OoDJdAatrKNL+poaGNSiRgssXStVcCvaIVp1ekHhZecMbM32Yw+ZtCx8lJpI/m6O
         hHrXb3bUiRqQ1IV9l+qR+skqAVlon3NkTjWw3VMkUIK/+Z6Ct6qYgtF6vId0oPz9xoJR
         6XL6orxPJTs6RsnHOoT5SWJIjlMWq6woHjLUInZk8jJGaVu5YjAmzChQOwTiXiuqPVLQ
         P61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606348; x=1770211148;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rH4qQKPHxV6KC04uNpQ1ZaSsZ/qpSvcg6cesfcYHkJ4=;
        b=SoQ2IuMoAKnVY9u2OASbsUKahtxrs/b3+K6wFpoz8zX6Pq6Hix3ZQnOzrhROkVAOGh
         /hEAVrHdZJ5sIQ70Qm7ic8jiRJk8ByyfV2MhnekoZLhFg3oBb2qUpXebD/u8PLZIgk9C
         mm6QlgsyggxQMEaXAfWivECUZRtm9l6JaQglZg1iD+q5w6Y0fZfnQjaTPuUapltPC/AC
         uBb/P91EvBI86vqI9mn2zVmOpn/wQ6gSwdES6Wbnp7I4/F7dCk0M4xioVFWde+kg5osX
         fSN8Cowq3nkUuBwLCswx0FMZjqkgqmwo+XMh67HHBUgclTh/grAqHtT5/QJBK5BWP52g
         M8Mg==
X-Forwarded-Encrypted: i=1; AJvYcCVOKcrKCIlFlQIp8jvphY/1PG+7QPKlwTeRagvTQM8abBtA/hCfe+xkLC0f1CgSi1vlmtDIvwJgJ7F1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv+4gmIsdwFUy12e7vX0v8uBFGWyoWFa1Qnvnz10+2vUnB2wS2
	t8nwFTvuooKaydhXTpZoqU5MYCIG2iQ/YkEPu8/c9uxp34HZ/pNT04UVuiLmsBgEYqVDaQScR0M
	FRGrxPzIa3yq2RA/BSYAgTx0PBZ7yA/9msF+kG7W5v7/RX93n6kHLTmu1ISvqbcAiQOszRWqu
X-Gm-Gg: AZuq6aLo3qD5sdnRZBZ42zdxDz3wyofgqnvqvzLw36IOJDOfxvALs5cqvRzYqXaheb0
	UaR0uBsfhET5v0M8tgfKJ9QmGWu+HpwMBUvoqUnOreHCPHTuu4bifd0tR7WoEyYm3ZSIDIDQPGW
	gPZMbyc7o7OPCd329PGSxL1ku4W1c3STDZeNQZPyxksiInigzuGT6PPslr9/T20S6kmtVT0ypl9
	B38C0RNocOGK/scuFQYQHV9Yn+6nQnuuzpIm2m/ByRltySS/MaxLj8LDXGa1Yp4+CNOs5+aJWDf
	MDuUTic+DRlKyq5ZDd8u+lnlHJkKqZC9RhJboWmh0OfiM7689WZ+chm2cNrbp4l69ET+dMzWhFL
	GVqpdzcKoSd7SDqJp20j4iUrCJecXLZVAbmUWVIMFO6ciW5XEuv1rSQwnxw4o1T0e1pw=
X-Received: by 2002:a05:620a:46a7:b0:8c7:eb2:1c3a with SMTP id af79cd13be357-8c71acaa118mr13674785a.1.1769606348439;
        Wed, 28 Jan 2026 05:19:08 -0800 (PST)
X-Received: by 2002:a05:620a:46a7:b0:8c7:eb2:1c3a with SMTP id af79cd13be357-8c71acaa118mr13671385a.1.1769606347969;
        Wed, 28 Jan 2026 05:19:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ed6besm123842566b.60.2026.01.28.05.19.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:19:07 -0800 (PST)
Message-ID: <67b0860c-b53e-472e-aeb8-6370ae8ff98c@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 14:19:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: qcom: add Acer Swift SFA14-11
To: weifu wu <wwfu06@163.com>, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260121112721.2981491-1-wwfu06@163.com>
 <20260121112721.2981491-2-wwfu06@163.com>
 <b3460102-c624-43d3-8cc5-fd2d4b730a9a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b3460102-c624-43d3-8cc5-fd2d4b730a9a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwOSBTYWx0ZWRfX4TscemfNDbjG
 4/j0FFC3Sl4oeptLI6bByQ2Meq1hSZ3Ooqua/tZ/lOPX2i0PyvX/Hx0ZO6TprkTdxtPvxyA96zW
 eWq2ZFPnIxkS1ccD3pMiqwH9C+AKE2FMOtKkaoqYg9ml0SCtUNbuxIgX116VSkV/L8iU1Qz6Lbj
 fqWmGj8FfVFOVFyXctov9DFTEi+vmsNHfLigTxzDVyFFXYrekK4amWVAZ+kTQxc9B1P2jR/h0TJ
 mTNhwSvyWINm3fQHaojgPZ6+NUdjfkwQgFkcx+xrTM06/AzcDOdIOmOQ4fieOhkNLv88vJHWiW5
 HJqFpx3dn3gPswIYYTpfsYQ7Gx4EQo5lK8EbAZx7f2IOcPL33Atok+VcmiX6QMgO11qWwiPCpr9
 6ndcHyndXTnGBI1d1zgNhGj9Qd1+KZ7Xv+cQRkqAGKiI5e/jpg+UnJwU6uNN6U2yzy4BlyRPlUF
 xLsiOKjMBPyZpOoWFew==
X-Authority-Analysis: v=2.4 cv=XfWEDY55 c=1 sm=1 tr=0 ts=697a0ccd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Byx-y9mGAAAA:8 a=kwJdEQ3qBRiSTqlgakQA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: sJ5kB-JKR7_9Wearz_WijTPdN58-MAdx
X-Proofpoint-ORIG-GUID: sJ5kB-JKR7_9Wearz_WijTPdN58-MAdx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-260422-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[163.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5B172A208D
X-Rspamd-Action: no action

On 1/28/26 12:55 PM, Konrad Dybcio wrote:
> On 1/21/26 12:27 PM, weifu wu wrote:
>> Add DT binding documentation for Acer Swift SFA14-11 laptop based on Qualcomm X1E78100 SoC.
>>
>> This introduces a new compatible string for the Acer Swift SFA14-11 board.
>>
>> dt_binding_check and dtbs_check passed without errors
>>
>> Signed-off-by: weifu wu <wwfu06@163.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index d48c625d3fc4..3de631667701 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -1076,6 +1076,7 @@ properties:
>>  
>>        - items:
>>            - enum:
>> +              - acer,swift-sfa14-11
>>                - lenovo,thinkpad-t14s-lcd
>>                - lenovo,thinkpad-t14s-oled
>>            - const: lenovo,thinkpad-t14s
> 
> This needs its own hunk, your patch as-is says:
> 
> "Acer built the Swift SFA14-11 on top of the Lenovo ThinkPad T14s's
> motherboard."
> 
> Which I'm sure isn't true
> 
> Konrad

You replied to me in private. If you want the discussion to
continue, please resend the message to the list, keeping all
the recipients of the thread.

Konrad

