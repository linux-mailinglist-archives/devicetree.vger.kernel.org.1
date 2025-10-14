Return-Path: <devicetree+bounces-226411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0322BBD8766
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:36:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D398C4EF255
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6C92E0B5F;
	Tue, 14 Oct 2025 09:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ErIKlQPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9445E270ED2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760434597; cv=none; b=BlOoepWue349d8hqbvcp78ix1rrlIOe/c6nC3QJfjSwNo2q7sEhZWv5hFKNlwBJxmGz9PoEqcgHS1Lxy5WNAfSo8EUpyIP/+XtCFq/Z/tJ76iZ1VBEMDc30jeu9fNThd6WX6ZoL5klYSNyvEPom9TswYqnF96c4Tw42BMgP1NaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760434597; c=relaxed/simple;
	bh=j0urYs90kPTFfhj6XsGDs3vJJ8OV9y18S3hd/gfBDIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rcJEJCvHpcIdVKK3F9/1kvFyiqvbEwY34V4aUJ3wxnaUJzKP2LyBnk9+/i/HNqCaXoM9cy1p5Lxye3Txp/t4d3OBRLeZJMGsuuWM7E+ewPM0rgVoXKiaj+AFfb0ZKABJ5Oc79dYRmK40EM2y9HOhNIbZRtBxzf+z9e1Z/ttkxmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ErIKlQPZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87krT018998
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:36:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RBVC+5/5ABafrPQ+4V6HCdRE
	5Qnnq6FFZbvfYQ5jpT4=; b=ErIKlQPZQMOrg/qnmzemszHado82YkEIlTM5k+Ng
	SHK2L/l+BM4TdVruAnnOwh8LzH0kStRIjZ5qkSTSaiSf045I47edY9lctn284X+Q
	03oOOW1yFDf9mWP6ofnHDlBXtZb0dHMCWPqIQkyTv2QoOCe+HJTG/hTbmg2pdCGA
	hGhlxuzTlViBKodnkYMk7zdDvgUvD2bN8xtZQMN+pt0Xi47tAkukQ70Igwukc822
	m929KjMPQdhFHrA3qZL/UBaA0n1Mi4/pso3yqeQddVyXj6927t41f0jeGLMiwpgm
	r4GkKnnqbzrhepUJUqgzK+meRFin0yLc5Wr8CxcP2NC1WQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1ac99k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:36:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87bfeecc483so1497326d6.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:36:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760434593; x=1761039393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBVC+5/5ABafrPQ+4V6HCdRE5Qnnq6FFZbvfYQ5jpT4=;
        b=EKjcU6Jbf3at7WmUBan3CM1SU1bL0N6bK4OFea22Yq8aXzp8kchkWvsbuQ+QcufTuV
         jFTM9WcPe1hKlq3nVkddwOQ/rX2qMry3Wv6XgkjU+NLUqJRyNOsu47MbUtzTknnXYnG1
         QPOqzuEX+xXFRS4VhIdO4av4loDAmeD2ltSWO7AwViAX5UGvO78kkXIj4vbHTND3dB90
         6Nx/O+YHXN7GNjpJ4C5NsjoK39DJy8+izbBaJB4RW9RtHKtXlbdvVa/IcyykeRvIrrTl
         Moqvrh5gOhoszj3laMBCFjZDyLeQchrnMVT8qJoTW9JWMcdh40d8TEEvhodHaN+DAkZ0
         OkhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpI/Vz1d9prqaDD1oQLqRivyzEzg3i2lDhQ/eHIlIdiP/nqysIs2XkK8TOJRBKdUAAo1oG6hLVHPrC@vger.kernel.org
X-Gm-Message-State: AOJu0YxKAGscgn/BbNGC4du/N8PqpL3uUDkSJRoJlUjar6hBZk/QzN7B
	ewbTeWTzrZQMMPmK0h7i+2rbwxfOToYOGx71OxXTK5D+AyoiGWQUpDAqmisp3qnDX2UOENgFUWd
	lId3/ks1VTR48Rwoo/sx8cz0zQl3FOBJ0oU9Lk7iCpJYgXDibugcxlZtPwm+7wWfr
X-Gm-Gg: ASbGncuflq/V+LDYztukDYjYdXHAovgN6lrVp9fiTwsrfSjU/bsd84thBW91FcwtGNf
	RsIKsfM7umOmK5F2KR6h59HdkHogFJSjK75pnTQk1x2gtqCKs8POuwHt2SXIqjd48doSNjBoLsh
	+oQ5/wyOJNLSgMVBD0mVoY9z7JLZhuOsSrFoLKBaPQxuzFDZ1WZrjb3a8QhPXeZ3AlKMpALVNB0
	/JxmkhStLSg+v92XvQP17JIc68h2fTzalmMu+2KpsZ0MPVq3/VubXwWi+dxzLZdoRlTpeKPdK4C
	egmfk8K5yqsg0rjTs6vh6f4+tI3+EwFWJ4em/Tiu1T+6a2DcucqQEn4B8zpGXkQcBdtqsHZoOCK
	Db/BpYdRatL8zBEgVaDAcxsacCPMw5iLehrAK7bQBS9XhOk4rk2R7
X-Received: by 2002:ac8:58c1:0:b0:4db:9c75:abad with SMTP id d75a77b69052e-4e6ead675e6mr362283191cf.74.1760434593390;
        Tue, 14 Oct 2025 02:36:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERrjyZhC8WYF5QIYCGn45rVK5JIGxvjZP4pOiPgTYBQZVXJXtDIxnFvrzcK8U0iF1Mgp1g4g==
X-Received: by 2002:ac8:58c1:0:b0:4db:9c75:abad with SMTP id d75a77b69052e-4e6ead675e6mr362282921cf.74.1760434592949;
        Tue, 14 Oct 2025 02:36:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088584806sm5055024e87.123.2025.10.14.02.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:36:32 -0700 (PDT)
Date: Tue, 14 Oct 2025 12:36:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: qcs8300-ride: add anx7625 DSI
 to DP bridge node
Message-ID: <acfvx2smpoco3hakkhas3w3fybu36it65lpelbuigcyg2f4thh@qjbtzgxcsrxj>
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-8-quic_amakhija@quicinc.com>
 <vj3pwikzgbflzwqwkbvdfac44llinsmrhrqnvu6gx756xz4h3e@2lspa6zx5xgr>
 <3597f849-fe69-48a5-91cb-7a0bdc9f3e7d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3597f849-fe69-48a5-91cb-7a0bdc9f3e7d@quicinc.com>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ee19a2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=mWwphNQy6DiE2YH7zW4A:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ZeeK5e-5O-VwOTGAW2ZgL29seyXTB2GX
X-Proofpoint-ORIG-GUID: ZeeK5e-5O-VwOTGAW2ZgL29seyXTB2GX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX1RBo7Pj8mOw2
 xE0/uicNjNvgHS9jth3rtt8BrLfwTvJRtcaHSjLAUL+4ec0nJ9zB4+gXFaK0l7MOLxA6aLIi3x5
 6UaIhYFh9yA8K11iVMrynFzgehUCvFCP3Iw7TD6LQVcJ6+eUnoXDSHhtVttiYpBspzI00zA/8OU
 HU8iM0ratmD3sJeu0pxWE1W0yhrRt7TYULHkMC6Vaq0KFxThZSXh+su4/Lp7nJpz9F4N3w+6UJp
 iFKjtyLscGkYCMSrIqA/1fvT4SVC/+yL1glLl8ji2u8tyTZkrODeAyRNd+McFwa91xNTIuQHXVZ
 oKYJq0scxvrFchBlgEQOM1nQQloKcl4C6bqt37eTM07Gb5e2Z4mEcewUSQLZ3qenmm+R4DCUG9z
 UQhOl/GB5i2ndJs+3KBqilx7ffCbYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

On Tue, Oct 14, 2025 at 12:06:13PM +0530, Ayushi Makhija wrote:
> On 10/6/2025 3:46 PM, Dmitry Baryshkov wrote:
> > On Mon, Oct 06, 2025 at 07:09:24AM +0530, Ayushi Makhija wrote:
> >> Add anx7625 DSI to DP bridge device node.
> >>
> >> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 170 ++++++++++++++++++++++
> >>  1 file changed, 170 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> >> index 891e49602c97..5d4040376857 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> >> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> >> @@ -24,6 +24,64 @@ chosen {
> >>  		stdout-path = "serial0:115200n8";
> >>  	};
> >>  
> >> +	vreg_12p0: vreg-12p0-regulator {
> > 
> > Why are these nodes not in a correct place? Also, why are they named
> > differently from all other regulators in this board file?
> 
> Hi Dmitry,
> 
> Will keep the nodes at their correct place based on alphabetical order in next patchset.
> Similar names I have used in LeMans for these regulators. We have kept these name based on the information of these regulator we got from SW doc for monaco.

There is a slight difference between two DTSIs. LeMans RIDE uses
vreg-foo-regulator, while qcs8300-ride.dtsi got regulator-usb2-vbus
(which is close to what other platforms use). I think we should also be
using regulator-vreg-12p0.

-- 
With best wishes
Dmitry

