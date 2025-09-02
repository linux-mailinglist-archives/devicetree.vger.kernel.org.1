Return-Path: <devicetree+bounces-211484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 687D1B3F338
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB29D1A812FE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E932D592F;
	Tue,  2 Sep 2025 04:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FbK2iQxf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD61321D5B8
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 04:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756785838; cv=none; b=gmr3+HasRRjVpjRtdpplTz4BsAk4GFt0JERLgQp8qNPzKj4caBl9DnLLHR9tAi+U3JTD/NNXKFM6Hj4CjEaiaWEqMwm3/tf4fhAV+dBV+EWhxh8nVYH7EbQ3CDMDQI8JS6iwlKFxZhL+gb1cP/LvwEp99KWN0ehNFCEnU+AVhRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756785838; c=relaxed/simple;
	bh=ymLPCwxFwbrJgIxnlIP+Phx2dA9of4l70QPZIV1FKRw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gH4pS5ch7ZKd1jzB4O0VZ0i2A8bkHAJPWNuX86G990p0SlxBlbJxmcDbZ7/1Mj1rgzGzLoLJuMi8Wdf42Sa52zLbs/aCE60CQYmuvLAlv2Mj1f4249xtxpdFHIqDMpJkwLI8cJxNNeno5Ua9jV21HV5d9KsyDGDsRuZLX/gsfU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FbK2iQxf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RrWa022018
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 04:03:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/WALGo2JvVutG6gsRclwiFGQ
	ouibq4L+PAjX0XefD1M=; b=FbK2iQxfnOMuCc7rkHLQwVJRNsv29dc/n7Xa0Mjr
	rSk/PZGspJytwWUBRjGXTUU8KxeRA7ygvpBaUghYPjXzbIuul3HSjMKtE0HKZdSd
	if8NCoQty+xj7S4bJ7AMpvUTpqKV4DcMB4P7gcQWTiBWJbjtEy1oRh9iB4foD95j
	xkJt3cAV7YkRFL7Wfp6DKqBRj55FupmMi+0t1CmcB7FIwjlyMq5XfSMVMN/yQWpu
	IGBHbk6Cw+c85lEroHjNeN3sY43jmqud/gsUcpqK8EbD5CzOrTazxejqhEMnzbjP
	6h093TkdP/jr6J5ZwLWvKmCzTPQ2wu2Tm+UFJTeKkniRoQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp6jur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 04:03:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b30cb3c705so19971441cf.3
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 21:03:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756785835; x=1757390635;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WALGo2JvVutG6gsRclwiFGQouibq4L+PAjX0XefD1M=;
        b=ugtgzBZvmcIGmZwG9qv4wdBcBKW+wg39tJg9jzlf1sHQTtaZsNwVCy7Y4+82e1LwPF
         NtmeOmP1dSEEeob6u13sSYHxD0vke8WB6Zu2PZAAwiN+pGo8G8+Sj4qurkBzKWjRNe/5
         3x6dK/fwccENxCGhZhE3NeGfZG/yxr0e5nUJa/G8qwpQif0Liu8rGob7ypvDvm2G9ci1
         rPiOWji993MNA7r9N0M1+olG8JyRdPejfW2Z2/aQGS2VYqhbxU2mhFWKpTxyl929a/Bs
         0bWRq0WCOXBrjwIFhcdw0BB2msd8x3z3QdMCUrjDSrhE6Dob+FDvE/aAnA+OEfbeRybw
         Eq7A==
X-Forwarded-Encrypted: i=1; AJvYcCVfe99rqcpnBHUl3VvVXxcWaJgiN9DLmEAbOU8NXAGbItYgCsRAu+LRIYQhPXY0MSDpc1j/pb//aYAN@vger.kernel.org
X-Gm-Message-State: AOJu0YxHPRaacdP9C7NULOBj32PTzNpSK1LxriicU5Hz/4vbqe9OdJra
	bC94E0hiS2ssBdExvaG6SGuPl5TcbjiQ5syDGkfa5sRcuxJ3dhDwF2EMwjSpuO8elc1caxPTDZ2
	VWw69F3JOu2zlDD2KzM+GQeROTau6Lo4nVsYAG9yinVw3CbpjU3wNGabGsKD9tMP1
X-Gm-Gg: ASbGncudK7WlZsM3WQqenRaeW3l1lzmTUKNsCwGfbjB3U8imGSrX1Ew2c+FZ9ZtxwLD
	sRObuAKgolMfj6PAzfjSEoTvWjYe399jGDQQZSWc4SiTZrk5ltWKOtHaTf7ITB5qlDNTciyJMX1
	MbnnECY9F53dIP6olnBxmtm13OXafXgfSP5Cjef6cq6ku6rrIe+zrUpBDIWt4kHiy3L9ruQrtcr
	V+S5DgXQvrG5z6/DxTLHV82+GnNRNzsO2PiTCNOUn8AlaYp+ER8of1CKRf9Qxs4sOGxHM6uKM9S
	J0uGLHR9a7SzaLc2e31Bv3Q80cNYD5XZAHjJHCCtUr1qqNkNXkoWj3kxd+aNdZ6S5rOdJRDMfaq
	p/7Pwsu/hDI1c69BZrpIdH/lL5goVXuRSTSN0MSL5Qvp20JuKDckg
X-Received: by 2002:ac8:5741:0:b0:4b3:196e:d10b with SMTP id d75a77b69052e-4b31d855248mr109144311cf.35.1756785834658;
        Mon, 01 Sep 2025 21:03:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhz3e+S9igaqklM+Nu56w7qP0qgEoNyJRpjNeMOfilH27MmdcsBcxnapYMReC1i/HfHJ18xQ==
X-Received: by 2002:ac8:5741:0:b0:4b3:196e:d10b with SMTP id d75a77b69052e-4b31d855248mr109143931cf.35.1756785834103;
        Mon, 01 Sep 2025 21:03:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826d11aasm352891e87.3.2025.09.01.21.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 21:03:52 -0700 (PDT)
Date: Tue, 2 Sep 2025 07:03:50 +0300
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
Message-ID: <qy6c2gundpbz5ixqpt2hefzfb56wcrzcaclqwg2opof4zc7lep@dpc3nv6usurk>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
 <20250829-dp_mst_bindings-v7-2-2b268a43917b@oss.qualcomm.com>
 <20250901-arboreal-gay-wolf-bcaaec@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250901-arboreal-gay-wolf-bcaaec@kuoka>
X-Proofpoint-GUID: NIhm7edZqRjTwfs9X6rt9eapGyhBGlJS
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b66cab cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=AgfzEzIlf9_PdHV74f4A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: NIhm7edZqRjTwfs9X6rt9eapGyhBGlJS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX8kcZmyuhMlF+
 oX47OaVLJtGIgHzGlQTuzMnZ4xzELEKRhkJeITtARTHvRj9T8yk09T8yNNXRaYkHBI0OBBBpQuw
 W7QfWamwxXgBEQQYjISDWoy3FLiMd7lOAwG9R7ihLmoMpKxrsoDLaxfLCGkWiF4j7W5C/LCeg4P
 61hyg/cArbC903L1mHVvXYPbeg+W4x1aHlDtV1OY2CBTpP5QVxUk2rii0Tl0CBu0/vLmj2N7Eas
 WgtJD80qsOpl8h+BGvBEeZy2513PzwtESjWGiscSFxFbXTNTSjHAJEzKeS8frP+2yIUkPgyn0ih
 AZSpUHGuXZFwhOvG+YZirQqHNhSuwWNYrXgIyTj1/2HxfIBHf5dKc9J0sV695taswScLqzy9bby
 5gr3cfmH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On Mon, Sep 01, 2025 at 05:45:49AM +0200, Krzysztof Kozlowski wrote:
> On Fri, Aug 29, 2025 at 01:48:15AM +0300, Dmitry Baryshkov wrote:
> > The SM6350 doesn't have MST support, as such it is not compatible with
> > the SM8350 platform. Add new entry for SM6350 with fallback to SC7180
> > (which belongs to the same generation and also doesn't have MST
> > support).
> > 
> > Fixes: 39086151593a ("dt-bindings: display: msm: dp-controller: document SM6350 compatible")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  .../devicetree/bindings/display/msm/dp-controller.yaml     | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > index aed3bafa67e3c24d2a876acd29660378b367603a..0f814aa6f51406fdbdd7386027f88dfbacb24392 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > @@ -31,13 +31,25 @@ properties:
> >            - qcom,sm8650-dp
> >        - items:
> >            - enum:
> > -              - qcom,sar2130p-dp
> >                - qcom,sm6350-dp
> > +          - const: qcom,sc7180-dp
> > +
> > +      # deprecated entry for compatibility with old DT
> > +      - items:
> > +          - enum:
> > +              - qcom,sm6350-dp
> > +          - const: qcom,sm8350-dp
> > +        deprecated: true
> 
> If it is only about bindings then there is little benefit in keeping
> this, just drop this case.  However you cannot drop it from DTS, so this
> is a bit pointless.

Our plan is:
- land updated DT bindings, describing MST clocks on MST-enabled
  platforms,
- land updated DTS, adding MST clocks where applicable,
- land driver changes, keeping legacy support for non-MST DTs on
  MST-enabled SoCs

> 
> Lack of MST support is not informative enough to claim it is not
> compatible with 8350. For example if it was working fine via fallback,
> then that statement is simply not correct.
> 
> And it HAD to work fine, because there is nothing binding to
> qcom,sm6350-dp.

It is working fine since currently we don't have MST support on the
driver side (nor do we describe MST clocks in DT). It's true that the
driver will have to handle non-MST DT for SM8350. However I definitely
don't want to describe both cases in the bindings. SM6350 is not going
to be compatible with the MST-enabled SM8350 schema.

Yes, it's again a lesson of 'describe hardware from the beginning', the
same issue as we observe with several other Qualcomm cores.

-- 
With best wishes
Dmitry

