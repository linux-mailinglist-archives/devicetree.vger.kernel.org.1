Return-Path: <devicetree+bounces-149382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2A6A3F346
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 12:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D6BF189FC0D
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 11:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422FB209689;
	Fri, 21 Feb 2025 11:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aq2liSbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B6E2080F4
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740138570; cv=none; b=Z0Pts+H+W+pCpbyue+FEjFTNej7XcUSGcUeh5mpiIo247z71Y4jFIrUusqzB2BY1+gQf+xl4yTLuh36xLUL2fQZ3bzI7yK/zj/IyoxHsQ0YGSUtcDzb5O32ITSczlKRLuYtAYUWmQgfc8AqtB9941ckPO2Z8kjAviAfzrqH99TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740138570; c=relaxed/simple;
	bh=8arGMFLajZI+sPOPm09SQrk2nlxgudO09El3V4TGWVE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VXuchCFw0FNeit1Z6tcJpM8SNDaD5iby0F65ekca+jkw8gLadRUEcQOefunY3sjspHlG+3TZCH1jBaV3egC3rGmVILxSd8tykhhH7jc9FOJ+7+9UP7Rymw1GlO3YQ+7L5V/dpZeyGRjD+a1cpkwoF6W0/ZTg2QevFS2w8SweWPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aq2liSbp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51L6NLSm012167
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:49:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/6HBhwxgkCn5p5i8qcqY122PrKqu6SuX7ZN6cuXdGk0=; b=aq2liSbpPTLsAqeg
	rZDRWRrZG8IdHD67DphPHXh3iPe8o7A7m3P6Kcr+kHhT4CkQWuiOGDvLNdzSRrZa
	NZkGaaBJBLyY2JjryDkW3xxYj+XQ8+u7/zk+SccLDnexDVWtABcZa9UFDMlX5o7g
	8LdUwvE0PLm3Vzw+NUwhafbn51cSebRhTUx6Ig4cksrxjrw27KsSV/LvmXmsIbCo
	E7/8Afx7QEGpoxhq95M8aK7Kwmy/iDryF6o27u9TqjvAYee8BAfxYEwO/VruidQw
	2clsI99RzCGxZjZS1vjew1+KIyuFvEBY9IQx/x3ZgZRJimWUuqsHKvb9jmUYucd8
	WOkSsw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy1sw9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:49:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-472075a2b47so4674711cf.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 03:49:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740138566; x=1740743366;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/6HBhwxgkCn5p5i8qcqY122PrKqu6SuX7ZN6cuXdGk0=;
        b=sdxUDjJuENXOmEQ7Fc5p4BTLAUjAhzKwAYVgOi3M8WMOexdUTpTOJKTijImmNtosXf
         UUh78QE2I6rKhR55yRB5AgmNRu2t45ngUe0flYfsWZjXcCOpkcreXjVU8oJfXLlv4lsF
         9+/vh94Vcwn2b9yKrLIHuKkM5qz7J3R5+Bo8U9sddnNNe8EOBdffD2Szb7jQPt2nPiaV
         TQANprjctCxQxuSjPSjC7Mpwi0EKB9MHhnGIz6MvYZsEm+i8myaK9j9wFODJpOGCDJUz
         qcnXGmoCBtsLK+vxJR0jGABIVS6ns31PweXCNhtRrSejzx/fFfMNHmU7HatyoQKB1L9B
         UbZA==
X-Forwarded-Encrypted: i=1; AJvYcCXjTmxGWXFb7quWypT3yMJb3CLKzrq7IJmMGpXiRGlDTWvw0MJiBzf3D+TGvbMgJlwKuRFg9pOF4zqf@vger.kernel.org
X-Gm-Message-State: AOJu0YzLSxKIDFR7hBJ6ow3tNFbmRbcoV7TBSmdJ/pM0+RFRyRQPuInm
	oJHzpJN8nD/sj+e6Ez14z3kEi/0Z1O37R2gqAOW8yju0hDwhn+gwbd18OwZx6yjgvE3GHdrSo/0
	tyDNPEk/Byq9Uh2zFWot6z6ohkr4wkBjBOvTmS1ciG3KcczEUWhcmE2MMJtZ7
X-Gm-Gg: ASbGnctJf5/C+eq/7++v6TjozGNFnyRkZ3NgerVqo+n6OTHyg5nBa/j5NxM8z0fT8P3
	fiWHsmmN7RgRr+6pegcQMrPqCckcM8Fa5BlOoYuX6OGRGN4fUD+zddN3yui1VRBePnP8qQZuUDi
	lVD2ZGELuVmI83203X94Z2T4+3z9SzvTvxNwKFj4sYehH6oTFuDUQ5jY9CMjiRjaHhpSiDDVQrX
	hNI86FU5kNEgA/wK0BajoU0MMU3u9U26WlC0hMGpyaqIQUwYMNse+u9FzAqgIAyQJABEjhKuVb0
	b5hGRhHj+qMAe8w3AyIuNa7EmM1AXK7qqBwoBBfDx5KvJ9yqB6PDROYk4sRcvbraC3MLJg==
X-Received: by 2002:a05:6214:40a:b0:6e6:9bd4:82a2 with SMTP id 6a1803df08f44-6e6ae7d99f2mr14708296d6.1.1740138566376;
        Fri, 21 Feb 2025 03:49:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7jnkWAirRkaZU6bLGlSoCQGj/vZMj9fV2Uwdu/vuSXjXCkYcGk7wUqFHMBlf4yfMNs1gWRQ==
X-Received: by 2002:a05:6214:40a:b0:6e6:9bd4:82a2 with SMTP id 6a1803df08f44-6e6ae7d99f2mr14708026d6.1.1740138566027;
        Fri, 21 Feb 2025 03:49:26 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbac781b78sm823562366b.60.2025.02.21.03.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 03:49:25 -0800 (PST)
Message-ID: <8936f8a7-5bc0-417b-a719-806f1ce0904b@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 12:49:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/6] dt-bindings: clock: Add ipq9574 NSSCC clock and
 reset definitions
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
        quic_tdas@quicinc.com, biju.das.jz@bp.renesas.com,
        elinor.montmasson@savoirfairelinux.com, ross.burton@arm.com,
        javier.carrasco@wolfvision.net, quic_anusha@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250221101426.776377-1-quic_mmanikan@quicinc.com>
 <20250221101426.776377-4-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250221101426.776377-4-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 15vzzdaJuaBiuzT-2Q1FsiCqTT3HKzO5
X-Proofpoint-ORIG-GUID: 15vzzdaJuaBiuzT-2Q1FsiCqTT3HKzO5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_03,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=813 suspectscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210087

On 21.02.2025 11:14 AM, Manikanta Mylavarapu wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Add NSSCC clock and reset definitions for ipq9574.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

[...]

> +  - |
> +    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
> +    #include <dt-bindings/clock/qcom,ipq-cmn-pll.h>
> +    clock-controller@39b00000 {
> +      compatible = "qcom,ipq9574-nsscc";
> +      reg = <0x39b00000 0x80000>;
> +      clocks = <&xo_board_clk>,
> +               <&cmn_pll NSS_1200MHZ_CLK>,
> +               <&cmn_pll PPE_353MHZ_CLK>,
> +               <&gcc GPLL0_OUT_AUX>,
> +               <&uniphy 0>,
> +               <&uniphy 1>,
> +               <&uniphy 2>,
> +               <&uniphy 3>,
> +               <&uniphy 4>,
> +               <&uniphy 5>,
> +               <&gcc GCC_NSSCC_CLK>;
> +      clock-names = "xo",
> +                    "nss_1200",
> +                    "ppe_353",
> +                    "gpll0_out",
> +                    "uniphy0_rx",
> +                    "uniphy0_tx",
> +                    "uniphy1_rx",
> +                    "uniphy1_tx",
> +                    "uniphy2_rx",
> +                    "uniphy2_tx",
> +                    "nsscc";

I see that the input clock is named rather non-descriptively, but maybe
we should call it something like "bus" so that it has more meaning to
the reader

Konrad

