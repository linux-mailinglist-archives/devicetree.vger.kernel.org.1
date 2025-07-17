Return-Path: <devicetree+bounces-197446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF66B09478
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:52:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 633713A5020
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 18:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C5F215075;
	Thu, 17 Jul 2025 18:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NRZyiPw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EF4207A20
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 18:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752778349; cv=none; b=LG2VbPCkebMjRbN7r5kN1Qq0riify9TnW8+jBqpJkCt9gid2A61BLmBsE/4rdlvr98R02VFNe+eLf3diDA8d6xy+SezuY3800XIZ118mUjQD/bITEj+8fYxYb56E84B+b3Qe+70cHZTltUhfd8q9imf0bTQP8Sicbxdxn2t0IL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752778349; c=relaxed/simple;
	bh=78JI1/FfqMPzK+79CvGubp0kjxFRxs/Jcwii3KSkawo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FsyI9QUW142yjZNu/WCES1e+klzHXDU7JTv6Rjv/PfAU06eL0CJw34A4DgC7oVhhYOAhTktQBA+EjNc6JUF9Ma659zyuoWs1Grco/kBkNqVXOA6PPQ883aE6VL0UUIqZ+geG51BnDMnxthMlKP1aYjjKmcfWLaxt2J1IxEzBNCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NRZyiPw9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCqL4N007196
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 18:52:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HrkyQj2h8WWy7OgZiBBtyyS646DmSEdm9ifAy5URrnc=; b=NRZyiPw9j6nbhnIV
	SGq0f9E5rQCn7mRL85uf4NL5R018NEqH56s1aab9YRGU6Gh+YcNmybSyrm5rRARg
	MTzqmeXCc6EOpjU6SOI8RI8J+4OQakatNqyzpGFuvUFGS03Iv0Y0OHq2UsvcMM5l
	Tk4HSx48S/7qj6AobnHBY6hVIVpUmLNZm0l1dzPrtVbg987Q0N3Ivg4OTRvLoDNl
	tOgGybheYZ/Hz98lCzQCmbwKukjTpBLgXRM14HKQ+YljfyfeTDeRiEEtjc5wVSjx
	vapa0iPU4huB7sgRbfpRKlr2KtwCtYn/P2EZh8nglCAM9/M8U+tFSnq3iaiwUqEh
	G7sumA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfcaa2bf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 18:52:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e350826d99so136001585a.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 11:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752778346; x=1753383146;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HrkyQj2h8WWy7OgZiBBtyyS646DmSEdm9ifAy5URrnc=;
        b=RPq0I2vKVfg/T8ontmpvkzlViMsvSzuNJRg/eT0zBXDSJOWqi/tJUIgh9TEnoknNZr
         10C21j1lMEKB9PvCFqfqCrkKt/7YPCZOv+1uR3zrbuwWkSclEz/Aa3iSOR6J6AW0drE+
         2QD+zEs4uy6SV4rfZeOZt7kjAmFXQDb3jPcynjWsu3/tmnwTujt+kn6d9DGKLpRE2aIA
         1qtq0Ep87VsynPgF8xpFgtloxtpmWbB2eSBbF0n+ooaO74csZCu6wi6zbKzeKt86YDCo
         80ibcOB+jY4Jkt1MM/GO0Xu8tp0ex/JU5qYN4+R+6PZd9yVJpLSENqkdFsVUjlXZNUcW
         S2Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXPLco9b9xRVkRBsNi33hZgPfKDq/tv0/mqqMR4gSQPjoYZ3buFhfAlJJaJCYylpvL9hr1qKeoRu7Y/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9CjoNsX+VLMyhy7BoFoChA8JbGiveRkHNGzxuQuTDWYHkfHnU
	/M7tqMex1p1q6FsX+68S48us5mfKl3obPnVZ9IErfjwpoXUjBrUewz83YNndhnBErOSCIzCx6zG
	nBXQL4ueM4ISWGWZUb8l/9aDgvNYFX4GZSjt9RRB/3PORY6Lsl1dEqQMg51DqCm4zRG8cS1TH
X-Gm-Gg: ASbGncu9j681TFfPshyo02AUV/V3eWHnWtNSHk7udVqXtGVjMBZde9LEgu6cKCVDEpZ
	ydw+tCcYdUg0qwLIdy8QaWOu/gC82IC5HRKxb7GufoQzwdBaIW13tx8g/swwT4M1DpYbMMLFMNI
	iqVMCZBYf/EaEJn4XxLFyFrw95dYgaOy3WRH98e52MWUdtzItxcWS76FZO/52qjxY+KYJqNyjQS
	C09GX9avrklHxieGYxjxIMW0F+V4mQWVpcHX2sYMUX/ZUfen79Fo7EJp14ljBb/kvQNhjSilZzZ
	qeasE1blcMh9VMkkJryQKM3QiE1vIc167kjWyrmaOhhb2VfLyPx+veDMfnO7vBYikDh1CqKLw9O
	GBFvEQryGxCf6MbHVEFs2KDwEOzjDwME++h7P91Xa2d/6X9DWrwQj
X-Received: by 2002:a05:620a:454d:b0:7e3:3fac:b679 with SMTP id af79cd13be357-7e3436353f4mr1044840885a.52.1752778345574;
        Thu, 17 Jul 2025 11:52:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdNjK2UCt2oKspwymCVWfIJVTAsgjsbMOTdUvDq28EVYpDczXqAuW7gocVbG8NYtCqLKGREA==
X-Received: by 2002:a05:620a:454d:b0:7e3:3fac:b679 with SMTP id af79cd13be357-7e3436353f4mr1044837985a.52.1752778345128;
        Thu, 17 Jul 2025 11:52:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b6be39sm3137456e87.181.2025.07.17.11.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 11:52:24 -0700 (PDT)
Date: Thu, 17 Jul 2025 21:52:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <b4nxjsx4fu4xmookpxukumw36wlcpzelh6axjucqe4lyswptm4@kczsldalq53n>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE2NiBTYWx0ZWRfX2EXsvjjSi7y/
 OMQEue8BqOAfsgNUHFdbZQzZlsFMpDhwytPWPkcx80av9IwM2w1R/i5XlFxZE9YVD6TR0hs4GEr
 L/xSMMkm9zfRttDNZxfpW11jcK2vhCBahVNrHTA9egrswYZg4CRutUFgC17HDDUKg81WHSGbnRz
 eCN8OtCAt6O7/zcqNZy0e5wA4NxfPuQa90zXbdqjcdZmWWfiPfOGx+dIxzA622HZ6ASyGILxXWS
 xRJ9EqmdHg8XmWt4RTItIPPq61tthZwCuhaCBNQ9TKhtdPBRGfHRHSEpyGA8P+6Ov9ZgedDwUMw
 Ks9ykZGGxpI2Blbmty/QLZcHiVn2L4GwkGnaCv8qr/Mej+JW96W8z41YvopRPVhNIy8v8K+3+Ac
 spmUIZB+Ck7kwUEm8KM1kw2vRaod+12Az70l/KtY8X1wLYER4o2pENYmBLkFDO5jr3XonLvT
X-Proofpoint-GUID: aP3dqfXCXMxpaISFQjJ2_bvnZYGU8nu7
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=6879466a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=PhgHo22kut4TJJxNvVMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: aP3dqfXCXMxpaISFQjJ2_bvnZYGU8nu7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170166

On Wed, Jul 16, 2025 at 05:08:41PM +0800, Yijie Yang wrote:
> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1e80100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> This change enables and overlays the following components:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - WLAN, Bluetooth (M.2 interface)
> 
> Written with contributions from Yingying Tang (added PCIe4 and its PHY to
> enable WLAN).
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 607 ++++++++++++++++++++++++++++
>  1 file changed, 607 insertions(+)
> 

> +&remoteproc_adsp {
> +	firmware-name = "qcom/hamoa-iot/adsp.mbn",
> +			"qcom/hamoa-iot/adsp_dtb.mbn";

Is there a significant difference qcom/x1e80100/adsp.mbn ? If not, can
we use that firmware?

> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/hamoa-iot/cdsp.mbn",
> +			"qcom/hamoa-iot/cdsp_dtb.mbn";
> +
> +	status = "okay";
> +};
> +

-- 
With best wishes
Dmitry

