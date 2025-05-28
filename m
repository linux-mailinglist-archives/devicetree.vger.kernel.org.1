Return-Path: <devicetree+bounces-181314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF63AC6DA0
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 18:13:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D0361C006F9
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 16:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12DE028C864;
	Wed, 28 May 2025 16:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UwxdCW0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDD828C845
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748448802; cv=none; b=WVlF4zXUR5+FcpddWzXKqqbVn4LpLzMpTfllce0W0nM4rMDGmTIxU41HhogWqkaVgjUQqsQo9GdFW2OhZe7VAgJFP+F4P31HCnziICWrOJvSj6Hh8oPvzHWjE/fCmwJR+9x7++5KpDyPPr4elNMeyr5j5qBQi+idIssh7BxwIog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748448802; c=relaxed/simple;
	bh=gwVBGi4hIbsXrhbuodfR4lQNHnOhvVdJ0YA7YukPmJo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VtovtH9GZ4Sa2SERe7vlCJRg3SRZh7H9+4VOei0+0Y7vUg+EPJlLekltGhJaRfIcz3Nmqchho32Wbrh1UEkQRW+VXEXauxGRd7cj8ZlRWa8B1BFUL/69X3N4E/OE/WAA5dtUXD9bY8yB+nIHFVt/PXvGHCoEKAs2ljd7RRrvvX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UwxdCW0X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SBU1lv024736
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:13:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9+Mg2L1QBDl92rjfoNAlCPsR
	ORQMv0jh6Aoaq4vKOlQ=; b=UwxdCW0XgvFtVccaGS3wRZ6akRXte2qSsXmoqoS3
	CltOgng+fdZ+KZBEyB+3rwrxvI1kx9hWfzVucFNG0jG+1P/3/YfAgBNOnsCuwPAn
	NoircCYqIk/Ho9mJ4V0Bnjb1lJO8uKPUjGEc/a5LA6G34uJOEzzPbjIYN0bS05EH
	acwSqBHb9nbin9wykrzk8bQWysYBmn77CnJlsHDrhZsFPKs2i1GSu+CWt1EzV67X
	gzSBuCrpzSgH2GSGfNirvmfCSqVWv3b7n6XhfRM9IfU4Nb7zkXTAnKyswsnjTLSB
	1hwh1gzQeW1oWJaL9oVceakOvOdG/hZCIfNDITan6IAs6w==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjtvfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 16:13:18 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-406681ae65dso293796b6e.3
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 09:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748448797; x=1749053597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+Mg2L1QBDl92rjfoNAlCPsRORQMv0jh6Aoaq4vKOlQ=;
        b=ONdsw4zBFJVbwgtXEbZULySOGQfE764PSKNTk9MWNq0Hqfs8YU5rX7nmKCCcN8ht9Q
         JCZlr9ZjP3ZOXDw19x3aljoWohA/Xx2ZHG+tfLDVbscZ3ipDBQ9znrALbSDuUAGHcRip
         xSsiVBTttFZnubIO4O+H7I+bGE2C8ssjlbFJt32urnrraDYZrzWZcV6Wjy1UTCzlOUqf
         TCHXDr27pJw+yEdi+jAiTmxF5b3WxPha3qBy7INb89AFrb3pMZBwfkPMPXZnnUNxJRNK
         R6XOzrZmuCithkIPats9txkfjTuIcfeYI34kkgRkdJDyRcsywokuq0IAAs6XvZYJtL7K
         40aA==
X-Forwarded-Encrypted: i=1; AJvYcCVAXdCZ565MIQJGF8iQrb2jClkRAcoPqa/U4InXv4maMyKcbLTRKCVyXrTj4gtN+AeUchsXmZGWZMqH@vger.kernel.org
X-Gm-Message-State: AOJu0YzqmB4u/ENSn/pJrVZ4i6+g6/KZPNTjbDIYN9JC3LdwaiFZcqJu
	1aQxByoH2B8IDBgRDhF/XcEuU05TV0EgaMFgujuDhCPwMNM11Of+oOFwqnO25ZnWksmyitvtSMp
	L4Y6C6v6vfBw/672BnWOcP6JXTPzYJKZKg6BOZ2bJeib/wnr4rkpJse0yUQ62eeUY
X-Gm-Gg: ASbGncuOotNlzO0hHePYsQE54s0amnb2cFCqSNDYx+rTWEgGVulVnNZFwkYovDMGWmG
	F2G03S1jfhFoaCF4FeA8xIgS3/06+ZMbkJhkl8ghmJRwiJVeLmZCPGQoXRXP35ybOy0FmDdJbKa
	7Yy4A+UM0Tgb8ufHY3l1rhh3xs4LuQlYT3Z+nSC2sj9K2e9J8xixRix2W43GvjHzI3xlGMIRI3/
	Ssaa0kGOAOrXYDQ11+Lv3lvh2mi3BrlJzt7470SELglNyC5w8Kl/dCFBro0u+Txv7a7x6w4GWAz
	br0Q+0uQpkm6wSAtWBg5zI/LPydIbJrp2KAWjQ2EOoa/d6eSUA2ztOSOAna4L0fO50E3BNajlt4
	=
X-Received: by 2002:a05:6808:11d1:b0:406:67b7:8b62 with SMTP id 5614622812f47-40667b79907mr1137207b6e.38.1748448797370;
        Wed, 28 May 2025 09:13:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7kOaXTktpHw46oOtWRKpilwDLDgGTq8IbcVMN13DgegxQWs9io4EyuZpQO8J6P6zyCxUueg==
X-Received: by 2002:a05:6808:11d1:b0:406:67b7:8b62 with SMTP id 5614622812f47-40667b79907mr1137186b6e.38.1748448796931;
        Wed, 28 May 2025 09:13:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79e9a765sm3031921fa.10.2025.05.28.09.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 09:13:16 -0700 (PDT)
Date: Wed, 28 May 2025 19:13:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Stephen Boyd <swboyd@chromium.org>,
        Chandan Uddaraju <chandanu@codeaurora.org>,
        Guenter Roeck <groeck@chromium.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vara Reddy <quic_varar@quicinc.com>,
        Rob Clark <robdclark@chromium.org>,
        Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 05/45] drm/msm/dp: add a helper to read mst caps for
 dp_panel
Message-ID: <abxm6ppegxbesl6wztyxg46elhanh2mo5kxn43olbucw37cyon@aeqikyr4ord5>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-5-f8618d42a99a@quicinc.com>
 <aksnudxy2oyojjzwm73i4mulftcxccdsnddcdamypmscn6skpq@ijtp7x76m3pt>
 <df3807e5-c381-4440-be64-9bd49a2ecd9d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <df3807e5-c381-4440-be64-9bd49a2ecd9d@quicinc.com>
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=6837361e cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=_S4K8tOYiQSLrvZx2BEA:9 a=CjuIK1q_8ugA:10
 a=pF_qn-MSjDawc0seGVz6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: LZSaEPpYVYGNrztGS3ZoZpmX0VSqjT9H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE0MCBTYWx0ZWRfX9qj31lrtW44a
 5GVpJ12q0ncx2bowTAat7PIHSIE4XL2mjQpoloI+/PUoCtHADn9WB4FlhPlGERYEL/lioRmeaTz
 2OLnfJP5uBJZCyd4+IqEhcjfDPWR5xPQFTe0MJ92TpBsDbSv9XK28+E8mELCmnBU83i/pxlhM60
 4qBWGbP7uzz1WD+USaG6L3exLbSGSTW/gyPLrYpbSy66KJ17qgqtiGi8Lkt99fgo9gAjaLe2UfV
 lDd+X4npY7h2jAWxW/Z41NIPMXqe1O3x5GKQFiJPVD/759Mj06H12ksVBrz6BJyQ9ybdEHOQ/4y
 EI66kFC2h4zPz6ITevgKQJrw7wE0ufN21InuJ/ORCxIKCIy+QLEopllikppRScPcKTcp9wb5cZ8
 B0V5Je1EewV8HXiqzgygqrC9fykKXCGJMOXGDPXLAnmU5Su7ilNLdhP0twvd+TmEIcvl6w/7
X-Proofpoint-GUID: LZSaEPpYVYGNrztGS3ZoZpmX0VSqjT9H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_08,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280140

On Mon, May 26, 2025 at 08:26:47PM +0800, Yongxing Mou wrote:
> 
> 
> On 2024/12/6 16:52, Dmitry Baryshkov wrote:
> > On Thu, Dec 05, 2024 at 08:31:36PM -0800, Abhinav Kumar wrote:
> > > Add a helper to check whether a dp_panel is mst capable.
> > > 
> > > Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > > ---
> > >   drivers/gpu/drm/msm/dp/dp_aux.h   |  1 +
> > >   drivers/gpu/drm/msm/dp/dp_panel.c | 14 ++++++++++++++
> > >   drivers/gpu/drm/msm/dp/dp_panel.h |  1 +
> > >   3 files changed, 16 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/dp/dp_aux.h b/drivers/gpu/drm/msm/dp/dp_aux.h
> > > index 39c5b4c8596ab28d822493a6b4d479f5f786cdee..cb97a73cdd6ea74b612053bec578247a42214f23 100644
> > > --- a/drivers/gpu/drm/msm/dp/dp_aux.h
> > > +++ b/drivers/gpu/drm/msm/dp/dp_aux.h
> > > @@ -8,6 +8,7 @@
> > >   #include "dp_catalog.h"
> > >   #include <drm/display/drm_dp_helper.h>
> > > +#include <drm/display/drm_dp_mst_helper.h>
> > >   int msm_dp_aux_register(struct drm_dp_aux *msm_dp_aux);
> > >   void msm_dp_aux_unregister(struct drm_dp_aux *msm_dp_aux);
> > > diff --git a/drivers/gpu/drm/msm/dp/dp_panel.c b/drivers/gpu/drm/msm/dp/dp_panel.c
> > > index d277e9b2cbc03688976b6aa481ee724b186bab51..172de804dec445cb08ad8e3f058407f483cd6684 100644
> > > --- a/drivers/gpu/drm/msm/dp/dp_panel.c
> > > +++ b/drivers/gpu/drm/msm/dp/dp_panel.c
> > > @@ -108,6 +108,20 @@ static u32 msm_dp_panel_get_supported_bpp(struct msm_dp_panel *msm_dp_panel,
> > >   	return min_supported_bpp;
> > >   }
> > > +bool msm_dp_panel_read_mst_cap(struct msm_dp_panel *msm_dp_panel)
> > > +{
> > > +	struct msm_dp_panel_private *panel;
> > > +
> > > +	if (!msm_dp_panel) {
> > > +		DRM_ERROR("invalid input\n");
> > > +		return 0;
> > > +	}
> > > +
> > > +	panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
> > > +
> > > +	return drm_dp_read_mst_cap(panel->aux, msm_dp_panel->dpcd);
> > 
> > So, it's a one-line wrapper. Do we actually need it?
> It beacuse the point of aux is in msm_dp_panel_private, so if we want to
> call drm_dp_read_mst_cap in other file, we need this wrapper.

It is being used from dp_display, which also ->aux pointer.

> > 
> > > +}
> > > +
> > >   int msm_dp_panel_read_link_caps(struct msm_dp_panel *msm_dp_panel,
> > >   				struct drm_connector *connector)
> > >   {
> > > diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm/dp/dp_panel.h
> > > index 7a38655c443af597c84fb78c6702b2a3ef9822ed..363b416e4cbe290f9c0e6171d6c0c5170f9fea62 100644
> > > --- a/drivers/gpu/drm/msm/dp/dp_panel.h
> > > +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
> > > @@ -67,6 +67,7 @@ int msm_dp_panel_get_modes(struct msm_dp_panel *msm_dp_panel,
> > >   		struct drm_connector *connector);
> > >   void msm_dp_panel_handle_sink_request(struct msm_dp_panel *msm_dp_panel);
> > >   void msm_dp_panel_tpg_config(struct msm_dp_panel *msm_dp_panel, bool enable);
> > > +bool msm_dp_panel_read_mst_cap(struct msm_dp_panel *dp_panel);
> > >   /**
> > >    * is_link_rate_valid() - validates the link rate
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

