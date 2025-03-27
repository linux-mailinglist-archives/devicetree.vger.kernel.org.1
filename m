Return-Path: <devicetree+bounces-161244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57793A7321D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:13:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FC5B170A4C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 12:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 983F9213E7D;
	Thu, 27 Mar 2025 12:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kXM6KHRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E612135CF
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743077604; cv=none; b=KOHbVsRidD6cWsioD+Gb5zZiYb/GGFjc6xXDDqFph6M9BJKL+fdYS5q/YtbOWssbGpJDxIdncsoo2axP42Fq2nxaeunXfszUYHCQjBTrX70Puu7sqcB6qNmxoKyi+ZMfq24Peir6YPxLNNELMM5jnEx17Nkg9U6BUkLgKPkYrKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743077604; c=relaxed/simple;
	bh=LAglGtaGdv1Da+AjfgQ5kbIFyqZGUTUVbYDRQIrV9ug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qySN07y9ab2oElp34coKf9E/cMkwn2jE/FmpCx/IGkke4xImk4ZQQRzrvdmOwt5Ygv7C66CjoooNp+GdJMG75nC+cMXId2vTcOQd0qqJSlexqE5AT+qZRopndZ1qLL40VXcqpy9JkAbaYFQKHUAbcsBPPpT792e9McoW/jkFlnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kXM6KHRr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jEe8011618
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7q1Wh9lhgxTjHAlCh3PBu5Ah
	qwhELU5OX4K4QSMh7WQ=; b=kXM6KHRrF1GvNnSPyWktWuZHlwYgklIbzUEKQUKo
	cIX+ahOikMmx/LzaM0jggMHXne2hzRCjmt1sK8tmKE0xdHIEN7LYRJPuVViVPK6s
	IO4aKK8otjhmf5DlpVm8TlaEqiS+iw+BJIK8BaDiSh9TacA1fyPR0DJoB9hxUUi3
	ikkk3YFTVTQplHTJ7n6NbBp3Q+C9clor4aftJ9vGdH8bgq8YGxRUuyI/JgtZUWBL
	RL/BmLdPj2iO9tX2vLKKlikX6+3hb1aVp+T/MlIyx1onmSnReu+x/LqVKETtsNb/
	7uAUrSZ0t6i3SoJfkjY1AskphZCreaj6oLkiM1uDhnQmSA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45manj4um9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:13:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5c82c6d72so184184085a.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 05:13:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743077601; x=1743682401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7q1Wh9lhgxTjHAlCh3PBu5AhqwhELU5OX4K4QSMh7WQ=;
        b=BKacefEF30B+M7Ec+5iVvYUJ71crShtpPkqkxSU1ZPmjidwPJHvDQ2njVWlhKWkXtb
         yN3mWZ9q2Qib0r2zFkC2kr9Om9qcpZGCGQNwfeYYtemWIV+2cx9+XxLb0Btg0kgOcbga
         GeY7kNwGwmwbwDAD9bMH3gZwCVJCpn2uw9b+FbHMSeATJjH/JDeF+iJFP7bbYKpeMpPX
         P7OBj0UWBY6WUJRovj4FW0+qHvPXdxLNiTIrapoa+57wgK6c9wQqnf7nXWWNzokEuUoS
         ksCrUD+rKwU0qoYJDnkg1D+RdSqfwR5BhlP4rLehfNLeNmEtcsV2rAKZ74/2b0yKmL1Q
         ny3g==
X-Forwarded-Encrypted: i=1; AJvYcCUFh1zC2fR+nkoCTdERzvY8zefjt7tZutlyZlZBuykPnHnlG7VhfhKfGcbfYY4e7m4i7hF27iojxGIb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz49bOoi2bgmFL6fVEdFyqLtA7KjnivLC5LQhz/KbxsB4asRR3J
	R6t21Wwv90u1p3JeoCpoRbrXpGMU67UjnQCXebrnBZlMiqqG/jvRf4Ml/AkHhpZtfMSYJ1G/iqC
	ObZUGJJ2no4xJJUzSJMoXf3J22d0xuuSk+Fj6Rck9ipeIzo0LNZPB8FgF45f/
X-Gm-Gg: ASbGncvRwtH8mvyKMhT36ySqb0lrEIAPwWldbFEeF5Fgm2+pkX3ws30RlgFj/2hCdjX
	jLfA8ZDdww/2YmxRcMyaQMEwQEh9rcy/rLnKExJO5NBo+D/lcmxOfQ/bSXfSYtz0WKT/PrDY7lj
	dluasG+JFzjhqZkAJ24FCfGzwcQatF0thxe7pMP+TXtp6Jmgmj5LiZ3I1viRIQAoGmiCqHXL7Ua
	eSdmTquw/YkDW+2v52yaay3u+Yv5N1LtBpPO8aycC5T7z1ccwY49RkGErNRP0yMNp1LeBGQGS57
	wcMJL3H7nDD5ENDFjQbIGutjErXxFp6cqOMY/TaQ0RifSTraxLpl2KQs+238A7BCfoPXDsaI/TU
	pXbc=
X-Received: by 2002:a05:620a:2453:b0:7c5:49b7:237a with SMTP id af79cd13be357-7c5ed9f545cmr411695185a.19.1743077600861;
        Thu, 27 Mar 2025 05:13:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2G1otVcxZQgzWqoHR02ogEilR46Q9aHG0UlLtUkpR09V1VQnKzivVt0fvho1i2HW6arEnMA==
X-Received: by 2002:a05:620a:2453:b0:7c5:49b7:237a with SMTP id af79cd13be357-7c5ed9f545cmr411690085a.19.1743077600384;
        Thu, 27 Mar 2025 05:13:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6480ed6sm2060839e87.103.2025.03.27.05.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 05:13:19 -0700 (PDT)
Date: Thu, 27 Mar 2025 14:13:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: srinivas.kandagatla@linaro.org
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, ivprusov@salutedevices.com,
        luca.ceresoli@bootlin.com, zhoubinbin@loongson.cn,
        paulha@opensource.cirrus.com, lgirdwood@gmail.com, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, perex@perex.cz,
        tiwai@suse.com, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
        Christopher Obbard <christopher.obbard@linaro.org>
Subject: Re: [PATCH v6 5/6] ASoC: codecs: wcd938x: add mux control support
 for hp audio mux
Message-ID: <f7tgzuapeb7pwg6ygp4kpxoziuwb5jjcix5o33aoehd3dixcog@4nzt3tgcfca2>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
 <20250327100633.11530-6-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327100633.11530-6-srinivas.kandagatla@linaro.org>
X-Proofpoint-GUID: 6Fxb7WymMjoodEk4WhqFaCb4WNSJvpUk
X-Proofpoint-ORIG-GUID: 6Fxb7WymMjoodEk4WhqFaCb4WNSJvpUk
X-Authority-Analysis: v=2.4 cv=KvJN2XWN c=1 sm=1 tr=0 ts=67e540e1 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=HLzW6X_U63wjtiIj7HQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=686
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270084

On Thu, Mar 27, 2025 at 10:06:32AM +0000, srinivas.kandagatla@linaro.org wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> On some platforms to minimise pop and click during switching between
> CTIA and OMTP headset an additional HiFi mux is used. Most common
> case is that this switch is switched on by default, but on some
> platforms this needs a regulator enable.
> 
> move to using mux control to enable both regulator and handle gpios,
> deprecate the usage of gpio.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  sound/soc/codecs/Kconfig   |  1 +
>  sound/soc/codecs/wcd938x.c | 55 ++++++++++++++++++++++++++++++--------
>  2 files changed, 45 insertions(+), 11 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

