Return-Path: <devicetree+bounces-268866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFvcLc5PoGmIiAQAu9opvQ
	(envelope-from <devicetree+bounces-268866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:51:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8621A6FB7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:51:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E834A300AD75
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3050B36C5AE;
	Thu, 26 Feb 2026 13:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YM2Gmehu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T7mNJkng"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E071436C5AD
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772113375; cv=none; b=h5AawdeCdJTiIjzcvsTJV64wqln5rw6rYOXi3KFTc0YqaOTH5efXolsvmpyu5g52L2bBEa1AUWLY4KNQ8+fXezuBMjPL2ToPAELza+zLhJ2cIlx4DWk/qUGEECguKNr0mIoahLcBn/jj38mqdvnOkQDM2mwK6DjsWzMoLMwuwJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772113375; c=relaxed/simple;
	bh=XxTe7E++UJMSx9TAF9TckSGgN846h3Uw38SSax7YkaI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AmSDequ0cbQofydL4+id4MY5+xvJwk82gB+evtzb21FRECDkDKVzW5p9TZpGLp43bcqjS11MukECbm6K9b21p7heTDIXYq/LvFIhiTwuIgjdwRlZlHxVv9DTHeYSyEglrHIRI/CmxPdaQXYcnosp5j3Ih8nSotGCYmxihRhhx0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YM2Gmehu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T7mNJkng; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QAKloY906822
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:42:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mmocMQWZq5yYptuHvoeMtpOG97t+hI6K9VjP1aVHnTA=; b=YM2Gmehuq7uJgepP
	Bv/g/Mrz2EuZAn2b6DV3ZEB1mGRn0Byudnrd7Dgi9Vk/QUxUem//F7B3YsRX92o6
	HnRgL05Q1+NUmMruZryF4c+FDSc2DX0JB4Vc8+mKl2iuBXYFX1phyQlJfAo92YOV
	CXfS6Tm4t29YzdUgek240A4va32c1cGgaPtSMxtj3WzWMItQKYAtqdGHXRqt6z3T
	kE6xUL8H9vK+iM7Gffcs8cq+CmcB0Bq4PGI65U8d6KRaaRVArk909p+UplWVTyQM
	rA9ZwANptcuZSKXtQex0fxkO+NqPz79k+NzVHaRpF0GrG8kM71uLwLt+g67+crvJ
	zRnFJA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjk2v0ud4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:42:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c7177d4ab4so76792385a.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772113372; x=1772718172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mmocMQWZq5yYptuHvoeMtpOG97t+hI6K9VjP1aVHnTA=;
        b=T7mNJkngcn7b3WD0NMJqK2kXll9ucTFTazMFzrsW0X8mYCTNvzUZ3/eiKwM/Ky5Q2B
         DQUWTR9VuT9l+XEtO7TcKzWfrI3Me5CA86kd4/4z3di0x2DHDCKhQXqtcTwh06lC3pR3
         QQww3s4U2jIAogbmsN7JaSZgVuOv8W75hRH8tUtuk9X2Ug8jfUL/mtKXZ1CqlWBr0v+X
         2+Xiy97nWMrnB2Mq+5tDoxykW1yCB8Tsi+Gq9ZQdjfISAOtpx2C/wB2Q1rmBvJe82Qx2
         teRsYOkHKU4nQ/fQji0qwcrCohmh32Hu4H+Kw42Oe4vZxXLgrofwb4NWGDrX5rWwDrkH
         9gMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772113372; x=1772718172;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mmocMQWZq5yYptuHvoeMtpOG97t+hI6K9VjP1aVHnTA=;
        b=MbWPMul52B+qdGJ+VmWh1yUZ80Wrts+c9L7hy+zv9cU0XApsWsdpYMTomqcKMG2xro
         Fx+GCN+OjPKaQI+7fo93oEea9puTcQ0NePW+vEHMIKx30t944x3d9kfrKNQuo/1QBY2C
         EAkpDX8MOfdYt51wwUIhKKivqQW1ronvv+dcgQs9FmHZKAu6bHsmR4RlS2rtpmjsoX57
         CO+JnMAnWelz2jH2jnBqYbv3caJEAZ1I045YuunyAe1UK44ykocRtQ1azXkYcXeIFGcl
         zTH8QHVEvfRrkoryeVPLGUk63MBMmEOZIzYaI7rp+NxOxqVwF/vL9AZZHWFS42lx6aLX
         2oQw==
X-Forwarded-Encrypted: i=1; AJvYcCUxMT4Lc0MWvh1icfk1Dr7zTspD9ftevyJxq30Web4QX4aAYFn/4hy8eieDu+ONK0Z8WNNRpP9HWXjh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8zSF8xCfeeHZk/gSeNemnnzsgqAuScWjibclBdPpO/B7JemWR
	kqoxSpLB0lfd/CF0BBV0jN6h/i+SDn6mgNut1hHreOJIRjbedzxTaEaidN/DUBfoKSNPeWXo0HI
	PpJKoGRgrCApIsO2MIZrS5MJpyY7KqLbZyxydoitWexlzTB0v2xaK9nhuCVS3j2Mj
X-Gm-Gg: ATEYQzy6e7EGzMVhudqKKBVK0njrsjRlQtpTAMGxo1rq+pHUfNV6ltek/G/7wJNEGqU
	6ftr6paLZRSOWd8KPI7hMnCuCRPFlwBezYXIrWWG9Z7gGfRL7t36WuO+ebfKxI76hXGWum+u01e
	H+uTEFW8oQT5Oa0lhVm0HfMUeGUkAJTiFkQBREr9vdFAMJ/qGfxgPR1dlz/2qa+epjbI0/X75qw
	n7aUbHDRAq0O1rY4u3TtMlge8B6hMrKFb4b9mNjBltk9OLzlh4DK0H8fqyzrE6xOYZd/TR4N+mY
	rA6bYLcEQ5YpUJMZfL6pEOdIypB92lMpYzeo1knUu7hVVwAGzdCsAw3TB7JOQoh5F5/owhr/7tX
	fO5fJLGXf+/r3R8Ulyt7p3zVHCnSGU5MOAiw80zoxQHjZsNnRAE/yY/66KxxwaI3Urk3KcQTfuY
	jqMNw=
X-Received: by 2002:a05:620a:46a6:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb8ca7cff0mr2017706085a.6.1772113372006;
        Thu, 26 Feb 2026 05:42:52 -0800 (PST)
X-Received: by 2002:a05:620a:46a6:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb8ca7cff0mr2017702385a.6.1772113371394;
        Thu, 26 Feb 2026 05:42:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd362basm474939a12.4.2026.02.26.05.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 05:42:50 -0800 (PST)
Message-ID: <de83847a-67b9-4877-a52a-ee1976d68ced@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 14:42:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Add Samsung S6E8FCO
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Yedaya Katsman <yedaya.ka@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?UTF-8?Q?Kamil_Go=C5=82da?=
 <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
 <20260223-panel-patches-v2-1-1b6ad471d540@gmail.com>
 <20260224-bulky-rabbit-of-courtesy-83fabc@quoll>
 <CAHuF_Zq=Rpg0HoRJv-BSREEhT8tYH4r+BCbZ7obrG36vSmwMQA@mail.gmail.com>
 <54abd390-113a-4c99-b024-2029c4d68099@kernel.org>
 <CAHuF_ZoEAT+91trLabyo8rc8afXW=Wd0Q9yxu_v53nXoRFJMTA@mail.gmail.com>
 <26dc41ef-1a98-4a16-a60d-c7654acba758@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <26dc41ef-1a98-4a16-a60d-c7654acba758@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: UYBzvz1gp9hztgGDZFgErLh4l6Y1Sts_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDEyNCBTYWx0ZWRfXwKmZDS0Y07Zc
 vLmdN8ecq1D0PUjKiqkml2cf7mkHi2Zw1DARz2hK/+iRiNx9cwIC1Q0RKQmhf7Wk4mdC3//qEZU
 hNy0lXZgolOxVzizwVYiKYC+6ICWJKVOQ0ZNrSB+K0il2kzRfE5sCz7xX7QJze+GH9P0Ngz7qy/
 ao7atVKO3Ahv5MzlM2PDmDm0IHsCmP2nqkoYqhdMUlFj+mHkPV/eHcPHstv2JFGHTGryQTCWneG
 WXaBAWYqVgTIzOEjd2NdZvy3l2qGSd6PDlO+JNMRN6s93oqnnvzVPU9Eq4gU1+WoyYX33vbKKXG
 BokPtTi0QNHypoM9XdLLr+RTcYb8HenWbfCA8o9g5VZAhMlCmlvygOzBAuZrKNZVjG4+OtHNSzC
 5SJZxz5cq8oSFDu8jJ6OclzqdksXpU2aGqARBzQWx5EiBMSONZMLLahbtKHHETX86sP+i+QnXwu
 Jf463/zSQehz+iDGfUA==
X-Authority-Analysis: v=2.4 cv=PO8COPqC c=1 sm=1 tr=0 ts=69a04ddd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=Uyhorv2uAAAA:20 a=8pif782wAAAA:8 a=VwQbUJbxAAAA:8 a=qMnUWKRm8hXzxSHbM24A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: UYBzvz1gp9hztgGDZFgErLh4l6Y1Sts_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260124
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268866-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,wikipedia.org:url];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CD8621A6FB7
X-Rspamd-Action: no action

On 2/26/26 7:55 AM, Krzysztof Kozlowski wrote:
> On 25/02/2026 21:03, Yedaya Katsman wrote:
>> On Wed, 25 Feb 2026 at 17:45, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>
>>> On 25/02/2026 16:29, Yedaya Katsman wrote:
>>>>>> +  vddio-supply: true
>>>>>> +  ldo-supply: true
>>>>>
>>>>> LDO is the name of the type of regulator. Why is it called as name of
>>>>> the supply?
>>>> Can you explain more what you mean? Do you mean to change the name of
>>>> the property? It seems that all the regulator properties are named
>>>> foo-supply.
>>>
>>> I just have doubts that the device has supplied called LDO, considering
>>> what LDO means.
>> OK. I don't really have a way to verify if it's true, all I have is
>> the downstream dts
>> which calls it LDO [0]
>>
>> [0] https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/d3766fc8cda2d96de2850faa9ce58e5a37ea9f9c/arch/arm64/boot/dts/qcom/trinket-sde-display.dtsi#L24-L36
> 
> Obviously the regulator is LDO, so they called it. Most of the
> regulators are LDO, so why VDD IN is not called LDO?
> 
> This is name of the supply in this device.

Yedaya, in case you didn't catch it, LDO is an acronym:

https://en.wikipedia.org/wiki/Low-dropout_regulator

The vendor driver probably calls it that, because the input leg of
the panel's driver IC just so happens to be connected to a regulator
of this kind

If we don't know the actual name of that input and have no way to verify
it, I think 'power-supply' would be a good generic consensus, it happens
to be reasonably common across other bindings

Konrad

