Return-Path: <devicetree+bounces-133206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 247239F9BC6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 22:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B1C87A49E1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 21:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BD34225A5C;
	Fri, 20 Dec 2024 21:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lhJ+sqyA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1561225A55
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 21:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734729244; cv=none; b=KhmnXTsNrM9LqlxhHSiBR4BZKvGDzRGGft4PUVrGLW5k2Ig3/7skw4njmgukEwp8OLm/WmSru1G2YsxeFUNrmf4KBR0m0xWAXED47yTcsPy/XjjbtP7W4NwoK1ABhC5lZBi7otPQbI/rPGvD7pI2UhYHfmUP4wHWWUtgUBsT+gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734729244; c=relaxed/simple;
	bh=bTKNbmI8l+7/+sS+R/FrtdqTQ3QdzzjPdnrRPb/TWfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A98eHIA5fGq76p1oeTCujr1GjuNwgu13n3U9Z9+2PChJ4e3SJGV2LnpRrIw6ojJkx8FOpItTW+4xf7CTulrOEwogKcfSJISUafOd7rbZjdckciH5NWPAfLS2fHEPBmN9ax/yDbnlb3SqoLJx/HGd6XfVBjyxMoTlsVgaNO9P6ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lhJ+sqyA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKCicIV012737
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 21:14:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ULFvHCKeDDUb2+fSzMfuP2TGS+5S2gvdH6j+crREbx4=; b=lhJ+sqyAExgv7yFx
	lv+0LLZdwS+Pt0KxKiKodKrCqcPGx+a6afsv7CQN9yoYx5yO/SXzvkWQyowVy2fj
	Pyk69st0PBLD4YLf38C4WIIaOuRh8gd92MOm7ZJgrYNrU6qVcte6bGQ2GrRzbsfe
	3nHxLhhvJM51utZlr3LajdgsZ3cP5w8MA5pqGZGpGcKzf3Gnfwv3wkcT315z3UNe
	dxSrKBqpX6TCehzRLeX9wazUR+4Lr+Eg/tc0cSlmlokzHTB7mLrUqIqSpxh9j0M5
	eUIbIJwTrOFI0Nhk4bV2tbBcrOLs4Fsu9jN3T9L/K1Wt2ud2Hg/eeg5u/yWXegOv
	XUUkJg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n8uvh80s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 21:14:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6fec2de27so55818185a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:14:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734729240; x=1735334040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ULFvHCKeDDUb2+fSzMfuP2TGS+5S2gvdH6j+crREbx4=;
        b=noUvczUzWLM2vrV0nZgNzfAC56XftH/IERUgMEDMaosZ96vmrdcFwI/GqRvSqZhJ6V
         59imFsCm9GUd5CShNYaA0I4+Yab5zYNJbZDNknsAPJlsDvM7ecloDNisFY83x0qmmmyV
         f1gux4bCbhg99kjYDqG8ZwwpxZtBklPqgrIQ7v/vz0gc5RtH3K1atxqay9WtO2h+hEgt
         lOf8z9zAEOwNuqxP4y0mxtW4BWyeUxU2vipNM/GKC/r4xpaGbj9XfJzKIhoHZDv9479r
         8xT7PE6HlHNAgELheA/lqUvK6ppxM9pWLitNOB/05QiY9ZjUVNeI8wJkyUJvp4wkyjNG
         8qmg==
X-Forwarded-Encrypted: i=1; AJvYcCXY5BZ3YIVDhconkZrM5dT3kXuCAMjs6Sdkk7RQTvppnsA3AqG7Q99ViMAfy645BIJq8gxVF4dUreYH@vger.kernel.org
X-Gm-Message-State: AOJu0YxZY/EFC6Cnkt5PA3UpUjbtqjGzcAVHIKLUrgB8HeQEyPv7ophX
	zKtDVPC2+H/j/ezlY+7QYbaJY5vzk7AxtAZV8mJbfKtot3/GzmBg1bXKXzLasuDigCOOnbI+wG3
	X+YAkiQ5I2f2U9lcafHx1UU+7GTQ0tXOz/LyhEy1AO0qSyKoEDnWxg6oJdAAQ
X-Gm-Gg: ASbGnctgAUviHTKohbQZylcB4I0XqEx6ejf44Z7N7n36SOb2b8UljtuJL4ptkePasiU
	ozx/zfI9SvRtQB4NeDLH7lmDfZcuBAD9/YX6v3Ks2sasPfDiDwsGNWkYFSN45VS2uDIu/6YyK+R
	VpDDyL/eI1pffCl2kvq5IBK/h1lW+eE4fNRFy9N/V46HtspJcvJrD+n1kXZ9J90aWOCyqQAQMIO
	Md0Pkw+SpdghN/Q6mGcNsvrwWHleLQFz6hZwbyZCFFtcqdAnWjky5DospxMTV3vq0omBOM1xRLz
	vpwv62KEToSTk1X94XtLgqcF54h6alsj/pw=
X-Received: by 2002:a05:622a:607:b0:467:58ae:b8dd with SMTP id d75a77b69052e-46a4a8cddb2mr29621761cf.4.1734729240292;
        Fri, 20 Dec 2024 13:14:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG52+oSHDe//Ui0Zbu1Y+oxEvjl/VIqO9wOSXLng49yM4ccm1QJQPqhBC8PCJWWjzKK/k3+2w==
X-Received: by 2002:a05:622a:607:b0:467:58ae:b8dd with SMTP id d75a77b69052e-46a4a8cddb2mr29621591cf.4.1734729239954;
        Fri, 20 Dec 2024 13:13:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830abfsm215773766b.20.2024.12.20.13.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 13:13:59 -0800 (PST)
Message-ID: <d46f0ad4-4319-496f-9093-54bb5a000875@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 22:13:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E
 Go (sc8280xp)
To: Pengyu Luo <mitltlatltl@gmail.com>, andersson@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org
Cc: chenxuecong2009@outlook.com, devicetree@vger.kernel.org, gty0622@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241220160530.444864-1-mitltlatltl@gmail.com>
 <20241220160530.444864-4-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220160530.444864-4-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: OMriQY1dx4bq5nKoeMmOqgOlaXZakH89
X-Proofpoint-ORIG-GUID: OMriQY1dx4bq5nKoeMmOqgOlaXZakH89
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 mlxlogscore=844 malwarescore=0 mlxscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200170

On 20.12.2024 5:05 PM, Pengyu Luo wrote:
> Add an initial devicetree for the Huawei Matebook E Go, which is based on
> sc8280xp.
> 
> There are 3 variants, Huawei released first 2 at the same time.
> Huawei Matebook E Go LTE(sc8180x), codename should be gaokun2.
> Huawei Matebook E Go(sc8280xp@3.0GHz), codename is gaokun3.
> Huawei Matebook E Go 2023(sc8280xp@2.69GHz).
> 
> We add support for the latter two variants.
> 
> This work started by Tianyu Gao and Xuecong Chen, they made the
> devicetree based on existing work(i.e. the Lenovo X13s and the
> Qualcomm CRD), it can boot with framebuffer.
> 

So this looks good now, but

[...]

> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		framebuffer0: framebuffer@c6200000 {
> +			compatible = "simple-framebuffer";
> +			reg = <0x0 0xc6200000 0x0 0x02400000>;
> +			width = <1600>;
> +			height = <2560>;
> +			stride = <(1600 * 4)>;
> +			format = "a8r8g8b8";
> +		};
> +	};

I still don't understand why efifb doesn't work for you.

Could you share your .config file?

Konrad

