Return-Path: <devicetree+bounces-231533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A82DC0E03F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 975D64F69A9
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42EF287511;
	Mon, 27 Oct 2025 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JK7xfJJm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5469E1D9A5D
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571353; cv=none; b=pXMFAij3FYSSq2cShPVqikEj7puMwMq6hy13V/xgbK9Hb56J4QgBNfw2a1YIuWH3FgsHfKnUrnQE8kkZFIS61prbwV0+pBoZGFw+FfR+bQ8a+VpaEzSqY/aNIk70v3aNILHGm3IynHWm4qbRRJRL1WUOYf/+6mEvew73de9Us/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571353; c=relaxed/simple;
	bh=FuLPGb9lpc3kIhzrWDfWe9XL+0VkpsfAt3WLq5eKKKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OL6rqFobEscWH3gYG7AnKCNdm821sHDX8nCjW7u1Fa4cphHcBiIN+nC36e9b+MnfqyTRwnjcVfGY98p2buT5j6ys8adotW35O12EHDD47nzqEl/sVLgKqIwwb/q7Q1JDF2o/mxR2TIoC1bHPRiMZJRZh8EiVpOEjK9cLSziksY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JK7xfJJm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RCL9lH2752411
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:22:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bOamnVJjm+3duRsX5YWXJXmZ4fYfBcBJKOdsubpmAGE=; b=JK7xfJJmIhsARo/h
	+zlqzqH+epJrohpGrugMsbmErn3Q+xnKQ/nHTu910A8MbmhSSmQ+McAUTWAqO6Jj
	GfS8mnPh2q7hT6nOJnXYNz5he+KkokLYwSylPopuSHr5vnX8Vv3n3vZTzAZ5qWug
	Ln34lsRMWGa6mvC8UgiAovtS0+dCUOjvM/ka5ojng6z81c0MEWn8SM0yporgkY2m
	/GC8E18WGCwh1NoJ+XKnX6xVYsLcpZJlZSyaPM7kXUYfEZGh1pWP86QsYDxKSKfI
	sRUAGGhgDdTs8JL0p9QdLKMpxpiOt6t4j4eSdf/xBP28K6j8gOFr3pquAxSZ5VRg
	p+iJvA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28nsr5cx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:22:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-826b30ed087so14119016d6.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:22:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571349; x=1762176149;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bOamnVJjm+3duRsX5YWXJXmZ4fYfBcBJKOdsubpmAGE=;
        b=I5PQql/ZyazqICk9tAbmE8IKEvg1ZGujmVDgpOCnSuVpakiDuYb7PdqvikDBVwLuSJ
         NwWxgBy59gJWch/B79Hdm544r0qnkLyUrwuRamd+Y+/aQ6lWcgmtxcQbFtCTKfyyi16Y
         a6uFvzeos7NQdjvib9zjaLPdL4RB0fe3PeQFKpoh+GACwKAUHuuCuJKH8mhBKigmG6sc
         eIa08QwiAP9/xQ+lxj53SKIt/4v//KRySbrziKQw3HcpEm7JAM2yFaxyv3sBF60fyf01
         zZfv0Yg9fboztGkX8GL1qF8NZHmp6IqGt1CGlA+qEkJpnjMBIkrrDf47w/Pi9GegFFkr
         fzLg==
X-Forwarded-Encrypted: i=1; AJvYcCWGMw8K9wguOYndE4Rw27tlctTjB8F3kFN6sVRZJjz4LV6EHSmyMcOzEaC2br/LblCb7QO/dLbuy5vn@vger.kernel.org
X-Gm-Message-State: AOJu0YzQP50RC4iJoXTTGEtQp7kaOcWrQbxLmSpCJv+CKK/ShJVrKPOP
	VAr23qU/fZPdxVUySY/tcYxOg6JkakPQ+3ANKZselG1m/C4gV1GaYf5Aj9skXcD0EzAOaTvzN8u
	u6McNRuNSURUPAwSBfVPuLsW1FK2ehEu6WM5m4XKMnaVeVYkBHnH8ftQyD/thqAeY
X-Gm-Gg: ASbGncsVe3gXAEX6ZvjhCrawY5GcYaV0qZ7tCHeqXNhNiQbWPl/Qp15fYfUVER2+czZ
	yxN29+72wQIpbTZRsiRzp13gYZnlm3mFe7td/KoI5lgGYjPKHO7LU5Viz6VKfvOZW/nzvNcb6ab
	9gujjkTPs02B/zQ3s7RuxvBIPHovATPdUdEqzcsOz3y3F5zk33FhMU/E8bq/6uBIdv5S0zc10wj
	CkuZlSJSZQyz5VdpzfO9sHSSXoT3kmT3CbpXzNskAGaLTJEFila6g1v+Fno8SaDgt9puEfZsKVD
	4hId3VOS/ybZ430s84Ov+QhDufvM4OJ/xRagOnw6xX+NRP2jkNsce2QSKBpJVBZRvz8pt/5wi0U
	qSH3qKeC8ahJqNYR5qhrnm/kRnlBBmPujRNdTDEnYHE8dX4KgFy+iHRfo
X-Received: by 2002:ad4:5de6:0:b0:87c:19b6:398e with SMTP id 6a1803df08f44-87de70b4724mr204621326d6.2.1761571349367;
        Mon, 27 Oct 2025 06:22:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERE9vYsDZcoNA0WsLgwk+/4zZa5M1BCBMWIBkdBse7SWtg/6ZU8mEslR7ufn5BKT+zPKuiFA==
X-Received: by 2002:ad4:5de6:0:b0:87c:19b6:398e with SMTP id 6a1803df08f44-87de70b4724mr204620706d6.2.1761571348570;
        Mon, 27 Oct 2025 06:22:28 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6c129sm6430632a12.3.2025.10.27.06.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 06:22:28 -0700 (PDT)
Message-ID: <b16872b5-e497-484d-bba5-7c4ec590cfc2@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 14:22:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] Add PCIe support for Kaanapali
To: Manivannan Sadhasivam <mani@kernel.org>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <o4o6tthwz4vz5uqqjv5c4cld6qhhrfa7xzotjd3qyz7gpoab5s@ki4nwe6us4zc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <o4o6tthwz4vz5uqqjv5c4cld6qhhrfa7xzotjd3qyz7gpoab5s@ki4nwe6us4zc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNSBTYWx0ZWRfX4tRtS0LqDHnI
 WrJoG+8UoDdg4yHeWqKaSlUmjRWQUzx/GpM3zI7y3fRj0PR7kl6PkWXHSyuVy9qvML0pDzUUCNO
 K5O3qPHSbkDKby/45r3lHIFQDOgO7dEGcXGO2kbgQGjw7/6gVhx2c0eud+s5e9J+ElOw3k5AfBi
 /NqrG1jDJnppewQ7mWPDFCvzswUgzNtTF6bFAIZ/KAD/SnTYawIGErJcZFuWWDTXSpF270S8jh3
 F59926moIpCiDf03XGSteJIqZj2axyNaPWsqFbKIVbKZwUnFXj8/D8fio3wK9E2J/GQ7uDHTi41
 GML/o5NHHvIoLmkRMZc30MY/6e+b76+HBdjZuvtNhWFzW3uAMhb/f2iwScsOPl3LGHLQfXzYBrk
 /HDNmXno7qi/svRZchyAnK+tYUQFOQ==
X-Authority-Analysis: v=2.4 cv=RIW+3oi+ c=1 sm=1 tr=0 ts=68ff7216 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ceeQHXABJUnddBcZNCUA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: wl40W71YCzg4Wxa_IbltN-eZuATs96K5
X-Proofpoint-GUID: wl40W71YCzg4Wxa_IbltN-eZuATs96K5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270125

On 10/27/25 2:21 PM, Manivannan Sadhasivam wrote:
> On Wed, Oct 15, 2025 at 03:27:30AM -0700, Qiang Yu wrote:
>> Describe PCIe controller and PHY. Also add required system resources like
>> regulators, clocks, interrupts and registers configuration for PCIe.
>>
>> Changes in v2:
>> - Rewrite commit msg for PATCH[3/6]
>> - Keep keep pcs-pcie reigster definitions sorted.
>> - Add Reviewed-by tag.
>> - Keep qmp_pcie_of_match_table sorted.
>> - Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
>>
>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>> ---
>> Qiang Yu (6):
>>       dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
>>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
>>       phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
>>       phy: qcom-qmp: pcs-pcie: Add v8 register offsets
>>       phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
>>       phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
> 
> So this platform doesn't support nocsr PHY reset?

There's a reset, but the UEFI doesn't program the sequences on mobile..

I raised that point internally, maybe next gen > 
> - Mani
> 

