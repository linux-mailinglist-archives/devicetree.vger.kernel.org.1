Return-Path: <devicetree+bounces-219571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D6AB8CB43
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 17:18:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCAA26253B8
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 15:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF2F2D739A;
	Sat, 20 Sep 2025 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oyd0/K44"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC2E2AEF5
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758381496; cv=none; b=UetYV9JyY7VeC92dm2IqVPDOehQ4V5SFSo8Y9l8jS5XkHzOS9/9YM1iAFPjbrYHA0tvT5hiJicjqXbCdR4fnV35m77gjYk1YP4jHiQkZhkkkoJLPV9+PsFLG98K2jb4hIL8jimLhpjmvS1v6rqwkE4flviHNhWEarSkUFCsuoy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758381496; c=relaxed/simple;
	bh=GQBiatpicJdr5OPO0KSVbWpaq+NbFcO/xwFCjQmzDeY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PrngZKYxYldpbIWf/93Nubo7sz72R+pGa/5CkVTRvA5vN9IkPF2yo1I6CzBJgjkSYPF/VFwHF/igolRp/2xqbBIk9hYZW9nyMtZ0EUVCWUffXP8rKRaj210Qs2y0tdTyYLCGsuFfA7jTqNgmsdEyArhvaxfwWeKDxtr1YJoZT6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oyd0/K44; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FUMN023316
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:18:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SE/TzCpNn1lm56lGm5GusKtj
	RWl26G4v81+gPtsUGow=; b=Oyd0/K44/kEUNLbydKKISKTQ26NcU2d3YKxy8W8d
	nd6HHacXfLWHjmE+B+jIoUemAdbfxCtzRjezksu011wbgAp7X4xjeuf9K17+Awmy
	yKVJ09uRmvbKb6BcDdIpFgLQN9Ect7je82uYepVLQeESc4a3eEZVUygoJIJul/BC
	H8uy/BEVqKEdE01URkdgQbFJUPIDmOzQ1khBNatovKHTcbcecgJogYdfNYFZLEGS
	01dCffNXwFPggV4PU9PMgemk/G7cqaN5cbIg6ESVQ5+qhf0wju2YoAeTKUaprbh5
	F31ruOdSpjkGYutisy3pmUAF2VdHD5f4Bg5nATyouwd7nQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0rwt2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:18:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78e30eaca8eso81605716d6.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 08:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758381492; x=1758986292;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SE/TzCpNn1lm56lGm5GusKtjRWl26G4v81+gPtsUGow=;
        b=B1jkfZvXRA3AByOSI5PyJGkBcx8bRYnyOL0hmSu4/6YzFkeO6SNNDbmVYRjvuBeGVm
         OJCFCIe1u5b6d5rgcokD+HnC2wg1fVxeHg7mmnw0RBPsf5wmEkdauDV2Uy2nItdOHnGW
         k9URhL4eCw47CRAv65fF0J6TU/n/aBz7O40q6oV5T/HLoZz8gRFt7/hB7RNYCXZl2Pgt
         eaZS+ImYaKgH7hH47Nt/8oIJdUBO2chjyoXw+ug54/DE+6aa0PwKjA8y/tgzWu5hudNm
         MHFe4Pc6sCFOoK8/m/1+TqRj3ry7kNU7FL3r9QCH5tzi3EQpz6y6PipxwApOBWCc2C2L
         DRwA==
X-Forwarded-Encrypted: i=1; AJvYcCXn94cEsLD0g3xB58Em1VfmSkuNqeKknS6YDu5WAdenzKSrvF+Tuc2dLKv0DoYFNe+eSx2u81xeRGWv@vger.kernel.org
X-Gm-Message-State: AOJu0YylQD79IH/uL6VgmY4kd59yCowOr/Dgjj8PMaIhsgQ17tAlWtqk
	TBYUmHCfFtLANWoW2edj6PttiCeDXCDiAekW82kIQWxir3Nq3l8pEDD5iP7IMFWH0gS6SojQE2a
	Cdt0/6paut6zpi3JZZg2uLz8oCSqGQt8Nqk14HnTuNmbH0se70bvmH91PhOIk5akB
X-Gm-Gg: ASbGncuEAisyFNE+0/z4JBtwY+nV9iK3TOpwm4WfIsOizddsNFavcRdY7fg8Cx4CTIC
	t22Vh3qKaiUA8ufEvMdjKk0Cxun6dfBW7dnxlvEDK+IILAcJc88oYIwL/uHb1WDHmF7uXu/9gLM
	jR8aYYU4sAOiCc4yXcimIJ3ml/fU5Xc4YMUKc7bSIvGZ+qh50sG26LTl9him33O5f/HHU5WnH30
	PoCogeYK1fMvfjM3TJZLdDwZXPiS7MSNeN1VrTNpDySNKBUsb4Wj090QZbCaZliSvt1FuUtP6ee
	zWmDN5PfHzP3DSPV2ARyk24+dEUnQMhjlJ63hjb9F1arNCWy85BODp1Pwd4W55IR4eCpF+xUEGH
	eZSdDr5egHQZpcEScLv16opCwQ8xbOwERcjApwAKZyJxqMHlNWFdJ
X-Received: by 2002:a05:6214:2628:b0:785:6e1b:f09c with SMTP id 6a1803df08f44-79914360a02mr61581266d6.20.1758381492251;
        Sat, 20 Sep 2025 08:18:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQmwINRFMEdLkNFG4kPMcSl8VW3EPEFYUe5j3w53Iw6eJvwSXX3a0dznM5FIuS3Bv41bI9dw==
X-Received: by 2002:a05:6214:2628:b0:785:6e1b:f09c with SMTP id 6a1803df08f44-79914360a02mr61581036d6.20.1758381491614;
        Sat, 20 Sep 2025 08:18:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a9f1419csm1982523e87.148.2025.09.20.08.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:18:10 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:18:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Glymur compatible
Message-ID: <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: S2DWbkbeLqGvzyDA06n2oDvRszeroZtF
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68cec5b5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=gizSWZE1I5L8aEIMteoA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX49aDs9ht3X+D
 xE8QNHUuu4x3xxOdhJeCMYALLUNnTPyBqiSCpz5505GeL4q0oT+Kokh8JBdh0+MxGSeMiMQT8qV
 GR5r4cNaIJ26qhFZbjCWsDdZqkHrlSX4qkc2v0RcVmy/OlWCm2PFwFdvtmetgB2XA8esOwpyrdc
 x3EOH1IPxVX4HKN5GM7giZJhBAn6xlZO9zv3UbgWtxE6LwYi2fWplU54dBGjdGQLiV/ZAjk6CYn
 Rw7C3ViBxLN1Nl2mcCmmLr79ubowZoG/tO82SHasuoQQn/1UyQGECpInV6QvfIw/JoT8id185vH
 GTei0DS07f9WrNZEqu/8HCDAL3gjD/dqzT5rJoxXxMYAQFx1O8nebk9cdt+28CmRhdVDF1VTVDt
 ZyXn+G9c
X-Proofpoint-ORIG-GUID: S2DWbkbeLqGvzyDA06n2oDvRszeroZtF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On Fri, Sep 19, 2025 at 08:21:00PM -0700, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP PHY combo driver, along with
> resource requirements.  Add a different identifier for the primary QMP PHY
> instance as it does not require a clkref entry.

Are register programming the same for both of them or not? If it's the
same, it might be not necessary to have different compatibles.

> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 45 ++++++++++++-------
>  1 file changed, 28 insertions(+), 17 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 38ce04c35d94..e0b10725a1c5 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -15,22 +15,28 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sar2130p-qmp-usb3-dp-phy
> -      - qcom,sc7180-qmp-usb3-dp-phy
> -      - qcom,sc7280-qmp-usb3-dp-phy
> -      - qcom,sc8180x-qmp-usb3-dp-phy
> -      - qcom,sc8280xp-qmp-usb43dp-phy
> -      - qcom,sdm845-qmp-usb3-dp-phy
> -      - qcom,sm6350-qmp-usb3-dp-phy
> -      - qcom,sm8150-qmp-usb3-dp-phy
> -      - qcom,sm8250-qmp-usb3-dp-phy
> -      - qcom,sm8350-qmp-usb3-dp-phy
> -      - qcom,sm8450-qmp-usb3-dp-phy
> -      - qcom,sm8550-qmp-usb3-dp-phy
> -      - qcom,sm8650-qmp-usb3-dp-phy
> -      - qcom,sm8750-qmp-usb3-dp-phy
> -      - qcom,x1e80100-qmp-usb3-dp-phy
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,glymur-qmp-usb3-prim-dp-phy
> +          - const: qcom,glymur-qmp-usb3-dp-phy
> +      - enum:
> +          - qcom,glymur-qmp-usb3-dp-phy
> +          - qcom,sar2130p-qmp-usb3-dp-phy
> +          - qcom,sc7180-qmp-usb3-dp-phy
> +          - qcom,sc7280-qmp-usb3-dp-phy
> +          - qcom,sc8180x-qmp-usb3-dp-phy
> +          - qcom,sc8280xp-qmp-usb43dp-phy
> +          - qcom,sdm845-qmp-usb3-dp-phy
> +          - qcom,sm6350-qmp-usb3-dp-phy
> +          - qcom,sm8150-qmp-usb3-dp-phy
> +          - qcom,sm8250-qmp-usb3-dp-phy
> +          - qcom,sm8350-qmp-usb3-dp-phy
> +          - qcom,sm8450-qmp-usb3-dp-phy
> +          - qcom,sm8550-qmp-usb3-dp-phy
> +          - qcom,sm8650-qmp-usb3-dp-phy
> +          - qcom,sm8750-qmp-usb3-dp-phy
> +          - qcom,x1e80100-qmp-usb3-dp-phy
>  
>    reg:
>      maxItems: 1
> @@ -46,7 +52,7 @@ properties:
>        - const: ref
>        - const: com_aux
>        - const: usb3_pipe
> -      - const: cfg_ahb
> +      - enum: [cfg_ahb, clkref]
>  
>    power-domains:
>      maxItems: 1
> @@ -63,6 +69,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true
> +
>    "#clock-cells":
>      const: 1
>      description:
> @@ -110,6 +118,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sc7180-qmp-usb3-dp-phy
>              - qcom,sdm845-qmp-usb3-dp-phy
>      then:
> @@ -129,6 +138,8 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
> +            - qcom,glymur-qmp-usb3-prim-dp-phy
>              - qcom,sar2130p-qmp-usb3-dp-phy
>              - qcom,sc8280xp-qmp-usb43dp-phy
>              - qcom,sm6350-qmp-usb3-dp-phy
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

