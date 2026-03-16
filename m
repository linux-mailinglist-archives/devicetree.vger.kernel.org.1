Return-Path: <devicetree+bounces-276027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIdJNInIt2kRVQEAu9opvQ
	(envelope-from <devicetree+bounces-276027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:08:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D5D296B8F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 64CB2300C6C6
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9646D384231;
	Mon, 16 Mar 2026 09:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QSZ8ENFl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GS9fnrMn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C34382377
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651995; cv=none; b=nR1yuvMNkpc3pqUJ61BFELUgupHS27nc6jfKZ98NNCTPyxEGPa8+byp/ByIH7AuGCy0i+/ZF7lF+RVztzz0cqcX9Bng2Xhm7CLIGiB/9o1lGhXyiYKkLv/U1u/OPNeqWcYe92s1wfVlFeqPVS1LS6Ab5Aef4gCIUt5hXXWMOzuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651995; c=relaxed/simple;
	bh=WSJ1i7xSrurxwxAyDPawNLM8TAMGNP4ffSZ0RFTRNcs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M5q7AFAW+3UX42sIflnscr2qLiNc27B63YtmYLlOmUfluyI/O+tYSaq3luJ2h7N3P6zZ2rrv2mXs6XWPszxpZb+DpVWBG95gYL++zaUOUznSOcjW75PdeoBqAosdTGWjgxDfKIzzTnqopuRq0xPMZQidrCV/7KF/nZ+oD3NtnJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QSZ8ENFl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GS9fnrMn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64fdT744018
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:06:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WSJ1i7xSrurxwxAyDPawNLM8TAMGNP4ffSZ0RFTRNcs=; b=QSZ8ENFldnIVHBHy
	Ysga3vpsptWdsAzDiAKCxPbJj2Ae+wfK4AkfsEyOJ2XTAolErxZX0gkQDkf6yeUQ
	0go6ECSYu6GCD5wC2gsMimKeuSIp9XGJ551UpDRF0KI9OGgJpw3olbc1SrJzh7IX
	nomHxZy6Ohyy+YQW3PfgZ6ci6nY1O2i2deBGwSowlITLyu90ZfyDM9ToTvwCZeFS
	jPxU7vn784U0H4z8R2Hae9RpTPMyP1MUklFmjWPGuf27kVl15XvBrr8fChq8mM/9
	ylaCJJImi/jwxgZgPmqX1fNbcQWIQ8we4GiZN4lZ+IMvtRH0iEBgIrViSsEWs854
	OSG2jQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00bd19b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:06:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b0554888cfso12984435ad.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773651991; x=1774256791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WSJ1i7xSrurxwxAyDPawNLM8TAMGNP4ffSZ0RFTRNcs=;
        b=GS9fnrMnHiqkyS8T+CD/i8nH3EGFYqJzRk6wt5XObS9DsbIp08625vl6BlqzVCfvjO
         gwpoDSlnJMcmyfkRlOnxnsWueLusUGsnaQjAZH9dq9RctH8mXHGmC+I8C2kN2zEfQhG2
         bglncR3ZEXu5QkzIlBLQV8RxdXU1juC21QhVtXFKPG0/l1pRoLHAJ1T68vq+HK2yMhYf
         O36biBceEh1MFtNMPCOYxkqN0KpHSx1xc3KVlKAtDLDqTPgkcrsappSH42L876P+tpuG
         DlOCl8FAAXuXRpXs/GXppMHzF4jkgx2D9mdKM67ZA6ttBDiuUHLsybbSxIzUnrweV9TC
         fuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773651991; x=1774256791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WSJ1i7xSrurxwxAyDPawNLM8TAMGNP4ffSZ0RFTRNcs=;
        b=sdaG06v+OJaY/pcaF1S1Q3TGqFN03nBBTez5WDFseETVRtOinSw9LIl0N9u0gaUg1J
         6P0kquxaprBf2CO4bPC0eZ6ymGFeTnwKpD91qGNyI4dU45Diqq2c1Fw/2J9va3qQ34VC
         /PZtXx5w2dVVkgsRrtPa1LD0QbOkYq8d8ASBUZfGQz6CDYSEpXCm/dCP9bSNFYG0EHuy
         ue3+4F3v1iBSKU738dSReqSTFY5uGyPo8N5uf+08ZHitOK6TM2IUUMoyWYRYyuUd3M4a
         JaiR2EMWMK/U1HIVhYGSiuvoEGI8HC6VkjMDTFGRuZtI4rm9kQqlyjH9tSPM00bc1vbP
         qxGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQhKtwt1tx9brKRi4b6z/9DX8LOPTpGBFbdZru0TA9edGefJrICL0NofOdBLnOvpJN8isLJOKeprwN@vger.kernel.org
X-Gm-Message-State: AOJu0YwZK2uCOlIg9gVO16SA8b/0YWJ5FZjmQjcaCgxI542VoQCkknBY
	rU1IcxZwc4p7+OdUKFup5Jvkl/iG2U8wmbsVarZ+ZIocOVTUCdBZ2RjMzZHxYCCwp3kQQuu9W6/
	30dh3nMexVljArj4G1AdgUom7ankjBOyoBRxEAM/Mg31zlunSAiOc5Kn9l18vFkwY
X-Gm-Gg: ATEYQzwWV3TwcQ8XnaoTnJfFYZvvF2kA1ABqI0UmHfze7psBA45vdy+CA7SgH2IFJPC
	G37d+/TMlDdvr7iGYa3NNCqHUQTj1ZYIJD5SbugRJXW7pjO/NAgJwPF9D0U4juX4QYSwxNMM2bo
	4TEmKR/2PJ1Jt0y5uaFqAj0eDuRoNUeexwOs/C5YBFKRv6/8bxCAU0Ex68rq0wBknfosa31m8WE
	tpYqVfKy4RE10d48owVJIYV9IKcbQGstypmS9McSB6w5PKJeLQT+HaIc5lJ0y/EnoE1RB9phWAt
	cRSKsqahk9KfY+Y0ORtTxtooBIBH0eukNFQZBTf7/Xw7KN0wCh3OdEWVa1bPotJVnQqMB/Anwn5
	uFWMnj7m4pZZdzhITwY704OaGaUCj0EAKDcCYrl8IMaIiyTo5e5o+6Y8JtG+ct9C2Og==
X-Received: by 2002:a17:903:2305:b0:2b0:59c4:e9dc with SMTP id d9443c01a7336-2b059c4ebc7mr23580125ad.22.1773651990992;
        Mon, 16 Mar 2026 02:06:30 -0700 (PDT)
X-Received: by 2002:a17:903:2305:b0:2b0:59c4:e9dc with SMTP id d9443c01a7336-2b059c4ebc7mr23579775ad.22.1773651990420;
        Mon, 16 Mar 2026 02:06:30 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b05db37a8esm19727885ad.29.2026.03.16.02.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:06:30 -0700 (PDT)
Message-ID: <7593d19b-c124-48fb-9c0f-af8177dab1ac@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 14:36:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/5] Add support to read the watchdog bootstatus from
 IMEM
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260228-wdt_reset_reason-v9-0-f96d7a4825d3@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260228-wdt_reset_reason-v9-0-f96d7a4825d3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IsATsb/g c=1 sm=1 tr=0 ts=69b7c818 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=1iOovS3Ob0lYkPkW6isA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA2OSBTYWx0ZWRfXwTHOq2tQdoMN
 37Y65cNZqr3S2UFFx4S/nXzCOoffpcenzC37NKM8iS1LwTLcyIJIiK0whz5LPeB+Utd+6zWQsfn
 KE2Qa7pGuEj+obTKecj+aiXT+W7S3icnPLqi2Rnwpb8Mb8i3wBD9lblNSyNr5V7j3K339NBpkdf
 KxvKsZ3C2pfn0NSQADhp2FEPrq3Q+h6Thhy9kHCvmu8ad/peXE8zZM6QiC+ZaTYsLEhJ4MxdrNl
 QW1FoqgRFRVACFX9Ra0J0wLXORNTlBl99EhWILWUxEXMISVcTD+u5uaOKJKwZsRWIoKZ9V+W+el
 0vlT/Cjoq7wgxvFmSkQlaA6p7yTefAgbN33GB8NOitzL6CT2qsg+qUp64RD9LoEb+eBxOvk88pH
 B8XOSzyjcNqB/zQTZEGVsUj4beEU8RXe/9JJYsVW/Ii2Q3dx2YGHZOA4jBWo1H5Z0tYxzSAIqqv
 RrCgbEnfu758GWsUnLA==
X-Proofpoint-GUID: Fx1hp5eCAn6duft2jMOns1moLRj6YfoD
X-Proofpoint-ORIG-GUID: Fx1hp5eCAn6duft2jMOns1moLRj6YfoD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160069
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276027-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 16D5D296B8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2/28/2026 5:58 PM, Kathiravan Thirumoorthy wrote:
> In Qualcomm IPQ SoCs, if the system is rebooted due to the watchdog
> timeout, there is no way to identify it. Current approach of checking
> the EXPIRED_STATUS in WDT_STS is not working.
>
> To achieve this, if the system is rebooted due to watchdog timeout, the
> information is captured in the IMEM by the bootloader (along with other
> reason codes as well).
>
> This series attempts to address this by adding the support to read the
> IMEM and populate the information via bootstatus sysfs file.
>
> With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
> as below:
>
> cat
> /sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
> 32
>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

Gentle Reminder on this series. If there are no further comments, can this be picked up for v7.1?


