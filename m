Return-Path: <devicetree+bounces-233379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7D7C21A15
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CC58F350562
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5402F36CA88;
	Thu, 30 Oct 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VWetDbam";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JG650cJM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A118F315D4E
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847133; cv=none; b=IJjaVGr6XW89RIIoDDWpLwhvhpNjWv5rdHTyMTT2Dj6QLTdjup5jeEAHzveMJ/rwdh8O6n57QG8U2fYtPzZbEXwP2eDtHw7UE97pRoALEtcctn7ZTIioB9KzHsUoDCtQDAd90CW9pLkObL841kI3FEwcjp4pwo9xiMcygUz9aOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847133; c=relaxed/simple;
	bh=Q52OrGfLDGta4QWoGq5iz5GAVO2sT37KfMJDoKNIZe4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TwUe5UZPfcfFR9HtshkhWeMIMNfgdoK/nhhfOC9LKxDZAJBjeHhzBL3TAZ9RPGowyzTVfGXDSALUk5Xb2YWW9oAJJtDeAjzn7x2YpG2xGSUAy5VYVD9ApTZl+XwYneOrH7Ne+w1OgJ151T94xtWlkthSfF4wtuzpf7GYpGvFWLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VWetDbam; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JG650cJM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UHhAr93117126
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:58:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1Q0deErh+I54GhIS1z7OGdth
	5B/KTJBRbE+7iTB3hcw=; b=VWetDbameGekInwSnlRyNh7GOnjGcynxubTf4xBC
	maKc1jX6pXd6QtsZunBVwz88enhEIpfl12MyLKasK7LnZ6Nv9BMDzxL4SUYVIW5U
	qh3AJoydlaZStSkExjf1XvMfAFaE/lwYgWE7Ns/n26BsY9MVh8IasnkJ26kV0pJ4
	vNii05aQ/eOoZI8XIoawFzX224h+fusm2TvXDawh3+HkEF15Xl1s3D5e1+iS5Dmp
	WdVXaWqkY4tovjYlTdT5xCS11TQRCRoCPq7VubjJG6pk7KmGlVTznSJwqm45TT3w
	VJUFR32zqVP4EYgiI4RQy2r4PKtEPCaRzBzxEKMRfJBhMg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frhegd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:58:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eb7853480dso35154531cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761847130; x=1762451930; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Q0deErh+I54GhIS1z7OGdth5B/KTJBRbE+7iTB3hcw=;
        b=JG650cJMpJHPpCZEXRwGWABGl02ZR7WQmIih+EMW1cjdzGL1jwOcR+Z75mJf+actTl
         d9a/dIGNyZM1TQo4eSGPX2PTWcfRMt3tlAzIyNOm8zGOwonx59ubVTTqEkrO5sqEO7TR
         Xgvmpo54X4DQsHZsapo5iX7BgWY+aBfKyLSLAVxUG12C6qT6yPY70Top0PtfdQ3LLVN9
         We7b//RJL0jYCFCTfB9Uu2CAM/Nx1EjN1gy7eF8sBQy5FtbZHLOF7wz/04MarnF4Zg+H
         PiJ6ZebK6e0Y8/bPwmTosqqSECNaP9ML3gazSVqe0aJ+P7wKkARyEYFsCXGaqlCBFVgg
         GPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761847130; x=1762451930;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Q0deErh+I54GhIS1z7OGdth5B/KTJBRbE+7iTB3hcw=;
        b=Y/7BAvMFdvFYMANDluMFNG1pNTaOPjlzGuCo0gjLr9qhCmIFoTL5NlYgQGAu6hcHOU
         m8rxq8avhcr4kSBu7MbIvtIKvSi/MtqRGAuSrTBCXcwFwNlzF0LU25aaaGLuVhfbjKWX
         01/D3nuUCse+7GVmdWzGajbLAE2HWDMYyxS5bgUpSdxNUZvt0tFkl+07KbZAZNUU0d9W
         LSMwqIpt4tgjAnM9vSzNJqodAVt85Am623HI3rOaQ6FmM6Ei6NF8MMYv7BUea1qMM6oD
         vUMnUCVXoppAnHohnb7S6qrKCBfbHG2FLQjyKfLvLYKvK/uqQuzhotxDTzGUAXoXaysh
         BIfw==
X-Forwarded-Encrypted: i=1; AJvYcCVFSmujUoMR1N7RK83B8H9ld7S7Ey0Md1D5S3QlbcjF0Z0CveM30L3rExem2Z0niQHIiO3ixvQ9cnzB@vger.kernel.org
X-Gm-Message-State: AOJu0YzZstFqcB5JK7ct8ztBpVva/n6HzLDRFiW54WYo60RMIIApAlYG
	7woveFqGmjP7VQf1AZ6mRZYNEWgjdC9ad10iJB891P/XR9qCXpUmSJVDeSjD/ZvRF/RlZFaj5Rg
	b3Rau9IAeVe3Qd9mYtWsSuJYHJhPDaB13I24KvH0Z/j1JksRf+9hYHi4hpM2URUxb
X-Gm-Gg: ASbGncvwilPydWqgk+mjvMLPSHJjVQPLJXx1U+YuHHn1HWMRJEwBVt2anvtvYBxhqfC
	/kvtv5Glp6xwWK2TCDKJX6l2B2Ph8jMU5tEdwbIW59jJ+wPRzhuhTPKO+yp0O1AfS3HwaAB2moS
	zkxgWFSoID1yjEW2UeLFDDwWnE8cWap3bmooSNqDl0W1Wtcz24a5xDuieErtCNhN9fau+kduznR
	xB0OrtpXAmuq4Lw2F2bUhHNg9xMXPOr5MYXw8DoiGFWkCpZJOLIbkUTqu6i60I/Ppi8ZL/DaIa+
	ZA/5vJr80Oar9Ckm6reJJeWCEII314Fao6Ii7Nxc15ocStQeUQ9bEeWI5roKio5g+wjgMkmsCU9
	aokRDZQre8CTyYNVkOsvd7jZOgFEt+X4iTasi4gGaE+dSL403G9Bx/TWd5xFTuadyYsuw2y9pbQ
	Oo56NFUxab3P/q
X-Received: by 2002:a05:622a:1886:b0:4e8:aad2:391c with SMTP id d75a77b69052e-4ed30da2680mr6940951cf.1.1761847129620;
        Thu, 30 Oct 2025 10:58:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnEyIEQZlV9AL9hQo39GA8tkdTMFXooFYwSJ4HzSOksJTmwx0/qrIgEOylTfOt9zo+f+r2yA==
X-Received: by 2002:a05:622a:1886:b0:4e8:aad2:391c with SMTP id d75a77b69052e-4ed30da2680mr6940501cf.1.1761847128768;
        Thu, 30 Oct 2025 10:58:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f5bba2sm4718168e87.52.2025.10.30.10.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 10:58:48 -0700 (PDT)
Date: Thu, 30 Oct 2025 19:58:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sc8180x: create common zap-shader
 node
Message-ID: <p5apfg5cbwcdmilfr3omoncvuj7z7zbj6dkex2eicjdubkyxwj@h42bzzhx4amt>
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-3-7eccb823b986@oss.qualcomm.com>
 <c90b917e-b3bc-42fb-a127-ab47d5154d0d@oss.qualcomm.com>
 <c62a7f9d-6984-41c0-88c5-1d6c40d411dd@oss.qualcomm.com>
 <weyze7a2pqmt2klt763lbwyvpezqndm5rjnitexalru7hy3xhh@tdqx6xeqp3qu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <weyze7a2pqmt2klt763lbwyvpezqndm5rjnitexalru7hy3xhh@tdqx6xeqp3qu>
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=6903a75a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=76FKqnuqe-XMp3VuG3UA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: dqXlh7j0nF2eP-LLNZWKB9wSVcxqVM05
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE0OCBTYWx0ZWRfX3VFukz8JOyT8
 zoFktIdoiES+yhUqmUPPFVJXNaKKWfKhC0gcJlKPC/Sl4sGtsE8/WrW5qq9ljkoooUCBglgZhZk
 2+LdzQ2N0lUHBUNHEeWgVkQ1147mx7Cqu6tMc8cb36tXl4G9KcFqAIprs5GINL534Aw0JuLH9S6
 88PxOFK6nWpUhYiIB2tOvkIvAYCAVd4EkWBCE3qPrs9XiFkqMi4iw+flbmtbYPf9/4ivrz44aXe
 r+pIcCKOfGL1FSnZKyYpVEN69wLU3XCD+AigWXzXG08Wzuzlq70MWcWeJmnCrSYp8lxEkQDW3S/
 jNoNlAHiydOl1/4OnZx+naDIKf93SjytBdeLIk+/4uXF7IdXm2tL12eQ/+55D5Y9eJ5b3IlhWo3
 l1ng7dNhOv6lKiAh5XmIv7r3TWXP2Q==
X-Proofpoint-GUID: dqXlh7j0nF2eP-LLNZWKB9wSVcxqVM05
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300148

On Thu, Oct 30, 2025 at 12:28:31PM -0500, Bjorn Andersson wrote:
> On Thu, Oct 30, 2025 at 11:59:00AM +0100, Konrad Dybcio wrote:
> > On 10/30/25 11:58 AM, Konrad Dybcio wrote:
> > > On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
> > >> In order to reduce duplication, move common GPU memory configuration
> > >> from individual board files to sc8180x.dtsi.
> > >>
> > >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > >> ---
> > > 
> > > [...]
> > > 
> > >> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> > >> index 93de9fe918ebdadf239832db647b84ac9d5a33f6..069953dcad378448800d45e14931efe1fe1a69fc 100644
> > >> --- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> > >> +++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> > >> @@ -14,6 +14,8 @@
> > >>  #include "sc8180x.dtsi"
> > >>  #include "sc8180x-pmics.dtsi"
> > >>  
> > >> +/delete-node/ &gpu_mem;
> 
> I agree with your hmm, seems this line should be dropped(?)
> 
> Dmitry, please confirm and I can fix it up as I'm applying the series.

Oh, and this line is necessary, because sc8180x-primus has its own
location for the gpu_mem.


-- 
With best wishes
Dmitry

