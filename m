Return-Path: <devicetree+bounces-160359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C33A6E75B
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 00:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ADA43A3C0E
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 23:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903FB1F153D;
	Mon, 24 Mar 2025 23:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NGHhghOM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13FB199EA2
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 23:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742860652; cv=none; b=NZCylCSJgvBwumHCxRy/TE0276T1LYDv4n95Mls9Yq38tgLq9kRqOVl/1ZidQWNmOKRRadP2tAkWzaht+LRo/PUALzs5XPHMIGZ746NpERlk0MZm1LgDs/0en54z8TOlkdLz22rID50TYT/YFsGhffw9s+351pvrTX3zmR7xyhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742860652; c=relaxed/simple;
	bh=gOuoUKI0iFuR7dyIPRI4sePjhSifvEZDKVfEKNC1WbU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZJhBPlHtJdH0c0lvDTKE7CojWllDmraJg1XqCp3cb0AuR7GZoxvmOi1sUvz5VudmWLoNVmdHvsCLET6Z4PgMUbxQLwN9O7kJXFVtRVSXBHacaSkG7AWUDA53eQBAC3B7y0cZW9EfUJ5ObqK/bQvca8Cw9AySpITxMGwIsJmFFzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NGHhghOM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52OJTOhC015736
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 23:57:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VzyYO1xXBhZFPzvXU2mmKZC7DN135t1mriMQovpRv48=; b=NGHhghOMmv5+4mx+
	tC5XTA/fd51x5bfam59B5mDj1/waWLTn23WZMDDd8Gs4jHXZV72W7GLefwjT3H4N
	ZqJkMWmzvtMf/qzEv6v0aRTkd3HjUGAn1TkKNTY+y4b1cPEL06ICH+2p/fLLC1UQ
	A7CkUJsXfzzxnHE5wz4UbA4zGgC8qC6KVG5L/APL7byrlvciEQMgfYKSQ3rf0eG5
	cO0QqBuaB9GIe6H5HYrJMEIwWnTvNdKoNvixwx62L+CjxnnwP1O90TDl9XZQVF1E
	g0Pl9ykSI/wNK+l1prEchNdOVJMj/Tk6yGbWQYnZtlou72rc1IW8V0mVZ/hXbcmy
	51xUkQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hn9wdw78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 23:57:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5ad42d6bcso148998385a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 16:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742860648; x=1743465448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VzyYO1xXBhZFPzvXU2mmKZC7DN135t1mriMQovpRv48=;
        b=apM2KH6At8bXL9kRJdNIn0fmL8HY++YJ8KzAQFeH9rg/1l4wV/lXnxKFa6yt4NcRp5
         iJHOpxxH6YmtaMVD1rPDzIm00gF9QAYaajwQaKkzyfTRsCfxumwHclIq00oMYLr711Sy
         QgMvZeUMa0M7oO4pKF2ariGwCeVyKOnrZs+xxQPY9lKd39m4J2GeUaitTICKHQPDgtnW
         5vcnqjIqp279O8IERfwS+LPIJR5dKYbPqMEwr/H5l9hPpLhY4sjEI9/4u+ZLKYFHYQ5N
         jzZuPRiXhbae3taao1rBMnvKTiKNVFWCe+rlJPbFkyCZ1VWbezks+u8Xk6M6IIjDRQpA
         hA8A==
X-Forwarded-Encrypted: i=1; AJvYcCUccZvguUxsONZhfTMJLH9hdS+oqXh9MyNaJMI5sTd9bz5ZTGcBD5N+SqNcVJiN/GcU8lkM2UTQTKJy@vger.kernel.org
X-Gm-Message-State: AOJu0YydziZNlIJaFa0h7NrCFBbFq9VhQVkcMo2/PRqrKlp/sCy4ezDP
	flqtHYlZmCP+lsvl3kfOnhDWzc5jTw56CpLCp/AXtk4K88yHG49069X7ElknLqDQIM8j+bndd0K
	1DM1yiGXDmPonXXcs3zPGBSuppPupqmVGb3FsazBSm66NtAffWe8tqIEdN6si
X-Gm-Gg: ASbGnctDC6HLx85mEJNg84YbOlTQ9DrHDZBBG/RxoVHOgQbHsLqQMJatcCmL/iZmiwa
	Gq988QsWnK39MMEwAKJD2SLNE7wQ6z0rl3u2iGqLXBdS7xQVBkILgNJaFikD7E4aD/jNkUNHfaA
	Dy/ylqctwociR0Qw7r2T47b4Xs23ikIu3m7aNNgVPW6EJYj6D53Zjz30QewGoR4mfgzr0eDmrN1
	FrXTCTdDeqwFzAn5aqdpD0LiauCGjm8cq+J20NriSTiRTCEnbwyq+mSwLv/QCcmXs4TS5mlYFbc
	gEUt7u6cooxAseK1gX4RX3pAoUwMiqTBBjpNRGigSWFCeIBgteR0ekFrXqaPLtGTZ3Z39Q==
X-Received: by 2002:a05:620a:4509:b0:7c3:cf04:112b with SMTP id af79cd13be357-7c5da0235a2mr62117485a.10.1742860648528;
        Mon, 24 Mar 2025 16:57:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaFtH9KUWc9LD6wIas9DpkvOm6+JLrFjhmFXE/g1TJhp8kZqQKZ+plaTaZ1TBFyF+MqraBLg==
X-Received: by 2002:a05:620a:4509:b0:7c3:cf04:112b with SMTP id af79cd13be357-7c5da0235a2mr62115485a.10.1742860647972;
        Mon, 24 Mar 2025 16:57:27 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6511f66sm1336863e87.226.2025.03.24.16.57.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 16:57:27 -0700 (PDT)
Message-ID: <55eada15-222e-4b97-a519-95b5e3aa7c23@oss.qualcomm.com>
Date: Tue, 25 Mar 2025 00:57:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: clock: qcom: Add CMN PLL support for
 IPQ5424 SoC
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_suruchia@quicinc.com,
        quic_pavir@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com
References: <20250321-qcom_ipq5424_cmnpll-v1-0-3ea8e5262da4@quicinc.com>
 <20250321-qcom_ipq5424_cmnpll-v1-1-3ea8e5262da4@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250321-qcom_ipq5424_cmnpll-v1-1-3ea8e5262da4@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lCtnDFeymPbwAP0Eo650HvI6gu2FS4Cb
X-Proofpoint-ORIG-GUID: lCtnDFeymPbwAP0Eo650HvI6gu2FS4Cb
X-Authority-Analysis: v=2.4 cv=CPoqXQrD c=1 sm=1 tr=0 ts=67e1f169 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=4Km9-k4PQp5KR6WkhUoA:9 a=QEXdDO2ut3YA:10 a=RVmHIydaz68A:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_07,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240164

On 3/21/25 1:49 PM, Luo Jie wrote:
> The CMN PLL block in the IPQ5424 SoC takes 48 MHZ as the reference
> input clock. The output clocks are the same as IPQ9574 SoC, except
> for the clock rate of output clocks to PPE and NSS.
> 
> Also, add macros for clock rates that are applicable specifically
> only for IPQ5424.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---
>  .../devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml        |  1 +
>  include/dt-bindings/clock/qcom,ipq-cmn-pll.h                   | 10 +++++++++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
> index f869b3739be8..bbaf896ae908 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
> @@ -25,6 +25,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,ipq9574-cmn-pll
> +      - qcom,ipq5424-cmn-pll
>  
>    reg:
>      maxItems: 1
> diff --git a/include/dt-bindings/clock/qcom,ipq-cmn-pll.h b/include/dt-bindings/clock/qcom,ipq-cmn-pll.h
> index 936e92b3b62c..e30d57001c38 100644
> --- a/include/dt-bindings/clock/qcom,ipq-cmn-pll.h
> +++ b/include/dt-bindings/clock/qcom,ipq-cmn-pll.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>  /*
> - * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  #ifndef _DT_BINDINGS_CLK_QCOM_IPQ_CMN_PLL_H
> @@ -19,4 +19,12 @@
>  #define ETH1_50MHZ_CLK			7
>  #define ETH2_50MHZ_CLK			8
>  #define ETH_25MHZ_CLK			9
> +
> +/*
> + * The CMN PLL output clock rates that are specifically applicable for IPQ5424
> + * SoC. For IPQ5424, the other output clocks and their rates are same as IPQ9574.
> + */
> +#define NSS_300MHZ_CLK			4
> +#define PPE_375MHZ_CLK			5

Not a huge fan of this, such differences are only relevant to the driver
part in my view - bindings only let a consumer reference a specific piece
of hardware

Konrad

