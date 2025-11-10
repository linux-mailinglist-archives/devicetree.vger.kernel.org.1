Return-Path: <devicetree+bounces-236720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AF1C46A90
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:42:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55F91189505F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F67030F7F1;
	Mon, 10 Nov 2025 12:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QxerOKUe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gVnX/ANM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A44130F55F
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762778355; cv=none; b=VY+289NeNtw5W8JTFArTvZYWxkbICR3jkby7a2KzulElYZaqiLt3/lKW20qPOCkf0Jp4pCqqcXpPWlOO7BVMe3JSanFxLvUYkQmVtSiQGU2qj2dOTbwvAx5w4gdH4I3VICRit/Pe6aRPWhWabpys5iiiMmpZBapaZuFqSdbmcd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762778355; c=relaxed/simple;
	bh=gFT+3Amm33MdGkcRdM74CB/X6g8NjdXUxYSkJHwrXKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KYVbkVueBQPFDTbwrZnYBRQmSHb4VWwDMK0H2bvGIXl7quxLBXul5n8LfBWpGjvkEcJ5viRr5j4Y0mh/4tPX9c2etA9zHmXBLlLbeaw9q6V+et+hyZwxf25HuFw4PGp9Pd7LLgO29wFXiuX33uiYJUgQt+r+e1kld996tmY8GRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QxerOKUe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gVnX/ANM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA6SS792407879
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mu3glRqdWt9AjEDpzM9mxwbY
	vCJas7wdjM+G13lxLSI=; b=QxerOKUeZjj15a4crxY+DH4S8zzP3rWz/sO8sLwf
	sOCc0DMNDrPBJjio7zt0ZHZf0R15FgV3XeQanp+u8q6+vGmG53vze3ihn6PUiRmf
	s+pw6NrPstpg1NofLK/d18PaehVchBr3NaD3GJRQk68MOU/bobVe93QEWhzJKuej
	8UzyYtMBa3CbBczNocVTSi7OAaInx5B9wy/lsXdCI6/wVApM8oVkbQ4WukHGS1Dt
	jfarP1Ya8E6//EULG0O6O2p24ycwNdGg1vMSEfKW9x67ojiYCSHxUGdPwklM72Xu
	sgTUwKJdZ2GPBYH4ox/pCAnp5tDNpDOuy6909Qw8zdrxMw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abatd948y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:39:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edae6297a2so2335771cf.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762778352; x=1763383152; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mu3glRqdWt9AjEDpzM9mxwbYvCJas7wdjM+G13lxLSI=;
        b=gVnX/ANMniM9mqxpJ72ah+wuJEZGOLCMJSFnkIGI5bC6eC1i2PYzPipJEq21OwoxhE
         UgBHFU8ZEDj/5lehZytkE87VroxMWNMEX+R8fm07Lg4PMn3vnyIGbuyXc/pGlAuK+B6G
         YrQ5ltWOAL2h/NeT2UdqA/eF2Tc3IzsM5Xfn6YbTj0zbfdhBzo6R2CJpV/XDYmj3kT90
         xA+o4fdM/GWbriy+eSDxecFp94cgo06Qf3eMsdrpD+yL22G54JGFEd11jFGYyl4unkfK
         FEpBHH7VvJnY1+eKVLntCz9HBxT4p9JBblP8W6yCsWGy2aT3dbn8OlPgXUbe7xvGmi1w
         z53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762778352; x=1763383152;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mu3glRqdWt9AjEDpzM9mxwbYvCJas7wdjM+G13lxLSI=;
        b=RH8l0LTUewIZmyojWPaoBbDhSIzojUTIZvFZkkxPGooAjArMa7j8kDdKWyA8DLoXAQ
         /uexy1wNGx2VKVRmGx6U9W2Lkq/cYlKV9/z1nlVJM4rT+qt81OgDBYRmPAqJLImiKcqA
         J2EIVLnWOKKBE/5DCqYsgo3Lg+eUdlhESPCm68lWNW1FUBvfvYBGKrXQMf781J54/hum
         Xhelsq/lZGm4YsWIgt2+WFaT0/H1aMBleYhWpBXUi14kisSq5QAinKAndYBhA2nwa610
         LmSTWgDEf6orPaqx4A/NH2bz6qlUsoQvnENeosG/91rTak1jKo1JEiAe9V94j3KFqFvQ
         mZEw==
X-Forwarded-Encrypted: i=1; AJvYcCV9WuZeTb42LhER3X/a0SZ14CwTpMxDIkY7MpO2B3DH21y9tfLV7Hx01ZlFT070UgtYs5JQtu2+U/Wp@vger.kernel.org
X-Gm-Message-State: AOJu0YxyTTjXxz8UVLzEpEcSXiSYxJpBzaET2T+vX4wdmbofIshCPh5F
	xwDstm+2zbPl3t0HxJmy4M62fRZbObUNggzbKKGHfCmb2QRG3HNcBp1oZRSTBuGAjwvGyJABfXc
	hPAKW/9i3Cw5kTmOciaMZqZH8R+Hkeuzmhbwjnp2vTtX4tcyXP4TNggD3xtu/B6+g
X-Gm-Gg: ASbGnctNLVmoxfhzf9Qa7TImYIzIodlw9sp40+FrHL+ikVYM34pb/y7RAVM1VW50PLq
	JO0B8L8RR0i4MW9ro/5EWzXtG+25NpP5jCIw9ch9ZMXUBhAOxNI4UBYmBOpMjaR0X27AsZpA46i
	RT3/2ksEjUb19Rnu4thTN0nDbvHJkwLrN8hJ9ALbgB939CZz/D3b2RQPqSWM2r+rMzqH6mzY2Cj
	ing0tzmCaBAsmti7btAiInbWm2HGO6pRZ8i4lM3TTZCkiDUMFoUAihjdmaRdO30yAKNBOm4QD/j
	qJNZ2De8qPMq9IQVTChK8djFFopCIDKdnkYkWQQY0dIqiuyR/bz7MdctNMzExcarX7jBefkbW+O
	MQV+YV1T+CQNYB+VPQ9aruR4+7huMMw8f2GVvVa0AvZU7AewcSe8VoaF/kmAKEWApFlNa7JRsio
	oRZhV7p00ZUbcY
X-Received: by 2002:ac8:5a49:0:b0:4ec:90fc:59f4 with SMTP id d75a77b69052e-4eda4ecf7a1mr91893631cf.29.1762778352467;
        Mon, 10 Nov 2025 04:39:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHc7FjOtBgPgHxkl2t4dPvZb4lKQroBgN5ujgHUpHoA0lYUguSSs9vhkQDvjQQA7BW9uWg36g==
X-Received: by 2002:ac8:5a49:0:b0:4ec:90fc:59f4 with SMTP id d75a77b69052e-4eda4ecf7a1mr91893141cf.29.1762778351861;
        Mon, 10 Nov 2025 04:39:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a019f21sm3973713e87.37.2025.11.10.04.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 04:39:11 -0800 (PST)
Date: Mon, 10 Nov 2025 14:39:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Deng <wei.deng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, stable@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_jiaymao@quicinc.com,
        quic_chezhou@quicinc.com, quic_shuaz@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Enable Bluetooth support
Message-ID: <lr6umprjjsognsrrwaqoberofivx6redodnqwnuqtpp47axhiv@nho74vyw2p4e>
References: <20251110055709.319587-1-wei.deng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110055709.319587-1-wei.deng@oss.qualcomm.com>
X-Proofpoint-GUID: pxtocQMftPvKq7tHA2nA22XudeY8XfpC
X-Authority-Analysis: v=2.4 cv=eZowvrEH c=1 sm=1 tr=0 ts=6911dcf1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vuKYHiuAbYjNwaP7v-kA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: pxtocQMftPvKq7tHA2nA22XudeY8XfpC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDExMCBTYWx0ZWRfX6EF73audMD9n
 WMweC2aXYCnHqWzHgOmMw05WXmR9oFwjwP6FQvweIweJfvp5mhWzgw+BpE3DMjHi0CXcgjyxGyT
 5uuglHif69sAwhT1bdYXdsm/XC71CL7PLorJLrQn4YrVCOPx7TDOYs8Aj3Pk9Lc8PsdJJFrTfkR
 Jlp/BqVwMNdT0SUyqTRpWCZqueam1VyO3qKN82F/mGOzLNzro4JjMiiE32s9WwXp8e5NPHWMyyR
 dWYTOMMRACAcB+F07vZlR42dHjHvnE7Tf9Apf+oP8TtnEhTl8sDaATEMF2PCQa22sObzxa/Ua6i
 uWYl9DfpH1xATj/9M4gfMHbxjcrPWT82jMuOQXwn9LMIKW/vXavVLgzieJIzAoxIpxez2fGWOY/
 PclgNKBVM8lGo+XZFU0Ds6fFqOH4ow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100110

On Mon, Nov 10, 2025 at 11:27:09AM +0530, Wei Deng wrote:
> There's a WCN6855 WiFi/Bluetooth module on an M.2 card. To make
> Bluetooth work, we need to define the necessary device tree nodes,
> including UART configuration and power supplies.
> 
> Since there is no standard M.2 binding in the device tree at present,
> the PMU is described using dedicated PMU nodes to represent the
> internal regulators required by the module.
> 
> The 3.3V supply for the module is assumed to come directly from the

Why do you need to assume anything?

> main board supply, which is 12V. To model this in the device tree, we
> add a fixed 12V regulator node as the DC-IN source and connect it to
> the 3.3V regulator node.
> 
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 115 ++++++++++++++++++++++++
>  1 file changed, 115 insertions(+)

Why do you cc stable for this patch?

-- 
With best wishes
Dmitry

