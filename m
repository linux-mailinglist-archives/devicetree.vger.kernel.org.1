Return-Path: <devicetree+bounces-153251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAD3A4BBFE
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 11:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EA18166AB1
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 10:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D79A91F153E;
	Mon,  3 Mar 2025 10:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T6qLtJnb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626DD1D63F7
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 10:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740997485; cv=none; b=YEb6qSerKLju/WgWS2IijWzsGxgUqUfeU2JYPDHVdKT+kRfXWYbHoJC2obQSEXQkU6q/kXGK9SUdssRw4ae7K2da32NsHppwo0JDTILArVVtp2s7IbzclYfhvyWvegwHg5b6LGF/D6F/tWTRyx0UgJiLFQTbOtpMt1oOKApYNHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740997485; c=relaxed/simple;
	bh=oNannqQPiN20GZ+BHfvaroWwQhuHDZI4eMqVKF/YwNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E9G4MSGGJ2DK/cFMYQ6cQd+4eptKI6cWJCvSNj91AiKLg5rCQffoZm44AsHDBY5ThturgoVoxDuCX1dUT4bYZgMRovnPqsPm3aFY6G7iqlXgdtl3ry3/Dn7kZwKkxGo1hUKH9MYiH1lYIk0FdNfctKnV6ORwrRMM+bEN+XPhE1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T6qLtJnb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5231Wmk9006751
	for <devicetree@vger.kernel.org>; Mon, 3 Mar 2025 10:24:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q5ahGViu7mWHfBE/U6LabXy74q9ltD+IEs/cbzuNlcM=; b=T6qLtJnbfCJhPlGv
	EkgU3kDNr6HKJCP4M5wBdVg4Yz9ZTmUqZ0yBItZAkrZkn98XAwouH7ZtlikkwPax
	GCEsRJMvhKRfmxzdDMLRpRtZdlXQJtUq7tOSgn2Ejld8dmcykaR8N/uLUEAdpleI
	fA39wVaq0nKIFHyWEtozFD12JNHxyGL4ynZzBk+nJrwrHrhPxAd4JFyPzo737jPW
	aAYFnQobvcEUXmhIOIoW35JMaT/Xn1/XJN5FsPvfPl09s829Dj4OwZjZcNGb7WpX
	vGiP0g9lMLw10YL+aC4Y87M5cre5/k3doIseW2/UDl4wc3dA6Z7PvvdikSL8SpJo
	8Vu/9Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453udgv9t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 10:24:42 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2f81a0d0a18so8656422a91.3
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 02:24:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740997482; x=1741602282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5ahGViu7mWHfBE/U6LabXy74q9ltD+IEs/cbzuNlcM=;
        b=J3WbV7P5cW3M0CCfkBCRZmGKzbPxKGsbfAGsfuM8C5id9+YpTQUczexz0IfCBhO+kN
         QM5QthHnFMbHRS6XFqc7Bf//w1eQYL3bPwU3PXCMRcGhDADGOwrFWo8hEEfdGaGtqIvm
         HbeT5+lq7TPKzFGGmIYpTGmEz5Jx8h5RxJJ2kw0xIP/pCT88ixeav99FfmE6VrXV0Z7n
         c2IoNuMazEhdDCGmYjqa8baXl1C366ShgPupjf+EsFFYq1A7G2CaFULmFOGEm3TJZzxG
         Sv0sLhV4yzgHnx1kZF3weTK0IWUk+Uz5fQ6NeYDR1WReB4URIedJngXlocI8D13rp86r
         cB+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUmjMqUBBrr/0shg5KWPKJ0b9GVXYsxB5nM3yCnNe6MlbSe5chCNZaYAQgMFqCHF3WqoneH6Jeof3c1@vger.kernel.org
X-Gm-Message-State: AOJu0YzVqxZ/IM7ZO3R8/Yxkis9sooyvV1DJY2Jtk8+LOH+EyvI8R/PG
	cq74im6shPoVACQBobxEzInR9vbcUzf4fhOz+MoSAh/T8E1yqckiuGyh2HuZ8n3EYL+js0CReJ4
	dpeH1xeD9SVa7e/LgXTssYwgElNOD5lX7ADVOZ3G2HyS9YWaPXqZtDD1QASeu
X-Gm-Gg: ASbGnct3ylQyUHLSGhM8hNsq7+Ab9AiIcHNkeqUywQmamMIG+K9ZcggcCIvBxs6lc8R
	QL7EM5QqtC6bfjIukuk68ASW2Q3tdYLIvwuKL35Tdwf2Ql6b9Or2Xxjbjq48Av2SeUSmqLGh4ZD
	kW1b+0G0cRTLv8eSE+FjP6xobckXQtfVB3RIH9yAxjqX4QGw3qotBChqvrxaVSc5w/v6y3XJJZX
	JANxpd3jq+udt6gdxwIrlXNnGyakVDJEmUZK3U8j52hBqeyP81bAxNnugaS2j+21VbWR/gbA8xZ
	Wt8vI7PESalBSPb8tAeydQ8PHXZmU9aZwR0SVgzk/E71SlnRcXt3zbjYgjs=
X-Received: by 2002:a17:90b:4988:b0:2ee:a76a:830 with SMTP id 98e67ed59e1d1-2febabcb0c7mr21393575a91.24.1740997481651;
        Mon, 03 Mar 2025 02:24:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEALCniW+g8dNGDdCDI6uEm0eVuwQCKj33EnrSZUUlmNAZ/nXpTsx/74bSfs7XoeJdEM7XvHg==
X-Received: by 2002:a17:90b:4988:b0:2ee:a76a:830 with SMTP id 98e67ed59e1d1-2febabcb0c7mr21393547a91.24.1740997481289;
        Mon, 03 Mar 2025 02:24:41 -0800 (PST)
Received: from [192.168.1.35] ([117.236.245.126])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223505293ddsm73795215ad.229.2025.03.03.02.24.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 02:24:40 -0800 (PST)
Message-ID: <8c416213-8f46-40b0-aa04-a2a89d5dd0a3@oss.qualcomm.com>
Date: Mon, 3 Mar 2025 15:54:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/23] arm64: dts: qcom: ipq8074: Add missing MSI and
 'global' IRQs
Content-Language: en-US
To: manivannan.sadhasivam@linaro.org,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250227-pcie-global-irq-v1-0-2b70a7819d1e@linaro.org>
 <20250227-pcie-global-irq-v1-17-2b70a7819d1e@linaro.org>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250227-pcie-global-irq-v1-17-2b70a7819d1e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AJ8A-MFBYR27tlB2gr9-8U4wh0y7LAo6
X-Proofpoint-ORIG-GUID: AJ8A-MFBYR27tlB2gr9-8U4wh0y7LAo6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-03_04,2025-03-03_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 mlxscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=549 priorityscore=1501 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503030080


On 2/27/2025 7:10 PM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> IPQ8074 has 8 MSI SPI interrupts and one 'global' interrupt.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/ipq8074.dtsi | 40 +++++++++++++++++++++++++++++++----
>   1 file changed, 36 insertions(+), 4 deletions(-)
> 

Reviewed-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>

