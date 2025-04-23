Return-Path: <devicetree+bounces-169955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B96F9A98CE0
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 16:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A6583A4CB8
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 14:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BDEB27D782;
	Wed, 23 Apr 2025 14:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kP9i0Uk/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD87227CB3F
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745418220; cv=none; b=TVLbeMVo4y+lFBLQAmqIhm/tdbRfAm3E0F+z0SCEeaaNWe3i1SdRaiXmwXjnVoHEtRjBX6Mm6e0HPo4/GBtvfMHJQ9XO3EkHITGCeHzTrp4t4F7/cfI9cWGckkzKXS2z64XRzZKkfJ3QKNxCsigzlYln6ILI+bKIhMZhVN02eyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745418220; c=relaxed/simple;
	bh=15yDFj579bgxhoboYMjaC3khwqKrVV8H5UjwCkBWqiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nFuLSKKmqHYUFm2IHQWu8GS2uTpv2/sCJGXofV3FG706rLZvSrFipA9SSiERmzQnDIp27n3ZHuTXFUjfkISc+t7y2r8it0Qb3OC/5p2Ix+BgPLfMjtkr+hyYG1bxwWkJ02YnldXjKBo3N4Wx97aK28/jfZW82PpI+tYO2h/L0aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kP9i0Uk/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAIN9f008439
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:23:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HN13lzHJhjhAHQ7DzaU3+eE3
	OP7KRXOmcYjBHTkaM6o=; b=kP9i0Uk/AiiAAopNcloHUilfAZz8tMkN1knh3Y/Q
	fZ5/GBH+8ruzKSyCyB6L5XaIIzCd26zcL/Y43QrzcF5pUaR3wTuCVdwQEC5Vocfk
	BPV5l26tUD7xwuJuu8PeJ2YE2if6mIVUBzBpJw/S1SI7SrBMZPMs/rcv+OoNCWnQ
	KI2u50KE9E2FrjAhEBmQHfRAuq59U5aRTjO5C6IPfGNkNypecf5+SZCVl3zXQWP4
	wGYaMsLyMbhnTcOGnevgryvXO1zgJR47MOBRNZ3HRQBgrNgk3MUQY/GbRvrQBLIF
	c8tkqCHNUBmwJt3RdDTfBElz6VvXNy623auGQgEsX7fv0A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5adbj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:23:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so909837685a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:23:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745418215; x=1746023015;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HN13lzHJhjhAHQ7DzaU3+eE3OP7KRXOmcYjBHTkaM6o=;
        b=LjLP+jUC4zOrESUUZdGY3AuXMeTuYj+Lej5BybFq3kyLp7Y5GZeokHUTevad9O334h
         ljxkdeEZxm4GhQokRSeJv32pWhf7g4os89DYIwp/P1C0zaoe2OVYd3q2pTJtWQM+VQyL
         GFisa7FZrwspgwzmKrCCRv+M/GGGZsWQu6zLMoF3kVCeHgAxUnGTUugk4K6hizVZ/vad
         EPyxFzsA6DdBMt3kdj8lkunztNAf7bd3ECVkDaQWQo7iLW7EVMvYwhucwzObV3lkhl14
         594NpSKqagyxDlGeHq+GuLolzqk6NB5NTfoM50UAz7KBaZw2U+516Kypms7bH88WgUBu
         tPdw==
X-Forwarded-Encrypted: i=1; AJvYcCXwkOvrL1A2eTPzXHMIw7vblR4vkTI0glupFMHE+4QiKOXTstSD0kFxhW1HFBtTvZcAuvN2QUI+pNl6@vger.kernel.org
X-Gm-Message-State: AOJu0YyP+2SXaQr9KyptkHBWwyKzv36oaQFqHMDG5TPaMvyQRRKMM+Kf
	nf9HDGFF+sPCNSlOGjviF6EH/K029+x51am+8CTrsboZrgex5JCsXqrelvyBQFciU/8unZ9diKW
	pvDP6kuLwlzWPNzEES3b+7L2c47jiJ0nVZUjnHqLxi1nprKGxm1zw6l/ZeUmv
X-Gm-Gg: ASbGncv5dv/Xhs6R2oNT9rQjoh3VSp0pHBKmhaNpuJV+W8Qn4ht4I3tKNeMbaxO6tdc
	AluKhzBnV6q8ijfFMoo0WYrLsKMTTOCuxBxvOd3C8ccxYWfAsih6QUC7ZsKhPbM1MmrDErPkXWl
	dhEfBz6buDrqvNyVrX0Dj7c/z7WiWpYmLsTPXN+WSkeJcQ8Qg7Lkkn8DZR3740x0CfYUlSUrWcQ
	zZioomc1znC8of8Xcj/JgnePkG1GoHqHJZwYvUM6S8gGsDkU1q2uc2ebmPZ7wPTfkVpYpGVGuqa
	CWf8ug2HKWPZJThgvFpsQPp+1Sl37DkgTBPE4nsIVl9hL8Bq7siJmRPhEen5XJG7ICdxkfb9gHk
	=
X-Received: by 2002:a05:620a:3184:b0:7c5:65ab:5002 with SMTP id af79cd13be357-7c92805e97bmr3832036485a.49.1745418215627;
        Wed, 23 Apr 2025 07:23:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYCQwVaTtgeAr0Y2QsW4Y61GBBb5WaCrUzzlKbngnnQyJ88rtPHEhSHsXxrd8l2Zzdb7e3JQ==
X-Received: by 2002:a05:620a:3184:b0:7c5:65ab:5002 with SMTP id af79cd13be357-7c92805e97bmr3832028585a.49.1745418214974;
        Wed, 23 Apr 2025 07:23:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310908639b5sm19424941fa.112.2025.04.23.07.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 07:23:34 -0700 (PDT)
Date: Wed, 23 Apr 2025 17:23:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Mahadevan <quic_mahap@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: display/msm: add stream 1 pixel clock
 binding
Message-ID: <2m5fq7whbvaq4sbbxittxhbksw6erfotlwalrfevujq4mrt3kk@ctbgwinz2o72>
References: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
 <20241202-dp_mst_bindings-v1-3-9a9a43b0624a@quicinc.com>
 <edlw7grqy74rihy5jw5t2krcyfn24c6b2lfxht4b52wx6fvck6@pqeqrbnwtsf3>
 <0101602d-0434-47ea-8957-471c4ead100d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0101602d-0434-47ea-8957-471c4ead100d@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDEwMSBTYWx0ZWRfXwxDwCzUQWyyd uGKO5aQ8hyrZfL9w7Nq6gIbU5IFifWLVxOvb1dhZC9Tzg+GDxnu6VJl2ZIDMfXz/z999BaVFvHe LyumJe9uLmDhuFVgP9/LVIm+zaEO/zWiSFxYFdnqa1BbWveJMekj790KK6sxvQkQXa4lRo1RWw4
 n4Y0rLnTvbb1vWs+7yh9wCckrW1psikdOmmS0b8aG0eVQo6O+4NiU3jrGmL3V1NJ08Ty2GAu2kn c6uOBZf0cAju9PKjsTBQx+fLktv0aeyk4xB0bcMyGbnDuKBXkRTPXJBgHjIG7NWnDOhhzpCB+Zz TCnyhO5xkmEWpWGQ9cyF6yOWhm3GIhwL3XHPgLTWRkC1FDVT1ZG47GBJ9GTKXMZVoTFDG4/owzv
 6CH9AYM0IcpzB08DULvt6yXxxVDdvvSi68/ZEX+akLEZhEkkXBoNCfHC8g7CCJvuE9yH8cru
X-Proofpoint-GUID: cyqMt2sm5pyLdzQjS_x9g44D9KmlOxby
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=6808f7e8 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=yirWvuRTZ6qJcAQw2TYA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: cyqMt2sm5pyLdzQjS_x9g44D9KmlOxby
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230101

On Tue, Apr 22, 2025 at 07:46:57PM -0700, Abhinav Kumar wrote:
> 
> 
> On 12/3/2024 5:43 AM, Dmitry Baryshkov wrote:
> > On Mon, Dec 02, 2024 at 07:31:41PM -0800, Abhinav Kumar wrote:
> > > On some chipsets the display port controller can support more
> > > than one pixel stream (multi-stream transport). To support MST
> > > on such chipsets, add the binding for stream 1 pixel clock for
> > > display port controller. Since this mode is not supported on all
> > > chipsets, add exception rules and min/max items to clearly mark
> > > which chipsets support only SST mode (single stream) and which ones
> > > support MST.
> > > 
> > > Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > > ---
> > >   .../bindings/display/msm/dp-controller.yaml        | 32 ++++++++++++++++++++++
> > >   .../bindings/display/msm/qcom,sa8775p-mdss.yaml    |  9 ++++--
> > >   2 files changed, 38 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > index 9fe2bf0484d8..650d19e58277 100644
> > > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > @@ -50,30 +50,38 @@ properties:
> > >       maxItems: 1
> > >     clocks:
> > > +    minItems: 5
> > >       items:
> > >         - description: AHB clock to enable register access
> > >         - description: Display Port AUX clock
> > >         - description: Display Port Link clock
> > >         - description: Link interface clock between DP and PHY
> > >         - description: Display Port stream 0 Pixel clock
> > > +      - description: Display Port stream 1 Pixel clock
> > >     clock-names:
> > > +    minItems: 5
> > >       items:
> > >         - const: core_iface
> > >         - const: core_aux
> > >         - const: ctrl_link
> > >         - const: ctrl_link_iface
> > >         - const: stream_pixel
> > > +      - const: stream_1_pixel
> > >     assigned-clocks:
> > > +    minItems: 2
> > >       items:
> > >         - description: link clock source
> > >         - description: stream 0 pixel clock source
> > > +      - description: stream 1 pixel clock source
> > >     assigned-clock-parents:
> > > +    minItems: 2
> > >       items:
> > >         - description: Link clock PLL output provided by PHY block
> > >         - description: Stream 0 pixel clock PLL output provided by PHY block
> > > +      - description: Stream 1 pixel clock PLL output provided by PHY block
> > >     phys:
> > >       maxItems: 1
> > > @@ -175,6 +183,30 @@ allOf:
> > >         required:
> > >           - "#sound-dai-cells"
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            enum:
> > > +              - qcom,sa8775p-dp
> > 
> > Why do you need an extra platform conditional?
> > 
> 
> I expect this list to grow and also there can be chipsets which support 4
> streams as well, so an extra platform conditional was needed.

Ack

> 
> > > +
> > > +    then:
> > > +      properties:
> > > +        clocks:
> > > +          maxItems: 6
> > > +        clock-names:
> > > +          items:
> > > +            - const: core_iface
> > > +            - const: core_aux
> > > +            - const: ctrl_link
> > > +            - const: ctrl_link_iface
> > > +            - const: stream_pixel
> > > +            - const: stream_1_pixel

You don't need to ducplicate the list. Just specify min/maxItems.

> > > +        assigned-clocks:
> > > +          maxItems: 3
> > > +        assigned-clock-parents:
> > > +          maxItems: 3
> > > +
> > >   additionalProperties: false
> > >   examples:
> > > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> > > index 58f8a01f29c7..7f10e6ad8f63 100644
> > > --- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> > > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> > > @@ -177,16 +177,19 @@ examples:
> > >                        <&dispcc_dptx0_aux_clk>,
> > >                        <&dispcc_dptx0_link_clk>,
> > >                        <&dispcc_dptx0_link_intf_clk>,
> > > -                     <&dispcc_dptx0_pixel0_clk>;
> > > +                     <&dispcc_dptx0_pixel0_clk>,
> > > +                     <&dispcc_dptx0_pixel1_clk>;
> > >               clock-names = "core_iface",
> > >                             "core_aux",
> > >                             "ctrl_link",
> > >                             "ctrl_link_iface",
> > > -                          "stream_pixel";
> > > +                          "stream_pixel",
> > > +                          "stream_1_pixel";
> > >               assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
> > > +                              <&dispcc_mdss_dptx0_pixel1_clk_src>,
> > >                                 <&dispcc_mdss_dptx0_pixel0_clk_src>;
> > > -            assigned-clock-parents = <&mdss0_edp_phy 0>, <&mdss0_edp_phy 1>;
> > > +            assigned-clock-parents = <&mdss0_edp_phy 0>, <&mdss0_edp_phy 1>, <&mdss0_edp_phy 1>;
> > >               phys = <&mdss0_edp_phy>;
> > >               phy-names = "dp";
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

