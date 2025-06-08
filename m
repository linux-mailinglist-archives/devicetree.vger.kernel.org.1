Return-Path: <devicetree+bounces-183585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6375AD12F2
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 17:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 785AF188B139
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 15:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B9824DCFF;
	Sun,  8 Jun 2025 15:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pz6uu8ru"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47631F8747
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 15:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749396109; cv=none; b=p4ue4HHNAKURjqFWzlUQSennx2J08SB5QDodVPd7MZYq1TtSRBg0FNcHdJms/inIHvEudyObnuNq+vFvz7/zOk+8gqwDYjcObDs0PLhQn580bGnVo0yO7woIqCXnH2RL+uRgZxXsy3StyZfrdVqB8seHHe/Y+UC8GEak9nQlE4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749396109; c=relaxed/simple;
	bh=kuT2meH+GoUYl5dDOMdL+3vbhIr/LYNnR/dcHdw7djg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pQcFSo9MKLALlGmt7OY6+xpeAqjVoOhi0Y6LQ0Getwt+y6i7bVfmkpGMVfgkUYen8K90Ab8xXnuFhxZ9Utp0O8tFP9nST7O8HGGDMREFlVQhIJ/YVv4yy1hyJ5P5PEsHJcRTsVx3utgEVXboIxU71+7sh92cGfUpc7lrpRh33GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pz6uu8ru; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558CGJTh016902
	for <devicetree@vger.kernel.org>; Sun, 8 Jun 2025 15:21:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=eBW87gG+bs7XTeUanjoqFUZo93HnKMO9MXlkJu+f3B4=; b=Pz
	6uu8ruZbbxQJBWUXgV7JoCc7DBOj9QCBE60RwlPOXfeA8Xxzc7Ffhwn92PGbcJaa
	DVAdP+4/zh0K33sE2OxLMn5Iwq8JuQS9jKtDCZDUe3KJXC5cObD13UyoKb70iBmo
	AAgLje+TV0Z9b/VYYs8oa9oa9KGoFrwxndeTr0Z6DfL3TXfeFVLQoE040kMgzbXR
	1njLB2t1KIfGbeBTXdyaktZuc4qggx61LgIJHhlST3b29aqKO7xvsJqvJkThSIJT
	uj6saz0zK4/2pPa8Nx3ARz2hCjM6+khqfnJt+yJPnm/0wrNwbUrJuUa8SaGTFdne
	tpfmjWkvzake6hBeU68Q==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ccv34wk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 15:21:46 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-2e91916a983so1374386fac.2
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 08:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749396106; x=1750000906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eBW87gG+bs7XTeUanjoqFUZo93HnKMO9MXlkJu+f3B4=;
        b=bE31LImqEiehRwyakNKy1Yv/AYxKrfLUQD1rUJf9muJqi7LYDmNvDJ0mhIETeXisTK
         5F4h+kTCR9I+QpjADjJ2G31doekMNGjyPEyvhRyZFi3A6tTpHwgRiIxXQo6lu+xWYqae
         BNY+qOFiuySmLjCuVVmX8EaT2pHkq+6ZrtZn5zfCpNESIyr+37jbrbZpi04sJ95vWlLV
         OIEaEDUG7vy+ylA2o+c0FqZDbHhQWvLrkrL5GnkvK6rAQc489kIOzO82R9lXBwjQubDK
         seD8nEnpE1ej+EZIkOtuDo7IpjnAyOppJaE/0pImhBUVYKmiGnaPncsNx1hH38GzJnH/
         Wuvw==
X-Forwarded-Encrypted: i=1; AJvYcCUSphX8fIPK2wMp5JeLI3IJtV33MtfrV6fjYkAz/iqDgNa0BBdnJ3mzX4rsQy+OOISOFviqA4Y4H9Kr@vger.kernel.org
X-Gm-Message-State: AOJu0YyeApLNgFpSMGsA2A8Y0S32bP8Ydmpy79QDVfCwsQaAFXq1Wr04
	SrYFWOck6G8raGlwSOvC0qTPF2YyhqLmD3C4dqo9EnsOdy1N79yASk3i41Cm2kWNOO54z4grqFu
	wI+J2ieXhnUPSl8D0F0rnsCKyMzwb6f9tBY+accqW5mJaeoI8VJByLuMtWm+mC8Gn7HBgt/Sr2i
	JGuIAlbE9e0qfHANXJdCnyIiwrHBJPMkwjAt4vt34=
X-Gm-Gg: ASbGncvhKlhOlcEkQdkKeu1oehrBKoAEHSCRtB5LNkfqan/DootlPlmPXc96QBYaF02
	rfQsmRVGLS3P6/6SxIcMoOy04PR335SF7lXFb/2S2zSj7Lu9hV8YVrbkzGU+mAG32bkcML2Q2Aa
	xUJBJixnpYMatQahL57AE9rezp
X-Received: by 2002:a05:6871:7b0c:b0:2c2:b9cc:afb8 with SMTP id 586e51a60fabf-2ea007a9e74mr5430107fac.7.1749396105545;
        Sun, 08 Jun 2025 08:21:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeiwEJ5iaDlOgKPAjvzclsMxV+Ve51cmb4U8YPN6w25l7BtGOQgh5AvGBbsmLKSAPaB7+VQf5sDKWINoqBQY8=
X-Received: by 2002:a05:6871:7b0c:b0:2c2:b9cc:afb8 with SMTP id
 586e51a60fabf-2ea007a9e74mr5430084fac.7.1749396105225; Sun, 08 Jun 2025
 08:21:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
In-Reply-To: <20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Sun, 8 Jun 2025 08:21:33 -0700
X-Gm-Features: AX0GCFulliz7op4BWmvcmnZlyStVB3chNWH7TufZIrZInNo_JnqWpgSQFphHTQk
Message-ID: <CACSVV01A8aqyoM4KYuUYVXTHnM1egn5-4UxqPrQVVjuvxxbC6g@mail.gmail.com>
Subject: Re: [PATCH 0/3] Support for Adreno X1-45 GPU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: cBybI6fw1bBK9e_CzOm2ghl_jU2EVr89
X-Authority-Analysis: v=2.4 cv=TsLmhCXh c=1 sm=1 tr=0 ts=6845aa8a cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10
 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=MXl9TKsJXw4pWBb3H3sA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: cBybI6fw1bBK9e_CzOm2ghl_jU2EVr89
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA4MDEyMiBTYWx0ZWRfX+HX7DBskaxg0
 11mxsGDKXGTu8Y9Hx+Mu4PqJ7DO7TfNJ/8Uoz1ANCw9iBBwZA6MPl4je1qneDww5ry1uyfqMjTV
 jAd59dTQuKnOeSbJCzw7YuIvmB/2SRoY+QaYuckR9IN0eG10HklF0/YAyc99Bo+5iwjQZBARt7P
 CiTHhcPNdYsuqGUkckQ7Ng1l09mXLiIrpkdqXg49Cgp7viY1+egkrdOV1iJzkW5165CaNSvuLtH
 c/udts2fdCpWDoVdY7TCVXKUH/NWagdJsY1XbCYakH/i7ZHNC6kFJ6lUbUSsjLJW1vzULANrA4K
 CIY8qoX1Ct9UxU+FhjoZyKuVVecE0r+ybAruNAVdjNkX5WL312R2DzcSoVAlowZ9s0jjdKwqTR5
 U2nmet39FeJlBmj4yHSEBS/STtLGq6lvydc2nkPvkmBREoK+2dFz1nbZwwSebwxBwFdx/Hqx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-08_02,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=635 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506080122

On Sat, Jun 7, 2025 at 7:15=E2=80=AFAM Akhil P Oommen <akhilpo@oss.qualcomm=
.com> wrote:
>
> Add support for X1-45 GPU found in X1P41200 chipset (8 cpu core
> version). X1-45 is a smaller version of X1-85 with lower core count and
> smaller memories. From UMD perspective, this is similar to "FD735"
> present in Mesa.
>
> Tested Glmark & Vkmark on Debian Gnome desktop.
>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>

fyi, mesa part: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/3=
5404

BR,
-R

> ---
> Akhil P Oommen (3):
>       arm64: defconfig: Enable X1P42100_GPUCC driver
>       drm/msm/adreno: Add Adreno X1-45 support
>       arm64: dts: qcom: Add GPU support to X1P42100 SoC
>
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi    |   7 ++
>  arch/arm64/boot/dts/qcom/x1p42100-crd.dts |   4 +
>  arch/arm64/boot/dts/qcom/x1p42100.dtsi    | 121 ++++++++++++++++++++++++=
+++++-
>  arch/arm64/configs/defconfig              |   1 +
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c |  38 ++++++++++
>  5 files changed, 170 insertions(+), 1 deletion(-)
> ---
> base-commit: b3bded85d838336326ce78e394e7818445e11f20
> change-id: 20250603-x1p-adreno-219da2fd4ca4
>
> Best regards,
> --
> Akhil P Oommen <akhilpo@oss.qualcomm.com>
>

