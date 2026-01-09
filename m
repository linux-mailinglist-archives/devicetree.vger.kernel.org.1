Return-Path: <devicetree+bounces-253088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 18758D0740A
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 06:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4680430383CF
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 05:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874AB2737EB;
	Fri,  9 Jan 2026 05:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MNno0Ii+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SSBbwQZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0311326B76A
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 05:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767937864; cv=none; b=TDeg9ZDoznf3fQR4cn/xh4iFp6kvqE1oaidYVGTVLvaWuq069K1qf13/2d3IlhTjdXQLYpS/u2OIHsZrLtJtFp3VSV/P99d/Cwn+FTMyx+q7Bl/vm/PSwUi7FhU92F+lfxkdh0WmwlKZULHpL0pDmUKa3OAf2k0x1J3XNIa5994=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767937864; c=relaxed/simple;
	bh=/+a/hErSbMRRPwKh8Xf+v9Y4cN7jMaPC9afQDXM7llA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Maerl3DBkvDOndGY3N9fPJ8ePP4m8y8ZajiP9RByMalagVaeup/dTFQ4GNUIBjYHQM/d3mvWlf9J9khARWKzCnopglzE9EHPbDXOF73EfIoiAP/dJA+IrCy83WBD/MhZNKkZyLKj9ISvRayBbNSlMj05lW2+4vDBTxY3t2tX/i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MNno0Ii+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SSBbwQZS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608Mp2Vk3219359
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 05:51:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SZ+vI17AryCUc2LXtMN69ba7
	Hushzr3nEAs4KJ9v5tM=; b=MNno0Ii+xcFwzwgsp8WGG9nbwjtcdcUH76J+/08h
	uutwn97UCMCUBT17Bd+jCeXel4ioVCmvgysCsAKJUTo4a6CCwDGzhFzk3wFmML8b
	+n20P+FqUdhBkoYUvItzI8JCJwc2r6v6v8TMbBZ+sWtCkygiLDyyGcJ028d0TEpM
	1SZlIpI7g1SqOKk/2x59MmMGulB7jLTBzehaY8kfUXqf8bRja1z4Y0BfEg43c7zX
	BNwERg4VkfZ8fz/L259lYxbxcr5OLdUE2YBQRxzhdPaznWs/17qHv/K65//VeYPa
	N4v7ZhmQRuxJrtvub05RMl+dRKZ7lgBold/K5bEZaKonZg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjt0hbdk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 05:51:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b17194d321so595361185a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 21:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767937861; x=1768542661; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SZ+vI17AryCUc2LXtMN69ba7Hushzr3nEAs4KJ9v5tM=;
        b=SSBbwQZSKe1PXpj7ceVy2nsIvxD8DMkBxBlPS9Llxh9zDYCt2+pZ1dhQdX7KU828IW
         IYmMG80CKBud1Y01NPTMFrYfQVRXZnfb9YjCPPXB+ZO6eBsibz35a5YkD4Bk6h5XQ5nt
         UXuzAdhOECPk/5FT9CSFrx9UIfg/53LL7mbquIl5uS1OylzmZ0j8Er77DyJvEjFldqCN
         Wfzd+nTRX3zFwiPXLzN0OKBz9mNONiLYsfPPaGJWdQgvqDecYwB2+oeFXElKdwTwt1Gd
         GBTehY77kuf07ZgqNSnqZgN9p5yF+yVzKwaCHR5vDzZIzWPfn0fh5Ywz+LXt6lC09fBP
         043Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767937861; x=1768542661;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SZ+vI17AryCUc2LXtMN69ba7Hushzr3nEAs4KJ9v5tM=;
        b=M66NzrLDjBeXYaxDhQnzpGyzwMIgJK6ZDjhL1aX2w5KEzeUGVjQt4nav977tizCVJ2
         ciiXsVdXVlmT181oRMro+qtESkDABsZEf6100CF6TOZXsJQjVAHWt2025Ha7TuWDI9fK
         fYxY2mOR/B+yO74mFi/GGFXZvGCzDCVjK+gJmya7cNTXDLcnxtL/sbgJH2EZ0Nb+ghSL
         DmzJtWB8lMEmfxBpS7qjAbahE1xOXPeSpH6GDz+ZOZtcLDOC81ctkpGPBCCxpjj/4Cmz
         9Zggo+CoZGBMtxnS4NiedyqZsURd0U61xLMb++xbgOzIUWMKSukDG01+WDBJ27PS8cJh
         VPww==
X-Forwarded-Encrypted: i=1; AJvYcCUeuIlyUCs36PWx3lxD9xWqhzGSyZrY0ds+6Igj4DYgc1hXcPW8XVgp5YzV+Lx79V8E0zyxiJj2IZxq@vger.kernel.org
X-Gm-Message-State: AOJu0YywOXBCD6W18iWKDlRZzhPPpVDPWTeaHS8Y4ObaDF7aEElf/ms0
	0Q5W3679DHPO/anm17cqBPzhazL9jAiZZdIp0uRxcJoRspnj+NnqBay7yf1y7OaoVRo5X5Ffyrw
	1Q05Qado7OAswErKDofBmuHWMYsTOMjy9imMOW9kQiLoplWgoUVsHXwioHP5x3Jgy
X-Gm-Gg: AY/fxX5Ca6HDFwHgWBUGfJCTmu6DG8GOwGjXsuzTMgSjthiozdOpQRumK0Ewlbj2EaK
	JZiN6HP3Nme9Fx32ws3ZcbCxRInQYqTzhzQcJKcUUUclI+d6quwoN00zoKshU021hJcqOPqgPlP
	1OmEnf0MaxAVoOgJVAJcs88VRqghD5xCpP05nPrQpGJqglzd1CmqEA11M1obx4ULpzVgt4UY/Fb
	z2zUwSjLgimACuE6tMnJav/1TFdYtA/dAhZA2sO+n+WE+0g20iHD8rtvdlnq8m3ErloRJU3ogXj
	4PSP3XC3GpFt1DT37dHjgiMYqgyuvHSu17pJqz07PcFbuEKmPWMuN7OfZxf5stfVNUZYDs5Ubak
	xldQTvfWUdJqbY2m37L2Y5of7Ip6cbAe8RxNdLa+dUL8ATVcq5O1bomc273hFi+S46BKtzjM=
X-Received: by 2002:a05:620a:7001:b0:8b2:2607:83d5 with SMTP id af79cd13be357-8c3893fa385mr1179355585a.75.1767937861141;
        Thu, 08 Jan 2026 21:51:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNQP+z38zKgjcFwkfa/1G+ZNK+xmbjvdmPnRkKFboJurHGR+NtsX6o0sZ8QmOor5L8ELP7SA==
X-Received: by 2002:a05:620a:7001:b0:8b2:2607:83d5 with SMTP id af79cd13be357-8c3893fa385mr1179352285a.75.1767937860609;
        Thu, 08 Jan 2026 21:51:00 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4b8573sm729474385a.12.2026.01.08.21.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 21:51:00 -0800 (PST)
Date: Fri, 9 Jan 2026 13:50:49 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Message-ID: <aWCXOX+OKvWsqzNM@yuanjiey.ap.qualcomm.com>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
 <20260108085659.790-11-yuanjie.yang@oss.qualcomm.com>
 <k2orlbxktyqhuuoievurde5vglpbx2qqhkbmnasfnefax6p4tv@7hhmnyomtxyy>
 <aWBpEIHLtmCyZ5C8@yuanjiey.ap.qualcomm.com>
 <wgx4q3f4ktpoyq4u7rrquy7rs66hwidpr7dfxvw74w2xf53toe@kh3qy674des2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wgx4q3f4ktpoyq4u7rrquy7rs66hwidpr7dfxvw74w2xf53toe@kh3qy674des2>
X-Proofpoint-GUID: JnsfeZ-LL6-JgZe4TLtygwgiB9SD01gv
X-Authority-Analysis: v=2.4 cv=VJzQXtPX c=1 sm=1 tr=0 ts=69609745 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5yRySJssvr81LtH4ww8A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: JnsfeZ-LL6-JgZe4TLtygwgiB9SD01gv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDAzOCBTYWx0ZWRfXyh+pvLiS5cD7
 O5MvqtsWXXtw2TiZN8XIgUSfT0/4Ca9F7jLTfgTxLIj0UOhFo0dLvayDE7i3oN7xaC0BVRIRxm0
 aEeYhHFxVKo4RqxI2FWiOxtvuY1+LqtQL/qul8j+9WzZtpB9OzDGT48whFYyzNWAdWi7XtzEJOK
 Ag8x67bN7L2v5LBFnJu0ObPtVp8UhDRvf1SyxvyKDO1O9vDzAvXfCDZSXFWWpi2jPEHqGjsjAL8
 S5jeCj/ZCbuieciI21RLHIe1PL8g8OqKz3+peUNrIfblV7TC8nxWlu984wGUJRsnDJ3fLnr2xPS
 nSWvUdpsq1bDFGqUYU0SLYNOYZ7bdIDQf/94VJ5cDXL5iiueDR/Cakr02Na3mdJgjU7G3922jel
 X0Pqgw1zpiPS4/+6FbH2RwSP3UofaopD83QyqhMWYeH+w8SeFoZHA68bZVydaFYQdB/3Y1WiujB
 9KyvkgC6PrNc6JjbV6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_01,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090038

On Fri, Jan 09, 2026 at 05:25:26AM +0200, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 10:33:52AM +0800, yuanjiey wrote:
> > On Thu, Jan 08, 2026 at 03:46:18PM +0200, Dmitry Baryshkov wrote:
> > > On Thu, Jan 08, 2026 at 04:56:57PM +0800, yuanjie yang wrote:
> > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > 
> > > > Add support for Kaanapali platform SSPP sub-blocks, which
> > > > introduce structural changes including register additions,
> > > > removals, and relocations. Add the new common and rectangle
> > > > blocks, and update register definitions and handling to
> > > > ensure compatibility with DPU v13.0.
> > > > 
> > > > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > ---
> > > >  drivers/gpu/drm/msm/Makefile                  |   1 +
> > > >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  14 +-
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
> > > >  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
> > > >  7 files changed, 371 insertions(+), 4 deletions(-)
> > > >  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
> 
> >  
> > > > +		c->ops.setup_sourceaddress = dpu_hw_sspp_setup_sourceaddress_v13;
> > > > +		c->ops.setup_solidfill = dpu_hw_sspp_setup_solidfill_v13;
> > > > +		c->ops.setup_pe = dpu_hw_sspp_setup_pe_config_v13;
> > > > +
> > > 
> > > >  /* QOS_QOS_CTRL */
> > > >  #define QOS_QOS_CTRL_DANGER_SAFE_EN       BIT(0)
> > > >  #define QOS_QOS_CTRL_DANGER_VBLANK_MASK   GENMASK(5, 4)
> > > > @@ -475,6 +482,17 @@ void _dpu_hw_setup_qos_lut(struct dpu_hw_blk_reg_map *c, u32 offset,
> > > >  		      cfg->danger_safe_en ? QOS_QOS_CTRL_DANGER_SAFE_EN : 0);
> > > >  }
> > > >  
> > > > +void _dpu_hw_setup_qos_lut_v13(struct dpu_hw_blk_reg_map *c,
> > > > +			       const struct dpu_hw_qos_cfg *cfg)
> > > 
> > > Will it be shared with other blocks (DS, WB)?
> > 
> > yes, _dpu_hw_setup_qos_lut_v13 will be used in WB, in function dpu_hw_wb_setup_qos_lut_v13.
> > 
> > So maybe I should drop '_' rename _dpu_hw_setup_qos_lut_v13 --> dpu_hw_setup_qos_lut_v13 ?
> 
> Yes, please. As you are going to resend the series, could you please
> also remove the function from the header?

Sure. But here a little confused.

Do you mean I should delete _dpu_hw_setup_qos_lut_v13 in header,
Or I should rename _dpu_hw_setup_qos_lut_v13 in header to dpu_hw_setup_qos_lut_v13.

_dpu_hw_setup_qos_lut_v13 is used in dpu_hw_sspp_v13.c and dpu_hw_wb.c, so I don't think
it can be removed from header.

Could you please help me clarify this comment?

Thanks,
Yuanjie
 
> -- 
> With best wishes
> Dmitry

