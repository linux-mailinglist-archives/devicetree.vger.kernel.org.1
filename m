Return-Path: <devicetree+bounces-235754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4DDC3C812
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 17:39:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B50D9508430
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 16:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BEBC34B1B8;
	Thu,  6 Nov 2025 16:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n+pna2tc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B7OKnQ5b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69C43491C9
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762446595; cv=none; b=piU0eNH5v+qw872Jbg7HT1XjzMHcMJiGeJA/55I2HabV5oBenE7GoXCnrbGtzCfVjJdmEYa22y+wAR80/zwmLb9Ibbutyt0TLYDS0DZqScxwJgOF+CETutY3O62PDVSddsu+d0rX0pgIuyWbTugWJ6B2KaIooLdEazCD6whfPQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762446595; c=relaxed/simple;
	bh=VzaCR7H9TvLPBQ9CB5Z3dGT3hJnO4fASZTntV/6fnQo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MKDQQWrjJE6jP9uCVDC8Aua/8OSJOwF7whNsaw+PzWN88isOj0elG/HXpOHwZpDrgxryatj6I/B8a5yjVAWAbX9A0JEmtApeyna1TRa46MwKc7hGDpwjMz0bf8Bvn1/hz0HJzflvUN1M1vu8bRifYcn25DVf9jl+1lRuqKjQK6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n+pna2tc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B7OKnQ5b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A6DLmno3217616
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 16:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WgmN4NxVV9M82DvCj9Jb02Y2HdGbR+gEIO/NMxbQG2c=; b=n+pna2tcBKKGun8+
	JzSqkJXPMRjIBF6qXOcKmQiubQBM6XujHappE5+x3+jLCALbEyBBN5LGeymXYwOx
	OOhX2EiLEoxRqr32SzZGRR73sFJCwHpnh0/64k8lxP+ofNmuC2cpmCGUetZs43Jm
	Z2KsmZvdAqYC2rQ0OSAoREsz70vbSDK37yh1/MI5RO/1v1xHyqfEDOCT/wKibL40
	3ENESVruLu3ChY8rKJk4TtBo5A1wn3ub7LKiw3ebJ/a6L9lvmvFfJxkUlCkuRQcS
	pWUVl7bSW7Suu3so/1zx4B9Q7x/i1Vgyhq1qlhoFmmGmM8FwGmjMl8ptCYGxqszh
	LRwE1g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8n7phytx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 16:29:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8a35e1923so1925761cf.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 08:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762446592; x=1763051392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WgmN4NxVV9M82DvCj9Jb02Y2HdGbR+gEIO/NMxbQG2c=;
        b=B7OKnQ5bRC/v+aNm8cYnQK3BOknlp6i/HyiOuDPYfxWJRi5/6bZo3TzPB8HTkpbMIE
         vv3/012RR0nf9MjqbpvDCoWeab1zWIGSueXyG45yhj48OC4dmCHgk8tFVt4z9Zj2LODb
         YFwK6MP9mugDfZFEvfZq6lCKE76jOimc9JitePtSqSY2xLrLH83XwCNZ8YjTK2FxtFQZ
         SAmUADIhkwO9ukkWrs5FDxDFW209YoUpdrUk9uagKGLJibqWenRGtXXEEjBQS4WrMI73
         J7UswYEsSsuyAgMZ2Ja1lOb8uxmtp0nggz3RJ4L/WDhzUHyjgY+oxYeNJa7YKboeov2B
         w9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762446592; x=1763051392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WgmN4NxVV9M82DvCj9Jb02Y2HdGbR+gEIO/NMxbQG2c=;
        b=DRBgphq9kx9NAdfQ9wyZe07r7kUV5lQmUdpZHcAa5i8vETacYpURYRamHFNiiWJcmu
         +0xtipmllhv/5MgnnW4X9/Fz7bW9bvTvxGTlZL+IzkkkVOTLpiMY4vufW0RdLml9CIcd
         EJCHkToNxCYtngvQcpnn2/+SlEtMEXhEA0oyITWpQ7nz0OLWVaJ17FSAHNYXju43+ynM
         1apcSKK+9kgVVKFsGAxFR5KIBzGKD+MRGoUtHTWOc9g3BzjJAqcMMuuNwTpRUfOkVi6K
         CaX8UJrZDwnxTdcIqQul9EYabRIbvWDgqlqq6RGCGOVgjGR8e2AOR7p+5BFeEr8j2XUD
         XROA==
X-Forwarded-Encrypted: i=1; AJvYcCX6b+IR/rGX4rnSJMGSivUhUwRJhR63Cu1B2fo+ckL44uM8dSvp/hhAAGyZEsxcDa4j8iW1qXUhlq8X@vger.kernel.org
X-Gm-Message-State: AOJu0YxDLCBJJ8E7XpCBxv9jcuTtsVFAZ3TS8gRoQe2TVH/Rc+wHapdt
	1Xca5iuO2eLhw0PQPShrbvQRHSZfm83bSaoEpfGM4ab9M3jUl9QZdR7RnCxcK/GTUmPlZNO5ScA
	wWtWEQNBMzeRF2v4E9woLlKAXDZQponPs7IbkcESa6Dloof9p/bofFtW0bQKT7a1N
X-Gm-Gg: ASbGncsqK/XzbSLsZPPwl7gBH9A4GVvDgiIrF33R7xzhF8MRlNlvKdFTTG6NZMYxohn
	mMJdm+xg75V9IAlIdhYdetAEp4EgMFXYCknNaJzTQ4tiYQX7cscdDQBxtmu0frZzRmn3a3LMr+x
	tZTvnKnE9V6CJWlFHOBe9qERrpZnWqR3RJbLSQGvRt84ZKQM7GObQuQ4ofbioVZZ+YIom9oiTNS
	PsVGT2V0u+ySskBBxCulDDt2/Fx8lT/b2voGty5EF3echJgJxtpbBK1gTp12156AJvH8DS3VRu9
	+kbRrtcnEgnl11dG1n1DeF3vv8uM2mjvdlasIYgi63yF6b/cOV2Uz4JvjatVQEv7htjWQPPYeZz
	AJ9u+QA9tPLnGT229yuPOp4YC104IZl4/LPt5zom8Aa5WcwU6LYgWtgPZ
X-Received: by 2002:ac8:598c:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4ed7233c5acmr59986401cf.4.1762446591971;
        Thu, 06 Nov 2025 08:29:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZxjYZc8rxsuvOHdd3txcVs2PoTli39CB2wIhCv+eMHSJx/cwSSBEXCcPzDCkWvSvQ6pH8rg==
X-Received: by 2002:ac8:598c:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4ed7233c5acmr59985991cf.4.1762446591404;
        Thu, 06 Nov 2025 08:29:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7289684873sm246890766b.58.2025.11.06.08.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 08:29:50 -0800 (PST)
Message-ID: <f20fd593-0173-424d-9951-e0f2ad33b4cd@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 17:29:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: unoq: add dts for arduino unoq
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org
Cc: linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, mm.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
 <20251106153119.266840-6-r.mereu@arduino.cc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251106153119.266840-6-r.mereu@arduino.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: L36FW4bgbG0bFFGF_tuVVog_xE7rcBpX
X-Proofpoint-GUID: L36FW4bgbG0bFFGF_tuVVog_xE7rcBpX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDEzMSBTYWx0ZWRfX4Mv9PBH8i9Zb
 dWEtriU4P8fUHfVgG012Zc+UpyJ3lrW88+6tMh2vHdDHT7k8ONf2VbHo20u69LPBlBwpmeZx73c
 xQMVYEEODeFFEQpLLrsV6RQvAUCnWEsREFd6ZxHrt2Tac6CLKPrC7hCHaBtXNO4Iq06XhsnP3nl
 DJMQrnJH3hF75xMPHe0Jn1Qb7UMhMYzjMhCixa1vDgjB7BNDgXGqnL8mJbLC6tlQp0MzOIt5jZ9
 RMq71jHCHGkktkh/h4J5mLT/yBM2ERC6D1OfTBIr4TYcP/BU5pYYiW/sKpxtCLg5jFSfYwHyv7L
 OKZ/H3zYlgEJpyrhQTwYOnBJhetNhr1nW2cmUru54wF72VaLZPZ9YHAlVebumAczymN25wLM6qV
 dMPdkX0qjdr2xfU5jJe06hawqEe5aQ==
X-Authority-Analysis: v=2.4 cv=ErnfbCcA c=1 sm=1 tr=0 ts=690ccd01 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1Br4yamZUyoIW7x64XAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060131

On 11/6/25 4:31 PM, Riccardo Mereu wrote:
> From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
> 
> Arduino UnoQ is a single-board computer combining Qualcomm
> Dragonwing™ QRB2210 microprocessor with STMicroelectronics STM32U585
> microcontroller.
> Support to a simply boot to shell environment includes:
> - UART, I2C, SPI
> - onboard LEDS
> - eMMC
> - WLAN and BT
> 
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---

[...]

> +        leds: leds {
> +                compatible = "gpio-leds";
> +
> +                ledpanic: led-panic {
> +                        label = "red:panic";
> +                        function = LED_FUNCTION_INDICATOR;
> +                        color = <LED_COLOR_ID_RED>;
> +                        gpios = <&tlmm 39 GPIO_ACTIVE_HIGH>;
> +                        linux,default-trigger = "none";
> +                        default-state = "off";
> +                        panic-indicator;
> +                };
> +
> +                ledwlan: led-wlan {
> +                        label = "green:wlan";
> +                        function = LED_FUNCTION_WLAN;
> +                        color = <LED_COLOR_ID_GREEN>;
> +                        gpios = <&tlmm 40 GPIO_ACTIVE_HIGH>;
> +                        linux,default-trigger = "phy0tx";
> +                        default-state = "off";
> +                };
> +
> +                ledbt: led-bt {

The labels (label: node-name@unit-addr {}) for the above 3 LEDs and
the group are not used, please drop them

Looks good otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


