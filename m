Return-Path: <devicetree+bounces-179909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C95AC2142
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 12:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9073A41F81
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 10:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C82228CA5;
	Fri, 23 May 2025 10:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HY+I5ncq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAF7226D04
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747996841; cv=none; b=Fe11WZNmlCW5KQx0otqda7MLJBtVP+GRT9YqWpgvAVlPWe7uyBMBXeNvBvzA7Fy/2CMfc5Tuv8vlZEyNX3jzeq0lnl8FVZKDxslKSDCn7IEdhCQA/F+kocDf+VYO0/KyI/adY7KwhMvH0UR9TvCTdhqHdbVWdvpJy3a3ELhuTf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747996841; c=relaxed/simple;
	bh=eKIzRl8whYmJWRgMfRk9qQKPfGu9eKHJcVMsUR4mLj8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KP/LQVT51Ia5Cva9fBBcc3UUNrqtBgZbdA8eCTYJ/8cC9YeJmnOTqTP01z7ZxoV9nOzTCtu0zSY12SNUQeXkT6hv4LFrwsUN/7C6BgEkt+Z37dMMPa/Tb6O1csDlNyxPQcCf+3H7SFTw8cO1Fu5lijY3UkQPUx1ioqmllfiTSQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HY+I5ncq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N55HPH020952
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:40:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0aghzPgQSrTSjyV0pCADhW62
	t6nUijabrAzu/vTK8Jo=; b=HY+I5ncqvifCWHefGImMTgEXCKpLjrdjN6Tqhhp/
	ZRuVeihl9y7GTPswJDChcclA8ZSfDMt73COkpgH7H5n8HMRARLpfyBjkeMK9N0iJ
	ijSdDU0W8bhD5M0kOL/S3bjaReK2MeLiWBSQURINerCrUcpn9wD7mo+7Ubp9WHH5
	2D5+Li+JjLyvvfDsNAx5vThtu5kI2gmPDltfhEkUWJSJ7KSB1ra6Nm0TuASgMwqH
	y/k4hosLmEMDwhZZIPj6tZQfcLn2GSe/uZeRuvwr2jBjyTlGBrra4x/BU+ZS1E1c
	m1xqoY3pkmfspe6PcAb2PlTtwcXrpkxLSQ8dYtGstyE42A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf09v9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:40:37 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8b2d2fef5so140958596d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 03:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747996836; x=1748601636;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aghzPgQSrTSjyV0pCADhW62t6nUijabrAzu/vTK8Jo=;
        b=wpClBeyOvrejCTQPVoHnbgSoSoIYZj+9E9vsbYogxgwbtATW0lM6QFtF0l8+s1zWRd
         fSzEfOQEmiBydjMR23GKrSQ2PErY9anBBobMU8jMnPNtK/Oq3v+b+uYt0530hYiW9cHz
         pXVAZgJu/pqczTVP1KsDJR90MvegmR9lbScmPzl7iQ1N10IToqoig2q/IoVusxdCVEaF
         hP2tpNFu151jDH+ZfQ3M4mran62cQz4cb4/FtcCcTGL4OwiULTg6amQkjPAG9NYoiuDw
         XyBoZ+Z9wqkrsExepF8tdz6GNKOEV+eEejyOt9y1/00IDwsgEK2dW+7JB46fdaJEdaz3
         OeZw==
X-Forwarded-Encrypted: i=1; AJvYcCXzfCgI6j79MaZZnSigaIU2GwESiHMosRegIvbgFf7CvGEWSpFC5WBJEUT5CJZTz8ZPMA0hLbtjmCMU@vger.kernel.org
X-Gm-Message-State: AOJu0YxqshHtEhoXmRkd7ANytVtCaiOaLiweLMbp71Wyts3mKIAJy5LA
	ZRNGtZm7cVkdg29Ev4ClfyawaXG219y4b9ruEC7B9LBsYvX/rylBGzUGG8d8i4jphYQKnGrJkRJ
	HN/m4LogYnreTFujNs++yzm/djw9HL41YjKFreBh48Q/i+26FaoY3G79L9btkqk0x
X-Gm-Gg: ASbGncsgmrOOH8PRy2ew9MGQskNpbmyhH15IAuPAm3IaE6yiWFH5VlV1nvJhsmKnZJ4
	rxkaOu7oCf37v3Th3AVZFq6zQSdynbxhGh+CxCbIZLMGDWqY1ChjiG+UxsF5nPTaOJGjWSew7cG
	NUlrjMOhxz/GCNqbetiqqpwIxVPRM44g5hnVBmjIYxLxIirOtVutld4iRxQ52Z3PjlF1ZrAAWB4
	+5e1C25wv5KmHZSw0KLNvpiXleOaSdmCe11N9uxCuoNHTrqgYdrCrF8qz3uEPHZLpHyLCjx7RUZ
	x4O6ABB7EqUwBiFWb1z+jhd0pJQvLruwGxQkdyOLk/ouv1yhWJ9x06XSaVlRHBnBaLntpnu8E6M
	=
X-Received: by 2002:ad4:5742:0:b0:6f8:9b78:1bf6 with SMTP id 6a1803df08f44-6fa93a31ee7mr39675656d6.18.1747996835818;
        Fri, 23 May 2025 03:40:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHU9W4aT9C7+lHR3MtGWUbLc54LW2rcHq757afZeqo5dpPSrVYSZ/EIPiIYLTkFjN3sddIMoQ==
X-Received: by 2002:ad4:5742:0:b0:6f8:9b78:1bf6 with SMTP id 6a1803df08f44-6fa93a31ee7mr39675356d6.18.1747996835432;
        Fri, 23 May 2025 03:40:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e7018349sm3792363e87.142.2025.05.23.03.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 03:40:34 -0700 (PDT)
Date: Fri, 23 May 2025 13:40:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 02/10] arm64: dts: qcom: sdm845: Expand IMEM region
Message-ID: <fjx7p2ab6c3qvwakrpj3zsjnhvjzwbfszvuwp6edf4rlehxdih@ucovc3r4fdfl>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-2-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-2-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-GUID: GJxXG-FCo78q6leoQnmZ-clTSUZKZN19
X-Proofpoint-ORIG-GUID: GJxXG-FCo78q6leoQnmZ-clTSUZKZN19
X-Authority-Analysis: v=2.4 cv=ZP3XmW7b c=1 sm=1 tr=0 ts=683050a5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=PIzHpPEWZZtzk44p-YwA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDA5NCBTYWx0ZWRfXzcO6n4qaxtW/
 4tsVKN0GSpT6ysGjl/RMLzbRqHj9pRhtdGh3BA+p/ZhdnILk8bylZtNyOS78Q7bkH3uzhw7nzkJ
 WYmt4/2yyelY+sNRE7T02b/EWnPb6wpQg3OuoovK6Pmn90R5lglcxjx4FBTQ3GQJWcgapTVncLK
 oCkHJY6qvyQPfNL1CDUlJRNTLKpLsX8jIRlZmu71MROj7gLVmE3IN8hTJPQwsPWyrzOnjR0vxVH
 ZGdGBYESzvXcxwdVjbUWAflVOoYcC7JxzTGV56kbPrtZHwogK4jqPlDHrwQX2k3RZkUF5b46S4R
 fwSxsNlfY20QoUV5sttjPkFC8Bjo/qF7pQUhDluKbdQ1DUBhWzajf/ixNK3HZ6edjvuWAZvfh40
 BqqBElkmHF63PEqdCTyudbHamcKqSAUKycFC8xf6Gtdofk258eiOqanC9Ju8IOTauc88GH4q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_03,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 mlxlogscore=552 suspectscore=0 bulkscore=0
 impostorscore=0 phishscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230094

On Fri, May 23, 2025 at 01:18:17AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> We need more than what is currently described, expand the region to its
> actual boundaries.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Fixes: 948f6161c6ab ("arm64: dts: qcom: sdm845: Add IMEM and PIL info region")

BTW, are you sure about the address? msm-4.9 agrees with the current
one.

> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 3bc8471c658bda987d6fcff3359d63b367148e89..6ee97cfecc705c317164fbba8df426f6be52e932 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -5081,18 +5081,18 @@ spmi_bus: spmi@c440000 {
>  			#interrupt-cells = <4>;
>  		};
>  
> -		sram@146bf000 {
> +		sram@14680000 {
>  			compatible = "qcom,sdm845-imem", "syscon", "simple-mfd";
> -			reg = <0 0x146bf000 0 0x1000>;
> +			reg = <0 0x14680000 0 0x40000>;
>  
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  
> -			ranges = <0 0 0x146bf000 0x1000>;
> +			ranges = <0 0 0x14680000 0x40000>;
>  
> -			pil-reloc@94c {
> +			pil-reloc@3f94c {
>  				compatible = "qcom,pil-reloc-info";
> -				reg = <0x94c 0xc8>;
> +				reg = <0x3f94c 0xc8>;
>  			};
>  		};
>  
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

