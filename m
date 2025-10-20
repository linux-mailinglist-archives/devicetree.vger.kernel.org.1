Return-Path: <devicetree+bounces-228740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE62BF0731
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D65EB4F174C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC5B2F7454;
	Mon, 20 Oct 2025 10:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IRZ+DmEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805D52F6173
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760955124; cv=none; b=XR3s2ybgSx1nmG2UNkSeJc75kFPO5aLiUhS5uLEU8z1I0nDn8NfNZPmQSSrzpb1LHIeXe3l9avdl1m8xO7iujua0IG5bwYlOn+TgL/8ESzp4YhaspMMl/vUbIvZ74Eamcq97qeFYuGDTPRU0izpkg5atQWQda/aXFXGVHY5z878=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760955124; c=relaxed/simple;
	bh=zjWV32YubOXbSjc/Jt5P+oYvneKV0qaShyrwMCD9uGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MieVipyvDbEGOmchO1ZqEpxDj9wGYkX8YpIEg7QjkFC/50vHHhzZLAEdnyBvQv8JW7S6v0TTo8L9ilTwjwb8VmVJsMlcWXuWOlkTC79ckJhWsYj1xGcLbDGyWn6E4m9Mp/X07rAuucxDjzo9ftFPnsXaW+KuSOUb+DWr/Rx74hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IRZ+DmEE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JMpQUX018895
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:12:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AlGAc/MgmD7xVwVbzczA9v+kNgPlaCaidCmqysj/V0Q=; b=IRZ+DmEEffm5Iq1o
	NeytoG0fx+L4Tk7jDD3JjoQh6oVUojjt4L5QPg2GxM6Ls5Y+acecBfAcxMV1xpLK
	xy7vv59NST3377GWSOJC5xtOGHx8+UstDWYAhXrNifKtGO6IrEeA1DDqRSPRF5WP
	ojb6cWilL0Rnf194DVWawHf4c6awG96Esj3R8u4vrJhRqrpkO+Qs2zDU0gzJNOJ1
	/7r8rqmA+RyMXLOyCg3dJ03cO1JHMeLkSb7yMeqzKcNsFuDn6/ovQODmdJdNVO4J
	o0OxCR0DEt8BcihtvpJ6ygJmqLr8apVxIqTQpEUIGmsu20wxKAzh4tGpfW1Vr3yf
	eux3rg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27hvfxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:12:01 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b67c43db504so137360a12.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760955120; x=1761559920;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AlGAc/MgmD7xVwVbzczA9v+kNgPlaCaidCmqysj/V0Q=;
        b=hy4t8XTcn4PSu1Bup5dRZpsTvghvkXpZdwrx+sR2ln4gT4Gi9o+MNzRaL86LplcuxK
         iFRvnBlG0rgPaH/U5wCmYCIL0yTiM8ZT0sYUlNoajPJI8/eh6I0OegLzAmrVB1wHWGvK
         XcDNW+mqfWtzVtoK69q+v8rsOuzHpeIJrTK+nzaL8ZDEUBD/Et7Jc7AuPF3irnuO4rMc
         hoE5GjwzXCAK9hXhJhJlHp33TtUUlB0Qr8sj/cgcfNGfc5sTCS/1xWkw7Jjnf3g6WGCF
         C0YT1Ucuj8rLsSiifI2wrBPFD30a/FIiKiTCbHo3lSG/kFhlDAqEiKyf4PpfiYn79n62
         PCzw==
X-Forwarded-Encrypted: i=1; AJvYcCU1TblISpYluddgruHPt7lJpQPyORPVijyJ0kkwDDdxFmZmDzsq0ZhOl2Z6doT+GmH4t7VOrm5THq7O@vger.kernel.org
X-Gm-Message-State: AOJu0YxSp/I/G6EwQ9Klz6VlEXYAoLDzFbbpG9LpMkcZABeYjKK0f0sx
	oFtjsKnELsPFiosMIv5pU3pouUr1iawYfKeda5S5IjlTQslageodsEfViBs3BGMVFnRwEQC9BSm
	piThlhms3Do5xjyhix7QZrToZF5MvHVCyQVsVckbn1Z4k6ZyI575/x/SQxvYr8FcL
X-Gm-Gg: ASbGncskdkn7TYVhlwvgRwmKYyTnQ19c4bWBD3jqIg6+xPUySEbYWnj9Z/OURCIKWTg
	4/BHQE7ZPz0CRsvAraH1HOfi0VnOAxLmfRthfrH/5WQ4Yi3JxfpsR3H/xG2R5V7pvCfl/FYecPK
	ujmuBuzQXQMPW0paFHYooLsSEj5KjvP94wrViwWfKbSqqczn0L7bc46uATsdwZkUsJ8rh5Uqis3
	1/iqI8ed8RF+UMwfqpMmmB2zYIEB+wj5efiLhC52GxraXvk13ALhUd5OHAKRx5zA+tVgErUaP6j
	cxdlrWbO0JEoZZ8cVgUQhaHjcq3a7njOm/7WB84/FsR1gB20mKMsR4vEFlqTdj1H+QIAjGEi4jk
	YzxS8L059GkfJqtSey9lCrZqyCN0jJypMVTybezq2NOQtBu8mcZFb7rxGDenX36cfrA==
X-Received: by 2002:a05:6a00:130f:b0:7a1:696d:be2f with SMTP id d2e1a72fcca58-7a220a65d70mr8661722b3a.2.1760955120008;
        Mon, 20 Oct 2025 03:12:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFvVzbIngqDI8uRFh4dk3VjTpS8uYIUD8ihuF3PhSouiS+ItKdHCOo8Nvo9ZTB/xPIV4lQXw==
X-Received: by 2002:a05:6a00:130f:b0:7a1:696d:be2f with SMTP id d2e1a72fcca58-7a220a65d70mr8661704b3a.2.1760955119482;
        Mon, 20 Oct 2025 03:11:59 -0700 (PDT)
Received: from [10.133.33.107] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a2300f24fasm7826266b3a.42.2025.10.20.03.11.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 03:11:58 -0700 (PDT)
Message-ID: <c9e27a9e-2274-4b1f-9953-ca012ba2615f@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 18:11:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] clk: qcom: Update TCSR clock driver for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-5-29b02b818782@oss.qualcomm.com>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250924-knp-clk-v1-5-29b02b818782@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX3YAlxf5g/dcF
 loyhZwcUB5URc9qtcfpfEJGyrXiWShKoSeIT+zhoKVam8TWDoaU3GkDjtIfCsM59pro8X/wA3Jx
 LaXgp2TvxYWINnBC0WkKK++WFvsEv25b4FE5pMc5QxSA9HgmW8UfTP5pWabOkmCcHkiceEEAne5
 V7RUaQCAnDOnp86Bqwbb5mg5OG0WcbfiD6F61588bWAIV1CAmR/pnVgE36pa1N3CFllgQ6vx6Ez
 Oj28jOTUlbrEbIr3Cl+r7CKmRD+FHimAOxCi7pwjpKfYc4CbQ9qC0D5tdVjJpqe4YgZPHLlwG6K
 ls1ypOb6Mh5ThDF88GjmX+9A71jwbIhL1ayaOd2Ve58Fw6C9+sxbcnQfMFzUenxUaZCiNvIqWvZ
 jin4Hb+hwTNWTO/bhb/9yj+fMD6tYw==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f60af1 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=K8VVhfcJ-VgHpZivss4A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: kLPqHvTSVbMzxPsGQ5Px6twLe4ztJLlZ
X-Proofpoint-ORIG-GUID: kLPqHvTSVbMzxPsGQ5Px6twLe4ztJLlZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

On 9/25/2025 6:58 AM, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> The TCSR clock controller found on Kaanapali provides refclks for PCIE, USB
> and UFS. Update the SM8750 driver to fix the offsets for the clocks.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/tcsrcc-sm8750.c | 34 ++++++++++++++++++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/qcom/tcsrcc-sm8750.c b/drivers/clk/qcom/tcsrcc-sm8750.c
> index 242e320986ef..f905f3824d7e 100644
> --- a/drivers/clk/qcom/tcsrcc-sm8750.c
> +++ b/drivers/clk/qcom/tcsrcc-sm8750.c
> @@ -100,21 +100,51 @@ static const struct regmap_config tcsr_cc_sm8750_regmap_config = {
>  	.fast_io = true,
>  };
>  
> +static const struct regmap_config tcsr_cc_kaanapali_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0x18,
> +	.fast_io = true,
> +};
> +
>  static const struct qcom_cc_desc tcsr_cc_sm8750_desc = {
>  	.config = &tcsr_cc_sm8750_regmap_config,
>  	.clks = tcsr_cc_sm8750_clocks,
>  	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
>  };
>  
> +static const struct qcom_cc_desc tcsr_cc_kaanapali_desc = {
> +	.config = &tcsr_cc_kaanapali_regmap_config,
> +	.clks = tcsr_cc_sm8750_clocks,
> +	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
> +};
> +
>  static const struct of_device_id tcsr_cc_sm8750_match_table[] = {
> -	{ .compatible = "qcom,sm8750-tcsr" },
> +	{ .compatible = "qcom,kaanapali-tcsr", .data = &tcsr_cc_kaanapali_desc},
> +	{ .compatible = "qcom,sm8750-tcsr", .data = &tcsr_cc_sm8750_desc},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, tcsr_cc_sm8750_match_table);
>  
>  static int tcsr_cc_sm8750_probe(struct platform_device *pdev)
>  {
> -	return qcom_cc_probe(pdev, &tcsr_cc_sm8750_desc);
> +	const struct qcom_cc_desc *desc;
> +
> +	desc = device_get_match_data(&pdev->dev);
> +
> +	if (device_is_compatible(&pdev->dev, "qcom,kaanapali-tcsr")) {
> +		tcsr_ufs_clkref_en.halt_reg = 0x10;
> +		tcsr_ufs_clkref_en.clkr.enable_reg = 0x10;
> +
> +		tcsr_usb2_clkref_en.halt_reg = 0x18;
> +		tcsr_usb2_clkref_en.clkr.enable_reg = 0x18;
> +
> +		tcsr_usb3_clkref_en.halt_reg = 0x8;
> +		tcsr_usb3_clkref_en.clkr.enable_reg = 0x8;
> +	}
> +
> +	return qcom_cc_probe(pdev, desc);
>  }
>  
>  static struct platform_driver tcsr_cc_sm8750_driver = {
> 
Remind to review the change.

-- 
Thx and BRs,
Aiqun(Maria) Yu

