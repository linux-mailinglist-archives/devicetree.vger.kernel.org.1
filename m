Return-Path: <devicetree+bounces-185952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43260AD9F26
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:50:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F5C31894679
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 18:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90D328ECDE;
	Sat, 14 Jun 2025 18:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UDKuxPYn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EA41DED5D
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749927047; cv=none; b=BJwkjsoUvELQH+wcPNrpIX/hwyCo4lGoUJesBb+C7wNIfgwVD9teI9j1ZKAfi4I/a4KVL4ZfljcsAhup2ftMVMoP3Q4EcuP6fbA5HBdy0qIEDe4ARE6Fb8Em5VI7t0p+G+k0cV2mwFD5F6HCYTGFNSS0D1aJuod8MXoB0yi/at4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749927047; c=relaxed/simple;
	bh=zAo8PQ1kIpBM1SD/j60V6KNaG3hiL9Q7UDeeuB5Xfpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UvWNQvuKbtdmantGYq1zSgpwqPAcEbMbKmSgrOWdLucE1eh8j3ZSp/4GnPhbxcEZq68LJxoSwE3/10xQhSEmAxo5/maSqNrzFsqSEqUsOOXMBJcF8HXWlifUgMsQBUezLHVdP+rnG44mHVeKIp2zReXcZk1ZdSlKrA2Bf1HqZBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UDKuxPYn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EGLvJ4025059
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eoG6O0K3f8gZX/KII4B/go1MHyLMfczPeBlrtLSsYrM=; b=UDKuxPYnC4bK/zSP
	qjZzLRQmMiLyjHi7cOmLs3MXUjrYKquJxPrs1f9I6+I0hl5/PETBkSTnYf2iI0jF
	EMtozgAt/iqpMHItsXUFVjrtRt7p65SVdI/tfdQrlS/AOxyBXGxsH7GlJW+u1Sia
	asYaodCQQCUX0TH5XsfLRozMdD6Qr9eYHOl5jUR1THq8/bD7irP7aNO8z9S7Nx3b
	RnzVqlGiMZuMqiCXKcwEFQjE2EcTeY/F2NZFiDncMBDTxmOwGP1ACK7hGlgMNfUd
	5dyWxRO4pE5FmLc+FB7UgReIg4t6pVw/v5os8IVPgqXnskbS3zqB4tAI+JdCFXbk
	tYAX6w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hc8wqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:50:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5a9791fa9so7033071cf.1
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 11:50:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749927043; x=1750531843;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eoG6O0K3f8gZX/KII4B/go1MHyLMfczPeBlrtLSsYrM=;
        b=k1mwOvXabeEeI7X2tLUlcGhFmcGxbx5rA91QSo7FnTfCFOELy+sinFIzQw6bb78yfg
         n5Xz/NdUBfxz8PK/FdB/tCTFGi9uEseMwKWRgcIDYX0Bpt14goblkRkRqPmRE9ZZs7FL
         hMp5s4mEc5QvaP2Hc51i/cHfhROUrfC2mAVnWgy1H2rWokcKjx5dYaGv7Pa8kTo+eWvG
         TJgcv9kl+3ojKpokLNHNsR59dzm6lhnlNcJdx00yLD49LfegRfYG0Np6KVE7y/kalqYb
         7O+op0g2OhcTFKyS6INUa+pK+W+jlQ8JAFnnwnmrGRkY+cjulmvseQ0uNI8QcmVx/Z7H
         xOvw==
X-Forwarded-Encrypted: i=1; AJvYcCV0nvyKM1dIIiYA2vh5EIVJ1f9L1TwyWffAKomjrLPecfHEueZL2IZ0TZB2qBmXQYsf0G+BUsx8rxaa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt7UYqYHkYoz92Eeiqoo3NWT9zDxBjEbTeBSzwkMaI1uKIEhlL
	VG184LCpfxCFiTm90SfO9eQLfcmlrv0kxM5UZdYKs4xsAff1yBsAdcx627Uj3ASovxQ9pGC2EPy
	RLHqX4ppMwVY78YRYQbc+UOE2Dv9BAi4pGuGvSU/8MEZ9nDNXjnb8cugSON9IeM3b
X-Gm-Gg: ASbGncuL5q7Vh/Ohz12NIejl/4/UsXH0sNZTL5/cAtGjY2ZG9sYys2hP2+1EAk1dOXT
	Z9uWAkgrc0YIpbKVtxMCRfdEE4MmiLzkyrg1+9ugLYTJwVyRmV+xvF3t2t3y/4irakN9Gd33JC5
	6juBZzdOzOzgM1gaD9aVnITHVSainGjtbGnbHFwU7X8Gbqa5J8GLUbVkqugcdOhwJOgl64NeHYK
	j2nQliEsbdUp5Ce2hdaS1ur2HOP86EhJ007W100xKADiedkoH4utQfbS3/Pfj59sCjVOsp5X4tc
	fHpojjdNUxe4LD5gj+wVU6oEOXbWfinjc7LJsYGCL28Le7L024UUg1+/LivPIQTdAcLZ3lTA6UN
	mU/c=
X-Received: by 2002:a05:622a:60e:b0:494:b869:ac06 with SMTP id d75a77b69052e-4a73c4f0986mr22004441cf.6.1749927042627;
        Sat, 14 Jun 2025 11:50:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEx8dYFput+x1zrfRR/vwybI6ORi4SG7FUVUMwmj0jEta6iK89coF3n7ZV/SrKjJMpi0fdbrQ==
X-Received: by 2002:a05:622a:60e:b0:494:b869:ac06 with SMTP id d75a77b69052e-4a73c4f0986mr22004301cf.6.1749927042208;
        Sat, 14 Jun 2025 11:50:42 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adfade680d4sm186158466b.10.2025.06.14.11.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 11:50:41 -0700 (PDT)
Message-ID: <f0483597-45b9-49f8-b316-a9cde7b98d81@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 20:50:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 01/10] clk: qcom: clk-alpha-pll: Add support for
 dynamic update for slewing PLLs
To: Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250612-qcs615-mm-v9-clock-controllers-v9-0-b34dc78d6e1b@quicinc.com>
 <20250612-qcs615-mm-v9-clock-controllers-v9-1-b34dc78d6e1b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250612-qcs615-mm-v9-clock-controllers-v9-1-b34dc78d6e1b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE1OCBTYWx0ZWRfXzdQeFNBnoU63
 07Il1BDk3yUjSrv6vCl/UiGmjfr577pMBzdCP5C0RCMrx/WJ4dqqouperGnxf05n4MHgjyiEcfA
 YLZsB8dWOzAQvtFdSon3InCnzJVor9WN3kGUpYsjz8r/iBiUgtRSK9Zx21AAtR0h50h1/dsWquO
 ZDv2jyLRq90M12q6TJe6Jw/gt0jg9Z8PnjGWXPj3BDAvfOFRxC1JEsFQiixk61bJMPtrARFrf8g
 x14Rfti4vt2nJooHXqO94NeGf6UwZb44lO5DpykE8UTgIPyNoqPv+In7bXVpVIYchnmZX7awTZB
 fVgP2xAK1fC/CXTMW1p3Olk212Vi0s2cu+FxlQVFlJu1PKek5vO0uF3lFCxH6/oX4xkMUHCe/9N
 ZNEJX49f8US9ICgdMTHcnD6r56f3vAq+hyYTIjlin9yCQG7TMpBzVaZpioJTsGZX3OaXAHfc
X-Authority-Analysis: v=2.4 cv=CqK/cm4D c=1 sm=1 tr=0 ts=684dc484 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=b3DFIE2h8Nkn-kLj-EYA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: hgDGU2SRw_Cs8Ol_QRcrA6nblgzD6IvM
X-Proofpoint-GUID: hgDGU2SRw_Cs8Ol_QRcrA6nblgzD6IvM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501
 lowpriorityscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 mlxscore=0 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140158

On 6/12/25 11:55 AM, Taniya Das wrote:
> The alpha PLLs which slew to a new frequency at runtime would require
> the PLL to calibrate at the mid point of the VCO. Add the new PLL ops
> which can support the slewing of the PLL to a new frequency.
> 
> Reviewed-by: Imran Shaik <quic_imrashai@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 170 +++++++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.h |   1 +
>  2 files changed, 171 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index cec0afea8e446010f0d4140d4ef63121706dde47..5e4a755b849970281e7742ef83219b7eeaa406c3 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -2960,3 +2960,173 @@ const struct clk_ops clk_alpha_pll_regera_ops = {
>  	.set_rate = clk_zonda_pll_set_rate,
>  };
>  EXPORT_SYMBOL_GPL(clk_alpha_pll_regera_ops);
> +
> +static int clk_alpha_pll_slew_update(struct clk_alpha_pll *pll)
> +{
> +	int ret;
> +	u32 val;
> +
> +	regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), PLL_UPDATE, PLL_UPDATE);

There's an ever sweeter sugar-syntax for this case - regmap_set_bits()

> +	regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
> +
> +	ret = wait_for_pll_update(pll);
> +	if (ret)
> +		return ret;
> +	/*
> +	 * Hardware programming mandates a wait of at least 570ns before polling the LOCK
> +	 * detect bit. Have a delay of 1us just to be safe.
> +	 */
> +	mb();

Since you read the value of PLL_MODE back, the barrier is unnecessary

[...]

> +
> +	regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
> +	regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), lower_32_bits(a));
> +	regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL_U(pll), upper_32_bits(a));
> +
> +	/* Ensure that the write above goes before slewing the PLL */
> +	mb();

Here however, the write may not arrive at the clock controller before you
proceed to slew_update()

> +
> +	if (clk_hw_is_enabled(hw))
> +		return clk_alpha_pll_slew_update(pll);
> +
> +	return 0;
> +}
> +
> +/*
> + * Slewing plls should be bought up at frequency which is in the middle of the
> + * desired VCO range. So after bringing up the pll at calibration freq, set it
> + * back to desired frequency(that was set by previous clk_set_rate).
> + */
> +static int clk_alpha_pll_calibrate(struct clk_hw *hw)
> +{
> +	unsigned long calibration_freq, freq_hz;
> +	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +	struct clk_hw *parent;
> +	const struct pll_vco *vco;
> +	u32 l;
> +	int rc;
> +	u64 a;

A reverse-Christmas-tree sorting would be nice 

Konrad

