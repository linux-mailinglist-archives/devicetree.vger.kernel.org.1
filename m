Return-Path: <devicetree+bounces-260734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5bPoA1/3emkAAQIAu9opvQ
	(envelope-from <devicetree+bounces-260734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:59:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53283AC1E7
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7751730057A5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E585369205;
	Thu, 29 Jan 2026 05:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9VHpPWK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c6HJnP0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B02367F5D
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769666395; cv=none; b=oVnlLz5ZofqK89b2h0P29gPtJI4WIJ9gh3w3rQL0rEwvTwpeujQACLLclairFaOvkfoC5hPJxLU6m7b+ZCnNhK0caZabt2vjcq1HmJ4xyElZLcnlxZ4/3Luv0M8G+VkQTmO8QFs5jwYm+fIZv79YWi679Z2BOh7jYNHOV6KXANk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769666395; c=relaxed/simple;
	bh=iQIRxC59jsCtUUev3q4ukw7SPqloSvC2P9snWv9dK8U=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=rGMFENm073IReZfccEtutu9wVHfPMy/XOSHOEL9EmD07vyWqVX11LbY/aW1Qx4Wf+CLOtULpgNRgqwKrJaZxMInU7kpjJi93NxXKUp4DBC7ZeXZgHZ8WrOBJmPjfm9T6LH3U1uan9HL/ILOKr+XRhsTxOk83T5SVwpc8m9JGgnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9VHpPWK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c6HJnP0v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2ouoT3144395
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bIAmugmdeE6Ey5gFhbPBTRkR0fme+bf1kupAQ5YM7yM=; b=j9VHpPWKYnLVo7vl
	k0NdKRcdbD1Nhty66HpVYlkOIO54ugeVmsMOnWXVsdFqEp7hLfkDzyBbm2kqx/QH
	27AP4BYmvI6e4xZ5gpsZJ2nsDvNyNdQKPGzBfRIUzKH8olVJzPMwbBOfX6sfnk26
	F6HqdoOKG9doeti1gbS5MXHDjll4wAfSEzTDHDrxYqModtaJwdee3r8OZXv/2a3f
	pvSTbzMVnwU8CBYLKlk7lBV0YZba8Yd6Z+Uy1WxzoHxc4WK159gSlJihsXov6ND3
	/81BNPRtHzn3TG7RzEHJ3oWeOYzfFtJNYqCA+PPWqP8hoNUo4QW4yTgQLrmbML9p
	/DJa0A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byqpxhquc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:59:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0d058fc56so4601815ad.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769666392; x=1770271192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bIAmugmdeE6Ey5gFhbPBTRkR0fme+bf1kupAQ5YM7yM=;
        b=c6HJnP0vCFhIpc65uN295Dmj6llNtv8FEAU8x0UkiaIP5Qh/D+4tyPrG/ZndayBsBh
         3g1bLxUNBKGPTezMirLA12juyYGUlyh7IRlBHCoe1ELwemBrtVRkS+JeE4HZYVxbtqDR
         GoW1qXAOXKo1tBzzJesf4pPj3eJxVFtx11zu/h7w/lfjJBMKbUb74lOKGr1RLXlRmCjk
         4lvtSr5uDdLhi+bZ1HEvoS+EqpP4eeXpI5xojo16bDJe/3lddixYDhFKaM7bORJ6nuWQ
         TfdXdxFOETb57s5GE33enDVvOS55b7OkcVqRbZcXYWGheud0x6GfNgovDXJYW0TPUcjf
         ViXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769666392; x=1770271192;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bIAmugmdeE6Ey5gFhbPBTRkR0fme+bf1kupAQ5YM7yM=;
        b=oQ//7n+UzEpB9oOGCmTK770J1L3a+OTa/VhIpBZ2eiPfnl6KUar0tjtHGbLrx6KHCc
         UEyyKnAqt+XBpbvKKV84cLU4sLvoHlOMhfRBq1CoVevmMuF6AAcQKg/jpJ1qUmweGA6a
         X/F0t4o6UgeqjBApois3vfHVk2dAmUE0rLp5sSPm7XW9YM3FW4XcaSxmhRZ8oxco1hkh
         5GkPbw4ODms0037m2tcmGHgxEZ/UXDwluLPNsA0v9NwwgzITxUl2WNHxmG1HSeHukvYM
         61ZOO7pfXv6cD2DgtoCkgtdT7O1ef7B42FBIe3PAMF+GCDV0lWiJxyscsbqJ78KkXPHL
         l7YA==
X-Forwarded-Encrypted: i=1; AJvYcCU0InlO+zxozGlRuiJmqr0TJ63GxrDq6smSfLTxIq+D74Ty3cpcTtVQ+uUrLptKbQ+nP8HtSMA2REPm@vger.kernel.org
X-Gm-Message-State: AOJu0YwwSnZaX7kwoj4L0OmD+k1J56y/UgVfDf3BvVScBuHfrueIaJ8m
	8S7aMeLhcWTuAoSOdjCdpFDqDaQg18D8H2FLtX3kIaEN1Ih1DzV8JJFxiRkTsiZ26OyYh+mphan
	L79O6UsgijFgicGbywi0K6b4qQ/zYh7DIXZcQ4tvXwv0EQReI5IfzlB2CNwbLZMhWzPYPlk8a
X-Gm-Gg: AZuq6aKZGjzwd5vMRegCowSxp4/G45Eam9Q0/bVR/5hFrFQcTOlI6sdBz6OYaSSKZub
	DEKwVm8T9vW4sgAX5EmEkPiQChf4feZg6Bix9S/v/qyaFITK7UsyxbXGGgMQDU9nQzGni6UrgIj
	9p2i8wjrHgVv19dSaSw3ZlesBy0HJLWsKqTw+rmfurcTcB8nsb/x86LgUMk8DuE0VbUTYJ99/Nn
	vXZSi9/+5F8Zv/Vo1RiOKUB2gs/HwC5vu2eNQGtVwgp08LtiNk/MbJh3g31FaYJEgzgsAIaKYe7
	uqX4XymPjWWCCJCz905LO2jFedl89WwSzeSnLrNKEyUmtvsZZFbbsiobS+7Q3g4RLOPBYTyl1qN
	wuR80tnUJsa9Sg7aFfN/bLcu3JdkTpd0uQk5K
X-Received: by 2002:a17:902:ea0c:b0:27e:ec72:f67 with SMTP id d9443c01a7336-2a870d59351mr78348525ad.6.1769666391629;
        Wed, 28 Jan 2026 21:59:51 -0800 (PST)
X-Received: by 2002:a17:902:ea0c:b0:27e:ec72:f67 with SMTP id d9443c01a7336-2a870d59351mr78348255ad.6.1769666391141;
        Wed, 28 Jan 2026 21:59:51 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b6ed92dsm41926115ad.93.2026.01.28.21.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 21:59:50 -0800 (PST)
Message-ID: <fdc9cc27-aa12-4b62-bece-8bcc8c680ace@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 11:29:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] DT: add bindings for QCC2072 Add DT compatible string
 "qcom,qcc2072-bt" to yaml file.
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        "Balakrishna Godavarthi (QUIC)" <quic_bgodavar@quicinc.com>,
        "Rocky Liao (QUIC)" <quic_rjliao@quicinc.com>,
        "Mohammed Sameer Mulla (QUIC)" <quic_mohamull@quicinc.com>,
        "Harish Bandi (QUIC)" <quic_hbandi@quicinc.com>,
        "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
References: <20251217112850.520572-1-vivesahu@qti.qualcomm.com>
 <d180711b-7957-4252-b34b-81312705555b@molgen.mpg.de>
 <BY5PR02MB6946637904902544E6767829F189A@BY5PR02MB6946.namprd02.prod.outlook.com>
 <279d96ed-865c-4f15-a67c-ee1a94ea2c3e@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <279d96ed-865c-4f15-a67c-ee1a94ea2c3e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ThQhy4K-HZMb4VyLTod7W7Z8vzFICVm_
X-Proofpoint-ORIG-GUID: ThQhy4K-HZMb4VyLTod7W7Z8vzFICVm_
X-Authority-Analysis: v=2.4 cv=dfSNHHXe c=1 sm=1 tr=0 ts=697af758 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Dei6p5SHAAAA:8
 a=pGLkceISAAAA:8 a=COk6AnOGAAAA:8 a=9EePW-ua0pc5qcVAYZwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=M-Yerj1wOn-OpK7r_3ei:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAzNSBTYWx0ZWRfX4sZ0wrEta21x
 tOhc/M3BSn2h/0hfhJHP1DcuLlwXtYm6W2NukbzLYUSCmntLqaOP5K0FzBAIvzf0DUTG/0tvcs+
 PvqO62cLebq4WWKHJDxrqsWlqPAwCKo0cEbDOlcxFYlrFFTHdjAhDaikXgjEKe43tjyhdyMh89a
 vR9BdriDySGw1aljCKHW8dFKIC1cOZ7s6CZFR8IzeQ2bJ1HvN74iBoCwe0Xj0yks8ZLaIGGOIXr
 57PoNYCmPmUmGpX5GT7rBIzqUISpjtCkgYVRSE2wB13b215mpFLJoUlk4lipI8IP5sU+Ap6QuAo
 PXKesZuKRd+CVwrPqAmbmcolHFZ8A/KsIAZHvMQ7MDrJtGqZyW2U1ppA9y9jhwN45wtsuKFSKmj
 bQmILtqhoDjRG2RWg8+aVom0/kgl2xy3PLlg7M7AJfxij5EVYZUq8gnb5wGBKUufpLyHNsVIhdL
 OniJW3KqBPBRgR6o7iA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290035
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[holtmann.org,gmail.com,kernel.org,bgdev.pl,quicinc.com,vger.kernel.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260734-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,quicinc.com:email,qualcomm.com:email,qualcomm.com:dkim,bgdev.pl:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,holtmann.org:email,mpg.de:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 53283AC1E7
X-Rspamd-Action: no action


On 1/20/2026 3:38 PM, Vivek Sahu wrote:
>> ________________________________
>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>> Sent: 17 December 2025 19:44
>> To: Vivek Sahu <vivesahu@qti.qualcomm.com>
>> Cc: Marcel Holtmann <marcel@holtmann.org>; Luiz Augusto von Dentz 
>> <luiz.dentz@gmail.com>; Rob Herring <robh@kernel.org>; Krzysztof 
>> Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; 
>> Bartosz Golaszewski <brgl@bgdev.pl>; Balakrishna Godavarthi (QUIC) 
>> <quic_bgodavar@quicinc.com>; Rocky Liao (QUIC) 
>> <quic_rjliao@quicinc.com>; Mohammed Sameer Mulla (QUIC) 
>> <quic_mohamull@quicinc.com>; Harish Bandi (QUIC) 
>> <quic_hbandi@quicinc.com>; linux-bluetooth@vger.kernel.org 
>> <linux-bluetooth@vger.kernel.org>; devicetree@vger.kernel.org 
>> <devicetree@vger.kernel.org>; linux-kernel@vger.kernel.org 
>> <linux-kernel@vger.kernel.org>; linux-arm-msm@vger.kernel.org 
>> <linux-arm-msm@vger.kernel.org>
>> Subject: Re: [PATCH 1/2] DT: add bindings for QCC2072 Add DT 
>> compatible string "qcom,qcc2072-bt" to yaml file.
>>
>> WARNING: This email originated from outside of Qualcomm. Please be 
>> wary of any links or attachments, and do not enable macros.
>>
>> Dear Vivek,
>>
>>
>> Thank you for your patch. The formatting is off, and the summary/title
>> (subject) has two statements – look yourself in the archive [1]. Also
>> the prefix seems wrong.
>>
>> Am 17.12.25 um 12:28 schrieb Vivek Kumar Sahu:
>>> Signed-off-by: Vivek Kumar Sahu <vivesahu@qti.qualcomm.com>
>> Please elaborate by giving more context, why it is compatible, and I’d
>> like to see how you tested this.
>
> The compatible string "qcom,qcc2072-bt" is defined in target dtsi file 
> and it was tested on the hardware. The corresponding target specific 
> dtsi file is currently merged in downstream.
Please let me know if above statement gets you the answer of your question.
>
>>
>>> ---
>>> .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git 
>>> a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml 
>>> b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml 
>>>
>>> index 6353a336f382..197248d6f7b8 100644
>>> --- 
>>> a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
>>> +++ 
>>> b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
>>> @@ -28,6 +28,7 @@ properties:
>>>          - qcom,wcn6750-bt
>>>          - qcom,wcn6855-bt
>>>          - qcom,wcn7850-bt
>>> +      - qcom,qcc2072-bt
>> Lacking more lines, I am not certain, but I maybe this should be sorted.
> I'll address it in next patch of this commit.
I just checked that "qca_btsoc_type" enum contains all the soc type 
which need to be enabled

for BT enablement on the target device. There are few places where logic 
of framing packets transferring

between SoC  and Host depends on the which generation of the chip it is, 
refer api "qca_read_soc_version".

Do you still suggest to sort it here ?

>>
>>>      enable-gpios:
>>>        maxItems: 1
>>
>> Kind regards,
>>
>> Paul
>>
>>
>> [1]:
>> https://lore.kernel.org/all/20251217112850.520572-1-vivesahu@qti.qualcomm.com/ 
>>

