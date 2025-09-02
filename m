Return-Path: <devicetree+bounces-211808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAACB40A96
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 18:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 870551BA28EC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C55173375DA;
	Tue,  2 Sep 2025 16:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pqnWvNzC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BC132ED5D
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 16:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756830571; cv=none; b=Y1Jg94dK2LEKLeYpewFLPenr6JuBeT5NvtFapqLHcdbJrVJz8/2bzBcSPBUyBC3j68gVgHWapV2pYhfPORiM20Di7FuGDHQRjwDCmuTliHOiqVGxdloigJmDEz9KDCNM3ZYmW2pL2vlbTChI8E+g2SebE/xX9hAy8m1ZytN8dtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756830571; c=relaxed/simple;
	bh=WFH1Jfn1U0TXQSVf4nsILSflDG/MQ3GDVE1dYbCd9fA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NtKgalMh9MdLmmv5AVTvJB7AdZngm+tfUcu6RZpmx1dWPaiO9BYggnd0f1MSFL2f9+jZ/ftrfBhxd0aG8W00rvDMVMcVAKYQgmT09NKLjzDd9Ym/0aYRXcXYNuNkhfnAuGvVuPBpxAyoZjMhea82zHfhAbBStR+6V2aqMEa2Pio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pqnWvNzC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqD7E012705
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 16:29:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0Xxhh8bgiL0H7q1l1CPpc3m0
	Gq3jEgstS7KK5RQ+9VE=; b=pqnWvNzCfd/RNxtmImQvE1QlmXaD3JuDbokxD8+e
	AlRWtv6H8yq2RMDqaZhS/1/aHWoBKFqaeesFrta4ZToioz+CPQ6kCKhG2x3MquSN
	OxsdldxaaYKNMZgdc6b7ylAh3z9ASeezPKbGsaM4iWxR8vx2Vap2AoL/aFLCotcv
	l7Bsoe9Y+ktRiFqOTR1gPSkd8LQxTd/EuFj4oAwaLiwmrh+gpT7/OVRS45SDhfY+
	694mpFOnpDAlooskdhtjXSmCoOiVQsoBzWdGXhFN74lwhOFtXD7AOx7md/e09oX8
	xc6F6YCDnTnRAaXFI+mI1xMncK4nGcARjs3HYt8pBs1rTw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk90bkj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 16:29:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7131866cdceso62804096d6.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:29:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756830568; x=1757435368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Xxhh8bgiL0H7q1l1CPpc3m0Gq3jEgstS7KK5RQ+9VE=;
        b=W8TeiCz6TFS3AWMN9gBvlfa1c0lH5N5VIK45LVk+KhfSlqCxgego0Hy+Io99YdAf9Y
         +SOG7AdSX5CdnQBq8byGdd3QXHQnNk9twGFYEGtGCwUA7gZyunoCyhTarMbvwj3MkkgS
         i6c2Zi9e1r33+/FNS2iDAYREPnOYWxK3SDN9Nan1KOi0Nfp7kF7AVcz11wj2juzeWUWM
         7Hia2UXhBFPldEww8Tr2DcyaPhGZushZlUa0xx0iAkOCPwbL+GQ18ojdk6G4lAgYZE2w
         wp4/sPVp67xHV9sYDvWag9J1ZJV1Mn6a6x+aTwEfGZEO4D8PUZdbJ7y6jm+30mU0wE+x
         jsQg==
X-Forwarded-Encrypted: i=1; AJvYcCV/kOed6gLmkjuX20raf4hsOgt6y78CzmTM84sI6aVzriSTk13AXqGILFRGIEP4R0P1eq7ef470+MOt@vger.kernel.org
X-Gm-Message-State: AOJu0YySWfb9f7TOXhwW6DZfqoCLXJhuQ0UaKZIHgMqHjnUMCrx80cT7
	iwopxNTwKrMVoXc/VfSR4QjnpoLd2F0Axth38L8MqUnOklABda1rzQFqtU+M1eN5DkKnvc+GYQ+
	MAHomCPLFVw6U/YBEfn7S3pkpVbZuSFD2/37rmg7VxmQbE4CgCJ7EKj1+VMXpzan+
X-Gm-Gg: ASbGnctg2Sn1p521hKjnwsrrYdvNHFghbYaSH/MVfcOvlDOEcMcHDnxJLiU+MlwFhAC
	XGt60sc7QbcH9NnyC49omLFOHGU5kMhhcOTsLRFebGZ7Je2q+1mhleS0X28MC7zYV6LaZodBSSZ
	TTKSkUiJ4E4J+IAE+jkWpleOoUVRsENcnVVuOJez1deKVMpMpp9qpqK6MrbsFL8wU/gZKbbPKSL
	cvetr9SHLL8mGChIopFqXYRbKq5NJjxtBhwL8tgz/m9nfSrCLBKvS4XnVWrIn8NRJV5E06UVI4c
	Ya6Qagfk8j2TVYiGGUOb78UgHklv3oYziuAD5Fl8KrvqTCs9jdj66+7SUCZJ4jl/the/HaJQVba
	5y0yIsqWy4KNEnM7ViH+48FlnqOuczs5oU7KZyMDAcmo4qhPUgEdA
X-Received: by 2002:a05:6214:2527:b0:70d:f3cc:59e2 with SMTP id 6a1803df08f44-70fac9458b7mr133850176d6.61.1756830567736;
        Tue, 02 Sep 2025 09:29:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFvokzjH8YEZWHbH11++jlAcTV7UtSBU6wke16GEF1L7hdGxUd+DZW6hiZcGYHtBEnpACwuQ==
X-Received: by 2002:a05:6214:2527:b0:70d:f3cc:59e2 with SMTP id 6a1803df08f44-70fac9458b7mr133849526d6.61.1756830566977;
        Tue, 02 Sep 2025 09:29:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826dd3fcsm808649e87.58.2025.09.02.09.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:29:25 -0700 (PDT)
Date: Tue, 2 Sep 2025 19:29:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/9] dt-bindings: display/msm: dp-controller: fix
 fallback for SM6350
Message-ID: <rivif67xphnva5ql3s6p6gk6uzjde55nzi34unyqktrrjtalgm@gnjqibxo6jzz>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
 <20250829-dp_mst_bindings-v7-2-2b268a43917b@oss.qualcomm.com>
 <20250901-arboreal-gay-wolf-bcaaec@kuoka>
 <qy6c2gundpbz5ixqpt2hefzfb56wcrzcaclqwg2opof4zc7lep@dpc3nv6usurk>
 <24999a53-ea5a-4823-a84f-2ca0ca184bb4@linaro.org>
 <ysj4ndb4twcvmlxb3marh2vktxxsup5l6ioljdgzlod46uimh2@pkgta6r3ydqx>
 <c69ced3d-d1f1-46a8-9930-463306b1ba41@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c69ced3d-d1f1-46a8-9930-463306b1ba41@linaro.org>
X-Proofpoint-GUID: c_u9thUeArfV2ZzGc0TSWJ294TzUjzob
X-Proofpoint-ORIG-GUID: c_u9thUeArfV2ZzGc0TSWJ294TzUjzob
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b71b69 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CoDk-osl1XWOh_45pGoA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX2T1zxscVmbcJ
 k5UiO2KQaU7PYktgab/dfRBmw3dVGfCUdE0aK3LLh7bzxurp+7FiMaj2kzRhlI4biamKbW7Noq1
 YPAGGKI7QkqR6H6V6F/dN6Lu5dyV7HFIaLyf011mnPNmrmYNDThLoOoQpnItcAMnN4Kxnide1Ys
 ujba7+1m3LRyI3H0irwwjVCEgpo9T+MsXMvuPe/KEA3ElsLHXotXOrP0D5/8rwmyEb73lUmDvpo
 ZkRJUGmw08jJyK6yYtJGetja3DsRDcoG+HWZEnHkNopPLKpCR1MAOF8nul/B8zNdGgzguGZqYCH
 ZR39VuqOVnKCYxZCCyVDagUiENIG0NrN7C2SSN3koF1vhAJ3N4QE9vByTpDjrGEwjRIQ+xfOsXz
 jiJOK4Cr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On Tue, Sep 02, 2025 at 02:09:02PM +0200, Krzysztof Kozlowski wrote:
> On 02/09/2025 12:01, Dmitry Baryshkov wrote:
> > On Tue, Sep 02, 2025 at 08:04:54AM +0200, Krzysztof Kozlowski wrote:
> >> On 02/09/2025 06:03, Dmitry Baryshkov wrote:
> >>> On Mon, Sep 01, 2025 at 05:45:49AM +0200, Krzysztof Kozlowski wrote:
> >>>> On Fri, Aug 29, 2025 at 01:48:15AM +0300, Dmitry Baryshkov wrote:
> >>>>> The SM6350 doesn't have MST support, as such it is not compatible with
> >>>>> the SM8350 platform. Add new entry for SM6350 with fallback to SC7180
> >>>>> (which belongs to the same generation and also doesn't have MST
> >>>>> support).
> >>>>>
> >>>>> Fixes: 39086151593a ("dt-bindings: display: msm: dp-controller: document SM6350 compatible")
> >>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>>>> ---
> >>>>>  .../devicetree/bindings/display/msm/dp-controller.yaml     | 14 +++++++++++++-
> >>>>>  1 file changed, 13 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> >>>>> index aed3bafa67e3c24d2a876acd29660378b367603a..0f814aa6f51406fdbdd7386027f88dfbacb24392 100644
> >>>>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> >>>>> @@ -31,13 +31,25 @@ properties:
> >>>>>            - qcom,sm8650-dp
> >>>>>        - items:
> >>>>>            - enum:
> >>>>> -              - qcom,sar2130p-dp
> >>>>>                - qcom,sm6350-dp
> >>>>> +          - const: qcom,sc7180-dp
> >>>>> +
> >>>>> +      # deprecated entry for compatibility with old DT
> >>>>> +      - items:
> >>>>> +          - enum:
> >>>>> +              - qcom,sm6350-dp
> >>>>> +          - const: qcom,sm8350-dp
> >>>>> +        deprecated: true
> >>>>
> >>>> If it is only about bindings then there is little benefit in keeping
> >>>> this, just drop this case.  However you cannot drop it from DTS, so this
> >>>> is a bit pointless.
> >>>
> >>> Our plan is:
> >>> - land updated DT bindings, describing MST clocks on MST-enabled
> >>>   platforms,
> >>> - land updated DTS, adding MST clocks where applicable,
> >>
> >> This part breaks all out-of-tree users of DTS.
> > 
> > User of which one? SM6350 or all DTS?
> 
> SM6350.
> 
> > 
> > It extends the ABI, so no, it shouldn't. We add regions and clocks,
> 
> No, it does not extend the ABI. You are changing the fallback, so you
> are changing the ABI.


I was thinking about the whole patchset: adding DP MST-specific clocks
and regions. For this particular patch you are correct.

> 
> 
> > existing users can use the previously defined feature set.
> > 
> > Anyway, is it about adding more explicit note to the cover letter and/or
> > commit message or would you have any other proposal on how to handle the
> > issue?
> 
> Please be explicit if Linux was working with the old fallback or not. In
> the DTS change be explicit about impact, e.g. that sc7180 fallback is
> there since forever.

Ack.

> 
> > 
> >>
> >>> - land driver changes, keeping legacy support for non-MST DTs on
> >>>   MST-enabled SoCs
> >>>
> >>>>
> >>>> Lack of MST support is not informative enough to claim it is not
> >>>> compatible with 8350. For example if it was working fine via fallback,
> >>>> then that statement is simply not correct.
> >>>>
> >>>> And it HAD to work fine, because there is nothing binding to
> >>>> qcom,sm6350-dp.
> >>>
> >>> It is working fine since currently we don't have MST support on the
> >>> driver side (nor do we describe MST clocks in DT). It's true that the
> >>> driver will have to handle non-MST DT for SM8350. However I definitely
> >>> don't want to describe both cases in the bindings. SM6350 is not going
> >>> to be compatible with the MST-enabled SM8350 schema.
> >>
> >> The question is rather: is SM6350 going to be compatible (working) with
> >> MST-enabled drivers.
> > 
> > If somebody implements e.g. U-Boot DP MST support after we land DP MST
> > bindings, I would not guarantee that. SM8350 will already have second
> > stream clock.
> 
> 
> Having second stream clock does not mean device stops working with Linux
> kernel. I can easily imagine both cases after adding MST to the drivers,
> the SM6350 stops working or keeps working...

It will keep on working, since we need to support old MST-less
sm8350.dtsi. 

-- 
With best wishes
Dmitry

