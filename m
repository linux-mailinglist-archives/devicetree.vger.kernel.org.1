Return-Path: <devicetree+bounces-218401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 938A6B7F832
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBD9F1889C0B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A204D323415;
	Wed, 17 Sep 2025 13:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQmH3nN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBF21DE4C4
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116337; cv=none; b=I9YDKBApQvGBZf56iroEj4Sx0oaQWPmFq7WHaV7MDx5i5W4mfYw0ngxPq3A7f7s2645TieB+oqmlIJ8ATZLZMSIoviSQ3hupgVmuc4cSYD11uRlBZfv8cuPTccmx/nqVFH0ylBKcTwiveBGswVzJ5jtyhGFs87SG8Zq7p7hdJik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116337; c=relaxed/simple;
	bh=WnpB1rdEO8C8gBBpcqfW3oGIN1T5ges9hvMvfxGvjOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uTWeiKr8RErEmA5IaGY1xelDF5MTG/5JiNsaa3tXhGtKVYZjSBf6Q5Azj6QNY0mD/jF19EQtlLfbsiRZ7lkgusHIlwT0CSr0OJXI5dXSEi/y/0u3aaIyvsGcXRUYkeHjyt6IOMJ7bWCs8wb0cQh3V8iVeZTxOAruPZgLabP7l6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQmH3nN6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XY4d029875
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AEb37FUZ9ZFrM0ruvM0nnA6r
	/dbC6hG67INK4u3oVrw=; b=cQmH3nN6OKbRemf38hsMytrBcUs6TbZyp0BIB1+d
	pNf9DAnIEDHFuIEBZBj8d3WSMcv6mFHcmHKtAzyaeOp0QK82Zzd9r080qsnEkk/U
	jB0xvX3Td0vlNUlV2CdXXygUIadvd+U70CjqH33k7k4lpBEHLNGJ1CkbfBhIWjrQ
	isJaG8a9bUn2C0/uuJlIEFZbKsu0o4tWekxQOw1FQLHVcFiw760kMGUMVvTuNg/o
	MaDH0yuExU9tEbwU5k+1NatQ+gvbLSezt2THhnlj40o0NQZQP0k+x18NG/nxXf1G
	LJALo/lcNbhwvglCS3eJmlsDztd2f3VPk6h+sg+qXigfzQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxxjj1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b78fb75a97so48825991cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116334; x=1758721134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AEb37FUZ9ZFrM0ruvM0nnA6r/dbC6hG67INK4u3oVrw=;
        b=PK4gqOmrW6EWUOn+qxaSWfE8pUgw6UP2EZqC7Vi8AIjkaQpexqBcXJFgfcOZqvPy5V
         zShfLIbWUVrs8cL7aXC7zvKGuxxtcCDIZDDAWxhHhoMb5I3p3PpEVgyQDb2uNha8yE15
         G35PYjnHjAcwmPNj/6Xg+cIij9SUDveIJwrhfSEArgww5KRd5AA8LoIFQOs0N3sygCGT
         MV+FuEdzokvnswlfPCr7ygsVoPRgSl8ir/bq1zjhvZeqAo2oXKXTFwZM/PoyD/0F8BXW
         GN2aSbi7YfI8C/hTzo19LliE0/A067rlJJtzZYdURNKnyqhXMcYZlZu+tqCaHZkg+/wy
         swOA==
X-Forwarded-Encrypted: i=1; AJvYcCUvcM8TknBgCZXzyedX59WsPDxw14bXLhBgzxhfT9LKq/mPM4va2dRRHqCSF5DnIovm6qdC3WcIS81F@vger.kernel.org
X-Gm-Message-State: AOJu0YzIlfzAiCHVkb7xcycX2qX4IIXUjUlNY5pV9ND22ZyG6V5KMsV2
	vWt9eFETeNY2fMcaEptPq8KulEy7SnH12va5SI6G+MrJxs6+85qph2b9Ax6zfYtswgixBmDsRqV
	Ub+KnOz4njXPEcOCmiMAHWXHmn5UCz3JgydpsesYX0syop141xs2ojAquqScLF/4p
X-Gm-Gg: ASbGncs4XyoYHmpG3c9UEdXk43HuS5P9q2D0GSLabGawseN+qX3MRtujfIn5qzJdO5B
	xd5fLXuRdEFDVGmI5xZpHkYlYt7OnA7Dny30MiRwClzF2xsU72qex0HuxLYlaAJhycRVgDdOyIH
	pqTnOg5hjAwOCmDFHG/qfSuhc8yyDU2jNLo6zua47t08q/KVLddp18vJ9hN5B/Iswij1Y0o9ilu
	2Zxi/Qr5MOnFXiMmyMMIY8FopowmVQDtkzO1JBb18lPIIS+Zu2Zlb4++4fBiM/6c0fvyMZ1tN3S
	TCLd9rJxg3+YmE05hacKz2dgtxuW2F0tI1wCm7E+dTbpUcr8b1KaFxMsAekaGR/qvb/3hu9LeG3
	2weNzBmTAuY1XlhXsf8R6KdAM2IhbmPvrFsPyTHOobY/0SGkvz5Jo
X-Received: by 2002:ac8:5f4d:0:b0:4b4:9550:47e9 with SMTP id d75a77b69052e-4ba6b276faamr27142101cf.67.1758116333668;
        Wed, 17 Sep 2025 06:38:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgkzMQK2lU8XCt0Sr+SErXfKdCjc4BZ7173ctPAQrQhNRm4t2Wv56etQwEQRN4aqeeiB3Ojw==
X-Received: by 2002:ac8:5f4d:0:b0:4b4:9550:47e9 with SMTP id d75a77b69052e-4ba6b276faamr27141531cf.67.1758116333013;
        Wed, 17 Sep 2025 06:38:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a0fd0825sm4354732e87.125.2025.09.17.06.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 06:38:52 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:38:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tessolve Upstream <tessolveupstream@gmail.com>
Cc: konradybcio@kernel.org, andersson@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingweiz@qti.qualcomm.com
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for QCS615 talos evk
 board
Message-ID: <f3y4ibzkyfdub6gszoliaenuiudfrtqfr5u4zqpibfdr44hr7l@z5ap4odsoiti>
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
 <20250909125255.1124824-2-tessolveupstream@gmail.com>
 <v2d4e6py34xb2hjrfnmlrmd7xme45equ76zb2c5cmftgylk7w6@5lmexwfupj4e>
 <70c2f78b-c3ce-4b7b-a961-9f3957ce40f8@gmail.com>
 <axtz5euoa5lyg5clwj44jhdn5gvfubic6un3ilndzzoy22rici@rqqk4eyw7yas>
 <3fae286a-dc5b-4024-be28-ab51dc907ba5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3fae286a-dc5b-4024-be28-ab51dc907ba5@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX3sp4xYzRYaMG
 7DKLy1IQk3xraWkRpw2dCh/0ttAZqsCothqyRWGu8OrF64NIa1FzuQ4aWhRn7MDhMD1GT2U6kYi
 Yqclzl5VTirLj0qDlYXjJCvLamS+UhJ/rTAD2QCqzDFzjRGBFgNEBEjphMg3bsDo1uRIScZIKXZ
 9LLj+2AWBcTEQk0PO0/HEG8wuv2A0tjHotlAZv99QtJ7LIousmR/b3V4MvVQgPLcpNsyYtzO2u2
 MvWhx1UPlQYIWTexWmecK637UBGQq41EBm4OJK5k5usulFzwWu1VGSUkoIBmfC4tf2ypPzLAyX3
 AGGDAyvcpW2VqJVtRlMny6HgSv50vk7TG5cjCxYw4JgMxozq5t7AzxTTKWslZnfsGSEDodYcjsD
 PQxrdLI0
X-Authority-Analysis: v=2.4 cv=MMFgmNZl c=1 sm=1 tr=0 ts=68cab9ee cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=Gd-i2Mvy5wnFlDERGwYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: Co2446QVHkALIMbIpp3owo_3nmxJ-CbA
X-Proofpoint-GUID: Co2446QVHkALIMbIpp3owo_3nmxJ-CbA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0
 malwarescore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 11:00:36AM +0530, Tessolve Upstream wrote:
> 
> 
> On 16/09/25 15:55, Dmitry Baryshkov wrote:
> > On Tue, Sep 16, 2025 at 11:22:02AM +0530, Tessolve Upstream wrote:
> >>
> >>
> >> On 09/09/25 19:28, Dmitry Baryshkov wrote:
> >>> On Tue, Sep 09, 2025 at 06:22:55PM +0530, Sudarshan Shetty wrote:
> >>>> Introduce the device tree support for the QCS615-based talos-evk
> >>>> platform, which follows the SMARC (Smart Mobility ARChitecture)
> >>>> standard. The platform is composed of two main hardware
> >>>> components: the IQ-QCS615-SOM and the talos-evk carrier board.
> >>>>
> >>>> The IQ-QCS615-SOM is a compact System on Module that integrates the
> >>>> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
> >>>> SMARC standard, which defines a modular form factor allowing the SoM
> >>>> to be paired with different carrier boards for varied applications.
> >>>>
> >>>> The talos-evk is one such carrier board, designed for evaluation
> >>>> and development purposes. It provides additional peripherals
> >>>> such as UART, USB, and other interfaces to enable rapid
> >>>> prototyping and hardware bring-up.
> >>>>
> >>>> This initial device tree provides the basic configuration needed
> >>>> to boot the platform to a UART shell. Further patches will extend
> >>>> support for additional peripherals and subsystems.
> >>>>
> >>>> The initial device tree includes basic support for:
> >>>>
> >>>> - CPU and memory
> >>>>
> >>>> - UART
> >>>>
> >>>> - GPIOs
> >>>>
> >>>> - Regulators
> >>>>
> >>>> - PMIC
> >>>>
> >>>> - Early console
> >>>>
> >>>> - AT24MAC602 EEPROM
> >>>>
> >>>> - MCP2515 SPI to CAN
> >>>
> >>> No WiFi/BT/ethernet?
> >>
> >> Networking peripherals such as WiFi/BT and Ethernet will be enabled in follow-up patches.
> > 
> > Why? WiFi/BT are supported for the RIDE platform. Is EVK using something
> > different?
> 
> We used a Quectel based AF68E module (PCIe for WiFi and UART for Bluetooth),
> which is different from what is used on the RIDE platform. I plan to
> enable these in a follow-up patch series.

It would be nice if you mention this in the commit message.

-- 
With best wishes
Dmitry

