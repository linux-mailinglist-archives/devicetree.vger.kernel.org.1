Return-Path: <devicetree+bounces-223802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC79CBBDA2D
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:12:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C3E43B15AA
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A08BE221FA8;
	Mon,  6 Oct 2025 10:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LvzBBO7T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B7220F37
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745559; cv=none; b=jcaYnVinuAp2R4maVROJK2GsYukK5pWD6nfumE2uhmk5x3xab5ZBTSG7apPNIGRUrfw68VBqCs86cJY0IIMQNc91FeBZpxAVu/48LPyowBcp5hZhKQ/fgkFeNH2/7sqqtyyaiMxL2BcGzDXDnt2i13Bbn25cKVPXrPhElFTOedg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745559; c=relaxed/simple;
	bh=yC8qDztRmXd2wzVFIUgYhjND7TqP1DFur68MAZODzUA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwYssTpa7PodIBj9sPd3K8xdYDN2NkUqoiK5NipDRK/Tm6s+xzRKCLmpOg/waSFw2C1XJBFbP4K4GZqaayOHnLO5TPqWyqGVpPBKz1Wr8z1WrZmRMSlB5V8GxHpAMUwK8GdFIVO6kiGBgDnysaEEJNubXqJ9siG5kcuIzRXM7Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LvzBBO7T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5960HcQx029299
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:12:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9DjbUCmcg5sdBYa+VdHMlxmG
	F69VZ4TGKs8z0vOln+c=; b=LvzBBO7Tq6twkF4N9J/m+/YuUV4rwSzLlYC/Ifla
	9RZ4gWdS6Kg+7bQar5P2YZmvUZgOzJE82hLZi0lVm5i6oM76F2LamB+hvpcgazMp
	E5GA1m/kZEVrdKXlQC1naEH7QLGgNCvvmfkMthYsMh9wVmdm5IKB0KMuqCq44HcM
	FJctnQqcBCbrgCTjD77fd5C3SctiSipcXD2jly3UBsea0OpYS/0RAkJ0TqgVDk/9
	iYEY/eZFWZfXtOiTp1de9j7E/TOtlc53XbdadMLJ6S8iP8VlLfIiYrpDKeD3zduT
	ZbXovSucBY2cWrjowhyY5g96rXsgFSJyVwlmJSSj9Ra4rQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1kgd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:12:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e484dccaafso122104781cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745556; x=1760350356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9DjbUCmcg5sdBYa+VdHMlxmGF69VZ4TGKs8z0vOln+c=;
        b=WVDRThnjfCHcXz+kbLS6sNzv2cb0KaTySu+zHdtArVNJxYDoP2Ud2WjqU3i1U9Xo8u
         34tphJ/07fc9SZYWni8ILIvWIXkBO4ZxTry/4VTAs7htMJXT6r5G0wkiJhLvNMhksk72
         wEuKlueKhLBrDfzGCcOC2oSQxh0yra228k0HyB80a5SVf/Jt5t4VprhGcuXZi6QXzd3/
         Z08JXakGAKu509mTY0aG6HSC7E3lPKvdrp2GjaRR9E6fh0enJbDjzBLXTaS+JeqA6YND
         mRFi2JA+VOePkul3rV1Qi2kImHpMYu93kqVq1w6HGVaa16wazPGdSZYb9sp4DvBXAjtF
         sSEg==
X-Forwarded-Encrypted: i=1; AJvYcCWHyVj9Yu9cAck321pDoJoAU9+xd9siMPLWUG0pFnHtlBadtkEQcP2bv70FUojD/9H+9Qm9JOU7iRO0@vger.kernel.org
X-Gm-Message-State: AOJu0YxLfIecgmOB+tEgYy07Lsp4u1oQvEPFx+NwwZg0V4xtZA0dX4hc
	1sQjhWxLshTpBtQRKZJuOvE3M3VIApJ8BDicGiHIabLTRLbliY8r8pGmtWWAJhjJcE24Ofb8NOw
	BZFJwOYyXXa0t2yMJpJNlPmRpLC2CCcjb+6AksI1zjDyr5XVemwwsgIJWizrs4Z7V
X-Gm-Gg: ASbGncsbJImfapmmGpPop/FWJtZpILSQ7u24/AyJ6MEdI7ipXXlR5YRZ+Mo8/YyYepK
	TITP7pfTLYtnryyJWgsmBsoWE8pBBgXFUIiw/3kql8ICcc1+XmI0bFzzXr7oQvAgjJInAJIczmA
	ubZfSU8u7DeINswTBBT9R/krmPcDuMJlUZGBAIFNQGDawRSr8q0ZrZk2LlkqyGwd51kcI+BAxpq
	gdJKHPpp90NzC5w8nMYZqArz+0kZ6WLNe4eWkQaSdxymQNa7CY6ARvcHHtjAx/97vxTKDeIu0D8
	zAS3YrBhdzR1XSSPfkpOjP0svqwlcb8tkmTAqZS3PcHL5hi9soSAV+nsmzfC327zxcnhSKdGp6K
	nEhg9ysOHz2sz0W4t2FPcffeE18+1PL5pwNr4u6/O57LV55fBXvoY4M4m/A==
X-Received: by 2002:a05:622a:130e:b0:4b5:d6db:eea1 with SMTP id d75a77b69052e-4e563c5da0fmr209850591cf.39.1759745556306;
        Mon, 06 Oct 2025 03:12:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVYsEsv3GQHoe9XDvDjqIIC4TE7FK2OBx7RMlbBeqiTU7xwK2kdO72i5DVh/m7khG5Kv9KDw==
X-Received: by 2002:a05:622a:130e:b0:4b5:d6db:eea1 with SMTP id d75a77b69052e-4e563c5da0fmr209850151cf.39.1759745555626;
        Mon, 06 Oct 2025 03:12:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba44441dsm42561471fa.37.2025.10.06.03.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:12:34 -0700 (PDT)
Date: Mon, 6 Oct 2025 13:12:32 +0300
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
Subject: Re: [PATCH v2 4/7] drm/msm/dsi: add DSI PHY configuration on QCS8300
Message-ID: <knlsejrmxfzgb7qdy5hpiawuxfg6b5hltjpweope2hl3dm6liy@y5yop35p5afe>
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-5-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251006013924.1114833-5-quic_amakhija@quicinc.com>
X-Proofpoint-GUID: j09BZaA57WHEXKXKKVhiiO4em5zkgN7C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX/KqlUzrXytLK
 6QLWIl+t3jB5Vr+qC9XKASVmr9+2n6IB3CBtZvs8dSD0A5vlL89KHtUctJIv/TS1awtEG2djU8r
 KP2pxo3dgJUjVeoIRsgjyiiQHMdX2IJth6qlGXKO/lkM/Mpy9SMU/2etnVDRl5RI7joWKHRrEWa
 Z6LczK1wX61Rzfu8KUrO1/7JCu72rSUoZ4wLA47gcX2xsPTNwmebP5SPDs8MpzDoB1qcoPenM3D
 phX98gV182KYGA7RutvaHOll/arXL48DtWBzrFRbmgSHii/JhHXXGhfMJwa0aC/1druNnuJhntW
 mGjyytacz+eAxE+Akv5pgO4nOpeCnILys27z/oF+BZ+F/NdjLYF94Y/tjHVuCxpZY4yN+85AQeZ
 r66vO5vQaMz+hi6V2E7kQ9vMpNpFBg==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e39615 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=tMqVXGxUZ0RuQ0S_Ei8A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: j09BZaA57WHEXKXKKVhiiO4em5zkgN7C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

On Mon, Oct 06, 2025 at 07:09:21AM +0530, Ayushi Makhija wrote:
> The QCS8300 SoC uses the 5nm (v4.2) DSI PHY driver.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 23 +++++++++++++++++++++++
>  3 files changed, 26 insertions(+)
> 

The whole point of having the compat fallbacks is to remove the need to
modify the driver. Please review how platform bus handles binding to OF
devices.

-- 
With best wishes
Dmitry

