Return-Path: <devicetree+bounces-197833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98390B0AF48
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 12:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B0A41C223E6
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 10:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF912233136;
	Sat, 19 Jul 2025 10:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l5s0HJ70"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3667721B8FE
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752920037; cv=none; b=bUN1xN0wpwO9NcMoxhYPcYby3N4L4wonddzs1/W/y2lArIVcM0xz8+Vi0ChqGxsoSCZRj/iRsfERR8z76zBN4xFdInrAbCC3iXF1oCrJZ1iwoG5makFRof7rwTjZxHnFucywZBTKAbixVyj4kZQrwslubsS0/T5uKFo/9Ev/1nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752920037; c=relaxed/simple;
	bh=qiUKtwKLIS/AC6oCNR0gEj3Z1+ztmrRs6OEIMuyBY9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f0QBfMXhrp7Ym5+jATi+PEdtev2yvrxcJfpyEUjvfcN7+ZAKWcmjnDjryzULxyQgujAcCnPStGrEjOCJdQSX/sjKLQ9IZ6MzMconu5vaUqOWKrwJFw2srunW1xygnCTkjUI78qMKL0aFL6ElLX1s/gtgNDA8ooaf+lOHb0oVZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l5s0HJ70; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4LSQe027225
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:13:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=S4AgzYpEl0AWxTCqNntXuKJ4
	kl5adod/iZySnBe6YVU=; b=l5s0HJ70cuilqnLgJTMRluwq/gFGa4gxSWV9FXFI
	bap0nl1Fh/v8cQwGmQMYoIBaRq59BhP54AogMmD3mmoWQ8hy02440CLCHyqCQ4rD
	Of6cK2IqOoVF2TtKde+BZiWCxhjGGsbzQxccKTb0QijFHbDnJixswcIiMkQ0fakq
	8iOi8n1UgVXFs6x2nbJfaWv5ks8tEm0RoGuIH6KqaMsuYUkC0mh4jB6I3D8VRB3L
	izpwPuwSSSQ+YdXZSeaWLubq/9YgR+WHA9p4F0IVN4PKNj1HuXwWjryWuYJxHWZf
	37MQAE2NkS/BtUG5yf7igYsjHSGjbEYm5Ljc3X1A2GCB6w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048rrfn2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:13:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e32df3ace0so242347085a.0
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 03:13:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752920034; x=1753524834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4AgzYpEl0AWxTCqNntXuKJ4kl5adod/iZySnBe6YVU=;
        b=cojozK9lZfiyB9ic68xnMcDUuzqhK1QWRmu9yUbdgF9ZIDCbmaeV8Yb+k8o4npFbcS
         ZmM8y1T+xb2ufMgwf5CL4heFBOXk3AjX9WwAzUasYAfRCBeC2q+f8ge7QhsyXhITDp5l
         RUof9rA7hN930Fqne4tT/i5sMwo1olPzHB96XLzx1KIGgUKvsjYifF2lMjNTUvTmfbav
         9NpDcsEU7D3dE43Qe1NBhiVHcr422siWgq7tTj+8GydQNT1WAfHHeTJkIfiiefJw/G1J
         O9UN+8BFGfLwEPZiI6DketxifexnFsJzteO8wIUdcEcLE38Tmh3iqLXZQLS7Il2azqYP
         t8zg==
X-Forwarded-Encrypted: i=1; AJvYcCWLZzPdqsWSeCvSGl7CJhOmPy2DINwmHJKyqqg54QEiPv+oQ5uvV/syjggvRzNNa8JN8fGX58w+BI+j@vger.kernel.org
X-Gm-Message-State: AOJu0YxvWO4uglRfvA0cq9Q+kvvY9X+oqntwu2eX2UBIw9REXuqUX58r
	HVHKQGl0QQUOQscmK1gG1fJvttjAkeBuz4roLNGh6hz1QOpELy5i8DxwIKfdFLJBFjYf1Ybq2+w
	8GnkIrdo5vPDrlVV0EyBhSkii5CiIY7i16ewdrCg1umPZ5TpWRVzoYjmUipPvxuLJ
X-Gm-Gg: ASbGncs1xFBe2qINsxfwC7JE74CNktXjyCH3pZhZVqtYVcsPptTR0JoQefyJxh6DI3l
	vYRsFFjsJThizzC8pYSEK8sf9CjH3tdLUizA+EWNdqlHNrBkpZfG1ds0ivD546pM7qzmmvqF3Gx
	kcwtq2RYOVjw83zCFlcaKNAcWw+0TwdLYd4Ov1vxSKcIDdCB9XIq6HiXp2h2HvFGfk4TOpHmdJR
	v+gUFQwnsz1z3DIcP72FVg5YtOrOJnziugnshJ/+q+Bn7C4SHcwLTC6Rs4ftJKXzMWg8OMMYNl+
	Ej089en/w2dIbq9BhwOblLKF8PwjX0jHiSFjXFy+T9c/c9XbwlN53zp7kMgfovXoVqBe9eAtXE5
	bRiJAuPp49zKY/YJq9MDf0ihYiDT4KCQbdjyjG/k4zPcxdLH8BnNb
X-Received: by 2002:a05:620a:40d2:b0:7e1:3ef4:8f3f with SMTP id af79cd13be357-7e34356d80cmr2062275885a.13.1752920034013;
        Sat, 19 Jul 2025 03:13:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1EUzMDuu/9hxGLGzLUhkSlnBNBYEs5KIbjaoIgvnK+bEoH4cV/3yg9HAxQUy3UD49tFm1zQ==
X-Received: by 2002:a05:620a:40d2:b0:7e1:3ef4:8f3f with SMTP id af79cd13be357-7e34356d80cmr2062272585a.13.1752920033633;
        Sat, 19 Jul 2025 03:13:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31aac7absm657229e87.75.2025.07.19.03.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 03:13:52 -0700 (PDT)
Date: Sat, 19 Jul 2025 13:13:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
Message-ID: <smnw6whsw5todddsoveeanohcaesfip27udzkbw5wk5dwlztzz@ic3xemwrbjwg>
References: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
 <20250707-615-v4-2-1a2f74d167d7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707-615-v4-2-1a2f74d167d7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDEwMSBTYWx0ZWRfX9T4lr9z3uh0c
 oFU/QzoXgMGbLOc0WGXk7GERE7ONDp2rYRNmmlfuIXHFmd4XocL3CjgAGXSg3qVrwc7X4KAQ6Ip
 U9cke38hoS04get+qD9iBXwFpSGGKpqMEVP+tMbqmKRB8UValhW46S2uN8slfZ3fp76jCamPhI2
 hWYuBJK+/hSexORLTNkcvoSVOs2IS6cQQ7S8Fk13F2MN1npmzKkbegDL0ZK1kfl8BeI0TzGejrs
 4y6Li7J1jJVoPUW5NCeaMklycGFE0xUDmhLQqc3Dv2FLhQ/CNcuzBPfGehE9lWGc6awMBQl6VT0
 3RCIaiVtbj+/2j5wOGl6qCQ69K7WP9w1jXSJN4xRkYbdHY2FNvdmv8NpMPqu6HXv9HKDs0TxmSp
 nHyYeY2ZJImTZVtxR20dpt4yWuiH/6//6QsTiA8Wk5HAPkBIDR4Son3Fob9d45NxJdRdC85F
X-Proofpoint-ORIG-GUID: CSLv9IHHbH75Hpuam9Va_83Ew7oFY9YK
X-Proofpoint-GUID: CSLv9IHHbH75Hpuam9Va_83Ew7oFY9YK
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687b6fe2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=S0F6pwWdbPyMd8weovAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=975 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507190101

On Mon, Jul 07, 2025 at 10:51:06AM +0800, Yu Zhang(Yuriy) wrote:
> Add a node for the PMU module of the WCN6855 present on the qcs615 ride
> board. Assign its LDO power outputs to the existing WiFi/BT module.


What is "existing WiFI/BT module"? There is no module in the DT. Not to
mention that PMU is a part of the WCN6855.

> 
> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 011f8ae077c256f079ce1b07720374a9bf721488..2df8e7e3c1d3b6d6353a6753b8387c7411edd927 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -18,6 +18,7 @@ aliases {
>  		mmc0 = &sdhc_1;
>  		mmc1 = &sdhc_2;
>  		serial0 = &uart0;
> +		serial1 = &uart7;
>  	};
>  
>  	chosen {
> @@ -47,6 +48,85 @@ regulator-usb2-vbus {
>  		enable-active-high;
>  		regulator-always-on;
>  	};
> +
> +	vreg_conn_1p8: vreg_conn_1p8 {

No improvement. Please try again.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	vreg_conn_pa: vreg_conn_pa {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_pa";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
> +	};
> +

-- 
With best wishes
Dmitry

