Return-Path: <devicetree+bounces-214403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 680A1B49009
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 848843C6EEB
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 13:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F241630C34C;
	Mon,  8 Sep 2025 13:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZAYTtaB9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2FE30BBB3
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 13:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757339131; cv=none; b=gqHSyakBR7B+dV9MUvUxmJ49CrVENKNiw3+lhU8ZFNlQm3j7d2sl5xKVrE41GTGJCTRqh0U+RQqfMQkiKKAlN83AP72W5cAS6dNRbxv+mepLLeRZb4HqNGLpYp5bbej779K5NDZdTpcrcH10EoOhMMjGvU0PeUt0tMUbYE7ZNsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757339131; c=relaxed/simple;
	bh=hIc4P2K07XlvYmHQkfI0woteLpw/ikjw7KN9mYvCRiI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H/rtmSQ3e4giV4LD6XHTG1EYEer3rMSXuZCikkh7wcg1LUV5RzOkUv287E4IP/ba4Ybu0s3ZJcae3P8EMmn9PJveGkF7DeNlr6Q7ooZxKV+U3U6n02HGLIZ3C3/9aLOoJZip/zjorLKXoIgBH1PtW6STgux3s3o+fIc3BvG/els=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZAYTtaB9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588DiwOX005565
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 13:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=esqnV4GgtEbrquLS/zK5rW3W
	tt7Z1gs3taNjcse55BA=; b=ZAYTtaB9Y7SMyW3MEsYa9Jw4FcBylLtuUJgggnT1
	ggSBjKQSPM0bXafiZrmUzWnhTeDn/elXOFafxMai3AEAY/kDCKHX+MBKB8G3DTBX
	6L3JeQM9UJFDd8i9sHQc5H5BnSv/a35X3UP8bEwN63u8E9Ci+V12IaNx3mmrhCNv
	cM0IA7wrC+tWa/DrMDlLdScyBmtmsSlRQjLjNSMjc1GCmXrwxmM7uKbXVkuoVEbE
	CxU30u7LffSpJh+V7iKVEVU0tZWX79nGews7Bfu4qQnMA04l4zl+P3SfICmk14uE
	hv0GFp4UNlNkeuLjD5Ui40WyB+CPsZn+nTG1unjwpxj0jA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37s7ep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 13:45:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5f9673e56so64373411cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 06:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757339127; x=1757943927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=esqnV4GgtEbrquLS/zK5rW3Wtt7Z1gs3taNjcse55BA=;
        b=MKhyZajjTL4orhe3knQnwk1OVKcde4eFCCmpsfmeBfoukOmCH7GIAZ2HspMJ1E+Dtw
         yOsMFfRLGt1omgzIIP9st7goVJ6DFqlqqVTUK2p0KOgOOU96ykbqm/SLT/K45YHQAdiO
         2/ksnSn4lJonbei1ubGlK5vMegx3NIQxplTzFg6RfPP+PNl8QbWGstMkJIsbX6VyYHrw
         c7GCJiuNJi0R3DtSW2KCkUE0em9XVH3YIORA8/4sLhz5NS3czTqPhJWDWrnBAELcM+Ij
         cZ6AQNF0xrXa3rLhpSl7OSlKIwJNyOAj4lKF9dnGxZ9s/4ggUhwHoswD0kEAgACneWl8
         2v7A==
X-Forwarded-Encrypted: i=1; AJvYcCXtcTpJTcZyLzklVqD531iYZyd2Hb0SAFhFCeMXCcbyCfk3jCp9EfJww+OXN65k8kR19uDs4cOZmObb@vger.kernel.org
X-Gm-Message-State: AOJu0YwLR9K4ejVQtaUrK7y0C1gG03Hijlz8MZNl56LrgpX+bJ+HBYws
	V87BPOIob5WgPEpjibyUwxTTRfsjR8d3Lob7bK4qVH8Zvcvt958NsKdVs8vqRcsaZ5aU0MbLnsC
	hFsqfArU6Di3Ep3jSGO3CGgml0G7k9mPwaNPMg7cqEblfsbDkFfvDL3jim1t3dUe0
X-Gm-Gg: ASbGncvoVFVhSU0Kxfd7Yv0z6qilf6DPSBPU4DUYss4YpQrASZ8CZO22i97hFY1cUYe
	aYuda4slKX+AFBeoLP1T975c7hSf0Ri3Y6KP9bzVpC0IvdOLWD5p49WPmVZk/w/HD1+ePaOt5Br
	8VzyoOZjIQsjZ4nNkE2JMULXFNLHd99F4XKIVnYVmC5gt4+9uhNvKeh3V8pyy43i55Qezv9rdmi
	fEhImJfT2zyIhlhWFntct2it9W+oHjwCHkZn6qJaFkYJOU4oSjb47Da4P4IIgBLyMBoA/S0CUbX
	O6shEde5vhCvQ7zPs7bNh5LObDhARD/SplUm5grCc+Pi5hYo1OuVw4Az1ofFYZPcxrzJl/JolqW
	4GE88skJIL5vGxW/6EN3vGe+Qla2sHQzPS6bMUh9Ojn0jlU+AZQze
X-Received: by 2002:a05:622a:289:b0:4b5:e9bb:846e with SMTP id d75a77b69052e-4b5f83a51d3mr96781681cf.21.1757339126995;
        Mon, 08 Sep 2025 06:45:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6pGd+MdXBZbW1TIlirM87MxAFCUjEO+5IJdJhKbmEgdqD6cBDX43lwroMqHuWkohubp2b/Q==
X-Received: by 2002:a05:622a:289:b0:4b5:e9bb:846e with SMTP id d75a77b69052e-4b5f83a51d3mr96781021cf.21.1757339126299;
        Mon, 08 Sep 2025 06:45:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f5032aaesm32757861fa.37.2025.09.08.06.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:45:25 -0700 (PDT)
Date: Mon, 8 Sep 2025 16:45:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maud Spierings <maud_spierings@hotmail.com>
Cc: neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        airlied@gmail.com, andersson@kernel.org, andrzej.hajda@intel.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com,
        jonas@kwiboo.se, kishon@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        rfoss@kernel.org, robh@kernel.org, simona@ffwll.ch,
        tzimmermann@suse.de, vkoul@kernel.org
Subject: Re: [PATCH v3 2/5] drm/bridge: simple: add Realtek RTD2171
 DP-to-HDMI bridge
Message-ID: <u3qwrzwcr4knq7ueinws3siz2frugbkj75r5zp6i7qmkhnyauf@lrmiqhtbgzfj>
References: <20250908-topic-x1e80100-hdmi-v3-2-c53b0f2bc2fb@linaro.org>
 <AM7P189MB100924E3244B953F0EA6D462E30CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM7P189MB100924E3244B953F0EA6D462E30CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
X-Proofpoint-ORIG-GUID: IzamHMgwnxUKo5zYXAArW2Nu-HfurIyc
X-Proofpoint-GUID: IzamHMgwnxUKo5zYXAArW2Nu-HfurIyc
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68beddf8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=XwVbCjRl897ke_8r9AsA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX84QoL1sFJKjY
 kjoyIJDRYma3GsiPd44O+kskyONAt4zxfVje+VSkuzlBGJoPAfbPPjk+HGG7XRrLUT9bYqjkbt3
 44ErozStNSYvk2l4Z+ByP6kcjkK3pOQuoJHcwqkUHZr0xt+HDxPD8nwzaGneM21iiI/4kiEWL4T
 MukMZwcg1mLPojPb4D18G4xX/zNMTTvQVE4feRGBMsjNeTqb7hbxTqSfo8xeZAYHXUbshEcyfVQ
 Sb8ZULdsadUfi4dgcI1dF2Ir3qKOeXPfLz3U34GRcJFWLdO/099mamOIcXEgd193dQCZ5C2ON+A
 Tzo5cZe7WXLF9yAusv5Dw5Jw2wNJ1mPWDOUOTheENY1K5ClMyGuEy4wza1rvqh78b4si+VZ5Kw4
 6fA8a22F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_04,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

On Mon, Sep 08, 2025 at 03:35:23PM +0200, Maud Spierings wrote:
> Hello Neil,
> 
> > Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> > index 1f16d568bcc4e0fb56c763244389e6fecbcb2231..e4d0bc2200f8632bcc883102c89c270a17c68d0c 100644
> > --- a/drivers/gpu/drm/bridge/simple-bridge.c
> > +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> > @@ -266,6 +266,11 @@ static const struct of_device_id simple_bridge_match[] = {
> >  		.data = &(const struct simple_bridge_info) {
> >  			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> >  		},
> > +	}, {
> > +		.compatible = "realtek,rtd2171",
> > +		.data = &(const struct simple_bridge_info) {
> > +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
> > +		},
> >  	}, {
> >  		.compatible = "ti,opa362",
> >  		.data = &(const struct simple_bridge_info) {
> > 
> > -- 
> > 2.34.1
> 
> I would like to ask again if it may not be a better idea to introduce a
> fallback compatible, once this patchseries lands I will be adding the

I'd say, that's not a good idea. We usually don't have fully datasheets
for those bridges, so we can't be sure that there are no strapping pins
/ other GPIO controls.

> parade,ps185hdm. I don't know how many other variants there are that are
> just simple dp->hdmi bridges that don't require anything other than the
> connector type set to HDMIA. The Thinkbook 16 and zenbook a14 both have HDMI
> connectors, likely with simple bridges too.
> 
> Kind regards,
> Maud

-- 
With best wishes
Dmitry

