Return-Path: <devicetree+bounces-196440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A63B055CF
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD6001C2350B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A8862D4B7C;
	Tue, 15 Jul 2025 09:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oHFOz9AI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A581275B03
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 09:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752570319; cv=none; b=PCjAfynRJGWdTle0Lpg+l8RhneskrDS1eZHe70ugETxMYzhJdOhboMZ3P8RZKoRI7CprXTe8EYzmLxzfyZSpo9ak44bl7S6gQHcxWQqGjvBcC+f62yH+r3jvUKdgYuLpj55CMdNj+RAPWTo3XVxgxk8PnMmOXOOtDY6WD6pJG0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752570319; c=relaxed/simple;
	bh=5LBGdyccFs9/kSMj7gqptZEBRHBs0pXT46lCaRpnEU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YrwrU5QI6zbzOfTDxQtBAN0qdYnhugR/oWazhxm+YRoLKOc+YNkKqxdivGRTSIJiXFOUu+IUTrdig9DMKro2inJNo6K7WFZy2fnki9EJIOMoQoaYIz2YcpDh/nUHLoMxcIF+ZsS6fGrV5hOvtMbxVc8Obyxwx4sVwc3TMbouD1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oHFOz9AI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F4r0KE008069
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 09:05:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X81G8SbDQbSTnHA7Tq+qXCtSDHk+zyIFbzLI6vGMtbM=; b=oHFOz9AIM1QxzQ33
	ewK8BgVpjT41RVa6X5zFWaAwDO/Rjs/49yTkz4ZQNeGfIiYy19HRhgepfbXMGSjb
	NdRwV614x4I6+6FFV9v/8IfioYfJpWknS9PCpZwpgEylpHvCjBhigXd1ztrFdD4T
	KCEjKseMYNzvFjQl+aTv814m+5gmfTy2Ew0ZlsuQlk9QeaX7k+Phu/pUxub24vTk
	RYhGWXdtjt/IOirpLCjmU9JX6O/QLwJsQWkbODs6MgaK2m/D+xBimXvcfdjYlvuQ
	VAwbmaqHMafDZ9GS2jCSCrbH9okOP7lu8A4vRDRt6tLI5s4ARglxlLXw0HhV/wLk
	wRwtKQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug37ynrd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 09:05:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab3ab7f74bso11861771cf.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 02:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752570316; x=1753175116;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X81G8SbDQbSTnHA7Tq+qXCtSDHk+zyIFbzLI6vGMtbM=;
        b=TV4eBvtx68QPWJ3gtht7/mpsA4zp2QU23D+QZflX5de6Z+Ua40Ss4mqC2QrrHwVf1d
         J/ZDrFfodIvNAaQkO/ZdsFVPtiEGrC2a5vscSJoBTjRdXzs6+XkuB///4kCrL/CjgFRY
         IsZv8kdHA1UkPkhDkDA/xrwM7ZcwekzJt57cj4ArGFvXZOL9hsQxadijzzc2N8CI0YaY
         SXxTSoZa7B94zKOZfrghSrIk+P06hQnnxCmUPSkw8QoWmYF5RTVkHE01T69RJLFZ/SX4
         seYuPycQ2HILEwM4xtGautq8r3QO6xUaKzMZXD6xFVeV+f3tYd0zAR3i2V2Xqj4Lwu5h
         PIog==
X-Forwarded-Encrypted: i=1; AJvYcCX9TpCmrMtYignCIh+bzNg0yY7ThkW5bFJRjCY9KAgrQWOr3S6LGx2cZSiwWyBtEQQVPhYqF3i6PUXA@vger.kernel.org
X-Gm-Message-State: AOJu0YyypvSLM0ohOt0URz/LC4ufIqXVxyELGksRPNMUlScyL3SSSmzV
	7+FmQOSu2Ak5kRjtewE+1ssIm4DVjhyFiAEo/zmNZ85ZDNlgJw38Nbgc8hEevhlunzHR6ijmV8O
	3xRzlQTxp9aCrCwTk2aQrMkTVcTZ2vdatpMG768H+6BVvkK3+isB0csG2Y5Vk5OWA
X-Gm-Gg: ASbGncsCaIS+9bAEJSoyfEMpls/W/eKOnbKeU5FhlgCP2/8jCFFM4U2VxbmWJ8SwmTl
	5me+K63kx5VWokNvPi5caChB6dEngSmo4iezO1b97klf5lYLVtctfzL/gn9UbeI6mEEcZJipB5T
	dlITZ8qShRmw7r6jmIUzYDtNo4wE0ODtRZy7mUgx8naKKIUqc1teel7Ktlb+b+v9pFOPud013Ht
	f9ZAYfpAgcc9o1astETtqPsgVPA5vKO4XaxsVTYk6UqswygOTskvfmHJ+cL135EeEjONqCRuWh6
	v5HgERUO8Y9O+xXGHeNvC5pL2B6YGlBkiXaQKYjsTlZCGa0mxRHWx0FO3BiKO0CJPiW06akia7C
	LJ5SqDwoq6/rx687TfVuA
X-Received: by 2002:a05:622a:1104:b0:4ab:5c58:bb25 with SMTP id d75a77b69052e-4ab86ddc86cmr4932631cf.1.1752570315550;
        Tue, 15 Jul 2025 02:05:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRYFCf9iDFpvwNaUhwvFmnJFfLgW9Y1m4vlzwNzKWO0OxKFu/BJa6T2F1S9r+efZbKvvtpAg==
X-Received: by 2002:a05:622a:1104:b0:4ab:5c58:bb25 with SMTP id d75a77b69052e-4ab86ddc86cmr4932471cf.1.1752570315140;
        Tue, 15 Jul 2025 02:05:15 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612067f7ca6sm4743760a12.55.2025.07.15.02.05.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 02:05:14 -0700 (PDT)
Message-ID: <03242c48-beb9-4ec1-8659-0cb8db9ef37d@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 11:05:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/11] clk: qcom: common: Add support to register rcg
 dfs in qcom_cc_really_probe
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250715-sm7635-clocks-v3-0-18f9faac4984@fairphone.com>
 <20250715-sm7635-clocks-v3-1-18f9faac4984@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250715-sm7635-clocks-v3-1-18f9faac4984@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA4MiBTYWx0ZWRfX3b6N6xGlg2vA
 Q4t1tFI8YJIbInarC6X2mU9LWSEJYx4WT9ck07uPv0MjW7q0jloWaRYXAVS4gdgKBZYROxo94bW
 x3EzQYQifaxnZTGRGRVug8H9ZsKL9hb1Aw+K7g/ZrQ4NVhJcWKNVpitmwil6ngJR8IwR+A1w4j6
 O1qUfQKMOr9skiPU4DbqxzBYV4LhuppEdIbC5OoQ2qmP+12HT996rXISMTVMNOBJ4ibE3Irvx71
 Nh0S6UwXi+KUDWXt/NKpjnImBZKz8tcfBqaVy7eXJ4HefDVwLYjzCog+/zKnm2HRXdFIgpLMonY
 X6dOX5wwwGdEYgXOvVA/c8FVAJ1lRw4zjYK6FSL5VAZaz04EHjklCr1y8wWdmutmIih7HbNsSqM
 S4oPDej7+01CIP2DzVgJSSp0b8Oi81P+FzM+IYrqx+kc5HbiiG49v9I1N4XA8Tk/doHYtxO4
X-Proofpoint-GUID: xT_oP1D2B3U4LvA8SnPluk49Rjh0tnZC
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687619cc cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=fWT5Z53OPIsgueDaOEIA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: xT_oP1D2B3U4LvA8SnPluk49Rjh0tnZC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150082

On 7/15/25 9:19 AM, Luca Weiss wrote:
> Add support to register the rcg dfs in qcom_cc_really_probe(). This
> allows users to move the call from the probe function to static
> properties.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/clk/qcom/common.c | 10 ++++++++++
>  drivers/clk/qcom/common.h |  2 ++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/clk/qcom/common.c b/drivers/clk/qcom/common.c
> index b3838d885db25f183979576e5c685c07dc6a7049..37c3008e6c1be1f083d0093d2659e31dd7978497 100644
> --- a/drivers/clk/qcom/common.c
> +++ b/drivers/clk/qcom/common.c
> @@ -390,6 +390,16 @@ int qcom_cc_really_probe(struct device *dev,
>  			goto put_rpm;
>  	}
>  
> +	if (desc->driver_data &&
> +	    desc->driver_data->dfs_rcgs &&
> +	    desc->driver_data->num_dfs_rcgs) {

I suppose the last check isn't strictly necessary but it makes
sense to the reader so I'm not asking for a resend because of
that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

> +		ret = qcom_cc_register_rcg_dfs(regmap,
> +					       desc->driver_data->dfs_rcgs,
> +					       desc->driver_data->num_dfs_rcgs);
> +		if (ret)
> +			goto put_rpm;
> +	}
> +
>  	cc->rclks = rclks;
>  	cc->num_rclks = num_clks;
>  
> diff --git a/drivers/clk/qcom/common.h b/drivers/clk/qcom/common.h
> index 0f4b2d40c65cf94de694226f63ca30f4181d0ce5..953c91f7b14502546d8ade0dccc4790fcbb53ddb 100644
> --- a/drivers/clk/qcom/common.h
> +++ b/drivers/clk/qcom/common.h
> @@ -30,6 +30,8 @@ struct qcom_cc_driver_data {
>  	size_t num_alpha_plls;
>  	u32 *clk_cbcrs;
>  	size_t num_clk_cbcrs;
> +	const struct clk_rcg_dfs_data *dfs_rcgs;
> +	size_t num_dfs_rcgs;
>  	void (*clk_regs_configure)(struct device *dev, struct regmap *regmap);
>  };
>  
> 

