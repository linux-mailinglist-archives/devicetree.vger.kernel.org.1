Return-Path: <devicetree+bounces-194146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 479D2AFCD5A
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 185AB5634C1
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ABBF2E041E;
	Tue,  8 Jul 2025 14:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F6rnSQtO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174BF2DFA24
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984494; cv=none; b=txDrwCo+s26DQyZwxs3nuJu+uLijQSRwcyn8dANbCipMhIaov5ktSgS1wnLZsRO1kdtpU/Bdi27OuobP9n2CxqKM8nMnqbw9fwb0AnzECxAKQSjrz/+rEj1u33NiJKLT5sRrRV9t8TObSL6nJgvHJHTu1ry3tQpD2gR0/PbSuyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984494; c=relaxed/simple;
	bh=W4WG1v9sXb2I/kGtWhDxlxKX3X37hHMOqHpkdeREnn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iDPja2diryLKlEcgAcrg10IPwUa8dyMwx+RXA3zPGO6rnzSqYsMbspvIBe9y3q22syNBs+Tb/4T9zXYro7qeeJCWHCh37Hk0YJ3gTLaC0XK7nP4r/6eySV+Ua6NzAAu5oHGUg2q08IDKWubwAHoRv7xkHlFDhIu+MApZWwkHz5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F6rnSQtO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAS4J025455
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:21:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UZ7nubB7WVGwzRgwv+MpJw9qf/qLTu1tPlRVviWppTY=; b=F6rnSQtOru257SeK
	Y2leoYkWhu7c1K3eh6DmuRYHYXTxZU4AbtlK6zA5UDvrHP5LdaYLSO9vQZUOGH86
	IA13GBjYBGzXHCl7bxYAgvYRt93N2OM25dH9g9IJD3YnqN5wmuotrPnVbvbYbNG0
	nUvC+W+Yd1L0+72XqnZSQLC0pt/vMinHqCfqUAC3ipVCgMphys6RSoA+kKbfD3nP
	s4yDHjKQ2KS/XuYYNBbFezPMwwajkUOfUl8STd27AVcXQOonP7c1yrqFbRTQoLS7
	c/K7H5fkW/PXY4ZFOocijwS3+u5olUFBBhftMB2sr0qTjeNkRJYbA00csDfg5iKC
	DYIAiw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu0we18k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:21:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0979e6263so26933385a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:21:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984491; x=1752589291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ7nubB7WVGwzRgwv+MpJw9qf/qLTu1tPlRVviWppTY=;
        b=HPIym7d7ffLMGAXISlrmj2efo3va0amNSHENs/A9YVouc8HDEtQaUy55AeqyHMe30F
         tGHHvGi3fMRAdHzskKxWK3FNgyjJLVpnCKnP9H8WSTLK+nmb3m5yH+xm07ffU3glD4E5
         7ne4hIATW2U/Fp1UUZyr0SNHP+EYgNrArCdNqf8S0Fg43rMMBjYZAbFcp0w9siQzc4iT
         LRjLWRo+60u7Pt3CU1NeMaMVDGaf9GFqUA2L/6IewyVPUgQlKa3jwLmz2IZX+SVmpmR7
         UFopuhHhtGHjnqlI7Dnru1TNIcuaFlD/2+VtYB34+MGBJjFJRr8GxbahBEW5uzfiRuEs
         RmoA==
X-Forwarded-Encrypted: i=1; AJvYcCUTCicTBVZQJ81vY+rj5YuTeIS3cZO908IxYKILuxc2lKVTCW5jKzCN/oEnNMAv4oQOJiWNPMflFpLI@vger.kernel.org
X-Gm-Message-State: AOJu0YzjMTDgKf0gWfq+0J7MzxH8iyIP/jujvcEmzg4tss49O94fxraX
	7jzIkVUwZmLm3M3tnaq2lYJmXM9UbJWFTJjge4r/xFNuOYeCGh2MA1Y9nw56e/jOI+X5V5ysBXy
	o7loa8pCin1drO/osBw6oJYVx4P/9Pv/TTQPHA/tK8ugtwYQZVONn56i7h28uL6+T
X-Gm-Gg: ASbGncs3G8EvasV7n1hISOAiLFNNfM36Kn7tN1npf/wzpaKOpZhGLxZZMbiKY58xkgR
	ROEQnVfIMeIl51r2nFgphOYjqOErg/1aMAZrUF5qzer9p9NRohPZ657ebes9frEefikF1P+jq2F
	L751Qp72QBhWzHhUO5/UYQGGhgr15FZvQGWY5w67YVn2PHRf8nVSBA4w9mpvWDPs2pRl3ILoCXN
	ApGoyoWroyBrpAC9Di+Q7VLDf1zLy5+6MSzX9GO7AxE7CGXnfQAXdRChudGX8IrfrNRA6DmMUDq
	t+CkMOV+lP2cHKTo4Mm3GAkFZPdcYFrwnTF9YBqMRIvZF9ZLaGiB8vrz2QHWRHGREDv9s0A+fT7
	Qm9k=
X-Received: by 2002:a05:620a:27c4:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7d5ddc71ca6mr869697685a.10.1751984490797;
        Tue, 08 Jul 2025 07:21:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvgYYz7XLm/4x4hZmgdO8MpRNdLKTE8PP6W2tPZyVwIH2dwlcYWFonQij2vtyzfAieaxs4Gg==
X-Received: by 2002:a05:620a:27c4:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7d5ddc71ca6mr869694385a.10.1751984490100;
        Tue, 08 Jul 2025 07:21:30 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6676a2sm7153168a12.5.2025.07.08.07.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:21:28 -0700 (PDT)
Message-ID: <29da8704-5369-4001-8a0b-04a5d1c23dc4@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:21:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: ipq9574: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-5-692eb92b228e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-5-692eb92b228e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: BP19HaSxI88LOcBIbdQYiJ40D4V6PVYQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDEyMCBTYWx0ZWRfXy/Vd0Bs5G+2A
 ceKChx/Mr41A7b2GeuISQNaHyooB0bNdIusvflenguWYXj6WWMzeHYH6T+hxqs/pRExj1ARRFHi
 fs9+2otlPq62KEelcDuo09BgqHVMlFYa/cwBRBwX0H6T9tGJh1o9XU5+FZpfthV7BTneYN0TnRY
 LkZqf/8A7XuYg2AUa91vnMiBSglZE7JFwO+HbS25RYSHvU6Qwpl+VcGsReQM+H6cfQKCRlPWb6O
 u35c9XE+bfieJJvehptiOQTtX6vBSOLLrsmUIUvVM/XyBY9NCmIPok0ZQgdSFW5QP6ZfxIv1ovG
 eAUGmeVnN/vI9YrgfcsGsJZP40uC8UAKqT5jileAJjVJE0NLhKx7nZRvbHRsQPxSG7N3hrdEiyI
 EhdqlcjxmPbOu0MQo74HuzrE3BOgpr7DcAxipe6eaMoui53kp9KKtvYzzB8fFmQJdq0F8v7T
X-Authority-Analysis: v=2.4 cv=Rd2QC0tv c=1 sm=1 tr=0 ts=686d296c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=owAxAYLDMf__z6yt7SIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: BP19HaSxI88LOcBIbdQYiJ40D4V6PVYQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=719 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080120

On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 32KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

