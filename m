Return-Path: <devicetree+bounces-235468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E619C39261
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 06:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F5483B3458
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 05:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A5E82D0C89;
	Thu,  6 Nov 2025 05:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WY5U3PG4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J7ugUMaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F1F1F03D9
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 05:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762406424; cv=none; b=On6JjnxkgOxvc0NXsqbqfW5Aec8FR2TvFFm1w5tkTPAaoEn0NJ1GghMTz1IYhehEaNn31Nww15yX/mhph9LOu7Oi+WiXZX1LCISQeHJe6wpUezBFqxOY2Xptd3axcx+IIm2cMNc2TmLnbWukQyqg3AIntBPdmOQoBSaxyX64e18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762406424; c=relaxed/simple;
	bh=PCRT/VnjscuohG3qd1r/9oEnwYE+hozkOIujPshDmnI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ap4aGwtIknOKyTY17gcPD4+v3Bhj5CyAjrgXXVWfGWAio4xNSbMM+6of0UvTjxe/nHwNWjtYjZ7a/dbTUqK73u4BxeUcCc/Kr5zz2PRtlBkUpcKCS0leavO3kpUrN6Y4dzDQNmkHvjE5EX51y0z7pswFJXn4D6xOb/HGzpT9sco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WY5U3PG4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J7ugUMaq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A61O3592798819
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 05:20:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RbncP33QuByCSLGI1byB0rZspAPVjU3fy2uppZLE2jY=; b=WY5U3PG4eUJLipRu
	BebhURNIeJ9CDJWrOCxeTHjrsPo5v3vVvjZ5rTe62ecmyJEkBvPfDPSnpDJYWLY3
	LtD8YTOqv3vzjXA82IizMEH/BAZXyh9ubpV41rpDKnOv9tbFUaLShk5O0rpAtRvR
	8aREZj1pZblM5WYszuAAj7vxoXGSOOoxc47MEptdZZOKj8Lzt8e+9XkdHaRcjoGH
	DYC2UE6tv6BXeraAQQFkXjQG19VkrUcp6eKEaU2TBqJkPP/NfNuzjKb7ODqRvJgj
	gspW0qNK4zE+4u/ghe+kkteBNMB/oG7NLhJyGjwK9LdWmMesN78fthJWs3A4KPeW
	FVkPdQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8hytrhje-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:20:22 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eb18b5500so98791a91.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 21:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762406421; x=1763011221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RbncP33QuByCSLGI1byB0rZspAPVjU3fy2uppZLE2jY=;
        b=J7ugUMaqnjcbYOgib4ounkwiF9EOZR21Ovu7A1SunZYKunHRmVFU8kzJ9TvC1ul64y
         3MZyXZ4jJ+sNC4C6a9RqgpyVa9ofUcf4mh2v6EF87X4K8O4xDfIa51K4tY/3KQGSvDQL
         G9oXc18+PRyoJNRmfzVbyHcIV0ewFt3Rb3WrrjG2AXgOBql3gs/+CLnv2PIIBYqPMPjv
         9X4cL3KPEtIC4GV4x8GkFrG8Fx/leatOnMDNlRh9eMBvMa3eODMgEDwH/d2Mp9rn+pj7
         zGKuHRzXDfkjrXD5cvD44pCDaX5UUv9ODn+89I6HxytdOh0zXO78jYFqkgj/BDyFCGAK
         qpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762406421; x=1763011221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RbncP33QuByCSLGI1byB0rZspAPVjU3fy2uppZLE2jY=;
        b=pBqPIQ6YCOgszzLHEmCElDNa3Mbj7vB9LYDLczVa3cJGhI/c1VyH4u+jIMGYKEqU1X
         90BisBwjwTr9f/7wfevwiqxGWQ2JLN8hfyFBJsxvnkWMCxZGXdWAeUHdQHrCkn3jLTz4
         tb3ZHWRJrF+GxcUZdskZ9N9+MZV1NJrKB/RAhKcBnhgza4OGrTC4RNRSPFbxQBIAae3X
         Ru+5NxK7T1Ua+w9+551gSkqoPSsaqWylNMpb/1Amo+RFv29IYxQx20nRx7h6RUKiJvB+
         aNcK85HNUTRlxu46kfVD0UQE3s058HJ8Q1yYitBb0jyqxkr9rPhTMAYZz7rCiF/EEYDT
         5FKw==
X-Forwarded-Encrypted: i=1; AJvYcCVezOhGrnlNEqxWRlSentV4j0PWnbOrLZS/MCYhkGqn809oXxztZ1lCqIY0VmBKwIaTv7KqXxhxkpQo@vger.kernel.org
X-Gm-Message-State: AOJu0YxJkPUQX1gRLyM3hlLZdnH/S8uWZ7abCaCxjVJHoA6OLW6JGY7c
	0lBO0DEGpioac+GwK2guNTfUP+jQ6+ZiX8tECAjac/1+ZQKU2DhGZz3T3jU9mjBvx6zbcItZsvk
	OwappcSK9aH741gzIkMICukq6jMr1bkOaVfNVew3Ma/x8ZbswHw+9PyH9ff8SWEN/
X-Gm-Gg: ASbGncsLSx3PbgFyE/6CNFdfQTL/JbR6Aw4UE5jMVqXDX60tlx34090A6afLFGvJiIp
	bf9PbedMHRl7ilF2e8oKDXZBE8NO6lAiO8CCUPTtZO1X2UkDAccUe3LYfj+4OXGqnsLbcjY4/zF
	bqXSZ1L/dfarwv5v/4fJ6g2SNVWeMG4BB9lCCqZ6/TD1pkRIo9zry6UF2KugG2nNiKj7Pm60tTC
	ZmUBgTwtoTrZHozbPkCVgGO4kQFr8Hh3W3+9VBCA0ujI9oNEBWHPt+NoHAc+cAPubxGPCsXINB0
	6KxpAmX1Z3F+5ONyqkt4BaMzU8ownB9wBcysXhSjOG38s4D427wiuJbrbjefC1SvwmD1EmY2vUf
	AdDJxdv6ZR09gSfX0Ex54RrqTNpOCqmXC1/yd7O3zShYOoUsnm18ymdX8I5KfcCv4
X-Received: by 2002:a17:90b:4a0e:b0:33b:b453:c900 with SMTP id 98e67ed59e1d1-341a6dc3ef0mr7716778a91.19.1762406421341;
        Wed, 05 Nov 2025 21:20:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEA8v7A+ayync/726jkKTD5KYJxkRhenVh6tscIPPHnasEdHKYvxouPnrmMzhPLa+hczUysXQ==
X-Received: by 2002:a17:90b:4a0e:b0:33b:b453:c900 with SMTP id 98e67ed59e1d1-341a6dc3ef0mr7716756a91.19.1762406420807;
        Wed, 05 Nov 2025 21:20:20 -0800 (PST)
Received: from [10.133.33.139] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341d1347db0sm535859a91.4.2025.11.05.21.20.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 21:20:19 -0800 (PST)
Message-ID: <cfc7871a-73b0-43ca-bdf0-bcb8b5f17396@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 13:20:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] coresight: add static TPDM support
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251028-add_static_tpdm_support-v4-0-84e21b98e727@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251028-add_static_tpdm_support-v4-0-84e21b98e727@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pn-Cn3duavaxgoG-NI4gBRvJIGDhc29d
X-Proofpoint-ORIG-GUID: pn-Cn3duavaxgoG-NI4gBRvJIGDhc29d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA0MCBTYWx0ZWRfX77c7g7tqjpOp
 hMPWGaV2WqUMHzAaKMK5p1utxV3QDeo6vA5EMjWOoNv+E+NJQRW4TZ9EjZXheVt/OvoWPbxxb7a
 SMuBhcaSnIi0Gq/hKaJBpFfLp2ss//B8hXeFSP9wBtEaSMgLpFJcHm/7yfv0KfrAwisVDAZFL6G
 o5UI1Nprr4N+QVm148NF02ay+fHnl+aZfWXUUijdcTHfDKhoYMi18dng88kIWMELPrTLKbIW5fh
 /ugD0vIV4lFS4rxSLxZE6KeAM2dXrf3ID24zaNPqQpM3d+JNw0ju2tH3ZOmfh3I9phV7nVPmRC/
 OQeFGckZnXdvmE44XApDcq14xGYbGFFzLAQq5pFbzSLAguoqN3fAqoH3EdSsDGNlwWgVprzSj1U
 9LtLGQPKfkgP0SC7f1vfJX2vP043XA==
X-Authority-Analysis: v=2.4 cv=X+Rf6WTe c=1 sm=1 tr=0 ts=690c3016 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=43WlQIeRwcEhdZomQpkA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_09,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060040



On 10/28/2025 6:11 PM, Jie Gan wrote:
> The static TPDM function as a dummy source, however, it is essential
> to enable the port connected to the TPDA and configure the element size.
> Without this, the TPDA cannot correctly receive trace data from the
> static TPDM. Since the static TPDM does not require MMIO mapping to
> access its registers, a clock controller is not mandatory for its
> operation.
> 
> Meanwhile, a function has been introduced to determine whether the
> current csdev is a static TPDM. This check enables the TPDA device
> to correctly read the element size and activate its port accordingly.
> Otherwise the TPDA cannot receive the trace data from the TPDM device.
> 

Gentle reminder.

> Changes in V4:
> 1. decouple from tpda driver code.
> 2. Introduce a new solution to identify static TPDM.
> Link to V3 - https://lore.kernel.org/all/20251013-add-static-tpdm-support-v3-0-a720b73e83db@oss.qualcomm.com/
> 
> Changes in V3:
> 1. rebased on next-20251010
> Link to V2 - https://lore.kernel.org/all/20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com/
> 
> Changes in V2:
> 1. Remove the dependency.
> 2. Collect tags from Rob and Konard for patchset 1 and patchset 3.
> Link to V1 - https://lore.kernel.org/all/20250822103008.1029-1-jie.gan@oss.qualcomm.com/
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
> Jie Gan (3):
>        dt-bindings: arm: document the static TPDM compatible
>        coresight: tpdm: add static tpdm support
>        arm64: dts: qcom: lemans: enable static TPDM
> 
>   .../bindings/arm/qcom,coresight-tpdm.yaml          |  23 ++-
>   arch/arm64/boot/dts/qcom/lemans.dtsi               | 105 +++++++++++++
>   drivers/hwtracing/coresight/coresight-tpda.c       |   7 -
>   drivers/hwtracing/coresight/coresight-tpdm.c       | 174 +++++++++++++++++----
>   drivers/hwtracing/coresight/coresight-tpdm.h       |  12 ++
>   5 files changed, 279 insertions(+), 42 deletions(-)
> ---
> base-commit: f7d2388eeec24966fc4d5cf32d706f0514f29ac5
> change-id: 20251028-add_static_tpdm_support-1f62477857e2
> 
> Best regards,


