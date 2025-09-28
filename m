Return-Path: <devicetree+bounces-222179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 049E4BA68C4
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 08:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB3AC17097B
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 06:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6728B29B793;
	Sun, 28 Sep 2025 06:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RuNq7OuN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBAF27EFFE
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759039894; cv=none; b=oYJUkvVxus+JS4ewgArd0O0EQtQXwFyzf2rcnz0QcxmdYewpuRsEshq7vthM3Jc9SkFISm4WM47kq/X7NODcgHZ6jTJAFglb8nykWx+1YcbffFd918IFSxrK5LERpwUmryWPFvxNOA55MXjBN+LQQZvQGRWgRH3X4ri1pf2AgLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759039894; c=relaxed/simple;
	bh=6EeLItj9RgH/iM48wpNqwHT1GBX744iD0+SHhEj2mxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FTdYbdZ5c8IurWgLpfeTdPiGjb1LOFpR0oi0cC+vAczlmRTU2WKq5alD4NnhZ0vHetyMHTPlbrkROHIJovvw3GHha6toeAmmQRi7JlBju2rgfsWSUJySfCsBa/FFZTN5oae9lIarn92jIp4BnQg6h1FdbYEtSTeSVsDYRJOlMQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RuNq7OuN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S5PJ8O014162
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:11:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x0y4r26rmfntPrF0VgZDFQuaSwpW4geYVgGCdzUjQpo=; b=RuNq7OuN3kDmT8W1
	aqOiKKlUwPa9Rueq+DMOSHvJRjYzZLciVeYThwt9DZCqOZgXwzWq3HhJ9h6U7ANM
	97Di47feW6nTz/PMY+Gm0KhekbJWs2JHq9hTpCE36NUBx1F13XupgV7rHozpD0U4
	6F9lDS4DFdu5tyZhGsITRUoPSH0277fdj5Z71noatcKpZFFZ6eOis4ESVTx7quoT
	66swkt6mJOj3jLqJCouXi+jt7ZMf3nwRmrbte4sProqlfo0HhO8aXvTiN6CUp2lK
	YesKRObkCWJemiba4guNX5CLWvG5luAgpaakOx2LVDSrDz8AiU9TZ3sW0h3B++Yu
	RMItHw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59mtjr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:11:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4de5fe839aeso49157121cf.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 23:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759039884; x=1759644684;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x0y4r26rmfntPrF0VgZDFQuaSwpW4geYVgGCdzUjQpo=;
        b=q7yTGNh3j8GmTn+laCHSpveRWNF1YqyTagc3+dXZw/vkgqaB5cb3jIOTpp9NhJBHR+
         d/ATHajeWRxxW3LFmLSqBsIykgdEBxfPINbuyX6yejnNT3P37kYB/xqDbviAyi64a1pw
         +BNsLBvzeDWf/MKNUWtMD3+fjoV/tryk6ioFyQjMYC7HKOyfdEaQFe0k5vxCFWKW8Kpj
         sV/X72tmtLwhKx5idmMMBHBgE5ufxRZhxEeY8Dby9bM6ljU5CUi/qOM0VihI5giCAF6G
         PLs4JM8pmYz9M00hjKFcPjsxg+Q4Bm++iEzqr4mDg2Bd1burM3AkMjxCeuJ1xQpP07OD
         J7FA==
X-Forwarded-Encrypted: i=1; AJvYcCXVweGg/8t7LsN0uF0vSfdnMKh6ECampD4AESDQXBxumGPW3rQaTVhMHsB1I41oz8WgN6JalH8xOZVP@vger.kernel.org
X-Gm-Message-State: AOJu0YwLZabiT+p9yHQaMcb6nyjakdWYhq/vPqZIvx/1o6/ROTVQHctd
	J5yYJKeCdK1tooC32qJAJ8PVVho0C6ylxpw+wgP+iboywpkxyjPPF7enlhxvnHC+b6GhQnVnvMk
	9lmHfL3hLWMFABWqUgC585CrtzSEGCarZZQ87sA7R4xxU64UQK649OCdEswYK4+3a
X-Gm-Gg: ASbGncv4XJZj1YItM2saoQaESi0eu+imhyZ/8wv2ibTgOkJNL/vdoUC5E1yHMBH4Btq
	3InrVzRRcpsnnwyts5EFeuO7QC4PisH8MevTAzES4eEIP/mYEbMNRFPNWGa3w3hD8+ztlOIc63q
	pgKhzP9NFDcfCdrWsucQV5FOspiGISkUHI4SGw6BzZEZu9fhkzJCYNZ8pI2cGtca1f/OqvDIv91
	BAbtUhAna9H7h+T8EZUhdqZWLNGZbZlx8QNy3VoleITl1Tk6b1tJlmkg7lnmM1kQJZOrTqNKDnA
	FQel18XLfE/yB7u+KprQ3cVPQI1cwLvnK9V6kYgwORku2kmpNi14vML3EblErlouCJnjmcSJnK2
	kbzIA2Vvv/cYGf52dB14iRZwgoxov6hI6b3tgn9NlSkF1/ceCncpz
X-Received: by 2002:a05:622a:40cc:b0:4d2:c24f:848f with SMTP id d75a77b69052e-4da422ec59amr161136551cf.0.1759039883876;
        Sat, 27 Sep 2025 23:11:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCFI031F4POmzN8xNjPo0knLdtXvaIP0iciO46OR4x2yq72HuKbRGQbQjE9f3v1Uf95N7c7A==
X-Received: by 2002:a05:622a:40cc:b0:4d2:c24f:848f with SMTP id d75a77b69052e-4da422ec59amr161136231cf.0.1759039883378;
        Sat, 27 Sep 2025 23:11:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831343113fsm3210443e87.16.2025.09.27.23.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 23:11:20 -0700 (PDT)
Date: Sun, 28 Sep 2025 09:11:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8250-samsung-common: correct
 reserved pins
Message-ID: <oi6hdvxqcble4qikfngpqc43glf6nwl24oh2ukdqwautbt4jui@geuzqecdqgsv>
References: <20250928044533.34798-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250928044533.34798-1-ghatto404@gmail.com>
X-Proofpoint-GUID: CsWv_0WtTPdv38nkKZ0efl9mvF3YQAem
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68d8d18c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=rMa14cLU_uRGXJEyJrMA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: CsWv_0WtTPdv38nkKZ0efl9mvF3YQAem
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX6X+Z3ntTt9H3
 FreQHjUynJK3VBYz6b+65h84ryokiUhAWjeHWUJFfAKNQ1+8vvgRCMvithIp+jxIZltrQwsz5Ce
 xUVN0Sql3vicRftfRCw2u8geb06agXwmLfx/YOoVObgMHUkonJwxmXdZ0Cr0P1th7eKyilnN+Sf
 K55NfhXc6QUNnpOwI5r0JA9SWHbM4rT+2PLpfPG/jWqSFHDK2agvoTaRL60rGkcoE1ySBJWFKH7
 LHoKM80CNpUc5lrvJDvavrzFEcQh5KahOKzOROdZwOBw+iFCSbnnzrTv2xmO0UirwXkMi+qSrQC
 Dzw8gu3JG4DgaC1d2WLA4zfZf1LpcknrKqPEyKxXu+epfR/VAnVxWtMY5PJhZT2ff5pOmMIItFv
 QXBIwoMrNFPj+KW5Q2YvmPrnqT/FzA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On Sun, Sep 28, 2025 at 04:45:33AM +0000, Eric Gonçalves wrote:
> The S20 series has additional reserved pins for the fingerprint sensor,
> GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.
> 
> Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
> Changes in v2:
> - Fixed the formatting of the <40 4> line
> - Added Fixes tag
> ---
>  arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> index 96662bf9e527..a87e3d23e3e2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
> @@ -159,7 +159,8 @@ &pon_resin {
>  };
>  
>  &tlmm {
> -	gpio-reserved-ranges = <40 4>; /* I2C (Unused) */
> +	gpio-reserved-ranges = <20 4>, /* SPI (fingerprint scanner) */
> +					       <40 4>, /* Unused */

This is still not aligned to the opening angle bracket. Could you please
recheck your setup?

>  };
>  
>  &usb_1 {
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

