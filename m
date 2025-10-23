Return-Path: <devicetree+bounces-230276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5EAC0112E
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:19:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 957BE5082DE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F198E31076D;
	Thu, 23 Oct 2025 12:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CWyxHwSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4908F30F555
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221781; cv=none; b=AKzlYqlWVVlrqM3C7/h69Xc9gKPXQOGgVPuVCH+zYJTpN1zEk4gaE3i8XznOjkKUVQCOEqxZu6IQlKCInbQLlHVw5NfPgrVQriL3dx6YHMkzwu/lPembsAOatMR3XWZ810UOflN37SFwEk4+xIwfSN/M/IV4y1sx+Jlbr1o+XSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221781; c=relaxed/simple;
	bh=0E7U9bIPhzHcbtwkKPPc0NskDg+3yPSeeGrKpQZ6wxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W62pmjSso5ra7QppqvGnRFYk7H0wP6qHJYY8P9kteI37PWsDZ+vft3Nn3jnEgHVTl5wHSGGhLUYU3ccshrMIkK/bBNPPTdZKzQTUmHs5dJUKbsRQk5NxNtqGxdCqNKCLW7/eVoyzlvb0bPZG4ztB+9EGQ9ihgxi6wIkS/3WuR7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CWyxHwSj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6ioZY014657
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9bI46L/4oozpzEJG7ZAsQNzK
	TAJeVoM2mUGb1Do1MpM=; b=CWyxHwSj6udPgRngKWzY6aHNz7/y1XRW7WFZ6w9l
	RlmrmFeJXWPk9aG/2XNfqZM8YBfzklf+n9SJr7RRkaSsv12WCDpt1572JVHPyPNA
	IOK0kiy5iDQPG8RZiKZ2+FsXVkhoeZsj+BXvjQrb6npJj4YU7hfn4W8zMbzmkQzN
	DE9M6ZeGxXhBcKy3MXnVFUQNHTae5VtByMP+JZZU2mIjxT8m+BEO25FlSMkwprtL
	CIzHBGnsmD0tzL6tXq8EIMgFxg+5+Mr+sfOgE1JsafAAXEMRkEL8AzJeY2gw4wI0
	xJRtB8R0PEmJNV+CF6mtBm4wdldEVpLfBdjyBg1LMqMGKQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0p92y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8bb155690so9810161cf.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:16:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221775; x=1761826575;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9bI46L/4oozpzEJG7ZAsQNzKTAJeVoM2mUGb1Do1MpM=;
        b=hJid5njbcItcpZN2AeR3+5hrZqjbWlLxApDySU6vlzhiOwcZyqlvAGwIs3R2t21d45
         m2Js2ck5ObL08Wm57wXrZuuYi/DNRhARh8E9GTkLQhrmfMZnUSuFFyL5m8EVtZNwzZFw
         L9u1h5rATmupG9pUgQx3cX4/OL31OUx3dBWCTvYddZMNdeQWWJB2LvdWP2QVYh9P7TDQ
         lltzI9dnw2WbZiSc7MJVFzu2ttkex7rDyvwkApzGGLUEuHXM+lS7WnRgpWNFo/Wv0/Xw
         hh9KdPPYgGGCW8LzFvaP7RHUPED3HmzSNwfu8bgEyFkrhWZJpl0yim2UJpGd2FGjRAvB
         OHbA==
X-Forwarded-Encrypted: i=1; AJvYcCVnB6h4TS3B0x5O+M56yFtIAsvgTG2/e9hY6jQMAC4jab8of8UQWKbR/cIB95koevAJiOKJPse4gvkD@vger.kernel.org
X-Gm-Message-State: AOJu0YxKkwGdQIRHYBgB+tIezo6BK0posJVEdpmOYGBE4Qw/H70qonk2
	mX34XdOuW6+hAViI6l4mzWN6xi6QNeVIHuqzrrAr/gdSQdeDjA8/ZAp/4FjplwUehcI+w/guUdG
	EPiA1mimAA6Ss7RYFmKDDziMcH32gLUqDSyETF7xpzJlxYOe04zHZFOacICJq+Pp8
X-Gm-Gg: ASbGncvKtA38JME4jGUy2IRuoxbHBlECAcTQrhu8Vv9wjQvy/icgBgEcjbHPaRfE0fT
	vYOfAlh4CVdklGqi8T59rAPRavpwPyYBw6sZDvelka3lh1NBr5G3jiDwd4LwyA4E/9Na9uLrHxB
	8boqM0ed7VdmiGwnGNWLs3Qr2dfcvtbrKlU/YUK83gzqmYa3ooCSDy02ceEyzEIqnqRcg0kWIhE
	RgAySCwRtyg5MiTPTC0k1XXjW8V+Elulx8Stm9PJOZYTj842zxl9nTY/kDP98LOnwTMl+H2ArNn
	TWqX2kFonrLXk60tNz/369V/TSNJsWysGuYIzvE/m0+LFpvKQB+CO/qDjoeIPnm48UoylJVVmWl
	1l7e4PPkqPmL8/gs+tfsqAbNUXrnrwUV3Uz+gPBiJEwr3PfRZjDvz1XlAlus+Pjpj5DEZd9YJvX
	kAmIKEwFVud1xb
X-Received: by 2002:a05:622a:4c8:b0:4e8:ada0:450a with SMTP id d75a77b69052e-4e8ada0a00cmr197923861cf.45.1761221774998;
        Thu, 23 Oct 2025 05:16:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeUhuoseObWTvRgOs3Xxp4Tq849T+csVGpql5BFGo9n/VmAM+rZHain9nu6/6zo++Onjyw+A==
X-Received: by 2002:a05:622a:4c8:b0:4e8:ada0:450a with SMTP id d75a77b69052e-4e8ada0a00cmr197923451cf.45.1761221774525;
        Thu, 23 Oct 2025 05:16:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378d67db627sm4204351fa.39.2025.10.23.05.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:16:13 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:16:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
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
Subject: Re: [PATCH 11/12] dt-bindings: display/msm: dsi-controller-main: Add
 Kaanapali
Message-ID: <binhwh2sb72ipt2qhqdmnid2hygdnjx62mhzn2cl4v2do467gz@wkmsvroshkcu>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-6-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023080609.1212-6-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX/d274OY5VbNb
 fTPRs5a9b4MFww4DZnCDvNO8uc/64U8KxVcOKAjymP7VudYlrTCB92QsSW6vl1dmx7/4/UVq65L
 lf/LLSnOKTy7FuArm+jjFWxkhc7oUVe2kpRd23x1ZURpTUNCuL+dxw8aoQ/jh+ReJXhocpNMtoL
 vtHQYt8+qiYW0WiiXN9aEDe40ccEV39TQBuZKRZew865T1UNVNel3SS5Lw/HZxA/RR7tPFvMIWb
 h/ikofmJ+Ohjly4TCRIY0XF3jLNrIt7RoNKG0+zWXPNzQXr21iIYbTvonm2FHNs6K0oMun7o5Hc
 fmW3+2qv/2I17MR2lebH+N/k04rQCbxtsiBkjvUk8Rqf4TNUlrybpI7QI44wERkoM+r6iiZiebU
 ZVHd7qSDiP/GeFGpcmxILaL4iWWfKw==
X-Proofpoint-ORIG-GUID: JkaszGfjO0PAlDgd0AoD1o1GhMJDKpLC
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fa1c91 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=yQNLmfnzQBnRYO31l0cA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: JkaszGfjO0PAlDgd0AoD1o1GhMJDKpLC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

On Thu, Oct 23, 2025 at 04:06:08PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add DSI Controller for Kaanapali.

Please say something more important here. Why do we need new compatible
for this platform, etc.

> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 4400d4cce072..536ebf331828 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -15,6 +15,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,apq8064-dsi-ctrl
> +              - qcom,kaanapali-dsi-ctrl
>                - qcom,msm8226-dsi-ctrl
>                - qcom,msm8916-dsi-ctrl
>                - qcom,msm8953-dsi-ctrl
> @@ -369,6 +370,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,kaanapali-dsi-ctrl
>                - qcom,sm8750-dsi-ctrl
>      then:
>        properties:
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

