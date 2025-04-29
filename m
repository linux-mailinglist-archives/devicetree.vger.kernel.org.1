Return-Path: <devicetree+bounces-171928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C80AA08A8
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1933E17FB2A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A79042820B2;
	Tue, 29 Apr 2025 10:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a43sA3T/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CF9275100
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745922871; cv=none; b=ZNrMJhlW1BMTgpA/kuZjgjosQogGFhxoucOne8oOFryLslwpHe9BZ01HOL807ZPvzxgnPISDTeM80+WWsfHl4pdJGn+l/nWqcrkmuctMZr9pBsX2Q6OKN9BnkYjDkn5tH8Tv+TzqYOeoZ9KIlX8jCdwlTt8dSoPv/vztGXG2t08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745922871; c=relaxed/simple;
	bh=+07+xNcZxPa2E0knNITxVBPboW0oYJsB+sCpHA0BehE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o3+Bqt/ztGjjmmqZBTDgbxxRVgDRcnvIVm2YSJTcfanBxIB7w2qf1g2q3mAKhxGL8r17HEOFH1/ChytCTx6ta3X0wg8qSoLTQHmH12D5bcqF6vhZN1noQDT4pX5CPecfaZu6/8C4EkmjIsJcrYLYEp89+TKTT8T4EjJfL9b3SM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a43sA3T/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53T9knmM025312
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:34:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CTpLlEw7Nf8Y90SxN0pE/V43lopvZlp2wc9TRpcckrA=; b=a43sA3T/7J1JmBHT
	7aN7CVUHfjQZ6y46tYrB+KnlfYQtGk8fhgu3NK9k140im7sWNr4jdxsKq06pULP3
	rTBk4E5gTm9kLd+PTzpGViZClk1WAB4ivD2mje+6qrNjfJI3eP+p2hDBtbtHxT6u
	AYEYMqszOfa/n+lw/H01l0p+AVCjW66i8p4OXmRhaoDhpHn5WJtcdavrQwsHiMr7
	ySYWXNKWIUw5nUXR8IkgXL1jdkL2nj9VS6zTMhqG6KQqkO93aiWhbdHybjCIb4aw
	/8FU6qr/WGehvHoWt1DVOBZtY6h/9r+bbZLx+ZyyuB2BFkx9FbpnS4XbL4/803gX
	YSMImA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468muqmdch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:34:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47ae537a9d6so8198591cf.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 03:34:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745922868; x=1746527668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CTpLlEw7Nf8Y90SxN0pE/V43lopvZlp2wc9TRpcckrA=;
        b=Vr0LUu+4h4FUq1f5XE0u0H5MyhoBRIZaUGONjCzgx6vmkubhfbnikb6lp+KLlxX92T
         t5LYHSduzd7wqVzc5Kzl/42IZk1UeTJ/2c/UGVZRt0YMqOkIlCa+OJm1UsVOYYMBdVsD
         y4FWarD2YRtYY74whRwiJ3NXmE28+LDeKLzmK8NF+QkKQXdsIPpv+dCjjY5P56qAe6UR
         vG4tDBxjjHYOoWE6Y8E20r9X9XjCxPS/EhEUQtWBVFGyyZL0Vd0CLpwIa8xBjpV529zc
         pzh/lj1BvzE4be2ydg9XY6kPm2AMNQkMLDe2gupQAODblyeChF+MtLlRH4fGyMXGoW3S
         eYkg==
X-Forwarded-Encrypted: i=1; AJvYcCUbe42a3ITvEWk6chcuSqwoSjcf/hb4qyQX9kuyL7+MjnkO5MNmAyd5ypS+XR3S5RjggDsr32JpkxTO@vger.kernel.org
X-Gm-Message-State: AOJu0YxExfuEawvoyf8gh+KuFCzQGTifuO4RGYfUFJgAMfVDhPN22sOd
	4v74daTUHY9gHJx6LP5TFo7CKp0bxPj8NfKyAT2745mGm/pm90flg9dbsULtApoWeH+DlU4C769
	4SLORRXG9vgOx8KIAuA4oFySZGfeJhncLWH6ki7WRanaGQgu87kZTy1CSKbdD
X-Gm-Gg: ASbGnctZwaWKSNM2yIYO4zQ2X4++Z1B75pBvTTV7z0/ST4hC+9ZapbAPPRIf73UY+LT
	SdgpyE5EZMPw8S/eGeAigwkQ4ewhyBCAufA64+elfUOtosWQ9g+IxwjJMImZEhwvbrsB6VkMjOq
	MFySSLToXbvcTryg0KxIHq/L7AwxjtWoid+Eyyt2LK1AABJUolvwFEIwxWhHfOmppNxMzrEH0oC
	IVdWCGCqH3wCeEomB3vhXzp3V/9vSAFuAMRj+YeKYdhI+b3qv8cytaFOLJKKPk+nUeC2NFHpRsO
	z8hGW2i/VB1d22HLWRUX1Riqg99s6YMAcCLMpGTYrh2RluAa49AAs7Aobc0D0Va5FA==
X-Received: by 2002:a05:622a:44a:b0:477:6afc:f59 with SMTP id d75a77b69052e-48864ad4111mr14918631cf.2.1745922867843;
        Tue, 29 Apr 2025 03:34:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHt/eYz/3VQLGoMR3LYKlWT375abyVhawesjEMr/lYhSQEyH8YxsdzynPxZ1vPCbeMXSz+b5g==
X-Received: by 2002:a05:622a:44a:b0:477:6afc:f59 with SMTP id d75a77b69052e-48864ad4111mr14918531cf.2.1745922867503;
        Tue, 29 Apr 2025 03:34:27 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8f3dsm744493166b.110.2025.04.29.03.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 03:34:27 -0700 (PDT)
Message-ID: <b3119bef-d045-467b-91cf-37fe6832ff63@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 12:34:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250429-ddr_stats_-v1-0-4fc818aab7bb@oss.qualcomm.com>
 <20250429-ddr_stats_-v1-1-4fc818aab7bb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429-ddr_stats_-v1-1-4fc818aab7bb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA3OCBTYWx0ZWRfX1Ir/+nd3Kwwi P4Jq7X5EcLCgy9yKixNhErYcuSYtL5Wh/0kAG09xFkFWrRQH1+L+V+QnLN444aLHcEHkCVn6Ixr Rz5IPIx/6zQ6dhzz9saQCNhXvTS6rSxGJNe4cdYs6LzqvBD/MNl5wMTBD1zHULDtK5UEZ4camX4
 kT/AegQC9DjwtrJyi2zQtRjyVzMWAw/IBiQ275jnqZuroRoXAJ7W5p4izxD8M2FKyb44OAirHYY aOAD6PCGYBehRQGao5rDU/zk1z8lwXkxpafRk3f1aCiiVtMNTiTa0OSI2dL/ut7MuaC4nsjRkC+ hqVmbuRmSPPThMDez4TnhDADlO8vyfzn8HUT9/TRNSg5xBJRMm8ywulpaP6rGvYnnKykgKYv4H8
 9CtWtMcObWt/Rg4YdRFzJQRZ/W5ZEgTDEATFphZNs+ZpLIWmhfYUW23GonkKTLZjLpyp5ywP
X-Proofpoint-GUID: MyIpcjtxcIVx4iDadS9rj-czSjqOXAiV
X-Proofpoint-ORIG-GUID: MyIpcjtxcIVx4iDadS9rj-czSjqOXAiV
X-Authority-Analysis: v=2.4 cv=M/5NKzws c=1 sm=1 tr=0 ts=6810ab34 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=CWSby3ZRTVrr-Bqb7HsA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=999
 adultscore=0 bulkscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290078

On 4/29/25 5:52 AM, Maulik Shah wrote:
> DDR statistic provide different DDR LPM and DDR frequency statistic.
> Add support to read from MSGRAM and display via debugfs.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/qcom_stats.c | 99 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
> 
> diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
> index 5de99cf59b9fbe32c0580e371c3cc362dfabb895..ee11fb0919742454d40442112787c087ba8f6598 100644
> --- a/drivers/soc/qcom/qcom_stats.c
> +++ b/drivers/soc/qcom/qcom_stats.c
> @@ -1,8 +1,10 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2011-2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2022-2025, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
> +#include <linux/bitfield.h>
>  #include <linux/debugfs.h>
>  #include <linux/device.h>
>  #include <linux/io.h>
> @@ -24,6 +26,17 @@
>  #define ACCUMULATED_OFFSET	0x18
>  #define CLIENT_VOTES_OFFSET	0x20
>  
> +#define DDR_STATS_MAGIC_KEY		0xA1157A75
> +#define DDR_STATS_MAX_NUM_MODES		0x14

Numbers (count) make more sense in decimal

> +#define DDR_STATS_MAGIC_KEY_ADDR	0x0
> +#define DDR_STATS_NUM_MODES_ADDR	0x4
> +#define DDR_STATS_ENTRY_START_ADDR	0x8

[...]

> +static void qcom_ddr_stats_print(struct seq_file *s, struct ddr_stats_entry *data)
> +{
> +	u32 cp_idx, name;
> +
> +	/*
> +	 * DDR statistic have two different types of details encoded.
> +	 * (1) DDR LPM Stats
> +	 * (2) DDR Frequency Stats
> +	 *
> +	 * The name field have details like which type of DDR stat (bits 8:15)
> +	 * along with other details as explained below
> +	 *
> +	 * In case of DDR LPM stat, name field will be encoded as,
> +	 * Bits	 -  Meaning
> +	 * 0:7	 -  DDR LPM name, can be of 0xd4, 0xd3, 0x11 and 0xd0.
> +	 * 8:15	 -  0x0 (indicates its a LPM stat)
> +	 * 16:31 -  Unused
> +	 *
> +	 * In case of DDR FREQ stats, name field will be encoded as,
> +	 * Bits  -  Meaning
> +	 * 0:4   -  DDR Clock plan index (CP IDX)
> +	 * 5:7   -  Unused
> +	 * 8:15  -  0x1 (indicates its Freq stat)
> +	 * 16:31 -  Frequency value in Mhz
> +	 */
> +	name = DDR_STATS_TYPE(data->name);
> +	if (name == 0x0) {
> +		name = DDR_STATS_LPM_NAME(data->name);

I'm not super keen on reusing the 'name' variable, maybe turn the
outer if-condition to switch(DDR_STATS_TYPE(data->name))

> +		seq_printf(s, "DDR LPM Stat Name:0x%x\tcount:%u\tDuration (ticks):%llu\n",
> +			   name, data->count, data->duration);
> +	} else if (name == 0x1) {
> +		name = DDR_STATS_FREQ(data->name);
> +		if (!name || !data->count)
> +			return;
> +
> +		cp_idx = DDR_STATS_CP_IDX(data->name);
> +		seq_printf(s, "DDR Freq %uMhz:\tCP IDX:%u\tcount:%u\tDuration (ticks):%llu\n",
> +			   name, cp_idx, data->count, data->duration);
> +	}

> +}
> +
> +static int qcom_ddr_stats_show(struct seq_file *s, void *d)
> +{
> +	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
> +	void __iomem *reg = (void __iomem *)s->private;
> +	u32 entry_count;
> +	int i;
> +
> +	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
> +	if (entry_count > DDR_STATS_MAX_NUM_MODES)
> +		return 0;

-EINVAL

Konrad

