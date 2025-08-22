Return-Path: <devicetree+bounces-208036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E5647B3168F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C66DB61B3A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF64E2F8BFF;
	Fri, 22 Aug 2025 11:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cwgxJk7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A392FABFD
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755862976; cv=none; b=qYVijIDphO7nnfJF43USc5pWxgZZ/+YybQWOEoqHhwXlZIstgA2KvybCbH8dweGWbR31YvPHqazK8vaxdRDoFguID9BRBrJ09VN+9m00w0qnjUjKEjDp5/RQ1/1IdFx+BzbPPcyVB88HTx8HpUQfbCu3X1+zqWwtJEhW3/nov7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755862976; c=relaxed/simple;
	bh=AHqeCFwpaR+XWyG+EuC6U9h/5Qte6yk9Tr15/2zCm5A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=caL5VguE5lnWEdAF4vVl2yQYZ5i0ukyWrQCWd1h81ouLcYUoQE45O/CCFQrW8Of5l55vV4L/O5PJf665QnX8xy2Z5q3py/Ogvekh7fYsv/7wmS+bJSUtNmIP3W+4ZZ4qL2VitoeLUq4Pyju4lhXp4WNzdwy0r9kCuBJJGOtCN5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cwgxJk7q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UMfn011161
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:42:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5mw/UDB/7pQXVTX2eHOkG8b9
	9y464ysBkU4PLObgT+4=; b=cwgxJk7q1Je0QT4YtcE7cnsP1azGpggAmhfeZ+Mi
	cJsDgR490szXH+nqyumFgucJnIVpxN3Rl5GRNRcx0dHxNHetTF4oFROK8L4rwbmx
	Ghlv9JH7CKgqLLhdGhnUFqXB1d+e/C4Y/P7SDkWmr5Q1GqyzF0k+AK2CkWD/8kzd
	1aTmVG56ZXxbUDpLygK5Thh+HuxEqZiPP5gTI+bpblBZOBXqWu4KM19kna3wpM6t
	hjVTn1p19wU9J6IdeWM1jSY4e/s6TMRFdxppQ60M841sfXYhobUEKwZQg3ppo8xl
	SapH4849HNVdbBYuamJhIUfPmiE5Xr6r6WzTYJlTZLDOig==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngt8evh4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:42:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70d7c7e96ceso64453126d6.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755862973; x=1756467773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5mw/UDB/7pQXVTX2eHOkG8b99y464ysBkU4PLObgT+4=;
        b=FpLyluK0iiEQWeuSfsoiBdQeFai3I1aULzJI5/kUZQZu4KB0byPNtplXKMEFSHW03x
         9nXvXvFAmkSGUWHwuoJFAq2UupEhhprpgrVfQeqXU6xG7sKRLWGwaZMBkXVUyeqwGAd5
         PfOgdrUORcCV8CBT5pRJNazM7DEYKNvRYNFArY7/1R2hP/KeT4Yh4QVWJbypD03TEPzv
         moL1EUeY2qiJchy8AINFm9jSrNfd1jyG0jPpKrNa+/LqsRmbujYfLb7vZofIH4Fyw6+W
         6TBLsdpkpNhmDUMedR1LyJgwsLOfEEew+K9a1/AckJoQL+T29Q5zx8x4VylomiAR2nAQ
         8JDA==
X-Forwarded-Encrypted: i=1; AJvYcCU4ZW63UpolyUk404s/NX26k2NCs1tFAellLxQsVAmyJVJsd1X8QL/TO1aKtweeFG5Ncyrhkcn5e8dh@vger.kernel.org
X-Gm-Message-State: AOJu0YyGqgPE2Yqvh3dCa5nVoSmEIWFtf2wvDOKcgPlTXVpqDGiF1kJI
	HCLqpLWT7hiT+cTuZquJQmow7+mssDjkX4S8nGAROSUlLQXUQQsMK5sv8F0j5NzwSgmeosuhdsp
	l5G1xXsv7MgMBHGIgU1dthrrjvYzUL+t2fAmv9JwYyKlicAlfVpWAER3d13oiJTBa
X-Gm-Gg: ASbGncusaGEQPVHEC0jSCjmc5z6RaKGVBXiJHDI3gNg4xnwoKQNYcnJR0E7ghqEKjmZ
	QPGbmawCgVwvCMNJ7YMYpZD0ilo5VrURfr2JARRCFu/SkanUWgvmreSNyrX8aHgGOFsQ2bt4ZdN
	h9BFUVQHwQjrSp6ezD5VXf4dKliW/YCf3dhIoro4gzwoQ0TJ8tx7EYlUzuAK4JPMRRwNdw/TnsO
	ocsus7Z3mbqe7l9IdzyyWwTO+uaXMwld5wMlO4AaJpNvuvnCZAuzgOwWfoREwLyx+YaCI/lMbAa
	uNmkqGVBUyHNqCbvOVqYzTgrYgSvCSy9qgqiWSKlw1oximyMVW2bz3lHM56O0b/KWf9knKKWlVP
	xyGpq00bbosgTF7VqV/Fj54KQumcbkRCxK++yYFzv4IF71g0jzaP0
X-Received: by 2002:ad4:5ccf:0:b0:70d:6df4:1af6 with SMTP id 6a1803df08f44-70d97238c31mr25039916d6.52.1755862973387;
        Fri, 22 Aug 2025 04:42:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0KTE4EBh/7HvpDzIMoDw2jPtywPhs513cF9E6lM3AxHNbAFd068WoyXeIrAeKelFl7dCsLg==
X-Received: by 2002:ad4:5ccf:0:b0:70d:6df4:1af6 with SMTP id 6a1803df08f44-70d97238c31mr25038536d6.52.1755862970041;
        Fri, 22 Aug 2025 04:42:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3354b208a13sm7287061fa.70.2025.08.22.04.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:42:49 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:42:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 5/6] arm64: dts: qcom: lemans-evk: Enable Adreno 663
 GPU
Message-ID: <tapfkre772lrar4l6ik3houaq3ki5icqliu3tj4k34hvlha6rq@2tbmqra57bag>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-5-97d26bb2144e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-a663-gpu-support-v4-5-97d26bb2144e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNCBTYWx0ZWRfX37NhjLzqGgHf
 DfV48yXv6/OqotqEbpOtLOBHxiFjdSxSw8KQ+fkCNKhi0tEuilVMlHsV252t81CwNYRaDpXYI+H
 /3Bml5s7BzJDsIlQ/DGsXQh+107RHyxqVf03Hubq7WcckdjTBVEu3Q2CW6gFDyV3pyoy9dxvjN6
 2HljRugVhxO1rAqG3SAo1roYpQnzTaUTUPAUgu9OT1QMpuisMT1gsQCi1S5p7kZPA4u8D9mO/xM
 53lolsY8wVAlvHSqVGmCr4DDOzFhmcsjOgvLUvBV+BArRc386cvVHxY72UVwHuLQosrMT9L56dM
 8JFOENwinlcJ3o1e+boxR36OvrQ4kcvUlmzCCXRAt4KDZFt1Lov+EhpS1DlSTlSR5gNgyOzr/nC
 9HQ/M1xB+Ml7iXQK5wKzvGBY+gH6Ig==
X-Authority-Analysis: v=2.4 cv=c/fygR9l c=1 sm=1 tr=0 ts=68a857be cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=mhNRLu-bMZbuYH0aq7kA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 5Fu6AA1BRvZSlHzI3QYCuXxEyFOTR8dK
X-Proofpoint-ORIG-GUID: 5Fu6AA1BRvZSlHzI3QYCuXxEyFOTR8dK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200134

On Fri, Aug 22, 2025 at 12:25:30AM +0530, Akhil P Oommen wrote:
> Enable GPU for lemans-evk platform and provide path for zap
> shader.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

