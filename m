Return-Path: <devicetree+bounces-217834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DADB59563
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:37:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E287172254
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289E1306B31;
	Tue, 16 Sep 2025 11:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R+aYzdaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718AE2D24A3
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758022646; cv=none; b=t6FpPBnsBXyoblY0Fe6ZesOepvYwCkX8CREws0e/y3k5R7UYLyS6jNMs2Vw7+tNd1cFQh1n6T1ud6mjUUTrMUrvOd2Y03iTuxEi1staR+uZVu26mH1mf3WgoanFHOlUVPjjdSU1DZ1Og+/CXJmsPAAyz6RpCiTd4dWGOz9WIYF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758022646; c=relaxed/simple;
	bh=Vwduwzie+cauuYdZK4G05pulUPijtIl6z5CkSlMro1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HzzQBeFcLNpcez6HhYMlDdqCCKsUNZxhAy7GSSW7B62jRASCzwm1ewnBoCv8arXNauO9AH1NLJP815aWPNG16abcaX1/AbPzJOtjCCktFcPXtd1V2T88CvsenDg7ec9C4iwv70ZJjgibqxTyM1xH/MjY29O6kZSl8mwnlbt4IpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R+aYzdaW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAAMcM003735
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:37:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dxuG3uBlvh++1t244lhPvOvJ9hQr+cTrRHwr2AleVfc=; b=R+aYzdaWE7qzBzkZ
	3r8dVPKPTpL4moVEc6HwWBv+qSrCNTLvNl35lEKrn4LUghk4F4fzy1PjdnTK8bda
	JeUCewIXSOp536KIXjizho3QyHA+2pkQLBkXUfiFK/kc2u4hwGfgj+sHV5crylVN
	yMpub9dvQ7B8Ag4DRg7j7LwqiYcD+gf8d42lYs1WKnSdRWaAAay0wq9Jh9tD2GLz
	IRBxuf3ptYHZc+ZjtYO51t5H3L6e5WTqYPg6SNhN39/Ht4sNWMzc8COFC3tjZh3L
	ASai/UdeM6K+dhaBPWT16P5Z7ip1DXt1ZbWyOTb7ze3moEwyMtpaIg16pc+8Su3M
	iH7R0w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494wyr8yhu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:37:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-77ef97f684eso41058726d6.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758022642; x=1758627442;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dxuG3uBlvh++1t244lhPvOvJ9hQr+cTrRHwr2AleVfc=;
        b=oEAmk9QbJiAn4xmk5kcsKtjUOH6RU6KH2JDF8yWOPg3XBiZSGItzAQC/4SX0bbIWm5
         L3aPS+wuX97Yd5vq6zvl6EHORHeoSCOt07zRh8sXwSJXsXoUwimCLZehOHDGEO3Tz8tG
         I0up2XNbIpv7SMTuaKoDtoZCjq7arvuu+73sjRU9qQt+bWAV8FDriEvGnovK0o0JleOX
         Fsb555/ZQ6kp21qR7Z4BEzu6UfMs1olCF9UFbSlQI6CAO4jh6cHwQunM7wQNzA1niN9g
         UlgqI3cwMpZwaqzEJ1r4SawUgFhq1Q7TwrKLA3wLFaWioGqiiNgHG+5+kjplKohhsuat
         Ka1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXgC/mctPwPcoiBaBK5AtUk6arBeTinsnBwP5KnN85RVylBuAQ0sQTKPJSDv5Fa+OQjqu0R1hzkZsha@vger.kernel.org
X-Gm-Message-State: AOJu0YwV2Fyryoo9QSBt+xsZZjXpFLkVzN0WVV5RMVHTl8YhMdiHysgG
	jpS5khQzPtRGKm/+34giPhCLq+BRXwoZDwMfOHG4S3XYyEn2OEOkiUmpwTVudsdT03kuR4XrCHV
	vg/unQpSWIcfbDRY4xd/+OEuATSlLi8sJTv4w9k50FKCr0C2psyzoSe7D/qEqJxVE
X-Gm-Gg: ASbGncvgycqKZVplYdr+utwG9SvdTX+l75ownCCq8Yje2qwNUkKI5wc4jWYMohu44Y8
	koduIJiVsoZh5kOr4OZwYvIeuW69ApU1ujuBaQJTNgp4SRz5Jq9imyJC5/jPxyicE8R+/14HonS
	gDcHkB+A8tUimO2JjRejy9f2cOo+nxgAGJGAcK+hb2RzbaOxrkJEmZO3rzhEasKTK5XM+FQOVE/
	VUu/5dlirjeZWA7zRlqzNr+HpyH8ujVyljxgtWASj/YMa4bKB6LeXjqG+FC78m+s1TOnp26pgXQ
	zEYnz9WBOVgKUSbJohxNe4VvcZg4LeSrsO63Uu0ZmZ+mwzmByFZhsYq7yaiaEjCa1KsNK4nzIs2
	Z4Wqw6tTPyWZr2SSL5dNj/HkpHzgHr1fNdG16kRdZwU4UqzXBoPRW
X-Received: by 2002:ad4:5ded:0:b0:72b:5e4d:d41e with SMTP id 6a1803df08f44-767c69580d5mr201007836d6.60.1758022642128;
        Tue, 16 Sep 2025 04:37:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxRVjbeGA3MMhK0y7Gk1lUdDnWFrfIP3SLf3A/hUrKPUgKEZcoUaquPXGhgx/yv9i67CvOTA==
X-Received: by 2002:ad4:5ded:0:b0:72b:5e4d:d41e with SMTP id 6a1803df08f44-767c69580d5mr201007116d6.60.1758022640778;
        Tue, 16 Sep 2025 04:37:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5cf300b7sm4379319e87.45.2025.09.16.04.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:37:19 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:37:17 +0300
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
Subject: Re: [PATCH v2] dt-bindings: display/msm: dp-controller: Add SM6150
Message-ID: <qnsxykukg3kigfiihdrrjkp6sbm4qte6lsga3as7eg3xaodtlt@skg5tcp4htii>
References: <20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com>
 <5sg43rsun33i6bm3vz7io7yx2p4m7bmk5bnrnjg6u3zrulyofs@gyxtnfs4gvhz>
 <d302e71f-19bb-426f-a7df-c0d7854e97af@oss.qualcomm.com>
 <67a06487-001a-4af7-83cd-e9d05d848479@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67a06487-001a-4af7-83cd-e9d05d848479@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: uJgQ5dz7fsj0w4LSZ5aarUIUGKHjnhtI
X-Authority-Analysis: v=2.4 cv=SouQ6OO0 c=1 sm=1 tr=0 ts=68c94bf3 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Cl27WJnY82uGaOAjgZAA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAwMCBTYWx0ZWRfXzG/FJzMevXLl
 Dygubjn9N8SvJh7JaGv5Cp35LI3rkaIUdKNxb9zbgi9Vo7X4zDyL+6beg0YFV1+Pa2aCEKERk+3
 Xx6LlXQfm8xWAuxxj/Ud8X5IdbK9GMPTCPS1mD1RS7cw47Ivo+cjtfBTEYfNblZx5xwWk1E8/in
 FkCgQDPURdkHTzX/rCfJ07FYaIXqwCvBSNKTD4lpmDb0HcpSawAuSPwWuJ8EE+29Tebe9fQi8e2
 UzImhqcmB2i6rYu0UvxoxUQgFkGWmmvOAuyFsNVSOcm8YcHTip/Tm/0UrDMzX6BYFJl/T6NJPZG
 Xn1Y++OAYq6Cn/z1GTmIamPBfF7lNIEIeVig1u7SaZU8qcBYmmsj3amcyIeKKtFWcT0OEglzf5x
 dmjRM7ia
X-Proofpoint-GUID: uJgQ5dz7fsj0w4LSZ5aarUIUGKHjnhtI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130000

On Tue, Sep 16, 2025 at 07:34:52PM +0800, Xiangxu Yin wrote:
> 
> On 9/16/2025 7:25 PM, Xiangxu Yin wrote:
> > On 9/16/2025 6:22 PM, Dmitry Baryshkov wrote:
> >> On Tue, Sep 16, 2025 at 03:31:35PM +0800, Xiangxu Yin wrote:
> >>> Add DisplayPort controller binding for Qualcomm SM6150 SoC.
> >>> 'qcom,sm6150-dp' uses the same controller IP as 'qcom,sm8150-dp'.
> >>> Declare 'qcom,sm6150-dp' as a fallback compatible to 'qcom-sm8350-dp'
> >>> for consistency with existing bindings and to ensure correct matching and
> >>> future clarity.
> >>>
> >>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >>> ---
> >>> This series splits the SM6150 dp-controller definition from the
> >>> '[v3] Add DisplayPort support for QCS615 platform' series and rebases
> >>> 'dt-bindings: msm/dp: Add support for 4 pixel streams'.
> >>>
> >>> The devicetree modification for DisplayPort on SM6150 will be provided
> >>> in a future patch.
> >>> ---
> >>> Changes in v2:
> >>> - Update commit message and binding with fallback configuration. [Dmitry]
> >>> - Drop driver patch since SM6150 is declared as a fallback to 'qcom-sm8350-dp'.
> >>> - Link to v1: https://lore.kernel.org/r/20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com
> >>> ---
> >>>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> >>> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..82481519005a1b038a351aa358b9266239d0e8a9 100644
> >>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> >>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> >>> @@ -46,6 +46,7 @@ properties:
> >>>        - items:
> >>>            - enum:
> >>>                - qcom,sar2130p-dp
> >>> +              - qcom,sm6150-dp
> >> In the review to the previos iteration I think I was a bit explicit:
> >> "qcom,sm6150-dp", "qcom,sm8150-dp", "qcom-sm8350-dp". You seemed to
> >> agree to it. Now you didn't implemet that. Why?
> >
> > Sorry, I misunderstood your previous comment.
> > I thought the recommendation was only about the commit message, not the
> > binding structure.
> >
> > Does the current implementation mean that qcom,sm6150-dp and qcom,sm8150-dp
> > fallback to "qcom,sm8350-dp"?
> >     - items:
> >         - enum:
> >             - qcom,sar2130p-dp
> >             - qcom,sm6150-dp
> >             - qcom,sm7150-dp
> >             - qcom,sm8150-dp
> >             - qcom,sm8250-dp
> >             - qcom,sm8450-dp
> >             - qcom,sm8550-dp
> >         - const: qcom,sm8350-dp
> >
> > Do you mean modifying it as below?
> >     - items:
> >         - enum:
> >             - qcom,sar2130p-dp
> >             - qcom,sm6150-dp
> >             - qcom,sm7150-dp
> >             - qcom,sm8250-dp
> >             - qcom,sm8450-dp
> >             - qcom,sm8550-dp
> >         - const: qcom,sm8150-dp
> >         - const: qcom,sm8350-dp
> >
> 
> Or this?
> 
>     - items:
>         - enum:
>             - qcom,sm6150-dp
>         - const: qcom,sm8150-dp
>         - const: qcom,sm8350-dp


Yes

> 
> 
> >>>                - qcom,sm7150-dp
> >>>                - qcom,sm8150-dp
> >>>                - qcom,sm8250-dp
> >>>
> >>> ---
> >>> base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
> >>> change-id: 20250916-add-dp-controller-support-for-sm6150-525ac2ed8c86
> >>>
> >>> Best regards,
> >>> -- 
> >>> Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >>>

-- 
With best wishes
Dmitry

