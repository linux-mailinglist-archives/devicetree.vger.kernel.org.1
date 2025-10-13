Return-Path: <devicetree+bounces-226026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A41BD302B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E84C3B9126
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A194C271456;
	Mon, 13 Oct 2025 12:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Irwo3ki0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DC42571DD
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358962; cv=none; b=c/uwldpSWjjJMc2h4FTUben01VZsv99xyj3H9KAN8/SMyhQ40ZUkHZ1uc8alyeZzPeTM+UsGInGlycr/WAXzrjl9aIY2HED/GY6AQj76MwGooPeYBfXa8YMJdu0/ycYWMAZ3bI2a4/hx4iA0SFPtNZFy9BROumf1iWpQMIzDp54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358962; c=relaxed/simple;
	bh=E/YPQj9r4NZkVyM3wMp0upmXvE62DobvCrhkiCXXkJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W7x1DvZr8oOjmHI2O+eRIhDDsHh/ObUXVUcYV11sS9sE9OjR1c7h4sup3ACQidJJB1vBgjAxPxBCLEKxVyzvpU9HgjLvj5Cfxz1lvEmOB4pHkXblnd3OO3bklK25onKJxi3L79QfkxjoSqN4NeMCfw+/XAUSM+hG/smFcmxiLqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Irwo3ki0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAnUw9023476
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u8goP0px9a8ckKVRo5TU8/0r
	Gkad5U2lG1RKmUfiwgc=; b=Irwo3ki04+biq4RjeyRHjKxUmrs71JT5Nx4DUy+W
	7s6k94p4fH23o1Ua75eMkZ6so8DtxU5JYsso5BwqxPsVsZTasIPZ6fhJIDYeEWmg
	5q2qmvKgBp3+6pGwLSmGii43JqDalJxDZzt8H7GQ9XbXvOdT+QBsqT5yKxHPqkx1
	9e2VySl9KeHULiWcBfXiwxR4KwU+LnnmglW5c1r319HSfqiwN2spJxjNnim9lGNq
	QCRPrIg3piZ5KqsEtNwF9CcnI+yogY/5PTO1RrxUlcgNbmWCx5MfGp29KvJ/C44U
	rIdSB9y2NHkNhJqZ34hpRvSxCUhcZGVWSSg9msKGNwvgIA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfvdrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:36:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8574e8993cbso940159485a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358959; x=1760963759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8goP0px9a8ckKVRo5TU8/0rGkad5U2lG1RKmUfiwgc=;
        b=M28xT3xN4LTGlLJlPs1st4llK/Y1+KLMYHtu/qv/OQG93LMSUCUHNo+p0w1zOLtFsl
         emP+uA+ur9NbWDyjwHPuk7cSlVEyqzZ8gXpuqdD6EgGt6VWnbAnhW+gV5wOsAGIn8Wlo
         7wuUvC+J/b45112Eudg5J0yKg7TQ58dqp65J6RUGOzgleUIF8P2EJgH++mXsh5AQXs2B
         dWmsoth6ltXu4YS/MinDOiFoIx/MmzsMETCM/JFlYJy2tYymTr9Q0VVBWngPq73XdVBZ
         ept5A5/7WFmZ9vAALQ0wSUxhY9t5eyr7gsedEhTw8Pl/zfKQBrrW1ubKOSrjox8v4Vkd
         SwAA==
X-Forwarded-Encrypted: i=1; AJvYcCUgkiVZyZoPGmWiIj9e61wb/q8uMlUofQRmFL4m2uq9Gnm8oLJdHTzkUkVf56ZtyVwKH9UrtYkLcgPa@vger.kernel.org
X-Gm-Message-State: AOJu0YxycSeqh/HFzdKds1+ULBrE/vnNeF5EmsAJprKmj1zbsh1iHk/J
	x0p30wui0PouyqD84gkkA0gn5aMGneQSNvKg8cc+Nz2jKUxBH7Vmu+113vOTEm0t6tDuE21/uhg
	DhhBaFtkVALIas3OcYnLVcmt1wUs6IUcQgd8LybxGQgMhlsVJ1kRdR5jZahNL2lnj
X-Gm-Gg: ASbGncstlz+h02urLzIGd4j+XrASZpalayK6WEVaEbqk1gUzkQhKWMwUmQ4ph0g0V8H
	qF9Xr8dKClYSe33UDK/48A7z0yFnaS7GpBBWgzcU4VCwmnek4L/6o0cOyxDEej6TDDJQuConVPO
	mWzdROEjb/iMqRP/DSFDsIgB2bYv6hMpCgGOKVmX6wWBPb0S4zoS9WGjeX/3pBK/p4x1D76QV8s
	AeZ5zWDc8duroHaO+CHfo4q4V8QRtDYS+wnaLoXaK0h/ultl3Y1XXQcrzhfBGp+HxFJYGNYjX9i
	2pipJGgHLwT8m+jcJ7jAlaIklmlB4Rwg6lD5ykotZO262+wRaWZ2K6HqHYPOluzN/f3lBhXn3Tj
	edUme+yfCDrr+Xx2XAQvOuM8Nia7XOjfDzCBEh+kf2YDJekGmYase
X-Received: by 2002:a05:620a:2983:b0:864:1d18:497e with SMTP id af79cd13be357-88354ac39cbmr3044048085a.23.1760358959066;
        Mon, 13 Oct 2025 05:35:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwoj4faJclOVnlrUN8P7wIZhl4D7mky2VyxsU8g1O5JnX3k9H6mJ7qsn8Lah7rEGjXaxUOBg==
X-Received: by 2002:a05:620a:2983:b0:864:1d18:497e with SMTP id af79cd13be357-88354ac39cbmr3044042185a.23.1760358958586;
        Mon, 13 Oct 2025 05:35:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e4dsm4084850e87.22.2025.10.13.05.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:35:57 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:35:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: lemans: Add edp reference clock
 for edp phy
Message-ID: <c4bhkhw6xlaqlwhbataveafav6jcsrgnazk72lkgtj3fygwqjc@4bp5w4q5sygh>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-4-quic_riteshk@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-4-quic_riteshk@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX8Lf86sDAA99d
 01+kEFi8RSAxPRyWWCysqcWjY8rpOj4hgwUAs/Yl9lIw4ftYw4M13t0L4SLormoxqcsiDiWWhWD
 xMR+0bfFVta+KtwU8FsaLmIU35oS7gXyeqnZWwzzlaFrJdIDHqlOO9or9XCZdF+QpjYvxV3gEkg
 o6nI1THoGX/iwUtNbZI6TrVYry8GP/tad1VxG57DMmNl6v0Cp/nzb25ntTwuiVNJTRu+x2Cu2lO
 GRsXLL4oHnAHRVitOJpwSePZUEIoPIigmj8gdU9zXhqB4eBYxKschdE2lCjCbzTbDq4mbkv9bHT
 tOWhcP1oF7XbenXVQ6dBWp4mS7rFlNzSLQ0PHirpyJ61Adjb8R3rYHdDflGMRgV/ACB7H/kJsst
 pPT1u5+Afm43GW5Vxp3kLyTH41NuLQ==
X-Proofpoint-GUID: 413NxLu7icY9CNf7yW0-sIRA_aLihNi6
X-Proofpoint-ORIG-GUID: 413NxLu7icY9CNf7yW0-sIRA_aLihNi6
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ecf230 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=xNGN3EASD54c2UHPMiwA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

On Mon, Oct 13, 2025 at 04:18:06PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for edp phy on lemans chipset.

eDP, PHY, Fixes:foo bar baz

> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index cf685cb186ed..1bcf1edd9382 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -5034,9 +5034,11 @@
>  				      <0x0 0x0aec2000 0x0 0x1c8>;
>  
>  				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> -					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_EDP_REF_CLKREF_EN>;
>  				clock-names = "aux",
> -					      "cfg_ahb";
> +					      "cfg_ahb",
> +					      "ref";
>  
>  				#clock-cells = <1>;
>  				#phy-cells = <0>;
> @@ -5053,9 +5055,11 @@
>  				      <0x0 0x0aec5000 0x0 0x1c8>;
>  
>  				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
> -					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_EDP_REF_CLKREF_EN>;
>  				clock-names = "aux",
> -					      "cfg_ahb";
> +					      "cfg_ahb",
> +					      "ref";
>  
>  				#clock-cells = <1>;
>  				#phy-cells = <0>;
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

