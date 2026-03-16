Return-Path: <devicetree+bounces-276145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHCQM770t2mfXQEAu9opvQ
	(envelope-from <devicetree+bounces-276145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:17:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4731629953D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96FD83033392
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E385E394498;
	Mon, 16 Mar 2026 12:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KM9DwDOG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TpmY4T22"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2914392C20
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773663075; cv=none; b=OWVP8OylSiH6EUsaCHuSElQk+K+8Ugb/pFiZXMhl0ttHXrme8CkLAnrVfiWg+VwL+IN7hlKUvhOE2I0S4hNNi8T1wv23OMWpNmcLDwAHOUPzTNJjpbliIQ+1uBu7M9Bo+OAuFDDjgNAqOAOUCoYrLg5Z8SUFJK9PRhOmabVFPfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773663075; c=relaxed/simple;
	bh=NxXY0d72SkiS6Oc7GTCFcEEab/BJYGpDRewiFAEVVwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=refPtyIAeePN5fSm7JcyIb2oygH1qCa1VDhMhmMMDLgBlNthXXhN2dCBKXLoEYYy13vAR2Oiedl8ydynlqa7OeGrwAcDn+MwHxPylOHaubUqYxirivnzsSnhBXo6OlC8MmdKaI0LgOkV/Cw9UpA63IPlYKlPkHOsThJVmBAqNi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KM9DwDOG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TpmY4T22; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBislu2672139
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:11:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uVnFLxY02QmTpqpWBL16NUJ30Td9Q2ohUeIU1Y182Lc=; b=KM9DwDOGvr4A6p0+
	er3+5s+85N3XkGRWcK4d6FmwfxNhIf+CZVEHGy0FPF0+IZqg5bzeU7DGXK9xzE4B
	LQCy03Sg7Ejp36j5jaBn6mst0UNWyjhB1jHcSnl22kBE4f8PqdGsH5C6tBTdXLXS
	dGWaCW3gRJ8bop76kgHAuhDdfnXc6yimX8vlozMysPl6HV6EnPgE0goC9zBHHdXg
	b0DVLqqgIG/mZQj3ZtdpZ1zIrU3lzTRzxj9kLnA7HnKpevm/zpf46/5AOfw4e0i4
	GLoR1eGaNXPLuDTxLh6kffWM+NY5+0wjWHbB11dRVF+KaN2H6F0i/CkrT5M3eF3R
	azxbfg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03xnqpg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:11:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-895375da74bso38787116d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773663073; x=1774267873; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uVnFLxY02QmTpqpWBL16NUJ30Td9Q2ohUeIU1Y182Lc=;
        b=TpmY4T22WApQrnmfUmwmI+AIjOCL1Q41FXGGVIYJl2CG/ryZHuHyYpcrwsQ4mlwKqO
         Qqr7OqFlXjgAHH/7Lv1n4zcPpbwWQtsWP4CH/fBOKiNWpBTwB2ogb5tW65VfJ5HwcsOK
         XiOeyNQtorHPCzUwAYl1AEDDnWlOuFSgQ2DwE+x7vP8MwF2W1i6WiWd2ctSupT4DrItj
         fqmi8xg02FEukDcUfJ7lk2MZrN70U23zp9qcm3qOZEZ+sgQv9YunAnFOlvYv3jbOYJO/
         WB9in25KJWRi5VcyffJKx054/EzTUZ622aHfMyfqj8MSfwZa8t5FBb94bmxG//VbQdqD
         kNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773663073; x=1774267873;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVnFLxY02QmTpqpWBL16NUJ30Td9Q2ohUeIU1Y182Lc=;
        b=eNCwd2GcvA7nBgUJPs7S17h5Z9JLS4laXcdxIzokfK91H3ROeMK/Fz3JgGD+bwyQyd
         83ZltNPh10L1+zW+d+iESdJD8ajAK89cxJXUkP7GvEZ4EXNs7GlnDcXedOl0bZxH8Cqk
         AzfM8vekxGuuywn4DuqHkZhe40F1Jq8Tyn94yrLKLg6XxM79O4PujlDI+NB64TZOMwjt
         vkfgSID9PytMRjrwXwQctOeL4ODj+1CKm5V9wxQU0a/5EXMKyWHQckMx1NUFgrdxHuA/
         KwqhsCUnowMGEvEOwnXkuBDUcwUjD0J+54lbQpakorfOiCi6pOHos38LRz6MrameQ3k3
         QFLg==
X-Gm-Message-State: AOJu0YwiXvhkarSprYRUgcA0FYR+Uj1ikVLkwDWEdqylR+aseyuYIbV9
	oVcsh5/DCyPX/IKVcPqEpYiMi9/oW+4pDLI0iDJiPBVRrEHOoHzjznBZ/0wn3efSYi3Nyd0TaU9
	yoVzHpkn612/dTO9LrATccsdCWo6HgIVFQdV71bMBSzqFWdxJ4+PoxgEY5WWv+Glb
X-Gm-Gg: ATEYQzw8s43RO8MJoAZjP2gZ4PIrgrco4zTTfmcL7GTu6hD+hXb+aKN6UHyk1U24aAT
	HVdCl15AOisYNGulAh13koSzi+KS15AN0bYoyyGdxhWZekuTk3e62JpOkyJwIgKcsh7EQ4LrOKK
	ym4DKYVnjKrjkf0kR73GnSivB+UUd8+uU/ipLRvDv0ZSE+f/eNZ+wNt069WZWd0ePvCn8EmQzIi
	uaTQqAU+JArLhFxWWe/9cdrMsOQTcAGsiKwtsjPPb5GV5+L8UaRxbkAEKSGvKL+tHmGcRKL+QmF
	dk3BcwgnWPlpAQz1JwZyLqRH0CDCrFZtw7H5xREq9F15v9UGSAYptmUmdL792Hv2QS2uhu7eDsQ
	UEefjBpvioFFILP2NmXkQ1//p55Tq7d/8aJVcl0ezvAmp8HVcftxW4+/0wXt8zUGHhWwXTzs2Zr
	0TJt8=
X-Received: by 2002:a05:6214:2b88:b0:89c:5135:e369 with SMTP id 6a1803df08f44-89c5135e71fmr36740066d6.3.1773663072994;
        Mon, 16 Mar 2026 05:11:12 -0700 (PDT)
X-Received: by 2002:a05:6214:2b88:b0:89c:5135:e369 with SMTP id 6a1803df08f44-89c5135e71fmr36739586d6.3.1773663072538;
        Mon, 16 Mar 2026 05:11:12 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978580dbbcsm475135566b.38.2026.03.16.05.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 05:11:11 -0700 (PDT)
Message-ID: <ffac14ca-0220-4fa4-ad55-a3acd354a22b@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 13:11:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
To: adamp@posteo.de, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260311-wiko-chuppito-v5-0-0a8656cca1b3@posteo.de>
 <20260311-wiko-chuppito-v5-3-0a8656cca1b3@posteo.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311-wiko-chuppito-v5-3-0a8656cca1b3@posteo.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA5MyBTYWx0ZWRfX1/zldfRXZRut
 hA87VyZOHVwpkmGlF9Y8pYrE7fgXPrY5WT2jBC6u0ElqIGqdLLj/kPP08LYD58nBwH1y2TqleCq
 +k5DRxFLJBUDUe3WrQsD+OoidU7g8HT/6uN26D+UA1dPSWvmXPnokZEqxogMUBJq2xRH3Obt8zm
 ac+74mqMJOg/nVgNWrQTAbZWiupo7+/QaJqQfcdLhzOvvUT16UZ81B4Se6MtyBNcrLohGsKjITn
 4K8++UULOh7IUDw1gmgRmxAZ/KY+Ei7UJHry0qg+pZ8oqTytQCaBCtzgiiQnAthotmUoKDC/1wC
 MGY73R9t1dRPpUxgRqzxwQ0QbwOkGICcK5m/RREh2b66WngzTNVAYbStsq+kooxf4U9s8I2sP4X
 LdgY3qa3TAsQWe/XnL6gt68zXGThhWkEgEee8mwwyEmVDz5L46fIdUThrUP8ixr/Vz3P2g5xmSe
 Pd6clC1SqfuKifQecfQ==
X-Authority-Analysis: v=2.4 cv=YLOSCBGx c=1 sm=1 tr=0 ts=69b7f361 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=CvpffSWD5qBmFRTzRFsA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: DROFQ1RtOQTQSriOgpfGwLiR4dqe0tnK
X-Proofpoint-GUID: DROFQ1RtOQTQSriOgpfGwLiR4dqe0tnK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160093
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,posteo.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276145-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4731629953D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 7:46 PM, Paul Adam via B4 Relay wrote:
> From: Paul Adam <adamp@posteo.de>
> 
> Add an initial device tree for Wiko PULP 4G.
> Includes support for:
> - UART
> - USB (no OTG)
> - Internal storage
> - MicroSD
> - Volume keys + Power button
> - Touchscreen
> - Backlight
> - Accelerometer: Invensense MPU6880
> - Magnetometer: Asahi Kasei AK09911
> - Hall sensor: Rohm BU52021HFV
> - Proximity sensor
> - Vibrator
> - Earpiece
> - Microphone 1
> - Headphones
> - Wifi
> - Bluetooth
> - GPU
> 
> Signed-off-by: Paul Adam <adamp@posteo.de>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

