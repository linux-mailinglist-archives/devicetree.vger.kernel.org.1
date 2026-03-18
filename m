Return-Path: <devicetree+bounces-277116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PxrINqAumldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:39:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDCD2BA098
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 236BE301C583
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B29A3921ED;
	Wed, 18 Mar 2026 10:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oed10jw6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M7uzPFlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA9338F25F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830358; cv=none; b=T4bX9v5WTqeocveqXU/P5ZnNbdgD0tjyDZGeIUGwKQpmgdVxt5FbA923+aUNIhY5tJK3vs98q7pU6E3GHheoJiFdklroq9aulysxHPw2bbHveBe5TrqelkKPQCaxWaER6Uubso34wFPv3KLPGlZulR4VFRIUbtEueRgHzOxS45s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830358; c=relaxed/simple;
	bh=7YtcbCtK1WPnAAGDtt9ml8BO8NPQBm0crmxCVQBIpyQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B9miJXL3ccx4FXibO7SqIDCwFINxQNa9ckXr0xlNMmTu0T7WdoHr7x1MEaIjDTSuvCOhGBuRLeAqAIOuH7CD6gMPB3sZc8R2FyGbbrhvze24P0cm69Fnt3XlpzRRvyLj0yQUPPyY4kAIQe0yH7E0KtO4EIgcX2LgOocgwEYOPt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oed10jw6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M7uzPFlO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZI7H2878120
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	djX9hXlOZ6IfsE88ywUXjLHf1eDDYfMHYW4uViExYnw=; b=Oed10jw6WnyTzJhw
	IRrAHcWmxR2YeN68cKWcS3XkZjh+RzZ1f3Fz3PLSKeefG05t+Yt7TtEbmgvLqSD8
	1ALg9S+qoEqNURGSZaDWuUcUsVWtiR5gocXQhzQ55Q48UwkT6ieeiknmMFtHYlSr
	iMycPsH59gYYOA4YsUXsYYBQoZizqMRDDFc+bphl3sT3xzJEf5TDlYqgNCZOhkbd
	phaYPYrUbL9p4EWW8vzhfUyyCOHVrcMq4rge8QmXIHXaga6KiLAVaHWVwyhQs0Wm
	WRrnsoHm8mnmReRu1LP7gNH+R0rVxhuRc6cGvRKlqSVbtfpVK7xbOnBYYg9nQpfQ
	vkVT2w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr12p1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-509118781dcso79003361cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830355; x=1774435155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=djX9hXlOZ6IfsE88ywUXjLHf1eDDYfMHYW4uViExYnw=;
        b=M7uzPFlOE42B1bs/blfPNGv2Qns1iaEZscA8SojAw4bsXHwveCkHwha5xLM5Ncstej
         BAmYTettUKzgQB9HVQYjXogMC+Eeg8bGpLSKQk/sjMlHscRKB5VnypCQXwO767R/zlOi
         dxnxNHywl2YHAVHrKzHkD1EJcfVyuA/lxDxKhb2acga3RTC8i0mGso7Gj5JxiGTDOZXo
         AjL4T8RVc9cQawKt0b9Hd4pb9u8ixXPfkbT//XBSUVltjcJEnA+survcQL3KG1q5P9ad
         MwejJk3fVLg+H75MR0DJPd2bM0jsk6KF0BFBiQ4OMTH8tQ1VBgLT10W9oIttz2N3yyxd
         ZzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830355; x=1774435155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=djX9hXlOZ6IfsE88ywUXjLHf1eDDYfMHYW4uViExYnw=;
        b=XOn1uHF6e9ZWMhqIQTAdHVO4rFmS6HWsPQvPbCJumeNO/5F+7pjS4acp2t9QMNrQ9/
         PAQ5BkNPD6YXT3JXVAarlJyWjBm9bo6JOYKABC9hT5qKcn8qxzCvfbuXDoM4uLknh7wb
         qQUsyd8ZhOhr2SNMsZKmPwSPjeG9k3oQsIDQNT23AuPII00ujbJYX7Do49iub1O8N68O
         dSII97M1pxVmbsHERjHr65CXHh2353WJcAo2tYtHq6UWrns51WILU7oyix8RB0xRBFxS
         Alr9tm3FNomEHGK6tgo+fFsrwp5X+ZsH4KMTclTSJpTNV6AvzHw4FSQU5/BmZA96gCeZ
         nUCA==
X-Forwarded-Encrypted: i=1; AJvYcCVwn6Y4xSKAGgPU0h0Hr+d6ppx4sb/1CPolq6sk9o5yPlrUXq46wJyyDNYW32NgvdPL3XV1QOX1Z7a2@vger.kernel.org
X-Gm-Message-State: AOJu0YwiljdMbbL8odriq6KnvIwczRwyIieWR8/g3tsdFLIY9eVpi4MI
	4FPma8MW+imkGXV6c475BAiiY0lvxq+u6wYqtBPBECISTwt05bTdLWq5UMRZnaxpF8uEbUZzTa8
	urQVKsdyosXs0YWCjyfYh+NgG0F8PFkQV3vdAY1Ht7zJW8nt4D9V2h5qVIr9j+EiALPlZLAOr
X-Gm-Gg: ATEYQzyvaSwK5/OQIqoGTsMsxqg8iEEKvmwWdEbe/YcTZ0WvwtCi0gJzHJ2JcHtxfmK
	5mCyCLhi5t9Dd1YI0Un5ITezNdgiho9j2DeoRirdLa5KZhs0XkvIGLGCbnUPUIQrAjLzoZJwAF9
	XtXP2fggRsSVlI4gAopI7cnkeHg1dW+9Szmz8Qmk1/5iG7aDIpTBvnJYz0FqdXVDtTWxwrR/iV+
	gWArDl7SM+o1qX8ptozegO6iKlkaQkVT/MSHKWLBmxtOLA++uOcGchNifnKdCu22m9iU6pa+65h
	CbQTJvtctS0Tzocf4885p+0C4CoxI994ooX1db/OQRdq8haoX+m6znke8uR9QTXA6i6kQksdDBz
	J9zfb/vEzWm/o4/1Wa1KsbN+e4F7sDMhkorhShItfYA6JzPvPSJJ0neUdphLUMJrNvOQD1Wo+ti
	TFax4=
X-Received: by 2002:ac8:5f4c:0:b0:509:882:9e7b with SMTP id d75a77b69052e-50b148f4455mr24698351cf.8.1773830355408;
        Wed, 18 Mar 2026 03:39:15 -0700 (PDT)
X-Received: by 2002:ac8:5f4c:0:b0:509:882:9e7b with SMTP id d75a77b69052e-50b148f4455mr24698031cf.8.1773830355002;
        Wed, 18 Mar 2026 03:39:15 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9805690698sm59748266b.1.2026.03.18.03.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:39:14 -0700 (PDT)
Message-ID: <60a70a6d-7683-475a-89dd-acecac1a0e36@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:39:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
 <198ccf60-a4b9-438b-ad92-bc4d2cc84b83@oss.qualcomm.com>
 <90b3a7df-cd02-4878-b614-1499589f0906@oss.qualcomm.com>
 <uukjr4c2uymzj2pe544hn2w5ecpmqle56mir642zieip4ixwor@3uuhplnfo5qt>
 <822cc610-7984-4684-99d3-8abd679eb06d@oss.qualcomm.com>
 <jup7h7tyf4efv25mqj2sz4jmztpqbng3jgk4dvz33ec66wj4dr@kgmp5g5pnbon>
 <e874bfce-1cb1-4b81-8d05-557f061904f7@oss.qualcomm.com>
 <6kywpew2ttav7enc6euwbmn4jjx7mx2vpm5v3fjvey4tti5bbs@xhspy47zyto4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6kywpew2ttav7enc6euwbmn4jjx7mx2vpm5v3fjvey4tti5bbs@xhspy47zyto4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba80d4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=3oHnRM2YjcEhQKEPrrQA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: osjb_MNiYDwniQEYBNSb06gpIt0y_728
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX03GMmBFwm2m2
 VLO4B7t8tmKAd18/rJKTbqYgfecftYfMA2AXp5f4BN7wHFu5ajIhlDE+8Mf50e1bmvKmMtRocmN
 A/jBo4v3XCPhqjYu13u645XAePuqvaaDxprHWqhufzDVAz8UEDNPYplkWbI5Zx0fPni2OgUqDfd
 HA+shf++Kh+ZDTfSvCcKo2gS1lwiNVtAopaINIatwElyH3ylBTps2XiDy5mbg/kYWMdeHYZRjWb
 cKcuJ1GcV6+fdEVRFfTGgcXYGTTG9UKlq28L9AfpdT1wk5KfJ1RNUvodSxo6Gtwd9ZDOOuq3CBJ
 LYBD+1BY3hNEw4vQ0yDz1qiaZLsxpind6sp1y7BZhYSk+C1PiPdsYNjUuvSpC8E+4It9vNtoaY8
 zF4BAzrydO/BRU7d4vIhVVuXJVcAw65nu4CycOVlj3unDaSAQ2MGioWUYYweHMcd0tlsnFgxsaA
 cQtHuOd8eDfbR00Zxrw==
X-Proofpoint-GUID: osjb_MNiYDwniQEYBNSb06gpIt0y_728
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-277116-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2DDCD2BA098
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:38 AM, Dmitry Baryshkov wrote:
> On Wed, Mar 18, 2026 at 10:33:28AM +0100, Konrad Dybcio wrote:
>> On 3/16/26 3:25 PM, Dmitry Baryshkov wrote:
>>> On Mon, Mar 16, 2026 at 10:39:09AM +0100, Konrad Dybcio wrote:
>>>> On 3/13/26 3:48 PM, Dmitry Baryshkov wrote:
>>>>> On Fri, Mar 13, 2026 at 12:59:46PM +0100, Konrad Dybcio wrote:
>>>>>> On 3/13/26 11:12 AM, Maulik Shah (mkshah) wrote:
>>>>>>> On 3/13/2026 7:41 AM, Dmitry Baryshkov wrote:
>>>>>>>> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
>>>>>>
>>>>>>> d) Add separate SCM child device (with interconnects) under SoC.
>>>>>>
>>>>>> We'd then have to probe it as an aux device or something, which would
>>>>>> either delay the probing of SCM, or introduce the need to ping-pong for
>>>>>> PAS availability between the API provider and consumer, since some calls
>>>>>> work perfectly fine without the ICC path, while others could really use
>>>>>> it
>>>>>
>>>>> qcom_scm_pas_is_available() ?
>>>>
>>>> This comes back to either having to wait for the interconnect provider
>>>> anyway, or allowing the ICC-enhanced calls to take place before they that
>>>> happens, stripping us of the benefits.
>>>
>>> Yes. However this way only the PAS users will have to wait (i.e.
>>> remoteprocs, venus, IPA, etc.). All the basic providers would be able to
>>> probe.
>>
>> Do you then envision a separate qcom_scm_pil_is_available()?
> 
> Which calls would it guard?

pil/pas/whatever.. auth_and_reset(), probably

Konrad

