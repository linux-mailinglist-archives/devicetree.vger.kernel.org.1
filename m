Return-Path: <devicetree+bounces-204606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E81B2609B
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:19:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA42C171D0C
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9C12EA17C;
	Thu, 14 Aug 2025 09:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eWw0Gvyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0052E9EC1
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755162700; cv=none; b=b1C3hg3LgRCMcD2UdV+Y+ldobIIe8zfLJyljVZxzCUrpQEypn65QmfHAJglMJOatdcq+p0Daa12UXo+SenC8SuZW6zUpcPE9jTuvca/dLywmn6Qy+cgdw7X+ItLrOU3jQVTls+8HoD3jJZY9VoqSsR1jlnOhTlmhMuJsPEIX3PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755162700; c=relaxed/simple;
	bh=kk0YI5StxFttNwDA3oGkDubt9hnirRjZcrzk0IXAslM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dG6glZD93XwkAvfVCpaVFYiD2DK/BAPrirJq2jTLA3O9+pgyDDymPO+89PHqY9fgbJeGqZg/gydmpTZjXvO5QY6eOBChbH+ddexpn1hT/zfwobGMDpRu0SKsI785GQ4m22DRVElo60BfX0iU4yHO9yRU5PEVDhZXrXSFnu9Cp5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eWw0Gvyb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E96Ora031963
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:11:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YlOPAbajSUn2z2Yifxmwpg2ez5fT2y1/JNo9XnxqhhY=; b=eWw0GvybcHWh/gIw
	aO79mFAkVMKjUUNRfDdPM1I5+w6JwkS0PwpLaQ+o4UZVRiry5ckSReNMKT2BUiwX
	LP+05XXRwQKjQxcc1ZBasaHSZMMXuuG9/LnLqCzwmdfe11gBWOhi+sO8JKbzEsz6
	fLW5AjeGRV/OA0F4JlQEO2LuSkcWGz4yMMcaGTiF09GgXkMtoekdkVHQswU8Fd4w
	AcLd4niQc/A6qWb9w6DekbIp6vDwhbmESQRhQiHCsZU7oUMk6nbnu7wId7H92JtY
	I/PXSLgtIIiVz88sy6WCiIyPiSZF5/fN+UODGBNE/RKFUXtNMYICEj62fUbWVyye
	A4LEvg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4k20j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:11:37 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4716f9dad2so1099949a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755162696; x=1755767496;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YlOPAbajSUn2z2Yifxmwpg2ez5fT2y1/JNo9XnxqhhY=;
        b=MXQ7k7/eebvEeH/4qYQjMbJddVVyTAa9ygpyljGaVJdBMBQUHPfULKbgjwHgLu3hBl
         1cafyUr4c4nkUd/ooveIMi7mgvAHF7PXtv1CBuOK3+Fd+zf7p3FjrXhXiQuj8X9q4gDb
         0c4Wje0+N9BjVNruN26waoz4QSxtniPDAJGbR6Hyv27ngavcTN6yFjd/Jc2ZNv8ZUrr0
         kK10ZRQiPYgNTEwwr4QOWlK0k4cWDtq22CLg2jjmfySbvybe5AFoXnAe4DQLcnPs/1EP
         UJq3BiG+o8EkQ6p94QYkBFVMRIDhri3bApUoAV9atqG+9/QlGFTyn3L8X/q09sLnuX+G
         T4Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWLAJPU9wPiyN+ZLS2kek2GL38Gd75wesHch+ToqTH1bJExRlx2M+CsTToTniFjBxBgnCv72sRilslL@vger.kernel.org
X-Gm-Message-State: AOJu0YyZHpoc9ZTqr16sYPmxDJ7mQn3cCfLm5Y96Edm9YZTFGw7Atbad
	QEVCV/eROYwrJLSpAEDokeJFNrzw1JeIn9FhVORTQcN8weLQZjFWiwTy04rKLr9OKbMwwIVgVF7
	bASoqijGjN9kkoAho8azjFdqviwuRZtFaCMQ1U3R17mXY1X4s//0GsB3+7DBqdrTI
X-Gm-Gg: ASbGnctfad+V1DltEFVwtXY4NpltTB5YTr2oyAyE7N0T7ju2eC5y8W9aI7mx4AZZoV5
	bEMz/FJd++yNbPTvxBGiISF+4SxP4rIsDbNu2e6UnZv6/e7Xf8QFG3NFTfekXD6+G4h5l7SrTDW
	S87FJNqfq6v5xEOvj2xaF3TJ4kfwrnO8VEGZ6VzDtaIU3KOrFqOXsML8kdZgsf0hlPJC45Wix8V
	EMAfGoR4vAb/J973fcungeQU8z937i+eObo2sZi9CHea+KTxwvhHDoh+VYgLqJJs+pMzihPphN0
	b8MhT9xn1s86yMLdLgPs7xzYn65DayAujjX6PEbaeh6mT4zoMBf8h36mJIb+1H3ftkHubS9gO/H
	qHaytCVCFuS8K8fM0ggPQK5Lx4zo=
X-Received: by 2002:a05:6a20:12cb:b0:23d:4777:49bd with SMTP id adf61e73a8af0-240bd23964dmr3285081637.21.1755162696310;
        Thu, 14 Aug 2025 02:11:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5rs4ptpFP+eE+aDbms6k70Iy3D9l8fxNcaggUmf3/3yois4BxDJjb+13OkBOz7Zojg5Z2kA==
X-Received: by 2002:a05:6a20:12cb:b0:23d:4777:49bd with SMTP id adf61e73a8af0-240bd23964dmr3285040637.21.1755162695865;
        Thu, 14 Aug 2025 02:11:35 -0700 (PDT)
Received: from [10.133.33.40] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbcef6sm34219011b3a.85.2025.08.14.02.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:11:35 -0700 (PDT)
Message-ID: <652c8f5d-ecd5-46ed-b7f5-9387ee11cce3@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 17:11:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
 <5reeryefhw7burzf2lymhg5wivaq2n4gq5hszvfp57dergvpyx@qehaf334gdrn>
 <7e5d39e0-115e-40be-b44f-0195a4827a0c@oss.qualcomm.com>
 <63ecde5c-8234-4630-97e8-5806b9ff3eea@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <63ecde5c-8234-4630-97e8-5806b9ff3eea@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: IXNWq74kHIS21f5yUo2G_-wV99w2PHIC
X-Proofpoint-ORIG-GUID: IXNWq74kHIS21f5yUo2G_-wV99w2PHIC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX/taukQxcZ2uS
 Xal/8xP9VXXGC0X2+BXdINKgRIbse0CnJi9Av0+zmnuWLxXFQ4sT+LLDQPhEI5JbSU8JN/wwotA
 a2GrUxYATQYfwY3xZTkbdWQbuKVUT41TvksScKnqtTq1r+ayHP+j/v6I0DqcNsagC4iv/mUdUrj
 apJplThXdTvPMwR35P6PyVaouBsV0LcFHrekdGfpmY4e+/G4r/dF/qN7WEfuf2ynvV9h9e9DS8K
 x4lIGe7w/ICn90fi4fgHJ2pm4qhKw1cip3p6p0V7+Ai71WolVyJHAy0fS8POJ54nH8z7sfqAjgv
 TQlCCemTianbrTTrLuJda+b8AOELqcWLO7LRWU+qQYpty9YWhCJyrCCdvVcStxQFd/gqrQeS6jS
 UgjB26P+
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689da849 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=r9z8OYCOk6cqr7l9vhsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068



On 2025-08-14 17:05, Krzysztof Kozlowski wrote:
> On 14/08/2025 10:54, Yijie Yang wrote:
>>
>>
>> On 2025-08-14 16:24, Dmitry Baryshkov wrote:
>>> On Thu, Aug 14, 2025 at 03:27:27PM +0800, Yijie Yang wrote:
>>>> Introduce the device tree, DT bindings, and driver modifications required
>>>> to bring up the HAMOA-IOT-EVK evaluation board—based on the X1E80100 SoC—to
>>>> a UART shell.
>>>> This patch set focuses on two key hardware components: the HAMOA-IOT-SOM
>>>> and the HAMOA-IOT-EVK carrier board.
>>>> The HAMOA-IOT-SOM is a compact System on Module that integrates the SoC,
>>>> GPIOs, and PMICs. It is designed to be modular and can be paired with
>>>> various carrier boards to support different use cases.
>>>> The HAMOA-IOT-EVK is one such carrier board, designed for IoT scenarios.
>>>> It provides essential peripherals such as UART, on-board PMICs, and
>>>> USB-related components.
>>>> Together, these components form a flexible and scalable platform, and this
>>>> patch set enables their initial bring-up through proper device tree
>>>> configuration and driver support.
>>>>
>>>> Qualcomm SoCs often have multiple product variants, each identified by a
>>>> different SoC ID. For instance, the x1e80100 SoC has closely related
>>>> variants such as x1e78100 and x1e001de. This diversity in SoC identifiers
>>>> can lead to confusion and unnecessary maintenance complexity in the device
>>>> tree and related subsystems.
>>>> To address this, code names offer a more consistent and project-agnostic
>>>> way to represent SoC families. They tend to remain stable across
>>>> development efforts.
>>>> This patch series introduces "hamoa" as the codename for the x1e80100 SoC.
>>>> Going forward, all x1e80100-related variants—including x1e81000 and others
>>>> in the same family—will be represented under the "hamoa" designation in the
>>>> device tree.
>>>> This improves readability, streamlines future maintenance, and aligns with
>>>> common naming practices across Qualcomm-based platforms.
>>>>
>>>> Features added and enabled:
>>>> - UART
>>>> - On-board regulators
>>>> - Regulators on the SOM
>>>> - PMIC GLINK
>>>> - USB0 through USB6 and their PHYs
>>>> - Embedded USB (eUSB) repeaters
>>>> - USB Type-C mux
>>>> - PCIe6a and its PHY
>>>> - PCIe4 and its PHY
>>>> - Reserved memory regions
>>>> - Pinctrl
>>>> - NVMe
>>>> - ADSP, CDSP
>>>> - WLAN, Bluetooth (M.2 interface)
>>>> - USB DisplayPort
>>>>
>>>> DTS Dependency:
>>>> https://lore.kernel.org/all/20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com/
>>>>
>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>> ---
>>>> To: Bjorn Andersson <andersson@kernel.org>
>>>> To: Konrad Dybcio <konradybcio@kernel.org>
>>>> To: Rob Herring <robh@kernel.org>
>>>> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>>> To: Conor Dooley <conor+dt@kernel.org>
>>>> Cc: linux-arm-msm@vger.kernel.org
>>>> Cc: devicetree@vger.kernel.org
>>>> Cc: linux-kernel@vger.kernel.org
>>>>
>>>> ---
>>>> Changes in v5:
>>>> - Update base commit.
>>>> - Drop an already merged patch:
>>>> https://lore.kernel.org/all/20250804-hamoa_initial-v4-2-19edbb28677b@oss.qualcomm.com/
>>>> - Link to v4: https://lore.kernel.org/r/20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com
>>>
>>> Please keep full changelog rather than trimming previous iterations.
>>
>> Sure, I will restore them.
>>
>>>
>>> Also, is there a reason why you didn't pick up audio and display chunks
>>> as it was requested on the corresponding reviews?
>>
>> Display-related changes have been merged into '[PATCH v5 3/3] arm64:
>> dts: qcom: Add base HAMOA-IOT-EVK board' and are already present there.
>>
>> Audio support is still under debugging due to unresolved issues, and
>> it's unclear when it will be ready. Would it be acceptable to proceed
>> without it for now?
> Audio was sent to the lists, so this is confusing. What was the point of
> that posting? It clearly said:
> 
> "Basic test is good in Hamoa-IOT-EVK board."
> 
> So was that true or not?

True.

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


