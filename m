Return-Path: <devicetree+bounces-217250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF58B571FE
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93131188DE64
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF46D24BBF0;
	Mon, 15 Sep 2025 07:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nsQLO7UA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BE62E36F2
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757922595; cv=none; b=JrgMAJ2JpVN6ID4w62kkOhwIpVwd2HbuckqujVEYJebk7aVrzbBgxDBi6Q2O8OOQwmNiIdp/G9yt0AnNEAmu5AuxdVuoMOTnZqWlEzsBa62ZYQp1ehQBYcFdircGdob6ZKXe8LbTDSIlAgnGyJ/OILLijvY3HRW0daDhfdnUmwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757922595; c=relaxed/simple;
	bh=nJbvDWyIsUQWk9OzO7GLVb1p8RNpMPZw5O64MziGJsI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fkVdXUTsnH+tVZv7T+b+taRWypjyTnBl1F8cKPeXhC8UY8qd5PrqDNgOi1zg9Zv1AZzhCBih3n7fAkvC6qTpmoZbffPI89wTv4j+1QZzs8CwlbJT1lHFHAdI/edXpBX09wErESFwY9ZrtCuOebdqvClh/gGyPr0lRRhacqiLD3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nsQLO7UA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F7I7gI029631
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tnkhKzB3cTjh1Jm0VWCLO2P2vkgaZAhGkakhCBvhtj8=; b=nsQLO7UAf5OE9/3n
	c7nyvYhh8Bj8HiXH5HVE4YK96wkYQ+N61SCYjfjxtfRml8MzxjcKPrc7UAVZNpc6
	MMMcg5n8OD0TtHjxiX1eP87k2nEXcW8URKl28diMLopdB/XrMTeMNnxjNDG9+xHz
	sxBeaVknR8zj7sVTLjLCEKGe+V4o9JAJN2Dhiky7JOyOzuNUCjiomgE1UBVKoiGC
	16jsNBmK8eZX9JSxh1NGZCiIf3uHUco5uMxxwcySRdDwVDWfM+2nhWGJ34V/LKN9
	n6odQ39uQiP6VESsKvaUvZeo4FSH/AjyF2Bq1GrPfEzEmpPgkpFFeMG4elqo2OWW
	2ytIzw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u53vu2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:49:53 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-726ac3f253dso10682526d6.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757922592; x=1758527392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tnkhKzB3cTjh1Jm0VWCLO2P2vkgaZAhGkakhCBvhtj8=;
        b=SOlNJO9K5uz7OLQ6SqEq1rZ4FcMpontORuPos5g5sg2fOYkPs47cAefqupZOGzz1Gc
         Bwp53T1295YKWoaWoujnTRaXF8O9pqs/xPSPABNVmpiwHaljwVV5dWwBvfQxo+8TM591
         dp5N1JZpl7hvYk3RpMqwaiSO8v/r+xJblTmvjWwSRa0H7OcEJ+myk5Yggw0oLEM7b0Wx
         RynVJcojjkoGdjLGBcnC9kOwinroRvJGBKNNz4ii9lESqHPF85aml2qBaYPC3/f0/eq6
         B42f3779a3EPP1ZTOSkci2+VLMeqPrGrvW0SnwcA9aG543s+VulgdynslFic+wjoDf75
         CV7w==
X-Forwarded-Encrypted: i=1; AJvYcCUW1lcbMzxO+ZS+geQeU4MOSD1jMEzeZFPqSPby7xJhyBJCs2er4d+x7f+AlR3fmkqxU2RZJD0CbN7f@vger.kernel.org
X-Gm-Message-State: AOJu0YyRSuHIUVlcn5hMn7E6bwAcJkytN56kOPbEoUzrHjJ1ZPVHIrrC
	4FJcjqHUyJ4QEYu9LoKjHgnzJmGijkumsqg9/t/8+A+aYCou5CK7AYDSsAs5+PTzLjXWltP+aDd
	R7gHQf7x/fvkK3MtFflVJEPA5LFZSjD2kFYIFbtQ3sbnQy1hBGDLQcfFx+9Qwj5eb
X-Gm-Gg: ASbGncukzG0uWd/PpPsb84cORH0dFweNnmm3uN+Tb36ijHaYqyljwuZtWLDnXhW7Q4D
	2Hk974GZ+Gvtbvo0gB4DFKM6ZvA/IIt3J2oxloZ3+vx3we8EMSfu8Os6coFozmV5KOGI50yMzG1
	23CxCgFH76Ttz10cjTtZa5ZWqq4DYn7r+bL266Bvdiu0U3JKahmUh/ZSEtbTdBAHu0GY1tXzvHt
	DsoH57rChFnHqCdMSn0myL7tIxe5L4N5Gy1vWLLFC6wSWtFK+xgpiaoxmPWrC8GdBnF/jZ4x7L7
	a21mAn2P62B4K+H5s7ESa0ywwh2adsH+3XuJO1aP3KXESTdHzly2osC+60Bj939Yv1jW7Q2JaIi
	hbrCSouFFSIpuJKBLvraw2A==
X-Received: by 2002:ad4:5fcf:0:b0:74b:7908:b037 with SMTP id 6a1803df08f44-767aeaebfd1mr101391736d6.0.1757922591678;
        Mon, 15 Sep 2025 00:49:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHJ2mWH2t4Qq8AtZmB7v2EaqSnwJW0KUMh0XXzRrfB5UlrVR1nKNYtdQ0ViWTInmxe61E+gg==
X-Received: by 2002:ad4:5fcf:0:b0:74b:7908:b037 with SMTP id 6a1803df08f44-767aeaebfd1mr101391596d6.0.1757922591270;
        Mon, 15 Sep 2025 00:49:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ee7b531d7sm6199740a12.51.2025.09.15.00.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:49:50 -0700 (PDT)
Message-ID: <a3ce0aa6-41d3-4ce8-adff-14c767d7f871@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:49:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: max77705: add interrupt-controller
 node
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com>
 <20250912-starqltechn-correct_max77705_nodes-v3-1-4ce9f694ecd9@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250912-starqltechn-correct_max77705_nodes-v3-1-4ce9f694ecd9@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: i3xZnEdn5LjYkockZraPFbuP33Pnu1S9
X-Proofpoint-ORIG-GUID: i3xZnEdn5LjYkockZraPFbuP33Pnu1S9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXx8CMgTYfkPBY
 58NwYekSjatK984UQhpzPaE5BqMDsG0MZ+9aNAvIJYecgt1N8w9hlAtKeuMHtix/k6qeRX4G5W4
 RJbKfxSXzycGbdLa/XXy6pANOfTRjUTRBY1qlHcDss3kE3vcb7mpDxkM/5ggATUIT5B7Xljvubw
 9hWhof9YgvgzrgrYPab8UGlY3IkeeB2l8jCoSvzLKA+rj683fw5vVjdrVSLSSr3VBq5Dx05hMAz
 0q+6USHZJv1ekSSLFVKVlSS2+kwNXZ1uuGg/shGQjqORfKVBVbdcdsoxtl6lVSfxYdyYdUI4cWI
 r6I4KYivJmmChVtKKxFmXMLkskGlqBacQkiIjDwZkQ4Un1B1Rnq+y0DCv1CpQKfLkfBNcfBNOdS
 Cz/Ia7BZ
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c7c521 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=8NCsgvPOa7tqS022DyoA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On 9/12/25 6:47 PM, Dzmitry Sankouski wrote:
> Add interrupt-controller node, because it has dedicated interrupt source
> register, to determine which sub device triggered an interrupt.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
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

The MFD driver registers one more interrupt, and these don't seem
to be what you say here:

static const struct regmap_irq max77705_topsys_irqs[] = {
        { .mask = MAX77705_SYSTEM_IRQ_BSTEN_INT, },
        { .mask = MAX77705_SYSTEM_IRQ_SYSUVLO_INT, },
        { .mask = MAX77705_SYSTEM_IRQ_SYSOVLO_INT, },
        { .mask = MAX77705_SYSTEM_IRQ_TSHDN_INT, },
        { .mask = MAX77705_SYSTEM_IRQ_TM_INT, },
};

Konrad

