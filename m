Return-Path: <devicetree+bounces-232038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 601E2C13CD1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 135484F9863
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3CC130275F;
	Tue, 28 Oct 2025 09:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CYSLdPWG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2997F3019C3
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643529; cv=none; b=AvPZ8O/cOQ/Am3EWRZSOsltwRvCAisKYP5g7V+crKzDa/rLyb4Ajdb8WV8/gJRAtPIcSujvzJuMxi4AdW1dBsJiDmCJokV+5XphJskf9yD4JxrBzwVLLCSxSNST74bxQXRRszzDKrnVb+koktJumLXIKt+8wH3lgiWV5qqpsVz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643529; c=relaxed/simple;
	bh=GWMNhDtLv/kDpAWcmDnXHJG+taWjdcCA7zBj1ocUvUI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n7I3Em1swiCMFxrCxxC0Q0CRI2rcAxc0+slNgIKzZ0B4cO5QMYtY58pzY3WG6KFlq7pYJBIL86sdeZdvhg4afwUb8afpQsC2HbFF7miihqFkvIgig3RrnIvd9CgtprsuACrTA45C6YUWSzBGKOBlpPbnIENuNY0ycWldgxRohX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CYSLdPWG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S3gYe23165297
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:25:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8SK5QLPQR+xhdHyxzgW1kiyNV5P22KYcA2/y/XH+b0s=; b=CYSLdPWGLRdpGvdt
	Fh/1/rEoA9+mGwiBBMbRYHydxOxKli5VyIcvcK/2DKAJ93n9ksPJoVgFEpsL0bDI
	VwzmyCTukdBWOm8cxTNe3FPQ0hNjRqB0T5CunEuiZhCWEm+qu2nupIOeCsoW8206
	s6yvfs1pKJcPkXGDquM0tel6h6AsZIEa0uXdU2sz+62qoGQP48XGfhaa8tSxCOul
	3hf20+ji0bjjNPZ20dFMP6itV4zYMFFYPsdWXCSEC2LndFzLMXfDJyRc1hLGCMXy
	DgsafTBAYHyoy6kSheajmKz+vtr8767LaNr4f/MDD4U7WhmRexo3W4SNpGIoI7qF
	cfXdRQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2bwx2nvy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:25:26 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c0e043c87so16925076d6.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761643526; x=1762248326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8SK5QLPQR+xhdHyxzgW1kiyNV5P22KYcA2/y/XH+b0s=;
        b=ae33T7QCOMr/cDiWDQDFH9PAVnCJdj3WXP5vpHpwK3KKLZCc+A0aI4kwY0nisurBWB
         m7hZqk1OU1B5sMHgZ2VidQqGP9FWs3iFHMAw9I4p49wJ5xfKCRYU+JmtXe+MMY+RNusX
         3dYpQ4vxBvCAT5dj2cDc2QXDDcmuiknXFCTJm/apIeLtf9qxzTtD25GW/TB20DmNCg+c
         TjJGD9RBjKTFuDR3ukAcILa66lJoAzeKjJDK1+xgJPWnpE8PlHvdkjohDPwCiDrhYKkq
         yJbZnsVsUbmjstX7upDtD8lEhiWzLL3TX8+nu1yQGMvFnBQRNR4lAzPA1ebdfdrFWxct
         Js8A==
X-Forwarded-Encrypted: i=1; AJvYcCW59I9Vlm/fcY0iEIpSZYDr0+VDQeWgwRT3Sm656wSIItyMa+iyZZXLa8/vcCC3Sr3RQNfnFKBocw2E@vger.kernel.org
X-Gm-Message-State: AOJu0YyTYOexrbjMy5BJg/Dxmea6l0+2d+oX7sC2ShJ6+hIY+vuYapDH
	IoY9f7ZZpdt/4xZOjhOlnXnwbwcp1L/uIu5fMDtI9NLAIZDb0h84CfUiEyNs0ankNJc1hBFyM95
	dtXVF6k0rO/b69SmJJege5slDAd/MnzRLOsfBb9iM43OKlLN00ZrMTbaBP/oYfACNwFfMmeDZ
X-Gm-Gg: ASbGnctsCoMz2B6bgehcsEpO98sZu/2pK07LJfsPeZ5QsjgDb6ncAnsBet6axVjClc1
	WkAeXSws1NdxRs1t3Bk7popT1FrPeUyxhcadmDICZGP0lAJrDA7z9my2+RHBp09J2dL7WUYhG+D
	MC9jy1Glw3Y4AhOgSwScApJeMfWx1+sU8QX1zHxzI+bBOOKqFqJcdy6rXeqCco8i5h5UdjxOvrF
	ShkHi8h2lY4tb6S3ixiuPhW0Oh9+deBmqUzkl4ZlHUyEh7E+EMOAWQAKrQ1JWDqh2bLrZLn0I5k
	zJI7w65JRnIln9XApLIysOWxVbV6Fw+hOi4df2ASAD6ZXk0AW/Bo3BsMkROMnlKV5NgujF4GPS9
	tg0bgnwgr/QdjPdwpIDSEtxDdmGlP3tZ7pn4QYcegAiJQnq4BkR+hTz3k
X-Received: by 2002:a05:6214:2521:b0:87c:2bf5:550e with SMTP id 6a1803df08f44-87ffb104bc4mr21876446d6.6.1761643526294;
        Tue, 28 Oct 2025 02:25:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi2+KT3Y8I/PL2gLm/2ohFliLpxgVh/WSkJ9F7uM911mGlAp973XdDMSrBXCrX0aCtRxDW6w==
X-Received: by 2002:a05:6214:2521:b0:87c:2bf5:550e with SMTP id 6a1803df08f44-87ffb104bc4mr21876316d6.6.1761643525878;
        Tue, 28 Oct 2025 02:25:25 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8535974asm1013525866b.25.2025.10.28.02.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 02:25:25 -0700 (PDT)
Message-ID: <d05fe82a-640f-4a09-9d83-39bb5aff179d@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 10:25:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: talos-evk: Add support for
 dual-channel LVDS panel
To: Sudarshan Shetty <tessolveupstream@gmail.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028061636.724667-1-tessolveupstream@gmail.com>
 <20251028061636.724667-2-tessolveupstream@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028061636.724667-2-tessolveupstream@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA3OSBTYWx0ZWRfX1L8DbU2cm+vW
 JOemetIyh7sb29S8ZgIQDIA8r5HnFxT6SzYwjGrWHX11gtUCOpCcEJDkpIn2ue3bIpuqqLrEAuY
 tRTpsKZbNQTqK/1bp5vM8QxSQKA4tYN0ctCvxoOu5iJ4zROHJUqtAIz3e97PHCOdvwsXrkSqy24
 DlbZ0Oyya2Lvgqhh36SuFwRMfcMvMFJrCrQv0uIELmssuvlfqekKr94849PxzE/oRIkvUIohLC7
 OBZUdENeSLDiI98fNE4jOPN55fcGqQryStkHyNZxqurq+YlgbeoOHx9M8bHzwzLP92Wenc/uBYF
 VtGtxxc/HzDe2Oh9IrYcLHKll296XPRk1kAXbBd50SWt7H5CAtXvn1zuZh4bUCGN+mpguFEAfpY
 ojBzfSLT8ahyirxH7/lUVVuhDh2z7g==
X-Proofpoint-ORIG-GUID: YWEQ8zltoFGrImAweMhiAhXp0nSd44vX
X-Authority-Analysis: v=2.4 cv=U9WfzOru c=1 sm=1 tr=0 ts=69008c07 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=QuCLnqFj5nzKUXK4Y7gA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: YWEQ8zltoFGrImAweMhiAhXp0nSd44vX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280079

On 10/28/25 7:16 AM, Sudarshan Shetty wrote:
> This patch introduces a new device tree for the QCS615 Talos
> EVK platform with dual-channel LVDS display support.
> 
> The new DTS file (`talos-evk-lvds.dts`) is based on the existing
> `talos-evk.dts` and extends it to enable a dual-channel LVDS display
> configuration using the TI SN65DSI84 DSI-to-LVDS bridge.
> 
> where channel-A carries odd pixel and channel-B carries even pixel
> on the QCS615 talos evk platform.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---

[...]

> +	backlight: backlight {
> +		compatible = "gpio-backlight";
> +		gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>;
> +		default-on;
> +	};
> +
> +	lcd0_pwm_en {

Use hyphens instead of underscores in node names

> +		compatible = "pwm-gpio";
> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&lcd0_bklt_pwm>;

I think your intention was to use pwm-backlight and wire this node
up to that

Konrad

