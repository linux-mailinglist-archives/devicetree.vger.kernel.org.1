Return-Path: <devicetree+bounces-200488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA41B14E6C
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 15:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF1353B5B85
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 13:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EA5185955;
	Tue, 29 Jul 2025 13:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TaCvraAQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5F38F54
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753795960; cv=none; b=GpLgD4aHYAOrjoHW/s4DHarrFmEtLhUoFwlW5KcNkCf2ECmoFV7MyAwCNwfHj5/ZjRJeB4LUgAWflBq2yl0e0Zsm/MLCFyXPPvrrQTu6CPCFSTd2IUJmNYxgp+4MeG3czRk8SNP21TnHPo9CpVMKcABEtKQrk8BLO3eW05b9CeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753795960; c=relaxed/simple;
	bh=v+DsZl55yzDRDRu9Ri3laxrorOzZ5AU7QR5AaTILLx4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IxUDqS2F9lNRnwFpJPvGIeo6iiVbon01kRU3J8gU0Ud4dbwIs3p4iPx9sEVDvlHVhJL5pISgyhlNzH/Cx8Z/diuB2VJVXnKkIYafyvH6iuprHWSWczaNGZXh4VdTBQS2cBPUJjKUqOagwBSrzihZvmc17DfAUNWepds+OwGMQVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TaCvraAQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T9SljV030056
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:32:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jM+V99Ir0I4XA3k8O6hCYfIKJXhqtYGbn0EBhNXPZOU=; b=TaCvraAQDvDry/Q6
	kTfpgjYD/P7HKtjUt+4z87gF0bV9VVsUZ8FCMNFQTgWwPkIpsHjVnZLfZaZtivnu
	RXE8oTxJm5wioaO3pwUBUAUWFA0bvB1bmM3xmOO3/b5Ho+w+zsarLPUl2rew3WrG
	EfVc2YQD37k8uo8mPkwK7z4O3iwDcEgZ7GRT8/jinb5zMP46vRzmA8nrtLR9swbH
	ZjhhaL3nX+WBNenF8+6k+3X8dN3KBRu7gW5COqviUNBj8fcFxZY+s/twNc2mTels
	VmZ6TBmsW1D49CCIq//epE938ohQEXhDezDk10wAjRbe/yIokqnGC7/XgyI6YEbM
	79WJkg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbm05aw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:32:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7deca3ef277so112829185a.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 06:32:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753795957; x=1754400757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jM+V99Ir0I4XA3k8O6hCYfIKJXhqtYGbn0EBhNXPZOU=;
        b=nVIzlKW3Nor5bchh4c8C20+I5flxYGifAR1MQpFqOXkkchnJ1eYOsmiedYjDDvPXtu
         hk39Kdr5fn4KJXb+sxLW5W1Dn62FfFmpb4R8U52qp+6hvTUUflH3HFHcNPwZpBH8qowC
         TGKkDKNkek8NMVT9uPlSoscAKbleSpHm0SN903ggOEZIq2aO2Gi+1WcoIkEU0dpvwEcQ
         z44AkUeqd3ISDVX32ehrcz+UFCtCVhs9v6LpdLCWLsjVKyrzblryswlw560i2/zONPL/
         YiNQ2A2baqGqs7L+haYMegSGxJ3HkdLicvau2glfbz6ecm61ImbOsTfa6fhBHALjI42O
         F3Pg==
X-Forwarded-Encrypted: i=1; AJvYcCWsxxGJYdo0HBdpCrKJdBZsx1j4yS+ognP3x7bUVdwj8LS7XTSKUVf5wV55cfui0HIAAEpmteK+PZ44@vger.kernel.org
X-Gm-Message-State: AOJu0YxBSH03RPB3lsYW3b/noYmH4cAgURDfsRZCnbFVybXZ0csu02Wq
	3c1OFA/+0jPeXJgU5LDMRjwIMGvIasI6vNOPSGWi4ClqUdUDRPv+tv4G2iUkPuL/F1X+3Bij1/s
	DmEsgRT6jyk8EILDSFgEDJ711TUFJ3gtF6sxPc78NaUqfKLkONhUJ9zhLJGEaRFiy
X-Gm-Gg: ASbGncsFxKVIx7rswTiBB2oLZQDBdlB+Ox6AKnBqh4KHO+VAFtTI+zhS/B5h5PORpE1
	2IIffn9uZo4q4MPiB69aLktMO9H1rJLWlqXfVTRXsjF44ueHmM7bc5/WDpj7fc8WfujDfqf4yQn
	Hj3godtLyJiZxvor0OUViS3LTFU0Mvqzez8Uo1VJuDbO9B5+eraNlPHI3hMGJAw7tZKm9AVQTVC
	lUhocFKCjCA6XW+2eJ8fpu6B++A/NsUlL30oW1o2/SOZWrOlZuGGem7je1u1J0FsDK9K9TJEfao
	QjIR0UKZCq5m+QKXtetgSpBUa4MnX9u+/MShsaInrQVLmRuWGGyXtkYdp3vZLktVsyB7Rtfs1ux
	+AkQOzPv9AZPhDRKr1w==
X-Received: by 2002:a05:620a:40cb:b0:7e6:3c4f:fff with SMTP id af79cd13be357-7e66d4b1af0mr1040885a.3.1753795956701;
        Tue, 29 Jul 2025 06:32:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGAOzJT3QZrBy02ECSykHzkvGf3IwWCyjkvsQ1hFqKmBvEZUJqnoAyRjkdmzAO0gfMk6N25A==
X-Received: by 2002:a05:620a:40cb:b0:7e6:3c4f:fff with SMTP id af79cd13be357-7e66d4b1af0mr1036885a.3.1753795956019;
        Tue, 29 Jul 2025 06:32:36 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635adb093sm590411066b.124.2025.07.29.06.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 06:32:35 -0700 (PDT)
Message-ID: <39be83ee-9aa3-4c87-b76b-b6dcaf50a239@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 15:32:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=6888cd75 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=8Yr4R-HfXjpLVZqX0moA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDEwNCBTYWx0ZWRfX0Q65SPaFF5zX
 iLQwWYzRL7mlY75zUGFTorIoClrHsm8l2vKvRM39PJGROOtzA5qT9R2B5kUl5etGwrCGYAC1dBw
 fJf6wU6erPyvFsyLEZeqAcm1R7xMv7Ouj1MnLBoYIB45fG5xzSRV9NmhSwo0uGwIw4LbG5Pzb8X
 UjR32KR2mW+r3YHMBfaNND14DDqcrK2FyM2RZgfwdBgKNbdMdytbGh77EWlJshgwjMHCKG4UirT
 0rRIgJxQutrWiHaGzAO0pQ3b2n0I7pKoKrQ4vBYODUQbyFOCODGzzMWLHHukzqwPjhqSFTwSDne
 zU8div0zv/6A1msuZu2Cxtu33dm9/4eX8Q0xgoqOgbh0HwT2DKJ4zMSc4xFdxJ9491egGLFqZ1K
 UwGJDfo4nAhE/JWS8tQFrqP7nhyL5+ohswdGCjG+PUacDqu6c/zoKneLJXcWWzUgtFsPSILi
X-Proofpoint-ORIG-GUID: 7rQ2YxKHyBvRPduN9SLznk2oHsk8y3Vn
X-Proofpoint-GUID: 7rQ2YxKHyBvRPduN9SLznk2oHsk8y3Vn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=988 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290104

On 7/25/25 12:22 PM, Ziyue Zhang wrote:
> The gcc_aux_clk is used by the PCIe Root Complex (RC) and is not required
> by the PHY. The correct clock for the PHY is gcc_phy_aux_clk, which this
> patch uses to replace the incorrect reference.
> 
> The distinction between AUX_CLK and PHY_AUX_CLK is important: AUX_CLK is
> typically used by the controller, while PHY_AUX_CLK is required by certain
> PHYs—particularly Gen4 QMP PHYs—for internal operations such as clock
> gating and power management. Some non-Gen4 Qualcomm PHYs also use
> PHY_AUX_CLK, but they do not require AUX_CLK.
> 
> This change ensures proper clock configuration and avoids unnecessary
> dependencies.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---

Fixes: 489f14be0e0a ("arm64: dts: qcom: sa8775p: Add pcie0 and pcie1 nodes")

Konrad

