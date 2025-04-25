Return-Path: <devicetree+bounces-171099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD11A9D3AC
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E20A3B6444
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33FE922424E;
	Fri, 25 Apr 2025 20:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aWbMlZeE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CB12236EE
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745614756; cv=none; b=oGb5SSO8dic1m8Z5FJFWeE/wqemXIcAa1yHTPorikf5TLRGp454kkVOYAOTRpQ2PYC+WFLcQFPPHhDkKWEnz7uYhsp/IHATpTCBvkWiA+neG8lanx3pI5eodDJhyBPi7obbL+VGrrr9RolgI+IRYzNhXhPiiNi574oMDnS7CH+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745614756; c=relaxed/simple;
	bh=U77G/pwPSxuG0YbGLIuyGneBztbU3/zw1RUcuJ9AOg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f3UqBZifLT4Z+vP24UpHYQhoamxlCJiudontp/RwWq+2OQE6ud6ufjcCoZZS6IUo6qCT14Zw82fjQcq9TKSABpGH2IeylCoUUtTPLq6egymw3A5q47j9k1PamClt1t8N4Boj/Sn4DAm3i0LIi+AMiu6VC9JKQh02zxckBiQcpfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aWbMlZeE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJvhM011486
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:59:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5LRFKuyQj8tzl/ipkd3V4uRPUSagaj6nf2RE33l4njU=; b=aWbMlZeEd1EckDQS
	VPzjP/hQDdZRJxEh+p0DZGaTR1Hkao4CYTGWChsY5lnXcxzYS3HOzeHjRu+QprPt
	mDp6Qi9hkqNGXqgA89Z3497QMKG3kCyPmLQaaOhPhojaEBkBWTtF+x9VDOLpURjh
	ixWZm+31W7m9HRkenWmVRgbAkkJvs5LcieSU1Shg2wLNG8zDZsV5FHvU6wPeKxFz
	Upa8xM+v8ebRX2StHuc7ZwBM5yrLhrgzwjs4tV0WBbdXWXolQloCPXAl+pul0vCZ
	5ixhJRBNHX0IVbCcVmS5HUpCZtbc+Ozojj9W3S0P+QQKi272gI5WI+J2qFaseuNE
	3MHakg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3t70n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:59:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3c21043so6456966d6.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745614751; x=1746219551;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5LRFKuyQj8tzl/ipkd3V4uRPUSagaj6nf2RE33l4njU=;
        b=VdjxQaTZUWnS4T7POHTbcZDVQAluS64hE/hy/RWUwMKjuKygkJOc7yXT+WFMxcpcyQ
         V/+WtuAXp1uxnBtWWzwj1B1BMQiA62jiqeIoa9wU28q5Vw7f8xj6FJpeUgjkw0gB0HEw
         S7PNX+M77/ci0PUqh8vATVTdap7t7s4ShxzlhpCvYWPpuB2+ZRu0pcroIpKWnD3//IHe
         taXhSnQUXXT6vzbAWPxoxIUg8lMI/zia5YjVLxY4cwMjw2XtDCMg03o99PtPc4Lj4DkT
         uwe76Mc+j7i7vhfNTWPasMaqTWO1PimyWT4KCZ7NEKM1NNW7/SIvNFDRU9Yzu8eqkL/F
         2xJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjcWMFC+NkBLM7oEN/JqCcW1bl+yDxZhYdRoZmeLwcxVvfobw/vqN2YP0vcURR9pxufpCWnHXVf+a6@vger.kernel.org
X-Gm-Message-State: AOJu0Yzaa02o/D9zIVSmc8ADv42XbA10C2tfGDTnjFs+DYMxQHv1T2ZI
	1mthdfyTjdenzPP4lXHPYmeZSekKQh4cd3ApOYHEQZ6iuw4DFVi5p7qtJwFqzppcViNrj0W86ZT
	+Hg9MseZh9tsPLrhGfjR7zhtIMFDScZnzLD7CUEm+NTMQPYU4ECs7+vP2iHbl
X-Gm-Gg: ASbGnctO+1qGqWPgQpW1kKm26CZy/3oMtFJwpj5g8NP8/Zny8EsJjgWU/Uy5Z22+36H
	hSKsEODRdIemvmYxgpCFf6GFd9FV7J1W/gA3I5mQZYNBpoN6pE2TM8CPbNiNHZAB1DyG4CfyYMa
	3rLKyvSX4fFGRduBeL7q5t9wyqEfW4LJfrH7lCk37fUjuw3gGvDc4QALmLFDiwq3xXWUQBDfLWF
	Jtm4hhZvn3Bl0NJsi2pHbKAu4ddSmaA9oUd5AmFm2uRFhlIokkTx+ixCcJ+blZ/9NM2hMr4nJui
	oo+6xPmowLA6SnLVafKIo8oPl2/3w8kFV0leVoY5Yh6Vk6/Lowt5jyvf6UBizl/gi20=
X-Received: by 2002:a05:620a:bcc:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7c9606e2a2fmr207583285a.4.1745614751628;
        Fri, 25 Apr 2025 13:59:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxSw5TJpnLmV47NsHo1BnQTpTa/Sw5u0NUbO0lbNkne0UoYmYWA/fJrjJvN1Yw56jJoKlr6A==
X-Received: by 2002:a05:620a:bcc:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7c9606e2a2fmr207581985a.4.1745614751239;
        Fri, 25 Apr 2025 13:59:11 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecfa375sm187614966b.121.2025.04.25.13.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:59:10 -0700 (PDT)
Message-ID: <f0443faf-ab55-4962-bab8-ddf31a751459@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 22:59:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/6] arm64: dts: qcom: x1e80100-crd: Add pm8010 CRD
 pmic,id=m regulators
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20250417-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-3fd4124cf35a@linaro.org>
 <20250417-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-5-3fd4124cf35a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250417-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-5-3fd4124cf35a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xXt9XOTI9ahUbSv-4IrWPjWVFPNNoQfR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE1MCBTYWx0ZWRfX07zFovzSU0RY 29nDFMDv9u5JvzRWzFCCZrSqpgKXmxAL0vuJsvQQ4HzWPV0kWfwUcww+f3IXMc5y+sCgD4X/1VN AB70CCaWErTBw1Wp24QSTszYdZV7XTJLGYsaKDe3chNL01D9uFtRpgw2SYm7w4L0SXfFzo1OrrY
 0slccPi6B8t3oG2JMoD492Dt0t6bfFqHsc6+DtkWkY6llbsWng6gWFMYaZjl3w+3WLmWjmlh9XV M1dsU7zqRwYkjWTF9iPSmwTxd20e2U6bHZNje6zaR0Mc45HLa4Iyt7iIWoX7/P4OjyVVRQ+TETV m6qANmE2lebVG2nIAO+AnoGMki35OFFf2p92qwbUBP/jVZcht1Ad8YeRKFlMqrl094bHfOdsG8i
 U10eFjoOADylXF6yy6ab+bXSaopdufyZV/Dk3Qs7AxOduGE4TmOAmztsKTIG1BMS2sFNtzch
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680bf7a0 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=yamDa2HSj1aoHl3nUysA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xXt9XOTI9ahUbSv-4IrWPjWVFPNNoQfR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=908 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250150

On 4/17/25 1:27 PM, Bryan O'Donoghue wrote:
> Add pmic,id = m rpmh to regulator definitions. This regulator set provides
> vreg_l3m_1p8 the regulator for the ov08x40 RGB sensor on the CRD.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> index e2f6e342db7e2f7cfbda17cbe28199546de5449d..74bf2f48d93522d3f5b7ca990c06519ca664d905 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -858,6 +858,36 @@ vreg_l3j_0p8: ldo3 {
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  	};
> +
> +	regulators-8 {
> +		compatible = "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id = "m";
> +
> +		vdd-l1-l2-supply = <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply = <&vreg_s4c_1p8>;
> +		vdd-l7-supply = <&vreg_bob1>;
> +
> +		vreg_l3m_1p8: ldo3 {
> +			regulator-name = "vreg_l3m_1p8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1808000>;

Is this and below +8000mV a fluke?

> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vrer_l4m_1p8: ldo4 {
> +			regulator-name = "vrer_l4m_1p8";

typo: vrer-vreg

> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1808000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7m_2p9: ldo7 {
> +			regulator-name = "vreg_l7m_2p9";
> +			regulator-min-microvolt = <2912000>;
> +			regulator-max-microvolt = <2912000>;

PM8010 coupled with SM8450 has:

regulator-min-microvolt = <2912000>;
regulator-max-microvolt = <3304000>;

although the x1e crd schem calls this pin ...2p9 (though the names are
doubtful at times too) - please check if the consumer is happy with 2.9v

