Return-Path: <devicetree+bounces-240158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CFBC6DF81
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 00119383D2D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC6C34BA5A;
	Wed, 19 Nov 2025 10:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fof5NDdj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XEsZhNAv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA28299959
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763547911; cv=none; b=aP31rRLFYCgmWmougHqJ8sJnfEe5ViYk6m789w4YlWbPElZk737WaeoeUAhpftQ7EXkwRdLY4n3K6VmdF2THu/M/KogYhMDb5rNokpwcfR/13UMQyUU2dzflVfV1Jai6y4eBsdX7OG4j2stWklZ0NwUqAqToyBfv8w6rOITP0KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763547911; c=relaxed/simple;
	bh=ym5N+NqN9gnH0rLWboUPWanOhy/OGcrXxbUH557pk40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CP46hgR7g+750z8P2rL4N3MjrAjZT3In13B+gfxPJdAnXNVsbcmWnaKiN7MqkOUHrwm9N0CgLZ86oi9B/52OK4c7Nn35U0fS00h0hjOFhfhs3XQ6sEpz4iDeIJvHwi8DJdFHzsbaLHb+msJQjYdABjyk2gUIR0bsqGh2v1Pl8uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fof5NDdj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XEsZhNAv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJAHYeb3165161
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:25:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zOYGYPzsas4Ye8z2cQQ9l8Pj
	B0eBVtk3ZyKewT1i9Bs=; b=Fof5NDdjJ0KAkI/R/4P9SmQR0qc0lEVETgqcjn5c
	nV8xRAFzJHur+rao4pN9SCfY9RV7TuyXdSydgfSi+ToQjUvvKGVLBOBWhr+r8MVw
	MKZZ+HkxT607IBE+1vEgKckcRNFZunOFlG0ViBjfuEiWeH/FeKiXUwED7Bz86CpC
	njtpRHPwcQ+/x0pXCyGQgtDwodn1fXIixp3yxhrCCdUsxUCY75SO0/PNSR1crrzt
	d7SVpxA/dWEhBF84/FTcIwU3WuorXBEd84JWiOiFAkyXY9dl7yMPjcoj9ewu42UY
	r+uR+o+1pXbK43Afo9XewEcAkVKa3FyFjvQ/6o/2svuBXg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agvqgttnj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:25:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede679393aso212342251cf.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763547908; x=1764152708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zOYGYPzsas4Ye8z2cQQ9l8PjB0eBVtk3ZyKewT1i9Bs=;
        b=XEsZhNAvhkB7O04DKKtqiuzig5t/xjRTrlroi7ybas7vG2y8dPCar6ji0/Svml/NjE
         zWRbDpSuwbXsFG3tgPX33+AYyC1xbDz6vpTY8peGvoXJePfmgBVC+7ZdBFbwRjAndwue
         tlFRVFkHwuRXKLDXFQPW5n6uty6l00w90OVGIDEwpHYpoDP4bVM8wapNQOWzi6VOF04C
         CGhB/tjffcHtz1/Eoha+u7rR0UragoQt3o4Dnr95Szxn2LyrGrJ/4rrm0z7tRxH7Gcsu
         P+2tMEbPxYdRilpAb9WhNIcZShWlq6mnYa9ZUaaP5QsTKd5jchH1E1q7RN1XHq+ZL916
         XGRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763547908; x=1764152708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zOYGYPzsas4Ye8z2cQQ9l8PjB0eBVtk3ZyKewT1i9Bs=;
        b=j2aHzbszTU4BMP9LLskhZhR8aNU6DWRBGF3Vu6GV7cc0Y2fwZpbKGs5mtXLjylaxAe
         QIHWN1k0c++WUm2kr3C4o6Kl+CCHkGvSRYmVzJZYgzFkYgzy1qDFyY/gDaJdcNbbIZXo
         QW+22C1HPHqyoueCvMYFom8VBcVdFiJw1KHGpwMjurbEqlzuUFWgZcZiP2GraVSPGg2R
         +xVMRKmIVGN374K0WLwsQzWso4zTUV0SLwMHtFOELoEp+GGkr1YWZnwgsKBm8f46Pjd9
         aM86hG4sfykXW0VcbDiAvgsYAcHuutFdLuqn1I/5kAxbVagwCChv9lJgMGsnDZ/q9Ofn
         MjDg==
X-Forwarded-Encrypted: i=1; AJvYcCWx7XAzIpzsbAywAouSjgayMG5HYEla5wamwTMZ2e/SaxSj81IG2NyVqNFI9AooRzhNfOhqG3Q9wLHr@vger.kernel.org
X-Gm-Message-State: AOJu0YwA03ooMQza6XqARZXkVHEqFA/669S9HEj28Enmdb1kgRWZZnwj
	L4cU03P1ULxh6O+axM4TA2ujIFE+Y9Q/DU5omCWhj9ETyxueKFU//xlzjunJ9QwFtEb4Wc5uN2i
	OdCl/TGINEpCBhQmKuD/nhRMgC1hWTjXZsTibQDyTuEk5XUWVirgeX99trnvGhiLH
X-Gm-Gg: ASbGnctCrvg9L4SGfuQ9NIA7eugK+f/WYRFgf3t2P+dtiZWMyPjM0bBMxqB8BRKbSsv
	m1yqYtyE3yKeEwakSlfGXcpWHE6KuFdi4AFv0v7hEmUhgeYp1kp+rB83qX0reQu/uQ9aLy4cibu
	e3qznESW8UNpc4sCmI/A8+MpMNl3OxDdFdfMl7eEEhVU33A+ifhQcjoKUF3JF0PXv1EbRy6wSWq
	5RZGa717TfQZ5t8DEsfrb/7dMl06w6oOsKmaI/5BUt/V27z04SuuiTDS/JTJ4xmx1RVV5fOvdUN
	NVV8EIJZIzSfOtGt5OyVF2WWDvv2m7iO10q6jVQ1c6JAkBdCMiuGnt7/fDvjpylGBJgOuIF7M5F
	KcxxlOpgK4OiiYXYwWmXiL+emGioD+AEldNooJo3PatYDcp8Hn3dC4KkjrpojPSiPO/9E2ci2uD
	d2gKCTS8gqyDvd/TTzCoXIYvU=
X-Received: by 2002:a05:622a:1787:b0:4ed:dcf0:6c42 with SMTP id d75a77b69052e-4edf20ed317mr240567751cf.40.1763547908086;
        Wed, 19 Nov 2025 02:25:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMvBRUVJt9SF9A31IZ5DavkEhnPNzijPYUPOqFxcOXgDWtfwRwMxFg48oSC74HCwIeYqiIbA==
X-Received: by 2002:a05:622a:1787:b0:4ed:dcf0:6c42 with SMTP id d75a77b69052e-4edf20ed317mr240567541cf.40.1763547907688;
        Wed, 19 Nov 2025 02:25:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce1abf9sm38262851fa.19.2025.11.19.02.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 02:25:06 -0800 (PST)
Date: Wed, 19 Nov 2025 12:25:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <ug4n5dpsg5v5jwhwmjaktvydhtfx6gagoum6lul2a27h44xexz@uvdu6ma42wei>
References: <20251118130814.3554333-1-tessolveupstream@gmail.com>
 <20251118130814.3554333-3-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118130814.3554333-3-tessolveupstream@gmail.com>
X-Proofpoint-ORIG-GUID: OAnthF4Wt8el8dxjo1DkDL11X2rWPeDP
X-Proofpoint-GUID: OAnthF4Wt8el8dxjo1DkDL11X2rWPeDP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA4MSBTYWx0ZWRfXyES7o5OWmZLf
 uNSQGOpisy675/08RjiAPRdffbpcBeJbK9KCanJaNATIanxoghGxTOxb02RrdiRvKvoYhQPYcRf
 csH8DUIH285mu+SaHC1u2A899MCTRQPizFi0zOtX+XhrpY7Dnctc4pclz5RwmV4EZziNChBSkCF
 JtN+uFL5PLsGCWzpesrPhZcncOEbN4wFpRIgX5SeBWTSJR0Ud8Ri3qZftXqHMIae0aet8YQeo2T
 10rbtzAuVmDto4xz7MC5k35EtHSkkeLSPEu2LwHm6GlAKDRMwiIP4h5AmviJr1Cx/nlNePWJjSw
 thWoGLpZXvq76F5jv9DjCprm0rqcCWLLrdKT/oz3U/XDBmRt5Fnf483lu7lxOsv8GpZe06ypxjK
 WRIgg1Xws+hYRRsxuaneiY+32g4BRQ==
X-Authority-Analysis: v=2.4 cv=LMJrgZW9 c=1 sm=1 tr=0 ts=691d9b05 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=6q-ckXwDscysDfU1ynwA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190081

On Tue, Nov 18, 2025 at 06:38:14PM +0530, Sudarshan Shetty wrote:
> Add the device tree for the QCS615-based Talos EVK platform. The
> platform is composed of a System-on-Module following the SMARC
> standard, and a Carrier Board.
> 
> The Carrier Board supports several display configurations, HDMI and
> LVDS. Both configurations use the same base hardware, with the display
> selection controlled by a DIP switch.
> 
> To avoid duplication, use an include file, talos-evk-cb.dtsi, which
> defines the interfaces and peripherals common to both display
> variants. Two additional DTs (e.g. talos-evk and talos-evk-lvds)
> can describe the selected display configuration.
> 
> The initial device tree includes support for:
> - CPU and memory
> - UART
> - GPIOs
> - Regulators
> - PMIC
> - Early console
> - AT24MAC602 EEPROM
> - MCP2515 SPI to CAN
> - ADV7535 DSI-to-HDMI bridge
> - DisplayPort interface

You got the question for v6, responded there but didn't update commit
message. What is not enabled here? E.g. why isn't venus enabled?

> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi  |  56 +++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 447 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts      |  94 ++++
>  4 files changed, 598 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 

-- 
With best wishes
Dmitry

