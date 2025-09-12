Return-Path: <devicetree+bounces-216424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A790AB54B8C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:50:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF0333A4D4D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC844302760;
	Fri, 12 Sep 2025 11:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UvQWuptq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B810301465
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677682; cv=none; b=ieCD2rn7dZxVJ4c4gzDTu5IW0EuI/Sn/x023WIHwCK54Ck2bN61wp2rd9qZtY4iNHExmQ0TYmB83rBqrT9gcVr/EjqqMIIk1DdCAMcExSVaipbUWFvsy8L60Mdq6N49dDhi9Ar6SQLRS2RYOESN80uHiIxR3Jd+oDK3OuVYC6iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677682; c=relaxed/simple;
	bh=dwEOCDuz8pHP9PSRzykN4SseAntCzLGGuNq+yxAvNyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KBfsAqATawbXFBaV00H1+vxTE8vMWBfGpD9i5DWvhNfV8HS8ve96uqoK98+QHekFO5Qfs8IS8pk96E2DWbF5LHGOOgdk3LkupaMPxs2PM5jPePNJfnIaNZPJpXl9uRTQ6ZP7+oxOcD2xZ5ldByur9nTXVaiWQUUgXmRwzCjowDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UvQWuptq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fsOo019689
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GToV4QE6cCKItMQsLrIeSPhG
	neO7K5k2i2q1jGRtV+I=; b=UvQWuptqKdBsydqZVnOxBAy2NHjQMB4PcIhj2s2J
	hP5GPM73YQX3/bjE5eZENftiDyxAixdB0O0kORIFVnWbNcel7vpUsB7I44qnUNeZ
	NepM9rpBTdNPOBDUc4r60Nfc10odNSPIYR2Mr6V35b6He5QVTRMBKARIJHv/83TL
	jvGUlhIaz6uMhi0xU5ftuM6X+JgGzW45ctb55uf7DMhF5wESOseibbdKRq0/LgKo
	KpLeR3ZDWc9YxuJUof2mr5zf7WIn8eO6GdtTCy2Fh9qBvSChNarq2nDlI/5BzSwv
	tSNjHnIkxYu+YKkA+aYUhfj9eWVMHmWHPpYDUTZYEe9wQA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akh2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:48:00 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-76a2c61f547so9644746d6.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677679; x=1758282479;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GToV4QE6cCKItMQsLrIeSPhGneO7K5k2i2q1jGRtV+I=;
        b=tpSWeJajaSpgcZaH9YU4lgpdTBM7uuUwl3plrR9ASLmWQqeFAPoZlFkT1/fDG68N2v
         sRFGPvjnvpYlMIFCEaiGeX1/eBgJB1xvjfApsKdnussp5MxzV+g+or9n4DafKgfkK0hT
         uMyj4Vbvs954utYCVckP2t33S1he0mxPMdc+oOc1bO1kJg1z7hwjXDsa73WDPGIZKvOk
         qVi9GStKBmJjsqANEDLgvevAfitjjtz9h9+pj+1+rRfRpRdyVrYx1YEJaVa/R1f752IY
         RXZSujx6bmMiEznVlUaG0LKd6ZtLrSzHpp3u/oeQwf8C7Alycx39xASKzc3DOxPDNJGI
         z58A==
X-Forwarded-Encrypted: i=1; AJvYcCU7uN0wtQcdQyuLDUto+ojGhGc3eHQ9CRBONqD0+CLWjL52TSDyqwyggV6Nem0UNhsFdwuybrkhnpmY@vger.kernel.org
X-Gm-Message-State: AOJu0YxTXIKv5gq5b5ipmSqRe+Kzxu8GGnaOEnJz5ED6k+W89GQrWEYR
	QRPxmsh1EQmZ0gNvy7tOWuYMzdBCJ0uED1IPGwVQcJqEbM7yoqunrBsJB/v4vF0/QjMUSze7Ru0
	y+lXkcweseib6Yw/Fvp0V81esA+V4s7nncam2RUZeWpYE8u0ID9QU8l4sKTh0doCt
X-Gm-Gg: ASbGncuNZ+q0gSvQYO+nUJQqqncRBLTlpd5iCvTdYD8ixcC5NkDt9EmWIKjwxFVaCna
	beuSvCNPMkfcVJXB7KUVEaPooel0XfdmLpPU9/ZuahFcZ+RY/iaKRji5iAdGuxo+ROMgUmKz9Ys
	Z1G4wa3raih6D211Fgblnl4dLaO8BfdBg8p5EVw1Dt+sT4pAX6j3E7Kdmz+DlL8ylcZWy2n8z2F
	leKTC/cwCQZnv9FNNSWGtUNAu89+15Qw4w5OA7cpFr7d6619u45L5IGrt5TtxJs25i0gybIQQ6J
	M7Se1UhT0TsXNkpqzm+FlVKOtVjUE32+ei8UgelEtGSGanMBtDH4AzDVYfd6kUKPUZwFgyq9Cpu
	fpF+068OLL4gFclDfjTE9xNwHS2DmgH4INw4qUuyJ7rrvhUzmwSfG
X-Received: by 2002:a05:6214:2428:b0:715:94ad:6add with SMTP id 6a1803df08f44-767c3772553mr34660656d6.47.1757677679093;
        Fri, 12 Sep 2025 04:47:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOipAh7umVQHV6wn1IWs32WNBot8nat+cTmZungdIIqqFVBnoEtURSnSYREkpzlbIAflY9Sg==
X-Received: by 2002:a05:6214:2428:b0:715:94ad:6add with SMTP id 6a1803df08f44-767c3772553mr34660316d6.47.1757677678632;
        Fri, 12 Sep 2025 04:47:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1c014cb1sm8425911fa.62.2025.09.12.04.47.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:47:57 -0700 (PDT)
Date: Fri, 12 Sep 2025 14:47:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH 2/2] drm/msm/dp: Add DisplayPort support for SM6150
Message-ID: <budeqnh65mcmtc5rscbgvy2nz3woptxnht6sddzg7jhttsnx5f@bwf3kyvbrfaj>
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-2-02b34b7b719d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-add-dp-controller-support-for-sm6150-v1-2-02b34b7b719d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c40870 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2HRO-YaP1JHyyBiP0YUA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: coJyavdyGnar7XcOsGvr6na8JbzISxm6
X-Proofpoint-ORIG-GUID: coJyavdyGnar7XcOsGvr6na8JbzISxm6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfXwcua6Cz5ANFk
 zLtQbjucOWSflN3YpYXDmPyFd9YNtyol0uf4qMiUfHJnJGRbLNmV/+xYAuqbVqhrK8AlNj47dYE
 w+DT/1I2DBXmXtwtxz9kA2v/yoKal0zBNwL98ZEolsUZG4bMaWLQm1Wo55gT8dzcczf4Gj7SyNF
 AFhz7GLYUI5OZaPTHKcxd5tifpV+Bi4XQjhRSgCUms+jzOxEEFETpmdN6HtizigYYM2hHNv1naL
 sO80lA5tLtefcWVY9JN6GWJK5CIRhkdJkpsiv2l+FDVjHXh1kJTbTlzZaVRgjvtcXzStUiWrwHV
 bbg+qO6vP8UtYGgVpacR1N2dr9NJZRKOkPHGNbL0QHm54QaN5LtHY2Y0Ys2X9Ms/KOpT6Txghwu
 5Zaqf2Zo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On Fri, Sep 12, 2025 at 07:39:17PM +0800, Xiangxu Yin wrote:
> Add support for SM6150 DisplayPort controller, which shares base offset
> and configuration with SC7180. While SM6150 lacks some SC7180 features
> (e.g. HBR3, MST), current msm_dp_desc_sc7180 data is sufficient. Listing it

SM6150 supports MST as far as I can see.

> explicitly ensures future compatibility.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index d87d47cc7ec3eb757ac192c411000bc50b824c59..ddb22b50490035779904d4cab20e2fee7e0f9657 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -196,6 +196,7 @@ static const struct of_device_id msm_dp_dt_match[] = {
>  	{ .compatible = "qcom,sc8280xp-dp", .data = &msm_dp_desc_sc8280xp },
>  	{ .compatible = "qcom,sc8280xp-edp", .data = &msm_dp_desc_sc8280xp },
>  	{ .compatible = "qcom,sdm845-dp", .data = &msm_dp_desc_sdm845 },
> +	{ .compatible = "qcom,sm6150-dp", .data = &msm_dp_desc_sc7180 },
>  	{ .compatible = "qcom,sm8350-dp", .data = &msm_dp_desc_sc7180 },
>  	{ .compatible = "qcom,sm8650-dp", .data = &msm_dp_desc_sm8650 },
>  	{ .compatible = "qcom,x1e80100-dp", .data = &msm_dp_desc_x1e80100 },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

