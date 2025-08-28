Return-Path: <devicetree+bounces-209963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A031B39AC6
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6D453B112D
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 11:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150A330DEC6;
	Thu, 28 Aug 2025 10:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ap71NfQ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6518C30DEA3
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756378791; cv=none; b=GQBdmdS2cpAvV1IL3jPA3xAFh143osf69tQA+EiPMiuf+CxQc+RiLwDqUYd1y1R/aEO2/4HqqNCwJwAV6N49azrT1GO16AxwC8IT50L6as2biB21u3MGa4uSmqb+2/WWFAyjlhEyp5R3+dOZm5s25t1W0okRFRF5Iww2Z1ZjsBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756378791; c=relaxed/simple;
	bh=YFpBQDAPplpbmlEZuRqtJgd9SqJ5vf93R9PVYxaJRmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SDNZZuAMEFfluhdqj/k9LUFKXsu74cgCMdIFiI5/J84NXuHYCwUTfM6/D6ud31aPpOvjqyDkC3nSlu6xfrsKzUzNAqGn+k8dB0GFs+9phHkYgioPRmvhhOPAfpVTDPZSPXzjAWghL6sCx8/K4kymuJQpNoKl909DK7wUcrEmF4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ap71NfQ5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S9LSAR004962
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=09leXTKVtloMTscnxlYkAl4E
	C4Rzi1g0wwL1WchT0Sk=; b=ap71NfQ5K5jUDAfi+bXDcK/qtsgDg/YT/SZQC3gA
	/KmdePO0gMNFf0DYCXDBlZ01Q4r3/BNnxqwvJVYQ+29iMRJxb/z/3gD+tHMF403f
	kUb6+RzXWlObGjItyKH0d5umGHD2g8dTHyWC290dsrpIBCd5JUlXIETQpIgy7ZmO
	1ZRlal1ZwMyQQfvteSoPx0Z3MiU/nNh5MtDR88tZlco9Z+VxSxgAvST3rlUNTDtP
	rqRVR59XSbo78R7HHHiV4FYczqvkJSjT9BD4UFdvuQWkDhHWrAVFNLZcMW/Kp/QP
	8JBjIcKbqL4ylLT+L2qZu8DNsfM+D6eJdurDhpTYcrkyhA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpghpxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:59:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70dfbead769so2659726d6.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 03:59:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756378787; x=1756983587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09leXTKVtloMTscnxlYkAl4EC4Rzi1g0wwL1WchT0Sk=;
        b=UWNeGq6eLVDZo84uDBMW+9QYZv4arAKahC8ckrDBU2aH6HIfcd4JiQ3WLAGL5WPzwp
         V9Iq47Edpob1FxAh75T5G1mt2GUYTtATp7TRWHv1Ud0wGnnF1h4qxuP2YMwx7ZeI+Rza
         qO2Pk99X0yp2wqq77WI/PbIx/MMRb33JCv4op2lxbXAjDX8YggqIdmNPyAnf2k1uPJnV
         uQ3HIpK3NpSKxPqvKRpbadeE7i2EWRiY9FwTnZoFR+/N/zh9TQ+vrsh7zYk46bZ63H6P
         g8Yro3buc+Ej/T8DN75wlCvs+pZlz7muQUV3ekWphtEdLL/NArH+tPuvegrKkde+r2Qa
         seFA==
X-Forwarded-Encrypted: i=1; AJvYcCUMVCks3kkEtodHKK/fOJ+ISLx7MldyV1qcsa2I2Ee/SiLKdbbN6YsJzFViKThpC2pgMT+D+TgfZ5aW@vger.kernel.org
X-Gm-Message-State: AOJu0YxXK3FS7lUQ5kXGPRfYJzUQjSR7MqzUyQjN6HS/6/k2+etOJjde
	+up50oc656PwpOwA9WWZKQabaBCWp2eqwkec4WUuYqDivbdOmiBlNNIJcbGhoDAailjudOBwF9o
	QOJgJ4vcn940GecBCKLMyBH/2b1sGx/wAJJBnUCRNpM5rQv0GzkBml+SFQXFTR1gk
X-Gm-Gg: ASbGncs392KityvhRq8usUiIbgwJ8NjYDSdMxqiFobsk8+kXKjyYXr8zc6Mw08xQ4Fp
	/KSgqhXYAlzxce0xc21PNM9Fx7dQC/69qXu63MXpu9OOcsIvf/4DpBm8kN/DKAbkwDBTUra+x/l
	BdkiRqTv5cChXTx09TwMnKHMiwa+co8VZXKCIZ34i83Vrpu3iKuk6LW+Uzsrwkm1y0SRpKuoq79
	JGNMlkqU8Mpl8ligINNvh/4tjOEbbPEvrpDxItRqZ0PuRFtZwv5WNmV3H+myL55Bmw2J+YhAXQF
	S2vZy+nexluJeauWHUwQpJqUujMiarxeBzdAAHeF2hgjsamBb2DgP1U2wcYRRR7herO+ZSM1Bv5
	l3uUDS8Eezg8pVlIcYxm3QzH2hzEhqTOW8uGgOu7cV7Ys2RTi+8m8
X-Received: by 2002:a05:6214:765:b0:70d:dd5b:34bc with SMTP id 6a1803df08f44-70ddd5b378bmr79863896d6.37.1756378787446;
        Thu, 28 Aug 2025 03:59:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExFIterP9dImItBjYAqD1Xx4x9yddy09PGUubw4yf9+Su69Wqk2KWb9HrBNMXk2uDDsgEepg==
X-Received: by 2002:a05:6214:765:b0:70d:dd5b:34bc with SMTP id 6a1803df08f44-70ddd5b378bmr79863606d6.37.1756378786978;
        Thu, 28 Aug 2025 03:59:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5aa917sm30826041fa.41.2025.08.28.03.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 03:59:45 -0700 (PDT)
Date: Thu, 28 Aug 2025 13:59:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Message-ID: <vp4shoc6nok6byyrkq34772ag5axnfcugbr6jbdxglazvneurx@u7j36gjp5vna>
References: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
 <20250825-qcs8300_mdss-v9-2-ebda1de80ca0@oss.qualcomm.com>
 <20250828-kind-crocodile-of-progress-6cbbb0@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250828-kind-crocodile-of-progress-6cbbb0@kuoka>
X-Proofpoint-GUID: OidZD9DvHaqfkXLr0ZOgDUefF5udaBdU
X-Proofpoint-ORIG-GUID: OidZD9DvHaqfkXLr0ZOgDUefF5udaBdU
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b036a4 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Rb9tGRSG334u1UeLp2EA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX36h2Auj6cfyc
 pcMgrhqrZLVICcENcQa0nb2hplmr9n1ldc/V9/WYpANZkouFq13p0KBayWjG/ohPmvtEENiu9Aq
 uZm2+zw0Vk+lc1PEPEnoVLFlVHrEEoEw3HNUfD29+K/t+SR/hD90KWnHwX+whhcj4qsRSIBIl2d
 kw2xUHcl6wLV89G8HwnIaE+QNphIpKVIQPB0dOi8Q8o2hqo3GTPBHUDOaLZOGGUtdJCIeX6urh6
 0WOszkd1tWGGxesHoruZlt384ZyZ1evHFLdbmQE3t9KbuPquCDcYfOb0rf5w3JHGGqhoPesohA0
 miGPbDzguFH0li/rcX+McN7tu+QVQdx+cAPhD5yLto1VgHcZj6wlEHOah0brryykrg84lNY+z6L
 my6499Es
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199

On Thu, Aug 28, 2025 at 09:36:24AM +0200, Krzysztof Kozlowski wrote:
> On Mon, Aug 25, 2025 at 11:34:21AM +0800, Yongxing Mou wrote:
> > Add compatible string for the DisplayPort controller found on the
> > Qualcomm QCS8300 SoC.
> > 
> > The Qualcomm QCS8300 platform comes with one DisplayPort controller
> > that supports 4 MST streams.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > ---
> >  .../bindings/display/msm/dp-controller.yaml        | 26 +++++++++++++++++-----
> >  1 file changed, 21 insertions(+), 5 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > index 68a6fd27506fda004e53174db5bcc88a29e8d2a6..4da22a211442b7abe2dc18e769d8fd14d224eb40 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > @@ -18,6 +18,7 @@ properties:
> >    compatible:
> >      oneOf:
> >        - enum:
> > +          - qcom,qcs8300-dp
> >            - qcom,sa8775p-dp
> >            - qcom,sc7180-dp
> >            - qcom,sc7280-dp
> > @@ -179,6 +180,7 @@ allOf:
> >            compatible:
> >              contains:
> >                enum:
> > +                - qcom,qcs8300-dp
> >                  - qcom,sa8775p-dp
> >                  - qcom,x1e80100-dp
> >        then:
> > @@ -241,11 +243,25 @@ allOf:
> >                minItems: 5
> >                maxItems: 6
> >          else:
> > -          # Default to 2 streams MST
> > -          properties:
> > -            clocks:
> > -              minItems: 6
> > -              maxItems: 6
> > +          if:
> 
> Please do not nest if:then:if:then. It gets unreadable very fast.
> 
> I don't even understand why you need this. The code does not exist in
> the next, either. That does not help.

I picked up the MST bindings patchset, so the code should be in linux-next
soon. It already contains nested if-then-else which defines the number
of MST streams available on the platform (R-B'ed by RobH). If you think
that we should remove the nested if's I'd repost the bindings series
first.

-- 
With best wishes
Dmitry

