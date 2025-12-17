Return-Path: <devicetree+bounces-247230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CE5CC5CFA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B9453004BA3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC0E277CAB;
	Wed, 17 Dec 2025 02:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kkP9Y3yC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hpSA3xKh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE74274B3B
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939569; cv=none; b=WYgB/pOprl5Wq+ati7ASJBlgZT32jNVJxZjPR7fc0G+aGaqRVEb3lne2Vq9eo42lX1HK2ziDID8JbKzcxZvBKK+KCBHXTWbZCi8qBAXTCSsesHjwSOIxZJ8TxmTGKxRPh4LqdoocTeciaOspTWPr9wOpmcrEqprM9xtEs1iWE/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939569; c=relaxed/simple;
	bh=+taVl9d0DmNYlbBhHvM5GjECJ3vUFg7jyaoe51/b/yE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mqvmYJYOwLNaguM5+lv8PW8VmCzQij2SO2Li7QMk7oXjE/I6Sl9MsAj0V6TDnhK98UM7L1ffO1Qi3Ui1qL0+U+6rBVSdtmQK0LAeTWtwwcNWUoj7f0KRNk8LOpY4dToz8XkU9bKXuo4uvo2F0Jbe9p6Rx4WT7r9lJ0K7ZTnNGGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kkP9Y3yC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hpSA3xKh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGMQaAW273386
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:46:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JCJBPzyRlhs0ukky8nnWNxDG
	T3jIQ2bJUvRtWHrXAZA=; b=kkP9Y3yCoFi7+UDQPn6FBzxoy7INU9c/w6Tsuzjf
	OAcaisEwIdxxWr+wUSL07+/BCTYYlYNb3uAiFZ2TCjZlNVNPOEDJ5UOs/Y24ulKN
	Jj1LxAPNDoF82HY4H8VcQTl1Uz6r5pGeFModVu7iYYEBd50xbLBWhd7u25A/asN4
	5EHKl/5ZDqH9LFjo1diyEn/awSDui1/VDScTcgma+oTs1T9Jq+fvs+1jOlLbTUtz
	QahlZurh9Tj0K3s/GyxrSZuK8ezTd3qYtonCUyNQqx0YPbrSUckft+Oc5VGZ+vtl
	K3bJw/k3vz1FXHIZP16CAK4soXqLSLVUopwUlSGvgPTLww==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fj1rnch-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:46:04 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a31ce8214so73684406d6.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765939563; x=1766544363; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JCJBPzyRlhs0ukky8nnWNxDGT3jIQ2bJUvRtWHrXAZA=;
        b=hpSA3xKhgTZyB0UiO1vKRFKe5t6stUBu4HYzkfAE7KoLudtMB19PEw4wyjWGbzJif3
         Wgko/Uhy2nMomIkjKbb3WVlQ1W1Diz+8YYQVSS6+wkDCYnOpQF6DFhnOc5ctbmhU/lhA
         N4OhRtPqgRTKWtcf2gTEUmyqpXujip4tvxkt2LPQPtt2OHxA1R0Bklv8i+YiKMtBedy9
         YmqMZKk6neJZByr7wnEZOoAfAIaI7puASsD75v4eYsjZXlT2TNslySpwVgkswlzeWdqf
         RxmwId/f2OFt8VkmiYDIzCZP13JtfI0Q039WO58HAF2ZXY9BmK23JmHTWbT6E47hdurN
         YgNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939563; x=1766544363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JCJBPzyRlhs0ukky8nnWNxDGT3jIQ2bJUvRtWHrXAZA=;
        b=K9Jfaf8kY0sN/gJyFL71/9cfxCwgteKa0aVwnqFF+N3XT+fIHBuDl8q+XeRRhTdCdi
         y4LMTQa3868yhh6pZhmQNDIs+/fyau/EAm8IrHIK1aF0hGRK/zJ0HNqyYvsAehRAwWpZ
         lqbtEVbUkuICIJK8+TN+5HGV/HZWBa1m8bpGlWm8gLIBp34yJPSZGMJKdc1XN5ScP2+a
         Hvtg6a65Itxo8/iMc+/psRxQ0F8HLGf/paWPajlv0I2F2UwgQGU3hCK8ub9a5+NXBlO+
         lntqUlMcr8foPWl9kuMmQ3Z79bu1FbLlQkptk2aa16pJHduqI3JKahWaKM6FsnU50GmO
         xWzA==
X-Forwarded-Encrypted: i=1; AJvYcCXova8opjHP8Ddx9AkIVzBTCbM3JB6Bca0r1y4U6sTJ3cAX5PubjgvSrddh3weaMc2+RJ9qcgMJew0V@vger.kernel.org
X-Gm-Message-State: AOJu0YyzVPGyszLyd7/MszQc8cQnYS044eg+O6pNa/y8BhzaHKJyfdLZ
	5i1/MM3Gyay42QkHLTh4P6eEKfABlaAzEY2uDUia/tkoXt8l/R5QPeUCDAO+XfQ95ZffheWz1le
	gmUpwNQl50T6iwNVYqV09/hImbMxGVGB1xSpb4BTPBKzeJoUtmXhaZfysPs65D+XA
X-Gm-Gg: AY/fxX6nF9D7SKNtudby9H/+diwi9LHWeiOIo2K6Kjq4sgT41NxxM1WTg22Up3pdmPV
	VHgq4JbKGExjV+c4uFSCjvm6G5C9L54gBxkfUdDCXO53xjZHBTuZFcuZJR4ERhqiQ+yeMn8x1b6
	VUt4k5Jk5dC2gK7hjtey9JX4Le0y2cLPe9L/kIULJE9SH8xfAstsN8iFr/Yv0vhxyEuUn8Yqjc4
	QgxLSbcLNMuknhlFxIgy2bNnm4hKnftItX3of7HI3SdoLvGmdmXK1+zxZVhtJoARjXMRMZJscbO
	eon3lMiUijZCRXNyfn6ZLpo5gI5TFaGsN5lCfiikd+lrk7T8jqXIISBc2ijTrAvo7KOZI+USxHU
	VJ+N/uxMGua0nf60boULzxUxhwNa4TnaGEhY60w5GGzxmCMhy8TTarq7BLIvy+JaOMMjSarU=
X-Received: by 2002:a05:6214:5b87:b0:888:82c3:dfc0 with SMTP id 6a1803df08f44-88882c3e67cmr227694916d6.55.1765939563464;
        Tue, 16 Dec 2025 18:46:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGx1RaDoBtJw9fMmc0Xmr4th/lJOfvqaul2PsNrWDcut+ChvzvkgYHcb05lGbK5/M73moqytA==
X-Received: by 2002:a05:6214:5b87:b0:888:82c3:dfc0 with SMTP id 6a1803df08f44-88882c3e67cmr227694546d6.55.1765939562816;
        Tue, 16 Dec 2025 18:46:02 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8899ea36210sm85899146d6.27.2025.12.16.18.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:46:01 -0800 (PST)
Date: Wed, 17 Dec 2025 10:45:50 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Message-ID: <aUIZXiL+JY27phny@yuanjiey.ap.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
 <20251215083854.577-11-yuanjie.yang@oss.qualcomm.com>
 <pzwgxqdlpmrbylguvzwypry3fix6wi7kxu3jlv3yzdtb3unnrf@wfzvuhvhmue5>
 <aUECnz+INNuLjHR6@yuanjiey.ap.qualcomm.com>
 <gljkq6jijsprelq7qmgai4g7mqlshezdx755n3ivbxjdf6uw73@dz3mkct7g3ry>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <gljkq6jijsprelq7qmgai4g7mqlshezdx755n3ivbxjdf6uw73@dz3mkct7g3ry>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDAyMSBTYWx0ZWRfXybaCwV4WftBk
 RuLs75E5IqgzwtFdUuaioVxBfETr3Oqn30KpZpkERdqfhPtA4gGfcE/VofvxCNgtM0ZpSt6U9FD
 qClApjp1Vhu/0zVM0cchXZxrd97Di79vkuF34efhGLg0rk0irpIApY9qcD/C9Iou50VOnffa9zn
 YFCYgAAiiw7KlJdkL5llUQfjq7IS3uPpyG4Ze6tmmI7JutOYMEwSKML9FNI8btxks4qbTZKB22o
 tJlzBTH3qCvDLJ7qWItiu8JWGet0viaoy//JBZXLa9R4rRVYwOu6ZTnVz7vqudjrbY7wAtqzD+Q
 jIqzMZoOjdqsD9FvU4DO9WrV4oC6M1wnrzas0Tl0PY/9f1pOEPUgO9GXnX48cVHERQQkdd/dAIZ
 rEpFYJN8PS6d3AMJXFUKpRlFkO0QaQ==
X-Proofpoint-ORIG-GUID: XdMVHMqJba_jMov2ews72PpJ-X9V1_M2
X-Proofpoint-GUID: XdMVHMqJba_jMov2ews72PpJ-X9V1_M2
X-Authority-Analysis: v=2.4 cv=edgwvrEH c=1 sm=1 tr=0 ts=6942196c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tNEIORBzTMdH9SYpPiUA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170021

On Tue, Dec 16, 2025 at 04:22:32PM +0200, Dmitry Baryshkov wrote:
> On Tue, Dec 16, 2025 at 02:56:31PM +0800, yuanjiey wrote:
> > On Mon, Dec 15, 2025 at 10:08:22PM +0200, Dmitry Baryshkov wrote:
> > > On Mon, Dec 15, 2025 at 04:38:53PM +0800, yuanjie yang wrote:
> > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > 
> > > > DPU version 13.0.0 introduces structural changes including
> > > > register additions, removals, and relocations.
> > > > 
> > > > Refactor SSPP-related code to be compatible with DPU 13.0.0
> > > > modifications.
> > > > 
> > > > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > ---
> > > 
> > > We've fixed the order of the interrupts patch. Now you are adding SSPP
> > > customization for 13.x _after_ adding the first 13.x support. Is that
> > > supposed to work?
> > 
> > Yes, will reorganize order.
> 
> And after comparing with v2, I'm really surprised. It was better before
> and then you changed the order of the patches. Why? You were asked to
> split it, but not to move it to the end.

I make the mistake.
Sure, I will keep the v2 patch order in next patch.
 
> > 
> >  
> > > >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  15 +-
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 155 ++++++++++--------
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  52 ++++++
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 ++
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
> > > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
> > > >  6 files changed, 191 insertions(+), 69 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> > > >  		switch (ctx->ubwc->ubwc_enc_version) {
> > > >  		case UBWC_1_0:
> > > >  			fast_clear = fmt->alpha_enable ? BIT(31) : 0;
> > > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > > -					fast_clear | (ctx->ubwc->ubwc_swizzle & 0x1) |
> > > > -					BIT(8) |
> > > > -					(ctx->ubwc->highest_bank_bit << 4));
> > > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > > +				      fast_clear | (ctx->ubwc->ubwc_swizzle & 0x1) |
> > > > +				      BIT(8) |
> > > > +				     (ctx->ubwc->highest_bank_bit << 4));
> > > 
> > > I have asked to drop unrelated changes. You didn't. Why? You are
> > > changing whitespaces for no reason. It's just a noise which hides the
> > > actual change here.
> > 
> > here ubwc reg layout change in DPU 13.
> > 
> > ubwc_ctrl_off
> > veriosn < 13 
> > reg: SSPP_UBWC_STATIC_CTRL
> > verison >= 13 
> > reg: SSPP_REC_UBWC_STATIC_CTRL
> > 
> > So I do some fix.
> 
> What does it have to do with the whitespaces? Fix _one_ line.
get it, will drop unrelated whitespaces.

> > 
> > > >  			break;
> > > >  		case UBWC_2_0:
> > > >  			fast_clear = fmt->alpha_enable ? BIT(31) : 0;
> > > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > > -					fast_clear | (ctx->ubwc->ubwc_swizzle) |
> > > > -					(ctx->ubwc->highest_bank_bit << 4));
> > > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > > +				      fast_clear | (ctx->ubwc->ubwc_swizzle) |
> > > > +				     (ctx->ubwc->highest_bank_bit << 4));
> > > >  			break;
> > > >  		case UBWC_3_0:
> > > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > > -					BIT(30) | (ctx->ubwc->ubwc_swizzle) |
> > > > -					(ctx->ubwc->highest_bank_bit << 4));
> > > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > > +				      BIT(30) | (ctx->ubwc->ubwc_swizzle) |
> > > > +				     (ctx->ubwc->highest_bank_bit << 4));
> > > >  			break;
> > > >  		case UBWC_4_0:
> > > > -			DPU_REG_WRITE(c, SSPP_UBWC_STATIC_CTRL,
> > > > -					MSM_FORMAT_IS_YUV(fmt) ? 0 : BIT(30));
> > > > +			DPU_REG_WRITE(c, ubwc_ctrl_off,
> > > > +				      MSM_FORMAT_IS_YUV(fmt) ? 0 : BIT(30));
> > > >  			break;
> > > >  		}
> > > >  	}
> > > > @@ -313,19 +337,18 @@ static void dpu_hw_sspp_setup_format(struct dpu_sw_pipe *pipe,
> > > >  
> > > >  	/* update scaler opmode, if appropriate */
> > > >  	if (test_bit(DPU_SSPP_CSC, &ctx->cap->features))
> > > > -		_sspp_setup_opmode(ctx, VIG_OP_CSC_EN | VIG_OP_CSC_SRC_DATAFMT,
> > > > -			MSM_FORMAT_IS_YUV(fmt));
> > > > +		dpu_hw_sspp_setup_opmode(ctx, VIG_OP_CSC_EN | VIG_OP_CSC_SRC_DATAFMT,
> > > > +					 MSM_FORMAT_IS_YUV(fmt));
> > > >  	else if (test_bit(DPU_SSPP_CSC_10BIT, &ctx->cap->features))
> > > > -		_sspp_setup_csc10_opmode(ctx,
> > > > -			VIG_CSC_10_EN | VIG_CSC_10_SRC_DATAFMT,
> > > > -			MSM_FORMAT_IS_YUV(fmt));
> > > > +		dpu_hw_sspp_setup_csc10_opmode(ctx,
> > > > +					       VIG_CSC_10_EN | VIG_CSC_10_SRC_DATAFMT,
> > > > +					       MSM_FORMAT_IS_YUV(fmt));
> > > 
> > > Again, useless whitespace changes.
> > checkpatch.pl says here is alignment issuse, so I do this fix.
> 
> The issue was present before your patch. If you want to fix it, fix it
> in the separate patch or ignore it.
get it, will drop unrelated whitespaces.

> > 
> > > >  
> > > >  	DPU_REG_WRITE(c, format_off, src_format);
> > > >  	DPU_REG_WRITE(c, unpack_pat_off, unpack);
> > > >  	DPU_REG_WRITE(c, op_mode_off, opmode);
> > > > -
> > > 
> > > Why?
> > 
> > yes, will drop "-" diff.
> > 
> > > >  	/* clear previous UBWC error */
> > > > -	DPU_REG_WRITE(c, SSPP_UBWC_ERROR_STATUS, BIT(31));
> > > > +	DPU_REG_WRITE(c, ubwc_err_off, BIT(31));
> > > >  }
> > > >  
> > > >  static void dpu_hw_sspp_setup_pe_config(struct dpu_hw_sspp *ctx,
> > > > @@ -385,9 +408,9 @@ static void dpu_hw_sspp_setup_pe_config(struct dpu_hw_sspp *ctx,
> > > >  			tot_req_pixels[3]);
> > > >  }
> > > >  
> > > > -static void _dpu_hw_sspp_setup_scaler3(struct dpu_hw_sspp *ctx,
> > > > -		struct dpu_hw_scaler3_cfg *scaler3_cfg,
> > > > -		const struct msm_format *format)
> > > > +void dpu_hw_sspp_setup_scaler3(struct dpu_hw_sspp *ctx,
> > > > +			       struct dpu_hw_scaler3_cfg *scaler3_cfg,
> > > > +			       const struct msm_format *format)
> > > 
> > > And here...
> > checkpatch.pl says here is alignment issuse, so I do this fix.
> 
> And I'm asking you to don't do it. Don't clutter the patch with
> unrelated changes (and whitespace / alignment changes are generally
> unrelated).
>
> -- 
> With best wishes
> Dmitry

Thanks,
Yuanjie


