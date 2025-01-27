Return-Path: <devicetree+bounces-141063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAB4A1D493
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B8043A786B
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773581FDE15;
	Mon, 27 Jan 2025 10:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IgfXBgRu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0011FDA99
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737974032; cv=none; b=CLwsNTxVUsnPBrBbTvmrH129Xdcl0iXCp9W+hcSOYn1kwv+xESWSI3eY8QQuEff7XDtIeQGy1erTGHAs2xIzH8IbBvkOhmzMUH2p/qOO7JXvtgMMadEHW4C+vo9YZQpfifXi9CG4UDXUo2mGk2Z3oTbWcvQkD0GETCuu0lmpOyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737974032; c=relaxed/simple;
	bh=/2jpubJ76LTJrMU6CNiePQvY30kXVSm/q0TgYoXBqjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=pdT9OiOgU5Cio7JaHVCcwr0B/DQ++RuLpJ12fBRxcyRpHdh32xqu791zxSAM7d4DAQPTEsfvLr0tpBKkRHzNNwLRlrWu0nmyGiDat/+hVSy4/FrmSDGC0epLlpf2p8Ep05/cRNHNX8oWeP4mt0ZUqeqmfeI9uOfrbqyaOHkFGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IgfXBgRu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R4kSJN017994
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:33:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XO2U/FigudNpheyHXoXOoPHFQtk40Wecm2MIHQ46a/o=; b=IgfXBgRuoBpyzHLm
	87T/vhiyRMqeaMA8yDAoh2daETixNkgOlovwRezDOvWS62leBJ6onvmyP8/2W2Vs
	yaPhQkqGsrP0OxTjrYJ97Bius2/8L/kiC+YlOfB5g+/F8fD4KsgPJKlgd1hN4URI
	wesiJdh/lGXLr8P+/20hVMv4Nogm3FANwqXW6TJ3uzJVyQDlO6f0rbDIItiUCSI+
	VOqOvWf+tiZsRKwysHBwobzu8bkC9JklHyePd9urGKC/u2hhPAl3UHLFi6Q/JPuI
	IoX2MRce2lT9eOU1Wqo6SYE498VlswjJeDMNGJQG8dhUXuOR995TqiEGMuRHaez9
	w4/bmA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e3dr0n7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:33:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46e4842dbd0so14155861cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:33:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737974028; x=1738578828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XO2U/FigudNpheyHXoXOoPHFQtk40Wecm2MIHQ46a/o=;
        b=qJC2v7ltlwSeLlmV02VV+9VYRK+YUo6zexVPdJz6+MPDBtJglK6HdD8+Sl0MCu7vzB
         UbCl96hA7Aoetnyp7n6E83kkuhVTqsFYhsRHOyZPJDsKK1bdTyh7++mnHMqh/hIgkORO
         SjXsgk4FM2CgkalqQxGpQ3gHG8BzRVlDmZHJV05lVKmC0qgtm+nOwbsOmWW+mWrAlAK1
         X+eZYXC9AdrWNO7up7VKReu95DB6JTdgoipuDH4wBES2X8VLmK9HQsfokZiNzG7od1Zc
         T0EpGYAn//Ud1ySLOHhGU0Pi2FtbmH65DKg8Llak72l8XS2lcsi4gt31uYJWbmBHnwvD
         /ABQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9u03Hmo8f9IuTWDhtmK+gEBO3DjzRpvddLmQIE72ugkCNGQTsG6on20ufyOxAA9Rzj6/8w1HpWNES@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7YJ5aMArBgiFx9s/XooLblpHCMpPGqVsI8oClvNYqcyvQTJmd
	IepkNHqGwy2SbBHpUDZAv9RvKzUuDV9PW/qXHJjo2BS246mtfSUiX8w5m25rR3P4P/PmG3LNaqO
	e2LgEMYvRaw3bw9eXjhfOdsBCWMaRr9VXZkWB01GLu2SYY6tnvM8DHEsQ+kne
X-Gm-Gg: ASbGncvuOEK1HDuFOE/yqeV+NH5D7P8GIJq7XvGY6Eow/+CLwfHrZaol1HUCyZbS+DA
	Pt/p+ZxR54NT3Hbc5pXVJ9QkJAgUXtzsc80OhIWg7iDdiQ9ERW6tun2D/jqAzfsx9wOWtbIOqbX
	odlL1LG4UsNu9SOQno9QqB4WnTdeGR2at87AnN741KHPZp0o5NK0hAZNmXly0+MYoaDf5+SsUM7
	AILeAtVZs1k2XA7hEMG9R2OB2APQKIN7yU3nOPAwt0vMA76Aa0D5BBbrtpEkKvHo80CtJU0IEmM
	FMN8Nw+82ZE54Yy9Gx6wxp+y/GmiKpWF8kt89TDQmaSaYFmQ1Su/4EVe+uE=
X-Received: by 2002:a05:622a:1803:b0:464:af83:ba34 with SMTP id d75a77b69052e-46e12b66e5amr244210321cf.10.1737974028683;
        Mon, 27 Jan 2025 02:33:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESlsEC/uSt6b1mkLIn8XmnzDYv15ZT2kv/xQfb7JQbhSlZz5OYDm9Co0pS+uRxerAZbiUQAQ==
X-Received: by 2002:a05:622a:1803:b0:464:af83:ba34 with SMTP id d75a77b69052e-46e12b66e5amr244210171cf.10.1737974028369;
        Mon, 27 Jan 2025 02:33:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab67b28ad13sm513244266b.41.2025.01.27.02.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:33:47 -0800 (PST)
Message-ID: <e697cc99-e96b-4e84-8b70-23c5ef015a0d@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:33:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] arm64: dts: qcom: ipq9574: Reorder reg and
 reg-names
To: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250122063411.3503097-5-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: bcPL08VsGFNpSNLXQ-LGgjb0slwolIMx
X-Proofpoint-GUID: bcPL08VsGFNpSNLXQ-LGgjb0slwolIMx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 mlxlogscore=975 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501270085

On 22.01.2025 7:34 AM, Varadarajan Narayanan wrote:
> The 'reg' & 'reg-names' constraints used in the bindings and dtsi
> are different resulting in dt_bindings_check errors. Re-order
> them to address following errors.
> 
> 	arch/arm64/boot/dts/qcom/ipq9574-rdp449.dtb: pcie@20000000: reg-names:0: 'parf' was expected
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 52 +++++++++++++++++----------
>  1 file changed, 34 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 942290028972..d27c55c7f6e4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -876,12 +876,16 @@ frame@b128000 {
>  
>  		pcie1: pcie@10000000 {
>  			compatible = "qcom,pcie-ipq9574";
> -			reg =  <0x10000000 0xf1d>,
> -			       <0x10000f20 0xa8>,
> -			       <0x10001000 0x1000>,
> -			       <0x000f8000 0x4000>,
> -			       <0x10100000 0x1000>;
> -			reg-names = "dbi", "elbi", "atu", "parf", "config";
> +			reg = <0x000f8000 0x4000>,
> +			      <0x10000000 0xf1d>,
> +			      <0x10000f20 0xa8>,
> +			      <0x10001000 0x1000>,
> +			      <0x10100000 0x1000>;

The unit address (the one after '@' in the node definition) is supposed to
match the first 'reg' entry. So you need to update that and reorder the
nodes accordingly.

Krzysztof, is this acceptable to pick up given the reg entries are being
shuffled around?

Konrad

