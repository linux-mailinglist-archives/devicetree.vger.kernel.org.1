Return-Path: <devicetree+bounces-233382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D160C21B24
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 48BBE4F356E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AAE374AAA;
	Thu, 30 Oct 2025 18:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m6mN25O1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HJh+XiHd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787502EA151
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847279; cv=none; b=EVCKw8Gwn+xWnUUEBd7f1d8gxsa0JcPZiFY6MNlNUmsrc/py8Lj48I+P2ifrGqVCxoYlQ/C+cxwi2J+z/b/r71suPeWeIWdXKis7zI2QJw6sfWMvtix3cENrpLcr00OUO3RrxxUVzC8Kr43Urxx3Y3Mfwy/TNWf7dMO+F+K4GHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847279; c=relaxed/simple;
	bh=Rn9bRqhzSNXcchPQcrH4b0rYlXJqIKlgZkSe44lo8DU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c636rRDtLuEF/BwKI3wBSGl+m8jQzua4sCBP++TLxKqMGoWIkzjOKYJM+IBjqoJ6Yb4u93qSzGbRvVApRJkI/p2omzV1CS9h6ULz2FdSEBiccA66R6dyfLsuX2TZcaaQKg1owxq70hOD9gPPSGMbjt0SdNA5n1SB3SVMN66PEw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m6mN25O1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HJh+XiHd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9PMBY3509326
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:01:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cXV5bK5NXAnWN8bRl9mITOxX
	zPOm4995onAokhRKwyM=; b=m6mN25O19Y4bcqLCtKcVEF0B/y1gxRwia7ULE0fq
	qYPXfgHrA1nctu1RYAFFx5yrQNs1wM304UEcfyB0cZLP7H1HBTTBecQ+afqCWy0F
	CQPWRKpivCGuX5490S5PjipEM8H0yzqLUns/rYD0f7igFBfUecFUlq/7VbE3cgr9
	VvTC82IB7llKV6mX+EyUnXbBeMajf9O9sc8MzYq7O8ok7IL+OXOAVyZtbqOE6LO1
	cu3ybhDOR8s2uacfCdPvKSB1OKP2E+q1gYKmNt7EOvTFwjwwSv5yM/0PB/e4NHRR
	6ziRF0kQ3Ebah6qHgtIv3ap2ryn8BrZDSLVP0q9lqUqpYw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45cdhg3v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:01:16 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e899262975so37712991cf.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761847275; x=1762452075; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cXV5bK5NXAnWN8bRl9mITOxXzPOm4995onAokhRKwyM=;
        b=HJh+XiHd484G1gyRwpbN3H/5hvay9ZHMyEwBw3gLsy8sqisittYeqZVO46mTV2Qspj
         5ePY/n5ZzDeJBSw3ZDbFPH5J1LBcmJk2J2vb34Jbu0OGbeF0WhtbF3AqOYtvjzrJba3+
         9i1IjoeYFC6ZJdUYAz0hHbEc54KoqhgwCAq8obrI1QE8bf/MumEgwOyr5TCSmOJ1+z5U
         b7VH1MSXjP0fofCPapcxZp8Ax1/QrnG6GhNAHL/Yt6SzEWBRVWp85eEvHNEzoc6YIN11
         KWNjHoJsFMoDUJBOLghK+HGmO+cKHnWz0TE06n/i689NuPNz0bYSiqiA/jF97q9R+ekY
         RdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761847275; x=1762452075;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXV5bK5NXAnWN8bRl9mITOxXzPOm4995onAokhRKwyM=;
        b=GFsCFtI0uOmfAMKjNQCb81Jnkl/KMcyImOh3JhoDPXdjcwXRVUUtVh/Evn1O5PHi/x
         L0xx97lCWs624zlkl7+4hu1VB1V2+nzZOlOdEN0k5vQpMS785s81mTyeckTk7oABHSa1
         TG3gLRuG0oWfbiYWOHv0zNZ89yAxDE8Gjb9tHqrOn86S7wtlGwbND8ZbEevrSpFVD9T+
         uh8ojEI8k6Bi4PgpBn6ZPm5iSo85J9a0nJqCcrGfOYXTQhQ/P8xgAIZMLj1sTqE0MNdf
         YLA/rJH/vs6MXrfY2sUUnwhXV2CSsWkgoVHuSWcn8huDQb3iN87SocPU6zjit4mb5crB
         UCVw==
X-Forwarded-Encrypted: i=1; AJvYcCVmv8G0joomHkY/rZD1FPHjBRI3Zox9AIRBmmIT2sUowMLl3hXVOjXy2HUbiTxBqT5Tx+h6MuwGzL2y@vger.kernel.org
X-Gm-Message-State: AOJu0YyRKLh+0xe1ZQV5Fvu43sTuhic7gQdCLeCncohav1gXjm1PLDbm
	xuzVEVmQmsi3Ewf+satKl+YcuGeIHvvAVF2x4bZ1UH5clQZ5DdU0WukWQNXGiJvf7eWVAscgAZH
	wbx8d9YMbdzCVjpVSp5e63XTUjOhtSbxPZitjnwr4festwkajQw8TTYuIpOWuYNBI
X-Gm-Gg: ASbGncvqfoKxDhy5Jdj63JDSnAdjnrSnC2dQES+wGfHSCmzvRmdFHsCRhzEXJGOq5Ll
	BL4H7EgMxOgdfpie14udkQ8rjIXl7J5thZiKSAdRRJsRO9ZLKiQ1sC9Rw7zyUw/KOVDO/iNV+1S
	liihuGbn20qBzVnHsOg820Vahh6mHCoJE8wTl4uiJGapzyRTUNpWIpI9glpnk9s38l9OzkenZ5O
	ldviBAPZ1AlnJlk9GT+A0O3H4s+AdhY4wXYEBxF6niefh/XcKL6mSBep3Z7RojASpq4c21A7+Ce
	9HQ0E+qT2bt7IgxPo6fbhyQ5vVWt44fBd9DWflqutuJJW54SVvsFoJFpVVgOiCw1LKLwQPEtxGa
	A4ynHJVnq2uqU+8PcBgR3YNKrmX6frOfMb/EYyRqRsEGyGwz1eWCXaWMUsUquD6wEUWfrE42oQc
	KXr1TzRosf0f38
X-Received: by 2002:a05:622a:40f:b0:4e8:a269:ceab with SMTP id d75a77b69052e-4ed30d4ecfamr6635501cf.5.1761847275168;
        Thu, 30 Oct 2025 11:01:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBsOQjcOvRjMP4pTZJOPkX1Iw2AZufQNpkNP01OrVkZ+/BT71YfbXhtRUq9boF7rgtxSZZrQ==
X-Received: by 2002:a05:622a:40f:b0:4e8:a269:ceab with SMTP id d75a77b69052e-4ed30d4ecfamr6634351cf.5.1761847274420;
        Thu, 30 Oct 2025 11:01:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a1614e1edsm3259121fa.22.2025.10.30.11.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 11:01:13 -0700 (PDT)
Date: Thu, 30 Oct 2025 20:01:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
Message-ID: <mlhohop2uifsdo3qxxzmuxbkjo735hdw6xcosvkmsx4eskfufz@5otklefey5k7>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
 <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
 <einog245dsbqtx3by2cojyzmyctk2fffpwndwoe24puwqq4fta@cu6iiidxqgr4>
 <0291d0f2-483f-48d8-8c75-f1bbcd1ab18f@oss.qualcomm.com>
 <ehgdx7av3jewowkvtsqrbnsphgxm5hryl6n5otnapi4xneldze@gcwvpssisv2x>
 <aQGHyN19/a/tl0BH@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQGHyN19/a/tl0BH@yuanjiey.ap.qualcomm.com>
X-Proofpoint-GUID: 6o6IANSSxJ3EXw81OUYpt88Ikda54MB5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE0OCBTYWx0ZWRfXzKCp+RxXSRpX
 eHnf2j2fDWJkoqo3szcMbnmmbm5ixAOvFJIdsK1c8Vv1MkBzzr9rOWmHDA4CXiKVb6m5mvFo2/J
 DrimDRxYAxporZQ488gbQNfJ6MkSOxeDrJgbh/GPIm7Y6ZJpoedTfjCswYyC/rp9RSO0rstD16n
 YCEBs6jfdzJ/BNGaGXbxBspFAiQhYI3R9dHVZnEy5mrOrhOH0/lp7LA31FPM+QEI2wFn4dqIXWQ
 kpjIT7K7Ois7ZcFIYB5GUJvYuhEQuoVei5uVKCuP2EvZS+SfE13YnehY92dfoW/EcaDnMiZreVY
 Id7uLQ0Y5T9F0y/vO97dqFo2Aegq6bPtjWaBUbTlpLsvm9+ct/IlLh+mhBIotENBEqpDgVrhI4r
 F18Cu55bD2e4t5ruAPldRx1sFq4pLw==
X-Proofpoint-ORIG-GUID: 6o6IANSSxJ3EXw81OUYpt88Ikda54MB5
X-Authority-Analysis: v=2.4 cv=ItUTsb/g c=1 sm=1 tr=0 ts=6903a7ec cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dW72lhU0GKDYo0j8srIA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300148

On Wed, Oct 29, 2025 at 11:19:36AM +0800, yuanjiey wrote:
> On Mon, Oct 27, 2025 at 03:29:40PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Oct 27, 2025 at 02:20:26PM +0100, Konrad Dybcio wrote:
> > > On 10/27/25 2:14 PM, Dmitry Baryshkov wrote:
> > > > On Fri, Oct 24, 2025 at 11:27:53AM +0800, yuanjiey wrote:
> > > >> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
> > > >>> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
> > > >>>> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
> > > >>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > >>>>>
> > > >>>>> Add DSI PHY support for the Kaanapali platform.
> > > >>>>>
> > > >>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > >>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > >>>>> ---
> > > >>>
> > > >>> [...]
> > > >>>
> > > >>>>> +	.io_start = { 0x9ac1000, 0xae97000 },
> > > >>>>
> > > >>>> These two addresses are very strange. Would you care to explain? Other
> > > >>>> than that there is no difference from SM8750 entry.
> > > >>>
> > > >>> They're correct.
> > > >>> Although they correspond to DSI_0 and DSI_2..
> > > >>>
> > > >>> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
> > > >>> new features. Please provide some more context and how that impacts
> > > >>> the hw description.
> > > >>
> > > >> Thanks for your reminder.
> > > >>
> > > >> Correct here:
> > > >> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
> > > >>
> > > >> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
> > > >> just some register address change.
> > > > 
> > > > Addition of DSI2 is a meaningful change, which needs to be handled both
> > > > in the core and in the DSI / DSI PHY drivers.
> > > 
> > > DSI2 was introduced in 8750 already, but it was done without any
> > > fanfare..
> > > 
> > > I see a diagram that shows an XBAR with inputs from DSI0 and DSI2,
> > > and an output to DSI0_PHY (same thing on kaanapali - meaning this
> > > patch is potentially wrong and should ref DSI1_PHY instead?)
> > 
> Yes, I check ipcata Doc, I see DSI0\DSI0_PHY DSI1\DSI1_PHY DSI2\DSI2_PHY in Kaanapali, 
> addition of DSI2\DSI2_PHY compared to SM8650.
> 
> look like I should add: config io_start = {DSI0_PHY, DSI1_PHY, DSI2_PHY},

I see DSI0, DSI1, DSI2, but DSI0_PHY and DSI1_PHY.

-- 
With best wishes
Dmitry

