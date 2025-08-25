Return-Path: <devicetree+bounces-208925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD25B33B8E
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 11:49:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 956501B2615F
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E3032D060B;
	Mon, 25 Aug 2025 09:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mQTan+/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA45D29ACDB
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756115299; cv=none; b=sJC6+975mC7ASHywC2lexjM9oIl+OvJgABX4wQxqFGacO0mhrjyKun//ZKzTHrdVNbjFXFc3tVFGdre3/6UPauP6BHdUMcXWgIFJLpmbnFWNDL/i2yJG4Dd5zfcb7VNpl+MsbFlBAj2MGRnRQyALjAqN0PxiKgvSa99dm8KI0eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756115299; c=relaxed/simple;
	bh=RGPjNT7eYla33Kxu+DaatsNooHQFM4EPX41laHhicrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IIVB+wO3Al2vF9U+penZUe4zzHgXrfyeCKu1rzeT3SP2kXpjLzXoTLXg4DEu2R8MXRx2gLlojWmKKp6YJQd15jtGJ6pbLw8ES5GmdIxBXVNUE0p6tf9R5BLqDHFfXgKuHsXw7ZT6j5RtOTFQGRVi4glvfTDVT31QdBllP/H48Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mQTan+/f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8SXVP019595
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:48:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TsxGny5bZmfquQo3c1L1zs/H
	NsPbZHYPUMZ3nblGGiM=; b=mQTan+/fHsOrHGVNQefyE5T5MCZ9H17uK+l5Qq98
	kau9N2gHiyDWr85nuN7oNhlxCAB19HeYYI1LhPOcxfuhdJ9aJmFrRxMUfv9ST7jm
	bltkZ+i7BjHg/hgYmgiD6lJ7Gq3XSeEcHFq0H0vW/JS8Isl8vJtSnp/x3MN8GcFc
	ZggqMXpLOwbD1XMs7GIYpl+EAXApXT5pYydv8273vu0dS5CqzKfIR0/ZNL4Qkuaf
	AW6lyb3oE5duJWWEoTe2QTJ2OZwowiThAbKKPWaTYqOEUxpw7L6ilrd59oV+HhZZ
	LHPy/jGqBqGEUjHMepibYQN9VxfIklQDyTISRnHCbB/LRQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615ckqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:48:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b109bd3fa0so40659461cf.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:48:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756115296; x=1756720096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TsxGny5bZmfquQo3c1L1zs/HNsPbZHYPUMZ3nblGGiM=;
        b=sGikxd4/MBKYzA6xtz1trqcYno26NHazPAhq2fpl+EfXPVJ8y73kQDjL0HzvxkjN6i
         wO8fVfVVK7yxXWqHrI5rfS8eMHlh9tSW1GR5QESDWtGjGTqUUXxplKO3ZTT+Tesbnunj
         FHiWS1DvnmTk0TDW+JSGHF0o3Txx999Yy5oAu8HocP7XR9WUeHqwdwe2DtHxm/ubBtjW
         /PklRovkh2pQrqHphLwFdCeteUGrwyxXlTXXoduI3nVgFmYNVcujkxvGoce4d+aj931h
         FL2vOnOSvmOvY9VvLsh8sazzAOF8UFYfyYTaPnOymbiIKaLkpVJUY5ap7FRMTB0YoSMT
         yyNA==
X-Forwarded-Encrypted: i=1; AJvYcCWX6WLhURJtvy4x4gAzv5YMGu/7vlBkyl+39XhLCst7wzQZRDWtGHdzaMoGkEeESiVO7CiNKNGzNWdB@vger.kernel.org
X-Gm-Message-State: AOJu0YyEQAeBXsa9j7fM2ioiSBvXcLEmmCHvaFQjqeaWXGSeNEKYC7BY
	QKxjqmyjk1qkeQwWZEDA8QTtbpIwZqteg1YlnY03iJd2gXH5E/BeUU6i+igBl331/1dWUiaDgZ/
	8xEN7mWgEbAZ32CWMtGQm7PJtZQQDtslP/V0Rth/k4XOUpmrgx3kU9VycxpGRaBmX
X-Gm-Gg: ASbGncvG+87VhEJgJ+LwqK9J4UougzofLHz2fUAeLmFKlgSvhllwpeGu+eePUNKzlEs
	FK6DeZGD4qOMJsqRSAszlMmbyyK1GWEguIMJkFPJmPFxCHd3VeLAoD8SBYY7V6yFxWUsHt7YzI/
	H0+4nrUKBqonaPfksd7z/iDAJRz638DPc72vS2QkFQoifopdkaUFuCmOCA4fRuGyYmOx6MFxIqb
	Puf1E/Ll9SJA1Z8FBsnERmKXH+QB4Q016OPLAa2n/vP/dB1K4hbc1j9uxy4rvUNHu4ZzboF9hBz
	F1MvpEbx94HuGyVCM1BPeiP2+QddG2dE/y/7CLjuFEhNKt3y5DD24BMHe6znR6fWE+F5rfj0PRs
	OXCMJjzGNFmDoe+V1XigxBEYLtGyIqj+X71iFErZAoAa8MSsQJxd8
X-Received: by 2002:a05:622a:199d:b0:4b0:7ad6:ea9c with SMTP id d75a77b69052e-4b2aaa6e769mr105923931cf.31.1756115295746;
        Mon, 25 Aug 2025 02:48:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA24ublCRv50GDQgudcMmYvfl+amokeNBspHjLCVwUTk/6j0Vcg5F5U8Vdo/x+kxEbdB1w/Q==
X-Received: by 2002:a05:622a:199d:b0:4b0:7ad6:ea9c with SMTP id d75a77b69052e-4b2aaa6e769mr105923731cf.31.1756115295226;
        Mon, 25 Aug 2025 02:48:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f49af0439sm95112e87.109.2025.08.25.02.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 02:48:14 -0700 (PDT)
Date: Mon, 25 Aug 2025 12:48:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nickolay Goppen <setotau@yandex.ru>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Richard Acayan <mailingradian@gmail.com>
Subject: Re: [PATCH 3/3] pinctrl: qcom: Add SDM660 LPASS LPI TLMM
Message-ID: <lkoealhzrqb6obk7qqchu3pomwo6bklczqtycnrylo3p7rhgug@h7wd4cofmwxi>
References: <20250824-sdm660-lpass-lpi-v1-0-003d5cc28234@yandex.ru>
 <20250824-sdm660-lpass-lpi-v1-3-003d5cc28234@yandex.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250824-sdm660-lpass-lpi-v1-3-003d5cc28234@yandex.ru>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX2dQZnHwCUxhJ
 gW6PKFHRKCtRf308iE/yYOzkQVYbI1q++gZaJjWOk8rGGUuBKjXfMS2UtqcqlnTJ5dgotKrr9kp
 GVyDHS3CXxCNz1VITSnWH+oBejMhgdK679yr5rSgZ3NthEmqSjP7hEX1iS1VpTWIIOHsiZWlhi1
 8ptGeO9dWXw1gTDUXcJjYOY5euyRujfTJFWRsU/RjEcJbPCLIk/kCtEXzkTM3o3KvjuH1qDPfdP
 ng/WDPmtASpil/OvO9xvUha3OPkfDCLIRHuYr5vMpkIvtQa5HYejiGTN1YJbbR7f73n5kvj22tw
 i1dPllJgo3qe6mZs0qlb4cCVAeqZdoM0q4H2weYGQN5atDbsLeC0aVGy70uz6564EsgclhgTBgG
 KpAyL6Uj
X-Proofpoint-GUID: BJZGY_2d0ueh1XXOG4mfBC4Wn56kfb2i
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68ac3160 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=qC_FGOx9AAAA:8 a=pGLkceISAAAA:8 a=vaJtXVxTAAAA:8
 a=JhL1wmR7AAN73KXSh2AA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-ORIG-GUID: BJZGY_2d0ueh1XXOG4mfBC4Wn56kfb2i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034

On Sun, Aug 24, 2025 at 11:42:25PM +0300, Nickolay Goppen wrote:
> From: Richard Acayan <mailingradian@gmail.com>
> 
> The Snapdragon 660 has a Low-Power Island (LPI) TLMM for configuring
> pins related to audio. Add the driver for this.
> Also, this driver uses it's own quirky pin_offset function like downstream
> driver does [1].
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
> 
> Co-developed-by: Nickolay Goppen <setotau@yandex.ru>
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/pinctrl/qcom/Kconfig                    |  10 ++
>  drivers/pinctrl/qcom/Makefile                   |   1 +
>  drivers/pinctrl/qcom/pinctrl-sdm660-lpass-lpi.c | 196 ++++++++++++++++++++++++
>  3 files changed, 207 insertions(+)
> 
> +
> +	0x0000A000,
> +	0x0000A010,
> +	0x0000B000,
> +	0x0000B010,

Please lowercase the hex. LGTM otherwise.

> +};
> +

-- 
With best wishes
Dmitry

