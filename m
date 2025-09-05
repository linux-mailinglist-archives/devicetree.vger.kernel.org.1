Return-Path: <devicetree+bounces-213512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85952B45982
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F7971BC48B9
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29A2352FFF;
	Fri,  5 Sep 2025 13:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kFNVac5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3833C3568FB
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757080092; cv=none; b=WCsqketKdbk/ijpVEa49JN3pRFBFJRuejDVHDswWc1h/WZae/K1dIea3dkFgRRCqDmESHsVHZ14yo1ZSWWdVBjIr0wkZV2RAhIboNx75JfPI853afrTmC71JLMec/7WHwJ1V4aTCBdnWuXm/M3YPoT/SiMcjlnAeKCmC7aEXrEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757080092; c=relaxed/simple;
	bh=aLoP9fVki7moFz2j7CFs1z2tkOV5HiWWcwU8+urXZQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UnsLO9kYO8OBOhESehNyJ2f4nP+v6BJh4xOmipMUnFzGteoSYgfGAhyte21p/5h21Y4CW8IhQgpIGaCoOpC0ffw0yGDg9Eoey+e89NZ6G2eJhhi8sBTCMRkM8uHoTIaaoA/a+aQ/0jJjZ4GOPZNlIGmEboEbe0Y6ZhRNMZfyYRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kFNVac5W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5859O0t6029357
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 13:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ap62K/FP1kV8FYl5nLQxsQVk
	YwLvqHfb1niQXjNYis4=; b=kFNVac5WmL+evduZmBgoD0T6kEYqwEtpzOOB7XMG
	VJsTM6cV1fa3qYXkk0UZPHxqmCUD9juJRz+N41KBPZ+hKV9Qgbxf9ksCfik8IiAm
	t69f/7Lke8FAo421AH3JiPsf5zeqJey7T5lv/5ng4VXQ5oEeuTdQHRD4nCuddDlX
	9k1omGXx2g37FaCj9ROgEiv5YpHmVr/jPp4TOilcmiFKCof/DCGwflTIkZ0fR5Yl
	KPiueD4XuMqLDqQJ1SARVhbH6eMZoVOXZZAbWBCm+iUlzLkqvkMtLBb2BcNc9F8r
	CCtfvW32rDKE6b6vOXduBr1iGwlIDc3sgTpLTiLAbDNU7w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8sbde8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:48:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b345aff439so55697271cf.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:48:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757080089; x=1757684889;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ap62K/FP1kV8FYl5nLQxsQVkYwLvqHfb1niQXjNYis4=;
        b=DkPpwIyKhY5I0696D8xL7HHp98/x4c1Bxn2eQPHFstLyw5sa/LVtO3SZwohhXmtA0j
         T8reJEAoOhlWqMPgU+TfOnjhxDnJnNef+0ziHR3CWAhusHnV26SGCL0osDRBI/lIx3Bq
         7qA0yKRQbYpfddZiU1NfF4DN222+L4W3xHq0Z+jmQXuQOsQjRjUiPUV4DsNR9K7KL1cl
         720wkC0X5L1gM4DmC5wv3r1UvY3UOpo0vkph4pMQYwnLl5qc0pElj3p1uyDqLvC+s+eR
         owI+1Yr/gvhiGrF05wpl+OyQya/aNckf/kYNOlwpVnjOGgeE6FhG3wIqspfz1B9H/eya
         lc6w==
X-Forwarded-Encrypted: i=1; AJvYcCUkESO6bs7H4/seWXVXWU0XvJQXyWVu9PzR/F39WZQfYG7i7rCyN6evGGFZX7j3rh69CbZJgEqDXLlZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxLpV86buoW8I6gqZXd8Ie6AaeMdVeLPsmpp+dEKNRSwFdMSTc9
	LvjrDFTjVle5II00movcxJidWNiaugmHAyR4Qh6naiGzXq3p7IJtf37bQDK2zq8gOVcreNCKrV0
	BGh+Lzm1G9T7cMgY8q0mcZV8gbrNY5XG7CH4rAt/EuPkiCvfySWRQE5Co7eBO2LBm
X-Gm-Gg: ASbGncvRlxl20Yoex6WR1E7xDScnC953LAOTvT6q3SMAcHNzsdlr4eEChAY5VdnOEJl
	c0+fEmJUai1iwEzEB7LfC644tFhFQiUJt55IExs8GkfQroUQR1o18+bQefAS9hgzNV29accaONz
	D6cwY73Pa/39wposrhXqZz7cNY/rlz4yvz/vfRjrTuGM3yh+0t4q4jkNXJgo9KD9OriEw7DQ/si
	pMRoDVDQWGTVFBkdKFraWLBZ3yqeLpHcneyN7ZnA0hPzuXbnNERZA0fSHvAf4QLcDGYUpO1/1va
	a2F4SMhwMZV9RlEADWfiti7UP4ZddscM1xH2lZStEgq1iJ4u9jQQupzdxJuTrbCUTbTAc7/SbsK
	LE/4vGbT+YXCZyC+lgC5tYwCNy0uX/eAZ7JpB49hD5w7xDtjIF7av
X-Received: by 2002:a05:622a:38f:b0:4b4:971c:2fe4 with SMTP id d75a77b69052e-4b4971c3190mr98469391cf.62.1757080088829;
        Fri, 05 Sep 2025 06:48:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGU1g8bwxyXF88f0bGvMVljHRg7TlISluEwFFoi/D70N/z1VXTCr/7Gek7kIvhhpDJ2WIEJ0Q==
X-Received: by 2002:a05:622a:38f:b0:4b4:971c:2fe4 with SMTP id d75a77b69052e-4b4971c3190mr98468881cf.62.1757080088273;
        Fri, 05 Sep 2025 06:48:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abb7c74sm1792273e87.54.2025.09.05.06.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:48:07 -0700 (PDT)
Date: Fri, 5 Sep 2025 16:48:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 2/6] dt-bindings: display/msm: dp-controller:
 document QCS8300 compatible
Message-ID: <jdbwncstextusng5boqg4v5r7krbnjts6f3zgd65cu4rrst7ay@kkod7ihbgfrp>
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
 <20250904-qcs8300_mdss-v11-2-bc8761964d76@oss.qualcomm.com>
 <p2okyfwfl23bip65koaqezlvhyo3z47bnugojcieuspr37xc7b@s3qwgbqmts4l>
 <d8aaff46-9e3b-4b53-a690-351253753edd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8aaff46-9e3b-4b53-a690-351253753edd@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX5oPcowcOQpEy
 +oKAq+KQe98P3k+PIxzml9gVTlxHowWZ14lI2blyfNn8jkdPleUjE3TdSGMFM2jy7H86V7YaOAc
 TNHYKtn+wUe48THSo0jmPAjTBJY5lzJhNOskqyo4/KuVLOSW11K4SIJ0/zpnBB3MgxbOAaU0H9L
 8rqCDA/97NePRdQaXDexLEd3beQtODgE9h+qigRHgNMt5mmZIFLuTVy5NvujkFgoNq9gTHp9ah1
 vWM+nxDTNhsUN0GlYxmZVcxcPLi+2JMTc2sZzyfwtI3f8uB/zoKFxV5M3++TJ7FkwkLh48CsuDs
 DSQvLI+p+IYxzalXkQdBm0b3LeB6aCfk/qEJXsYlUmYXHh4wbgzKfx5JgUjF/OrqZLBSQTBzmj6
 wwtY5Fyk
X-Proofpoint-GUID: uw9fIeWAneNMLjM_Rafh-t5VXBP7pqJ7
X-Proofpoint-ORIG-GUID: uw9fIeWAneNMLjM_Rafh-t5VXBP7pqJ7
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68baea1a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jiGyGyMmBADT3WBvkIIA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Fri, Sep 05, 2025 at 10:50:33AM +0800, Yongxing Mou wrote:
> 
> 
> On 9/4/2025 9:43 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 04, 2025 at 03:22:37PM +0800, Yongxing Mou wrote:
> > > Add compatible string for the DisplayPort controller found on the
> > > Qualcomm QCS8300 SoC.
> > > 
> > > The Qualcomm QCS8300 platform comes with one DisplayPort controller
> > > that supports 4 MST streams.
> > > 
> > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > ---
> > >   .../bindings/display/msm/dp-controller.yaml        | 22 ++++++++++++++++++++++
> > >   1 file changed, 22 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > index aeb4e4f36044a0ff1e78ad47b867e232b21df509..ad08fd11588c45698f7e63ecc3218a749fc8ca67 100644
> > > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > @@ -18,6 +18,7 @@ properties:
> > >     compatible:
> > >       oneOf:
> > >         - enum:
> > > +          - qcom,qcs8300-dp
> > 
> > Can we use fallback to qcom,sa8775p-dp instead of declaring a completely
> > new one?
> > 
> I think we can not use fallback to sa8775p, since we don't have DP1
> controller for QCS8300. SA8775P actually have 4 DP controllers (now only 2
> really used). So in the hardware, i think it is different with SA8775P and
> we need a new one.>>             - qcom,sa8775p-dp

The DP controller is the same as the one present on SA8775P.

> > >             - qcom,sc7180-dp
> > >             - qcom,sc7280-dp

-- 
With best wishes
Dmitry

