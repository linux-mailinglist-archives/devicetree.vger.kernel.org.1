Return-Path: <devicetree+bounces-199854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BBBB1279F
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 01:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B066D3BD112
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 23:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BD324169E;
	Fri, 25 Jul 2025 23:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XESajguf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96342E3719
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 23:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753487177; cv=none; b=pao9oDL+kj1ggx5FOmnJriQcGCz7wjUpvdt/4lwA0JaxnO2kcUpEJBOMjutsotWOwtEBGR4DjrUmDhvxXhXxnOV7qj6MK/W6Tr1b4oi62j6zfI+T1mzG0EjhcpMEcT0ax+xKGKSrnpgQcrGdO5F2Rc64HfHFUaiMEJovYCj5plU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753487177; c=relaxed/simple;
	bh=VGfjHwPDHtiX/myFC+6KAMssTJ3atOwtakzlpA1dO6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iQREZMg7Iy1NHAh234ltS9+bmujEg26SnwLrt1Dn0Cixyow7GLWlrStiAcY0mrj/IdZlZ/G9cNxBdNhvK524dZZBcUfIk84vzt94adPpNrGQ35F0yVeeGQNg0PBnWFshODFfJKSdbpCVozuZNqYH5wqnKJvzO2MmreqgYjfoun0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XESajguf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PJJ0On024845
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 23:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SS3LsZZUDvLKSs9n5Nw1CMWX
	GcUNaHHXYFnDw2nJXgU=; b=XESajgufqWZpi46/y4tVeJ3PW+PDX5TOLNJDgvIl
	VEwkVpva2gu2Osh/Pi8o9xX/9JEXPc/5s8IwR9ZdLUtTAejkC/GoteVaZrm/2LBR
	l7ho4qz6drtYCf8i1nazKxjZmQaRPG7NpZMB4N5pf0ZP/cYA+Q/+03XlMnKgdgka
	lldkmaeb/8ArWEx+IFAiFWYljr7c0M9S1Djhqxy28Wtvh5ktSW08q7Q7PUW3pgNN
	mUvO+wi/hnhofRR8hTjdFCQQXxxgQnZGj27YWq4v6yTHug4maU2NpPWxIsVJZwCm
	MChIqBdFjPx+OOVGxDFiXlmqSFVmhmXNMwxQGxKaBBXHeQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2rbwbf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 23:46:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e34399a08fso656661685a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 16:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753487173; x=1754091973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SS3LsZZUDvLKSs9n5Nw1CMWXGcUNaHHXYFnDw2nJXgU=;
        b=n/NU5264jdnzf2frPEb9kfXtOv5EPrPAT/GvLgAY0IrXmjfema4rebjK9Wzv7fOZFX
         YjN0N3gzs24Ydbz0GhrNa5nWQOaVCf0qhWyBSOuMPrZrLIZM9y2sn2M2utcTf2PwyU1D
         l69o5lf3SpwTVSl2l7NQ5sA2n2BNqqLxbjYhqweyHubw+3HCbO2qe7V2z9/yGFYBiS4G
         LlONZPyuSU+SsfjdLeWod0itBw5nlU27zan6EBzQ6YkkGZMqbVxVVe2PGILsRuUMezDI
         Sjq5Gsz4suW3zqRk5cIR4pwT2fqyvqcvxE3dqCvOx01ArxdIKFqIIVvv/qyR/3S2nb5h
         MPEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVO0jLjEMOCgEI1aiTOSJr6/F4XwryJTtZx+BZbQTWIuyMYSMWubAm5XrrZxpJEIou5Z8Aj4TA9SDX@vger.kernel.org
X-Gm-Message-State: AOJu0YyqwjkQ/PtenW0HB3xSXfSwHkpu7risrAhwxnyPtOm9MSqyG4IT
	KjFeZzERJJ/ZpOnMAZ66RPeRDg3KMog1LMAcw63WC+MOZvqh+88xRDeGSxOm5kqPp+UqKxcBopN
	i7A3qc6VAFtul8h+XenilNGK9552WBE+CEj+4S17SyeZUtQNldYxqSNipSiKNPpFr
X-Gm-Gg: ASbGncsN5C3C1wEc2XmUlu/uoT1NRfEBMVSzidO9lUGR9U1gc27CwUQnFkHuSMa1CP0
	f0o+YNINcn1q82770catQpRLJFO4ItGPWau/vOf8bLwLVDRS84BBhJu5h+3uWay6NsDwAmH0W2G
	RXrhOpXMLRvrtYs5NvRZSodMkMpT/gU1065knj+nyCBWVKNnZ4ynDCknPsUaiA+VLe2mRZggUX1
	p4GkeG+HdMDvJvFdxGHFBGXxFuZByA0p2KYgsZ45LxGREzRXbQJZmh1VXCbdAqLekf9H35DfHg6
	7ijvYVw1lwig8HGuxz12Ain3mzx3z0iQOZJ1IYdrUmA8apT2+O+W7tU82QOKrhB68KxY/6pgqOK
	9n9V/8fXQCRvOGTpC3t1u0IJNm8mtFKpeTQoqH/5Y3CW6Ah3nzfZp
X-Received: by 2002:a05:6214:2aa4:b0:6fb:4e82:6e8 with SMTP id 6a1803df08f44-707206fc4acmr49971376d6.14.1753487173370;
        Fri, 25 Jul 2025 16:46:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0Rfyw4lsowFfqFRh0Tw+94/AYPklbtjVdrBLBTfDDOYsM1V7AqVF33x8eAQDradrWbESlSg==
X-Received: by 2002:a05:6214:2aa4:b0:6fb:4e82:6e8 with SMTP id 6a1803df08f44-707206fc4acmr49971186d6.14.1753487172978;
        Fri, 25 Jul 2025 16:46:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63363568sm180197e87.94.2025.07.25.16.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 16:46:12 -0700 (PDT)
Date: Sat, 26 Jul 2025 02:46:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 09/10] arm64: dts: rockchip: Enable DisplayPort for
 rk3588s Cool Pi 4B
Message-ID: <gmc6cx62knfffgiburzzjgkxifzjk4c5nh6gwjdtk3uopvq6y3@azpfwhmrsy2x>
References: <20250716100440.816351-1-andyshrk@163.com>
 <20250716100440.816351-10-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716100440.816351-10-andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=NfTm13D4 c=1 sm=1 tr=0 ts=68841746 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=tTaqpbVWKKepMg41KaYA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: 7S3NcMUiu_CHW9Yb9CcWw9vzUkSWVOQO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwNCBTYWx0ZWRfX49TQJMLTrT6M
 B0ems6EYfI027IV2EW9HS8HMvqoDVl99cDTbrknsP0D/6ZLsBifPNLO5EmXFDb77tkwtwSxvsEl
 vLZV3Cd4heKKSkpjeqlxL1JMDFkrEYw84X0xayWfdUOQCu58RRfMz1eDPFCVSP1j9JvKE8AS4uQ
 SGu2zvfJ+NjoMieZcUdBgemyxnZHPVrRxPxH/Iu+4DUdN4rn4NCkVQcYLS65cqaoR7ivBImIF4S
 KoRTKFXmGlNAxhRSEmNVQnN9jy3dZFTCZGSPDZj4X9QQGX/RRxoy4IlhopIuaA2TVpRlbQc86rd
 oj6bO4b9aRN02s7nVufH25N9fH3diCYcdSSQvhDM+/WO9vrWmEw7PzcfmgunJbBw4DSgxqTFCpW
 gqINYk9jyyQTKSh/o+EylGBjW7sFp12KHnc8X5Wgp/ycycjjSY5JioBNyYxV5ups8kH16gBu
X-Proofpoint-GUID: 7S3NcMUiu_CHW9Yb9CcWw9vzUkSWVOQO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_06,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 mlxscore=0
 mlxlogscore=780 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250204

On Wed, Jul 16, 2025 at 06:04:36PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Enable the Mini DisplayPort on this board.
> Note that ROCKCHIP_VOP2_EP_DP0 is defined as 10 in dt-binding header,
> but it will trigger a dtc warning like "graph node unit address error,
> expected "a"" if we use it directly after endpoint, so we use "a"
> instead here.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
> - Sort in alphabetical order
> 
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

