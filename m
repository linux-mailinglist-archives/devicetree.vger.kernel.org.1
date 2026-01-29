Return-Path: <devicetree+bounces-260877-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gB0mBS5Re2meDwIAu9opvQ
	(envelope-from <devicetree+bounces-260877-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67664B007E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1195E3008A53
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B185385EF1;
	Thu, 29 Jan 2026 12:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RENB0jQN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ic4+Xhgw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0509C37F8B1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769689387; cv=none; b=GxS6638ZdRGOC6ljMXEf8n/J641ySZ+fHlAaHd+ZONwjsXLw0tkayZ2z4TxxMA0uLnSiBmSinXMgKDpau3Yr82cG1FQ+W+V9hv7l+27RGqvaCoqhbMdp/aDzLhfBcHThidwghzqDYgQzmJzqiSTAmlbSfzLC4d/pTCpPElVCAmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769689387; c=relaxed/simple;
	bh=jdbH00HnNju74dBpAsXf7ufwLvO5prtWz5fSqnJYxcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qf/w3SNPaGmCfKoesnWUUVvsV00VAgsLg1KZ/kjQXzwkdT/RLKsicbixKuucbFqBzZhU0BgFKJOmKqCcpN/CCBNvIY4tzmgwPRqyGb/T7cQjgStEjNOo26hUgo4VA3FtSTaz150pdXTStHm4Fwwyv8Z1/Re4dk7C75E62d3A044=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RENB0jQN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ic4+Xhgw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAHDoG2033220
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:23:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fLts6ISuue4uiGMT8/YFzy9kgsEvBZLokoaOLt1tYBg=; b=RENB0jQNan7XNKgf
	eyF8aSZ01hBaxySmx8WIC2trIEL/ATD7/lVY5PJhFqE0XWRXw3bxCWJ1IzA6QxNj
	WleBXxBEuRVsencj8XsgiHekt5wkvfMeNfPds2ljHp3Y4Xt2Jd1sGkxZlA9rwab/
	QNpG2rFdAQA1RUwMKOsieLyw7o3SGYoJBV0y2FcZ7dw/UtSy9It8CpMcnisYEk+K
	u0H2jhvpg3BEcshgiRg3jUtM1W85ykxmBsES6qbMclW58rOKXDIDzAxs8UtJIbqZ
	m/tzXb7RPsNS7b70I5UrpmdI3bAbF5HzcQT/LhfFAb8ydNqtfDBSbdgMbZFaJrsV
	B7mjbw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bytqy2ddb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:23:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-894662cba4fso2606016d6.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769689384; x=1770294184; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fLts6ISuue4uiGMT8/YFzy9kgsEvBZLokoaOLt1tYBg=;
        b=ic4+XhgwgQ3p/wLT8van2jgqwGmKQ8qCFLwadh6Ysfhh9/afmkuD7flMSlfoD80ygl
         f2+hakyjK5AJ0ipk0+LbwUKw84Mh4ZvVLa5wjgU2VWvtvnZt1oIgKiq54PUpC5vVCkCw
         yT6ifoaPgrb1kli1U2SEZrdypLRSH9vGVsssYQ3DdEGYPTfr+bLP00v9RMNlTd08ZADb
         EvMSvrKhkHnt+j6/3ASXxrJ2qvvvOC1Kh0GCH+4Tf+iPXZ2/8AFIQs7015yhSmUBzk4D
         jgBXdvbSishE4NKvKKQIndFoqHBudZCV76UmL9mebythvATqpEVS2gJD1tP512KMuHuB
         /PVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769689384; x=1770294184;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fLts6ISuue4uiGMT8/YFzy9kgsEvBZLokoaOLt1tYBg=;
        b=Q/50AvazVTjZsn13Q8TdajLoDjKCVsl+HKGEva2k5jmsnUh+1bkbViYuneDqfbxSCc
         O80fiFWylsn8HRs3zSUSydUlQrj+L5JgR/BJ4WiFsAOiNxOZkxwNSwVFMnkk0HJ7IJa8
         yoDkKXYNlyUU5KYhtSNalPZv+qry+X8Md6MNm/btxii/w4u8RN3p+BDUavpzVanmg03D
         jcvAsONHXooj3Pzfz/iBwUmLLgGC5QAsCNI4DhR6DhUoFm1SnEphJcTdJqaUiAZwBC8q
         RklrqLtAi/95xbJV7UB5MVw4JkHs9OF6u9VEGwTAuBW+4+E+N/bT/CMtRYP9z0mf2sRY
         Tlqg==
X-Forwarded-Encrypted: i=1; AJvYcCX6v0HMWqi4ILGO0HSYWXTyb02h01kVLEevPItkbvHRZOcjEM5XmGX1wBdcBiuprZ/DIhw2+cOPvmFI@vger.kernel.org
X-Gm-Message-State: AOJu0YwJsgvBk38pdS4dpvrIWZKVRHT/569vyVwHrIOkSNRnX96LGm21
	Yb0Ib9VCknqA/WVt3N4dnmcZqLgVh4mkjGkPgmBj6PFh01ztTTCqfgQWBBRO0upsalyq0wQrSYn
	NVC52CS/RHrAkmYe8G5b+OLfi4yTNGu7eSxqno9hkaDd1aFNu/h1tNek00GKhypCJ
X-Gm-Gg: AZuq6aJiAms48ppKbeQ37CBlgZZg+t/NEeE1tD7qubPqVlW4ZWvxUA9/WfnQyXEY41K
	f1K6zwsMXvNKYpya0u0FI7JTvJf64cMDnpHey/3uTQ7zKcz+PAu6NxuYmnIQdtzhwh+aRy7G7Gm
	hYoLID8AjRLGiEIOZ7M1dPKVggAlFvwruW0WWee+i0sw1nOSVjBAjKYIlmgMewInn70GkLe3UhF
	yC8koHSufAzR3lO2sLrRJfHk9s4IxRkD2pPs0YPDaZwgwVjjlKPJpGs8uI3vlLX9Iz6kqtc0WeM
	KOkPmURutXT4uRVbR8o9NCv8ZxYAYBy8dOJNVesB16y7TaFcejpbVfvBfddg5vhPWIvQEuF/SJ1
	hJXfsNBDv1fqkdZ3xFgIKFlcbePS23kBKv8nivDjJ93QJyDMLgfe4Uag9ezXMIce6/i4=
X-Received: by 2002:a05:620a:700b:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8c71ac32e95mr362599485a.1.1769689384244;
        Thu, 29 Jan 2026 04:23:04 -0800 (PST)
X-Received: by 2002:a05:620a:700b:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8c71ac32e95mr362596885a.1.1769689383816;
        Thu, 29 Jan 2026 04:23:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4256a35sm2829564a12.1.2026.01.29.04.23.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 04:23:03 -0800 (PST)
Message-ID: <c67b801b-c2a7-4546-bd31-c3291b690ba1@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 13:23:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: ipq9574: Add gpio details for
 eMMC
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
References: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260129062825.666457-2-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260129062825.666457-2-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA4NCBTYWx0ZWRfX7hg38yFX3zgV
 BAklwvTAAQYV9VgbHC+ltrymKObfOy1bG4+ZGwoNWhB+uQpCLOCqXao5Mjmav792MNDIOzoNJTF
 oXBjXMxWuq40lIB5zOUzurDbUbQGVWvyuS0VKxuJrPnUckmPk6+NcDlv2ji3puDluK1eXg6GMuV
 V+nWWDmR8lYmtGyHovCoKi1I5tDMJox3j3GbLSZUI+lWOXIeowrWGisGwhyExhzlwkqITYaI7rj
 Um5cLLDMAqEXQ8L2lU9mv5BnENuloew3pGjZw6H6RFKYW8OE3HMiti7dFs4jOb06qtXdJfvh9Po
 31EhxYVxnw0PR2ypBLzvuquflk3HRFpYDTMg8+zI8+UFGk2+sWk09U94JZ9RdtkXgKWr83YBPbq
 IK6t3NtLkhHjEUb79muOsCIosWhAOc/HkCZRW/sEUfgNOEIef80tHr/Oj3Y+eFrFWCh/kZMUbzz
 ik8HILdP4wcgRTo7t3g==
X-Authority-Analysis: v=2.4 cv=Je2xbEKV c=1 sm=1 tr=0 ts=697b5128 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=aDU20HDKTo6PiRKR8JcA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: Zoo9QhrmPWGhsoa_srpEAoabET4FrS1L
X-Proofpoint-GUID: Zoo9QhrmPWGhsoa_srpEAoabET4FrS1L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260877-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67664B007E
X-Rspamd-Action: no action

On 1/29/26 7:28 AM, Varadarajan Narayanan wrote:
> The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
> supported. To enable support for eMMC variant, add the relevant GPIO
> related information.
> 
> Do not enable NAND by default here. Enable it in board specific DTS.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
> v3: Disable nand in ipq9574-rdp-common.dtsi and enable it where required.
>     Add 'Reviewed-by: Konrad Dybcio'
> ---

[...]

>  &qpic_bam {
> @@ -179,7 +211,7 @@ &qpic_nand {
>  	pinctrl-0 = <&qpic_snand_default_state>;
>  	pinctrl-names = "default";
>  
> -	status = "okay";
> +	status = "disabled";

This part should apply to the second patch, since you now broke NAND
for every board that had it running previously by disabling it in the
common DTSI and not immediately overriding it back.

This must not happen, since it impacts bisectability of the kernel tree

The solution is to squash this hunk above (not the addition of eMMC GPIOs)
with patch 3.

You can also drop the status=disabled in common.dtsi, since it's already
disabled in the SoC dtsi.

Konrad

