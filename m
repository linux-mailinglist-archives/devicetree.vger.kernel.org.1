Return-Path: <devicetree+bounces-247064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DD868CC38DC
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DB933083626
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB47534574D;
	Tue, 16 Dec 2025 14:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lWukNm+J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XO+N/Vr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10054344036
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765894962; cv=none; b=CNwIA3tdfpuh0LM7kcU6inDGmvOoSFskh8E6wzAZtbGnvoyQm6uVpM2MbY0xVnL+NH4aZmYkkfTcAKjVG6vIVZbceYe4fRQLTsXtxRLpyAc/4TJahXowmnYnDr01GbGK1ZpPGy/er5ytEA0lLMiIX+ORl8yTiuDopiLUFaNKHfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765894962; c=relaxed/simple;
	bh=JCVN5Np84leEKrl85I9DiXpbLXOzV2aic1UK9/z2AOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgOOVmSyh4S/niIc888Kq7txPjEb3XBMQJtWcxrPkv3DlyBf8ymgxHxvqFtO3XdS4/MLwtuuxVWTjUCVCNxw+rIV3SmGpgjELwhb0BJJwWvNurQVUk6T3GsW1lEuXiPgZlmnq9lfLxBs3mMB469bJQBH8YhSf35Q+DcdRJRXQZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lWukNm+J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XO+N/Vr5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGAM6HK3829376
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:22:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zsCbIy32Cwj+WoynZZ40HZ1L
	JqhDsSYp7ZCaTJx1JSs=; b=lWukNm+JCv/T1CqfsFoYJN8uBZ1CHKhUh3pMNqka
	99vpOQ+ADecAWfvpvAtfzhuQQYwviNO5wRMyGZoD3TW5WguwN9/GiDGsBf+Tqk04
	FkbBvOs6rPEYfqIai1blsR6YxbieqY5VaohlttAhBws6PlkayTyoUItxgSwr0MD4
	k/o6IGIhGfiR7Q2XnE8Fc93cNMigc27VBeYJqWHI2ptnfFMVp3WkPadtGnmk3Txn
	AXuoLk0WCvMYfE7xdH4DxY0CxI5ZEuSCjR2z388oC7ccrJYXOnXPrOzsZTqHaY3z
	0rUM2c7VibI49TIEorAVtoxtMDqhi4qHhc6bTT6rwYZd4w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b35m2rwaj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:22:36 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee416413a8so54515551cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765894956; x=1766499756; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zsCbIy32Cwj+WoynZZ40HZ1LJqhDsSYp7ZCaTJx1JSs=;
        b=XO+N/Vr56JGbYMZ3/eezABBABdZW+YwpOOLe/8QCMvB0/unbUZcblQ2NuM1E28jfXz
         z3jQ6/PRa6xIfx3LbbE5BHGllUv9ocu6IaPpP8nGwuajlSxf0p/gK+5Amp2rjzg94pWW
         T6YA6AdD/UNhh15Vt84yTvKqf4aPV2Zoz1eajHNGuHwK7adZAwzf0fN+58/eJe2MQaMD
         LVxMLTvpQMMhR3uIAIj/90kzaupHDvSvg/EVkkTrpITU0o81wBUpauGNhlKbhJPLP3wu
         DQpyl3YSjSWX7CZTk7ZvkTOeRj4LWegrNrAYpB1WEkJ5d5dhGn2CXb1FRkNSntXcc+/P
         aMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765894956; x=1766499756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zsCbIy32Cwj+WoynZZ40HZ1LJqhDsSYp7ZCaTJx1JSs=;
        b=Y1Nnqpz6rAOCswsA4GZD9a/rTDTupeGxt/RyNiGl8SOnuC2xXcq5YJqe/VjAUq0iq9
         jDtkS2bUpT7lPLO8aPZ2yfrYSn/ZcJODApthlgPBr1O2BKxCf/1pQpf+CYhuARDPQwQo
         sT1HEox4+ROAdHC+cq9PpydMeysvk9bYQ2fejRLbx75GKE3Ki0FGvJaw/PwnQUY4P7Xr
         el+LcqaXuvYV5ZgdlZTxVyPyoGHXmozIVh39JpdpF2n7JZGyqtLfUNHuwvF2OJJq+7uo
         vgJ8R8gvzFwaEZKRf5207clB4jcSx7KAdiQP1SaNvfe1bB5t6Cd/lyDesWlxj7IenyN5
         eY7g==
X-Forwarded-Encrypted: i=1; AJvYcCWZlZBvJ859JC/f0gN2TeCughylOakrSoYOCiNow23is1sr9Us3UYKxEQm3tJsJEp9ffN95uLNMUNCo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9furT36Px6UCBuVVHXXe/7vPqJ5rUin7g7dINJWX/15zxbGji
	uhyIiGWcJ6RQWmH85Sk7Jcpa2oUALEYHBV8n7GxUJ6vlaS/H+re4FJpG3VHZRzwGr1Dl70BaLUs
	SJ+Trhvdpn5o3n+ge9XYxAxoBjPNZdZJZsKtEQoy/Tx1K/7GbxjX+8ZVlb92GmY6n
X-Gm-Gg: AY/fxX5PXLd+7yuJFskdgg96gNXStJSJbfelahB3AuCaOamA7QObCOkbIUoEiFATRXC
	BsyAeRR1Cnrg4kDMUp1NtHTDOy/MtixwPIfsWXiXR2mJus6ZW1GbWGmCvVzOaCpybvZst1TBKDR
	Eo0d+0QzI9Se7lANMcGI0i3FVE17KORPIQ30KT3w9pDR3ug0v8opA/Yw7owNPxxTfWwP49SD2QO
	fot2mXpY3+cLCx3knLu09lv1Zm0bp22fO1Mn9+X7S4jLQTPjmQw8Dy0P+0qBjqyc7+RQNfO+FrF
	98/nXVRTmIyjpfnugqCAWNOZzoBZXIWrORKTqxyQDU9S+ff9abohnlpEPKx0eK+heZuRQ+wIavc
	c2dvYMkcgdsrpA40e7BwmbTPkEQn0nyFyqYTrHOF4E9q4ZCbYnhKV+5d//CsE9RR3Lfp+lIAT3Y
	uhVuRkBNdKspbBH1Xakyuf0/o=
X-Received: by 2002:a05:622a:8d01:b0:4f1:e46b:9dcf with SMTP id d75a77b69052e-4f1e46ba93bmr118999801cf.26.1765894956178;
        Tue, 16 Dec 2025 06:22:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEv9PxH1rNJmSfmr9K+GrJ3XvoNdbec/804VTT9AepOhF1+SUPJLGEuLKu0rVntfqmNSvMsA==
X-Received: by 2002:a05:622a:8d01:b0:4f1:e46b:9dcf with SMTP id d75a77b69052e-4f1e46ba93bmr118998001cf.26.1765894954709;
        Tue, 16 Dec 2025 06:22:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fded7629esm37232451fa.24.2025.12.16.06.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 06:22:33 -0800 (PST)
Date: Tue, 16 Dec 2025 16:22:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: Re: [PATCH v3 10/11] drm/msm/dpu: Refactor SSPP to compatible DPU
 13.0.0
Message-ID: <gljkq6jijsprelq7qmgai4g7mqlshezdx755n3ivbxjdf6uw73@dz3mkct7g3ry>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
 <20251215083854.577-11-yuanjie.yang@oss.qualcomm.com>
 <pzwgxqdlpmrbylguvzwypry3fix6wi7kxu3jlv3yzdtb3unnrf@wfzvuhvhmue5>
 <aUECnz+INNuLjHR6@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUECnz+INNuLjHR6@yuanjiey.ap.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=LpGfC3dc c=1 sm=1 tr=0 ts=69416b2c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=59m7dkejid0BOjw-uj0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: g_7gjic9_s_n1WhXlTDwABdGSlVeTaTW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEyMyBTYWx0ZWRfXxE5DmxNHN1zK
 Bido0jfx2sE+ybSm1Yjc4LwVzSS9W+Qg0rRiNdbIKTIqHlilcMJoIcqxA32MxSkoGMO3S85F4GJ
 qAifEAUX2e/D/tiJ+CAtOXLi3do9QsdUa/X3+4cNX3+amTg3DptTRXUNtErS1Q5YrvLoOctwksW
 DJT+k1wx9Lh853P/fjS92e+h6sm7HozgOXI0jowkDZJK7L6tOZyko3byhGmb9K+qe7df9nmyMx5
 RkFg/Mj8w34+M/WZ9QP/Zv7BfY2GPKh9/ZvoQ6wyvffped/38FS1lTKToP1tsnCFJteB2XJQ+5y
 fIAw+KksJDVqZn+BzESRzb8D+A//PaezgtFED1hOf6xiDIk6dQ3tkCyl8cvmIVcSe0EZ6Olu6UZ
 h8qOJSf4FOdcn/I/FjtZsYsW1G6sfA==
X-Proofpoint-ORIG-GUID: g_7gjic9_s_n1WhXlTDwABdGSlVeTaTW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 spamscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160123

On Tue, Dec 16, 2025 at 02:56:31PM +0800, yuanjiey wrote:
> On Mon, Dec 15, 2025 at 10:08:22PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Dec 15, 2025 at 04:38:53PM +0800, yuanjie yang wrote:
> > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > 
> > > DPU version 13.0.0 introduces structural changes including
> > > register additions, removals, and relocations.
> > > 
> > > Refactor SSPP-related code to be compatible with DPU 13.0.0
> > > modifications.
> > > 
> > > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > ---
> > 
> > We've fixed the order of the interrupts patch. Now you are adding SSPP
> > customization for 13.x _after_ adding the first 13.x support. Is that
> > supposed to work?
> 
> Yes, will reorganize order.

And after comparing with v2, I'm really surprised. It was better before
and then you changed the order of the patches. Why? You were asked to
split it, but not to move it to the end.

> 
>  
> > >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  15 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 155 ++++++++++--------
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  52 ++++++
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 ++
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
> > >  6 files changed, 191 insertions(+), 69 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> > >  		switch (ctx->ubwc->ubwc_enc_version) {
> > >  		case UBWC_1_0:
> > >  			fast_clear = fmt->alpha_enable ? BIT(31) : 0;
> > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > -					fast_clear | (ctx->ubwc->ubwc_swizzle & 0x1) |
> > > -					BIT(8) |
> > > -					(ctx->ubwc->highest_bank_bit << 4));
> > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > +				      fast_clear | (ctx->ubwc->ubwc_swizzle & 0x1) |
> > > +				      BIT(8) |
> > > +				     (ctx->ubwc->highest_bank_bit << 4));
> > 
> > I have asked to drop unrelated changes. You didn't. Why? You are
> > changing whitespaces for no reason. It's just a noise which hides the
> > actual change here.
> 
> here ubwc reg layout change in DPU 13.
> 
> ubwc_ctrl_off
> veriosn < 13 
> reg: SSPP_UBWC_STATIC_CTRL
> verison >= 13 
> reg: SSPP_REC_UBWC_STATIC_CTRL
> 
> So I do some fix.

What does it have to do with the whitespaces? Fix _one_ line.

> 
> > >  			break;
> > >  		case UBWC_2_0:
> > >  			fast_clear = fmt->alpha_enable ? BIT(31) : 0;
> > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > -					fast_clear | (ctx->ubwc->ubwc_swizzle) |
> > > -					(ctx->ubwc->highest_bank_bit << 4));
> > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > +				      fast_clear | (ctx->ubwc->ubwc_swizzle) |
> > > +				     (ctx->ubwc->highest_bank_bit << 4));
> > >  			break;
> > >  		case UBWC_3_0:
> > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > -					BIT(30) | (ctx->ubwc->ubwc_swizzle) |
> > > -					(ctx->ubwc->highest_bank_bit << 4));
> > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > +				      BIT(30) | (ctx->ubwc->ubwc_swizzle) |
> > > +				     (ctx->ubwc->highest_bank_bit << 4));
> > >  			break;
> > >  		case UBWC_4_0:
> > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > -					MSM_FORMAT_IS_YUV(fmt) ? 0 : BIT(30));
> > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > +				      MSM_FORMAT_IS_YUV(fmt) ? 0 : BIT(30));
> > >  			break;
> > >  		}
> > >  	}
> > > @@ -313,19 +337,18 @@ static void dpu_hw_sspp_setup_format(struct dpu_sw_pipe *pipe,
> > >  
> > >  	/* update scaler opmode, if appropriate */
> > >  	if (test_bit(DPU_SSPP_CSC, &ctx->cap->features))
> > > -		_sspp_setup_opmode(ctx, VIG_OP_CSC_EN | VIG_OP_CSC_SRC_DATAFMT,
> > > -			MSM_FORMAT_IS_YUV(fmt));
> > > +		dpu_hw_sspp_setup_opmode(ctx, VIG_OP_CSC_EN | VIG_OP_CSC_SRC_DATAFMT,
> > > +					 MSM_FORMAT_IS_YUV(fmt));
> > >  	else if (test_bit(DPU_SSPP_CSC_10BIT, &ctx->cap->features))
> > > -		_sspp_setup_csc10_opmode(ctx,
> > > -			VIG_CSC_10_EN | VIG_CSC_10_SRC_DATAFMT,
> > > -			MSM_FORMAT_IS_YUV(fmt));
> > > +		dpu_hw_sspp_setup_csc10_opmode(ctx,
> > > +					       VIG_CSC_10_EN | VIG_CSC_10_SRC_DATAFMT,
> > > +					       MSM_FORMAT_IS_YUV(fmt));
> > 
> > Again, useless whitespace changes.
> checkpatch.pl says here is alignment issuse, so I do this fix.

The issue was present before your patch. If you want to fix it, fix it
in the separate patch or ignore it.

> 
> > >  
> > >  	DPU_REG_WRITE(c, format_off, src_format);
> > >  	DPU_REG_WRITE(c, unpack_pat_off, unpack);
> > >  	DPU_REG_WRITE(c, op_mode_off, opmode);
> > > -
> > 
> > Why?
> 
> yes, will drop "-" diff.
> 
> > >  	/* clear previous UBWC error */
> > > -	DPU_REG_WRITE(c, SSPP_UBWC_ERROR_STATUS, BIT(31));
> > > +	DPU_REG_WRITE(c, ubwc_err_off, BIT(31));
> > >  }
> > >  
> > >  static void dpu_hw_sspp_setup_pe_config(struct dpu_hw_sspp *ctx,
> > > @@ -385,9 +408,9 @@ static void dpu_hw_sspp_setup_pe_config(struct dpu_hw_sspp *ctx,
> > >  			tot_req_pixels[3]);
> > >  }
> > >  
> > > -static void _dpu_hw_sspp_setup_scaler3(struct dpu_hw_sspp *ctx,
> > > -		struct dpu_hw_scaler3_cfg *scaler3_cfg,
> > > -		const struct msm_format *format)
> > > +void dpu_hw_sspp_setup_scaler3(struct dpu_hw_sspp *ctx,
> > > +			       struct dpu_hw_scaler3_cfg *scaler3_cfg,
> > > +			       const struct msm_format *format)
> > 
> > And here...
> checkpatch.pl says here is alignment issuse, so I do this fix.

And I'm asking you to don't do it. Don't clutter the patch with
unrelated changes (and whitespace / alignment changes are generally
unrelated).

-- 
With best wishes
Dmitry

