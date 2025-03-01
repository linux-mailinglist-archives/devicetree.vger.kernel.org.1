Return-Path: <devicetree+bounces-152908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6B4A4A8C4
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 06:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B109189BEE2
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 05:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE14199FBA;
	Sat,  1 Mar 2025 05:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="apClJgks"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433D3EC5
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 05:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740806304; cv=none; b=bYP70clyazm2dm3wOIjVTFzizn0O6xq8RQuTClbXJWSxoiE2aQ9H2SCleeB20vZH7JFNSGPFux0S6Pt9mBfYU+FqwAzzV1OElxWNc1lIMJdboUuTOMLq0WmHbuMdU7OSNT7ITv5aH9BnJAfRyBlvVPhAlHhGUq+DW1bDUfOkfAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740806304; c=relaxed/simple;
	bh=wjIbfwuFNuPgizneQ79Zky8dP6tJE06v3/SoYtWbVik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K+3NY1EgG97+QTP78Nm3SYEE2V78i+/MzcO+jDXuuLRXLsnZXD2UoTtlEWntxj0n9237q8CFTohfBFmE96MlB8lc3q9tW5JP8521WV7qgFZyQgPGsienAuUMMJRyB1wam3etnX1Z1H4COMl1kyHe35IqOlPxMFXrDoulkMe6gKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=apClJgks; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5214eiMi031822
	for <devicetree@vger.kernel.org>; Sat, 1 Mar 2025 05:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eUHlZ4aWNrlCR37bnX9mIzuNVen1FLow500YvX1CeH0=; b=apClJgksW6hnfqGa
	zzQj94fwF8J5zsE1jMhViLFuE2Ai4RMDS8SnecxbzTEUiFhp3yTkx2gzz+huG+n/
	QkZh7mtEe+LH20wpy9iifabY4uqzknmdl/cGJKkfWkFupNdOtNQkZTmpxGjFsPly
	hZPDxfdCG32qoes4rljUGJ7nLqGn77KGsqAqxEHJyHDXRa/suuBDZdlUcb5s7BIs
	6D2MhQWIe/kxVht7abyRbt0QlQ3xAfQgpXGvJc6ncaZPWYnKEoDGAMe24vzhG7HX
	+VlqXPUZbmTWRvVt4czlJ+kDcsFXBqDiu2NA4aJk2zjj6H0yfu1O9i/S3aFCFWag
	TqMUoQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453udgr1up-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 05:18:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-22379af38e0so14377185ad.2
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 21:18:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740806302; x=1741411102;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eUHlZ4aWNrlCR37bnX9mIzuNVen1FLow500YvX1CeH0=;
        b=cE2CkNrAqKhJKj2ZY7CJyShYO+vPvzptfFLiwT+8yGNndI48bUt1hoLg88olomBrD8
         i+6PusN/OdKnGnUUZm13EbD0Fy7qN0kPo3NsxQrE64gCY3awqi5vKGaiw8UGVwcBqvEK
         N9ZiUdHB0tskrvTcCwAA5isUVz+8Ot95iJbSEWTrIKYrTg9SZfIkb6dKGnIfjIJ7Z89q
         yvnlt3wU9f5ppY+ZqtW6+8aRhwZyEyxYT7sgAam8+GKSzUhT1M30DCWIxzpVXT3SiXZ3
         dbO3dhcZHtSzhN26CO5wKpFnVcp6QoNSH8XpYcWCdRzpQ/QgcG5JayF3e5PtkoESnv7A
         Q0iA==
X-Forwarded-Encrypted: i=1; AJvYcCXElM+3s7EnIpineUPYD4bn/nEYYEvogFRMc80RrA2EfvVjBHN3YTuuWdfmSzBtLPZ0d4/9dU/PfUpb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0GvZ/UHJ6ZclkyQ1rhokUoxvFPQEMX/0OJjh0+k8uHUQ5M5B4
	IM3MyzZS2HavrOWHnKkvS2WdUTbQLVz6WnEojyeIFU0VKorcP29I8/WWPZTPpwEIvgWMsEF5+Pa
	Cyq8RWWYpKitthTNTzV8DaVW3ymM0+EIABlF688OAI3fSEFvSFWjbs6XheV3y
X-Gm-Gg: ASbGncv4zTVPcqfoJrr1uc+NQWG+/H2SsP+JVdEa5xBThKY/n+qUdYSf6DzNvtcvTvJ
	rFNtoyTrMnFtNB+zEObXvaaBXSuldfBdaP9p4e7CfFx8QGZ1P7aukpBFJ+EQT6JKp69OjEjvoIB
	zsg/Uxz8xhRJv0ZEv+UUIm+Mv3wHKoKVlylYHvMMXjkgw7vadwu57Uk3gC6Mce4wDu/XdRRn6V5
	39++5/I9nRHLoaK4Nl4VusaD8gw9iZkv0YANUHx4l8aYhF6SV2hDgoBFKoBGY6MvT7OxyWGl8wO
	iDMT/LZZhkqe4xcctx1yDsDvS+Y3Hhpp8BsCc+WxQPrrhtHS1h6d90ePrP+lvYA=
X-Received: by 2002:a17:903:198e:b0:223:4537:65b1 with SMTP id d9443c01a7336-22369255638mr96102215ad.36.1740806301776;
        Fri, 28 Feb 2025 21:18:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGB5dZuFhGRTIRMtkKt300um01cZR3OsgAUXHswvI1dGw4+Q9X4LegsPD55S273PcAvlGdfaQ==
X-Received: by 2002:a17:903:198e:b0:223:4537:65b1 with SMTP id d9443c01a7336-22369255638mr96101945ad.36.1740806301448;
        Fri, 28 Feb 2025 21:18:21 -0800 (PST)
Received: from [192.168.225.142] ([157.51.160.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22350503eb9sm41195385ad.193.2025.02.28.21.18.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 21:18:21 -0800 (PST)
Message-ID: <eac47640-5ed3-693f-04c5-6e2945268d22@oss.qualcomm.com>
Date: Sat, 1 Mar 2025 10:48:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v8 11/13] wifi: ath12k: Power up userPD
Content-Language: en-US
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
References: <20250228184214.337119-1-quic_rajkbhag@quicinc.com>
 <20250228184214.337119-12-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250228184214.337119-12-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DcTQlmyUXEIpwKFj7HCz2XfS5XdVai1c
X-Proofpoint-ORIG-GUID: DcTQlmyUXEIpwKFj7HCz2XfS5XdVai1c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-01_01,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 mlxscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=676 priorityscore=1501 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503010038



On 3/1/2025 12:12 AM, Raj Kumar Bhagat wrote:
> From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> 
> UserPD firmware image is loaded and booted by ath12k driver. Get the userPD
> memory region from DTS and load the firmware for userPD from pre-defined
> path into io-remapped address of this region. Authenticate this image
> using pasid which is a peripheral ID. Set the spawn bit to instruct Q6
> to spawn userPD thread. Wait for userPD to spawn which is indicated by
> spawn interrupt. Ready interrupt is triggered once the userPD is powered
> up completely.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

