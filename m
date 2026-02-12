Return-Path: <devicetree+bounces-265108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNtPEOjqjWnG8gAAu9opvQ
	(envelope-from <devicetree+bounces-265108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:59:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9894512EB1F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80F46301A381
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F6E235293D;
	Thu, 12 Feb 2026 14:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iGXgYFEV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BcuMIP+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D882F6199
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770908246; cv=none; b=rNyHxiFNhkdnmfJc8xrqzKJnR0YTkcZOAHKYBnLYybJ+FkOsj6a++2wYjYUylMKaCuWY8sxq9f/MhAXSkjSFi4OQ15+9AduSuXX7xDOY2ax4Jjl7EFOGXw+AhqjdRfTORQ/P6Qol75pniH2HlGO3w8el89ISoNlSUz9nSMKpITU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770908246; c=relaxed/simple;
	bh=OrijPGENLGfQV97sq5Ev8AlHCCr1NHlFMga1Fx2gE7w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R9pxktd01kWnQogLsTtPuYvhWyotI43cbYG/mxIAFq/U6X0b6GcGAmZAvMxJ1cHrAeXBUabETLDybPREj7EhRkL1LpJV2+bPcBwmlltCqjM1FycXQn9wQojsXM0P++wZm+nSSwYryjMcoEjFEFXrQleFNo4EEOZrCrovT7vPTjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iGXgYFEV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BcuMIP+T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CE6emi652221
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:57:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SrVvwGOv+6vqMxw+o7mtnWWIKD8USCrryDikYGWEA6w=; b=iGXgYFEVejj6ly4V
	lOwdtJdBAH+tdn5kR6XA+LtnYHlml7Hi6/qI7ebPpv3IVxcEiOvMpCI0inGfRzYY
	ax4CLRz3N2GCuJnp5TF7PF84WClG0MWXggw/EAmw0ff8Wuu04poFYbAULTwCDbz2
	s/RbE49jxXZ1YeQAWuzc1Z2Ot09jgSlKGeDKGtdL79Jh3VUR6mIglWEfPkvT9O9t
	jSse2j29xkaA53RZEjPpJ9ly/Uki9Mz8yAN2sgRBMsmmcEBtMLnD+hNmoG9Z6OHK
	B5KXR2B+RGKEACle580HWhC7IzaA7klm23xmUuQ1AIyUG0AB+9m94jCPJNuVBnyk
	XLUMoQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9gbbg603-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:57:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52de12a65so154790285a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:57:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770908243; x=1771513043; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SrVvwGOv+6vqMxw+o7mtnWWIKD8USCrryDikYGWEA6w=;
        b=BcuMIP+TJXmL19J2IcWOsk+1dakrURsA4TyMFkBxrxtH55PR8IzvfufyYZwLDWespR
         +5mqpoKLJEP3wRTqbZn32ZXJKkqrHSsbSmi7iP7Fyx+gKzvnnjjl9klMCNQwP10IeN/B
         wPciCiT2jYUV4bvlaM2LiRcyPioWv1kS3Ez9nSbbI09KgvwoWr40oZ26qU1pZEM6oxgk
         5W9ZpOhELs/ZMVSzJTWizVbtc9hPMFINXUFaHO76ZVwrMDOfsrhmcwQKPQxOKk6i/+Gf
         jWSgL4uJ4oa9jwd0bLArhnnHOb1UrNIPAPXCZ6HyRXzG9ureWk8wlB81ouExzUQUGeNU
         ieuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770908243; x=1771513043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SrVvwGOv+6vqMxw+o7mtnWWIKD8USCrryDikYGWEA6w=;
        b=wI3QZRtOxzfKRVSHxA8ibK/accXkh6Y9TJcO4ErRr4PoStK1GF+mzK1J9NiKBl4OKO
         RRn1Ijhs5vizLI8t5QM1bEkSJBpZxpAAM4fW11N6ZKwhIKqsM1j5rjxgEPL7q5HdizQB
         xJPpQhhSJTt5ktYXrRv3Jmxz7a5o6QwmQ5EIngZl/BwL4jLjpvAwa0c1H3NXlqC4GpUS
         cK73Rn2NwJaTW5r2/AsbDM2G0gMNdDaPaL7Mrw8kwjtB/Lgr+/mUKAFJ0bFNIV9njfyi
         zkEnxOwt7NZs1CHZUdT+BKgriZqzrXuuBR5StK389xFBhcuKCyZsEUqwUN2aofqTuPE1
         KBtw==
X-Forwarded-Encrypted: i=1; AJvYcCUQlUIsRtCumq+PFTMozdPABM8GFymLOz8I2XPSjnpkl+F5UTl8wJL/ysyYmSuWqvA1Ra083kfjG++/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0rwZdL1pFC1wyJoTI7PS1VnXyViuajmu8mfkAeK7ZCJeHuSUI
	/aDMgFBDEHh1y+SaPE3fsvdfb6ZQlHdKJ4MUyqzcgohi3KyxsuFEqlmkU+K7fuojaQ3qaGs5EQs
	i8T7tFg4wgstZvDgJ7NmOu6C8N0sJwk7J06hHqierJ6fLLr0zBDsYwTQQOoY4olZq
X-Gm-Gg: AZuq6aI/epW9v0IxVV0N42ibHZgtIh+vgEeURc0nYP2ofuXtzOf86G3iN3QF754yXTd
	jIEgBirgKhH0Mc0eCElLYetQbl9mgC8g2w1TpiebtlroYgxqKJ3qwg/j4FvaxrYUR78x0NzkwmE
	6tOE0dd/+nxkmL155fA48sOQfs1aPU/LgYABrMJWTbMg6rW2cuhm6rObW+3ThELHIU5Hg7llXFI
	nD54Moz8nH4pL2fxNSLovD3xWjHZ2s0Zzj1LikruVp/ODkKqX3srMBDMjm6eRV+y6+x/m3f0HvT
	P2VJSQ1SWRkDn7Qe26eOw8usO4XXGwAE50Jc6LMxkgvuj66xM3hkOMQBSQyAUEr5nDYCsNxbFJT
	pNyo5V008hlFmYPenRFrQLeFVrXLdbz08pBh9WZ3q65R90vr6yaRBQtkPY9EVKTgKeX9marQfZ/
	yGUI4=
X-Received: by 2002:a05:620a:1aa0:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cb3315d0f0mr282070185a.9.1770908243375;
        Thu, 12 Feb 2026 06:57:23 -0800 (PST)
X-Received: by 2002:a05:620a:1aa0:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cb3315d0f0mr282068385a.9.1770908242932;
        Thu, 12 Feb 2026 06:57:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6e9cd6d4sm168653666b.23.2026.02.12.06.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 06:57:22 -0800 (PST)
Message-ID: <5f354a57-36a8-4d27-891a-358b4ba487f6@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 15:57:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: Add UART15
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Xilin Wu <wuxilin123@gmail.com>,
        Molly Sophia <mollysophia379@gmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20260211-sm8550-uart15-v2-1-bd23a0de18bc@gmail.com>
 <567d28df-485c-4dd6-bfc1-5c357da7dde7@oss.qualcomm.com>
 <CALHNRZ9siWXhXGob0RrrYUauUu9hjChMhJTMU_BWoo9EGfEQ=w@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CALHNRZ9siWXhXGob0RrrYUauUu9hjChMhJTMU_BWoo9EGfEQ=w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDExNCBTYWx0ZWRfX51WlZ/dgmF+v
 ThW2h4+03lB7LMmBGUKHiBZvZsjJ0TbJ2E7ULQ+MB0yKQDF9MR99g+A5B/zTFExsAlK1QYxLfLW
 PqgCs4/vwLWHteVC2jLyx5EBh3bakbd/bXPxjHebBRv40iS60hkREuj52u8rXCIGqXUXq54H0Z6
 0Qu2mhUXtWTjgdG6/r68+VHBZb2VZlklDyBMHvcICW9Hu/bGvmHsLKP5NySctLIufwCOffeu/fR
 T9ZJkiBUK9nAjPB9xN7fDPKMW6bqOwRiLaAu0tnJen3bnL2LeFt4U0Jm0wBjSd655K9FdhjBnri
 Ul/Zt7NtFSHbgFqLLwziO8x4/p+LF0865qnmb6h2oYgoFZUgxN7U4/U8qNoaQWOVo84QB62Iz8+
 pk/KClZ4PX3G5RCBiHjFeFKu2kUZUIm+k9eYX5vB4OYaFSX0vuxOJ187X63R0rgfcs+ahm9/kq7
 aqMHWJ52xUq/9XdyI0w==
X-Authority-Analysis: v=2.4 cv=a849NESF c=1 sm=1 tr=0 ts=698dea54 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=_ivdKdEdT0-elHp83W4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: _1ApLe50dK4JXpgLNFoPEQf6zEGEO9RJ
X-Proofpoint-ORIG-GUID: _1ApLe50dK4JXpgLNFoPEQf6zEGEO9RJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_04,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120114
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265108-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9894512EB1F
X-Rspamd-Action: no action

On 2/12/26 3:53 PM, Aaron Kling wrote:
> On Thu, Feb 12, 2026 at 4:49 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 2/11/26 11:35 PM, Aaron Kling via B4 Relay wrote:
>>> From: Xilin Wu <wuxilin123@gmail.com>
>>>
>>> Add uart15 node for UART bus present on sm8550 SoC.
>>>
>>> Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
>>> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>>> ---
>>> This patch was originally submitted as part of a series to support the
>>> AYN Odin 2 [0]. That series stalled, so submitting separately.
>>>
>>> [0] https://lore.kernel.org/all/20240424-ayn-odin2-initial-v1-0-e0aa05c991fd@gmail.com/
>>> ---
>>> Changes in v2:
>>> - Use QCOM_ICC_TAG_ define in interconnect paths phandle third argument
>>> - Link to v1: https://lore.kernel.org/r/20260207-sm8550-uart15-v1-1-d8ccf746d102@gmail.com
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 24 ++++++++++++++++++++++++
>>>  1 file changed, 24 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..a54f375f7f041a193a4396e4aa911abb42e3e6dc 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> @@ -1251,6 +1251,22 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
>>>                               #size-cells = <0>;
>>>                               status = "disabled";
>>>                       };
>>> +
>>> +                     uart15: serial@89c000 {
>>
>> This should be uart23 (see other nodes at this base addr have that index)
> 
> Am I missing something here? For sm8550 [0], I see i2c@89c000 and
> spi@89c000 labelled as i2c15 and spi15 respectively.

Well, it seems like I implicitly upgraded your device in my brain.. what I
said is true for x elite..

Konrad

