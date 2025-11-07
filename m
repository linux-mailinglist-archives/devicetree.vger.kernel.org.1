Return-Path: <devicetree+bounces-235920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45617C3E564
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 04:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 006CC3AD8CE
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 03:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A652F692C;
	Fri,  7 Nov 2025 03:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bn/g3237";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H4nYr1gw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C330D2E8B62
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 03:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762485599; cv=none; b=K+m/E3SVj/9a/9ijZ4PsefjX4ZcVENilfV++blAkffCmdr68nSiRnzofupsotGwVOMUYut4aIzmbCFis00KePcNHhGhf43R65A+gnDoIgf/zoXptSDys98cmtzF+uJeLCKfXxE+MhpGUVpjLV7coZKo6T4tfabYm57xpdwUTIkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762485599; c=relaxed/simple;
	bh=c8A14Q/V8GEKQyw/Jggt3KvMMi70EOyHMLOV1fzSV98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MSPeubbOP0YFcU1TYVBgy+f+VxrDe8dq6xi7M2gD6j4VpJ7RfgATyu/IiZ8rnBeyRPZCHIWTyEdwy1GmxTOQYGL/3JgUHymzP8HQ8T5HqjzMJDhf46dhUznnpkO9+/vlqiDWtD1SxEb1rV81b8VXbniaK2SV1N+KyoqBoY4UJ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bn/g3237; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H4nYr1gw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A6GsqLT585051
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 03:19:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M80K1COQSKSOsbnYlBiyMzUX
	hbNJGsXiIzf10YFAobU=; b=bn/g3237YhT6RGT/NZXYeOvYm5A3Ef/qBwofC4bb
	ob4Dv/kHYUnPlqmL0Xa1UDS8viZtBnAjyxyHlhbUdzUrYXhO4WGipDF/pR9Akiue
	+PhN6YduFkOcBVFaCl6P/j44ij1qjqOtDIzTtkiR8ARG9UJNrLVau/QwrO4d3Sev
	d5IEuMtiyWEz8BgDIp+/J9i7vls7cUmINJhhat1FNXPnBah8jPCaEUfWi7aXBjKK
	Wb7W4dNnoH3GQCxQF56O02fdue9GWMkmlqu6Ild63nraYcyvLYV/K3nzCadQ0xjj
	RhXXNa2/vwQChQFVbvEhClT+oiAhzPsfv+bBb2rK7oOBLw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8ykthkjk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:19:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e88c912928so9163061cf.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 19:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762485595; x=1763090395; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M80K1COQSKSOsbnYlBiyMzUXhbNJGsXiIzf10YFAobU=;
        b=H4nYr1gw8UP/zYarOxiyoDwoDw/ke/mQw8y3zSzCFLystxSDWPj0GSrCUi4veXh08/
         Kb/tZKPLMYZhFiaT2nQmWLzespdO2omch3XGx1aws1WNnKs2lm5+uEQXiPUzsTCNPG6M
         dVVLYQMpM0BqPLObxTPRI+h6PFCHkVg+yiIZAr5tLoRONPzi5j5ctxWTobisoThnJlHZ
         Mx2mZKJwy63WyjRHgR4kV60FsG+ZIFwoEl0NPfrBGNI42/E8DjHmWvwLGsTAXfM6muSm
         QVvZDic8dZOYA0iJ8oIte0PFHDrRVlDy9Fw1Yb9WdqHx5dbZ6qCiXTP6pM+yJZ4rZIUt
         fPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762485595; x=1763090395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M80K1COQSKSOsbnYlBiyMzUXhbNJGsXiIzf10YFAobU=;
        b=OcODgrqbX04jpqeHxpxKEpxx66H6DAhkxkt6RBxDuZgGKZBk0gK5RijyqhenKAUPNz
         TVyPrVRMaBhju/+e7A48EGw7nixFZR9czfKOAQUD6Z+p7oM+S5IIonTFtzHA/2WJx4BO
         ag6ObsuKR5fxNd3NMekL/09X2WGO5kiuY5mB0zbmzECEfg4weK6uFRJuO4fnzb/PcFt4
         EkcD5shJYO6GtOBZyq1COQKrN+cUJ/VrpdOfCk22NjZg7Y+0hwrMxnczW7wdh133WXjg
         dqFe10FP2Ci8UbwKg70kZ3pJkWq6PdYmIc/Ns8mwWJcEnmHWBITeSOkz43mggjc8SHgc
         z+cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrT5g1KLSQApT24jn4TieWi3MZZosVH+2FZqoqtXUHl49C4O0IzBlQn8SRWSf8/jqRoqBqNVS+IgVI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo1erI11K4tM/Vz6F8IsR/tzHd7tjR2K4GgTSa4BunASjzW0RW
	qe6Nd/z5x6QCdu4qYCdcYkxTMp9+ImQSMUuQJdaSs+gJSZzgv5hZlGT7GFobWsqN09t61WvWiJ4
	o2PQlZURv8HasACFBuEUojHlD8ncK4g4ekMbfnznIluSj8VFeSN8evKbMBwFdMQMS
X-Gm-Gg: ASbGncs7xr77V9KTNg8LilSXD2BsWrf9hAbHFLMBcP3aTTtQ2zgJmJXa64xeZystS+p
	NjbL4W2ECmucAikIouQXZmOTjjuxI+rNrDffobba22Y4DxW7MZG1iBqFW3SllKAXO/DqxzOA0aT
	vv0Up70/wEMnR8OtGmlBXLLbfNd6Y/9ZGr6Y0KTzY9O1lP+tkiXz+BaPArImyTQwSnCnmhmGAkm
	ZppK9yGy5tJAJ2o1NwGCPbnkeXM81HildDwbQHoseltqvCFvdJkI0GuKAqbEJqj5wjV7vHb5qgf
	LqJa1BXKqSQDny+aNQ3zypCFbh97pDiDGIgDjlF/774qAkN8QIss/yzN5wk/NkO1w+yjYhC8r7o
	t0h9bfxfcshoik721eIcd1dPA6plvtF15UQRO6QPSsr4hJ3l/1uC63XF5khBIdbryc8Wd10ZzhA
	11CPPAR1Wnul0e
X-Received: by 2002:a05:622a:199e:b0:4b7:8d1c:1be2 with SMTP id d75a77b69052e-4ed94a67750mr18772671cf.50.1762485594816;
        Thu, 06 Nov 2025 19:19:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4pxfXAI2QN5tx3rdS8w62pU9piMwAcGPSHdAchfcF87faMpVG/a4sNiNd3ZJ914ce0ITvXw==
X-Received: by 2002:a05:622a:199e:b0:4b7:8d1c:1be2 with SMTP id d75a77b69052e-4ed94a67750mr18772491cf.50.1762485594416;
        Thu, 06 Nov 2025 19:19:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a593af0sm1136865e87.96.2025.11.06.19.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 19:19:52 -0800 (PST)
Date: Fri, 7 Nov 2025 05:19:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-tegra@vger.kernel.org
Subject: Re: [PATCH 12/13] soc: qcom: ubwc: Simplify with
 of_machine_get_match_data()
Message-ID: <zdnlmxrlagpmwcfnzka7zgmrxzya564cjbd56l22fazxxhqpjw@64zf3akyfp4h>
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
 <20251106-b4-of-match-matchine-data-v1-12-d780ea1780c2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251106-b4-of-match-matchine-data-v1-12-d780ea1780c2@linaro.org>
X-Authority-Analysis: v=2.4 cv=bOgb4f+Z c=1 sm=1 tr=0 ts=690d655b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=228_68lKBFQWPJCgatoA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MxLWavVNqVKDlCEnF-_NOeONWS7njSHO
X-Proofpoint-GUID: MxLWavVNqVKDlCEnF-_NOeONWS7njSHO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDAyNCBTYWx0ZWRfX+nlgJv8LNEJ6
 Q4+D5Los/ePCP7T+t3r1+8rF62Jktf1VLtn7Pfsj4KsXeDFUHWDNHwc57PsuAcSIZo6WKEJR0zA
 Z2p6/zygQSTctK7e/S/UvTYLmIrPZkNgVUG/PxmVrPa+sE9wEG7M1EJnguATlyhDBcl8MTXYrqU
 cMMu7KgoYjXaDgejQm7wQGAqaflEUaefMIrJwBh2UxudphayShMuARsdewce8agDjeGMd42Hn+a
 cPFVvkFECT+09e6L72bSDPqKxd5DP+U5N+m90KWOXQI/ncXnXzmIAxBMQyyxfo458Nf3xtTK1Hi
 LAAdQZVj07tM0R6jrziQmllg1b8FVYXMtb4lW3O88Bb6KUVnX8/Be6atVFPhvazVqoMnwPzk42I
 cFAhE+unpbx1KX2YySAgKtvHqMnFqg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_05,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070024

On Thu, Nov 06, 2025 at 08:07:19PM +0100, Krzysztof Kozlowski wrote:
> Replace open-coded getting root OF node, matching against it and getting
> the match data with new of_machine_get_match_data() helper.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Depends on the first OF patch.
> ---
>  drivers/soc/qcom/ubwc_config.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

