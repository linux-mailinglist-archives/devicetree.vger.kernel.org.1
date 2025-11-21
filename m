Return-Path: <devicetree+bounces-241121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B77C7A1FE
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id BA3E23466D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79578337B90;
	Fri, 21 Nov 2025 14:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pNkLkKft";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eY5ncFmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC8D33CEAF
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763733917; cv=none; b=ejcL7maxNikhi9lRV6klzT1q27n2BYuzLxqggHutOBCLneBTtsj0P1BheXM8Y5XmCnDuW+wW0wxaHu9yQB2X63s6gc906cXBRjGN4y+0gVqRTfmxogbgL3C33hIovJvvUxZPtbGSnbJIZ9IIYxgHu/UBZZjY9r4QnI91y4dH0hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763733917; c=relaxed/simple;
	bh=68PnXc69UCyFtg6GEAXARqQQjQ2Dic9mmjK7WiX8SKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OWE/RBYiDy8P1L+pkztrUcVD9eFUALhTLfDAcl3ZCsqz4T38CvK4+i44ynDnHKKUYyK0KKGZI85Lw0SEf3BurhV/8UphIzHzSZcO5N4ze8eD9yk7awckazwBx4tBPsdqFHeM5lJsE5MKyULMcOQ1kII2MElRNYjNNOGms3tUIZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pNkLkKft; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eY5ncFmN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALB49aL3911295
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:05:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qaf5DRptIZQbru9+g9r5oqVEbW05dE2A+/lFcNwVwN4=; b=pNkLkKftTrJcb7/U
	AoRdeouXIFHSrymMO1FaKZTyfF+9htqqXlJ9PLJFopyC4k50++wVDi9Ps5WH3Ot4
	RSxqpsvFGBnWN9zroCwJB04RKRvKjKuHNEX0KXmrlEBvDV60Y/C3nkwiiKbwNWRn
	tHu8PmjVNDd4C0U9826q9nkU2WmvGpx2KkjygiZqp0T15MOPADKFUJbTcOjFcywZ
	Th1PS4WOtBBPzdkPKvYNl+p+IHV0HF5dxUX5ts9o/4zsv3vadyRYJpsCGUYitw4Z
	bDC3s8/cXFCx8GnlST7ymMfQHcPmW+wG9ug2tVcZuwa0m0NSF3GZoumPBT9T5R/0
	xTO/qg==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajpvsgg1r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:05:14 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-63f9c4e3701so2860971d50.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763733914; x=1764338714; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qaf5DRptIZQbru9+g9r5oqVEbW05dE2A+/lFcNwVwN4=;
        b=eY5ncFmNts+hkQIVT1BOw+CHpbIzVmF7nhkk6x4bLX3P9hmwXhrzZo8lfpRT6fED3E
         N/3wv+hrIo2DglQaT2a4WC5Zer4RV98G1yRI1n1n0z2sMyVJvJ+bHiyUMrdFeh+sMvt9
         o2sf746rEQMULbR9EpsUdF+5kkNtqy3Z1BYXdetsYvrWnBoFxFByWmfD771IDLJ+/Hvp
         2zjP/MhieQultn1rkvLYaRNVyLA+gFRxE7Ow/mzw3VJE8azPkrE8INFdTBVhKSI2sjrV
         kbZkBx1SiYxgD83xOszFdWlm8afpjZBKwDvv+n1mMmk9RdEVnRcHvhXB6MDDbvWcfCTz
         Ivqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763733914; x=1764338714;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qaf5DRptIZQbru9+g9r5oqVEbW05dE2A+/lFcNwVwN4=;
        b=UQHIX2GhU4iuJfVYKSJdKGH7a1qV68ofp1i7otJE8EMKPelPtqyjSTkoV7Xnx3E6BP
         RMLKysfW7zLDPmlaRGWM2QTOGRCEJM46hSmDs+xtGJBs3Wcnylv9CQgUpHgfuIQi8mUK
         0aaMJqmRBcCr99Gvp3SIxEj/pHKobPsRdegyvMXVkRhkhw43/bBfnb23ChZ0ZRhJEMDa
         oWiJVZzk/WRNu8Jobc8UXaPgAHS+CBmVL0NnOgLFWL7CqWaVdYq4cJjDITbl2ClMaX4y
         xgk1pYb+Scx16yqXIWIXchRQjTbl+xxlOsKnzVCmLufg5SdLUkjyOyw57CGbmDFjLeZr
         W0zg==
X-Forwarded-Encrypted: i=1; AJvYcCWh4eKV0bhK5cg+7yd5HH6zBp+/ATlxhQsPats2nBO2d9/iAXGxQqlVxOalS/+VI0MJR7SJc9aBXECB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi5hS8n936m5P2iyldVCloFEBXj0V39rZXPCa9edKwJUOqZ57H
	+MPg2LqLjQrXa0qhSTBu7s28GKNdfy0KQDKBvbqsKty0VXTIDPRbFwWdQ2YEjSeT+6+PA4raLVo
	bL879TCKvagPPMoXIIsoAL3R0J47Dkblopx04M6bCQj6a+pNjzo9+4AUu0DATDOjd
X-Gm-Gg: ASbGncsT809lziO3m4/PSBkFj0VbOF2xVfC1O0S8iytUAoq/ck3WJfsHky23hpwxaJk
	PCX5TJzVlTjHMr+yozLe3/y5zUh5vVrj5c6sGnKnubKl135F02z6UAOnUPDcrO5w+UvgZEM+ZJx
	TfsXRTWjbEmwAQxML5Q51tCx6NJl8ahl8uGV5wUrtd0prc/bfAdptz3+NE3J4hrNVUTd3Yethr7
	GgVPtc/a/rKdXG5tVNzUy7KoMKlr1+etxr57oVK91tIlBDPVdaWLtE2gzCMgaP0OSoqeMuvW0+L
	nelYYw6Pyi1bz/YV69wxbQ6N0RcO82tZ598y8mJsYUaOWprpKn7fSR05Iq12A9Of/f1FFjUvgp/
	yMsnDGwMzaRVyWZWTc91AqOyUvGBNAnSpMlTOwYEJdS5JCSvQDn4I0PkOtVpRy1YWjj4IeoCxeK
	S51TvhFXVZ1BYqJZiQI3fyo9A=
X-Received: by 2002:a05:690e:1596:20b0:63f:9473:4749 with SMTP id 956f58d0204a3-64302b08cf9mr1207675d50.56.1763733913481;
        Fri, 21 Nov 2025 06:05:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGppYmqmjg85tb7as+vnEDGkkvnF45Ln0ar2bN/42BQHk6sTjweL/7Zyd/ipDSPuQ9GY2H5dg==
X-Received: by 2002:a05:690e:1596:20b0:63f:9473:4749 with SMTP id 956f58d0204a3-64302b08cf9mr1207628d50.56.1763733912963;
        Fri, 21 Nov 2025 06:05:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbcd137sm1652527e87.94.2025.11.21.06.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 06:05:07 -0800 (PST)
Date: Fri, 21 Nov 2025 16:05:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
        linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino
 unoq
Message-ID: <eydthsrk7atlrbp5gwtc47snyiof5yknlzkuj3kwgaoymkqkih@xt5klwnsn32c>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
 <20251120155825.121483-7-r.mereu.kernel@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251120155825.121483-7-r.mereu.kernel@arduino.cc>
X-Proofpoint-GUID: D6na5qPs1T44esT3pObU-87lME4hSYpo
X-Proofpoint-ORIG-GUID: D6na5qPs1T44esT3pObU-87lME4hSYpo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwMiBTYWx0ZWRfX68raVhiw8vWM
 Lbf7if4Wj1zebSKTfKQR3l/HwqIpsEh2Ggc5K8Pb6hULH527vxYDhnOUHGyjpfNNhnjESMiCJHZ
 Fr9QU87nMWQBxIpy2zvx1HNrWScPvMLJL0TK7ONHry80vvYs7ezbSZUAXoPB5tNS/Iv3dZdwFAk
 Y/rdr2M/GZhGYkDqcGq1J/2pDypLnuD2xqYzytvcv+eF2vo/pMOTXqZcaorTRPXnRdZ2CA5guHt
 TlbO8CtbNvPDpMPnN+KrZIUT7/9drcyp8pWLLqBik5CEu3jmzcZzIi6m4aAckfDyFiYfaGVc9T6
 aIl9bR3IYxadajQ0WFTZbhngz6+KOU3ouO30cj2ro9tBjdaWGxEOMih9LedQFkZ65j6vLfE0JwV
 PXAe02u1hpVIcVKrWeFDt0zNTw5wXw==
X-Authority-Analysis: v=2.4 cv=MqFfKmae c=1 sm=1 tr=0 ts=6920719a cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=AyA9t-mhxxp3BJy63IYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210102

On Thu, Nov 20, 2025 at 04:58:25PM +0100, Riccardo Mereu wrote:
> From: Riccardo Mereu <r.mereu@arduino.cc>
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
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 459 ++++++++++++++++++
>  2 files changed, 460 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

