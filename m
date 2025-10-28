Return-Path: <devicetree+bounces-232339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C111C16B18
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 20:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3F8AC4E7D2B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 19:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A10934B41E;
	Tue, 28 Oct 2025 19:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UHhMVulV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DZIj4gSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B03B334694
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761681473; cv=none; b=PuQj1bYg4295+iEyvjKWutP28TsRM1FX83oN1FBcK1/jTH0agS1yTO4etjRRJTFq5eh52nPalesoA6naJ9lWTu4nRthsUH00mfnY8UXloCzqhFwweXOZrfrCxZuFDMV7YveSyLU8oBOxfq8omjT04/Oi5CTi3vlZC2H5EzEDGNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761681473; c=relaxed/simple;
	bh=PhjkiNrziSGCQZAvgqKtNa2bNCbCNdE75stmFSNdD6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WVmF4F8Htjy7YTjKDcHYCuo+PKmb7EUGmpG+NPaJQ+uFIgwld0GMwCk5EoFJ9khWAOw+yeyb5xXkZCn49SxleF3izZISDlCsXxNcv6KeWs0NlkJbZio5IIerpCUc4n4NNXBsZbP7ARSiCykOfqy37vyoMSkL7U3sBG/hWf2y7g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UHhMVulV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DZIj4gSw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJldcf2539768
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D6VZKEn9mknAk1r90YKOpNGy35ExdR8YFK78o+x3tCs=; b=UHhMVulVkgHJA+O9
	X6ac5szrW0Z4VNTvJDBJMnDs3jnixW5/qa05NeeBzC1DKxQqeSZ4x7tEPRFM7v8X
	FShBg/vud9ND4ewHLDWYd/mVaX2zh4uIAoSWzdRDwGeOW9Dp3FOnYHXek7hJAVaU
	5Q3L2PSf9DQ6QJo9xOFiRkGNSOsLo6YHER8fzKLf+HtSIrEAUyi8G5M3JSGvOJsN
	Q+azj3WtF2DHS0PpXutHWeG3NtwqJUxMwLWqt8JjJInCh++Qrnq2X8QvF54uHbtO
	7o+wcI6COwygvveJDjbv8RpDAil9plcXuhdVsyPQbDkToUg/Dj7GO3nsLANc03Ww
	1x4Pww==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1g0ny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 19:57:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e892f776d0so289258671cf.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761681470; x=1762286270; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D6VZKEn9mknAk1r90YKOpNGy35ExdR8YFK78o+x3tCs=;
        b=DZIj4gSwOb46xoZwqyBIi/ZVieMDsd2RV2rFW1JrqrtKG5K7rJGV/ntrZdnLkaPFZN
         C3nrDldLVUSBqzol9xVF7RzjkqNZdzAg0nRJ+vbbKYs0tEwIQP51m+LRn791ZaGJ+2vg
         ZFKRFrrr5yb4yXdHwdePLRaDIFFBAZbQ3T3Ge8Q9uMSFHl74ZmgIiOEiPNqwsMJZ1nLO
         m+BAvw8Ul5h+tg1IydHlpu2wliphrSCCzFs2uoAmEJNwcBgqapogovHx2Txi9ONdpwfx
         VG2JUndlkGlaoSfqBrjtHkiNI3ms8WuW/YC6gJuHU0y5yIwG/2JPJxMA6rdV5iGUuGBo
         ///g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761681470; x=1762286270;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D6VZKEn9mknAk1r90YKOpNGy35ExdR8YFK78o+x3tCs=;
        b=lE/Tn2xYNXdtMpAFYlmeqoFZ9VubwXJ5ed+YTm6KkdhgKaYM+uhbaCPOLk151WWvDn
         CKu5qwM6ZQiJ8Z83WFS7MQg/Yf7r51zYt9EISFyAW9bcBJcwQ7oM4ygF48sXwe51r3pG
         aTXUg7tx5AQvrPFFSPdGO6EoZhZctQLWAPtF73AoqFxPWcECw6UpEbwKzXv3c8TgHX3N
         5HuYuoRXE6ish46NNZStS0nHzv7ODFLxcqoIFhz+eOCFm2AhpXNE6Z3Q0atx4dsPwgnw
         WjBJJ9N/MIVzqT7Lv4IIHI1cyXicHnZu8rv7of4BNMyhlaDk60WtcSs2JYAsQhti/40T
         5k+w==
X-Forwarded-Encrypted: i=1; AJvYcCWEGzlpdH5yu6LTFdtSbTyDKqKKvidRLxeYgzl1jThNEsgC6mFqDX1bnOouw8AzSA4+UMomuM4f/4ts@vger.kernel.org
X-Gm-Message-State: AOJu0YxXqXPFTRIvoTI3ZMX8WM3YfPyAoc6kp/9edbjno89WGkExgsZm
	P2ctub/xv9qtRK2KLt3dh+EGUCF7UGHGN71UL5lCwwKGUAXs8qwZ7KRsU8YU5xAKfw7P6aRXEQ5
	c+4J3BoLbOnFGMd8Xu1pp405rF/KGKMV4ltZedX7XrC3oCMkkxe/HV6bhkWnfZe0n
X-Gm-Gg: ASbGncuX81zeutOBRLyDPl6+sQLn80uUlFQ64Ibevj63DmGzqfiVO0EChDZQXXy0WFA
	gLpfHZ+h/nh2/7vZzAp05UGx27INKrfq330ea/mN0zWvzr1RJ5REQrZ9DQPrI4vS05vj5VvMHUU
	CLBfQAT5ofYDa5LDOwBHbMXiQzcu3/zHAEpE5tkpjAIiT2bm2ws0GFP0NAqMkPvYH4r/vavZavk
	TlWvAtqaFMc5Vkn/6sOZqFCiCPmlGeHrrjbGk1W8xm7GuFnUfijb0rHQs7dYQazmhiyPK8DOo+Y
	fyhdz/aHgdawx639uIfdoNJzdPsM+tjUTknuQ9jZphO5rYQvAHqksYiwsOrNWpv0nlMfBJ4ehF6
	TzQZqvM9tHRDJWX5Ap5rrlXEgGE255C+PHD+slb2FJi7FS9pkKJREnlK/6rhIh0ShRuy9Tolu9L
	fIqv7CVgM4q/wE
X-Received: by 2002:a05:622a:514d:b0:4e8:aad2:391d with SMTP id d75a77b69052e-4ed15c4748fmr6727341cf.75.1761681469451;
        Tue, 28 Oct 2025 12:57:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnWHRjVfSuZFrm84Q00tQxrmEsW1azjVpDihZ8mio3/6wz4xCAvAGLduksdpAN6IyL1yO2mQ==
X-Received: by 2002:a05:622a:514d:b0:4e8:aad2:391d with SMTP id d75a77b69052e-4ed15c4748fmr6726941cf.75.1761681469012;
        Tue, 28 Oct 2025 12:57:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59306b82de0sm2421121e87.0.2025.10.28.12.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 12:57:47 -0700 (PDT)
Date: Tue, 28 Oct 2025 21:57:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v6 1/4] dt-bindings: display: msm: Add SM6150 DisplayPort
 controller
Message-ID: <2rvypo4rvvjrtnjow37vfqifbkr7gfra5n6rnrshubtk4nxt2w@uan44zq44iem>
References: <20251024-add-displayport-support-to-qcs615-devicetree-v6-0-c4316975dd0e@oss.qualcomm.com>
 <20251024-add-displayport-support-to-qcs615-devicetree-v6-1-c4316975dd0e@oss.qualcomm.com>
 <20251027152647.GA915648-robh@kernel.org>
 <207641b8-c272-46d5-a459-eb720a4b94a6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <207641b8-c272-46d5-a459-eb720a4b94a6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901203e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=zlLbQ5bJCEovvze19KoA:9 a=PRpDppDLrCsA:10
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: KqzCkEc9r9BNuRcLJBbzIvza6g9gGfNp
X-Proofpoint-ORIG-GUID: KqzCkEc9r9BNuRcLJBbzIvza6g9gGfNp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE2OCBTYWx0ZWRfX8iG/GMHxsBR9
 WZqyR6B9/d2p/SL7EL7URzG1orb+xjAOI2nbgaD+Z2StVPwCsx+2XtTyIHd0nl4Wk3h+VhE1Asn
 cEDufHvJUuaoJB417Z8pqkYzZ/hg4Z5cXoakMWb4juCS0fmAgkmQYNqXInPjT9FcNdPucTJDKNf
 PmuxjYxOXkU2nM1Z1EsT1kspU3yvFDeTWhdgmcR26j/yX4bqn/A84i5P46HejR4bucDraIPbUA2
 cJhnJzHd2EAkQYYCEiPF2GH/TN0uDI73IVk2J+vVdSzKgyA/02Gpl+RjuuuWJv/NVh6D3C0q7qn
 KY3PQ9wpBDnGdnJwPab9qy5cYiBPcp8P4PDBYe+68A9rvBzPilkHQbNE83xS/vjOdV9Ib6qA+uX
 wZcXk+B2cYatygoB1oPMMEJxgnm8Og==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280168

On Tue, Oct 28, 2025 at 01:06:52PM +0800, Xiangxu Yin wrote:
> 
> On 10/27/2025 11:26 PM, Rob Herring wrote:
> > On Fri, Oct 24, 2025 at 01:21:01PM +0800, Xiangxu Yin wrote:
> >> SM6150 uses the same DisplayPort controller as SM8150, which is already
> >> compatible with SM8350. Add the SM6150-specific compatible string and
> >> update the binding example accordingly.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml      | 10 ++++++++++
> >>  1 file changed, 10 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> >> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..ba0dea2edea98cee0826cf38b3f33361666e004a 100644
> >> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> >> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> >> @@ -51,6 +51,16 @@ patternProperties:
> >>        compatible:
> >>          const: qcom,sm6150-dpu
> >>  
> >> +  "^displayport-controller@[0-9a-f]+$":
> >> +    type: object
> >> +    additionalProperties: true
> >> +    properties:
> >> +      compatible:
> >> +        items:
> >> +          - const: qcom,sm6150-dp
> >> +          - const: qcom,sm8150-dp
> >> +          - const: qcom,sm8350-dp
> > The actual schema will check the order. Here, just:
> >
> > compatible:
> >   contains:
> >     const: qcom,sm6150-dp
> 
> 
> My initial plan was to use only `qcom,sm6150-dp` with `contains` as suggested.
> 
> But when I tried that, CHECK_DTBS schema check failed:
> ‘displayport-controller@ae90000:compatible: ['qcom,sm6150-dp', 'qcom,sm8150-dp', 'qcom,sm8350-dp'] is too long
> from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm6150-mdss.yaml’‘
> 
> So, I have added all.

Please use properties: compatible: contains: 

> 
> 
> >
> >> +
> >>    "^dsi@[0-9a-f]+$":
> >>      type: object
> >>      additionalProperties: true
> >>
> >> -- 
> >> 2.34.1
> >>

-- 
With best wishes
Dmitry

