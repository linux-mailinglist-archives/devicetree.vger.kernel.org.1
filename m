Return-Path: <devicetree+bounces-229855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE60BFCC8D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A1BF189C7A2
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9AE34C833;
	Wed, 22 Oct 2025 15:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VAMgLndq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2023934BA54
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761145670; cv=none; b=Yd6ofI6Oq74hRQkUFctHDdQMEMtNn+wlEUUxTTCG70TN/6/4g8UCmWwg+hh2+V0RkhY9s9Jjg3ggAXlehpkdHnLqD00a1gxq8NfSzjZfuN+YOlge/rM9RlimPxrot5S7pN68bj6x6XGb8bC3l7K8z21REvwxv6OPEtk8hZdp638=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761145670; c=relaxed/simple;
	bh=cM7UKuyA9lLWg3NK5ViLuZaeP+xsfXVhzIXOQDzVv0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J/nWNGJ4d2Ee3U3DZ13zCAisALgdLZSsey5ZWTl8cwqUX92gR4SQnz4DD9YJ0Xk/n+TN0abCEjwX4ykAKoaoeAal4rTahwqhKtna36sfbiTcqy3hdyFYfas8cQDt6cYtmkarrpL9FHPK/TD+NR3J/evoaS2W44LT8r2uPK06F5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VAMgLndq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MBwVHR030208
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:07:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AizstXEr7j+qbEZcyP2bfp+P
	4ZNYzI2uQPOCe7cb9eE=; b=VAMgLndq5aZabdDcknWnnVTZSyxEm3BZHhfkYEdy
	8LbwqLs0IjtwkctqPa7y47YKvZo1zWhXPJW0IP6opR8rTmllLnwLMfx7UcLCvJeS
	EwQ3lRLiYfRg/yOYDCI+oUsAkmGmqdRVFZR9v57weOQvxjR9aZleUhi2aoR7JZT9
	16/zxlyDDV0nBEgIOy5P1vUBA1TZeOlJ15dHPIsVdxyKSQX+ucwRYwRHrcv+fT7G
	e/8lpDtKqTNZ5ncYm+HQY0dkitQzRI94G9DIOnDS+r7AV2ZgN8XY0gB+tbZNXRRN
	6to9VhqF823AB4K+14koNECPB4gi0jINzr0M29Bc8s198A==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge524u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:07:45 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5573a02ac16so82723e0c.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:07:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761145662; x=1761750462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AizstXEr7j+qbEZcyP2bfp+P4ZNYzI2uQPOCe7cb9eE=;
        b=trAXn64v4Akn1d009keVWULI2cyybyAeXpfTG5ebEG7uyRCXWDfQ5/EBRQXlJQSejy
         +8oVgziQV4ROglenusW8+8B0qvUJMbJWH887qbFjjrC/ZMB5pzcQHe9ttexf/QDTlP8x
         F9lwDmYySFevnzipnwXg/OTgAbsmSzpccft/6GRbzPXusYIxF5PWysHbxdv/xDBY4ixv
         kN3njf70fJ3K/yPzTKwufXuG2YohanUOswEH41cmed7MhXDLN53zOFKkk65mM+tZWpgr
         hPGQcRjhCZfTh1dyiL5UZ4Sgr2pu+M33CtCmg8dxHdYcHfoLpps1yah9dYh/2uYbMuK/
         IymA==
X-Forwarded-Encrypted: i=1; AJvYcCUzRvZc3nsHa9QLExGWnPIZ/1Y4wQWwnxY6mywqBTeAVxRqysc8quGBEW8cqd1HIvr6qm4JqH4O6JAK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1YxNEdfDr5y/A9fuhbdgyiQ1yxabSH2Jcp3mpOrCqUDrnSnXJ
	V44D4UCiS2z1svXMV2rWrXCEXnP5u7P8GJo3mbSHZUiee8TmVPc1Rb9eURx2PREWTAcul1zj0B1
	LdEnK2EdaE3TgHkifzvSDYAxt1Qd2Z7ghC+NcRmK5+59FSULhQwGoxk1aSTWLNWoS
X-Gm-Gg: ASbGncsPEiDDYxfOEWrES/URhkkn81874rWcL6fsxFRogYzZP/bEtZBjBG4eScHv179
	NLBp32IJ2ht4IQrDuOvVgYCSLBtn7/1xTuzRn3kGM7R9aY0FhF8moiQNPHjBHDpg5d05RozPv4q
	Mj9TWIRgVFYpyICcOYO+mPOZ9Y3egurCyg2Vk34YkQsWcDpcFOlxQz1FKSDqGAydTepw3bnUpkk
	FXxp2SO5zrdz+hJUz/Y6qhDtvjcSmgPvHUwqp9ySlLrwe/vMjNuEtR3dOaG18BqIilw30Kcbibl
	u1KRh8zDppQXhdWm+uXvM8pQHHh2nkshe7ePCrmfppEJwNkVLUl66IQBwc9e+Bebq8oCTyfiv2Z
	dKQoLdpCpToBmixcxA0IArdalQo4QAr4OJmDiejwNz4iMi3zLOJNyHNQDVI/MS76j2CHoKB3BbN
	Md6vAHQ8Wl/3Y=
X-Received: by 2002:a05:6122:3412:b0:556:745f:6a06 with SMTP id 71dfb90a1353d-556745f6b89mr3111933e0c.10.1761145661739;
        Wed, 22 Oct 2025 08:07:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFXovL3a0V22gWge+cpQKP3S8k4AeqKhy/tySq4N0wYr3JuPRxNPuz/9nahs3f/axhVrCdrQ==
X-Received: by 2002:a05:6122:3412:b0:556:745f:6a06 with SMTP id 71dfb90a1353d-556745f6b89mr3111877e0c.10.1761145661262;
        Wed, 22 Oct 2025 08:07:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a9586b2dsm39381791fa.46.2025.10.22.08.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 08:07:39 -0700 (PDT)
Date: Wed, 22 Oct 2025 18:07:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: xiangxu.yin@oss.qualcomm.com
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v5 1/3] dt-bindings: display/msm: Add SM6150 DisplayPort
 controller
Message-ID: <fh7daiy5p5taaz7ifymbivfktjqngs5oashhd3osrtzspsac2z@nswaeyh3kkhi>
References: <20251021-add-displayport-support-to-qcs615-devicetree-v5-0-92f0f3bf469f@oss.qualcomm.com>
 <20251021-add-displayport-support-to-qcs615-devicetree-v5-1-92f0f3bf469f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021-add-displayport-support-to-qcs615-devicetree-v5-1-92f0f3bf469f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXxfg9Xb+oJEVZ
 +G0yg25sLkEc44g7icsaIXT/3aZUiy8GoWasykPKH3FC5FuibH9VfGaAFNJ/YKCVaIvpwrPVOpb
 0aMHb56rKciMeotEb9Tkk7tOx0XZIJgK96Hv/BpsUuuBLG3/qynW2q8KWAnZnMRUBYLXTDXHx9o
 euHsJ+zheAokgxzCpsJMW+ljEpvzdh/fO+fbZAEAr/zUosasSLEvxYfwL2qsuMxxRvqlOEKqiUN
 E9/dRIXB+/8lCxw5qnBb9k17u5Kr3rypiVhMsdegrk4UFQtVZt/ffA4JZ+Fz4B+Y5XPi2DxA3cU
 LdAYaCe16OC/RBhVx8f37+pL1dNu7H3ivn2G8cr/cIojaFFpyQbHKgU0UIDkUco9mL9P29v+3mX
 oveqvFVUbokUXMDKtaXHQ7bExoFAHg==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f8f341 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=I67Lji_zawwbCJgw2PAA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: BF7Cpqkp14J-jyfvYfrK0zI98Ofq7o2d
X-Proofpoint-ORIG-GUID: BF7Cpqkp14J-jyfvYfrK0zI98Ofq7o2d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On Tue, Oct 21, 2025 at 11:18:07AM +0800, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> SM6150 uses the same DisplayPort controller as SM8150, which is already
> compatible with SM8350. Add the SM6150-specific compatible string and
> update the binding example accordingly.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml   | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..89852af70de97a9025079107b838de578778c049 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> @@ -51,6 +51,16 @@ patternProperties:
>        compatible:
>          const: qcom,sm6150-dpu
>  
> +  "^displayport-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,sm6150-dp
> +          - const: qcom,sm8150-dp
> +          - const: qcom,sm8350-dp
> +
>    "^dsi@[0-9a-f]+$":
>      type: object
>      additionalProperties: true
> @@ -132,13 +142,14 @@ examples:
>                  port@0 {
>                    reg = <0>;
>                    dpu_intf0_out: endpoint {
> +                    remote-endpoint = <&mdss_dp0_in>;

Why?

>                    };
>                  };
>  
>                  port@1 {
>                    reg = <1>;
>                    dpu_intf1_out: endpoint {
> -                      remote-endpoint = <&mdss_dsi0_in>;
> +                    remote-endpoint = <&mdss_dsi0_in>;

Why?

>                    };
>                  };
>              };
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry

