Return-Path: <devicetree+bounces-245739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE86CB4D1C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C913B301E177
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 05:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C139A2D7DC0;
	Thu, 11 Dec 2025 05:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mGBQbx14";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OsP96+QT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB612D738E
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765431889; cv=none; b=ZkEB5ome+EDmMGHf2VNHZYjEQvND7ANWpObdOE+WErUm5k9d0T2NwOU4bKxBKIdjA8UNhAVNFptAtD9kj2lZm4YBf0GxnA8+MdZ50DWZx0PBQLNx6N4u57WyxnQVhSiE97M3KU58X8girvjFm+peqCdXB0pJ8EMo5g165GyTtSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765431889; c=relaxed/simple;
	bh=SzxaHVHPjqDlmBpQu5Xm2YNMObWyx8B6VBrtONyU0s0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FLUpdcCx6RhhjrkMjeRLUf+IyFj/+zyHrhHGPcsEeYitL27fb20SAbTAgqAWUIK4tuL35bz4sVcqLWFus+H65svnLDgLSQlbXvsLreqVXFuIE1NOLHJHwxGE+/YDN4tysm9QQm/fdSi/4jbyBK6/JhwxTyOgjOj5ffsx3FhL4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mGBQbx14; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OsP96+QT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB337JT3683971
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:44:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JLG2w+C3sTszdx4VirmlaHOi
	FL5gN+K2jZmVYvVT/j8=; b=mGBQbx14LnZEz0Emgk0KwuJjoz2lMbaSeFM/9Qq/
	JLTR8SLPUjwowuVwEyVWNPWImBAy8h4FOa0My0wyAr0qS3cjwfQ5I8NLGJo41n6d
	uI9jM/Ow+5l0bGXgPNhf0BEOnOHYlLq8Rr06uhe3HvQI1GxiZPoiIMDoYlp2nyB3
	G388bNB9ewU0UeQ5d8Pby3MpxcnPAecZnAzW0Mpp9dJlaVN6rldmT7Yh1r44Zgex
	UrEJ09L7I7s+tdw4TcaMglVU9Gus5KU5v3dGHScqMjNZqxnA6iInY59H30zZ9Sqt
	lNh/A2p9X/WNyP1lnhwrSLz/xK7ojDEF+o7O4vkUbLyhNw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aynpvrcjh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:44:47 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-559867c92dfso376929e0c.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765431886; x=1766036686; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JLG2w+C3sTszdx4VirmlaHOiFL5gN+K2jZmVYvVT/j8=;
        b=OsP96+QTQ8LNqYFPJWDqmvxvEMZ/7vhOc6MlNR68dKRQGV7njBQRCo9Av0RMx04R+O
         2RvmbV9BBcpRDnuE2ML+tJYajI7WoQ7KJoX5ukP5VzNYHGqmZn5xA0AbtQU7Fix5qW7a
         hp6O8Rmq9QSEJF7f8Tm1pKcSySUsLaIPljKkTGn0alphvaWxraxMcS4cQVIwQB4xRuJc
         F/hGHvSMz5u9iwXEoWra4z7T4V2eNOxW7/x+zZdaoFDNjZpG2lfV9T9mvt7N0GQ+oKge
         zGU+yl6b7tyn8Q2LMY0p61RiqghPbsDw+lEvNuNGcpxi4qwC80HziiapRa2Yy3sVDypG
         h0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765431886; x=1766036686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JLG2w+C3sTszdx4VirmlaHOiFL5gN+K2jZmVYvVT/j8=;
        b=CQJIYV+Sz95XUg+/SkTzASi1BzSXA+L5gUtBIpGCIfHoq4YOBNZSQTWMSv8MS31PXg
         ppqEZB1pRJPH/5cRXyU+AShCTGyle1ovG7U5wFnk5LbGkTBqtyltgBDCboVFXbkYA+sW
         XOFUH+cYod0OZlTcD7llSnqR+64hVozbaYjbZa4gGD7TrZBY/uPJ6/mkAK2BlLd1Xe8V
         6p2tl4WoiVrC/cX3gvxdAJC/5vdaRCYa6ljVE4NgmXxolmMmZADZ4WLbuC5U+e67PnHD
         /Mjonykldjfhdj9z4r5IZw0GFXD70/81ySUhQDt8GXwzFaEJralV4VbBhWGUX42DjA0v
         y4GA==
X-Forwarded-Encrypted: i=1; AJvYcCXtBuSAzyQ69x3ODszflTF8jpKYyM5MEBoeWvGL7MR5Li5CG1fSwhJBEzfn0ldlTfyIcZhFxQycYQdU@vger.kernel.org
X-Gm-Message-State: AOJu0YxNF1OGG5xYhV/R9JSAc9AggRXcH4CbPgdvLli/WG3g27VVpFaE
	6lHWO04iRe9XS3Q6NiNwD/nAICb+Z32M2+RrPj3+HJ5neQNjyYNXP+URpBhp570dKl8n1KsATgx
	ZyTYbUtSwyDjQUchzLislK9Lpf489GPNK6x4me7wpjwEFUjBvCl/tw1SdF9K8vMT4
X-Gm-Gg: AY/fxX52qmBpdd0IQW0+eUQs9SZLMfxW0NvFDJmWp7mkqqPuAdemfoErxP++w5BUIwe
	8VYPQnIxMuw5ZIZQGTJIwuK/5pCGrEvgi3dSMSGIQi3asYWs0OszbdE/n3BoS8oa8/3XO/dUh5d
	1qcwx10Q3Uw7eVhBammPijLdTxNIcB/G+Bxo8SceWXaI8FeODRSseQC/aODXFpWHIrraDn15jIp
	asyLVTGMw5v1BRWdbbynve5U+PSR+QHFM95yL9WgfOxXyV6cvKX2Mckl/Jn4QkRxfF6WtmjPFt9
	nVp6LdrJdCxtpOzH4LEvxU3siLY1+mkaft6fqjEql4ER8XRX5IRH9vBxvsQgPj+oUHkz5M/+zn/
	Y62XrbvPICEFufRH59tsfud//gOztv792x4qMSx3pJBVw9HDcxKbI+0Y4t17Im65aQ9akHcoeRn
	drtm+H2ODTLCQEeObGhBKu3sI=
X-Received: by 2002:a05:6122:32c4:b0:54a:a048:45a4 with SMTP id 71dfb90a1353d-55fcfc5104amr1538458e0c.16.1765431886197;
        Wed, 10 Dec 2025 21:44:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGfi2cilvQl8uWCLP+ABlqrwXcWpY35vi39IvBW1eJLuXb5tc9Q5Oi12IXGio+bfFJJkuxng==
X-Received: by 2002:a05:6122:32c4:b0:54a:a048:45a4 with SMTP id 71dfb90a1353d-55fcfc5104amr1538441e0c.16.1765431885725;
        Wed, 10 Dec 2025 21:44:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fbca6c62esm3887871fa.32.2025.12.10.21.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 21:44:45 -0800 (PST)
Date: Thu, 11 Dec 2025 07:44:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Introduce Kaanapali SoC
Message-ID: <drbc2hb5hv36s2bzxaalfnr6lcer7zfyexnya3xpi6ltlhw6et@6gu5s7wfwm26>
References: <20251210-knp-dts-v3-0-8dcd52f055c2@oss.qualcomm.com>
 <20251210-knp-dts-v3-3-8dcd52f055c2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-knp-dts-v3-3-8dcd52f055c2@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAzOCBTYWx0ZWRfXy283RdwkqXQt
 H9wm0hSjDPs+7Cseve/ca78gXTmhri0IwfZNK8m/vhSHsHzj/IP1XH4i76v9Aynn51l+JKnmHOF
 hT7B6RSmhr8auoGHVzrVF3tfrtdIflbRnw4Jc07gNdclFei01dm1+s77EVDmulpj6j9XFcyX1aM
 mQo+d0pb92s4DEme5CyxyUDfasnSOMtaKUSGC/OcqB9hUPOOQD8QWKAT0o6ULrN3epcGLXzL+uk
 3AFyj4+9m+lcr6SClc9YCujODVTCfZydLqcdvqG9ehZzWIhhn7ZvkTn94qrA6eQ84OXo4ctOxc6
 XxuFKCCYtqqJU0Fii6HHT6cGlbKNO2bBw0w5FctJiuGeBnM3qzvnktwf7oveNlIBAJWIA+kitG8
 Mswbd7ajhF3Q3UynC/QOg4oHvCEbmw==
X-Proofpoint-GUID: HESRlE3dleWwSnfVgN7KsWeeXo32HxKa
X-Authority-Analysis: v=2.4 cv=C6nkCAP+ c=1 sm=1 tr=0 ts=693a5a4f cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rz-J1vZrXhXIdLqqZeEA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: HESRlE3dleWwSnfVgN7KsWeeXo32HxKa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110038

On Wed, Dec 10, 2025 at 07:05:04PM -0800, Jingyi Wang wrote:
> Kaanapali is Snapdragon SoC from Qualcomm.
> 
> Features added in this patch:
> - CPUs with PSCI idle states and cpufreq
> - Interrupt-controller with PDC wakeup support
> - Timers, TCSR Clock Controllers
> - Reserved Shared memory
> - GCC and RPMHCC
> - TLMM
> - Interconnect with CPU BWMONs
> - QuP with UART
> - SMMU
> - RPMhPD
> - UFS with Inline Crypto Engine
> - LLCC
> - Watchdog
> - SD Card
> - PCIe
> 
> Written with help from Raviteja Laggyshetty (added interconnect nodes),
> Taniya Das (added Clock Controllers and cpufreq), Jishnu Prakash
> (added RPMhPD), Nitin Rawat (added UFS), Gaurav Kashyap (added ICE),
> Manish Pandey (added SD Card) and Qiang Yu (added PCIe).
> 
> Co-developed-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
> Signed-off-by: Tengfei Fan <tengfei.fan@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 1606 +++++++++++++++++++++++++++++++
>  1 file changed, 1606 insertions(+)
> 
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		pdp_mem: pdp-region@81300000 {

please drop -region, please be consistent

> +			reg = <0x0 0x81300000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		aop_cmd_db_mem: aop-cmd-db@81c60000 {
> +			compatible = "qcom,cmd-db";
> +			reg = <0x0 0x81c60000 0x0 0x20000>;
> +			no-map;
> +		};
> +
> +		smem_mem: smem@81d00000 {
> +			compatible = "qcom,smem";
> +			reg = <0x0 0x81d00000 0x0 0x200000>;
> +			hwlocks = <&tcsr_mutex 3>;
> +			no-map;
> +		};
> +
> +		pdp_ns_shared_mem: pdp-ns-shared-region@81f00000 {

please drop -region

> +			reg = <0x0 0x81f00000 0x0 0x100000>;
> +			no-map;
> +		};
> +

> +
> +		pcie0: pcie@1c00000 {
> +			device_type = "pci";
> +			compatible = "qcom,kaanapali-pcie", "qcom,pcie-sm8550";
> +			reg = <0 0x01c00000 0 0x3000>,

0x0 instead of 0 (here and in other reg entries).

> +			      <0 0x40000000 0 0xf1d>,
> +			      <0 0x40000f20 0 0xa8>,
> +			      <0 0x40001000 0 0x1000>,
> +			      <0 0x40100000 0 0x100000>,
> +			      <0 0x01c03000 0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,

Also 0x0 here

> +				 <0x02000000 0 0x40300000 0 0x40300000 0 0x23d00000>;
> +

-- 
With best wishes
Dmitry

