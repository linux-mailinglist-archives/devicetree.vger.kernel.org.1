Return-Path: <devicetree+bounces-253067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41105D06FB8
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 04:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 21E2E3002967
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 03:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293C9251793;
	Fri,  9 Jan 2026 03:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zf1fM6oc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e+7AO+pe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B6C21D3F0
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 03:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767929132; cv=none; b=ibPyUniDV8POgLKFGxfkMlefT37ZUgXvBURGbZPGuvFtqn0CxrNd6PNpQ5Hj9WPVtK0SQxmR5B1VXmKhREwGhNlSWPK2Is5sBnraBwiXIQswtDzk8CVPi/nsf31DwAsCWRE5s2UrEBIb+VruhTQWFaXtwvui+QDTpJ2YoxA3UdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767929132; c=relaxed/simple;
	bh=V/Gh8xSJ/2b2rYVPU2lLtraGRBai0LjTKsvNh/y5EV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FUS3zkeGmomLo7FZmOa8pV1cIDIWMRKFEdwxzvgwtpPVY2KpnN8medC5QobpKtoXKgXrcfHIVKGWT4hsPfvw+VGg0K7txW1nUhQouT16ptF94jSNYO1RysomMNxoEpJltLDWzwwhaKmnFe8aG1+cfJlJ5OCyXEujwo5oE2x94z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zf1fM6oc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e+7AO+pe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608IUWfQ2986441
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 03:25:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=c1FKPH8l16cGJoXn2zSMGvS/
	GHDw+D/u2O8httFkqlA=; b=Zf1fM6ocfch8lu4T30ShlcGytnsHHSpEUg4WJbhU
	07XBEUxk/4JF52i9Y8aonMQNcRzEnfRRuw4WRxQpSXSaSnBTtkcyRIyAuyVIdtcr
	fy22KIqnasQ4zCYZt2v7bDtY+DmOzab4F5tZgumRh+jdl0Q4MeqA/DnYvmVSM5Zg
	WfP+LJrCj4a2r3BsmtfP2i0WTVW0gipVonge2Iac90+Ty/emLIGCAjQw+ZgHq2k/
	Oqb/HMsO2ZHGZ86O5kYhTvLkoPpUY/hJ9nTgF/D/cFAk5K5B3irlCmHNhfdwpdAw
	IEAlt9dzRc+hIA0LLunIy8bnCNTgEbP5Z1mPrM9g8KVGdQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjhwx17nv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 03:25:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e235d4d2so1396395885a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 19:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767929129; x=1768533929; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c1FKPH8l16cGJoXn2zSMGvS/GHDw+D/u2O8httFkqlA=;
        b=e+7AO+pebfODAN6S/A/68Wn/jwaC6uAVhm6V2E/9+Wc6Atqx5pDQhHLCRcUeB4DN10
         V7UZYuiy9+ImPH0mX31EoxpVRqd1F0PIV0aZZrnlrI027i9G0xnN0WNhbOji8vkYU4fS
         Qtj5NDG4EeAcbDRmc8V6TFUDTS+cgn+snh0OXYebrjqWW4C+uoUH68EG0vZlHw5F2Nh/
         tVeDGGJ7cwGjVdBMu4Pdf9Zzx7Lp4fZ+d3zYwybkFYvlhxNsFJLe5Mb6taO694gmyv5n
         6m7YDHldSM2DfiaImoDUm3NWLfHSh4pbnU58u5dOPI7B2EbF+bkaOPXJHl9pL8umZuWK
         Fzgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767929129; x=1768533929;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c1FKPH8l16cGJoXn2zSMGvS/GHDw+D/u2O8httFkqlA=;
        b=Ikvyapb+oGuhqIYd/akN8j4SJ8TAN3RBGiq0iCQfHjvh0wewtUGej001Hq0fxg0NaQ
         4D1txVPTR/ZIVMdxKhIoW+RZplRylbDgUDUOB4DLovEn2dXbsl06mgGuW6Fez5+Z0NMN
         AEbshc+2/SOrmZnGyb/TP0l9FHrhwAe1IZY9d5efNNSvlMWBg6t4OCdkoUw786mR6O3F
         7o+wdUWgWb/ThNXNegOQ0xNeIXx+BPT0KFgs0rRx6iA+nmDPlXc69cX3DIZ8/S2Idmsv
         QMon2gXXoAw8UuKonc+HUnZ/B9Zi6J0SRg8Q73lNHva+5RlQI5bFDZNclBo4JI6ON4vh
         tMfg==
X-Forwarded-Encrypted: i=1; AJvYcCUYK9m9VZCvaxMJWS0T+cS9X/9vfr5UCS0fxmIIsHQSA2TGZZYZ0FA9Ahm4JWSUIX/YGP95vyYelceF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3e2Xfwwp9Xk1Ctq9CZLitIDbKOGAiRwHFsd0xiqFWRbOtjFDK
	C/RvwNrhH6InF/CqXs/45VD4SpEd9kDaiFMuiLLBsg6/iMmvJXFQwTQQpMEsk1lojeWmFx7M5Yj
	Ceb6tFEbws6QinMFu6f2DCLowC0330g84XQnQEOklUmEP9J2i23iKU5bDB6mLO87b
X-Gm-Gg: AY/fxX4IU3ynUxtQQWIBqvZzoRJVo1pLth3w3LPXHknFU3iHAaB8wRKrYwbWfQK0lYE
	3jt/Zutd+wiyXu2DXvx0bcWsg/guycv0lmwRt0F9yTaEZ3m1qOwq9czuokZfzlG4bQFWvnrF4lk
	yBPo20a/+1LnB5DELQx95AWFpArmIvY+hg+kkjL8YcQ8FU65osEnNNttAa0E+CUJmycA5i1t+QA
	3Kl2FX6a/lfuPUPFGA+TVDfePvj3n00908o2pgpIe8IFFk1OCRdUwmvXuKg2LI7kuESCCFHC/Uo
	hYjFXMSykn0Q+M2/PSikIPHTmyRZt+8wsxeDfSVD1c/lxD45r43sKZrU4kX3S/7KAkxAG0vfNoL
	DVTvhYFO73/sB0nJZvtrIZd7DTX6jreoghUUGZrb6em7HWG9rLeWBuqkCMh0GUjmcbZfNVN3t82
	S3jSo9IS/3qpbQ3Jl3owaBwjM=
X-Received: by 2002:a05:620a:4802:b0:8ab:8037:509c with SMTP id af79cd13be357-8c389379d1cmr1039302485a.12.1767929129038;
        Thu, 08 Jan 2026 19:25:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7POTAZbGqCpGluds596QJkhD/U1qqkBoYNpWwEpul7vXI/0CQ8FgavMG4km/E65OtbPFIdg==
X-Received: by 2002:a05:620a:4802:b0:8ab:8037:509c with SMTP id af79cd13be357-8c389379d1cmr1039301285a.12.1767929128612;
        Thu, 08 Jan 2026 19:25:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b796a135esm783614e87.50.2026.01.08.19.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 19:25:27 -0800 (PST)
Date: Fri, 9 Jan 2026 05:25:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH v5 10/12] drm/msm/dpu: Add Kaanapali SSPP sub-block
 support
Message-ID: <wgx4q3f4ktpoyq4u7rrquy7rs66hwidpr7dfxvw74w2xf53toe@kh3qy674des2>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
 <20260108085659.790-11-yuanjie.yang@oss.qualcomm.com>
 <k2orlbxktyqhuuoievurde5vglpbx2qqhkbmnasfnefax6p4tv@7hhmnyomtxyy>
 <aWBpEIHLtmCyZ5C8@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWBpEIHLtmCyZ5C8@yuanjiey.ap.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDAyMSBTYWx0ZWRfXxfyCNUAT3dpM
 EFpWc/IeaJ1C96XggtZyVtTqBjRDO7m6lbiS8cUsmigR5+P+EblzWEIYbaOrJYT1pO3sLRcQyME
 dkjHXG1mXNB4K3s65Vxz6Q2YLg+3ILBYJFNHNyNOv4inlLO41DvkvPWJi30I9q0MOBPDA0pUDdi
 gcQysxDFK0rfTO443oO2hAgPObw8bcJwqu0AIIo9GV/i0Ydir1OmPRIHvcM7LgcOeTzntwEa+P+
 Hyuke5iQUu4KCOwtGonJ3GSE4vDd0xK8z3R5RHuy5+ONd9OEg/CwqPJUr6u2Lrn9n6arKeUkYrq
 HaYRWkHfa+RSXefWNa/pDn2nKI78xLUINB8jcSzIpcPsVeC6JftmZb9v3KQq6xNg2vxhRtV837f
 OfnyiKT6yFW5AlVckdI34d0du22KRsqQRtxKiI64UtWMGQWsKbKCoeESU3bCyXVtK1VCtNLiv0F
 YjZ0JFHhFNS+tjP/16Q==
X-Proofpoint-ORIG-GUID: u-X5g9LgQI1kPP4W2xPcSTdFMWdSSkul
X-Authority-Analysis: v=2.4 cv=ENILElZC c=1 sm=1 tr=0 ts=69607529 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ewj0gPjmfU4c8-7OqbcA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: u-X5g9LgQI1kPP4W2xPcSTdFMWdSSkul
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_01,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090021

On Fri, Jan 09, 2026 at 10:33:52AM +0800, yuanjiey wrote:
> On Thu, Jan 08, 2026 at 03:46:18PM +0200, Dmitry Baryshkov wrote:
> > On Thu, Jan 08, 2026 at 04:56:57PM +0800, yuanjie yang wrote:
> > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > 
> > > Add support for Kaanapali platform SSPP sub-blocks, which
> > > introduce structural changes including register additions,
> > > removals, and relocations. Add the new common and rectangle
> > > blocks, and update register definitions and handling to
> > > ensure compatibility with DPU v13.0.
> > > 
> > > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > ---
> > >  drivers/gpu/drm/msm/Makefile                  |   1 +
> > >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  14 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
> > >  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
> > >  7 files changed, 371 insertions(+), 4 deletions(-)
> > >  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c

>  
> > > +		c->ops.setup_sourceaddress = dpu_hw_sspp_setup_sourceaddress_v13;
> > > +		c->ops.setup_solidfill = dpu_hw_sspp_setup_solidfill_v13;
> > > +		c->ops.setup_pe = dpu_hw_sspp_setup_pe_config_v13;
> > > +
> > 
> > >  /* QOS_QOS_CTRL */
> > >  #define QOS_QOS_CTRL_DANGER_SAFE_EN       BIT(0)
> > >  #define QOS_QOS_CTRL_DANGER_VBLANK_MASK   GENMASK(5, 4)
> > > @@ -475,6 +482,17 @@ void _dpu_hw_setup_qos_lut(struct dpu_hw_blk_reg_map *c, u32 offset,
> > >  		      cfg->danger_safe_en ? QOS_QOS_CTRL_DANGER_SAFE_EN : 0);
> > >  }
> > >  
> > > +void _dpu_hw_setup_qos_lut_v13(struct dpu_hw_blk_reg_map *c,
> > > +			       const struct dpu_hw_qos_cfg *cfg)
> > 
> > Will it be shared with other blocks (DS, WB)?
> 
> yes, _dpu_hw_setup_qos_lut_v13 will be used in WB, in function dpu_hw_wb_setup_qos_lut_v13.
> 
> So maybe I should drop '_' rename _dpu_hw_setup_qos_lut_v13 --> dpu_hw_setup_qos_lut_v13 ?

Yes, please. As you are going to resend the series, could you please
also remove the function from the header?

-- 
With best wishes
Dmitry

