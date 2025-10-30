Return-Path: <devicetree+bounces-232996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF2EC1E188
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 03:08:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D548734D347
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 02:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D54D2F9C2C;
	Thu, 30 Oct 2025 02:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e/aiOE48";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DMh1lVT9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAA11F2382
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761790128; cv=none; b=IbceMuAsNX1ak9E8HMrEDvma+TJecxRP+2FyBdFkylltB4hzmqzOPJKnldYpKo2VTJfOSaKFX2UaetlHAz6mB+tCf5Yqx6ACY/j+Ysh/SXH2tysO0qMzXc7H6gkse5KxSgwAJ9bjOI/Snz2daCgZmz7n7F2rS0nloDFU/ikDoW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761790128; c=relaxed/simple;
	bh=cHfHWUPdId3+SUm4bJWQGwD0CYTnsns3EJRZnEVwD6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iWIY2mdjteIaubvPe9ycuKzsYmAmhA9EfxwcVOQb6m1kTUSNV8huo26DlP6iY2ScPdL9UF48tjLrDW6UI0Hp3yV/lFLoKDUs0jEEPo37qq6+XfEyY3quX8wtTsrO0CSNA3g/KpcwprNssaa8OAv5Wor903n4RJBczaOpwydKY2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e/aiOE48; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DMh1lVT9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TNmdpd811082
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O/baTxXJPCHgYea9og1wAW8N
	5bDqCLQ1vuQ5vgT1fIE=; b=e/aiOE48Z02ig1rIP7e4M6lp3d/MqYESQvmoQSI9
	QaJY8pHe1TiXXHq5VR0Hg3XfPI3ChmFEPOOlFQuGVGLa3ub5hYq66WQkDw3abiZt
	PTU/BjYftESI6i8BshQQ6y8RPODxJYMWvf0ClKjSFlcxbg8+GIcOTUKjGioOOZqX
	3M8h556CSw8R/pKBMtzN50ibyg/dQ1S0a16sst31GrI/e5IN8C4GT6SktVOShrMc
	jOLbTqwjfwLh4yk7O5tBIEh+zynp4yXpBE0jFbuIsRNaL932f7g1KE2y1FYf0i6i
	eoOIRdVS/WnSyxnTUdbrFJrAUVPuIIX4uM6TAedVLoZaTQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3mvg9x4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:08:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8908a248048so110329585a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 19:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761790123; x=1762394923; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O/baTxXJPCHgYea9og1wAW8N5bDqCLQ1vuQ5vgT1fIE=;
        b=DMh1lVT9q/xHBTrtxc0WjZ2OZMzuIaKx5BJ4wgY4B6FDQfn8bkfuOGmqodjGG9bd+t
         LVyKt7/RUR23QUJHpoMXPK4c/5UkaCqrrKs/hv9bXM/va2HtW0cq+ZoO6wcKX0V/tlCY
         R68bB9dm2R2W03Rz3GV0QlRsZsGt6fxTliFE9SKk5oHXTl6L4zkY8Ko3kyrc8a1zupsA
         RRVPkcT3u+SCmP04qSiWBPmG5hCEhlZ59tDDAw3PElUI+qigzXoUQhyvh/Ig87GkWQrS
         dgwETSiEYP/UACyKXeYBYfBXuSUas2gSO8vK39fVwOPD/x1wo+/DptPoI6PnRwZGCu0o
         WW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761790123; x=1762394923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O/baTxXJPCHgYea9og1wAW8N5bDqCLQ1vuQ5vgT1fIE=;
        b=iUuvJ3h79t9M+7klf0M9UX4T8LgBDVi/fJ94Vnrft5R6YtrSsxor0kjwW4+TxiN85x
         qsfWvNXoIYH2hosrDWlPtVWucOKm1UnLvzZtkvzfVr5y2tTp7hPg6n4pi35o6oHY0qCL
         +CJEgCvhr0LFAdkCodMfNYFj3GfxxJc+ulzyXMKWd0e2AE5mS3Nomd4eWmIjQlizLsCk
         H6bTkMyn7XDenGVdJZYcAf24XlHYKB9UbPvT7iEZSZcuX7vtNQNUjQqqLkuAgLoYnx62
         M2/4SCzLe57GyDPOe3Q1J+uqO9E99xufMp73mvdnp829OIG2JZk552rD8oQK7l3EMqMD
         x8/w==
X-Forwarded-Encrypted: i=1; AJvYcCWXJp/3I8pixDa4NgfVtrYiq8BZvsNaCvxjuVxCr4b/yHz06A9Oz3kN58v+Tl/7hsm7Y2bpiDmkXsbD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1zODvcpr9HwYUG+g2zQ3I0qpnJmpLsyMX7UkDg8V0KWHlnxUi
	zsixzzF4fwl2puWYGq3HtJ2mdzEfbCZVHL8ZQ87af16OjSsoqgLXtlqbqBQGkEg5KsrILvarYzX
	Iy903EN1YXcTd2OnNPGpXBAlyvw6qHoN7gFnO5YaHudZy6gG1v1WckIVpMIbelbYb
X-Gm-Gg: ASbGncspCfYQWGq8yMFPr3IDvO997Bbk/e1amCjdLhHYZZ7iLUn7J3iO6LzM6drLx39
	YYo1H0l4fEozTcVVSsBN8ByS1jyBtZuCuDSPHvVH4jnnQ4KILUf0zilB7ykoDTnPDOMEzC5/bZV
	oaACvfmtJMtAaROHC/iRUTLGl9Vt5HSUEBqbtWkVvyaa+w6b5QAUM5Jla74G1ZegnZJF0IpvWbz
	AjHfcSPWNENRECiftvznamwAF52kqmYnq/P+Ju0AtkVJ7Eakb9j96HIa4s/9L8uAxpkChZbdcH8
	/GNXUFDxi1OL3fRibnkScaaQeD8mQpZsEa/6bA2PeglFrUKMs2MfEVfRrNKwJ2NYrhxrdg2+Fvv
	k1E7DciUQ2xTXYj6jXzUpJW1QZ1aTzSpjV9+Uw2q5yPg3PeuYzMQg2YHbuGWx
X-Received: by 2002:a05:620a:45a3:b0:7e7:12c7:57d with SMTP id af79cd13be357-8aa2de73b12mr257837085a.44.1761790123314;
        Wed, 29 Oct 2025 19:08:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfgmXNfYz7FjFrXiMMcOt/IAAGlLFbwsCSB3+3x8FbOF3Ov9Sbc6o7BWOw3LDDSUkHLl+H0A==
X-Received: by 2002:a05:620a:45a3:b0:7e7:12c7:57d with SMTP id af79cd13be357-8aa2de73b12mr257833485a.44.1761790122795;
        Wed, 29 Oct 2025 19:08:42 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f25798afesm1161546485a.37.2025.10.29.19.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 19:08:41 -0700 (PDT)
Date: Thu, 30 Oct 2025 10:08:30 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Message-ID: <aQLInjBCbeNJVanK@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
 <zxofh6bwee3vjjlntlfqy7yg2iu2mipjvl7s5bcm6gbh233cjq@nuicjojawd2d>
 <aPsWEhM7i+gDjXE0@yuanjiey.ap.qualcomm.com>
 <4bnvh2ydtrmejknzpsxoalxoyjpq5g5cjbrico5ezbek24r52s@u5zy6ekh6lps>
 <aQF0zzUpLeUu4lrC@yuanjiey.ap.qualcomm.com>
 <5hftxsuqz745mxxk2hjpwfxwrm73p2l3dxn2mb2uqb2c44fd2w@l5xvadj7gvvg>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5hftxsuqz745mxxk2hjpwfxwrm73p2l3dxn2mb2uqb2c44fd2w@l5xvadj7gvvg>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDAxNSBTYWx0ZWRfX2jgnputnkhgn
 qRdQkJhqg/tI3xTwaumsQU37fzuz10WybUrCW7TsFFyseacGwsPkmFkO4PMjhUfJrnK+VdIYfuG
 8FpdrAzvYJEq4CgUQGWXAZrXLcNyZpTc+3vfDGx9BqesH8TARUgeYp83dxasTHvBNXMS0X9348m
 nYJ9wMMQgmHxwL9h/Dw1Bxb4U1jMKII9eJrxamKpthVIQfusrnElD8czkiwGnRNQsHoOzC/g1xa
 BzaSIxcWqcz187Sv3HQBcFEtfLqXzIzo5OvytwyRPgl90Wffglf7RBtRvEp3BJiW3gavwvT/vs+
 Lvh4ujQE9i5TX8faoLu6uMoTPP8tBTgFH7FnUWAFOBoohIAuE+zD0RJllP58yzeuY4gkEeEG1N9
 7x+HO4cts0ZCWqm5oevob2aqGeuA9A==
X-Authority-Analysis: v=2.4 cv=S8XUAYsP c=1 sm=1 tr=0 ts=6902c8ac cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8
 a=Glo02QtyTbYzxwwq8ScA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: TAanijObAqszSLUTE59VIQ72TG5DEPMY
X-Proofpoint-ORIG-GUID: TAanijObAqszSLUTE59VIQ72TG5DEPMY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300015

On Wed, Oct 29, 2025 at 02:20:13PM +0200, Dmitry Baryshkov wrote:
> On Wed, Oct 29, 2025 at 09:58:39AM +0800, yuanjiey wrote:
> > On Mon, Oct 27, 2025 at 02:22:04PM +0200, Dmitry Baryshkov wrote:
> > > On Fri, Oct 24, 2025 at 02:00:50PM +0800, yuanjiey wrote:
> > > > On Thu, Oct 23, 2025 at 03:14:38PM +0300, Dmitry Baryshkov wrote:
> > > > > On Thu, Oct 23, 2025 at 04:06:04PM +0800, yuanjie yang wrote:
> > > > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > > > 
> > > > > > The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> > > > > > VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> > > > > > 
> > > > > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/panel/panel-novatek-nt37801.c | 5 +++++
> > > > > >  1 file changed, 5 insertions(+)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37801.c b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > > > > index d6a37d7e0cc6..7eda16e0c1f9 100644
> > > > > > --- a/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > > > > +++ b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > > > > @@ -267,6 +267,11 @@ static int novatek_nt37801_probe(struct mipi_dsi_device *dsi)
> > > > > >  	if (ret < 0)
> > > > > >  		return ret;
> > > > > >  
> > > > > > +	ret = regulator_set_voltage(ctx->supplies[0].consumer,
> > > > > > +				    1650000, 1950000);
> > > > > 
> > > > > This should be done in the DT. Limit the voltage per the user.
> > > > Two reason:
> > > > 1.
> > > > I see https://patchwork.freedesktop.org/patch/354612/
> > > > 
> > > > panel panel-novatek-nt35510.c also use regulator_set_voltage set right voltage,
> > > > so I do the same work.
> > > 
> > > Please look for the majority rather than the exceptions. Out of all
> > > panel drivers only two set the voltage directly.
> > > 
> > > > 
> > > > 2.     Kaanapali vddio regulator:
> > > > 
> > > > 		vreg_l12b_1p8: ldo12 {
> > > > 			regulator-name = "vreg_l12b_1p8";
> > > > 			regulator-min-microvolt = <1200000>;
> > > > 			regulator-max-microvolt = <1800000>;
> > > > 
> > > > 	Voltage is from 1.2~.1.8 V , So I can not set it 1.65~1.95 V from DT(1.95V is beyond the allowed range).
> > > > 	So I use regulator_set_voltage to set voltage, and regulator_set_voltage will choose the appropriate voltage.
> > > 
> > > DT has to list the voltage values that work for the devices on that
> > > particular platform. So, ldo12 should be listing 1.64 - 1.8 V.
> > get it. I check downstream DT,
> >   dosnstream DT:
> >    regulator-min-microvolt = <1800000>;
> >    regulator-max-microvolt = <1800000>;
> > 
> >   I test 1.8V works, So I will add 1.8V in next patch, do you think it is ok?
> 
> What does panel's datasheet say?

The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states 
VDDI=1.65V~1.95V.

So I should follow datasheet to set DT ldo12: 1.64 - 1.8V ?

if you think it is ture, I will fix it in next patch.

Thanks,
Yuanjie
 
> -- 
> With best wishes
> Dmitry

