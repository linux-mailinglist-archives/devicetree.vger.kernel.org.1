Return-Path: <devicetree+bounces-256130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FDDD32B84
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 709C83051FA0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ABE6392C58;
	Fri, 16 Jan 2026 14:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UC5E7Drk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZA1v2PU3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335DF392C3A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768574028; cv=none; b=sHdZFLzbhCymco8FIf4HLuhwdVFxOwzk0rTMjw79jVlnhr6IPEUP0mThBQ7EJxutP9VVRD643T017rGFp1wwG4av6ztD+Lid0qapdi2F865JIdph0uiQqDQNgw9htEsJxXuIsQ2GV1wsaJdCOoLMBQjmQs+XJ2HCKcz4qWLS+jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768574028; c=relaxed/simple;
	bh=DfZnrC2/XWteyHGq6Y7LKw5tSx7FDs7acTTloGgYEUI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LouUOwrHDukn/Z7qw8u+I5Ls050IF9l614UTjMoQXKdI1jc3dufj3WTstyB/mzaUsqoNHXwcAccfc9d3PdGqLkDV01j72shTvFrvtbCqIUDdhvoYA9xySbcMbKS/xCTDhewnGkBebTR6qYwHmu6zNVvbjA0fMdbNcncnrkbgSW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UC5E7Drk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZA1v2PU3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G83WC73192152
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:33:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZaHsD/0AD7lBzKkvh6XVMrU+9amfBPvv7vVc2iCwtKs=; b=UC5E7DrkZ1z5Uv+7
	FycRnXLQwY+1rTM48xRK/1J9gd975UbMQ7qofeEm5VskxtcczMF7hiwiuMVqgkeY
	8b/wVYSI+64va092l0RCPEsFiALYYQdESd4Y9DPP7MUioGHQ/2dYHI94XMdNpQJH
	/TZIUpqhnUIV0zDoZEqhfDoFclr5MM8EGfxx5I+7lTk2ykOip31lmlz6tCT+cc8Z
	dHSNqnS5rFpw60M0v4gbAfWrQN4EwMJdRMRX0TAia5dJJ1cC/zZcrgv26y6UMYjj
	4mJfQAVG0Vq34USJCP3DRvs9BhQvn+lakWgQa8MZTpQsgu8vF8E+MKM3CyVpPHLQ
	/BbdXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq968jgch-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:33:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2194e266aso540940085a.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768574025; x=1769178825; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaHsD/0AD7lBzKkvh6XVMrU+9amfBPvv7vVc2iCwtKs=;
        b=ZA1v2PU3Bb+ZYLjqcSsAapiQYTQFKQ4J0ougK56i4huyZUDhdUmP4wR0PsA1Ab/5DA
         JqoxfQ46MIhnKspzqkxJYxOC4MLI3vUA+R7ymBlp+9tehoT2jHRRlxJCL29LuNuBSofZ
         gwTjT2LCCZ+vqYVH7Hiq/nWHLIKimqEZOqris6LOyyONLFzWLjEakdxb0WDTH5BXWCku
         EGBVqklr+qzj7fERYjOh5IIbyWQnVzjpiwErdxLC+3VctT2Uo/isdd2kmKncFrZSpv0X
         ePfIX6SpNa7ogBWw0BP/vOoTzhPbQZJU+3WF41j9mwu+3fZnG4nbtSKPClmQyd3yRHJT
         RWzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768574025; x=1769178825;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZaHsD/0AD7lBzKkvh6XVMrU+9amfBPvv7vVc2iCwtKs=;
        b=OZBZxQtHNp1Jxto+GU7TjPZ8cndMeYGRC92KVfrpOK2yEcMc4eIzIvha7edWPrlPXy
         C5A1Mq3sezNZjRmlOYHDGD3+LkU5zrsKpEHgVIhUZZ0syCFu+Uny8iB5tXV05IDR0Q9P
         aFz7vtp31A52oL/DcEQAlda05diIXCIJyB86aLu386sqwoCrYw4DZTtlgcfRgVEAA2WX
         JCdLK+7hy0C9oRs9i0hoGABIZNc79Nwn0JbF1ZR5rnMC55ERnBHRxGXnvpH/dz5viV7U
         0GGJH79kRLEu6gVOyjmiBPNYlTG7iEDpzIBkCBQ4jl9MnsFnux/blmJ1AGmv1Q8necM9
         U2+A==
X-Forwarded-Encrypted: i=1; AJvYcCWtzZwy/BnfkTIOYwLOQXoC1ujwSOpHIHDrzeBPLUcWRGXAefczI1G550DBtG3O5UkasQHq4uTo4nh3@vger.kernel.org
X-Gm-Message-State: AOJu0YweILyHmZKXJ7d++kxNfIxA2q0fDGVz4RO99Hu7A0DanNoko5jL
	jH0GM9mmM9tH8fcp3Pt4wS1lQyIa8FrVcgCeDozlSyl6phqA+pmN8YH39GICOzbX0T0OUhs38Yj
	vOQyO3FtPU4lyWl7nQ7XWMTM3i+0sXI6maNAGI48kpGPG4bj5M20d6JJXTYImRnEa
X-Gm-Gg: AY/fxX42v+oQok+nzwyDz4uNTQ8decbqwZzVg7cQxQ67g3BvhbDIj7x3dDBtZsUotbs
	PaSX/eqkM3jW4TJgsB0X9Kms5Cnhp3CHDxxTJXc6F/YHX/Def0e91zku9Gxsvi18cnBkuPHCw3U
	ecaf8A9gK+0j6qOBVX/Wi/QLjftytHMC3LybwuiwMa/N+mhqHCoBEBaE5FCYImT+cIdEaTAsXTn
	L0pwY1akDyHNaCVNVFM2rqw2HlL4ErTgylRqRpyYbaxUuBErWsnSzXQoVvFO4x8AEd02qEI+4+P
	RIaAeRZCRgzlmLdKsvlAEK7iW1egtCN8DTInFm2eC7+zXTG0xqQ0u70hy4M+oUnGJrrg3CBRWQV
	BMCzaeCnna1ZRZWc/mFYVvpV+tI2uutQpeA7jGQ==
X-Received: by 2002:a05:620a:28c5:b0:8c5:3045:3e7b with SMTP id af79cd13be357-8c6a66f1e53mr472486885a.26.1768574025481;
        Fri, 16 Jan 2026 06:33:45 -0800 (PST)
X-Received: by 2002:a05:620a:28c5:b0:8c5:3045:3e7b with SMTP id af79cd13be357-8c6a66f1e53mr472482485a.26.1768574025035;
        Fri, 16 Jan 2026 06:33:45 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm5623880f8f.9.2026.01.16.06.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 06:33:44 -0800 (PST)
Message-ID: <49ebb3b2-128c-4fe8-abea-51a3d47cce73@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 15:33:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] media: rockchip: add driver for the rockchip mipi
 csi-2 receiver
To: michael.riesch@collabora.com, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Kever Yang <kever.yang@rock-chips.com>, Frank Li <Frank.li@nxp.com>,
        Mehdi Djait <mehdi.djait@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Hans Verkuil <hverkuil@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Collabora Kernel Team <kernel@collabora.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251114-rockchip-mipi-receiver-v6-0-b7ce6e68b3fa@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20251114-rockchip-mipi-receiver-v6-0-b7ce6e68b3fa@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JNg2csKb c=1 sm=1 tr=0 ts=696a4c4a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=etG1dv-_i460GIfEFeoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: bBsimq8c7DJrsTuBw-1Jme-78Xyp4RJ4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEwMiBTYWx0ZWRfX+XxSu8jVFfO6
 5+cZ0jfkPcDT9AgygGH1+5Ub8kFcbwV4uPIqxu2oAUf4kIZrhldsTNlSDUWw45tjz++Atrt0tjs
 L99zGYRZi6k2xRUyUMkBgN/X1b/+ciI3UJP3FSj0T+tobsOfb3XPWhfCr/BkVL4XoRRPKijTI5r
 kSQ9fH1XPwVN5AN9Cq8Z6nIoA39ES/+2GabaHPsYW7+ZT4tj9OPcQ7mbgCmzkjJsYgl2hEbAZh4
 bQ7TgE4L8hJEEaxQiEOsS2ktwExEht9ecU7cxcz7GBSS/VwaQ+w626DtGPqTzcf5kT0ZUSsA63h
 pJWrhSx4Sn/cNhcQwsSxu9bUaI4/0+x3E8FFpJhcPngjZkYvMLIr3/Wx+1Tu/ZzF/z/79xVmStX
 l5uODCvz+N9hPCeJHJL1xEaAERpyl7X3WROGtfE2h50zVLMvobwnIWFO8HdNXdSmA+VFuUDTJ4Y
 25t+/gSvlqg3P+fD44Q==
X-Proofpoint-GUID: bBsimq8c7DJrsTuBw-1Jme-78Xyp4RJ4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_05,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160102

On 16/01/2026 14:54, Michael Riesch via B4 Relay wrote:
> Habidere,
> 
> This series adds support for the Rockchip MIPI CSI-2 Receiver that is
> integrated into recent Rockchip SoCs, such as the RK3568 and the RK3588.
> 

Please slow down and post it once per 24h or 2-3 days. Not every 50
minutes. Allow people to actually review your code.

Best regards,
Krzysztof

