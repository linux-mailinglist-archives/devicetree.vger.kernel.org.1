Return-Path: <devicetree+bounces-196493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7427B0591C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE8E21AA2424
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435442DCF4D;
	Tue, 15 Jul 2025 11:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hxeTaSLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8508E2DC359
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752580065; cv=none; b=lwgBPbWGAjbtQ0oLMeJKYovTruU/fx9L4Tv0FfCnig3RLPeP700w8+C3k02iuHIiqBPj2nSUQD6WtVwvPCfU8kpXelPjqzEMm++DGMuQ9xiZb4XuAOubAPA4oaWdhPopepkBxdtDY6ygXlRtZEp5EC28gTOFn371m8HNAjKP09A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752580065; c=relaxed/simple;
	bh=OGNOsMqNwzC6G/i9UwKvbTqXMfdKqOw4as/Q58XcGVw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mtU9Udz92rbTAlGD9IUr2sxuOhBgVKX1DFerBZfdVir4nYwJjJEKVpSf/hbC1yk/wAalH7AUM6lOjHnMkci6GXnvCEcAaFTFBzjuD/7IZsGKMbmJ8nJtFkpnP7fxRjY4+vSNXxn/VEDAV7RwejXjp3Tk48RbYeB9TaE5u0TSuyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hxeTaSLl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F5x7u3017991
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+iXLFGA6J5aFgF0rOG2NVhZA5bpjJjvu96bzK64t0fc=; b=hxeTaSLlbwM3IkY9
	VOUWJ9zFL+zNuiklw2zu7Rk5K6+pYJeZylNTefM6ZedT7EIkJV61sPN6m3f21dJ2
	tcOt5qZVjhE8BJr/nTCSb3KeQY9p9l4mm9tt+qQ/ADsnqcMVf2ywTxK7PJqVNOR2
	Y3XJ1vCu7msHKb/uFl5cGVb2i0PiOFcxc8rT92emwI4LAqr99EuHYQmcRC501QT4
	3XN8JumPnAvzB8uNWTs5JOD3MIyYFkoYc6iDlEPRr5rQiD34CCQXBWPFFdr4G/Pk
	k2U83jvX+/07lR1dnL6YmJW7SwEPD747tE/YnMbo7o4Ei++gAvwDZ3eFDMYPtulI
	V86oRw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut7ydf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:47:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab77393308so7186901cf.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:47:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752580061; x=1753184861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+iXLFGA6J5aFgF0rOG2NVhZA5bpjJjvu96bzK64t0fc=;
        b=uxBhhhZzFjkPb+gyxCp/b8ZxbzO6vJ6kudI2t1x3fywG62GOeRc9s8e1XmS5LK0+Go
         +9mTLl0gHeICmg7yVC42YCz5va9x1g50EL7MQE48rW2p94dQ4bJ3XSkL46O51dZcaIgp
         vDiHdwjqGHzzrQXQGu+mJVMvFUKaNvqzpS/CBikuOnc/PzHAyX+pwtN8muKYf09A83t4
         UakE12yof+hOekdCHeNn/hvvYFIq+aetmqY2G3EYPCKHB6JK2t+Se6n5FimC4aOQRzJP
         6gfAYLguJWpwWO5XCAGSlO83ki3wDdsm4QWoTjtSyzkwUz0k8dDz8hv0NbV77UZ+sHJP
         ZHYg==
X-Forwarded-Encrypted: i=1; AJvYcCXi7PrqGMXkwW5ezMJV4gJED6eo8CwQ3NGOml3cYmmmNwYf54vj0Z6b1CpK3ogOyCM7MaB6qRRcB9VZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx94BjvdLwxn+1PlqzJ9rDdESyzdt7sgU929OvE4NFDlaXg78w
	bMbBC4YsfNHq2vJjKYbCgB6uHdzLSszLSEtcZBagZ7U+GtbSd7NN3ZZHJq8ic469zWVKAMZz4jT
	oAaahBWSFSIebEmwAn0OkprP8N7p41ie1DhhMdBdYhyTbVIO//CoU3YGmVpDdyds+
X-Gm-Gg: ASbGncvxR8VmifLsUiO+lk8GBhc0MwHj5I4aGuegOc6rDtm5K5cLil4A5lB0EqWMItd
	7sn3wBkMKUcpstU47RLVxY4EmU02/z1v165OpG9Al3LopHZlzwDzqLf7Z5ce9h/SIilWWIg9vzI
	IsNS4KhrxpGRzDXveI8ATYrGivyKFaViS8/+jnGtPXFGyITUCKXI/Z62x5BqLPnpjZvpX6vxRG7
	DiQJHmi4DwA8fyLB4z+HoXHtfM3HQBgtY0nwMJEpGqRF/ikGUDKCxT8cdX5H6njai1ovK1XEf9x
	W09SsQexlK3txSqwE/EGPV1UJeu39r8doxRBTdFMhJC7cBNvpjRepKVBIN5UPoJ0u4TFMbq7LLc
	5ux4mQraernND60X9Pd5f
X-Received: by 2002:ac8:5a93:0:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ab86e22a8cmr7185621cf.4.1752580061448;
        Tue, 15 Jul 2025 04:47:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE16WXzqfrkizeZwS9xDN1JalpfUl7uZPacEPMkaJASCCYgdE2C9z7E6fN8uPL5G0sXubPD7A==
X-Received: by 2002:ac8:5a93:0:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ab86e22a8cmr7185261cf.4.1752580060937;
        Tue, 15 Jul 2025 04:47:40 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90a07sm987503366b.6.2025.07.15.04.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 04:47:40 -0700 (PDT)
Message-ID: <98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 13:47:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, Johan Hovold <johan@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
 <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
 <aG-LWxKE11Ah_GS0@hovoldconsulting.com>
 <4f963fcc-2b92-4a01-93a4-f0ae942c1b6f@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4f963fcc-2b92-4a01-93a4-f0ae942c1b6f@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=68763fde cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=dJGf4bKP5mfmDP1ZOs4A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: i7e3JdwVB-gDfJZcY5fhz9gAYm3bna8Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDEwNiBTYWx0ZWRfX8jQFhqSnRMmu
 OeSFs/t01elZQsFxorWDpcAYMk5VzQ/TFCuE7Tv7QcscaaVXsC/6ywBt5Vr0/eSz7zRYmyBPYGI
 +4Zqnj5WO8d44Lw+/7yFYsMjWrpAai5PXyjqCaFd28hDnPA5UZVMaImihkF5hre0JiL8ax1QvQS
 JbpZf0ayVBOQyLnFFr+I5Dp53OkfD3DY4gmUh02rwcKS//DP7P8myywPRpQAWWeaFNlAzxkhezz
 t5TAYfSZoN3mbzUAJNSK9yLa9YHIMVOaxXySmQAvMMzc0jJ6+6hrfqUYGPHJu7wzwlYfXofzW2J
 UPBIVB47PNdCO8o32HbQZCB7rqNJ7z6E4K5i5AOWQjhuUFeTNeLvWzAWp34m2NAZDY8rtg4PPNO
 IcPsUQiP9WrdlKbf6BPrZ0jDXN8+JstnBdpux1yk1ZET6ITfWs8Mp0n/ZI0/0uY8+wSv5ALa
X-Proofpoint-ORIG-GUID: i7e3JdwVB-gDfJZcY5fhz9gAYm3bna8Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150106

On 7/10/25 12:24 PM, Ziyue Zhang wrote:
> 
> On 7/10/2025 5:43 PM, Johan Hovold wrote:
>> On Fri, Jun 27, 2025 at 04:50:57PM +0200, Konrad Dybcio wrote:
>>> On 6/25/25 11:00 AM, Ziyue Zhang wrote:
>>>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
>>>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
>>>> replace it with gcc_phy_aux_clk.
>>> GCC_PCIE_n_PHY_AUX_CLK is a downstream of the PHY's output..
>>> are you sure the PHY should be **consuming** it too?
>> Could we get a reply here, please?
>>
>> A bunch of Qualcomm SoCs in mainline do exactly this currently even
>> though it may not be correct (and some downstream dts do not use these
>> clocks).
>>
>> Johan
> 
> Hi Johan
> 
> After reviewing the downstream platforms, it seems that GCC_PCIE_n_PHY_AUX_CLK
> is generally needed. Would you mind letting us know if there are any platforms
> where this clock is not required?

Do you base this on "downstream has it", or did you check with the
relevant folks internally? I'm still unconvinced by the clock looping back
to the PHY.

Konrad

