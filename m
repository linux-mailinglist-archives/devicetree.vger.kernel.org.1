Return-Path: <devicetree+bounces-155659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F21A57B75
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 16:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27FA9188E0FA
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF10A1C84C1;
	Sat,  8 Mar 2025 15:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pm3Q5tMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76681167DB7
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 15:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741446552; cv=none; b=u+GpIy0YsDed2zdG1BwUJ/pG3ZzRGqEqXH0tcgmqwG+g8s00R3VEyKT6ERn9YTKWIbVDdDnUes5adXoCMFHSvsUPnmprRQTeD/8oT84Bg+c2lXkax1Yn0BcNXjbKA3Td7ZXmJ8ngKLktE7J9kl+c/aV9jVju0RejVRWUudy3tyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741446552; c=relaxed/simple;
	bh=3GFm4luup+pqEjZgGHZ7drgx+phEmjUyO+rtAkf0gdY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cw+mcCK7a+m7YDtUzG2zxXhRRnY9Him6CMy00ZQHKxk8eekD9gqSHn0HUyfAzHN/c+rvOxUZYKJbg1h/SC4oBDg4Aq4c4WlO2kZ4HJXucVI0Iq16zNnN0cCd8ogNyVo2UlQVdZAVMyg2KEtrDTBASqgmY1yTyFo4sOwWIjT6Km8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pm3Q5tMk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528AgIdV018524
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 15:09:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9WvEgSQ6fjLHoWS3Q+wrjvW0AGfYG3GKpopCgkxp6Ro=; b=pm3Q5tMk7TXVfjAr
	voItw4cmezcg4cFw7t8NmsUkDERgQUACEOGihn7lbmphMlWl8PPxm/jQPN/kzsxg
	pv2X4eHso0gs6UXwfFIJI2V+L+hpvTSzOMh5tD9PH1Kr7s8JJd3+vbEelu658R/9
	fENn5xZd63C8/+3exPGG2M04E0i2mJJJAdI0BqLAFLaq2ICqCryftaJmioOePiNg
	dDsmDVoeO/M3hjjvFDz7K8MGAkTFlNWei7No7oHiYGse7an6rhiJBM8QKDJ0OUsI
	BmJV4l9rtJJPLtzeUkBw3qRcZDivDihFbLTRXMlQSiecK+WhGQzAsvLR3Zj8R1Sk
	URtFKw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyt0r0v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 15:09:10 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3c21043so7530636d6.1
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 07:09:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741446533; x=1742051333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9WvEgSQ6fjLHoWS3Q+wrjvW0AGfYG3GKpopCgkxp6Ro=;
        b=SlmhxstyfzWWxY5OFKfEne6j6OIT3loHd0N74b1ZD3scf9yZkHMSLmx5BTsoyNrk7o
         sACmsD0v31tUDeenX70j/wTCPf9yQGKVUGNh7hRAWM3WQjsaWnd+AsOGtNLCz65a1ved
         ByC7Hd70KDT6T6H/EGvMiJSBG/t1H7HXWxyp1UH3z11YbCKrSBs7HalZHxEn1R5Ahj5Z
         LGdFG37KXo+TaHRM+OYgbC/VV6JmcmDtPsbUhx5PoKOouE2iFJAjVkVkE/o/ps+t7LVK
         dhVrxiI3XdrLVzfNJPcnX5ILXjEXFa32oXgHH4WF2ehAXMFC5PoExTOBdMXXk6SyOxmG
         iwvw==
X-Forwarded-Encrypted: i=1; AJvYcCXSHe+Pw96qmg/5murnsXPwL9rUp1Tv9gJkllFUyx+hLhtOMKd/n+FlmV35suR4TAEYnaOkty0V4yXG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw16NjzbskRHaN7a3MFMQaw+pxZMzSFd2IRMy7JnizXjG4bCHtz
	OirNgLY8iuUpJFvkdUebQEnhJteAR+HREBPMZq16b/NTTN5mnufqgDCqOSBMsrCEHZvYQeLEYn0
	arUeowMOiHJA7TU8YFxaS+cD+iZerMoypZEdzydojDBE23GeyEAUxiFaPNt2J
X-Gm-Gg: ASbGncseEqwkxXd8kqqK7mmzh9vQ+zAixBlhw8o1GsE7N4ToAEuLmaC8wCQ7nO9PPZL
	XJ8d0JcfTsmgUHxd5TqENyavwJz6iGNSoDHbm0S8bgWES3NsG9jCMBdznLbgC/kgj8reux7ldAh
	/+SSh5MOeJjdCkqV212KVAxZ5UtxrmLVa13O9+GW/YLKTv4W38AF+LyWLZkOzWl0aLl3F1GgnER
	bF7U31MJZxGs7zhJhocIsuzM+4pE130hrc0SNwUcja68JmHUlw69DwC/A584z2X7jHbE1NpBm4J
	aNEIiCc6R5Lqv3HVShCjj3sG14qQ2P2m8B7WgAQy0pHg1JRTlcqTCE1zJ97ArUiy1z6wKA==
X-Received: by 2002:a05:6214:5289:b0:6e4:2975:ce54 with SMTP id 6a1803df08f44-6e908cb5248mr17585286d6.3.1741446533295;
        Sat, 08 Mar 2025 07:08:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7VzZfMJABr9wvGjQaN3mynWkb62I3My6wlogqF3sUcltn/eOJ0ALm9h7T2SCMQYhNBFiMvw==
X-Received: by 2002:a05:6214:5289:b0:6e4:2975:ce54 with SMTP id 6a1803df08f44-6e908cb5248mr17585166d6.3.1741446532965;
        Sat, 08 Mar 2025 07:08:52 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23943878csm443575066b.23.2025.03.08.07.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:08:52 -0800 (PST)
Message-ID: <aff4fd18-59a2-4378-bfd2-840bcd1a2392@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:08:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: George Moussalem <george.moussalem@outlook.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
        kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        kw@linux.com, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org,
        p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org,
        robimarko@gmail.com, vkoul@kernel.org
Cc: quic_srichara@quicinc.com
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: IAlv5jJVOH6-NldOIiYsBkG_VGq5lArZ
X-Authority-Analysis: v=2.4 cv=CupFcm4D c=1 sm=1 tr=0 ts=67cc5d96 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=eQ806-ShdUuXvpoWo40A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: IAlv5jJVOH6-NldOIiYsBkG_VGq5lArZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_06,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 suspectscore=0 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 mlxlogscore=516 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080114

On 5.03.2025 2:41 PM, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add phy and controller nodes for a 2-lane Gen2 and
> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> one global interrupt.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 144 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 145 IRQ_TYPE_LEVEL_HIGH>; /* int_d */

Please all the comments in this patch, they're not very useful

Konrad

