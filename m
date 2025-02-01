Return-Path: <devicetree+bounces-142261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E488A24A5D
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 17:27:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7C1B3A4857
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557CF1C5D66;
	Sat,  1 Feb 2025 16:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VhQ1AMM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63131C5D5E
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 16:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738427224; cv=none; b=UHltHg8ivnXWgLsfpb3mD2eYUROgOmANnIxoFEwC5f0Jr0CNIpmyZBjDC0KOi8yshEwHlUgjZgAXYJu9iyhbRzGQ3A1Qn31ine8teomZlTMzvAMY7HF9mrTBazyzGb7YUzKPgV707wV/iwZ0fjRCrzxhKaQsTFEaLqSk65GuSqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738427224; c=relaxed/simple;
	bh=Yxhl8LZFj20FOUDFn3DFSQ8NRNktMewV2d+gewSUVqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OBm+Xaj6qO7Xb4e4ZW3b4Q0pHvMp4vPbvl+rtBUPy2nk6OfnslUf2WswInZ3PpVrCCv6GIhbx7I8Y4/X/PZnuadDxK1ZQSjkiM7m7XzkiUD1iiyrcNgwmB6uzS+r4WVJVA0QT75ypimNKha12CyVJ2/nkzRzJZQIRcg+lLe8sXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VhQ1AMM4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 511EtNpq004196
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 16:27:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EKll0OTr+FAupnplWAio3axMf3LjnLIqeSqJawk3ocA=; b=VhQ1AMM467Pl8oY5
	p3ZdQQMO7ryoJNf9YdmC+UGRXztIfWG93qejsXbeyw3Lt4ceUfE+KTVwgD/HG0HM
	8ZReaItoewDJtWMWUNtqjtJyZ+Tv09cbiY8f2N8KTTtuoLj2j1DpQG1aRNbi0JVe
	bOjHMk7uGp4wIGHEaXweZklqbNhULpMNPhTzgxj+FIdvnIT7C7axtvoptPUJpxBX
	sRALm57UoGkoD/qgbauZuce10ofcC+ZpTJeE38J8AiuGmvqmRGMDrsbGGgtCLeJH
	fBF3z4H0Iq6tm07wgMxOnp6OnznW1Ss14HJ/whocFpPxMT5iaxGYuB0iH1uUAngr
	fFhWDg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd5y152c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 16:27:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d88fe63f21so6140846d6.3
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 08:27:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738427220; x=1739032020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EKll0OTr+FAupnplWAio3axMf3LjnLIqeSqJawk3ocA=;
        b=Z06OGR6NqWk5Gd9mOe2vaLWRHQS3MDLi6AP2svl0MdhnUIeDqRQZc4b0Nu8kWxf0qr
         HeBARvyVkV0bHb9ZuKhoPMY/sVxeOZNf63zI29HTQJHuZAP32yzvKOjTU6zZyx4fN6rQ
         k2RW+nlQgRCR1Q5g7cgYnVrIsOaPr26EHOnNdxwPtk8Ru/0puvivOwvHauVO/l9z4wMS
         7yaKMZY2k8+Mb0FlfhDF8NYTdlX0DdnE5gU+t3w4t0C9b6G6g/EhHvPqObN1J5NlB0GX
         GBuyrlcjE/buSewXRDzUG0r6+r3gLi9VeENcniTWMJ5vbEzg8CU/ZTTB4MxnofAK08f0
         gy4g==
X-Forwarded-Encrypted: i=1; AJvYcCWsHRptSTrxaUzgSe+CPhoipavmfGTRxLDRGdAargkpIrVXQnzrDAmv1KBRIldSRtwOuR2+Kx4VDxqs@vger.kernel.org
X-Gm-Message-State: AOJu0YzxJPmUQbPRM4v0mJVJd9/tk5hjns3w24PH0m3zgCoiBos72FcC
	gja/hqw6g5pyXj/neFmeB/Sv560rOC8UbzIXcnp7wyUHP1NleZSF/xDCvcmQPSkwL8VWMUvYdVQ
	JOevRtx7H3NeiB69Gt24U3l72xJjMlI0arh+qSeavpYc2hs+WwtnzdMELRalJ
X-Gm-Gg: ASbGncuQA3U2d4lQ345yjl0cbY++JJbYPBI1t/gi5Qp4TX+lqzhYYNpmQa4JNIk8NLQ
	cNSLgg5uOgWRHb02Tv0L1e4n36kyMIkcxUNJ2QxbSdhkiBC3Rttj5cP7MaSbX9TJHAscYh8uuJy
	EFGvyBdWfUA0d33T5FBU0ny+ai+i7K7JiwYIHTF03TTMujAuk7IwSxZ0O3EGcVx3NVzw7vGh0Bk
	xr/bO0CpzPK2ANxC2a2kIW2XzMVYdrPHErUtLJbmknSs2EoP+REep35+b4cHl1Ep9URAajhYiYv
	FMRu1+J8OcvRwdgtDsHkeoJwujxyTCTGyWBW3DsNYVw+gJL6etNtWkYCUJY=
X-Received: by 2002:a05:620a:29d2:b0:7b8:5629:5d58 with SMTP id af79cd13be357-7bffcce5683mr798965185a.4.1738427220575;
        Sat, 01 Feb 2025 08:27:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGW5dCt57KxB3QTUkH/DtBPukVEDHPBWvCI3vtS5HPPpewERxqmhT5SNUKe1IVKv5OIuqLK2g==
X-Received: by 2002:a05:620a:29d2:b0:7b8:5629:5d58 with SMTP id af79cd13be357-7bffcce5683mr798963885a.4.1738427220201;
        Sat, 01 Feb 2025 08:27:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc7240487csm4570605a12.34.2025.02.01.08.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 08:26:59 -0800 (PST)
Message-ID: <80ca597a-3d85-40d0-a04d-4bb8ca91b687@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 17:26:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-vision-mezzanine: Add vision mezzanine
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20250121125010.1853269-1-quic_vikramsa@quicinc.com>
 <20250121125010.1853269-3-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250121125010.1853269-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PeXrf4EzCQuq7LtTWfuoTzM_jVLbqvm1
X-Proofpoint-ORIG-GUID: PeXrf4EzCQuq7LtTWfuoTzM_jVLbqvm1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_07,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=744 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502010142

On 21.01.2025 1:50 PM, Vikram Sharma wrote:
> The Vision Mezzanine for the RB3 ships with an imx577 camera sensor.
> Enable the IMX577 on the vision mezzanine.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -v -V '"imx577 '17-001a'":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy3":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy3":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> 
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video0
> 
> Signed-off-by: Hariram Purushothaman <quic_hariramp@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---


> +&tlmm {
> +	cam2_default: cam2-default-state {
> +		mclk-pins {
> +			pins = "gpio67";
> +			function = "cam_mclk";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};

If you don't plan on adding more pins there, drop mclk-pins{} and put the
properties directly under the cam2-default-state node, similarly below

with that


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> +	};
> +
> +	cam2_suspend: cam2-suspend-state {
> +		mclk-pins {
> +			pins = "gpio67";
> +			function = "cam_mclk";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +	};
> +};

