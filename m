Return-Path: <devicetree+bounces-260062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFDuLo/2eGnYuAEAu9opvQ
	(envelope-from <devicetree+bounces-260062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:31:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F2698789
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 789CE3014667
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F038B3093DE;
	Tue, 27 Jan 2026 17:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D9fkkSqV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D320VSyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91489302742
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769535116; cv=none; b=gC5TaWVyctzgivGzE36sTXRbGSG9hC2uPm7jzNm9qZSQjM5jrKJXzl7MY41ZVarCKFY/HukscE+bs1kXrqe2GyH/Bp3cFlIlqKoHvEuzBq0wz8YhKGUWh4mr7AQEc/S2mMxtSNRSrP4Bu6Q7OOYm0tTYrgUti5NCe64lT2wdxtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769535116; c=relaxed/simple;
	bh=sJM3dQkRhFtYUQBc5hx9GDtuCQPPDc99urCjAvY3avU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k3bPSWRTJg+PHsnQE27kvcEM2QwSL48cIXV2QM6F+c1jqh1TP3UWTGn1pLloDpuxgHICsuysTyEUKzfODKrPsYrE34Z3RfqWoGuM4PmjL87X0pHdtyrz6VVJpFkLEgB9nILRX3mueTfxCZpafwqjj3qNaishtpXf4gsp77+wDuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D9fkkSqV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D320VSyT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RHAVMf495954
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:31:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OIoUAWMTJE5rpivtR3W6H7oj3d6jWxH+8YOVX25OZr4=; b=D9fkkSqVE3eV4UlG
	MGHnrILEzSAsWdT3eG0y2kd+fJVmRLOzstpOrq7Y/fE9x3PtLxmImHv40BvwEQ/Q
	jV9gLDs/P8G956dO37G/p49LkgSSnfWcfEhuBWUGk2WAwBFgEZyQg9l0SpWNsQ+n
	iDA2mIGTE0ayZr9T/vz578I2IFp837fbIRyTJRfEAEHcpSwm1bgANKFIlQMZUoMT
	ob7xqBAdKGhl2hn5NLpWIGjsOaEhzocsQ7f/TIT9AhwXI86+gfYpem/RrFNeZTWY
	L9f1yteD6+gq5DbtWbfBmc+NASmpCzGvywS8ERS9QndYOYyxQFbUW2gEMQOHjzkX
	cf14lA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bktcq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:31:54 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-12337114f3fso8173666c88.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769535114; x=1770139914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OIoUAWMTJE5rpivtR3W6H7oj3d6jWxH+8YOVX25OZr4=;
        b=D320VSyT2X7tGfI0GdwbI8H55uqW090fbubA4yg4n1HXArlixWFIkjWHWpmMR75QCK
         BCSHISMtB1KU63G1OlFZWCdHmRi8XnCUDQByV9i5nwDFylTntDQY5+R5MazhsNwDkSTt
         0+1wo1jmtmyS4AWlY7eVNsXn849ouXCoh7w73bcb4z95m3hV3WbZ7jIQpw+UB8jVEOnj
         JqRDMc1BemUqQ1AvBybBtOfn88+HRxMoMeLjQkLktdE6ZbkQXBZKgAJy/rAY7srjQUG8
         dC4sJnhXRAHTSL2h6hiLFMfeqenBx90vbbVBaIOo36VSeiFyJbVYn+3FFtpkH9DdA/Rc
         lqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769535114; x=1770139914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OIoUAWMTJE5rpivtR3W6H7oj3d6jWxH+8YOVX25OZr4=;
        b=xEqj6vOhFC5Pr1o6GPg9btXcAxzUPRlAX8k7lNTRauL4QCu6SxO9gFrRtZAuEXiQXW
         GrLQbZBe2uOZZKtHF/ptCHKBtGieAzvakgxtWS5IPkhX7RGANgO9/+gCCxaooO7TyaWd
         Ols4XMNoz3cN5EOxZ6ZcBxw+3kztJHsTXO20L4SmVUjPnp7hWp/BCpXloy5eByo/alHY
         vtQYCGbjoKcDdn0X7jXiZD0X6g4F6VSyDRFVMR1GVOJUChKL12+OCyDbSA+nEKqqsEdy
         /O+0bxZZhvMf2hFwNHXyj6zE2vVTQKyGuwH/4Jgue3kegWf9RL5flTxamkIt69F2BxAh
         FYrg==
X-Forwarded-Encrypted: i=1; AJvYcCVy0ui+a0mcFac+GL62TKRoUKGjg09zqFvW3IjpW+PXCvIKmhXYBV1pyvHA82mmfT9TTXsl1HcGPuEz@vger.kernel.org
X-Gm-Message-State: AOJu0YwRAAG27AVe5s+m1n4fjqwHxnWiRsGrjdm/R7YiTr1cXvBB4/Zz
	MEmUs/MaoyGza5aJCty59ZMTb1w4TC36f9B1Yy6AfHWOJhGylHLgrFFzr+1ZOxiTxUnDj099t38
	S4spjuWvb1+SruswmvbKrmXghOKrjoxh3/bGLPfZdiDPcVmfACyHRfSLIOXrWay3X
X-Gm-Gg: AZuq6aJYjHdrNvm7EQxUVwdj7vvxiA7GKXrPAMYwbzF7VZRPYRbmQlXH4JDaM5o0xnX
	2oiV4+Xz0AcFCYoV62O6I6rMwfkSZ4uQDBedp3Jnyf2V1ghzHHQs56ENscYnuZ9wyyf6d/OjCSa
	OYUd3hqhi17Og8AKh6Nk9MneC3JtPbXTopp/qaFtgEDtvIxF5I0DYEyjPLjtP4Wt255Gpo8wkvN
	kOxx/rT4cvmlgNOJMJKFSNLqcJ208wRHgA7bURQGo79X68/o3IMU803GQmB7zl7f4Zz+y/jgTgd
	gqA3/ztj5HU/48UuYwSpmOGqJPkZWKiu2nhkrfxduf6onYjET/EAcDAUvbsIRTjAWWrnYmgKlR/
	cIZzg6ijYyXnYA/4yaDnBSXvSbVQrVq/zwlVGW0AyuCRiMQj2n8Pt1mXyEgib6gnLzC54ew==
X-Received: by 2002:a05:7022:6286:b0:11b:9386:a37d with SMTP id a92af1059eb24-124a00e8ae7mr1238387c88.44.1769535113963;
        Tue, 27 Jan 2026 09:31:53 -0800 (PST)
X-Received: by 2002:a05:7022:6286:b0:11b:9386:a37d with SMTP id a92af1059eb24-124a00e8ae7mr1238370c88.44.1769535113332;
        Tue, 27 Jan 2026 09:31:53 -0800 (PST)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-124a7c73c7csm287709c88.13.2026.01.27.09.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 09:31:53 -0800 (PST)
Message-ID: <74176aab-03d4-4095-890d-7ef1739b914b@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 09:31:51 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 ath-current 0/2] wifi: ath11k: add usecase firmware
 handling based on device compatible
To: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, krzk@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jonas.gorski@gmail.com
References: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
Content-Language: en-US
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
In-Reply-To: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tSUHI2nrHc5YHcikexkFYs6tOTsQa3lP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE0MiBTYWx0ZWRfX+TtjIOehqlPE
 IaIxkXy6cCsVL/VZXeIKzOkMrU0OUzIWCcC8C1vaR+MjbG0AE12NRszMcUGxwenWJWSe58cb6Nv
 fvId2bGMIb8wXTte6jhKX//WpLAorc9YyvVRabNgqGyIHCbB7YEnczXpxJmM3UnUaPSSz53Jg9X
 2wsb6r1iR3tXzoRYBZzt8exlo158qb2zNmnaPAsFdZ8cR1fyJcoL+cKjJ/++HskNPR/eeLxIPg5
 ND9Y71fEdxNzTJ6ybjMwlfkbyUNz2qNoardLHaM0CEluPOSc/8vcSk5T0XAJh9ioD8yLfL0kGqy
 u/B2RzWYs8x6pEEC925bTIEuP1R8cRff7z1CNbD11ANa1UHXD6tNlkkr9NEHx+lXnWtoS4I6Bkj
 8xNysscTE8tLcvaNQc+kcj/j4NURElWCdAlH/2QApHqMP+pkYPT1UJGSUZeCPX4be2aQMkstHdk
 vOMe6VPFnbSWO5V7w8g==
X-Proofpoint-GUID: tSUHI2nrHc5YHcikexkFYs6tOTsQa3lP
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978f68a cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=8cwfA4bTiwTnQ3FzGgcA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-260062-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jeff.johnson@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C0F2698789
X-Rspamd-Action: no action

On 1/21/2026 1:50 AM, Miaoqing Pan wrote:
> The 'firmware-name' property was introduced to allow end-users and
> integrators to select use-case-specific firmware for the WCN6855.
> But for M.2 WLAN chips, there is no suitable DTS node to specify
> the 'firmware-name' property. In addition, assigning firmware for
> the M.2 PCIe interface causes chips that do not use use-case-specific
> firmware to fail. Therefore, abandoning the approach of specifying
> firmware in DTS. As an alternative, propose a static lookup table
> mapping device compatible to firmware names.
> 
> ---
> v2:
> - Drops `firmware-name` from completely.
> - Updates the commit message to clearly state that the property is
>   obsolete and the change is ABI-breaking but safe for upstream.
> v3:
>  - Deprecate 'firmware-name' property instead of obsolete.
>  - Keep the ABI backwards compatible.
> v4:
>  - Use of_machine_is_compatible() to simplify the code.
>  - Add back Acked-by tag. 
> ---
> 
> Miaoqing Pan (2):
>   wifi: ath11k: add usecase firmware handling based on device compatible
>   dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name'
>     property
> 
>  .../net/wireless/qcom,ath11k-pci.yaml         |  1 +
>  drivers/net/wireless/ath/ath11k/core.c        | 27 +++++++++++++++++++
>  drivers/net/wireless/ath/ath11k/core.h        |  4 +++
>  3 files changed, 32 insertions(+)
> 
> 
> base-commit: d8e1f4a193101a72235416f189b01131a57e26e9

Krzysztof,
Since you previously NAKed this series, can you confirm that your review
comments have been addressed?

Thanks!
/jeff


