Return-Path: <devicetree+bounces-217924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E35EB59BBF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:15:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 368E63B1682
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12E0B32F772;
	Tue, 16 Sep 2025 15:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d3oPnFiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860EA3191B9
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758035453; cv=none; b=cw8dHCTUJ4TVr1kZZNFmv/l2dFpH8sD3KrzneGlm2Ifx4nzWaOM88s4WbLJP2mYM1n4iYijQF66rMG9rXaqPzV6qHWYoa+/Nm1iNqfnavMSjsMd5ntGFACB+u6TzlOtakuhZD63QzoaJP9rbpCOtj8KSDdO/MG9iO4/WiLnVoD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758035453; c=relaxed/simple;
	bh=EQkMGw7chdf4s/ipZleWGh73O0Ryq0/JBuSJdDHibm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BGLd5pZyEaX7acAjK+/jS+yFC2L02O1deKYqxXawLe3B+wfOP5CKWbcGilnunJ3fr8k3ok5bHLIkqmACMdGXmlRI8x8QskKXgmWzyq0iaWJtag9+NZ9QHlhTmk1lwxfAeHWEpxhXF+UWYuGmzpF2mUBLkRjeCCQYA1SYw4ss/xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d3oPnFiD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA49VN005233
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:10:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g1Z+oPGXQpLxnAZpBbOZ/u5c
	mt3wM5YUAcTV6PLokuA=; b=d3oPnFiDYbzgsQw8vdiCpR76ns9JcYMBKPVaX3jd
	gApfGla58qI5RqlUdRsrwP7l4h38RQrOVWEJBaA7Bjpw152xxSpJgj6FM4j/pAdW
	E0rO56RTTKFDdrN4AJMSCnu3d6XIFwbmp0drBaztN2DdcT02u7WDNv0uGcySfcBV
	C45I9SLbYWWwgJornlsCEjUPpLm4PuJCUHjWE4cn3sIfqehMouKdlJz+68Q5G+M4
	UeZ1GIOQYwZjTl8ojT7PumN5QELIeu0C55hbDAbR5tKe+AHUkkCIJrYjy0kdXXDe
	Q2OlISo6BuWzYQ9jrBBNohaTST6pNEEygFxBgv/5BASWjA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n4yq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:10:50 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-54a1ea646e9so1532558e0c.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758035449; x=1758640249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1Z+oPGXQpLxnAZpBbOZ/u5cmt3wM5YUAcTV6PLokuA=;
        b=jzafTsHiS1px6eysAS0Txh64f6oAoIDydEgCaPsozhW20KbA3w3vSN2pprHK1tKVJf
         EcM8MQirO0mNs6b4PNRctGriIxInEpgEL9XELmohaBvwGyrRIoklyXvqvO6ndgBngRmu
         hx2IbMAsYCCLrQ7bx56bZhPYBqWbmi8RW1bIALH/f37KeogkyDXpI2EYBErVG33ZlH0O
         M6abJY0h1oilFhaP0nwD0T2z4L7q6CexD89gNyWXd6U3pnvtv0PXNjzDj+kde3E5dTOo
         24762EkAqKP4iGD7pEE37OWsgPPHwq76SBJYdBzHbxDk7uC1pQ5UqHF4CGDl/o3HemiR
         kVMg==
X-Forwarded-Encrypted: i=1; AJvYcCUgHiRXLT29p8m98hfFns38E78aS3MUvuLg5F5qW3+U33kHg+DJUj1aJInKyH+6N5su08ohQIqHWaKE@vger.kernel.org
X-Gm-Message-State: AOJu0YwDEbnOjvUVuUA/UbiccN4wCmkhaimFJAPjVwxEa9Afw70g15Mw
	rs3I2wtW8r0MTezQRbblxVBxn42HW3QBnWRlcBIHnr2vCNwy8ldzzaz+MxHvTYMNIjEwFsCkMx6
	M2ADNHuLs7VEcd/VOFj9xTmsnFJ4SG2QlVNCWjbXCaQl2bw70iWevDsy2cLVmOYQv
X-Gm-Gg: ASbGncstEwCBeiu4nnc/P56kNRdUku1VMRKeYZbgouw+6yiZOLtU6wlD4Nyfgfa5a3P
	PKKBlqgZd/7OGlDSAbt14YLKXv6ABgl6JjWx9qJLBluxSuwXySxi0GgY4yliH57ze1KOeyKYnDu
	iQS316IZt9aa6rvyYDDhZb/pnVq/0AWvGV6sF/ndqqgFMDYCysvdJf2gAjfOM0a3cu1n58Uiuhj
	BT+gqi+Y00O22NUZKp9HlLjZ/sla76nn2H5rXYgyB6BwhfWqoBxXXOfjoLshhdz9z+s/6HMX0NT
	hCK5hK+65PDg9RLnQdhg+/XJ/uShn4KOhDbnZ66WEddB3Hlvzt8SIgvQe3ZO/ZNL05r1H38Yi2D
	bG0W7jmCJ62isJqcLT8dPiltm02jIdtUlyU2ZcGaai8ebnDwBCfsz
X-Received: by 2002:a05:6122:8c1e:b0:545:f023:ac1d with SMTP id 71dfb90a1353d-54a1699578cmr4957831e0c.0.1758035448986;
        Tue, 16 Sep 2025 08:10:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOjBcIPt0evZtEawDOU4ceL65KWW429XS23INAGRqTzAWor5/oJYp5i4nvKOrZ/npWDeBcWA==
X-Received: by 2002:a05:6122:8c1e:b0:545:f023:ac1d with SMTP id 71dfb90a1353d-54a1699578cmr4957779e0c.0.1758035448483;
        Tue, 16 Sep 2025 08:10:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-35e8957bc07sm411231fa.18.2025.09.16.08.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:10:47 -0700 (PDT)
Date: Tue, 16 Sep 2025 18:10:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v3] dt-bindings: display/msm: dp-controller: Add SM6150
Message-ID: <av6zvj7civjycnj7vsdfufdlnpcq4mlpz5cwpamtapzkdqoe6h@rqfea46xs2r6>
References: <20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com>
X-Proofpoint-GUID: U8DU3C7nbqHMDok36OHLbKn1D6Qs3qir
X-Proofpoint-ORIG-GUID: U8DU3C7nbqHMDok36OHLbKn1D6Qs3qir
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX/B9lDzDzR/vf
 vmbK8QzZtCUUnUDvs4JRBQmp22U0syOcmnKeuRISyhrjNT50nbKmKV20Wlpg0q0+nl+zJyAvt8t
 g6cvYMfa04ln+Dm7uhCBMtuEddDuy3cfuWOzjLFrkGGj58jhmMqEa7Qb8q1S5X58SlTPpZazXu0
 n+bh3D4V8HezR8X91OWpS214pz9wQZ0VCwmlC9UCgQgggw6xpsr54ldPvfLnFZkjuucIMugAF9V
 2uMT2yX9YZyaEfraxxQMdA+hX3pMMEcTzzB08jJo82/zii8vtCxC7nOmxISgwnXvRocI/sKlkAA
 DCp83pzByKrkfLPhRM6ceqPJMScawjEWU/KK7F7urG6/Fv4Y+VM4c1hI9FA1Cki9d9/P8xqjSwV
 RzXVoMjQ
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c97dfa cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=kjV3pKRppw1HhCH-an0A:9
 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087

On Tue, Sep 16, 2025 at 08:11:03PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller binding for Qualcomm SM6150 SoC.
> SM6150 uses the same controller IP as SM8150.
> Declare 'qcom,sm6150-dp' as a fallback compatible to
> 'qcom,sm8150-dp' and 'qcom,sm8350-dp' for consistency with existing
> bindings and to ensure correct matching and future clarity.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
> This series splits the SM6150 dp-controller definition from the
> '[v3] Add DisplayPort support for QCS615 platform' series and rebases
> 'dt-bindings: msm/dp: Add support for 4 pixel streams'.
> 
> The devicetree modification for DisplayPort on SM6150 will be provided
> in a future patch.
> ---
> Changes in v3:
> - Update binding fallback chain to "qcom,sm6150-dp", "qcom,sm8150-dp", "qcom,sm8350-dp". [Dmitry]
> - Link to v2: https://lore.kernel.org/r/20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com
> 
> Changes in v2:
> - Update commit message and binding with fallback configuration. [Dmitry]
> - Drop driver patch since SM6150 is declared as a fallback to 'qcom-sm8350-dp'.
> - Link to v1: https://lore.kernel.org/r/20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

LGTM

-- 
With best wishes
Dmitry

