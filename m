Return-Path: <devicetree+bounces-232433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDFFC17F58
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 02:58:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8E6404E3890
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 047E52E03E0;
	Wed, 29 Oct 2025 01:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gk1piDNa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bp0EdDcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA6A2D7392
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761703134; cv=none; b=tpPBzlFLMuBMHwijPik1JUAx0SHDeNNHh1TRMig09ONkdcF2Zpidz+mA3o2WbwCJ1FdhO8DnRU59MdYE/1+N5LG82b3D3MpqAG7N8vsYlMG/sBHu2gugACwS9fzVAY/437ITpFMknTpBQsyADID0NsRjP/6qLlhY+I35TgzEMSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761703134; c=relaxed/simple;
	bh=gEPztik0DarWvmLzMwy+9sVo0AjJ4WmJObG/Q41ZORY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RbdCXJ4A/xKmcP1KeejVSNR7RueC3ACFZ74DFdsUE8EPCy2/LRTd7FAzN1ZyDd5n+vuNkNjeXgCR7XNb89sPrhFhqW76eqBiFqF5HVUEi0dUvYf7eJPy+ZsLnXg2HrqRJGHDkyTTlJC0If8PXy8s+mK62J9Ybe+PL+ad1ta+iJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gk1piDNa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bp0EdDcb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJmDuE2540860
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:58:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9IavgnA3wJTsxViY9YsmCRsi
	9l8lOQx14IrwVBYaXOw=; b=gk1piDNaqjcYc7khLjvcbaS3hQHEM6gNLW0sgkjQ
	pasEx8zmvJnuk6HqMuOaPVxkCCwvLT3nAHjchhn6d7OeZFmC+4c/nzPUZH/V//PY
	3s0R5jL/IFziOEw/YsxMufZ53+fGOzFfLLrhDlB73vXfW+sKa7+JGCoN6+mvB3tj
	SorUxQqWLkAng9r1RpqT1hhUHgghoDIsKO+4dLnHpaze3FkRzYjswAPRH700LHFv
	uNgotEe2RW/iBh/zWt2yKNJYhNoYJwtE8PFu4wl12UzlDfwdGX1fKuvGmheu0aiy
	4loV4QLCExmB0qnma6zbGv2NqFU+ZD3QCId4xa0dC5lQpg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1gswe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:58:52 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-818bf399f8aso211216986d6.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 18:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761703131; x=1762307931; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9IavgnA3wJTsxViY9YsmCRsi9l8lOQx14IrwVBYaXOw=;
        b=bp0EdDcbe863seAhEtHS6Zqcpuf6Y+moOGsIDnXoVyF51XObFg/zEfVflszwFix86F
         384JsG0JjsK9BN+DPHD0bzYXtCZ6cKme1eRajtwZ0fOBLCyEwcSqGw1Vahd7jTvjBG3r
         q9eJxjqn93PbC4KksWFq3QaOcLWFJEwM+zumlY9jNlNs+G3k5lPpVhukXHyWzmHqMfJV
         tpJsM9YKKE/qcGl9+gxlffHHdYkitdeQmEAlASFwYlB+nFF71geBvde8Q03oB0JrzLoY
         JMNYsBJ5dGOGGHYKUlPcrfJ6Xy+vKUX3NK/IdjsVGGsAAHFHqwt48vOyB3E9pToCNoPB
         R3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761703131; x=1762307931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9IavgnA3wJTsxViY9YsmCRsi9l8lOQx14IrwVBYaXOw=;
        b=cwEn/FKfLuNOCc6NUKpsyq1r1LlVtfLGYqquLQPgLi6LL90LZ9r3HgfHzgUYjlRi68
         GaOROtlUjkbAC368BRwSboVFMD2xoCmwkJCb+A8rKNeTL56jvgCjuRxWfOLwBcNqcKOn
         +HwtIEu/rSIcpZgP2qLT2vHpt6g8ZrUC80tZ1NSc6XTEdgs6jGgXLC3aJoawbsnSbhst
         jHeNStoGQ4z3dEFGEO+Cfoksv8ZgTV6OGIKSa6ES9hWzxi3jnoWoiFv+Xf1hr1s7/fIW
         GuFkFTBSW8uXNGRk742IfiXr+GxjFKma5FMtXqdGAiqkYnT1BlVhkL6vKfs5+440A8xl
         KhEA==
X-Forwarded-Encrypted: i=1; AJvYcCX0tAm1p0UoXib2Nab382Qp5GiA1VTMldzDazyqiEvUn0D+yC8Xq6e/hkIRmnwQmYmgCR7kUOtuG1rl@vger.kernel.org
X-Gm-Message-State: AOJu0YwkckK28TKbUlK219S7hxpOkJ4ySeBnTcTSL2wb2KyJXM19dGZN
	s/KXngzt8OaNNlPba4W5GyG4/pFJQQ2NcjSksGVfpfrrOfd2Y7Ky2Gce4/u/VjmFwzRfW9N9+Lw
	YnSKjyRznkJI4rncNARNGiWYLoyucMYnZt6cYXrDY2Pd0Qronh2Odl/fZdfCGm1YV
X-Gm-Gg: ASbGnctK5wGWoXotGYSAw4Qlp5MWTT+DKf5yWS7AphQ05V8DWsod7RXK4jmGcMs0p2R
	SkRh4cKzwvrfXIlFQOSezpIJR6Zw5xof2qKyYSSyOZo6cmwHJWc8PzuTHbpL6RqKEoas9XILUnR
	sqL9tkCObIUDy2HbBhYafiT6XBTmAagv4bW3ayql7bPyzf9Sl1BYltsebfwb6m6BVGZtIVuLlbn
	M+CljjQVUitgRFK73bS6Okb6V2XfDv8wFqe+pE1g12/YWhcDxFQsq7kKQf1yC3WYuPAfQms/Ca0
	nXXVXPgSdY20c32cIkjqJpFEI6BW7fYIkoktLUpRvocnghwvy1b51SINufMi4+2VyFQOMsHNfgy
	PKOZoyQgCh3VJCYT1IwaiGqVbICbREosO1RT6YMEQnykNVSWcBV2+fOyhjeYCQ+Sy
X-Received: by 2002:a05:6214:242f:b0:87d:f2e9:488 with SMTP id 6a1803df08f44-88009acdd94mr15033656d6.11.1761703131485;
        Tue, 28 Oct 2025 18:58:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDHmfG0LUjzp2Ek/MezF+lDC26fFhbmOLWFp413US458OqwG2FWmdGE+xxaaQJ07XpmM3Yzg==
X-Received: by 2002:a05:6214:242f:b0:87d:f2e9:488 with SMTP id 6a1803df08f44-88009acdd94mr15033436d6.11.1761703131057;
        Tue, 28 Oct 2025 18:58:51 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc4944a84sm91522446d6.36.2025.10.28.18.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 18:58:50 -0700 (PDT)
Date: Wed, 29 Oct 2025 09:58:39 +0800
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
Message-ID: <aQF0zzUpLeUu4lrC@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
 <zxofh6bwee3vjjlntlfqy7yg2iu2mipjvl7s5bcm6gbh233cjq@nuicjojawd2d>
 <aPsWEhM7i+gDjXE0@yuanjiey.ap.qualcomm.com>
 <4bnvh2ydtrmejknzpsxoalxoyjpq5g5cjbrico5ezbek24r52s@u5zy6ekh6lps>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4bnvh2ydtrmejknzpsxoalxoyjpq5g5cjbrico5ezbek24r52s@u5zy6ekh6lps>
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=690174dc cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8
 a=RHm5ZmmhJtTlhXRmaf0A:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: i-kje3NwfLy3TNrUta-IAGKVPMiGm4R5
X-Proofpoint-ORIG-GUID: i-kje3NwfLy3TNrUta-IAGKVPMiGm4R5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDAxMyBTYWx0ZWRfX7AcixItZTPuh
 iUlHVs+wx1tNYQ1S0Xb7619vaQ5Tia//k+d0jI21ow3/nPeF3Em6BWRPNVrEJ5LS/FEGAAKzgbt
 XbkNzxZYWUUKMLLThgwEE0RviRMHZ0u95kfer5M+3M8uwLwCzxDzhLLh2wTT783k4cSdTQMjyFU
 5/y9Hbnbf94rzM9nxOyHWNXu4IW9GBEDxlm0VXyJz8Sff+NTShl8uiQ4EfvB+ZTuQ7tRilV3/ac
 hDwwUC5/2l9oLYceBv5wvl+NH6mGRjEYjsd3gPgXi/3KroNILNoaRwglp3Jn9LCLQnRYd2pxQDc
 XG0mpV1kU9mIkZKaxODvFhsirWwwhfwvBdHjnrvjJZfDxQbNBW3rcuKIncewCxqeaTyReGljssm
 5/csuQ32SCV3wAaa8OhKKCPe3zsAqw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290013

On Mon, Oct 27, 2025 at 02:22:04PM +0200, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 02:00:50PM +0800, yuanjiey wrote:
> > On Thu, Oct 23, 2025 at 03:14:38PM +0300, Dmitry Baryshkov wrote:
> > > On Thu, Oct 23, 2025 at 04:06:04PM +0800, yuanjie yang wrote:
> > > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > 
> > > > The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> > > > VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> > > > 
> > > > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > > > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > > ---
> > > >  drivers/gpu/drm/panel/panel-novatek-nt37801.c | 5 +++++
> > > >  1 file changed, 5 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37801.c b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > > index d6a37d7e0cc6..7eda16e0c1f9 100644
> > > > --- a/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > > +++ b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > > > @@ -267,6 +267,11 @@ static int novatek_nt37801_probe(struct mipi_dsi_device *dsi)
> > > >  	if (ret < 0)
> > > >  		return ret;
> > > >  
> > > > +	ret = regulator_set_voltage(ctx->supplies[0].consumer,
> > > > +				    1650000, 1950000);
> > > 
> > > This should be done in the DT. Limit the voltage per the user.
> > Two reason:
> > 1.
> > I see https://patchwork.freedesktop.org/patch/354612/
> > 
> > panel panel-novatek-nt35510.c also use regulator_set_voltage set right voltage,
> > so I do the same work.
> 
> Please look for the majority rather than the exceptions. Out of all
> panel drivers only two set the voltage directly.
> 
> > 
> > 2.     Kaanapali vddio regulator:
> > 
> > 		vreg_l12b_1p8: ldo12 {
> > 			regulator-name = "vreg_l12b_1p8";
> > 			regulator-min-microvolt = <1200000>;
> > 			regulator-max-microvolt = <1800000>;
> > 
> > 	Voltage is from 1.2~.1.8 V , So I can not set it 1.65~1.95 V from DT(1.95V is beyond the allowed range).
> > 	So I use regulator_set_voltage to set voltage, and regulator_set_voltage will choose the appropriate voltage.
> 
> DT has to list the voltage values that work for the devices on that
> particular platform. So, ldo12 should be listing 1.64 - 1.8 V.
get it. I check downstream DT,
  dosnstream DT:
   regulator-min-microvolt = <1800000>;
   regulator-max-microvolt = <1800000>;

  I test 1.8V works, So I will add 1.8V in next patch, do you think it is ok?

Thanks,
Yuanjie
 
> > 
> > 
> > Thanks,
> > Yuanjie
> > 
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > >  	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> > > >  	if (IS_ERR(ctx->reset_gpio))
> > > >  		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> > > > -- 
> > > > 2.34.1
> > > > 
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> 
> -- 
> With best wishes
> Dmitry

