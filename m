Return-Path: <devicetree+bounces-202191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C8B1C5F3
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 14:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F72D17CE5C
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 12:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65751289369;
	Wed,  6 Aug 2025 12:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UJKFHRdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7316F28A3EC
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 12:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754483738; cv=none; b=nw+t4e44thWKzEhxOVliXoiZr7wXk7pTlShjj3rizZ9twFgPYPbvHe282JI1Y7JakkkC0ErThQ1FebBJM74pmk9Oom4CBe4sKYTaUaXep9Wiwd/tV/ssEPT0JsTo8Gbbn9sN4S0/MjCAiBFcJzmgJXq2KXozlUDOyj1/cTNtakU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754483738; c=relaxed/simple;
	bh=BkMg9lrcOwRqh+c2w51M/RlUfMuRGUn2YqW6UrJlJxQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QUyyHKmMeVW0eOMxO6/k7G152GTLCX9i5nYo78C+jPBVaJpNTLshh/H6GVM7TzCRRdOiYZJ/xyNYjPPglF4OmPko5gDKs63Bmj4bSsv7zt4O2FmXvlC88/Sm2WZn0Qa+bssfljMcdjdjak1Erhujchjbx5cQXcJrwtMBUWpqKFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UJKFHRdl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5766LNGd010345
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 12:35:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cCr//mNBZZadIfbdCckvaMFLb/aTsDPU1FdFZ5M3iO8=; b=UJKFHRdlA6z6/fCV
	EHp7YyvP7We5t5JBS4qZd46IRiJJ8v8m/ob0ghLq8IHYkOO8hDwvLS9ylCn+0ff7
	dpE3CDfwtzR9GdsXl7Ow+I70J6D07diAvACDS0Poz0BoLxpRgBv9D8NiI69XqV9d
	NKHPg8CE7qQz3IIZXdH72vzemq2/VIBUZw80TUimTSVMCsIYIC8/jujT7GPXHB+k
	/Ih3fjEhB/zXaTTP+tJ4prInViN1VDHdI/QZxPsf2KcjAkih8IeAMHcgwVJ7e+ec
	qhL7BfE80OZ8vAM+xtPIbtsxF9tzN/6ej0CKYpyKEHYTq3QruSnD0CY3oQuE4FNb
	x6l2Gw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy7tpcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 12:35:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4af1219f29bso4954411cf.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 05:35:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754483733; x=1755088533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cCr//mNBZZadIfbdCckvaMFLb/aTsDPU1FdFZ5M3iO8=;
        b=Uj5O+UMbQRvBsOutYFAZ6RUpZwDxMreS/6t8hVfhlRKRxBkG6DSMzK+jZRwLmeU4Yl
         AqvCTKVSHT+GdEa3QX2JCN8ozp6a1V/QIIPN392q1dXxaJzihXx/Z6O3hJ5bTx7x7KN5
         cz6ZkOOgjAn+BPnf84kTviWtB9cDiGX4XSO91vg/F/K1EPJsSarRh7V2ABTHz8ptmRt5
         /mJKv0loqQJk7Wl6w4K9jtHK39NV21hrAmbXHPCKLW6TsTTNggw3bdw/WpWUlYipi090
         X87K28b6bNyhYUGDXeUfDB9ZPzijSwonqLS3QKJ4S88IEJDJ43njmLDhMHEHjgbj75Ha
         6sUw==
X-Forwarded-Encrypted: i=1; AJvYcCUJN9zMJdwF3ip6w6hCwxxwjgrgZHvbt3WtLzhL86gfTnTOUmA2CuGooijI2DwrfpG0snY/guCvV3gk@vger.kernel.org
X-Gm-Message-State: AOJu0YzedFMGGKHUGetNO1Zwh3FaURcTf8iJezc/n/2MIpWUIsb4Bz1P
	s2NCDoziFdwx3wGfmFQZ2o8OaoyiQ6dqhL9PLc/9I+BOmUkBKX+lWg4zdTslGDN8060toHbqfDJ
	h+W0n/l/9kzwJaogGDFf3iabaatRWbvRRigQvhS8nEYEOKwmbHH2brJCt4ljEbd7f
X-Gm-Gg: ASbGnctU/wGKYzMZ+UMytikKxIjSLW5ffyqg6EKPFDSeZVxAe+L+5QdCxICaKul/LKD
	WF42n+JugeFd2sBheHmcob7k+WNdqo2TDc/R9CosP2l4unt2Zmd1/O7zFg/zGHwdNw/xgwwl3zB
	zuF0cpuyW4jAeN2x9gQWhHiuTmbdsmNALEizbiwjzpEB7Qbd31BukFR6CD92WTotjgxOTZMN/+W
	qO//aK0Rg39rt+tzKsncaGLwScLuiIDFPba9CrLzTMEDmQ4wn9FIffsn+7yZ0rFT9fxWAd1jdi3
	H1ACadnI+Rmcom7SUvZXM46C+8JsGC9xT6UJVIZsA1M8Y69RjsW4aWtDrf/Z9u5ePtRNHDccf6e
	87Ja2kqj3ASWU3ueB7g==
X-Received: by 2002:ac8:7f89:0:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b09133fa54mr17986231cf.2.1754483733245;
        Wed, 06 Aug 2025 05:35:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7d2CqcjDNnmjfaCorK7ggZ1AD3iYaZI4VcHppGy/TET6icunnaQkfyCMwgLQKxMuq3VCiWw==
X-Received: by 2002:ac8:7f89:0:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b09133fa54mr17984941cf.2.1754483730668;
        Wed, 06 Aug 2025 05:35:30 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a396fsm1103435066b.42.2025.08.06.05.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 05:35:29 -0700 (PDT)
Message-ID: <48478a05-59b9-4f2e-9339-255e513a9cb2@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 14:35:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] clk: qcom: apss-ipq5424: Add ipq5424 apss clock
 controller
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc: Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Md Sadre Alam <quic_mdalam@quicinc.com>
References: <20250806112807.2726890-1-quic_varada@quicinc.com>
 <20250806112807.2726890-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806112807.2726890-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Mftsu4/f c=1 sm=1 tr=0 ts=68934c16 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=nqClpMi1XL7t9EIYa0wA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OxXua6YDJd7I6FdYYuZoBghuk6zbuySJ
X-Proofpoint-GUID: OxXua6YDJd7I6FdYYuZoBghuk6zbuySJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX4D9as86fTyhD
 xEkk9bgN5qQFiynNcV5Ch4u3gfpXuxVsrO2G3sgB1TH9PQL635R69NKkH3KmMRGOc/UrAuegAdO
 5eyw3URzK19Lqakk2LcsWzv0Pp+P5095t1US9UjnePEgywXhn93TpdqFy8LS2pq8/fKcN11Hl3B
 fWsPFRzT69n1ogwBcUEGzHM4XTyZ2F1e2wJgArTIzbM2e6Sa6thyQiHW80LLUh00SyzK1QCNK5F
 vSrZD2W+wI7Z9PgJgwCUdqYphRHgDJtp1tAgnK8W00bKse/TXcE6Dw+PdQpHxJXh6bQ7HuLjP0U
 oYFZV2NvRu5a0AHpA7oAkn3SI0+5FOvV5Wz2GitOe5TS0oAdlqAFuJuGFDeERPo/Au4msW6msdE
 N0yUAlFV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/6/25 1:28 PM, Varadarajan Narayanan wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> CPU on Qualcomm ipq5424 is clocked by huayra PLL with RCG support.
> Add support for the APSS PLL, RCG and clock enable for ipq5424.
> The PLL, RCG register space are clubbed. Hence adding new APSS driver
> for both PLL and RCG/CBC control. Also the L3 cache has a separate pll
> and needs to be scaled along with the CPU and is modeled as an ICC clock.
> 
> Co-developed-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> [ Removed clock notifier, moved L3 pll to icc-clk, used existing
> alpha pll structure ]
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +static struct clk_branch apss_silver_core_clk = {
> +	.halt_reg = 0x008c,
> +	.clkr = {
> +		.enable_reg = 0x008c,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data) {
> +			.name = "apss_silver_core_clk",
> +			.parent_hws = (const struct clk_hw *[]) {
> +				&apss_silver_clk_src.clkr.hw },

Odd closing bracket placement

[...]

> +static const struct clk_parent_data parents_l3_clk_src[] = {
> +	{ .fw_name = "xo-board-clk" },
> +	{ .fw_name = "clk_ref" },
> +	{ .hw = &ipq5424_l3_pll.clkr.hw },
> +};

One more remnant /\

Konrad

