Return-Path: <devicetree+bounces-135339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 167A8A0093C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8256163B91
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9153D1FA145;
	Fri,  3 Jan 2025 12:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxKKxmQg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1501F1F9EAB
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 12:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907370; cv=none; b=ZYB6msFTgFf6KyQrAYjpFzfSD/D+V6lrPJQ4oqOMpT7/d6mg4io1YMDtet4y8gaWKwHEgwLAiIRfaPq2pFZzLSzgy/gvVm1iZgo/rhxif1vom5APu21bXAeeatOsiHCz1ynCrPygj+8KGXpJBojlZMrFlfs3gqM9a2Ra6b1N9Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907370; c=relaxed/simple;
	bh=xHazg5b8gtkTWxJX3vtZAwoqv7ie/sQQD78OTSbMw8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QkFubB/5P8MmFSB/jJpYWLJknCvjE42w3hvkM/oc+tXbfBJSQqQk6hCGJ2filVuNqIzHBlrhkX/wjJs+V7RY2W58FIB5dwrnMJ/xCvO3sTmFdAQA8aNJyWLyT+4Dj3MXxqbPIn7fwGxWKHKVHxgYL0NvjxoXELOQXrF3z47CCjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxKKxmQg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5037O0Qp023096
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 12:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M8P5uG6PJun8R28epOEw5Y3NzJYkBGc9o295jGAaImU=; b=cxKKxmQgFR1yBhai
	rRpv8IdII+TYkdgoCRUDyn01N/i4cndolm08quge1CqXUASsHlrMxuBr7U3dJqVm
	YB9gaeNGlUlA1sYkKmDud6tZ9kNbTetV2a+h1gdujhU2fh21mzkHhHP/fv7aqX9Z
	i3JSQY7ZNlrqTRnHVIEbRmifAmntLBknVKFuGTaZM9iR3NPrdXDhK3JLGdivkF4u
	X74lW81Nui7Nmp3l6HI9y7Yly2vxDaWlInFzVusG4YUAEx28TrNKokpFcdxbbzcK
	rCmKForCrZ0Cyguv2JvM7BfxJQbXWsLXTFV2f9ZCIav8aXnozPDp+i7PFmIVLwMd
	/KpR0w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xbfe8mr1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:29:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467bb3eeb04so27992291cf.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 04:29:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907367; x=1736512167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M8P5uG6PJun8R28epOEw5Y3NzJYkBGc9o295jGAaImU=;
        b=NJHuZF8dZnDcncnigUTczlHQycxAo+DyHH6GX4uXHbhW8aJZhGNv3v9aEB+0/1OdkY
         7BfnSsmPUON3TjvpsM+LBHw3lDKy/dimKhmwtc+sNmwJZlni9K33+wcs0Qo7w2jTymgS
         Xn4RR9pY47vckOV9rYemhrJcZLSopwExk9GfsUFWMkjQEAFc4cpW3cBlNy3e7dbeGdde
         iFVfmFM++panIWNGTIUdIGkcVJZzMJQOv3lOQf19hG5yxPqC1vxLgFXbVe+e8HWM2x+d
         jrVBZ6UqRo0eZO6EG/7HdD9BsIfKDVL+AXNNIfehVnbi4H/syHZBwjIz/8wATfwosI1M
         b75A==
X-Forwarded-Encrypted: i=1; AJvYcCUuMmdfgHadwDxyaZyfve/bjtM0MABKERKgfmX3Qk9MGLV2u6PMLty5p6gcqlMMHJW0nD5yJKnOg5yi@vger.kernel.org
X-Gm-Message-State: AOJu0YyCaLyLaba7+qWIcn/EVUR7v+k3bJWrK0uZaC2unG6pI8EcaLn1
	QLU71K+dTGxAi6R6P5hnOU2LE+ih9Zx8QlViuTYf24LGfNfTC3Rw8IE55CrCKOEQtxqnMuEWBHF
	+zHmVlk4CeWtzrdX3JvY97FdopVW+ZmTHjxnvH0rGU/gZ7zmLdVfprCtKiY39
X-Gm-Gg: ASbGnct6To/xuwxlYUCTd4YcBBfXlot5hOxyZdn7SsjOqVCF0LJEhM3Y4wTf2ej8InY
	BOAYPrrV0tGK7C39OrFuC5gdgwcYjJNkz0rTEuio0dZCBbEssaR8xJQ09YWGAlPeZKCjOGeQ3Jl
	QekdlmcoD2zBF3lHYPfjUwFlgwJq921LsiFe0eiRZcuGFxvjuX+f4HtkG1qs2ROUsc+0Z+flyDE
	vdvpxefjMt7pDm9xGTM016jB+D2bwmFRQ9y54jbVTju5s1ErXL4PtKg4coKiI+ZvkxeHnw54Vpj
	4D/HYXHm+RNa9XRZUEqAotMZ10Fi4pNPc6I=
X-Received: by 2002:ac8:5f4b:0:b0:464:9faf:664b with SMTP id d75a77b69052e-46a4a8b7f74mr283345321cf.2.1735907365712;
        Fri, 03 Jan 2025 04:29:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBd+GaPxhspkqPCI+ugt43bRmXkPYvV99w0sa5IQCFi9Om8iHkk3NOJSw1+HKaMtuKdDJdUA==
X-Received: by 2002:ac8:5f4b:0:b0:464:9faf:664b with SMTP id d75a77b69052e-46a4a8b7f74mr283344581cf.2.1735907363816;
        Fri, 03 Jan 2025 04:29:23 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e894b60sm1919353666b.68.2025.01.03.04.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 04:29:23 -0800 (PST)
Message-ID: <a40f05c1-6897-46e0-a9e6-8f898e97b5e1@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 13:29:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/5] clk: qcom: Add CMN PLL clock controller driver for
 IPQ SoC
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
References: <20250103-qcom_ipq_cmnpll-v8-0-c89fb4d4849d@quicinc.com>
 <20250103-qcom_ipq_cmnpll-v8-2-c89fb4d4849d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103-qcom_ipq_cmnpll-v8-2-c89fb4d4849d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wdsVccnXk0b4KxRFRPFDypuU8BUleeA1
X-Proofpoint-ORIG-GUID: wdsVccnXk0b4KxRFRPFDypuU8BUleeA1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 adultscore=0 suspectscore=0
 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030110

On 3.01.2025 8:31 AM, Luo Jie wrote:
> The CMN PLL clock controller supplies clocks to the hardware
> blocks that together make up the Ethernet function on Qualcomm
> IPQ SoCs and to GCC. The driver is initially supported for
> IPQ9574 SoC.
> 
> The CMN PLL clock controller expects a reference input clock
> from the on-board Wi-Fi block acting as clock source. The input
> reference clock needs to be configured to one of the supported
> clock rates.
> 
> The controller supplies a number of fixed-rate output clocks.
> For the IPQ9574, there is one output clock of 353 MHZ to PPE
> (Packet Process Engine) hardware block, three 50 MHZ output
> clocks and an additional 25 MHZ output clock supplied to the
> connected Ethernet devices. The PLL also supplies a 24 MHZ
> clock as XO and a 32 KHZ sleep clock to GCC, and one 31.25
> MHZ clock to PCS.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

