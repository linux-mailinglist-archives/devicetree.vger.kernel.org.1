Return-Path: <devicetree+bounces-275890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oArUAxRit2l5QgEAu9opvQ
	(envelope-from <devicetree+bounces-275890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:51:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51908293A9C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:51:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 213343003529
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9100C2417D9;
	Mon, 16 Mar 2026 01:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d5jdMSAi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JuwNYlVr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57295188735
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773625871; cv=none; b=e9mtxdgBoekCG4fVA+1acqF3hINrv9Mm52NoIjTKwCpRvpiCOZNwQQsY7G1pGnu9HyH3GzK9ICPiJfRmtbFJCtMnodu2TMYROdnkcmvrPaxFmqpxZDQLhxB2q39T4pc3+cwkC4ovLSZaVOq3GYyemeRiR1MWzTblXNnFf89v43A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773625871; c=relaxed/simple;
	bh=X5A8/9pdjaDPymjKNoc4a7PsRTH9RZ6+m/RVS79tNQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H3g/Pvj3NYsENfPtTmta3C5ZYgIT8EFljvKZoKPbQTDQfC1V4osq+ewZwmQCKXCm4WKhrRFRindViAVHdOvFzhl0r3+CwUdLIC9O9mMxY3oIGrVOjJI1qcCls+jmCh6lMLbtBHPS83EZYjfjyxyfYIjsgVEVGl3XvRCAUjxs+4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d5jdMSAi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JuwNYlVr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FHabZw3924538
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:51:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Chyyx58qykqbbM/NbZozHdwyy5DiINB753rlDMdCFiQ=; b=d5jdMSAiK1ZVC3fW
	KFGxhPCctBEy6wMCuUwn7ht6XPH+scXsUC6K7IQfytA1Sglu5pl0HaMuAqYQpLMN
	Dn5zupR57+35iFOHcAVqW9BS4qclpaZsSQ0t2qsEwHzu+f9rg69+IGs1SbouRl36
	SV5Cffnrm1v3Vohjs8NY2nfuLq7g4mdlx/LhrA65LkjEt44+1rfku4lkyDOTKLfM
	S6SGDuI5n2iCHRU0rLWgduEe7NOci7YcuT0ZsKt32ZoYyhsJ1P8C/bycb6jiH0KB
	IzuP/Dd34PP+9SmkQ9zOWL6iMrid+C0RFe2RTkIE3Xusa4JiVJQ3tu0oOgcLwTff
	9+I61A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc3ma2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:51:09 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358df8fbd1cso4589960a91.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773625869; x=1774230669; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Chyyx58qykqbbM/NbZozHdwyy5DiINB753rlDMdCFiQ=;
        b=JuwNYlVrYml1scf0DlizJGgkWSPDpShR4dvMsF/RIT5anyOJo7BqqL436QydqvIRaY
         pKlJHpyH469gH9ZuBbLZ49gS2jM4yFI05Tpn5XtvykcUc0sxUoP03yqMRT4uqvbxJ9xe
         MoQs9xfM326g1GnzXMj4SRnGceC0GKzStZYlZiCV2SxH7wgsfC8C2s5jYgipfyupSReG
         u/FWg/dIG5vnJrGpFj941BdfjxDOHrdGD85qdS/7e4Q40FQHE+dQ6vdDckvjdIb6poi4
         UtkfDu8ncZDlgh7CTACRf1EMPcoAfF3T20J+kZQTMf0Hy1Arl8p0aui64wF29EArVwTl
         C0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773625869; x=1774230669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Chyyx58qykqbbM/NbZozHdwyy5DiINB753rlDMdCFiQ=;
        b=mo0mUiT/V0eh2l/UlcT/ZY+Qj7AVJkbiUBmaqdgnYCVIOfLum5OQQBO7XJgFSm+S2h
         tsIh/jXl8FNHC0L+KJoyA3XsXeBGAfUNeFK03a7aGpxFj5REtO9+PM4UOBcFqkPDNJSB
         RDkkWc1AW3jJ8A2AkSQqnDTM1Qx26OO7LR8PsxboN4OF3BtBQmwYp61RfuuwbZsmXapM
         jMHpfBK/pMcuSGPDj/ppJkXiYhthCTesOhztaAnRIszUVSueTg2XNWgqm5DREPX1B6jY
         ywysVqW28JStguiY3tKgdxuRLLnLrpGwtR1wVfs51myX7HXE0OFZIC7GIQMUarbtoRJP
         kFtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkxdP8bjcESlbqN3dM6mOwQBeP07pzZusUD46UIlhreC8isg6bFudCEnWzFoIHK1ldpdO6P5acMgKm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo+d6o/1tcauheAszHPOgxdt/ZQS3y5TBix40c/z9zn3AtscjS
	JiMZw3C3veazgXH4oJd8qcz1eiXN5ZDL/CuVwLAwyNIGyDUsIjPjkWiaqoGg4WweZjNyRc9Rm5e
	qpJrjFLwW8IdBEmY+s/HqAIrBSQwAo5ai/opVV+FHjeLEcyOtvGPgQzBb8SssAVlG
X-Gm-Gg: ATEYQzwYCpB/fpCofb0OM8gYC09pi4n+MICE8K4gbPynVoJ30UdN/Rz6G+/JTq7og0k
	bzL5uOZvklJX9f/Z/A6CucVfobu+l64fFQc5khZ8fMXmgCAIORvxEcBb8pJ9FBhgOX986Jb1bkP
	wHUfpa6/KaM1FxFoYRKUnbilKLZfh+yGlaHAQogk/IIDXeQQdkRW6wM3zsxL+vbGkSMRFRu5Bzv
	DegGy8E8fMXUcU7A96JUBx4tC34pGBzWRmjXvX71eMqh+6aaDMzXrIqHhELAoiONIcgTdjXPs7Q
	YhlNAROtD1G33L1cv/Z+2eSzl0PJmOXvkWumiomgt0Cjah3kD4wVI+YOQexELLLnOA2iY7HPY1H
	SIEvGPaeC0NgKZl01VsqKKfMgt5rZSmMssVhpUQtSgGDrHFACG4OviuIZoKSM+Pf9iTmh4iqFvZ
	x01/G4qvXpJl4=
X-Received: by 2002:a05:6a20:3d83:b0:398:6461:6879 with SMTP id adf61e73a8af0-398ecd9770fmr10646402637.57.1773625868614;
        Sun, 15 Mar 2026 18:51:08 -0700 (PDT)
X-Received: by 2002:a05:6a20:3d83:b0:398:6461:6879 with SMTP id adf61e73a8af0-398ecd9770fmr10646372637.57.1773625868109;
        Sun, 15 Mar 2026 18:51:08 -0700 (PDT)
Received: from [10.133.33.137] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7402214f21sm2046131a12.30.2026.03.15.18.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 18:51:07 -0700 (PDT)
Message-ID: <80b8ef5f-95e6-4c02-8a5a-07295d0ebaf2@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 09:51:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Enable CTCU and ETR devices for multiple QCOM
 platforms
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
 <545b4ebb-2c7e-480d-80bb-5e08dd3c52a7@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <545b4ebb-2c7e-480d-80bb-5e08dd3c52a7@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b7620d cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=nTQ8HVyESOUA6E9D-IoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: yVqXtJp_TekX6ouw_48c__l_DsbzjqVk
X-Proofpoint-ORIG-GUID: yVqXtJp_TekX6ouw_48c__l_DsbzjqVk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAxMyBTYWx0ZWRfXw3kY1U8512V9
 jiZmkgbvrKbsYIVjUEF8WkWbqvfUQqUJyO1wmgaGSkcBfyINESjqxB/s3qRtBvh1gKqLlevraAe
 8IjjaMdPCAQF+krPiGhKs0G4Hv05Qq1CMWwyE7BATnHrO1szAqRUxt7znfX6TTIBvPJbXJ08Af1
 Mv/XjdVwJlfUnMqQFvt+4PmLd5Da8/8+qq3U3iGhn00Ok6meOTnp0IoyeOg9XbhWnrk2dCBWCfe
 WvA3cGeyR57HAhM4ssn57PuGAkxJDR5VC5SR4UO0zdnLNimyhdF1iJcGOYI+eSKurQDGwQrAnAw
 oHr1y6yDe2h1fvOkeui9I7LVzge0+XRTmXPVtIxbHPrHgG2EJOcxeHi+KvL9gNagBv26TAFGQzT
 OrYzgSARJX+6uTDMsHihfIAC4StgO0ivD2LGrlJjPCXFPRSfHTJLgRJBHCqrotgwWrcxyZOM5um
 hm7T45t6r6dV8zBfSCw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160013
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275890-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,arm.com:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 51908293A9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/27/2026 6:10 PM, Suzuki K Poulose wrote:
> Hello,
> 
> 
> On 04/02/2026 02:22, Jie Gan wrote:
>> The DT‑binding patch adds platform‑specific compatibles for the
>> CTCU device, and the following Qualcomm platforms are included:
>> Kaanapali
>> Pakala(sm8750)
>> Hamoa(x1e80100)
>> Glymur
> 
> Given this is predominantly DTS changes, and there is very low chances
> of a conflict with the binding yaml change, I would recommend this to go
> via soc or the qcom platform tree.
> 
> For the series:
> 
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 

Gentle ping.


> 
>>
>> Since the base Coresight DT patches for the Kaanapali and Glymur
>> platforms have not yet been applied, I created DT patches only
>> for the Pakala and Hamoa platforms. I will submit the Kaanapali
>> and Glymur patches once their corresponding base Coresight DT patches
>> are merged.
>>
>> The Hamoa‑related patches were posted in a separate email, and I
>> have included them in the current patch series.
>>
>> Link to the previous Hamoa patch series:
>> https://lore.kernel.org/all/20251106-enable-etr-and-ctcu-for-hamoa- 
>> v2-0-cdb3a18753aa@oss.qualcomm.com/
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>> Changes in v3:
>> - change back to the numeric compatible from hamoa to x1e80100.
>> - Link to v2: https://lore.kernel.org/r/20260203-enable-ctcu-and-etr- 
>> v2-0-aacc7bd7eccb@oss.qualcomm.com
>>
>> Changes in v2:
>> - change back to the numeric compatible from pakala to sm8750.
>> - Link to v1: https://lore.kernel.org/r/20260203-enable-ctcu-and-etr- 
>> v1-0-a5371a2ec2b8@oss.qualcomm.com
>>
>> ---
>> Jie Gan (3):
>>        dt-binding: document QCOM platforms for CTCU device
>>        arm64: dts: qcom: hamoa: enable ETR and CTCU devices
>>        arm64: dts: qcom: sm8750: enable ETR and CTCU devices
>>
>>   .../bindings/arm/qcom,coresight-ctcu.yaml          |   4 +
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi                | 160 +++++++++++ 
>> +++++++-
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi               | 177 +++++++++++ 
>> ++++++++++
>>   3 files changed, 340 insertions(+), 1 deletion(-)
>> ---
>> base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
>> change-id: 20260203-enable-ctcu-and-etr-31f9e9d1088d
>>
>> Best regards,
> 


