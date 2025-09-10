Return-Path: <devicetree+bounces-215372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E530B514A2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 551354E298D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABE33148D1;
	Wed, 10 Sep 2025 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PIWW5xCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFD4262D14
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757501843; cv=none; b=AQIszOaRu0m2k/RXovDUX/ni6xJ4hxYagsemnGBkWM1NaVFpUqGYxt+5sSabFagK8+HijLJO5M3Gs6G4ulGGsTIMIy67TWn5pReDT8cbBjjaoDO6ubmPrbCggwzH86oQtCiO8bDwGWMYr+x2+W0aGn5AOV8VNq+X6ezseST3jyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757501843; c=relaxed/simple;
	bh=GHR8dlv+537EvAqrl5fzNrzJ0kc33AB/+gWTIB98rnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VZWQNEMwXUqnhR+b16MA/3fgoiiArzuoQjKth0TU0ba6yWL7e6BGq8GzTMRoH25jknobncVKh9/SSAfjH7wkrdpBoXWSGrcOmBysGf1FduKgbnK01hRB0xdXJxbvNlOa8CIhVXY9VzwNWUViSDpAU8CPb7I/N+M+n+0DhGUzVXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PIWW5xCj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAF5oL021031
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:57:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VLrbVYuWBuZbmXNhwxf9odJPcM2JY5vCi7vwVIAzE/0=; b=PIWW5xCjS09BawAn
	v7bQYHBsVubmkWnyc84WZxu7VifUGnD0/QMeawM050oawTVJwOTKvsZiJwefkq92
	+OSeIbJwO8gEzmKKANIJJX3LGCOD6M16EUaIcPaPDxRxZFYpFvFrPRDsiS7Oiqe8
	GmaLL+eQLBUVzeWmVERV3qauzVNOFE46FsDIsre4fYgDSgl+Uw64+BlPLYdaDVfp
	qIKREhSyHlMjAbrPZt7VNDqIV0046Q/so+0YInC+UE/3Vq8tQaFTG2oJPS/db6IT
	99RRVZ0TzaTfRAGkCop6P7j2HD4efT580UV0n0X3MV9b9EDjZ8NCXg5fdcfpRdMw
	neJoiw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8abfsk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:57:20 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77267239591so13708528b3a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 03:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757501840; x=1758106640;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VLrbVYuWBuZbmXNhwxf9odJPcM2JY5vCi7vwVIAzE/0=;
        b=Ry2MLIVyYQBo1A3ChJ5MFrHd2Dd8sd/xVQIIJXf/QP/CYl7NRNAYKoNSLNR9Vx1KSt
         AKA8GpsYat+WuSPYQfGzcb3Wx84kyIJVMKDqRSERdZElcmvVPcg5elOZ2thsQ/R58hvd
         cMdUoGm4Vw4n6o7GPE7WXgDpxQVIIL4jXpi9iQEPX1UvTBbpONRT22Jh+j6ryYjjSHcI
         xlYNz1I4TbsSR+O9Y3wd1AJo+dGQgLgiRXQ+Os1m3cfPe4Ale22faea6D4hk8WmDpcUr
         ahxsVppqqHZtdxEy0+kPqTZ20bIHG24DL+49yinRnYnuIrgBemuV5wMViHKDVI6hslYn
         K0Pg==
X-Forwarded-Encrypted: i=1; AJvYcCWmIlrs0oQaGl9bq0o4rVoV28IYxu4f/Hlv7+dY1eckglrohcXi3AZJVxfeIzLFZ7zXLXAG23vX5R0c@vger.kernel.org
X-Gm-Message-State: AOJu0YxlbFWFTJih6pf9GXSKQ+eubXfq0WPrXJFw9CcuywD3Uis+C8gt
	RsLVdyQdhplKO0ZFepTwyJRSejO9qfDJy+wkD3QabKMNMcTaSlYiUrtrQKg0pvJftnvkaDYfZA3
	stkLzZIBpUl5rZ4LVLszeezhwkRirs+pPvDik73J5rQUqOkz/f7WvHHs2BeegKx1l5zATlgSQ
X-Gm-Gg: ASbGncveqJdY7jJUSinoFoCUW9TOlgzie0g1GDa6Rye20rowSQ1nzzyw8242/+MgDKe
	kuJJVAfJaNneAil+NuVJnCfHKahCUQ1HnHJdpNL3BtxZLmt3Cyi0Q8iOnqbvZo5FHFRbCCfVMeP
	UZPWVZFY4QvV3P0gH26IGZZOwgI828vrY44ZGoUbzFcB9zXoyi+feq5bFIP5cRhnOigg25idYqq
	p4cwg3anHHsk5N5+Sb4sNaCDwiPeNE/5ZG+O3psX/DfSUEdueT4hzkF84nRuL07aewMgscraBKV
	KcTaKv+XbEkRplag4AZZk1vlgK46DUaJvH+qX/PXVXCAbgrOzb6WzpIa8iiXQsatFu4hKImoxYI
	=
X-Received: by 2002:a05:6a00:92a5:b0:772:59d2:3a49 with SMTP id d2e1a72fcca58-7742dda745amr16974628b3a.13.1757501839774;
        Wed, 10 Sep 2025 03:57:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd6cAY5KUWWKRCtZ5BO2LMkzPi8rG6m9xuEQDohogxbjye/JxfepADt3ID1u913pa8j6uKwQ==
X-Received: by 2002:a05:6a00:92a5:b0:772:59d2:3a49 with SMTP id d2e1a72fcca58-7742dda745amr16974587b3a.13.1757501839259;
        Wed, 10 Sep 2025 03:57:19 -0700 (PDT)
Received: from [10.217.219.207] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-775f4976bcasm2333665b3a.100.2025.09.10.03.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 03:57:18 -0700 (PDT)
Message-ID: <d7937258-9cf9-4887-a117-58ac3d4473de@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:27:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Qualcomm CCI I2C clock requirements enforcement
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c15990 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3WXPGMdjBYCeSjfzpvMA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: TojT_LX6HeuZ9jTOb-_1zwj1ei5KyZoZ
X-Proofpoint-ORIG-GUID: TojT_LX6HeuZ9jTOb-_1zwj1ei5KyZoZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX+MS6rM1GwNdD
 NNodJ3WRxtZyAXMZGJW+oMAD3u7E+Bt1hoLfvpX2UmHZX2LIp8nF/9gZaG3IJLM3uNHpHrTKVgK
 jP6dq/rnUWblcRpe9sYOLpSRxZbed6UjivK6Ab12U/k1LVcyPT5NGLPc88Y32WmvsXoMdinfQ43
 ZXOtuCdJF4uMw9AL9HtqGVWsc7T91ggcQvmksmQ3D2YWbs6k8D08NDsoDa9oGh8nuQUopoLHKEl
 ZCLheEvqRKDf+Qnq0jIKNQ0OE1SrnnNNphGo6xSqrPM3RhLwx+pZlv5KV/u/czdh+ZXKNmAwNMj
 CSZhIwXcr7r1cFMWqly1YS7DLzI55pWX1eaGvSA2DnSLd4xf8gvxKRJgsvRTtvx8o+9zEHygn73
 rLd6DPuY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039



On 9/4/2025 8:01 PM, Konrad Dybcio wrote:
> The hardware requires the faster of the two (37.5 MHz as opposed to
> 19.2 MHz) clock rates to hit the required timings for I2C Fast+ Mode.
Should mention "source clock rates" to not confuse with derived 
frequency/timings for Fast+ mode.>
> Additionally, the magic presets for electrical tuning registers on SoCs
> supporting that faster mode ("cci_v2" in the driver) are calculated
are/is calculated> based on that faster frequency.
> 
> Moreover, while its unlikely that it would ever exhibit as an issue
> given CCI is a slow & tiny core, we do need to express a minimal voltage
> level for any given clock rate, which is where the (optional -
> backwards compat) OPP table addition comes in.
> 
> This series helps ensure all these requirements are met.
> 
> Patch 1 is a related but independent fix, can be picked right away
> Patch 5 can be functionally merged as-is, but depends on patch 2 for
> bindings
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (5):
>        arm64: dts: qcom: sc8280xp: Fix CCI3 interrupt
>        dt-bindings: i2c: qcom-cci: Allow operating-points-v2
>        i2c: qcom-cci: Drop single-line wrappers
>        i2c: qcom-cci: Add OPP table support and enforce FAST_PLUS requirements
>        arm64: dts: qcom: sc8280xp: Add OPP table for CCI hosts
> 
>   .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |  2 +
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 16 +++++++-
>   drivers/i2c/busses/i2c-qcom-cci.c                  | 45 +++++++++++++++++-----
>   3 files changed, 52 insertions(+), 11 deletions(-)
> ---
> base-commit: 4ac65880ebca1b68495bd8704263b26c050ac010
> change-id: 20250904-topic-cci_updates-800fdc9bada4
> 
> Best regards,


