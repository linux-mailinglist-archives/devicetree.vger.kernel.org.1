Return-Path: <devicetree+bounces-311956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fvS6CrT4L2qhKgUAu9opvQ
	(envelope-from <devicetree+bounces-311956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:05:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F74B68684A
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:05:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=JKdSA7Q3;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=XiOS8Wbg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311956-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311956-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20547303ACE8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE243F1ADE;
	Mon, 15 Jun 2026 13:05:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095A3EBF15
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 13:05:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781528725; cv=none; b=q68ag4NF/46APDC55riJUzFJSpsWSFE0BTqaHEyOwhnnmNVZv4amaXNJuzeFDvp1WDYHyt9KCffFtg0xd3T2MLg+BffhnyLUlkkcdfcvp75xACTEEPTiUmxQaroy2Zn0BKYNo/o7f4mtE0JpK8wJgxNKcnTpGowxzDxOM3XiYlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781528725; c=relaxed/simple;
	bh=XgesQe3JXa8zucmBrwvVS95U6qk/57Y4QGV8/8eiicY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=omp2ouNu/1AR0TTxjB8zAFoWnkHHybI2DFiGqvIghD9aVpT82KjMHW7PQiuyYD1Xt+DZI/8Ovk6STu5HRCmcev/z7apHZZL7ODQhrG6De1/sumYfBH7aLykuExztwBVT9dqTeVK0h+iFsqzuqrzp98O1KE+Du+3JalawriC+RoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JKdSA7Q3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XiOS8Wbg; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65FCZUPU024039
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 13:05:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gj2eBCwiJFOuabZ6OES/P0JXow+PfXd+VcRW89Z/+NU=; b=JKdSA7Q3tVUfzqtk
	KRiLAy/d5zD8oTrOFuQQh8xMCkOccAK7vCjxpsRSqIkMgI4QSnB8wSwiksH3e4KH
	dTlNvI8dAcfwWpTkG3ug1d6za2XbrTRW9R8nNCQSqBjWXaQ2LEAx073FY6PODdNu
	mhFHnmznVBAN21z5BJHRV8azbvuFBcGuyTiYtbwKeHSo68f6pvorb46ODnB+Wkl/
	vu/5dlxHXtLGu1410zKyUd9u4HNiUlyll21GnnR2PfbfVNB/6w+azPmaVSfXqCbW
	scwMn5QvgCzj4Vw/hxLeuWiwC7gWv+i3EnnriPoHEeHqpzg1j5KZPGI6soPGX456
	Snf0KA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etew0gs3s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 13:05:23 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2bf32259e0eso41405455ad.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781528723; x=1782133523; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gj2eBCwiJFOuabZ6OES/P0JXow+PfXd+VcRW89Z/+NU=;
        b=XiOS8Wbg4OQHxh7P02ZaOYZUUSNVxVeao9BKp427YzfS8wxcvonuzSV0jPZhaYZVoy
         7BaUntkmvB8oyeT7Wfr6MSXdYrix2W/uT78pXndBDXGXH1C0HJ/1ZPaHdmmN7/yZuKho
         cN/sxCrd5cig9e50BkImMxHTHzxaKTq13xLz/FpzEi16P9KtX9XyzT+5n10vnfygbBzK
         pXLrAqI7qJ8uKT+bce3JJFlaLl9WhgAajSg/mw/Fjzop7QqBx+5S/zCURL0mR27l+v66
         7VAFSspwskgX7414BHNVrEWTt+gSJx63wORsv0YWNJ81FaQeDcmaDm+64wL5LnkHGtPf
         4Syg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781528723; x=1782133523;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gj2eBCwiJFOuabZ6OES/P0JXow+PfXd+VcRW89Z/+NU=;
        b=Ot9uiJuu/VI6yM5WW1hr1+S5uaK6yL7g5lWCwm8AacrtmjKjDiGDkEkYQSSm6/301E
         Su7OlYcx0BXnkzQgp1zutsFg5dToR1kuotsUVHtvVZJk08qo6disajPiIT8qZsFx1KNp
         NZsCIcupt8N0rAAO3QHj3M7gdj7vWoTluj7gV44R/TdFwPjkjzn+K9MxwJG3TVefKN2i
         rFwbYh/omTWCbq/Xzq6Nu6GjQ4FIAuuyH89YwnEzvc9Laip8Ul8nqgiOFurEVwqSHjD7
         tH9uVwcTbAKs+7nlftLuyAV0uKT2WsRoULB4k7ENAdoXQ6f98snG8t+mxHN7g7AR58mT
         5eJQ==
X-Forwarded-Encrypted: i=1; AFNElJ8luoItop2fCnMGsbIGBU8qxwox2O6VXTTmJJRqXGsDPAvoUp7KnIWGaR2wAzpyz2AGBGz2krcuc8+0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2duOnK3lYYdmvqPyKx5NlE/cZs2Qn4PJyUVeqNosmi6EVx78e
	5nBR32srFz2DOXJFROHafo8xLX9PqOuhAouHosq5HkzhNLZH8HpXYdssQp46TDkldz8XA+2/SkO
	+HrK5gL6377o2I2EtHVYbsOr//f8Ew8lkefOlI0QXtqwUHIEVST1ZSsFSIdmMSruq
X-Gm-Gg: Acq92OFlj4xlerhvFSmcKQwrzYz5b6Y3DhG+kz9rD2PnlLThc1ODhYzby98rU/aEmOY
	wBwKw7lNX4Y2vGyVOq0KO/+0b90E4Ta3gwA8LunEhGgMKCRw6Eabf+zMcYnzj2x1sLsvh6iXbk1
	wA0UhrqQR6rlxGdRNEsYARV9wKNM1yXxRpckdPav68X+iWB5H+DeiT8ruJSchylZkI9kzvXmQFL
	zPOs7iHkQEelb1MsSrZ80Sdl+VyEv9o3iL6MrdWoA5LpO4SHKeR5QxUfG9nStLJmG/SsoyH6lmG
	qXgpE6B+16g1xJYVEfQ986W+LajPBodDdeQRBiXNpLvC2U16T3z2YoUvc/pI494Z4NsAW2IEBgh
	67TyVcpnLjwf3r0ka6yCTfjdHXpP/EODFVJ0ZfcoP5egTQNQMOk7yZ86mkyy6
X-Received: by 2002:a17:903:2acb:b0:2c6:8eeb:a7c5 with SMTP id d9443c01a7336-2c68eeba895mr38750125ad.34.1781528722566;
        Mon, 15 Jun 2026 06:05:22 -0700 (PDT)
X-Received: by 2002:a17:903:2acb:b0:2c6:8eeb:a7c5 with SMTP id d9443c01a7336-2c68eeba895mr38749605ad.34.1781528722078;
        Mon, 15 Jun 2026 06:05:22 -0700 (PDT)
Received: from [10.218.21.154] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4332694fdsm91735835ad.69.2026.06.15.06.05.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 06:05:21 -0700 (PDT)
Message-ID: <a94a6676-8ae9-43ea-a4c2-7e3de92b20e7@oss.qualcomm.com>
Date: Mon, 15 Jun 2026 18:35:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] soundwire: qcom: add EE-aware register layout and
 cpu selection
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Rao Mandadapu <quic_srivasam@quicinc.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20260608175345.3118060-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260608175345.3118060-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <0030e12e-96b7-4a22-a3b4-1b42bd32f39e@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <0030e12e-96b7-4a22-a3b4-1b42bd32f39e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDEzOCBTYWx0ZWRfX3qTCle/oJ5E7
 Z80wEdeU9sqG7EyYq2T8MHvqQJu6tyjPpjoUFwGsGzTAQJC3D74sQUdgyznxnuETXHkh/89+mc9
 oRGYZMbkb/9PcOzGeaWcFtLK8pkmTeY=
X-Authority-Analysis: v=2.4 cv=QLlYgALL c=1 sm=1 tr=0 ts=6a2ff893 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=p_cByEH9xlcipoJQ59cA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDEzOCBTYWx0ZWRfX5arUVPk0BeaR
 rm4TfX8s1735l/da/wYHFY1oKi+L99YJFk8ckKwqdKq7dvLeIPsA4GGnCNUgifQiZELb5t3KlxD
 cDnuHmQXBmSIX9yMLp3LZESv19XH697M5anrQEp8Jq6QEJirQ+T/Oh6b16pl666IJWGEiP5V7By
 X+PXfYwL7PLrOI4dSoCaQOhfzNs77c8REAtR0/2ELPlpFfAIhBYwUg4UPeuCKM/PAcz1bE1yRhc
 92hqlI2uq/NGNOP2Mc41eR8JiQlu0lATKU20hePHUAhNSYd9barEO6u0kBAKG2wtfFNEMvw7NG7
 E5DQR8mV4KjxMjfvUFydjz0xbL+JH5p7vB5zJ6w7moanX5xtxNLWwQbl6+cHgtb+uSKoRmTfA6q
 dgCLQ45zgChmnIIeFHGzijjUd/SPpFz6RxetKzaBjgqBbAO3i/oSpJNV/A4jaXobcFj7xuCjY/l
 Fx2SLzB4VroFfJn7Cag==
X-Proofpoint-GUID: -c8QZjrs-CmAbGqmuH80IPnrPoOz6luX
X-Proofpoint-ORIG-GUID: -c8QZjrs-CmAbGqmuH80IPnrPoOz6luX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_03,2026-06-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150138
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311956-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,vger.kernel.org:from_smtp,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	FORGED_SENDER(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:srini@kernel.org,m:vkoul@kernel.org,m:yung-chuan.liao@linux.intel.com,m:quic_srivasam@quicinc.com,m:pierre-louis.bossart@linux.dev,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[oss.qualcomm.com:server fail,qualcomm.com:server fail,vger.kernel.org:server fail];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RBL_SEM_FAIL(0.00)[172.105.105.114:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[oss.qualcomm.com:server fail,qualcomm.com:server fail,vger.kernel.org:server fail];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F74B68684A



On 6/9/2026 1:18 AM, Krzysztof Kozlowski wrote:
> On 08/06/2026 19:53, Mohammad Rafi Shaik wrote:
>> Some Qualcomm SoundWire masters expose interrupt, FIFO and status
>> registers in EE-specific register windows on v2.0 and newer hardware.
>>
>> Add support for selecting the SoundWire execution environment from DT
>> and use it to program the correct register window for the active EE.
>> The driver now reads the EE value from the new
> 
> No, it does not. "now" means before the commit, you are making the
> changes - see submitting patches.
>

Sorry for the confusion. I will update the commit description properly 
in the next revision.

>> qcom,swr-master-ee-val property, with qcom,ee as a fallback for
>> backward compatibility.
> 
> And where did you document qcom,ee and why do you need fallback in the
> first place? For downstream DTS? We do not support anything from
> downstream here.

Regarding the qcom,swr-master-ee-val property and the mention of qcom,ee 
as a fallback: that was a mistake in the description. There is no 
fallback being added, so it is not appropriate to mention it here. I 
will correct this in the next version.

Thanks & regards
Rafi.

> 


> Best regards,
> Krzysztof


