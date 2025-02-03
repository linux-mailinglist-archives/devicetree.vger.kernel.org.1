Return-Path: <devicetree+bounces-142565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E707EA25BD9
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5865E3A23A6
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA83205AA5;
	Mon,  3 Feb 2025 14:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LKQEsPpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE75111A8
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 14:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738591524; cv=none; b=oBd3TZSL//i4v0siMcX0Spsxt5ML5K7jLhXZN50axK1bbRo5dHCEFAC3coCK8dlNdd10TGTdKuHYnPC4MH7uwGTZVvkP2JVBjnN8WMF+tDOdx0zzONNS4jgDDnfQjaQSTIsdhX8EgApAsScs64MAzi0zy8+sYAy6s8LfLbQ2W0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738591524; c=relaxed/simple;
	bh=RPAiOgWMmu3yPq1VH0P4VD+K44/uVY2H7oc+gcv1Vt0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DrFfbc5HIFLWDAhs5IZPKun8WxAzAtFpBcTpkJ2vfTcSlKjLtgPpMikdS9ngkf3v29UKRMnwSmAxJ+Rle4nrSa0UNetEis6v7HLUvQ4KWY0tH5cTOY5627QkpuSFxUvBKzzgRUvBphpK+I5Ad2RzraVSy3sWwIDusIG5Cbj3oFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LKQEsPpM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5135bZKv014661
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 14:05:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SAVn8olU3KNdR11Q8xavIGnX0m9TWIy2i+F3+DqAvuc=; b=LKQEsPpMCvWTpCkn
	C5MMQqEU2PPLyPGS7lV/7Q3GtokmRMzhE5/sLuBTXhY/ggerBlTPFJsDkXmYjgq6
	vo/YUy8/YtkXzLEWhQDiSOqE90rbku/ga5a+oX8VJmM7otILx/hUTOJuBgAohFY8
	4IvvKYOpEkvgBm3Lo6sIILrXyM6kBkJi0KcGe7URfGQUBsShGtl2otJ0LuGFikcy
	pX1R4slNaSTWnUMsYI8bDEIgB8mOdDc0a4xYy3Pwg9UHIqHyGXmkZy9rk/O9/6jI
	qvu6WAqOycQzjelFgAkNEBcQ7wU4BS+NyfheOwjiPRBWOIW2oXm/LnaA+ZuzQPgq
	LnFhKA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jqtnha0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 14:05:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6e43ed084so89634085a.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 06:05:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738591520; x=1739196320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAVn8olU3KNdR11Q8xavIGnX0m9TWIy2i+F3+DqAvuc=;
        b=FxD8MFUBIfO8+LgkGYtZOaRmed/4daxLDJuxz4xDrkud5Qc/oX7syvOQd64orQxgSt
         jLDT8PThMbSsfjLf4f8urETnmxGpTJpOG7oPCJPdu3DbZUkWAFlOUW8d1ihMn1NOX3YT
         5WUDVRmC0NIy5iZHCfFnZyVLRTEk4JcQTO3/o02l9lWJQ2gOrTnVPedhaBTkXeGqpWcW
         xXb2eiIAohsFzUMcdPAQ2bAkFsz3GN7fK8w0pj7qWpoHK/DODJ8/zh6/2/llQrkJ1Aoq
         5jR9fvE5IM/xZIeQiH4QM7T8MOXGjeKJ8gVSFYMIJvkCsrmHXyq8NKAUAYz8LYEN8I4x
         0l8g==
X-Forwarded-Encrypted: i=1; AJvYcCVr81R8Js0iUSL4re9pO6idoIP/KgNY8qA9YSms4K52e8SHO/dijqIW6STzMpU8v16wvj6kZZg1qPUz@vger.kernel.org
X-Gm-Message-State: AOJu0YzB0G74Wj9gHmbcG+OEEuyUOqW03MxyHehKrx8RekYTKmpHjJ0c
	XX7rhSJqTPHFiE1G00Kqg/MrLqQ8ZrAPmioAZAmPKfHaXP3xBRb1c2ZWG0EMr3hudIbYPWm9N6I
	6c7TX/e/zIDjp7CeUrhCwcY9RCoPktR9Rlrl4WJRi1EFskz8oP7nG4wxaJL27
X-Gm-Gg: ASbGnctsGNU/0Shagj+ViOjrnXa6o0eFkhTQfKhYhWUNmSQi3L5waqfoSAlWXNodRQk
	GVUxP0lVmzKeFyPKVQrzehdhhXedfPFVTqa5G+PnYYAz0JuyVmhxRmK/MoaBX7gB1bHP0iXJsPv
	xk8K0G0DC3su2a95boH1sLB9dnfTE+18fi4WvI53Yqq25TbIJbbncGsRKmdyYoUteukT/up+WOC
	IIeOiAoQHh9at7UO/+nCQy/A62wMrCqGMuNkNyCXP4Djrvs/1si9X9ySuurXWkAPZO60vNyJ8WK
	N3vPQV6NqWv4PGdDAShcXWJW6S7o/vjKvNCJ11Aj8N+ZVRgxnthjPlOFGHs=
X-Received: by 2002:a05:620a:40ce:b0:7b6:d2ca:15b6 with SMTP id af79cd13be357-7bffcc352a0mr1170512685a.0.1738591520416;
        Mon, 03 Feb 2025 06:05:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHcEhI9vXikoPJbicfHzVgVexvWitCJUXqJTFDjSt+WZfBiMjT0/ZAvjU0/DTx1rj1mX1GJHA==
X-Received: by 2002:a05:620a:40ce:b0:7b6:d2ca:15b6 with SMTP id af79cd13be357-7bffcc352a0mr1170511085a.0.1738591519966;
        Mon, 03 Feb 2025 06:05:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc723e9fe4sm7781445a12.26.2025.02.03.06.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 06:05:19 -0800 (PST)
Message-ID: <e037cad2-1462-4be7-81bb-5c41c346f765@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 15:05:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: add wifi node for IPQ5332 based
 RDP441
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath12k@lists.infradead.org,
        linux-wireless@vger.kernel.org
References: <20250130045900.1903927-1-quic_rajkbhag@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250130045900.1903927-1-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KCBZ6e5QNmy_LVIbA3tVJaW2a4e9I3ng
X-Proofpoint-ORIG-GUID: KCBZ6e5QNmy_LVIbA3tVJaW2a4e9I3ng
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 mlxlogscore=916 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502030104

On 30.01.2025 5:59 AM, Raj Kumar Bhagat wrote:
> RDP441 is based on IPQ5332. It has inbuilt AHB bus based IPQ5332 WiFi
> device.
> 
> Describe and add WiFi node for RDP441. Also, reserve the memory
> required by IPQ5332 firmware.
> 
> Depends-On: [PATCH V2 0/2] mailbox: tmel-qmp: Introduce QCOM TMEL QMP mailbox driver
> Depends-On: [PATCH V3 0/8] Add new driver for WCSS secure PIL loading
> Link: https://lore.kernel.org/lkml/20241231054900.2144961-1-quic_srichara@quicinc.com/
> Link: https://lore.kernel.org/lkml/20250107101647.2087358-1-quic_gokulsri@quicinc.com/
> 
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
> ---

[...]

>  / {
>  	model = "Qualcomm Technologies, Inc. IPQ5332 MI01.2";
>  	compatible = "qcom,ipq5332-ap-mi01.2", "qcom,ipq5332";
> +
> +	/*                 Default Profile
> +	 * +============+==============+=====================+
> +	 * |            |              |                     |
> +	 * | Region     | Start Offset |       Size          |
> +	 * |            |              |                     |
> +	 * +------------+--------------+---------------------+
> +	 * |            |              |                     |
> +	 * |            |              |                     |
> +	 * |            |              |                     |
> +	 * | WLAN Q6    |  0x4A900000  |       43MB          |
> +	 * |            |              |                     |
> +	 * |            |              |                     |
> +	 * +------------+--------------+---------------------+
> +	 * | M3 Dump    |  0x4D400000  |       1MB           |
> +	 * +------------+--------------+---------------------+
> +	 * | Q6 caldb   |  0x4D500000  |       5MB           |
> +	 * +------------+--------------+---------------------+
> +	 * | MLO        |  0x4DB00000  |       18MB          |
> +	 * +============+==============+=====================+
> +	 * |                                                 |
> +	 * |                                                 |
> +	 * |                                                 |
> +	 * |            Rest of memory for Linux             |
> +	 * |                                                 |
> +	 * |                                                 |
> +	 * |                                                 |
> +	 * +=================================================+
> +	 */

I'm still not super on board with this graph, since this is a very predictable
layout where there's [something for firmware, contiguous] and [free]

Konrad

