Return-Path: <devicetree+bounces-230613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE6EC046FB
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:01:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BC58D4E147D
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 06:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DDBD20458A;
	Fri, 24 Oct 2025 06:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m6Z4oR+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B56FCA5E
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761285666; cv=none; b=d9DAv30YcDn+qqOAZFvUT+N9297+5Da89F47wf44thmi1DIPr7nT1eVG0lX1N/vyPEe0ShEiLgnX7BiVknGtlC6Io4FMdoMVRcHJe16dybCiNqs8ohm7VkeIaOVy1NPPnagOLO/7sOR2I4FxA0YbkzDoVHdVwi5V8HjSzL19Gq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761285666; c=relaxed/simple;
	bh=tnnwewdZGrc/st9wVnuVrn7shye+Ir3tuaKMS7qos+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dyBMRhY9YsAMSOAuOzZz3mEpvm61JMdL/HofqcuJCeC1GTRIYmlgJPacGurk9T+vy+oMAWlhneSOFSLqy1kdKquh252n1bmyPjTTj7mRZQNd0BZt5R9sisnMjzfTbkfjBV92dyDw6Z84rklBMVmiwOAXNAUHYKRCgMcAt69+69U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m6Z4oR+8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FgmY003894
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:01:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JljS+79BkkayuCyE/UdcZ4I9
	cPPqvjjS+0ZvczbI6Tc=; b=m6Z4oR+8QNq+CUaHPQE2B6M926yCzAT5l3NMhh70
	I6QLqJBv0LJUmpq5DPaWWOAp+TPo1W7yId5+/aINIMEw+fsRA/7JomF0Oq8r0q0N
	AbmUghygkhsrndWQsXX0YgD7BcmhS0oUqQEH9MfDJJQWDOkByngWC3HKPOyawZI5
	laIKe4Tdrlzx7SBfVDPDRcCipDN0Wl+3UPlx1hccFiHTElD2oaFovo+HrnLkJZS6
	vrWGyvAxnNtXo7PyM7w9UELHxo72D3NnI/IhVBvHUrT9SiArdRC9QCwTSqpCq1s5
	8fQ90Z8B2T/OWnI5STfi3lwFNU7FJ4xOtyDqxlBvRUVm1g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2geaxt2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:01:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-86df46fa013so426002485a.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 23:01:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761285662; x=1761890462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JljS+79BkkayuCyE/UdcZ4I9cPPqvjjS+0ZvczbI6Tc=;
        b=h83aKMKa0Rb3Lu6A9xmDxJUy5gElz06YTAVsrwv4OgdGXq6XobU+R89dahmDstKljf
         4r5b/YvDK5UG+s2CVqgM9BOImCUmodxElR6ZwbASjgsRx9Z5rxhP4DJuF1Ge2gQI4nIr
         M6qY+1+h5MJXugFkS3lwn+IZViNDAQ7Q50Sk7dZu+B7tFxyHGJ9nIj93Q3eepunOtjYI
         qjSNOyS0DrfR3w5efw5JBFAuV4EUguXbV9eT4LaZvy8adJMGosWQMlVN4I3kBt8yv5Hi
         BofCBGoEkfB+ROzisgBeNjDIW+JUo5K1a0A428/mMunZv7lgnSsKxG1OWHpsy+nCO+VP
         7H4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVtunGA3O82BJyxRRj+pX9dp/XSgXtLB0/H2WKkDvDHK/uGeNz6lYsEHLBxqeddi5l0dnctmES9l0Xn@vger.kernel.org
X-Gm-Message-State: AOJu0YzFliep0JRIjUCVPSlZDQzWITxbzz20CZyGYzOQzFWb99C4mRAF
	AapeTdH+ZdTdUl03XjhInPz9wFe40rfshosmcvhU+UqB8ePxuKygmlVP5tPB9xRuXc2W5yFD3gQ
	vdbYdHZMYL0pf6oheVhMpefeMQGj66OWxl+NG1ZVDlH942sjCvfcWzpTeCnsM2OGu
X-Gm-Gg: ASbGncuz5hQw+Xc0Ap1vZ/b1GJSCqWy4J+Zz0vISa1ffwe3HGjM+mZsF8Gz5xzaQtvF
	MsCGc8GYX9GxOhUGOpjgo/GPEg2A+hFs12UWF0rgzu80DPu1WjoihSx+Sy7r2olJznEDSDo9YBv
	MxEA1wDY/aSxHsMRHgUIDEVMqjxBjCwDTKb7/GJYjQcrjTlBUhuUExGAiAMlcA/ivZMKGaS/RuC
	QEnkWkN18Z7poXI1dJKpwdrhTtUNbtKTzbNTW+44kotG0dCpQ1gl2YjOrkQTs+mpW/yTTgQXN4d
	9FEiRBVF604YHjUyBFJ/JhLT8qUa5vSwWAIi47bja8gHBeYV83BMEjHqKnCGR5a7SFIyjJQA+Qv
	MFUbs0Flma0HJQVuc02LgnXfxxVoSKlKtqniJgikFcDA3cyXdkM2febSNzHn1
X-Received: by 2002:a05:620a:45a3:b0:891:f880:dec6 with SMTP id af79cd13be357-89c0fece440mr693963985a.33.1761285662349;
        Thu, 23 Oct 2025 23:01:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHduJaSPRzsh9CpSDx/crrVPNRb7TaSEXxg5lKfzwZ0BKGlQdnu0kRcGVeK/eZaccdwzHwgHQ==
X-Received: by 2002:a05:620a:45a3:b0:891:f880:dec6 with SMTP id af79cd13be357-89c0fece440mr693957485a.33.1761285661726;
        Thu, 23 Oct 2025 23:01:01 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89c11698b74sm319154485a.30.2025.10.23.23.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 23:01:01 -0700 (PDT)
Date: Fri, 24 Oct 2025 14:00:50 +0800
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
Message-ID: <aPsWEhM7i+gDjXE0@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
 <zxofh6bwee3vjjlntlfqy7yg2iu2mipjvl7s5bcm6gbh233cjq@nuicjojawd2d>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <zxofh6bwee3vjjlntlfqy7yg2iu2mipjvl7s5bcm6gbh233cjq@nuicjojawd2d>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX+sT6uuxksetz
 RxuuVWMTPsceNb5YJ0qfiXC0Nepvs7Xb2PhrLz3/RdeLLfUVPqAteL8vl8WyFZI7Yd3Dkgty8cw
 phWqhdlvD75qiDCHI+aMJBg6TrH1nH+SL1G1FfbXB7jIU6NNiMO0dOVsDyeSBK68yqcYiJzkLze
 fUo74qfmaCVfAqJQg9e0KZWcI2HBk57RYrjYLtr6GsriA4isLu6JbiMknb9odOOEhL8cmNyVEaU
 cypSIjEpFMVK/xV/agKW0IWYgbTlaKmvFUNTvB3T5J/A+WIU2787xbp1+qzYyaJikCrRxZ1cZAS
 qSHzIBDekXVsQlYA/ptBffl+Twq8bw2Qd3fA2doiYADG/sm+x1Q6ZFcLEIG/ExlCx7Pxpmo3XmY
 nSrIrFhfs7UMlT2NqWp0u4B6Pt3hOA==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68fb161f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=-aLJWpWAS0NDeqwcDiMA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: 5QSbkP4LGXo4EwLJBDte_SiLBKm1HgsP
X-Proofpoint-ORIG-GUID: 5QSbkP4LGXo4EwLJBDte_SiLBKm1HgsP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On Thu, Oct 23, 2025 at 03:14:38PM +0300, Dmitry Baryshkov wrote:
> On Thu, Oct 23, 2025 at 04:06:04PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> > VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/panel/panel-novatek-nt37801.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37801.c b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > index d6a37d7e0cc6..7eda16e0c1f9 100644
> > --- a/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > +++ b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> > @@ -267,6 +267,11 @@ static int novatek_nt37801_probe(struct mipi_dsi_device *dsi)
> >  	if (ret < 0)
> >  		return ret;
> >  
> > +	ret = regulator_set_voltage(ctx->supplies[0].consumer,
> > +				    1650000, 1950000);
> 
> This should be done in the DT. Limit the voltage per the user.
Two reason:
1.
I see https://patchwork.freedesktop.org/patch/354612/

panel panel-novatek-nt35510.c also use regulator_set_voltage set right voltage,
so I do the same work.

2.     Kaanapali vddio regulator:

		vreg_l12b_1p8: ldo12 {
			regulator-name = "vreg_l12b_1p8";
			regulator-min-microvolt = <1200000>;
			regulator-max-microvolt = <1800000>;

	Voltage is from 1.2~.1.8 V , So I can not set it 1.65~1.95 V from DT(1.95V is beyond the allowed range).
	So I use regulator_set_voltage to set voltage, and regulator_set_voltage will choose the appropriate voltage.


Thanks,
Yuanjie

> > +	if (ret < 0)
> > +		return ret;
> > +
> >  	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> >  	if (IS_ERR(ctx->reset_gpio))
> >  		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

