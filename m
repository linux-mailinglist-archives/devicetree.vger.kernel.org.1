Return-Path: <devicetree+bounces-203620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D5EB22153
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3DED7A1C70
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 208E72E610E;
	Tue, 12 Aug 2025 08:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rl5PFVLI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471AF261393
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987575; cv=none; b=IRB2Dh/179V0W7ckGiCE38PSJj5KEf5p92nDKWT+qlcgQ5DTYHfsNyL0Bw08IHjR7y0BbPzCFuVWN5mdwTPRYvCwliGZz/zy11XfyNKVf9fHleVb5Y556x6DFwJY140ekyMv41SvCYirso+iYDyc8+9mnWOx/OvwZlxMdOw1+5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987575; c=relaxed/simple;
	bh=QbklMDS4M+7Gy4dzmg7gInkywpUCJli+ww3SGtE3dOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dtDcH7gVjWI4BU1N3GH3ncwnZkmry556ueLCobSWsSwNLkwKDqD1MkRtLtPMBdZrF2iQ3mcUfUcoLwVmsagB1Un+LJbwIRZMQfltoHHum8tDYbOLMHog/qZHn1Oo/llaRRIP9AsmoNljRuYp4HvGUCRpE3qBWTmVHRM4JwYdXaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rl5PFVLI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C6oWmH005641
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:32:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IsGAhOBPhH6jXb8JLaEGyYLWirWIfQYG+A75B8KfNqM=; b=Rl5PFVLIMkTwvV2G
	PNL46chUp4em0p4sYF7iQMs1xSk6nkmQTeIq7r0ptsLXeHFe0tA7AAmBb7HdJmqF
	clp5vz1RZfP/9d61Sc9pZkS3iQrZ+DREH6wE0o0HGdnJw0sSkVdtHdkK/da0UQHv
	ARtzYFDB1W9IXZ9QNC19i18bvBo4uPPJcK8H7pQteADuYqzv4l+qSGnq4s8sI1gG
	xWhhimG27HE7NgWH9/s9zetMMjgQRYBO8EEM8Oh5qEUCRny6O3wwLLlc4SAIIFZ6
	7F8kHu73KJZMOpaUUAyaztcYjPOuf8OyZ6oZMfXnxCEjWLkOzftOTOkpzzxg1Aai
	Mb4mkw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6k8bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:32:52 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76be85bfc0aso4146335b3a.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987571; x=1755592371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IsGAhOBPhH6jXb8JLaEGyYLWirWIfQYG+A75B8KfNqM=;
        b=DzBP9YkpS+4zOiYkrIYFIaSpixZG6DYY9MOZbeZGbBVSFbRMXyZLmNHXybTo1Smzuu
         XIRKMf8JV1BUvl4hPzcPj6j7a6KwsgtOzhm3mC1Bt2ApMyW4ma4m/iULJIWggY9AAIEK
         ZsIkuhV0y5THU321KvymvDnHxW0dU+riBKiinp9qr5Zh49iqtGlzjgYAwN2MFAyKH53+
         pPn7MOJEpR7Ew919p09FIdFGeFcuJT4h/N1cnQmwmlawdpOWtaZIWZbLfrfFbGgQdBnz
         8OtLniCe+Qhqeu96DTO1mNQKpcqYPhEgMbV4deEaE/J0qnJOaQfm7jhT5rkxhZSIN1SE
         Fhdg==
X-Forwarded-Encrypted: i=1; AJvYcCVDQiW0/F0ffCG3suzEj+OZEptY+d7KESMq6mdbUJDA+XkQtTE4DIA+k0PRqydxbFrPyH2YgECGuSxM@vger.kernel.org
X-Gm-Message-State: AOJu0YzTwYaEQ0i5mZb22R2BhTMopwSJV1wnSzr1pl3kLyECEedL/0Fp
	jJ/W0vR+8Xo8JD2M8mE+l5/bM8/Pltq4TUZqrUwND50ifRZ+FTYrirO6DtuybwFwC5eazAUSUU6
	kfYWnmlEjH4M0BtqT//U4ozDV5F6okjthFu7QiIkmfOsUtR2wkEBN5fQtrj5unT7S
X-Gm-Gg: ASbGncuaO5IMiig7w7TPpDDI2SIhM+95wftaJ+CWGIYFYqE86Ua2wSXtUiiS+0Ej4vS
	K1reQ10hQlyziXbUzdCaZC4JnRfUWAPnJYtuA7a3nic8myjNqPf79+qRTNAbv/eKchpWbv4HH0U
	HBR5rXdIoSrO92mxsuFgD78A03WiDTmOMplEGJCbkbNJP8Rw6N1VCh/y/pTvcPJnpDJSpvL5Fql
	gcVJNmZ6ndxdSID7n7U3pYrDwbu7xxVCuE2dhEcJVYL9WVg52pZlHhss0nqqWpDHfVIxWcrmZaU
	d/ckAXCYhmCZOTM+stfAmoL0+qTGTa+yACKUAiSNHabQsghQoklmmD8zZjDvRdRpWgZqq2B2mPB
	Xhy4/zZKfpsAjiaaKQWqz1Gts8Dds
X-Received: by 2002:a05:6a00:4b14:b0:76b:dee5:9af4 with SMTP id d2e1a72fcca58-76e0def6cd0mr3811791b3a.13.1754987571249;
        Tue, 12 Aug 2025 01:32:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhR2w6toMfJEA5k8DSMBAr+Hp2gto1dAdBDOIUnY9c0thK8wCmrUNrTBbF64qPxgnoUtOIGQ==
X-Received: by 2002:a05:6a00:4b14:b0:76b:dee5:9af4 with SMTP id d2e1a72fcca58-76e0def6cd0mr3811751b3a.13.1754987570792;
        Tue, 12 Aug 2025 01:32:50 -0700 (PDT)
Received: from [10.133.33.66] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcceab592sm28864985b3a.58.2025.08.12.01.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 01:32:50 -0700 (PDT)
Message-ID: <23e28eba-3c7e-439e-88d8-998decd2b285@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 16:32:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] Add Equalization Settings for 8.0 GT/s and Add
 PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX3eBAH4ZRrN6C
 MJH6fe7c1be30GwSJg9C2p5BiIMke0peEQdAwq2pflN2lXmOIkPRyVHaOzpZdOVV+sKjydAoTsK
 Pk1VdShP6oQAzL0/9xKaT8EMtIuOjb/06OZnzdj5CVFQ5G27oLfTwptUPJrvpi1Hb4pa+JcLGYN
 zVvk2RQKODuRC6IDJJUt9saN9/wG8ItDNwHNxyCTqGVob8PBb8HDIfxB78/9Lkv9O7y2pXwChJ0
 6opHF7DW0Z7My3lcxJ2FE3B8DMkBtp6WpRcDZI8LQWpmwSz9AHGTrrQW5Uq3rB8EjfN/B0PJmA5
 nB+vWEtGlYSzh3Wv2VXJjmldCG6Yi2D6Mt0FTjBqdhw+IebVu9WmKUCQhISzToiQcgPi4eb7pYp
 BLmKb3as
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689afc34 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=JG0w1mhhnlL07z4zywYA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ah6cYYL3nTBHlREPJHbd6ZugmLOfDF_8
X-Proofpoint-ORIG-GUID: ah6cYYL3nTBHlREPJHbd6ZugmLOfDF_8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075


On 7/14/2025 4:21 PM, Ziyue Zhang wrote:
> This series adds add equalization settings for 8.0 GT/s, and add PCIe lane equalization
> preset properties for 8.0 GT/s and 16.0 GT/s for sa8775p ride platform, which fix AER
> errors.
>
> While equalization settings for 16 GT/s have already been set, this update adds the
> required equalization settings for PCIe operating at 8.0 GT/s, including the
> configuration of shadow registers, ensuring optimal performance and stability.
>
> The DT change for sa8775p add PCIe lane equalization preset properties for 8 GT/s
> and 16 GT/s data rates used in lane equalization procedure.
>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
>
> Changes in v4:
> - Bail out early if the link speed > 16 GT/s and use pci->max_link_speed directly (Mani)
> - Fix the build warning. (Bjorn)
> - Link to v3: https://lore.kernel.org/all/8ccd3731-8dbc-4972-a79a-ba78e90ec4a8@quicinc.com/
>
> Changes in v3:
> - Delte TODO tag and warn print in pcie-qcom-common.c. (Bjorn)
> - Refined the commit message for better readability. (Bjorn)
> - Link to v2: https://lore.kernel.org/all/20250611100319.464803-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Update code in pcie-qcom-common.c make it easier to read. (Neil)
> - Fix the compile error.
> - Link to v1: https://lore.kernel.org/all/20250604091946.1890602-1-quic_ziyuzhan@quicinc.com
>
>
> Ziyue Zhang (3):
>    PCI: qcom: Add equalization settings for 8.0 GT/s
>    PCI: qcom: fix macro typo for CURSOR
>    arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset
>      properties
>
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  6 +++
>   drivers/pci/controller/dwc/pcie-designware.h  |  5 +-
>   drivers/pci/controller/dwc/pcie-qcom-common.c | 54 ++++++++++---------
>   drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
>   drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +--
>   drivers/pci/controller/dwc/pcie-qcom.c        |  6 +--
>   6 files changed, 45 insertions(+), 34 deletions(-)
>
>
> base-commit: 58ba80c4740212c29a1cf9b48f588e60a7612209
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

