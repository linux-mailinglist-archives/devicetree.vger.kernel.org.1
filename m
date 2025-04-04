Return-Path: <devicetree+bounces-163327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CDCA7C666
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 00:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88B063B826C
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 22:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E65214230;
	Fri,  4 Apr 2025 22:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jOhfj/0z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590E91A0711
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 22:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743806349; cv=none; b=QSNIeORB9VaBY2EM0zroR103jg3yMeGoxBjXnWBeTGhnrwKcdHxBEqRG0HNp8qyvRNIcvcxlctIYMWuqH+0NgoakR8wIJ6Av0+TdI8nOHXZ9VILWTI4zuW6k3clGyqW+68CLhUCThAL7bsTOWL76m6IA5MrLvr0ourzDb+fCF1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743806349; c=relaxed/simple;
	bh=T/MCyJIHRMBfFYIprBnwBWLv+76jEvvXlt9IoNC6Q98=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vCVHJlC9S/C7cNUGamuWV9r9mRbgfTVu+KqkufvlQamZcJ27FOjInNS9xCKMoVw/YSk3cLzDkd7WgdTjFx6/etyECKoU8xR8dfWSXm9WCDnfW5zaybq05fHT93hPsd3/rgLW6UXMKvxF4ZIe15xWcST0cknFeIjLYVWLGCQj7ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jOhfj/0z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 534JEwSq000502
	for <devicetree@vger.kernel.org>; Fri, 4 Apr 2025 22:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oAQPPAwHz4E9W2g7oqIWAj/qTk23uygOmdFEWxol8hk=; b=jOhfj/0zRCcAbJQe
	qFeozMfMur4+mg0GLAWSsq/qWByJ10Zn03FKYICtyOqJ7DehQikQ8TOuqhBixExJ
	qxm3qFcRlkD6ry99hrq+4CiY7ydxVWN0gLiYpvPZ6gAg6+RaUIZeEmwJJn5vVdF7
	hkQxR9J3+JLhWhbXzcNHegkIDOyB6f54PSiOLrd5vapiiw/3oB4bqvAdqPx9l4hg
	W8cSl2mPs8VwYSFCkGHNuHXR6CSyaLtP2mi5JfyjxqFnbrEuuzIQhz16bbSkhJOE
	vXB8vcrhSCLAhAj6dnExSJHsKIyqWH5HOqnsJYmEVZZg4KFTX60kxRZ/7ZQBKchK
	BTdAsw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45t2d8u25b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 22:39:06 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4767b8e990fso790261cf.0
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 15:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743806345; x=1744411145;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oAQPPAwHz4E9W2g7oqIWAj/qTk23uygOmdFEWxol8hk=;
        b=JUNExk2E1d9IiYmFKAheEpBze9lwCM5krqDM7T/xDY9rcYT8T9WGL9g93udKm8XE2/
         5/3pwr4NtUY8FF4GUfmx3N22NtvPEvg54UiX1rGk4OZjZFYVUipFIOLk5kVJzKeRFYTk
         zYFxugKnOGOL4jWUQmRGnDX0xBmoMgO5aOy7Xn4F5rUWIb/xuZzPc6ZNxExpxQGhjyzc
         rrtT9wVREx6AjNQCSo6pAz0w3F5xw+w9LHUHPIy/HAlpv4xbojsQ5sKqz4mQEMNHGE8v
         VorRJxT1eo9JW0m6n+YzLYhw0uzhy9X1zyfQ45X3ZNHF+uHqozhnGfQxxpZbgk8py9dx
         9IGg==
X-Forwarded-Encrypted: i=1; AJvYcCVw1recCz21/Vx1GGKxP/2HLJQGLpqFV0rjAMNQtuCRK7Ld8HsSVE+3i0Y7IxdJK38Xamz7LbPHMO9a@vger.kernel.org
X-Gm-Message-State: AOJu0YyGaeZIsEnkxVQ0iW5b/Zi1v4Wt0WiYrhjWIPJZ3k9kRvk+ooCi
	uSBVGNaf9JcvdYIeoDP9CXBpUGrf2FmtQ9nVtX5L0Zja6POPcKGxQsuHLPSC2haVE2XGVyIy5uu
	Rzeu7rX5DfWHrc9G35ghb3aJJFlqMLIiHGzsaT2oJuuqUe7YHLNcWqtoFB65B
X-Gm-Gg: ASbGncvWujfiGHiFSCSgZPkLwQReBVq9JH/X/E2x87FfS5XlcVwU8Slvy+uYKwhYDwD
	WWnnGxy/nQE0kCE8dZzQvrfIfcVYWGft+/n3rd90DHl799YBLxbFIcEK5dIxkD3KvG746z1z8p6
	A0xMjKouWhyFsDBM9yf2jkSlLqikTO7cH4DXxGqvB0HH6QWvJliazS6y46g+TzGTzGxpA4S11xT
	eGVYjVw3y/HSlfrRkiVJlg5R1mroE2dwoLjUaXBecyuOPCxOg1BcgevLsrxtLqssRq8AQuLgYLh
	hLiK5bMft0d0mCkk2YRHfd05+rc+D56BBMxk7TwLOGe6DXMoDfCMd86TiNQw5LOyUb7bjw==
X-Received: by 2002:a05:622a:1898:b0:475:876:ac3d with SMTP id d75a77b69052e-479249e2cd1mr26006541cf.13.1743806345087;
        Fri, 04 Apr 2025 15:39:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+NzcEKIjX/Q355mfL2t7DYQXJRcMD6VxP8/NFF8Z5Gmr/gnpuijoylXIpLqB0qI6DVbx04w==
X-Received: by 2002:a05:622a:1898:b0:475:876:ac3d with SMTP id d75a77b69052e-479249e2cd1mr26006291cf.13.1743806344699;
        Fri, 04 Apr 2025 15:39:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087f0a9c9sm3106401a12.41.2025.04.04.15.39.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 15:39:04 -0700 (PDT)
Message-ID: <79c9ab2d-f970-4dfb-9170-ac3dd8b1c772@oss.qualcomm.com>
Date: Sat, 5 Apr 2025 00:39:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
References: <20250404115539.1151201-1-quic_amakhija@quicinc.com>
 <20250404115539.1151201-8-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250404115539.1151201-8-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KcPSsRYD c=1 sm=1 tr=0 ts=67f05f8a cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=GLHRRWOWZVtnXAxWSSAA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: UJwtWOYatEhePlWa0ty532_oVFuGo6ys
X-Proofpoint-ORIG-GUID: UJwtWOYatEhePlWa0ty532_oVFuGo6ys
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_10,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 mlxlogscore=688 mlxscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504040156

On 4/4/25 1:55 PM, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device nodes.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---

[...]

> +
> +	io_expander: gpio@74 {
> +		compatible = "ti,tca9539";
> +		reg = <0x74>;
> +		interrupts-extended = <&tlmm 98 IRQ_TYPE_EDGE_BOTH>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +
> +		gpio2-hog {
> +			gpio-hog;
> +			gpios = <2 GPIO_ACTIVE_HIGH>;
> +			input;
> +			line-name = "dsi0_int_pin";

Are you sure hogging is what you need here? Aren't those GPIOs only
required to be in a certain state when the connected devices are active?

Konrad

