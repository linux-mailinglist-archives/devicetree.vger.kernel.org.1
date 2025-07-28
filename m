Return-Path: <devicetree+bounces-200317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CDDB1424D
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 20:59:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D9C97A3BF3
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 18:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B758275B00;
	Mon, 28 Jul 2025 18:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pcFmvrzc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CFA1D5AC6
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753729152; cv=none; b=cemDueVwSpDoV268JHJQunHLGfmtgH4GygBJjZLXyJKLeDwJNNZYlBTp5nmw9x1aw6Qzo+cXO7A6jWUXeetqPGg2x4isHOebnBeHdc3oUPvX2r9rKdeowBGQTLHEtUsOZ8u4hcv3+sX4N5JbVAhUGxw/zd409bVOTAudtV1IDxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753729152; c=relaxed/simple;
	bh=IWpZoNGayIjThY9y6ABT29cNtcvfwrGLV6Mv5IWqx5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OE3whdVYXf15NrIJHjxnIgAHrAvSVxkL3vZEvRcz+rv1THh2/DhXyy0BcOq5/rU2ws784uozdWZ19bo9Hb/zixVsI0WrRLz/N/ZrbakMCTqQBQEHS1SNlhKwYLyOodupYi+ud9DiWrqJQvm/fv1Gh+5iaIRsdszwKn+RQTBeg3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pcFmvrzc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlIst014561
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:59:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g3b9mjC0DOS1TwNiZSFPS5aw
	kCSouvEfEECI0Xi46LI=; b=pcFmvrzckhuIL++xLIxfre8lNoQD6k+Ws3MV2M6w
	btcd6Titg9W1w/jUeebgyZbMIgfwYKc71Bk4rnApD8XY5EW56PdJbompNCwbJD6i
	7EJJFtNSbNprjMuS4Q4D1+uFs7lTCMbC4XEfoyKTyeCdskXzGVBU7WRjYpoBY+Ja
	SN0Kvz3cnFujCiq09UUWfWtxoUcdQODiGRdSJW11M7f9iWeef1BK4lwP24g4mlzc
	555Cn72oYPTQ2krMRu6FUoksgZWFWkquoVIClMOc4IjftpJe/tQsP7a79kW4XV8p
	iBmXxnTXff2Xo2YnHgUMWfqh5RrVhqlwsmZAlYSdeqOSoQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q3xnjrm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:59:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70708748fbaso78583526d6.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 11:59:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753729149; x=1754333949;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g3b9mjC0DOS1TwNiZSFPS5awkCSouvEfEECI0Xi46LI=;
        b=lbe6sd3GuM7MbD+y9MNawLC15YKDL3ofqKwzuJzbEha9/SsZ0ONT6dhx4Ekm+ql8j8
         NNptY4JHVCXgNsPDn1OvNZ626ZxAIZ9RCFRQI9R7KUJSYoM90G7xxmo4nBbijq5+fKEE
         Mjv2n6cKdnfXRjP9n1BCmRFqQxqThX6d5TAqRFoqQuta/zx29xc/dt8Pip9Oz99lcv5y
         hb9x2W6fp1UEbI78Hk0Hac4WI5Djpx8vjNrvJDqBVwpKDdQcNn1SxHfeYuU1iefOpJdo
         Fk+gs7pYRu2fJLPpDVs/sR7zIg6/wwz1ndUCXsHeiTZRDY/QIBw/VGZGsQ8YFM/NCBQS
         NoDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr5qDnvkxAUZyx1XB5Iyl9ByIPyQgZVv2Hm8cL5GbGrTEUiLjCEUCcEgvQfu2/Uu/6SoKCF5P3rbnM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzke6DJXOAhuJUV0kFwiaHIr8kuTNfhQ6cbZILkj8C+3rGowPqH
	KBa3OL+HfGER8cmFyiA4Uyt03cDNAdqqFSl5iO4LNwvQ0Q+iFjaxJcQncbUvuUBm3fOipMQaAIp
	T46XIOE+e4rYQxlp5ibdmu7XbvQYnoKXuzIBPNG0xjO9Tjd728aZxLx2Ng1OCiRuX
X-Gm-Gg: ASbGnctVZ93+3FGGEGyBGxNfvZ4OlQ0Py+SfBPd+BMlgMiepT68UXY+uldTQGNrc7hm
	EH4Dadkw3FZZgLuhLsL4aLXV0nbBBKY77HkNFVf8zQuvi/IbMfb2UTradl+hTQ5ygb1gxlcJ4OY
	5c6SyAvu7xlzj4sMOARSCyGo9geMkEUd9gQhgSka2LuPZGcn5eqgB8zSzZHgB9ZnvenWqTtfWdE
	NbtcQbXrn89JsX9qjE/CpizGKrjeA+yelKlx8HkbsWisji8PtBkVhrt8tbQcX/392/UnCbdH270
	HdW/VSZGuh9AB8XKpbyP6A9i03mrQDMzZheYFD2XL9U9KKlVEWqmhtiLegdBxJLwP9lzz0bH5Wk
	p6ifYyhxXpRTh6INh/JxGk6GWSKP1zzL8AapnLTtZFT5uKg5ei4V2
X-Received: by 2002:a05:6214:2261:b0:707:1b3c:4124 with SMTP id 6a1803df08f44-70720514bc6mr139816016d6.6.1753729148809;
        Mon, 28 Jul 2025 11:59:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeR/e5yy2Dmbqpj9B2szzZpphi7NqKMlFSMX2Qojm62xxZ84NsscDMGppFa+sWmqZGFGaQuQ==
X-Received: by 2002:a05:6214:2261:b0:707:1b3c:4124 with SMTP id 6a1803df08f44-70720514bc6mr139815506d6.6.1753729148113;
        Mon, 28 Jul 2025 11:59:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f4267695sm13324171fa.50.2025.07.28.11.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 11:59:07 -0700 (PDT)
Date: Mon, 28 Jul 2025 21:59:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH] dt-bindings: display/msm: dp-controller: allow eDP for
 X1E8 and SA8775P
Message-ID: <kvnw3wkbn3jedfxryqdikef4db6ij4lobgj4qp4dgrpd3sliga@w6do67fiyhri>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250719091445.3126775-1-dmitry.baryshkov@oss.qualcomm.com>
 <8399dc75-6363-4ae1-98cc-59b5b62dc8b5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8399dc75-6363-4ae1-98cc-59b5b62dc8b5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JovxrN4C c=1 sm=1 tr=0 ts=6887c87d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=_uIZQMxxb9QNBo7-lSMA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: wakK3jtNKdRgMTVlpZcKmzVqcuvUErFg
X-Proofpoint-GUID: wakK3jtNKdRgMTVlpZcKmzVqcuvUErFg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDE0MCBTYWx0ZWRfX2HUmuKaG4BSx
 3zQp6aDsJRRfEDhqIugR/DNZPd9Kf08TzUtAuZfOaOh9c8zvhleoEiCcrOMtTVhDlffg9uS4Ns7
 no7Ar2vF6XyASvy28KgMXTaXq051LUyI+3opQrU0XCwkIAsS+xIBAa5aw+IwBoR7n0U9sZR1B+m
 URkZHr60GfnWA1nXh24jB5qTblOLMrbd5XxGknbe6vtVUuzU1Y/AVttOioR1U49N1ZdePeEPybT
 vD6nZd49NjQDKP7ziZPG8+5EWTquuSBanF/N5KiNOQMU3Cfz+WkElXDkWnod6sqI6LfJhDSq/Pj
 H+SAPUtLRtFULNJ2pMv8jhpQULtiIT7dtJoNVSqSZ2xeIlhIPZ0tdfM+rcgG+5tY3vkLb6HKGm0
 GNQ23bwMX9D0bGYaTi/1lAngsVCjoRG/H+3l7/7AQz0oyzgguHvaDqxveHiIk+zyDF2diCxv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=646
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280140

On Mon, Jul 28, 2025 at 11:29:31AM -0700, Jessica Zhang wrote:
> 
> 
> On 7/19/2025 2:14 AM, Dmitry Baryshkov wrote:
> > 
> > On Qualcomm SA8775P and X1E80100 the DP controller might be driving
> > either a DisplayPort or a eDP sink (depending on the PHY that is tied to
> > the controller). Reflect that in the schema.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> > 
> > Jessica, your X1E8 patch also triggers warnings for several X1E8-based
> > laptops. Please include this patch into the series (either separately
> > or, better, by squashing into your first patch).
> 
> Hey Dmitry,
> 
> Thanks for providing this patch -- I'll squash this with patch 1 and add
> your signed-off-by w/note.

Perfect! Then it should be S-o-B and Co-developed-by. Thank you!


-- 
With best wishes
Dmitry

