Return-Path: <devicetree+bounces-231478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D61DCC0D7D4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:23:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6877018852B6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24282F547D;
	Mon, 27 Oct 2025 12:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mBs6Fgk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC7334CDD
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761567733; cv=none; b=BGBUYCc9iEiZTPf0lMG/qH8vAqdMnHxrtBWS9EgP+AxbQvF5k8fWDxVe+ripb0RV1sVQJhfbtM9aUG782ia1Jkx/Ovpj8qyZb1HF3juLgPNRKtXIZUMgUU/6pjzgPPT61E3XY2zMKFBkj5nhrT7DL3TIKu+u34i85nCBB68p+bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761567733; c=relaxed/simple;
	bh=5HTqrOYqCuummTRQY5R3kBtRSlzJ1dTedKBPppB19TA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j0kT+/wcy+mJPk6GDKpVsDzWPzO1Jx+4ZEv5dHFuqdHBPSwuC8uYK3VY8fJKbQwzGUJj70dQPg4XTI6zRhw3m3xouUnAIAtlwFhwDM6VVJHr5CmRykzIxqQI7MJOUs7bLjR4R1yKgCtv51A3hV7Hzcrg6cotLTMn2ksjz4kLDXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mBs6Fgk9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8IV6J695053
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:22:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Psg+67BfDLKR1waGwn5a3FoQ
	zpaxCzLH0+T9U8DBvbg=; b=mBs6Fgk95ffbn4ieruXYrS9Ov7pW4DuApfupuktD
	bX+M9/sG7KIZXUhn+qqhj100+ee+Iv5KD2GbjThnS4Yhp53XXfxDuex4rPALtaIj
	Fcpz1NKhX3QA1O75SAhUAC1YG399L0jTTLEXYrBLQ4XQGFwktwrkPkKVQrsF6vkA
	gzXRTmfqrUQvFbCLXpbqm5K//BKz0vLluu/2Srtx/T1Bin3VOpkZGJRg+5u1Mgv2
	hXcpprUqVZT4lrMiXbNwjpCWqxOHJwO6pS5wDPUIYgF7a2A/lQq/U4jFsGqEUitM
	oAte68UO9chMnRCUZy5W/CTreeeuHk3HxAiuT5CutnrrGQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnb4k8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:22:11 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ecf72a45f5so38767901cf.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:22:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761567730; x=1762172530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Psg+67BfDLKR1waGwn5a3FoQzpaxCzLH0+T9U8DBvbg=;
        b=o0IQiQZxYWQSW2SvapmMg3YkLDGaz2fXjbnDwW/SSX8nOractfcXDJT5e/uCQgYn4w
         GgDQGrM7druRLHaltmcQE6AChMP297XF6rslH1lDvufLtUxaUfRkHsg15gayD5Xl3QaT
         PS54Ox9L4kOM598r5GMpq2XS3T+DoOPYo7VA5S8434UVe3hKTepZ2ahWPm5JNKnNggQm
         1how14+jVk+OWVH4YFauhAZ/PmNrpI6E7pSyu4W8eNmiISnKgXhQH33/BWLC0rleYyug
         hC9qFsFO13FMksRaqfZJFmBvmnoQTmJj9gM1VUnBpsu3qiG5KQUdf62VfqtrMNwNdM4c
         D8mw==
X-Forwarded-Encrypted: i=1; AJvYcCVzd2uCCKAXyUnlQwy8mAxQ6+DXbyZpQjBQQfjOi8vxdLofcFertmqNEnpy1N+l4Z4hruOB5A4z1Qsy@vger.kernel.org
X-Gm-Message-State: AOJu0YyDMZDcjuX98E/X4ZSEnqf8n2w/1ki8ty7ejNbQn4oj0joMRTUZ
	RjrwfXZ6dcFZKV6hdvAr6iyna94hQ7drROMWgUHbIHMj2DftbiNE/8snG8+AeggWzsN5q0ODhiU
	HCgxEE38W5XAZHtugQV4LSrgvgvy4A7h43ibSNzZyKvZoAXoA6g2VfqUu92z6txfi
X-Gm-Gg: ASbGncuAlSxXzN6NMmZfShcOCZ4XyG8EdV1jsSGxxL42a3CPjyuKNZkhEsLxsl+pIgd
	WMa8ArbZXWElSUTQGJ8TcPpTs/IrzOB5HyJZNK8QRMysskeAbWcyXoOGMNOBaChYPxkF/PyCJ7q
	BMRWDapByj8/+xoGUUZwtCCOMBmt3HgzvwekbT0In+akZjv0HIxM45MgHgCTw9CiLA6ANC9CYZe
	MZXj1Nmxbgxz00hsnb7+FXI74cg70mpKsW7H+4jbqkJz7FUH5GloaWKsdnMMuR32+sP7xChiUtG
	pTTfwnHpWmRygol2NBFpr10PF1vBde4/j6FRlWh4gwMM6ZZ+4rGchwQxFqeLhLnAuPCfydzBGXC
	uEhuiDoWfIkqMHJemiXksKMU40zrmsql7tEWivvplebD9hWetyo2t1EwV7JXaE79C5ZHnRQbXWS
	MlmeBPdgUXlt2f
X-Received: by 2002:a05:622a:2291:b0:4ec:f017:9e2c with SMTP id d75a77b69052e-4ecf017a075mr61636111cf.35.1761567728667;
        Mon, 27 Oct 2025 05:22:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGYgD/La2Tib5FQl2fihboVZ7Zt1I5VSs9oXv2jbhiaDS8YaEpcF2SppZieSQXcjQmVktSMA==
X-Received: by 2002:a05:622a:2291:b0:4ec:f017:9e2c with SMTP id d75a77b69052e-4ecf017a075mr61634961cf.35.1761567727214;
        Mon, 27 Oct 2025 05:22:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0c342csm19672521fa.26.2025.10.27.05.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 05:22:06 -0700 (PDT)
Date: Mon, 27 Oct 2025 14:22:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 07/12] drm/panel: Set sufficient voltage for panel nt37801
Message-ID: <4bnvh2ydtrmejknzpsxoalxoyjpq5g5cjbrico5ezbek24r52s@u5zy6ekh6lps>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
 <zxofh6bwee3vjjlntlfqy7yg2iu2mipjvl7s5bcm6gbh233cjq@nuicjojawd2d>
 <aPsWEhM7i+gDjXE0@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPsWEhM7i+gDjXE0@yuanjiey.ap.qualcomm.com>
X-Proofpoint-GUID: qS2XDBbOH1npX-YNOm6RsS_x4sHtI2uz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDExNSBTYWx0ZWRfX7MsfuJRvDrbr
 Tn8Xj42IKGKBPG70rn5bQmc1fuDqaQpN8xvk9LA4dYVaFUJy3RpD+9Zw9wPDN8jcdGj4p0Of6Im
 ATND2rMfkedQ3NzUXlh/GW+B3mqxgRakFmLCLuSw3k7POqWeg8yAss9Ir4BScRNow4QKtSGmWSU
 1EN27PiLyswyH8lSI+2H0n/ryP80KkeCKXjoDuMqygAZ0ugH7ZIboOm9vK+f23rTEyZ/La54vNc
 7baNkMIKtS+dQJekBlZXCQ8xBd7B2vzNED2O7f1wi6J9F++xPPVhWGhWXkqMuxHTwWUu6hgL/k/
 jCSrmO4sr/8z2YEz1N4zMSPsciG6fKxU4uXhGPrkQCQwYuQ9wNCOZ8VjGdptZnS3k5mFKxmk8CC
 FpcZKr4aW2JQq1StxdpUyihnwoFLUw==
X-Authority-Analysis: v=2.4 cv=AJoZt3K7 c=1 sm=1 tr=0 ts=68ff63f3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8
 a=UzKOEE2XrYQWi1Oh8k0A:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: qS2XDBbOH1npX-YNOm6RsS_x4sHtI2uz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270115

On Fri, Oct 24, 2025 at 02:00:50PM +0800, yuanjiey wrote:
> On Thu, Oct 23, 2025 at 03:14:38PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Oct 23, 2025 at 04:06:04PM +0800, yuanjie yang wrote:
> > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > 
> > > The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> > > VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> > > 
> > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > ---
> > >  drivers/gpu/drm/panel/panel-novatek-nt37801.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37801.c b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > index d6a37d7e0cc6..7eda16e0c1f9 100644
> > > --- a/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > +++ b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > @@ -267,6 +267,11 @@ static int novatek_nt37801_probe(struct mipi_dsi_device *dsi)
> > >  	if (ret < 0)
> > >  		return ret;
> > >  
> > > +	ret = regulator_set_voltage(ctx->supplies[0].consumer,
> > > +				    1650000, 1950000);
> > 
> > This should be done in the DT. Limit the voltage per the user.
> Two reason:
> 1.
> I see https://patchwork.freedesktop.org/patch/354612/
> 
> panel panel-novatek-nt35510.c also use regulator_set_voltage set right voltage,
> so I do the same work.

Please look for the majority rather than the exceptions. Out of all
panel drivers only two set the voltage directly.

> 
> 2.     Kaanapali vddio regulator:
> 
> 		vreg_l12b_1p8: ldo12 {
> 			regulator-name = "vreg_l12b_1p8";
> 			regulator-min-microvolt = <1200000>;
> 			regulator-max-microvolt = <1800000>;
> 
> 	Voltage is from 1.2~.1.8 V , So I can not set it 1.65~1.95 V from DT(1.95V is beyond the allowed range).
> 	So I use regulator_set_voltage to set voltage, and regulator_set_voltage will choose the appropriate voltage.

DT has to list the voltage values that work for the devices on that
particular platform. So, ldo12 should be listing 1.64 - 1.8 V.

> 
> 
> Thanks,
> Yuanjie
> 
> > > +	if (ret < 0)
> > > +		return ret;
> > > +
> > >  	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> > >  	if (IS_ERR(ctx->reset_gpio))
> > >  		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> > > -- 
> > > 2.34.1
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

