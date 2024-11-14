Return-Path: <devicetree+bounces-121897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D62409C8BE1
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 14:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C2351F21B51
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 13:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468AE17BA6;
	Thu, 14 Nov 2024 13:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FZhoFN8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB72B65C
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731591148; cv=none; b=POme3Ur5Y5mJv8dsGp4+1EYQtIWXt6xSWfuK5Ue/ulkRuUrLxLrUesz4BTXA9a2M8U443Nuc+FgxVwx60ebXUedmkx+jeUyPPsBYZf73ztErPhv+q21B51TJ1Ez7mYeU/2B+oAee1WyuE6QFUt4STZKu7hu1ccAFAK0v+trXSXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731591148; c=relaxed/simple;
	bh=PZjIOtasjxvauZS0XePaLeb4uiWfPjPA1xKuE6TEp6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bw+estK1yMS1pUOXDGjhB8sPEdH2+3vb/M07+3SFrUpnerDOGZ8Ntz+3pYszpazO8huEyHwBZaVrGMCUjDQAxs1eHQb/ShuYB9pvFN91BY0WHnhpnglJcHEpQR7EMSeHnkXTZx9Be1/R/wtCzrfyNWPaUc3V7w3N0DkXm37cKmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FZhoFN8X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE5viul001134
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:32:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	69aZun0GtiasFSLAFi5iK5p51tzghc9vHnuyXGjV69o=; b=FZhoFN8XHTnQqamd
	/nxIrUWsU75YE7NaNRGWURwc6SNDOr5O+9kglMUYMyC4G2JfngQE+6DSXgnneyQx
	ToQABXWo1khb5dnCT4ZMNOt4pK9t0NYqqzpZDRN7s31+vGRu/Nh55lSv29qWZbyA
	m+DaHkvTGiVGsfquypdYE7OOQRSMJweOXjaeYqIgBxMILGAiIkoO90X3goz/I3BK
	2WaEnki10k9bbEi7uF4+OFjRYp0AEoM1+SliwDUDeGPHxY+0npHMRTk/rz/WxvMM
	RJ83NoV9htJbOyz86YgWTkgz0GoYHs0/bU9dPb5A2acbEgZgHalEnH0gqRmuB8/d
	LRUO+g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vqbm5j4h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:32:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cda6fd171bso1380896d6.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 05:32:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731591144; x=1732195944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=69aZun0GtiasFSLAFi5iK5p51tzghc9vHnuyXGjV69o=;
        b=NYWrc/FubepMgfZqE4iw0m1jTg+aEGb+m6JJ7yKzbxITVAtaBvx6n3jctmnwconEHP
         jx+I39Glvpo2UMFVQf+Q4RsPtWOu9LUOvR8i79C3EL34bDdpij75sTaX0+4dkoqB7dJJ
         9zQyLxZ1ZD+N+LuyoLpEDav+oRCe1KOZuJ+/bqqlmWEtPmgIyqXJ9fCm+WdRonp+/0tA
         GE9zqcY1IJTNOGU5v47JJ7DfZNJZtfOMqiCSb30CLa9vLKgjvsf8J8uM/BdEgcORzViD
         DlNjv/JCq1/CNYPrdFGCEPwNWtVVLR6tfhZPu4FQ3ULEVo3Rd1knkEpkeZp3mKojbvlL
         fwIw==
X-Forwarded-Encrypted: i=1; AJvYcCW6VcutxEdvs2tkB/frEcdpFChmpdDbczzcZ7GO8MivJ8ER97w8L+/cv0BJlqIhoczFyuUjZUslJmxO@vger.kernel.org
X-Gm-Message-State: AOJu0YxMrgzsgzZF8M2stS4/5ovEqFG0JhlE+bDumNmPVopV9U3zb3Ji
	hYb0l5CNwTVDblPBQTNCUdN+Hi5RM+ngqQD/8+1CGNfVsZjnmioR4q1i9WSb4Pz+GMYWgv3Bb5N
	45d1x5AT6L32u33i2AM/XOEZLeXIXMWzSbBucLDmGlOXozw0Hz3G/sAZHSSpm
X-Gm-Gg: ASbGncu/fBITN4cwrBiBtHJUuzn1s6lWiV9waM+a419P34Zp2zpJQbQgSb1HkJZqWrZ
	eZ9iyPl7D3vy/yHNd5vLnrhP1qGwjU0jszuFmmGej7Wr6dpvYvUcWf4myFW67idX5wCAD2MBJ1n
	JXt/iO73t8v6upy11lF4v1iFZsvyRzNfWmzOxR2YeDjX5QTkgBf+euHcvbM/ItzODiJouNAMDaG
	5j/y5tHvYJPDaeqZ0mDY2gH+9C6GvqtMMFGrBhMkZv0d7quXVB7q1nT/YmvRKvNcM/dx/EokDRf
	FGNm8ObkT/nKb2bUcDTqEW6yZda9IQ8=
X-Received: by 2002:a05:620a:4415:b0:7a9:c0f2:75fc with SMTP id af79cd13be357-7b331e4ee53mr1277584085a.12.1731591143582;
        Thu, 14 Nov 2024 05:32:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnnkk58laYKQusb97iyKgh+0oqbjf7UMfJRyrL+TYbBL3HaTdZUyxFrlTIeOPllvNOALq0Jg==
X-Received: by 2002:a05:620a:4415:b0:7a9:c0f2:75fc with SMTP id af79cd13be357-7b331e4ee53mr1277581185a.12.1731591143140;
        Thu, 14 Nov 2024 05:32:23 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e080a90sm63884566b.174.2024.11.14.05.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 05:32:22 -0800 (PST)
Message-ID: <404f006b-46e5-44db-9f22-ec2139468ecc@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 14:32:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/9] drm/msm/dsi: Add support for QCS615
To: Fange Zhang <quic_fangez@quicinc.com>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>,
        Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
 <20241113-add-display-support-for-qcs615-platform-v2-6-2873eb6fb869@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241113-add-display-support-for-qcs615-platform-v2-6-2873eb6fb869@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _f0KMuKGnUj1T1Y7Vt8rIUwfqfWFtGCJ
X-Proofpoint-GUID: _f0KMuKGnUj1T1Y7Vt8rIUwfqfWFtGCJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=999
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140106

On 13.11.2024 12:51 PM, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add support for DSI 2.3.1 (block used on QCS615).
> Add phy configuration for QCS615
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c          | 17 +++++++++++++++++
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h          |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c      |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h      |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c | 21 +++++++++++++++++++++
>  5 files changed, 42 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> index 10ba7d153d1cfc9015f527c911c4658558f6e29e..edbe50305d6e85fb615afa41f3b0db664d2f4413 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> @@ -221,6 +221,21 @@ static const struct msm_dsi_config sc7280_dsi_cfg = {
>  	},
>  };
>  
> +static const struct regulator_bulk_data qcs615_dsi_regulators[] = {
> +	{ .supply = "vdda", .init_load_uA = 21800 },
> +};

I believe refgen is also present here and you can reuse dsi_v2_4_regulators

Konrad

