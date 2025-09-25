Return-Path: <devicetree+bounces-221673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB277BA1BC9
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 00:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FB89384DDE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040C431E8B5;
	Thu, 25 Sep 2025 22:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ru+UCULM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B19C25CC4D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837863; cv=none; b=tzIp0ig567t2p0nz+3gQLbImIQTVDYW4i8STQzEuXdGRHo3puKarqUsFuvUKQIq+qaEfIeU9t+0Fl7+FFyF0LXnykaRfhs/q2prv4wU4JlWIEasRZsk2Yjb+ScaEsZMl3e5+ZPon1NbR9KPZfsHwyVaALrl7Tott/9r3h4rEoro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837863; c=relaxed/simple;
	bh=thd46MhkhP9ihbD6HfPrmrnhApd8VH+s/ug/zP6gdPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u7BlPNkjCzsrXOim2ULZtKjT0k2jLVt6lwrTqViNnkT6rcmnxGrNp7n2zpbdGLuEnh4y9d4M3aeG2EuWViNwB9Vx8hFFTBwelshVjFvua+ntslKMcHsL5nqz7bbllTUDYNMXCom3ekdyqe6y8NgEBWdsfkUB56Cmet276HFIRRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ru+UCULM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPqV4014483
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:04:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j9jhbfMWZLDlbLvHbgzYA6UULoA9b5J9ED0wfYv3EO0=; b=Ru+UCULM1uxxF5QY
	PDVRfUOSeKE72n7qUtoocVn/0tyOHj9fRxaGgSbk4rZ86lGWt9+5WJV3rXB/XAbk
	Nk6bozdWhGvHx0Alt95icca7C4ODdW6591lIlQwg4zah3Y8PkwsS+REDlYL1zBAe
	2gOrehMmLyv7U38Wfbm9R8LCx5/ND/Y6XkT4RJeQqwV7AbA722xoHEOmcLu2753F
	Nol86Xr6VgkCSY8g6wRCC4YiL5ew8OzzVnoTl3tmbcS5yNVcDpndvJyF8cgGJ3cU
	xwkQtuv0JPsB82pmqxoLoU1xI3mT081BHe1N+3n3T3xolTJ+cVNW7OaU1LKMbL37
	xxt8PA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rghem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:04:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-84a63a0c496so425723485a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:04:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837859; x=1759442659;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j9jhbfMWZLDlbLvHbgzYA6UULoA9b5J9ED0wfYv3EO0=;
        b=vOCjvwG3zHNqeobGtBbSNsxawWn5/GIfxAWJORB/Mum2BCnnSxx34FZDZ1YH3A/g2f
         hRnmLa0rFL1PRHvP+pTIbNPO0mb9xwcB4Ub/QqH+n/r2Y7qKefgFcTwdBOlO+MF0sAHQ
         T8px+Q35CuskI+gklWmMtkLaigF/pSX5Z9SdyQREqQ8T+BvZIsBiNesURR05UZQkUjji
         nvVwnrxZwIyeRN6+H5e4kx78NgUuaaI9WOOqhcAzmSwS08R0u0rJ8Bb0avkEkOCn7ntt
         K7iB6VHDO7HjxsTPcbpUmNS+n/o1PG7aiwR8xIPu6MRjFU2yHj5CnZdxcj5uuS7gNeBy
         6Q/w==
X-Forwarded-Encrypted: i=1; AJvYcCUyQkNMjv6CtqHcXqccgrbMHLBKJryupX1o2NlYzjeTT4rAy2p3GFNdDFeJSL6RxCkNqIXLQ7wVMkIj@vger.kernel.org
X-Gm-Message-State: AOJu0YwyS1DGsh/Wt0HJLWGHWZJi9DO7NTXcjjqPPMucHVR1uBavIy4j
	fONqzrv5pKnxZjAnGsItZTcl/REJC10GNxllSrM+rYG6cM2qPv6cnWTpWbk/0m8fkQHzFFyOCQs
	34WI+ItdG4C0pHg84lcH/nkKfQEhKcZ2K5ujyatPYqBNGCWAvUPmQUkzOQexG+6/t
X-Gm-Gg: ASbGnctQOB5mIYysSIue7TClKIYMQL3vTJEPyKJJFRTRrrKE2OQcc/1LKx18COKDTUE
	+rzUrB/pwe5yRyJgWyge95D1WY9pjWgKwRCOn0F5n8OecLU3vnwUNT9Kz1UsMkcxdvpO0OhobbE
	goAAwFqdniq2BJ6XORHMJK26E8RvJqRqMSByrNBINyZQQX52HrHEhEtdo+wC14SSmlpXt8IBMew
	U/lqcEyngmb4lIJCt7DxsxXptxnqlpHfj4fwYgcJWDt5GVyaG5YizO3U4sgbPqWaBk4QVL0Wbh9
	niWBAdIcZIZIAfXwwt2FeBlbV1Ll2nww5CGZ4KevbqV1NtpzLXQfabiP4i6GiVb6DfMEb/ohwf2
	DQbL3mN4dWE+m3pB9/I5HM0UeA9ztEhTgsY9Uj3uTD0TgrB5ZaKVG
X-Received: by 2002:a05:620a:4890:b0:84a:d990:a6d8 with SMTP id af79cd13be357-85aea5ff6a0mr735532185a.49.1758837859156;
        Thu, 25 Sep 2025 15:04:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxdA6dS4wu8OVd+3ocLVo0gkXNYMpAtVMslmaMzvNNUlBIIxaIcvu9v3eIlSDmgpeHrfAggw==
X-Received: by 2002:a05:620a:4890:b0:84a:d990:a6d8 with SMTP id af79cd13be357-85aea5ff6a0mr735525385a.49.1758837858668;
        Thu, 25 Sep 2025 15:04:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb528984csm8078481fa.30.2025.09.25.15.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 15:04:16 -0700 (PDT)
Date: Fri, 26 Sep 2025 01:04:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jun Nie <jun.nie@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/3] drm/mipi-dsi: Add flag to support dual-panel
 configurations
Message-ID: <vqiizai33y53o3h6ovhilcco5yyssfqwqrqnccskqoye23bf2o@rtob2tooaqr3>
References: <20250924-dsi-dual-panel-upstream-v3-0-6927284f1098@linaro.org>
 <20250924-dsi-dual-panel-upstream-v3-2-6927284f1098@linaro.org>
 <CAO9ioeW2AHDM3KSRu-WOvy+1De9tqfhrCNozw5Wkh=CJDHxFYg@mail.gmail.com>
 <CABymUCP2m-Z1spkAydryNWfysXTVma_H=7w=0GYL6+aH5KW9QA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CABymUCP2m-Z1spkAydryNWfysXTVma_H=7w=0GYL6+aH5KW9QA@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d5bc64 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=TPbfgU9MJehzMSnRnG4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: zTgqyC0bfGVKewfGIutldPJQxcqBcRsU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX3BNQsc7yHquw
 MlOf56aFBhtCen+B95tYLeG9W+pPKxl2edjqhmDWfzIqcitxDG6JzQm9DkEuySliAkrbhHtQ2cH
 8y4pXBJmiCm015dFjiyPDByVn+gxaY0fDYCEH500N7+v7iwKxMREHNujkoFWcWsJBsFoD17pKKX
 DPfPDg3GlOjI+VPUT33gcX4rthAaHuyYY7dLy8cxqmPr89Wh+lRBjMQ7VG5FQb1g4ydbg30fnn6
 LCK429rhkCmltPMeXukoNIqFOWs38iJ4Ul2/z8qRQ6DLwQC1ANi08Apky8XT6nlrVlR9v29DEE/
 6Zhu+PFli8E/wxmJ0NY88T/S8QkztiJLwyOBdDM0xXB1u7dALQmX0h2yf+n/EN/jGVsOV42hjeY
 j+bILAa0IwyOvtHmm+tCamZC2M3MTA==
X-Proofpoint-GUID: zTgqyC0bfGVKewfGIutldPJQxcqBcRsU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 03:10:35PM +0800, Jun Nie wrote:
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年9月25日周四 02:02写道：
> >
> > On Wed, 24 Sept 2025 at 18:08, Jun Nie <jun.nie@linaro.org> wrote:
> > >
> > > Some devices treat two independent physical DSI panels as a single
> > > logical panel from the CRTC's perspective. However, two separate DSI
> > > hosts are still required to drive the panels individually.
> > >
> > > Introduce a `dual_panel` flag to the `mipi_dsi_device` struct. This
> > > allows a panel driver to inform the DSI host that it is part of a
> > > dual-panel setup, enabling the host to coordinate both physical
> > > displays as one.
> >
> > How is it being set?
> 
> This is set by panel driver in probe(). You mean this should be documented
> here, right?

Yes.

> 
> > >
> > > Signed-off-by: Jun Nie <jun.nie@linaro.org>
> > > ---
> > >  include/drm/drm_mipi_dsi.h | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
> > > index 5a85ba01f402a3866b70828391bb417bb8dd5956..0faff285d9ffeb19e4523cdc7bf21c1ec20e6eff 100644
> > > --- a/include/drm/drm_mipi_dsi.h
> > > +++ b/include/drm/drm_mipi_dsi.h
> > > @@ -170,6 +170,7 @@ struct mipi_dsi_device_info {
> > >   * @host: DSI host for this peripheral
> > >   * @dev: driver model device node for this peripheral
> > >   * @attached: the DSI device has been successfully attached
> > > + * @dual_panel: the DSI device is one instance of dual panel
> > >   * @name: DSI peripheral chip type
> > >   * @channel: virtual channel assigned to the peripheral
> > >   * @format: pixel format for video mode
> > > @@ -188,6 +189,7 @@ struct mipi_dsi_device {
> > >         struct mipi_dsi_host *host;
> > >         struct device dev;
> > >         bool attached;
> > > +       bool dual_panel;
> > >
> > >         char name[DSI_DEV_NAME_SIZE];
> > >         unsigned int channel;
> > >
> > > --
> > > 2.34.1
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

