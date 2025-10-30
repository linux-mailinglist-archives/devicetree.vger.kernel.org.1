Return-Path: <devicetree+bounces-233051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C20ABC1EB21
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D3E0422ECC
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 07:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B683358BC;
	Thu, 30 Oct 2025 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k+v7FLmK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UV1QKUct"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4F33595D
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761808096; cv=none; b=oHhHagnM+AcbEFmm14R+85aanaJq/EbJLxzCzXgM5Jkg2/PCMWBiWGhMAJTBGdznH7c2+cO3VBOfXiBx/nhCEan4uULAkVmsJWs90GM76Fl+A3isiwzPxQwKwifL1QKuBmqJ5qzaFjte+tlXzgX/Q0WEb3eAWLuoJVbypyGlJO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761808096; c=relaxed/simple;
	bh=QOT8AywopCumtDIgwTaQwMqJZk8XCSFzIgduBpEutpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tZPkHMrgWFNnBOApx3snMnnlIRP8RY5cmrrTtPgaOzJHckmSr4KbCRAwGG17faXYQU7hhadBNNYgnGUjHsGIO7XuVMIisqdRTD9UUHnLpmLoZlHC89eCTg03hfmz5SbbzO9K6PVruBOSfX88WT0kPKPEfaZBzc6vC78W8yHNzCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k+v7FLmK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UV1QKUct; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TKnbAE1598401
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:08:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IYBMombL8T1bltomZZaQTOz9
	2EhYNFQ6v2Qs6UxOLuI=; b=k+v7FLmKgRWh6+sAFlXrqWjVGaylcQDC/8Z1iokE
	d5w9DhvSHUU9nEqRrXe5dGBfvVQr8l4nqbqPEG3GFgcsIPXVrMYCOYV7PNqegvbk
	mUETGV2cfEkyIFoCErKTb6qC6ObQ1BHtZVyFVePGdSBQGWPspJM4putckJBamGB6
	b0IWbroqpWj8nZG6DjVQklpKqVTyoQ6FJlFJ63VqfLsuVMwCpOyxyEWqSK2UTBZq
	esEiR1dX2HF+tdzOXI+CxdnxnlhmxeMIdGURByXxIDQVZpQXg8YFnyV3CIlMM+lO
	uGEoaBUN4GnSKC5M31ok+MFOQ+cro30GTZ8kR+54vmG1ng==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ta7sf77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:08:13 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88021ab477cso5311746d6.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761808093; x=1762412893; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IYBMombL8T1bltomZZaQTOz92EhYNFQ6v2Qs6UxOLuI=;
        b=UV1QKUctbwNQ8UEJBplAumvVv6EGafVhedfOxm1vnhjEia5Pt36B+GXU+kTh0QPXOm
         J93xvMt0QsIvF7BNNqY795zehlA/FuIGOUUipGzEWVvULRswIVBw99SurXiPTf47Ugbi
         5wGjjErz/gk7Zy4QILY+GpnbCB7bHKkIwyUyzGpAWTQVQaPIUKvmSRNPut+D2MOXL7Fo
         L96iQcl7vvDxWsXmFyEOdx2E7L8n1D53w/G+afM5X9cwAEUx9DmK6CI4cg+Xju/X6BG6
         ntU9mzyTA75y/Yh91dgUMah6CDsYkj7wfBM6ELCizZIDijEE8XkLEWUfYe0IPgGhPBi2
         7vKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761808093; x=1762412893;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYBMombL8T1bltomZZaQTOz92EhYNFQ6v2Qs6UxOLuI=;
        b=DWseAXMrtK6Kglol8TBkC9hpkt+6MoVghN7qc3XXeWAthDUYI3KUJirbkjNpcuJKYE
         4kqCOfDoMWHn7wiwFCB2xuuZNjQGN9sDLrFII8Rm5gS7vWS8xoj3bHpF+Hi6KoIPzkwj
         YGuiA7VBcKiiV9lMyP3h4Fh1pGkUFFN0CvA9TUJWlHJitTBp4lV8ojzfba/A9dEesBCb
         34JoVJOT3/jSnkqHvnhZeYTwH9W02zof1TCSu0WCUpgHGNkeCro5nNQdVMVZZFwLIFMG
         xYgqI+a88zTdRWyvuoI8b9VNipCRLVgCcir2k5ZlBK1HiUPykblOUgPCVbZh3nvjNWnT
         K26g==
X-Forwarded-Encrypted: i=1; AJvYcCVVbBnvvGZdXOZk7jDaiI7A+X4k84ltouGvvR2ixTVaeGO8VyI8c/C82KKzOFX/irBunDyrGFgqbjFo@vger.kernel.org
X-Gm-Message-State: AOJu0YyVi5PVITavWw7c25KyUkyV2geYNL7iqm7ChRtZ9PGM//yt0F8l
	K2j2L+++8CwWudFQEClhMp0YyaBk/RnUN5Ph3ZLBG/gkx37+tvAwMRw5wFrTq0v9LLT2nGIckPb
	Kt5npFVIUoIkMofBLMssio2E28l1Kc7COIHqkxiGujuhhbrp++RhD9lCyiW7z83QG
X-Gm-Gg: ASbGncvMjJnQB9iySZuJex45BKSHkAwQ2hLjBrJK/EGwN63ua3FR35pMHX+Nskn+QnU
	lf/nn4vFQghqAXaxJyvCUxADoqcjS1nbrI9zH1Ivq9fRBT5vpZV8of5nSlE4J1f2K6PW5Z+pM2E
	tgnLsl+1S9ubLj9p1zQ2sZHYlfiqeirTtY+pT1Fx15qFJCCW1Z8vTiDM+hPLZtKuAEXUb8JbBg2
	39YivvNyEzUyOWC4lD6sPr/XvODeijQ8TvYQQTxCXUIoXNrtuaJZB6Q6t/S1CoApe1uo+I4/SBz
	yEdBsInSRchL1VptUy2eeGFIMMF2DLcKKuGHLZwLqTbAl/vLr3AdPPvy3v37DXi23dyVMw5z5Z2
	1caYrHeU2o4EwGQXOotcs+nt7xLuf3q4Tdba59941A1QMqYWJObGCPGG8WAoDfdnf
X-Received: by 2002:a05:6214:b6c:b0:810:e12a:48fd with SMTP id 6a1803df08f44-88009ad09a1mr83592466d6.7.1761808092812;
        Thu, 30 Oct 2025 00:08:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8zPyr7CBc17zabeEthaobsdk5MfrOpcUhAgyht/VFw5dcoi3n9FednzAFRqYb6ttQ+XA7xw==
X-Received: by 2002:a05:6214:b6c:b0:810:e12a:48fd with SMTP id 6a1803df08f44-88009ad09a1mr83591986d6.7.1761808092324;
        Thu, 30 Oct 2025 00:08:12 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc494ab16sm112217426d6.39.2025.10.30.00.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 00:08:11 -0700 (PDT)
Date: Thu, 30 Oct 2025 15:07:59 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 08/12] arm64: defconfig: Enable NT37801 DSI panel driver
Message-ID: <aQMOz4P2/WyjXy1b@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
 <wuh7agcgg6spghilnx4amqukaaydj25u7kbdiod7fl6pu2ulvm@pmosyuo43cyw>
 <aQF98RvLuOlJZlFi@yuanjiey.ap.qualcomm.com>
 <38c8e26c-08a4-42d9-8f6d-93969af90d50@kernel.org>
 <aQLOaI3ngjswi7kd@yuanjiey.ap.qualcomm.com>
 <7c1e0cb5-2483-4efa-be52-84cbe5d1a4b2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7c1e0cb5-2483-4efa-be52-84cbe5d1a4b2@kernel.org>
X-Authority-Analysis: v=2.4 cv=aaVsXBot c=1 sm=1 tr=0 ts=69030edd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=x1sgA4FD8JzbF63Z9coA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: ijx9VPijhGaLm_HAc7PRT9RRHosMU5YZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA1NyBTYWx0ZWRfX5eZAdswk7O8d
 wOvGsyELvya719F+kTeoW3BSs4fzus53CfLpjXno0tq+Xa46Z3RYNAsv6YJOUnaFhYXFcBpgdju
 EYrKIN14TwnvzpCLHjXrf3pIemKsLHYRBOVhH09maohWf9ijbype2Fyftj24eL/92N/e0htHvlE
 W5Xc3z7E/kiuq3GKXpZHPNTl7ACfbUsOzcHkAs9mfYLxci3nMKCzb8s8fcyMWs2iCwFBw2Bp+bV
 Ix6QcyeqTG8AiTs7lAWwBbTalrJcI8S5/EjyQG1LOXqM6QQhB9SaAL/NFhlVYBmddT1vxiiJbM8
 /pWqh6hyK6DBWyOJAN3VM/MSZdaIsi8gRr5OlCDjY0s0hFuDj7a9HoI7DDcs8tmY0VFxZ7ejCEv
 63MsgotI1QJ13s11j8Yc4JeDUFgCaw==
X-Proofpoint-GUID: ijx9VPijhGaLm_HAc7PRT9RRHosMU5YZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 impostorscore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300057

On Thu, Oct 30, 2025 at 06:37:40AM +0100, Krzysztof Kozlowski wrote:
> On 30/10/2025 03:33, yuanjiey wrote:
> > On Wed, Oct 29, 2025 at 02:05:20PM +0100, Krzysztof Kozlowski wrote:
> >> On 29/10/2025 03:37, yuanjiey wrote:
> >>> On Mon, Oct 27, 2025 at 10:51:23PM -0500, Bjorn Andersson wrote:
> >>>> On Thu, Oct 23, 2025 at 04:06:05PM +0800, yuanjie yang wrote:
> >>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>>>>
> >>>>> Build the NT37801 DSI panel driver as module.
> >>>>>
> >>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> >>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>>>
> >>>> You (Yuanjie) authored the patch, but forgot to sign-off, then Yongxing
> >>>> provided certificate of origin, then you provide certificate of origin
> >>>> and send it to list?
> >>>>
> >>>> Please correct.
> >>>
> >>> All the display patches were jointly developed by Yongxing and me.
> >>> So every patch 
> >>
> >>
> >> So two people were working on this absolutely trivial defconfig change?
> >> I have troubles believing this.
> > I want to say these patches I am first author and yongxing give me support, so
> > I think yongxing is second author.
> > 
> > I want to express my gratitude for Yongxing's support in every patch, so I included
> > both our names in the sign-off for each one.
> > 
> > However, if my intention causes any trouble for maintainer, I can remove Yongxing's
> > sign-off from this patch.
> 
> 
> Please read submitting patches to understand what Signed-off-by means.
> Otherwise I have doubts we can accept your patches - you simply do not
> understand what you are certifying.
Thanks for your tips, and I learn some tips from submitting patches: 
https://elixir.bootlin.com/linux/v6.18-rc3/source/Documentation/process/submitting-patches.rst#L524

I thinks below sign should be true, if you also think it true, I will use it in next patches.

 Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
 Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
 Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Thanks,
Yuanjie
 
> Best regards,
> Krzysztof

