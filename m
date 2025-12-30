Return-Path: <devicetree+bounces-250556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4933FCE9F68
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:45:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EFF230213E0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 597652F7AA1;
	Tue, 30 Dec 2025 14:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="He7rLy+h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JO3NiR8/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7933E2F90DB
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767105918; cv=none; b=p6eGiFzvUFUquMzbYDgwNMA2UNSywuK4R/DRpXlzndgiaW/bFKZ7j8c19c6aBu/KlJFKzWL7RKKUVhn83nJwagO1hP0jbBJaextpvDaa0Jf7au6IgJmfTzd6MFj+b2qh2j4i6TupZ+VH/xU+HCC2yZ3X0RrGlZCd+yjA2Onx9yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767105918; c=relaxed/simple;
	bh=T7BAmLXUjf1uy87Jyo2+C6BkNUzGNh0lWXw5PXqWxnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KCv7kaG/URo+e8fxY2A8Ge62jo3GR1cf/IfIF2FL5Unpov3M7OhR/xEQNIiJJm3J8cbjJpaUc4dvc9dk6N3B4BiKJVIrwXODoaOzbufapY9XWVr4TmOEu8so6krDa0j4TD7b8NUonACELTQhIOL1J65fj/VqTpny/b7FBvxFSG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=He7rLy+h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JO3NiR8/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU5Rruc899646
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:45:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D9gcAY3xkUnBdSvgGfDC+e/r/1odjoQKcBhgfdFxJyk=; b=He7rLy+hXltwq/UZ
	+qKUyZyd4OM6Nhx/oMAqrmBYzoy4UwR+RcM5d0rxYc4feRswpIQSRW7usgQ/8LRl
	2T4E/za+0hZ3DWcyHRe5BoiEHw+P3ZSwac/o70J23cHXF8U3//FHMp7nlHL2vy8Q
	QCavo9GI8mbtHXgZ+2kmDqwN2VpPCaw0zUatpG4xy2OpkFLZr0zQcl9XGVR5fMPU
	Wog72w9Z2Fcn1O7ntGNlpHQSsKrvHdzQKNVuPTy5qBehF/gsmWuBk+dS0uIqSxnH
	onFGuLS02LkY2MXZqTn5Zd1VySHfj9HN8NQFiPIMtOvQgWqdBnXre/K5dFe0dRW2
	3U5mhw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky17nq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:45:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so27329831cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767105914; x=1767710714; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D9gcAY3xkUnBdSvgGfDC+e/r/1odjoQKcBhgfdFxJyk=;
        b=JO3NiR8/DW/UUu1UHCeLVUimQ0ziRsRKBrED4o6EQEo/E9vSYuxC4nLf+Rf/PM3pk8
         N/iPA0F8AapmGKzyRcoKWC9jxh3ONpceiqjCUfir1B5Fh7frpKFsjY1qI7cnq/wuhCMH
         I0KesvlL7nVAlLUbeHrckzhi9Adaa+/ZeW4ZXJGhTaT/qRlJBCu7cLAroH4z/mj0jI73
         csi7LGrcVLWaxjy/gQTII/RSM46Q3vvKGcNtUETkPWYQGywQCmR4tcQGuvdYG4t1yO4E
         G+ms1C6TdRnf6vPlT/0AeD+/v5ntzq16xoDqHcuhLTfvShyqNEGWD2NpBqO116lxSr8a
         rEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767105914; x=1767710714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D9gcAY3xkUnBdSvgGfDC+e/r/1odjoQKcBhgfdFxJyk=;
        b=W09pLt/P8FFNC5BQaTfStgherzVAjzxSbap725DtP4ShR0/Eh1AbdN6au8P28+JXqc
         INmm0XCVUj5OdGEeWtop/+5OlMo61EDn8ZR/AIBypcZKcdpsx2wDF2i1sVvfCErHip87
         ylhACoFwQKxFQGxzGkTOc2zNQktBFNMUung59wFrfKGcA4TU9OrEdhk4R/XZxieS0gzp
         d3VI6QUUc0j4A/0ZRlcO6Vo96epnlGlizYXfYMCZxNBgkhfxHLxzF3AhkFXseHmb3TN3
         qzRKD2rkn0hY1ZfITD+lBCc+Od2WfsxpiPzXhdpTwQUHHAjYXl4DdFL9PhbFMVx7GioN
         mPsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX69tjxHU85DfaOsCUa9HbAzdZn+r2AlRy+1L6tW6A4nKwuygYlWrbFp8/9bGv+u5I32/AIIrqsGR9@vger.kernel.org
X-Gm-Message-State: AOJu0YyJrJE0WuZYNNTtxRj5exrVu2Bd7bHQzt2+JnJKosg0mOuwLDiT
	MJn+ILQm/4wYMIBkgLjIOc6u88m3XwxBcoganahJKp/h/yskgc7n57Z7vPCBLsK5pJdjA1fOtah
	gGIlzRfczXIFjjTw/ZtBNxaxh7IcwNLSM++ibAss9GKbb7GtKN0gpQJzKTaa6sGRm
X-Gm-Gg: AY/fxX4PwOn7WbYPWpvVNDzZXN0H6iWAYZRVrAHsBT9bzSFIFU3K6wTh0VydzU9nfbT
	dObnMYKEBqSigW1p4ib+Hz9Vj3bNDxAdlLkJLOHa33uNGJh9VoojT7m19yHO2omlGjDzG1kEifR
	+ngoV8NH5kC7xOCRGiS6HjGI44Cs/MdofOyrk1P9A/TNchG6tZKbZ7iyTAAEckdsjDLJFZ1Hmpk
	xuE2l2r6gjqNQ9+QR/i+QoVq8tBBmz4k1hlaIpNheYTGYcCjhsczmc4n4EESofUfuwzu1Hm+8mT
	2q361kg/MICPH84XDEOeWpC5WHuB1ad7vxPxpw6llLhFVzvpAtDIHoaXaRpOD6cOwNCRyS13D4O
	o9aipaIyJi8zqifMwCcAzm9dFMT+ZG2xT//Sogs28aKUNHA4VYJdwsGK49MxQF1qVCQ==
X-Received: by 2002:a05:622a:247:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4f4abce7d98mr387999681cf.4.1767105913628;
        Tue, 30 Dec 2025 06:45:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTdtbaDXDqhGK3D+EUcMxmH/wyNe1s7Fug/aEOy5Yg/4DH44Hv9jjvA72zDeJNORwMn7E+2Q==
X-Received: by 2002:a05:622a:247:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4f4abce7d98mr387999231cf.4.1767105913229;
        Tue, 30 Dec 2025 06:45:13 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b7bcsm3793486566b.49.2025.12.30.06.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:45:12 -0800 (PST)
Message-ID: <6e2acece-9a79-4b3f-9a77-cdf45829db98@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:45:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: glymur: Enable Glymur CRD board
 support
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, rajendra.nayak@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-4-32271f1f685d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-4-32271f1f685d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEzMyBTYWx0ZWRfX6gW/uF9SxSkK
 Q04/MbvDQTjaiOlGRzg92S5CTXKqJZmQFVwt2oihLwMecd8rwjEYqV31ZaR+7n/Kn7h3LoB9sSi
 oFflbV/kp5EG/waPD7O8pBfR6rDxyQSD9QFx1XvE+LI80Ld4h2N8/AThz6dt1TH0l98eiUjGZPQ
 CsN0KUhKoI0tzQ6Eqi1VPecPPR1IHeNo8KBG7yHoO5q/KdYHGzN/hZ1qOmhMjBaAVbA4CG27I8m
 GYAhuMzP8cl/WDV4/0lB5MN+y3aZzIFLO53aabraPRhPwHzJWeYdvUCrNd3fgwfYB4lUyVR8PLN
 tGTOkuKFPqekt9Tq7hlXF7jBf1zRsWAQimlzaQZBc1OWGAQOYEjrFSAixkW4Ym+AjBN6b96utv8
 sQ/KJEtySW2gn78E7q9oG8sucO3zzIbrkiJBOGK9dABG9wuymFXvsD0Z4tdkTQb5T3+EdVwOWft
 G9EkBhjpzmTKjuiaHDg==
X-Proofpoint-ORIG-GUID: tJrxibgAVhb7YKo283QfW1g0L4cyEVKg
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=6953e57a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=j9TMeHSrmu6V3ep3hRYA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: tJrxibgAVhb7YKo283QfW1g0L4cyEVKg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300133

On 12/19/25 3:46 PM, Pankaj Patil wrote:
> Add initial device tree support for the Glymur Compute Reference
> Device(CRD) board, with this board dts glymur crd can boot to shell
> with rootfs on nvme and uart21 as serial console
> 
> Features enabled are:
> - Regulators 0 - 4
> - Power supplies and sideband signals (PERST, WAKE, CLKREQ) for
>   PCIe3b/4/5/6 controllers and PHYs
> - QUPv3 instances
> - PMIC thermal-zone updates

[...]

> +	vreg_nvme_sec: regulator-nvme-sec {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_NVME_SEC_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmh0110_f_e1_gpios 14 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&nvme_sec_reg_en>;
> +		pinctrl-names = "default";

This ordering is correct

> +	};
> +
> +	vreg_wlan: regulator-wlan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_WLAN_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 94 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_reg_en>;

This is not

> +	};
> +
> +	vreg_wwan: regulator-wwan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_WWAN_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 246 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wwan_reg_en>;

And neither is this

Please unify them

> +	};
> +
> +	vph_pwr: regulator-vph-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +	};
> +
> +	thermal-zones {
> +		pmh0101-thermal {

Not a huge fan of this living here..

[...]

> +&pmh0101_gpios {
> +	key_vol_up_default: key-vol-up-default-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		output-disable;
> +		bias-pull-up;
> +	};
> +};
> +
> +&pon_resin {
> +	linux,code = <KEY_VOLUMEDOWN>;
> +	status = "okay";
> +};
> +
> +&apps_rsc {

Please sort the label references alphabetically

Otherwise LGTM

Konrad

