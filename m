Return-Path: <devicetree+bounces-221421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 614BFB9F6F6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52AC01889316
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF46A212569;
	Thu, 25 Sep 2025 13:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bf3Ymrf4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5352C1C8611
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805795; cv=none; b=XjhYA6T7aFZ3MH09pSLcCDHxPMnrU6FNiIr08XxKpJ6LBTEZAWHfYFmwJNjtPIWfu+jEANMl+jnE2y972xOCL3ZIXZCfESsL+n48D/Wx6KbfIl/LBGxqN0mceaBZTa+Yszox2MVtJqARrAkgYiDrTT+DvdfhExykJ7+eOGEqNEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805795; c=relaxed/simple;
	bh=LUkPGomExGVULI3lAhO1IS+sjczn8/0/UAaLiJ3K8NA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UxC5cNhmEj+xhoxlUFTBofJkcuqxUr2C+gelpdYyImc8NmDijcjr2dLYCgxwmyAqzKIiBg64J8hBciSqp7D0XzDRsnUYQx9/ABbn16604eVWZZna72hn0sHzl3Ht7vPqFolI9lqipCEHFq3BjazJUJUCCIEUnyDhGlb629BBVIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bf3Ymrf4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9RtZC025283
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iWeAubHF9zfCQ6EmY+W2TtnfCGwxs19UWgV7zVoTepE=; b=bf3Ymrf4aYokmgDk
	j6rz9Sn07Xdql92GAlLULji+7S2uzFyFDVMIXk6tAdmdsRiCbzRj5OwyWVA0Bzcd
	aoJpugtdMuHlKdmR/VdB81do25BgZNPPVvKbOZYRvHVMJ8xJiVu2ChMEuSVqtyGo
	08lVs4mi/LGmSGhrqkzbM3CkxMKiHOZPy95zzw5XBT3B18088Q9ZyRNdaR7ssCym
	LLa9ZnwxwXsW1TmwncyyGxb+ffmIQJMSorMET+1ShBuBQQF/t6H+DhGse0Bw+gWT
	xrP0fC4jX0JKQDq7owxFq1Je6/N5T9B55JBbBZr/fDuXq/oaK5WQqPtoPCy2H4z/
	63WPYA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyf0gap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:09:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7c51f566163so2681126d6.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:09:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758805792; x=1759410592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iWeAubHF9zfCQ6EmY+W2TtnfCGwxs19UWgV7zVoTepE=;
        b=GtDuHOlL90DdMIk5oFzBRAhjiElNk3rglLC2x3Xz8dN95auU+XBdnMY3zq4NTUxnd0
         6YRHA9Riz87/iJ1tbkpbTbi6MgM70hP4311Cl942hfLnuaazDU5UqL61bpghB4IBXz+b
         Uih17gbXED01BQW00iSkPdLi2GrHlNmwzvnpPXiV5uTGbbRa39fykP/u439WGLi9eUNF
         I9cwdYw5PIQrlFCQOhzLgsmGOI2HS5Vab7nysUnSD1t3lvw5gA//U/0tQdbmWhvrpUoH
         hRSpOetvrg84LG4cxLsIE4t9AB5sWRGhUdlHDu52+XxJw6zlSVVlsr9Tr8yRVxkOGKE/
         udIg==
X-Gm-Message-State: AOJu0Yz02q2Zpu07zVzLsgmFiS6a1OdGhWdUklkYUKeTNgva0DoZLwbz
	mniYFp0gUI6BHQnQ3VWtB4T//kFN7mN+2OghftHdDK1D9Bcw6fEpHr3JGKWHdh9tlAwu/VmFhtL
	XmtAnNLiwvLqqNrSi0fM+eJP5EiROWYm1ILF2ygHkEi0X1cPgpurUd8wtFLeJ/VC4
X-Gm-Gg: ASbGnctYRUxV/MTgp5i/poEWQ1wF9WeDsLFyuVebxP0PXrbbJ985dmTLa/+C+WspX1G
	S+tvyMLhYl5jmA/Q8gVe1HGa2UZiL1QOrDKq2A8wrYs9rXivC8uZpUlfLxUeHSwOKux8ydOM7DJ
	xQc4k32Ayv+UGtZTfla52g3itIB0rTkJWUOSiajPZnlruu2Bfo0xRpHy7StrDhoN6rm5wxJAmTN
	vIOogOJ6FyaWVUR65Q16Vle8UsSdb84aOVXy8ma68XovswrAJLhf1gSjK9oXfqRQ+daYY6QIEvk
	vCOaZZlKz8TRFidYRx1OaOREmzbNN3w23DqO6OEJXl70NokPzAt+3Wq3xt0vgipQEmGyVf/edVT
	4ekFXpqPlSfDugd6sWlcv5w==
X-Received: by 2002:a05:6214:2a87:b0:78f:e44f:bb6f with SMTP id 6a1803df08f44-7fc1824ad67mr33135616d6.0.1758805791837;
        Thu, 25 Sep 2025 06:09:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8DFB6gs7FIQAKzZQbcv1CgmvW4N3pc3mdY/dQgNoFWNXxzs7VueuwtbmIfovsH9VdzwJF+A==
X-Received: by 2002:a05:6214:2a87:b0:78f:e44f:bb6f with SMTP id 6a1803df08f44-7fc1824ad67mr33135166d6.0.1758805791194;
        Thu, 25 Sep 2025 06:09:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629584sm1196730a12.6.2025.09.25.06.09.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 06:09:50 -0700 (PDT)
Message-ID: <d16e8c07-6c10-4c91-9bbe-a260f0497d29@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:09:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: r0q: enable hardware clocks
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-5-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250920014637.38175-5-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: E6KyWRmofug3yztlBiZ8Y8GlOjrY9B2a
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d53f21 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=C9kalEIZS0v-erluJTcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX4R3AcBaJZUBY
 3dlioDBJwHI+dS8P1Ca//G4AFIqvW00H+194bF8IPvWoDd8pCq12UB6cilBESkLOf1sCw1pGPhj
 VaeOHkLiAUO2icfHNrwk4aQRgPaggPlhdycejWN+5KEBeEtYTCG1cXdSo9cESD/1StYiOLws9Fu
 DARmwySC22euCkmoLW9EKZjlVotxbaWdJwwo+qyPAU/uaLiMndz05aQljUmGW5aq6q1vnMKFDnD
 zvfyDUHLzKeTzaHNwqpFHxhJuc+oCE2IBdup5InGZZz8G7WFXMRD0tDV/a6Mo7+1NX9I4EDj2Fy
 itNu+ZSDb0jpQweFCFOeHWPreDPSYAPum7jUO9mIR42vunRiv08oSJsfd+6T5LsW7C7mpuFMICK
 4dJ5aiR4
X-Proofpoint-ORIG-GUID: E6KyWRmofug3yztlBiZ8Y8GlOjrY9B2a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On 9/20/25 3:46 AM, Eric Gonçalves wrote:
> Enable the real-time clocks found in R0Q board.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> index c1b0b21c0ec5..c088f1acf6ea 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> @@ -225,6 +225,21 @@ vol_up_n: vol-up-n-state {
>  	};
>  };
>  
> +&pmk8350_rtc {
> +	nvmem-cells = <&rtc_offset>;
> +	nvmem-cell-names = "offset";
> +
> +	status = "okay";
> +};
> +
> +&pmk8350_sdam_2 {
> +	status = "okay";
> +
> +	rtc_offset: rtc-offset@bc {

Is this an offset you took from somewhere downstream?

Generally you *really don't want to* poke at random SDAM cells,
as they contain a lot of important settings (incl. battery/charging)

Konrad

