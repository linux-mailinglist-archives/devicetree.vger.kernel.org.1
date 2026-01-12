Return-Path: <devicetree+bounces-254202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 28037D158AC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 23:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A740300B017
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 22:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209B125393E;
	Mon, 12 Jan 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BbI83lS+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JW3EjrY7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7774E272E63
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768256133; cv=none; b=IAxjAIh8ZT0yMoMP1Gf4gY5OghvZmngA9FYvGlHgFomWPJHPv4mwiW71cRV+YQCv5g1dzbEIHY6qluGF2d2uGc/ZwgFXTxbLrwgLJ48xeILb+wY2JCScKKLGWZ6Pd9/2zzEQUJEkGjfkksDB1lAeN3ccYpnwJCeAff2eM3RBoWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768256133; c=relaxed/simple;
	bh=dFUBb4Bm5zvwO2hzE5lf6QQqrPXNl6qymeK7PEmVev0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jSKKrE0iERBJFMZbG8Akoa/RvzLvVcH4y6il5TgoRhcMZ2eIIo2QPZz7CTYh0Tei+NbRq6wfIz0JDjGzI97brLdjiG9ZdjDd6LQuuyruSWe3eSOETP4IpXtRH3a6jAYsvfqPm4cvFTPQ0lOxlnNLPL45+4dgPbAiV5B91qIc6Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BbI83lS+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JW3EjrY7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CHfH7O2284062
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:15:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zTEjLDFec8WnTGsEtWIyapIr+kF46TTSBI6jZIc0xF8=; b=BbI83lS+j7PnOhxK
	TGCemVyIMurSPrqG56EHTKd0t0qrhGGRKP/rduNnyWEiBDIOYXlbXXDiPjhBK79W
	C4ZNp204i8DiKYfaEsAla66SvOwASHu+FWt1nyHypntDvbGq6TCTy1U2x9UVfVGB
	Ntp0ztjOAPpshT+Rqt5EieQg3JoYrNG6qbzfPpDrzD8d02cX4VHJXJ736t/lxIVG
	fYVMuk+kTLQiEw2AaG0ZsX2M9NxLSXy1sfkBfKKVY4BBshRAE+5ndbPFBMZ1U3pk
	QUslmY28XFFXkHM7Ef1W3E7kZHCejQsZ0bI7DEtmYVkCePgFDL5jnicWNpoeNPtz
	APc0lw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hj4pp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:15:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b51396f3efso1332508085a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768256130; x=1768860930; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zTEjLDFec8WnTGsEtWIyapIr+kF46TTSBI6jZIc0xF8=;
        b=JW3EjrY7SmgsCpwfNMnhMftj9s0nrSoEHqO1xn0Py+AMpOnFgubwoI9RBnWHqsWghE
         1YHNLGdG/xs9RODTuSSffVkCctLujJbfdChqrh1gNt8xf4nAGhQokJxyDy1E8Zb/Up4K
         aWov5lSBy5+7EW6bBZhRRpesplKmlM8Mt3b9xOUjpeQ1DZ7PAY9v6UgwEGNM6hzS1wdb
         jvRhILEPWFbp11TjwJpIIV+MFifSW7cOOo4VqZXt3SyxdI51cUPN7KZqioBXqCfNGW0H
         O8xHNIbfTc9FgXRY83hqCVY+D3EzkzAeddLB+j7cfIrwAbX6GgtXbjk/3/wgWp5UV5dC
         /Ysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768256130; x=1768860930;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zTEjLDFec8WnTGsEtWIyapIr+kF46TTSBI6jZIc0xF8=;
        b=NcJZ8UZJiTT4dKSkcZVG6uG06Jgk8S5pOJOEOH1H1S0pBnmt3X8yqnVwCJ7zpbn34q
         GN83mMOUcf+OKIJjFh97Ylxu+5QPVnyVnDf+X9LbmlXPyE0jzbHkcTG4lqbxXWv4J8Lu
         XbkIfXd8ppRnbdqfgL86f1wBKG8oPXaqxj9h+d05tvpWIXzEfIjSlBr6UcOIMVqPCnOu
         OtKV1N7TTUd3OmYtieh/jj/HE/6Hu04WDSCDTSWlLncttfINQw4wdMQ2Mg1ur6O4Ds3c
         YCGBvAm/+EAeNQPzyQ2mbinUD1JH6lHoln8TsRpta+GewX6cLKkTCxAEQMDPD+ViNhWE
         ZWxg==
X-Forwarded-Encrypted: i=1; AJvYcCV/XwNKiJU+ZhTNflY0BTUqrI7T1RP1G8K7F7gZzzz2cgFPNBG0Cc8f0OHWWYbrgeWOaVg48huVD8Cp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9BdAo8icREa3lf9kqjb3BnBKbAbdREdz1E6eBYqh7pnyVoJr9
	GlY0T8Vi+ebFFupiWO/goGYnBTtBC1fMxLhKZBZZp3TJmqE/uEoj1pB0CLX8mc7r7WlWnns7Mtk
	xggIoJT3ApDK3OJxv743hM8GETEXSfP6ziy9+a7QbKjjrKp04Wv17lTBZD49sCHLX
X-Gm-Gg: AY/fxX4sWPsVp2kOSVaCD0p9jhJyyD17jU6tUEZ5BpS4Mz7ehfCFUOr4qgPdcT6PPBs
	tiKFGrpMGENIa07Wa9yE0tnuPeqwBabDB5+j3KLSVXiDOtQnsZcmy4xg+Q8SHaOpzwL9AC5yWAw
	5EU9vHjQiNi7+aPGjJ7fsBngbUaq1u1WWHDXwR+QA4Z/W2+vwBGnTMqtSmiPYmK4RIwD20YLxW7
	/DCkB9Hw1zZXODIF7ph2KiUfOGQpJqP4N4D2qHZml0FydlUozqEVsdROi17DtvXmKnndGRWW/1y
	xW3y9bPD2OfAY53bbgUJnTGiDa3FkIUfdZyJMArAlNcT/cjosf6Axhv/s/OuYtx9VcsC6fcNJoc
	MfEEhazFc+FctOBLeldyx4nTdoBqZDr1vpiiYweNc/I225FkGXPa7RuhEmsPgd0gYgpAFopKiST
	xsUOyimYdX5x8kA7WPBrrCO3E=
X-Received: by 2002:a05:620a:4385:b0:8c5:2032:3766 with SMTP id af79cd13be357-8c520323a46mr167439885a.35.1768256129750;
        Mon, 12 Jan 2026 14:15:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEltePUoFwRmiTYPIwJ28sy0z2ZcfjKl/8aARMEpYA7EJ2zFc21wvz/9YexYqf/X4XyaZQLAQ==
X-Received: by 2002:a05:620a:4385:b0:8c5:2032:3766 with SMTP id af79cd13be357-8c520323a46mr167435985a.35.1768256129201;
        Mon, 12 Jan 2026 14:15:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3830c2a2dc8sm27328361fa.27.2026.01.12.14.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 14:15:27 -0800 (PST)
Date: Tue, 13 Jan 2026 00:15:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
Message-ID: <3d2qboek2kzsnsjmn7rqi6xkfotfchc7vdmyeprivu27l3rw2b@i5lbwsvxfwdb>
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
X-Proofpoint-GUID: C8tAlCaugvcP6EOO3gy9TK4ELenUGcWt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE4MyBTYWx0ZWRfX1zDscJf77Tn4
 8s7bc28OAg+KtihSBwEQNIHr0p3/mAHtrXqrIbf9ogjugnLVMR/Q/bH364+USGYhP/xWqk8XI1B
 iWtOiUsTW89WOx+ZDOjCPeGb2Ho3TzqCVcGWAi9plWxp6CV7HMZww2qiz62WRpKAI14kw65mvNB
 9n1RSdqXyrR90I34E+qiwi/v94QQ1pkbBk6yDcJ5uTpPbOHwbzBvdCYzx8p4H5Bhcu+aZHWshLP
 tA5c3bUPtTt8ix6WsxrrL+oTXvDSvww0KZs/G0quMQBrapU391gimHj9ROI6J3Pulfo2/mW0ebF
 pOhA8wVffTbEkEkLyvMt0zCP6xJ8MoqsguzBFO6efhA9ibxzTVSvVJ9Uj77xAailv3MKrXsabhG
 L+4m1mLtIm8k1Y+PyHVJgr2MHyViCMcrVJXTO+XHA5j1XhVZYf2FV5qEkASf6t8EK2Ze0TC+G32
 KecA/Gnt1Djif6Xf1fQ==
X-Proofpoint-ORIG-GUID: C8tAlCaugvcP6EOO3gy9TK4ELenUGcWt
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=69657282 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8 a=a0QMBuUGJFd1xiM1Y0MA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120183

On Mon, Jan 12, 2026 at 09:13:29PM +0100, Barnabás Czémán wrote:
> Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
> the only difference is willow have NFC.
> Make a common base from ginkgo devicetree for both device.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  .../boot/dts/qcom/sm6125-xiaomi-ginkgo-common.dtsi | 302 +++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts  | 296 +-------------------
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts  |  13 +
>  4 files changed, 318 insertions(+), 294 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> index 163ecdc7fd6c..70be19357d11 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> @@ -1,304 +1,12 @@
>  // SPDX-License-Identifier: BSD-3-Clause
>  /*
> - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
> + * Copyright (c) 2026, Barnabas Czeman

Hmm?

> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts
> new file mode 100644
> index 000000000000..9e3aeb5a9e74
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2026, Barnabas Czeman
> + */
> +/dts-v1/;
> +
> +#include "sm6125-xiaomi-ginkgo-common.dtsi"
> +
> +/ {
> +	model = "Xiaomi Redmi Note 8T";
> +	compatible = "xiaomi,willow", "qcom,sm6125";
> +
> +};

Please consider adding the comment regarding NFC.

> 
> -- 
> 2.52.0
> 

-- 
With best wishes
Dmitry

