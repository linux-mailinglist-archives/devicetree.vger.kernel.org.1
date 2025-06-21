Return-Path: <devicetree+bounces-188056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FAAE288B
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 12:17:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB3DF1BC0FCA
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 10:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671341F239B;
	Sat, 21 Jun 2025 10:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S1XOAxxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1138632B
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750501025; cv=none; b=PVqGX/dgIWXk3BcbIO3VAAsyahwEmI3LTUY6yO8nQUkjuxnCPzzMDa7ZAQsivTo8OXN+wn2UsZ0RphPJOP/fn+XP9FZCzlB7WR9989MlrPpo0IbM7wM97eM1vSv8GJolbS2wDU6B5ON82eQTzf3Y72FXzmEOgLloWHBmQn2T9C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750501025; c=relaxed/simple;
	bh=vPnLzFJwFahHeUricYEurdfVj2ke+giIWHeToRhHl8w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YURrGTlObuRvwP25J0R96JrEzsZYtlgL3eOjFfJyj2s5AcPI07m2JXEznfaU3LMz6F2BFwVAFyp+79YNiF5j1v1pt2AXtMlddqHv4TW+0ZMrVGnQb+l1b4mj3BI+Nz1sh/nN1Du0ac0kdtM5uVOo/X4b8XiGn+B4AIN6v07AX0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S1XOAxxl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55L4KQMB019254
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:17:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mFCLLwicRIT/ld44aT8z3FJPYEU6pXL2JMcxeaCeN90=; b=S1XOAxxlrWQmLOBg
	W2q+JtbyfgaShZZzyxuoiy0TirvqNYUrMCSOTmTFq9Fd6+pghIYwyh641rzedcV4
	3J2J3JvEXiaNBORk0x5KhSFxPt0SK+0vHFf4/Nkk/5er1teynZTiyIPfegPLU9e4
	Ks2QuSRZpuKLoDjKO6mQ5O3zRo+CvIjByiInsh3aeJ1576qGzc0z+Gu34rSTuhao
	fjsOyb37udhbvmVEEt3YA9L9GWV95FmChH4wA6XWZcgTPz7ipI5Ni992g1afeebv
	L/ZxI2bxM9Kdc+4ZI9rNWwOparLexDLFM45AFTM43wCC/AQkeyiEw1RXc1a/kVAJ
	YKEoog==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dm2mghbp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:17:02 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f539358795so3276016d6.3
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 03:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750501022; x=1751105822;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mFCLLwicRIT/ld44aT8z3FJPYEU6pXL2JMcxeaCeN90=;
        b=Oo3POibQYHBZDVZI8abcWZYWCDFJVoFdbw/Vz3x7++sSkOMC7Zvd1v9u/HZtoV6iPj
         kVPXdOADA1FS8Qq2NMPR3+6YXSfZQ8SX5RreOsARAWzeO5c/W/otI9UdP60oalQ8+5ZE
         sI3nF28uVW7i1zYslfO26k/mOdOs3CW8MeVsTRT802Fu4t8v+WvsjxldH7bxiAR4wZbO
         NDB1cPFzelCfpMJO6OLmbDrDbKw764DYTaFCM9I6S+mYD5zxbC0CFeBWct9QVAxbOXes
         FsLllFFoRpAyHCf6tB8L8GPI4Go2/gyLrmPlqefgQnqhRkByNgmu1Qi+KolwPlaim0Ce
         NwhQ==
X-Gm-Message-State: AOJu0Yx43E0Tu73GzNxOgH7Uf8pB/PbFema0LOuK12dCsvBpGciNA4Mv
	B/FNldxRXaXQjFGH2Tqk+Y8t/ZygQi//8OjHbI0XxC3s8eEr0Nd3JxBe79SC3WDNpxkRjf4NdKD
	leJVm9MG6zgtw6+nelgx9u3WP9HR7Mu74mPhtmcu6gt6PtQtfsmrGDxQFAvljY7sH
X-Gm-Gg: ASbGnctbvAgImVvXfQ6Is4MmnPTme2OXKjmntdmS2MmmvI5bzupAcv1MnYdRUvjta71
	pfJf5iWmvqqtRG5pMMIjuqApu6u1aYZgIdL/HMq6Y1DiRpTguVdo+HS9NzaxrZJ3cbAxktuJAJa
	Fo2MH/lRzUUSHWr7rZ+/spOLjANM3SgnA059Fm4f5c5EFwOhWM8LsyTyGrhv/365fcfoLCoHF03
	c3WNeFv+Ku1EoCa0kaObsrvBPYgCcRTacmLyuHi4kzgKjYwqOuK7t54p9z4vw8x6eu44vmzsv1l
	8S9oqOiASfJVcutBy1wguR5waiw9YGoAr4jCssyEluSPDwhXFcq5V/0HviEqruzpQFAOQ6A3HxW
	cyok=
X-Received: by 2002:a05:6214:2345:b0:6fa:c46c:6fa9 with SMTP id 6a1803df08f44-6fd0a47e0f3mr36467866d6.4.1750501021967;
        Sat, 21 Jun 2025 03:17:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeGPqQjG6xCSUjFvNLWJwXCnIR+1W/DIRu1mmTytQ+klkZrMyqX8o5SSfXwinRdq+7CTGxPg==
X-Received: by 2002:a05:6214:2345:b0:6fa:c46c:6fa9 with SMTP id 6a1803df08f44-6fd0a47e0f3mr36467716d6.4.1750501021575;
        Sat, 21 Jun 2025 03:17:01 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053e8082fsm337209266b.8.2025.06.21.03.16.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jun 2025 03:17:01 -0700 (PDT)
Message-ID: <557166bd-cbe2-4a7b-bd6c-8daec1cecc3d@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 12:16:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8953: Add device tree for
 Billion Capture+
To: cristian_ci@protonmail.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20250620-rimob-initial-devicetree-v1-0-8e667ea21f82@protonmail.com>
 <20250620-rimob-initial-devicetree-v1-3-8e667ea21f82@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250620-rimob-initial-devicetree-v1-3-8e667ea21f82@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gg4yt_hbTyzY2NSb2JOasD-gDaPpbltH
X-Proofpoint-ORIG-GUID: gg4yt_hbTyzY2NSb2JOasD-gDaPpbltH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDA2MCBTYWx0ZWRfX8cx9XfytNsG7
 jhDNE3w0PjeTcpHcXwNNygMHSf+5um7pw6HyNi6yPWUUNBcCxQdUZYvm8vQ5bgb9ZqrjajxsNNm
 +Y+KpYu3+UCqhvsD12o1ZDC5EHg9SrtA+LWUHR2HYqEE++qOKpm9Q8fFQHs/pnVq9qtiWk4p2BM
 iJfpl+xYlmewSt9KQVlledqdKW6WWr5zh0Xalz9T6i6cal9P12mRsNxlh3TL0BEoMUoHKb09TMP
 KFO0XF4T7+XGHKg8QrwqBcpskbS+UqoLz6Q1aj44QvfCDIdsjyxaE+/L3jkqqA61SGsxre3dvUp
 7gxosfzySMj6zij3v9cenloolyryLWrYhDHEvzJHAtUyDH3kL2Welysv3K1CWkrSkR+WGfksZkS
 d60VUowQ2oErBruS4A9aHZEmROAxan9VNaJwTRlKTffu3YIlgJZJcLvFD1glRBNEM4Vjo2Zg
X-Authority-Analysis: v=2.4 cv=Q93S452a c=1 sm=1 tr=0 ts=6856869e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=sfOm8-O8AAAA:8 a=oi8dwGYPpvFf8akzgh4A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 mlxlogscore=610 phishscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506210060

On 6/20/25 11:51 PM, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Billion Capture+ (flipkart,rimob) is a smartphone released in 2017, based
> on Snapdragon 625 (MSM8953) SoC.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - Regulators
> - Simple framebuffer
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---

[...]

> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_key_default>;

property-n
property-names

please

[...]

> +	reserved-memory {
> +		qseecom@0 {
> +			reg = <0x00 0x84a00000 0x00 0x1900000>;

'0x0'

[...]

> +
> +&sdhc_1 {
> +	vmmc-supply = <&pm8953_l8>;
> +	vqmmc-supply = <&pm8953_l5>;

you should add regulator-allow-set-load to these vregs

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <0 4>,

These GPIOs correspond to I2C/SPI_1

<135 4>;

And these correspond to I2C/SPI_7

Without much more knowledge, I would guesstimate one of them is
for a fingerprint reader and the other for NFC eSE

Konrad

