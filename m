Return-Path: <devicetree+bounces-227873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9167BBE5539
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:09:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1738D4EF6FE
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BAD2DAFAA;
	Thu, 16 Oct 2025 20:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DWVAUeTX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0981721FF2E
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760645373; cv=none; b=mIlBrrHWy7p/JSkMC0rEcnKyCAfAJz0sD2aiqng0EE0vOiBbPyFrlIXEnHuwnrZkMSkcq7iFBlBY9uI1iT8fm9ICuHQdUsH4W1eV+M14IZsB1hnAiJ9WoIeyFebuLaMsatc+KGaNChHLj2RtZsVlA33dfyNYlwwttaDly4IorZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760645373; c=relaxed/simple;
	bh=yUXxrGfZgFXeOKbwMfDAKVw4I5W2VcFWZQ3AiBq7Fio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bv7Hzn8cyMY6o1ARp9RQ0l2Y4tPxxF3ILAENMzRmMHV0IqDXdnV0CVCnxxOUBa+SFTO/kEYUWXtILo6n2Nd6KhrKtkqkzbykyuwxr/wQY4FuTi/IcBBiIlp+6yBaSoCPXTuO9hGdGdBbZeLq32R9eDSW0JT2NTpUK2AzUb/wN84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DWVAUeTX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GEWMcA017291
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:09:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2NnAT7GWs/EBXvb1WM+DOP4O
	7PmA83tdp8NxNf9Dzlo=; b=DWVAUeTXtA6xisChkPA3hZBUqlRaW8phfwhLioCS
	YEGTPw8kUQU+rCrlHir5p4lbIMl3W6xXKhp1QfSMSrHDhfBJ60YB52yM38UDnHGW
	tpsWChlYBouu+qlLWdP/w2t1QG3zZqohh7pnyHX10AxJrTZiWJEjFCnc1vGbVy9h
	7T3DC39FbkHnGO55QUMDG0SaEwM0NUMAL0kJO04Zc0y1Pyi9B2s54Cenn+KMgsIz
	8bfMgy5DzX32wpX+HedENZqKhXEOqyoAlRdcIZP2v33L/XdexOGa5zFwrsOpg6sC
	Ai2OfS8i5HPyogmuc6JgG/zKrWpZF/ePLLeEcFWSEnf64A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrtejr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:09:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c0f8cbe6fso43966186d6.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:09:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760645370; x=1761250170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2NnAT7GWs/EBXvb1WM+DOP4O7PmA83tdp8NxNf9Dzlo=;
        b=Nxe/pjs3CRlGLjglUOLzX8+duk22mLD/ZPc1kenRFiQzGcdRY/l3JhYqAjliDBk4nJ
         jkBikFBXtHGvEW/2XRza5z15L7ycpi+HvtNNzOyKlZ3DkdG4nYmUMkwdfLJoAnX7O7g7
         2cN7Wxbvk5lsKzwc5xBwVi8zwV1hbZUqA9ft7P//Hneby1pMbBY0h1GmX0jnYcSrNEF8
         hgsOFjeRGnmskDiDKwu0iFsd+IjJgjMnQjjnpjMBeFDagtMxiTIVGGXFDVHma6gzRbrD
         v20/3ia3V1BQQZcuUtbM/y61mRHaHJwbOLEZ09fFtnA+CU8T/TUbwmie8ivHSb7nF5Jd
         7umA==
X-Forwarded-Encrypted: i=1; AJvYcCX6Qh4mZwuDF2m9QCPTXCzijQVRBEZrFjHTDf3tTf8evZtOKMff9qtpQLp0ZFt8OjDrjxLR3IH8zwLN@vger.kernel.org
X-Gm-Message-State: AOJu0YzyNekzTuqNAvYNW12mppiHOQrpfDTcsTHJ2THOs/LMLJ7PI60o
	5KS5aXx9eCmgZrpFBBuVs29Qo7iMGqs5uYr+85qdpqOgKVC2hY032SIxEn8ZTJePe+rLBIeMjR7
	85yt6sKXob38EdeTPm9PU8PDOcrXJpsVb5SUf06zMO5Fl9GmFisY959g97leNEdM2
X-Gm-Gg: ASbGncvtEHL0Wm8vRKjgM5Vfay7Vl2UFJnh4sQKg5sMFsfbLfF6d1m8lI8DO4zMolbu
	N4F9QSbxJPBOJQDqQ9FaVqW7RoZxU5595BPTjZcutrrjyix4EdTojyTLYcyr1d3SoqJ0yimZhNf
	qcySjrtWmOXePk5bDy4/PrpKE9f1KKHXsG1xbyqnGI/Xm6OwBUeuwg0AlXVi3WoT7+vGpaowOLE
	zjgP2pDb+OGcPW4jGKNZ+nikkGZYnFkg+4OUXyCj3KUL86tp7jnJcTZ/ulDqrPbYHk/eFeN6gEV
	mUBavMnHnMyGvxA61WSnMP5KqVJUnTitRJ8AGhbryEc+F2ZND6OmNJP5/XJMWuolP25s29mBUDD
	LwWCGSQoyB/hsZRCMXyDSvl2nUnX6rfX0Yx3vMDsqc72omMIjPpKCZ73UhCEnLWyhwVICFmM0Lu
	Yzx97bmPV21kM=
X-Received: by 2002:a05:622a:1a0b:b0:4b9:6bbf:7073 with SMTP id d75a77b69052e-4e89d35ad07mr19782541cf.53.1760645369991;
        Thu, 16 Oct 2025 13:09:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2Mk36Krk90BdLrHtrtotYSVU1GazaMBECY7mZhgRjNDVhbGp7eXIDACXM51k42VjlHR9fwQ==
X-Received: by 2002:a05:622a:1a0b:b0:4b9:6bbf:7073 with SMTP id d75a77b69052e-4e89d35ad07mr19782251cf.53.1760645369580;
        Thu, 16 Oct 2025 13:09:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f91aasm7364503e87.38.2025.10.16.13.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:09:28 -0700 (PDT)
Date: Thu, 16 Oct 2025 23:09:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 3/8] arm64: dts: qcom: sdm845-oneplus-fajita:
 Compatible describing both DDIC and panel
Message-ID: <o4oe3bjrnzthgwomy4y6r6swtzkylerimtgir55fgpvhjbrlgb@4hvemz3q4ho4>
References: <20251016-s6e3fc2x01-v3-0-ce0f3566b903@ixit.cz>
 <20251016-s6e3fc2x01-v3-3-ce0f3566b903@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016-s6e3fc2x01-v3-3-ce0f3566b903@ixit.cz>
X-Proofpoint-ORIG-GUID: qFwvxeNfnluchm5Yx5fElB9e6vQxwWvO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX5BHP+cKTTI65
 u/06SJ+xN+BDexUpgJI0/ll3OubZsx6tzZIKI7ZyGfdRZwjLNPKgGQ4Hyj4K8Ik9bngvZgFBmpA
 ptcAQ/CUgZomEyb0lCiDYGDDdguwwmr7nEcUcpm41G6IRviTk5YFbg0QqomEFNUgoexv1ewF1IZ
 5EJcLpSQ7BKZ0NUYqOXdJ9o8m/cwaTbvGE5b9e0+0UntklxcAdWfex5Qgo6HVslPhzaH2pxq1D3
 eE04MnclbUWque087R0HE7AChkSsdE0vQG3td/NlzPQY8EY7Mx3FjUBASZ+AzyTa99VRtmLAbGZ
 HGg1T3X9+E3lrGtVWWalfEojK9/5U4Qi1zM18IZvrnuNccrl7rl52AniEi+bkavzjWKQt87vyTV
 SnQdeL14bg104VIqFb48Fvs9H5iCUg==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68f150fa cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=J8i-PDvN9eMQhD4ShqMA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: qFwvxeNfnluchm5Yx5fElB9e6vQxwWvO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022

On Thu, Oct 16, 2025 at 06:16:58PM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Compatible should precisely describe the hardware used.
> Original compatible describing only the DDIC used, but omit describing
> the panel used (Samsung AMS641RW), which we have no way to detect.

I think this should be squashed into the previous commit.

> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts b/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts
> index 7e75decfda052..d6cd873aef0de 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts
> @@ -32,7 +32,7 @@ battery: battery {
>  &display_panel {
>  	status = "okay";
>  
> -	compatible = "samsung,s6e3fc2x01";
> +	compatible = "samsung,s6e3fc2x01-ams641rw", "samsung,s6e3fc2x01";
>  };
>  
>  &i2c4 {
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

