Return-Path: <devicetree+bounces-163332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB9A7C68F
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 01:08:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE868189B616
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 23:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1099A21CFEA;
	Fri,  4 Apr 2025 23:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kMiuflqq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32619CC05
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 23:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743808100; cv=none; b=oHjleOlpnqA+9Fkz+vJByw9gVtjsyvxCuEJt3pWJVkKHurn0Uo/hOCxxP5SLFePSz0UTD+pTWq5xdO1W/HRlSPjprbsNDbQ1Ep9843HEF7ImF6+G3Ou3ZxlpNSdBNVjyi9F/ogI41KK1O4dtC8oJEXZgtVR68KM+IRdZFaTFsng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743808100; c=relaxed/simple;
	bh=PqFvShj92qaGVbauaVytIyDCuf+VfPjCh/kPHIG9tzA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IdtBT+L8uMRWpmvJXyvG0qyqGNQK9hnYa9Os0de4qc1R85qPSmAIi5u13AWvX2eZREgg0MW8xcKnYNsTZyhMRoPD12bHIR28OG9TG4rHQfSXofoQfiEoqsq5EHQFSKxuP5gLcTmJLeghmlnnJfBLR864mJE4k/6LZ2H3AR1dugM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kMiuflqq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 534JF2Lq002430
	for <devicetree@vger.kernel.org>; Fri, 4 Apr 2025 23:08:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TgbvSkQhhfBvSUS6o+osFT06zTOepRW6pa2h+jBNXPo=; b=kMiuflqqt7A8IsiB
	aQNgwSgDX/4rN8abjFQgUdWal5YPYp9YhyEbDGMdACodXc8KSp66KgJ2v3vkI8wh
	44/2M+L+Il7esjfGu3gTXlxbiiDOOT2YeNmNKdTGHlrOYnIisueFhUYzhjDvz1/a
	MuGdnZQnlUuw4xjqDFzeFQDj9P1cWQeuq/XqGVunCcOrcO+OKtnY9nsCB4iU9saf
	j3NrOAfu+ThiWgg+X+kIss+owH+1bleKhBp3P6dd9TtvTocGAiLJ7Opce+V0SkDW
	XB0QyKqGyO1DBu244JQZU0LVybKIfYiuuEloZFhMS6Kerg0kjVSGiD4i3Etxh/9S
	fH9vhw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45t2d8b2xb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 23:08:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5530c2e01so19517385a.0
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 16:08:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743808096; x=1744412896;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TgbvSkQhhfBvSUS6o+osFT06zTOepRW6pa2h+jBNXPo=;
        b=aPqYKhQTD0taYnQ/kAK5Gz70+o7t/Os6VR84VCbvq1PQR1kDF87kW36Lf5CDw80Hcv
         jzO0BjjLGj5qHhTHZiBSPZRcJvVN15Mrw9DMTuDHxjpw9sIQoXxHge0a2l50oQLStuvx
         3BGnuQsW17xHTfTIcusIdU3JoQ9CQkh2qnzQRuC59rknUaNVLagCBu1fTsA47sJAmrmf
         K59Dd0zO5IZaMQcvUmH57E7WjnrdMsHr96Ze4j1670RewjKX+AVWVlUlK5+mfPWEAdRO
         G4faR3huDmok3MQDuXSGM2TLnCPWnUOg07my/Br3utP1GQaLCJqiXLCO46R9H+upHjdU
         8RVg==
X-Forwarded-Encrypted: i=1; AJvYcCVSbt7JuvckDyxWvIazgXMpdca8UJl2yxmsvkpMkw0lzngfxp+NVkQj2et4eOLoRu3anywm6O4E40gp@vger.kernel.org
X-Gm-Message-State: AOJu0YwDQSSiAJTan0y715JVZxdL2WoZW7MNS/ZAFFUAf36mB16vpDsh
	syMitnjdW0d9D+XuaIUNLkVxG26+FgaYhA8HGLqOlVYP6A25M91hFqQ0WD1oufmsHwnQJnxp1xN
	yW4s7ExWygPW8XWXY5eX1qdWwAPqNGIjTjeNzfc460vvaVEQdrAQmPOLqK+7w
X-Gm-Gg: ASbGncu6cIp8sv493WkHJiaIzXU25HxLTPunL0DqwATkkyBNuv628Ky/9p+IZjtMnBr
	MboStpaecDiw5P5jLh/KpPOGDm6xKf+qR13bQEc5kL8YmkzogMV6vTTODsA3nRq7Hi3v0w93FcC
	+iJAeLJNKIIuUPgTikj0jcbaAzz+wxXG6ExgKJR74m4DFx3IuwslOMtIxLmM85Cy+BrFhKMy4UY
	27LKpawvcpGU5lR2miu5pYLnQ3SKd6IS16gmAb/7qEZcWu+B+9p3WDVwMcwDaNGFDfu5b6S5art
	UiognMhL2QTs3glcwj4DOnpKEyYRUEEGmGz/3gaIcCIq/36/6C7vv8YUDQBLu0iACzcKgQ==
X-Received: by 2002:a05:620a:40cc:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7c774d13d6cmr255812785a.3.1743808095958;
        Fri, 04 Apr 2025 16:08:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuEN/s9si0RjxkK2e8Gy/4GKq/tlSjcGV3mTg6/gNS4N5w4gPzjun5kYd/0gJiCctmo6dNvg==
X-Received: by 2002:a05:620a:40cc:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7c774d13d6cmr255811485a.3.1743808095663;
        Fri, 04 Apr 2025 16:08:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe5d442sm324211966b.26.2025.04.04.16.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 16:08:15 -0700 (PDT)
Message-ID: <b1a3643c-4007-4c32-b2b3-f3a1fe78773b@oss.qualcomm.com>
Date: Sat, 5 Apr 2025 01:08:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e001de-devkit: Describe USB
 retimers resets pin configs
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250318-x1e001de-devkit-dts-fix-retimer-gpios-v1-0-1c092f630b0c@linaro.org>
 <20250318-x1e001de-devkit-dts-fix-retimer-gpios-v1-1-1c092f630b0c@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318-x1e001de-devkit-dts-fix-retimer-gpios-v1-1-1c092f630b0c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PqmTbxM3 c=1 sm=1 tr=0 ts=67f06661 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=KgBs3jkt_KH1y_X1VH4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: WN0nppgr7oYnb4nBiFyPihMSc6M_ISIR
X-Proofpoint-GUID: WN0nppgr7oYnb4nBiFyPihMSc6M_ISIR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_10,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=879 mlxscore=0
 clxscore=1015 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504040160

On 3/18/25 4:50 PM, Abel Vesa wrote:
> Currently, on the X Elite Devkit, the pin configuration of the reset
> gpios for all three PS8830 USB retimers are left configured by the
> bootloader.
> 
> Fix that by describing their pin configuration.
> 
> Fixes: 019e1ee32fec ("arm64: dts: qcom: x1e001de-devkit: Enable external DP support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

