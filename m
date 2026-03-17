Return-Path: <devicetree+bounces-276709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHJFOz1euWnYAgIAu9opvQ
	(envelope-from <devicetree+bounces-276709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:59:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6172AB51E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2CC3303EC02
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0793D6474;
	Tue, 17 Mar 2026 13:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHvg/9fM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XrsZXVyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B963D5649
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773755893; cv=none; b=Q0P6s5+EaO31Tq/VOeKpKCFi6mT3JwOvU4OavNpYo0LegawoL9R/AvnQPsOg/FEu1gbO8Oy9eanRz0U5jrewiJqM/erECX3QhSt4BpnWb2M6msOKoPMHA1TMCkPOhfkBQ4Ayt/rGGIDiBnQHrzOHRFwLZKgN9QMrfAni5rfNVdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773755893; c=relaxed/simple;
	bh=WaxUkrcgefqUcF0bI2gimZQYQvRllURqGdWwvyMntEg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LfRuKMp2f5JHSo5W93htpKLAfHfEQEvMRqh6hGLZrVgU03RF/hicGdTFoJ1mJigfRw40rB3mDGxL7OlmvwxpxDPR1iNTNMMu9ObX8J2+cHV4tfK/7qFTxCGzvbptBO2FGLKMScNFjSeoan7YUkYTuzaRte8gorJUIU0nlyIC5uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHvg/9fM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XrsZXVyG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HD4wtm668921
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:58:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MokF80me7tXSqWsIgtIcUUI5pdqXPofc5xpgp1OSmy0=; b=cHvg/9fMjIpvRu7e
	xr4hkVicbS+f6Tfle+nbmKH983KceGfbhqKbEvo9nuGoxPeGTZCdywHoUTva09Kl
	f5Lw5uD/SPLt7CbZ9YGyvF3f066XRH5DP3e2VoP4mYfCn9rOQgw//LOV2iEnTeAC
	Mvs/ipSpMf77rYXs3xIDOR/oqgMkU2Mgf49xOlUbVydZIqFQYHWjsSaCahijIgHA
	XjzIu4XDk3CagHfZcaf4cx5vWMntVUAciPk8yrYn043IX8G5+TYM9DwXrKoUCcwm
	1rhJi+DCmoSlU5TLbq24C0MYJ724N8/YsnbbSyGJeBK9hEoyhIjECfQPCqkrq7sg
	ozwBSA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy7he067b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:58:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd8ea43d4eso277602185a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773755891; x=1774360691; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MokF80me7tXSqWsIgtIcUUI5pdqXPofc5xpgp1OSmy0=;
        b=XrsZXVyGhku7x+dNwYn9qvVmNgKXTwSu0Baifmk3vfVDWXvEp6L9CK392xHjDuF19G
         W1tksR4PDp4D/bjPG31b6FtVgYgHHpStdwERBdRnpFWRcGKpvsNayi6qMlqEY0MNp90E
         7hBcZ73ahQfbR5fXldCA0XDhqU+BSUjJlOv3A3Z8Gyqd71an2ftkGQUF+yXdH5Gh+mOP
         7fJ2po7C/8Lj01Ho0JDtHbILT/irBM0lQhFsA1js+1Z8Zd+TGU+JKNWf2r6nMoDLyJ2Q
         BAzBvExubEq322+VpLiew2k4EbIAlzFRmnJg3hGZiy3gsQJbB/TWeU7xYbwLSp029l7x
         hcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773755891; x=1774360691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MokF80me7tXSqWsIgtIcUUI5pdqXPofc5xpgp1OSmy0=;
        b=c7panSjHoedjQ3bOoibHfad6wrhgARICerLMF9pei+AU+ZwW1N0NfRXw6+7hUDnSQ1
         g2GPzokcqMaCI8kOzut4hRovZc85wmc+VpwZlEkCrRdkiGwrsiBsWqSarPF3cHwlR2OK
         hOAeTw0WW6TQGcMIt0eQ38SA8AcHzsoeDZeLGQqrRZtic4U8wLHt3rWobsc62/dh07d2
         Oyj1vWmX+cySG1ilIhOwh+zQYBP7C4LqGsntMUClptCoaf6MPcPXzX2EQ1QF1nbrwR1a
         I3W/tyzovwkivNtbU9k8mJMmVmeVnFQySr13zeUhcg2xSPqTaIoYwUnQtjTumuumVepd
         afyA==
X-Forwarded-Encrypted: i=1; AJvYcCVsCHxheP1aMJZiQsW7o6MXQAvIJfm0yX6112a3XiAQWXj8CEZvZbjh/Ny699EbkDYyupvvxeqA4bVs@vger.kernel.org
X-Gm-Message-State: AOJu0YymWxBaG8r/PMwiKDxNH9L+jZjPZF5JztfRKGhXn5ZnWVJBytHL
	S7Jj4jXmbMq0XSZZpnH8ZWUt9Q6RyLs+oxaetMUZC0pXJM5OFQHHf7Uz2nwYnCoBRIMhQ6t1dxJ
	5mKLCqyrizgVTjvP+IHEAQhSdezQtDdt0szg9Syqj1w98wjVvOCxGusellDhduZBR291a3KZG
X-Gm-Gg: ATEYQzy1ZkmWepY+KcuRuhgWuavgGCqTCStjDSeWGwQxukGsTvYSXzlRZWXswcwjjSj
	suxwKsreDWXz3bup3Df/2dceZW3n7uc8lHUtNON7tun5S0OmDrgNisde9ondXtz1K30MWqGyhiD
	PSS5zHTy/PJ9XXrFFXHjZ3/5Qfj5jjXDLRf7uN4AfDcOrgZvXQB40xV46fq5dPs9AONKXaK3cE8
	Yuv7n0LQHT1rLRCgFGrz7lgp1cQBgGa7xlSynC6KGEZZn84qhI+6ftYxEWozH3GfptLoNgeAIK9
	Zfam7Nj/LoGf1pM9dp8zMgwos3RB04CxtGj8ubXhzXMw6Qyy4jaZ7ONgGcOoxnIFiDzf217vH5K
	PCvMPON9JmH4Ul5JNIjNzclMdJkwIqxyMlRzSIIqBE759FybB8vGd/uMlubsO/Y4qfocF+bGTJx
	Xp18U=
X-Received: by 2002:a05:620a:46a9:b0:8cd:b2ce:2934 with SMTP id af79cd13be357-8cdb5a330c9mr1737992385a.2.1773755890910;
        Tue, 17 Mar 2026 06:58:10 -0700 (PDT)
X-Received: by 2002:a05:620a:46a9:b0:8cd:b2ce:2934 with SMTP id af79cd13be357-8cdb5a330c9mr1737988785a.2.1773755890403;
        Tue, 17 Mar 2026 06:58:10 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6eacsm762134966b.14.2026.03.17.06.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 06:58:09 -0700 (PDT)
Message-ID: <93b27d10-26cd-4f5b-8571-da965f997ffc@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:58:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru
 <vvalluru@qti.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-1-8195fa931ff1@oss.qualcomm.com>
 <8ba05ebb-d1d8-4d58-91f3-554f3de7dc20@oss.qualcomm.com>
 <ablcwpT3BSnT9+In@hu-vishsain-blr.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ablcwpT3BSnT9+In@hu-vishsain-blr.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WqNzbr5AdKFGxDFfdfTLJ3Xd0DOg0YL0
X-Proofpoint-ORIG-GUID: WqNzbr5AdKFGxDFfdfTLJ3Xd0DOg0YL0
X-Authority-Analysis: v=2.4 cv=QsVTHFyd c=1 sm=1 tr=0 ts=69b95df3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=zeNy_F3JxkFpdNDQXxAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEyMyBTYWx0ZWRfX99q98wtKTgVu
 8ltq/JfVCEi18yUl4n0/PUuVdFPZetO3T+F7ThIjJIwEQsyLfSenoW9maOHSvYGK3j4o3rzwB7E
 w+M1X3DyGCDkt7ktgMVFjuvxlsixY0sP46EbRWzyYj73jeexm9VzIURAdV46K9AfQ2WYcu/GRxX
 c3GVTodhu7dlkgE0Zc1qkQyyC56htCPWrvSLjI2GGVyjPmDJ5qRZxyQAU97T3ilcXNrG3q1U6SJ
 GZq/nQEIljPgPBpzh0NH1dep7qeX+AWu/bN1+EsjI7ybhBdEzf4Y6o46/alGqRyflhYW0o6qjFS
 /9qbGYw/G8hKcGDDchdwswpDWIWunJk5NsK/4WpAbkiK7UAPtbhnNo1iHxHeCXtMvyP5VMtudf+
 rK3qzMRZJQAP7YfVR+pPr1GHJpPoFLMhBrMCW6/hVsoM7bj0p4NTHO0gofF0OSg7DuBWNhVKJPp
 WYXvBrUUu5T/ijVbqtg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170123
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-276709-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9B6172AB51E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 2:53 PM, Vishnu Saini wrote:
> On Tue, Mar 17, 2026 at 10:22:04AM +0100, Konrad Dybcio wrote:
>> On 3/17/26 7:03 AM, Vishnu Saini wrote:
>>> Monaco-evk has LT8713sx which act as DP to 3 DP output
>>> converter. Edp PHY from monaco soc is connected to lt8713sx
>>> as input and output of lt8713sx is connected to 3 mini DP ports.
>>>
>>> Two ports are available in mainboard and one port
>>> is available on Mezz board.
>>>
>>> lt8713sx is connected to soc over i2c0 and with reset gpio
>>> connected to pin6 of ioexpander5.
>>>
>>> Enable the edp nodes from monaco and enable lontium lt8713sx
>>> bridge node.
>>>
>>> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
>>> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
>>> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
>>
>> Subject: "s/monaco:/monaco-evk:"
> Will fix this in next revision.
>  
>>>  arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
>>>  2 files changed, 95 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> index 0b26cc334a69..0ca5615c996d 100644
>>> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
>>> @@ -52,6 +52,30 @@ dmic: audio-codec-0 {
>>>  		num-channels = <1>;
>>>  	};
>>>  
>>> +	dp-connector0 {
>>> +		compatible = "dp-connector";
>>> +		label = "DP";
>>
>> The labels should be unique, is there any silkscreen or similar that would
>> be a good candidate?
> yes, the connectors are marked as JEDP0 and JEDP1 on the board silkscreen.
> I will update labels accordingly in next revision.

"DP0" and "DP1" are fine too, and probably more obvious

Konrad

