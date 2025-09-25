Return-Path: <devicetree+bounces-221623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC82DBA16E4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:50:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B6A016E533
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A569A32129C;
	Thu, 25 Sep 2025 20:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LrQ3XmYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF340320CAB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758833417; cv=none; b=EgekXAG1zZDAqTClTgYDVLqRkdGDHineq2JQbeerCq+S9biKDmX7f4qUXlNhuOn586liWpMT4l56b3nHrCvGURzo3CWlgCtKWNwbH88ujChpr0UldUb+1Nt2UMVOt9MrQqIJu64u+48Rsdkncp0KkkpEtXvw3hWTrUrSrSWSGMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758833417; c=relaxed/simple;
	bh=r2YlAhPV4An6J7hULsM6/H1cMTjJZEVgJidD/lCKr9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a5DR2W2CiotbBXJZ+iTOv5phz791bJYKprwuW6hHTs4ZuzQS0Iw48p7Is5jZRgKVvq9xmArFZHvPqrSVxrM/uIB1lJKBW9oeQRbqiguGuPSC4XWFD7Rmw8GLIW2V4YH8b251Vl1Ysht8b3tw4oV5lT4ARbqFz3TachNGCegr7zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LrQ3XmYc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIUehu005130
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:50:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VuZWEyiEWq0pbO1/NGVDc5uQ
	XNChuhTmrxLWaVwuQbg=; b=LrQ3XmYcL0DG4P2UOn4nr7TiACYWrOVTK4viYH32
	p80D0cg4ol1u719nUcs6Z1gARcM+KryVBIx5VroHG6ziKhsDXvtAsa0BC38aHhIz
	nJKW7c9fUFgX8+zWgu4CqMmNJOadBrUvoAQZhFi0AT7rqjPOWm3IB+3kr9I7ZL5j
	Xzcu5auuFa2QYRZN+k9YtlwA9r5HIwzLh9A50PayLBtZ1lGjhOA6PZmQD/J0A6S4
	apM8gGX7q0pKcuLbyQOiStPaOPiaGWR6J4t4U1BWlst7ox72E5bUF3CLC2b2Lt6k
	ZVlDGY0+/zKpSucyUv8iNLHIKMT0VGwlEiMr5kNYyu7Vig==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db320awt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:50:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d91b91b6f8so32544311cf.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758833413; x=1759438213;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VuZWEyiEWq0pbO1/NGVDc5uQXNChuhTmrxLWaVwuQbg=;
        b=ZVd8NfDZ4OMSOkdiTJAAwmY5DMwP3uUQz3XnAtvfulETIxTDNJvn7D0xQiffVHYm17
         uY/7mPyhPd/soNXiF90COqY3VK79rxzVLdxIc63JBSlu5iQtmA/undqFZy7IcuSCyvfq
         cJsum2NpcHHO/4FLgKMfBYmhytgVrLCNpRDl/4veXsd82Fb7K0iAF4MFXgTejQA8v7/z
         w6esZYxA9wmDt+7dLIlqU6tPNJwNTzcNlwmvE8jeq5WYgu21MLZIoWd7h2jS+U6QcAaS
         jjaHeePui7X1R9ugyOu8DVr62muWXArxUqMMpbLCYMvoVTyPl5dVN175K3+VenKzqULR
         HU2g==
X-Forwarded-Encrypted: i=1; AJvYcCUKGSW31MnTOGYeJOLrymoPGn5Hp6A5g3AJONHLXlqcNZ3oJ1NijwL6VDLtkfLdczGgs3RmIsy9rts8@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg/M56bmO9piEsUmACXq74XmUeDiVt/Tx9k9WZELi11MuwIhQE
	3mtd4d+FqL/5d+pJjyO9h5x3dV+HOUuJ0dif+eHuNTpqNF8hDOVLaMyLpUgnF4nErAEIge7QEf/
	yoB9iP9PN88b8w8b/LI/8V3Bya3UI8S7c/7A9bS0Fj7nphEhzp4Mv4iw8jPqyKrVg
X-Gm-Gg: ASbGncs49nGDd4ZuljUsBkB92eKnrTNXQAyFhCZTtUWaZF54PcR4htP+vlGZKoNGnpB
	16yj4h5JK/uKz7cL6+afnfll8VVMPMdEIrxXeohD4lT2M2Dh+3ZmKZ8t/D/CiJ8e6+z2H5p92zX
	twmoyk4S2XOGCzZEJs0StpNkbDB481lwS2jV9KtpiG9rn2RvW7bOjdRrq6JvK7EWfIo4vi06dDp
	jG6Iia6hsw+gutewDTEk4NKzjxRntrxtXw53x57ydasSGuuWozyiPinejKcOn/cwali2KLCSP/I
	8zc+eZ7N0gxy9743P3rXqLrEOsySZibxuKTYUlBLfvznG8UEXjYjY6XcFy2MSFwf46FGp/GtAHw
	5seaM3jE7HhBGvROErZ3Ez/OsNQdYEpzhcy1Qa4PEVb4hskJ75YrS
X-Received: by 2002:ac8:5fca:0:b0:4da:16c:6ce9 with SMTP id d75a77b69052e-4da47353760mr66501031cf.5.1758833412650;
        Thu, 25 Sep 2025 13:50:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHElzb79CK00zBikzpro/uJvVAH0BcA+vsCJ2LVvui1GvHkA6oHCiaXkKmNCWx9XoRiFc9tyQ==
X-Received: by 2002:ac8:5fca:0:b0:4da:16c:6ce9 with SMTP id d75a77b69052e-4da47353760mr66500691cf.5.1758833412128;
        Thu, 25 Sep 2025 13:50:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a3252csm1066701e87.119.2025.09.25.13.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 13:50:11 -0700 (PDT)
Date: Thu, 25 Sep 2025 23:50:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/3] dt-bindings: max77705: add interrupt-controller
 property
Message-ID: <2v3uonqdew3tq5uddi2jivgmcqsicmzvs4gahvx4ty2dkmgane@a7nvyingc7l6>
References: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
 <20250925-starqltechn-correct_max77705_nodes-v4-3-93b706bdda58@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-starqltechn-correct_max77705_nodes-v4-3-93b706bdda58@gmail.com>
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d5ab06 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=8NCsgvPOa7tqS022DyoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: -vm5HkR1xLQ4DewFf6XmKBbbi3Of7Xzr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfXzDNfedJUnukw
 CLafnrcW+gZzAXNm0yTe03ILtBKBS24BPnREKAlRs5RDUGAjcaQ6hxtAcIGohhvVyUfN8RI/FSP
 rktV3J4o0JUGmn3EgpJfvAIthf5oZe/2paKN/tz0wxZO2KMYIzK1RagqWwhdR2PPEzeNhMWfCL4
 caVragK5/eJ2BGUT/sr9WzH+awgyjkuS24Qe3p0tvI8cGKbBmu44arz0oycEpx4AhH/L7NB1EO+
 N3WWN8MFhz/uym0A3vcAWXBmFIBpGPbo6hEMRYU4hIa6zV6f1t94HNudXkzgiEyhwc9xsoigJ53
 GoYMUU6dDMo+9ZdZ0oZeyoL6OnxGFnxdHiQgfnI2MeggAT3XhqpBKvlj7OpQbLbDTf3ZIDYG6gn
 uiPIkBvIt9ZHc7w9XSWBtEE8Z9E1WA==
X-Proofpoint-GUID: -vm5HkR1xLQ4DewFf6XmKBbbi3Of7Xzr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On Thu, Sep 25, 2025 at 10:38:39PM +0300, Dzmitry Sankouski wrote:
> Add interrupt-controller property, because max77705 has dedicated interrupt
> source register to determine which sub device triggered an interrupt.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
> Changes in v4:
> - fix commit message: node -> property
> - fix commit message: minor reword and punctuation
> ---
>  Documentation/devicetree/bindings/mfd/maxim,max77705.yaml | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml
> index 0ec89f0adc64..d265c8213a08 100644
> --- a/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml
> +++ b/Documentation/devicetree/bindings/mfd/maxim,max77705.yaml
> @@ -26,6 +26,18 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  interrupt-controller:
> +    description:
> +      The driver implements an interrupt controller for the sub devices.
> +      The interrupt number mapping is as follows
> +      0 - charger
> +      1 - topsys
> +      2 - fuelgauge
> +      3 - usb type-c management block.
> +
> +  '#interrupt-cells':
> +    const: 1
> +
>    haptic:
>      type: object
>      additionalProperties: false
> @@ -120,8 +132,10 @@ examples:
>              reg = <0x66>;
>              interrupt-parent = <&pm8998_gpios>;
>              interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
> +            interrupt-controller;
>              pinctrl-0 = <&chg_int_default>;
>              pinctrl-names = "default";
> +            #interrupt-cells = <1>;

The same: please group them together.

>  
>              leds {
>                  compatible = "maxim,max77705-rgb";
> 
> -- 
> 2.39.5
> 

-- 
With best wishes
Dmitry

