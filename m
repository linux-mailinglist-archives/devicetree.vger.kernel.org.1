Return-Path: <devicetree+bounces-270546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDFiEv7spmmQaAAAu9opvQ
	(envelope-from <devicetree+bounces-270546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:15:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A78F91F1395
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1ADB23098592
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B4D3947B4;
	Tue,  3 Mar 2026 14:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AjgKTAkh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Oc79IUby"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686B7388E54
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547048; cv=none; b=GYs+NvxoIYKJkjAkipSomyhQ//Mr0XbeA5uIbb63xw1z95nLLMmSdc27uhcNdj69UZgs9SXkqiG/8h+IKRtneRrA3ovIVS9fw3oyZixIaFnpWHffYvr1fBiU6NbKvLjzivqH4CR6CB6iqANt1CPPUSWrqVoqcjP6DaF/mQUJwVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547048; c=relaxed/simple;
	bh=TzC94QPZLfAjXOmAUze9ASpZwQ8+2AKRwSRX8Zig8AA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mgDnFHPLawaDa1bbhBhs6qmVFgzEUB2umv9ZZ6cRiUaMkEwhGEnrzR6NTVOa6aQainEDXVF6+/kT5da9BUG4qY7IUrcb+GGL9YjrolCigl/3xK/UuecYknCa8vSWh2Lq7nTROuhdYP9MEbPA5CG4PcGkI9Z1BHaz0KWg3P2tQcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AjgKTAkh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Oc79IUby; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mpfI2773398
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 14:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qR5GzbFJ+dMxU6WWcNRoCJ+Y
	aJmi6VfZZWkl7xtr3Y4=; b=AjgKTAkh1IrAwyyKPL9QxAgZvl2bB3RYIP06DhHe
	f8/kJngrKj7Q5QYcMBL5Bbr4AjfVmKZIbKXJCfDgc5ZOeJHBe2+kuiBUA+FmB9Hh
	xkqNr/FAbddtklvIlFHhbBhzOh9y/nR5lHYXXkz2DDMzOQcWKr5/nCObXkQSWIK6
	qr5GDxmKJOjpqhKRzlyWxCCeszcm0bZjNTyDd+IFG+W7Tc0ZZ0Wx2aDrAtL6fF8U
	5M++w+R3rvWcOLYWZfzUhbL6bZZZWff4Py/HtEWumsNJ5mCs/rZUZjEaGgAE/IlR
	Z0+ap2GX9m8/QbWWFebQUeKimFgjSCIRjpiVK9FjqX9pvw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnsjm1n2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 14:10:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c881d0c617so3600378285a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772547045; x=1773151845; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qR5GzbFJ+dMxU6WWcNRoCJ+YaJmi6VfZZWkl7xtr3Y4=;
        b=Oc79IUbybH/wW9YtrAY7hss8GgT4M/GRkOrhrilpoA0sN+VQ6V77IHGyPBVCekigGw
         cZzp3bRgu3zzK8KtG5WW/DMGvn8Tb8CyiHB8gYWYdPj8zpiCIDEG0eSZie4n5VmCzGvY
         5WUkQ8sqpORD5e+Z+j4BpgIlxS1lUbQZD8fnAtX+nw4P12azcHpyWwbxSr/ghTRJcBPM
         dmFtCgvgYGDj1oWtGKUGBKO9obZTXFrP2Q5d+3fnLgXIxlqlS9CJaNqqtyFT/oyYOXag
         TNtNAH8UtFohiZXDNCw7AlER7G2VZL+wstnJ9dR0pyWTGxPQOe8OHfuTkhF0oQ3GyUxR
         E9jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772547045; x=1773151845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qR5GzbFJ+dMxU6WWcNRoCJ+YaJmi6VfZZWkl7xtr3Y4=;
        b=jvHn0/NwhAD4d4+R17clIh52LjP/NYUzG7UP+cQqipCDx7PBue7uox/Y3xp+n6MuZW
         +3RUC+Q6sYuo76w1QJPMa0j3tX3zd44LKWW5gev4QbNBLDwAUVcMNe/HLbeIV3Aldh+f
         eDm/MWXxXjDvuNlu1VuvZCn6H9zXazI1Bdyv4AXaqAvXgWkS1T25InaFa2MtdY7xG4Yw
         o2Jtxdb4xyNCv5WJ4IrJkaSWP6KRLugfTOD+u5TPPAfMWGNDuHrTPldijNuUdzbeAVXh
         kjHQy5gNfjAmac6bDkwU32ai6txHMzc/XBfQsBb0d2rqOtX13LrAYstyUN8hX8NJMZVb
         lvYg==
X-Forwarded-Encrypted: i=1; AJvYcCXiyvckIeSTFpLNthgDwmTVMmmZJfanxbXEDYuQp/BwenTxncii3Xn6rJMV0PklqzTtc0yB3QN6eD3W@vger.kernel.org
X-Gm-Message-State: AOJu0YwHHb4Bw+wcJSmGTg/aa7eE88GYFk4ZkRcJQERwDPG894XGRlNe
	UHormxiDT8Uf5aeAGBcD2h9AYkE8gcegpbXAyoO819+QovJOHqBm3pjRTamJrCEdkLuSs02SZ+y
	6BuqVhIE1iWY/PxqU/JkIi+NweDXYh3Urf0YEBvlLbE8VoFx/9BbKUGxhihSItRrQ
X-Gm-Gg: ATEYQzxfWBMpHgdB/kYDff/rEUMnJOvN3IXL9oPCQrYinM+JeQtN23frqWN4obwNe7t
	MdI3/BqI/aubLwT7IkYb8BAxwRbVqX6p2C50WluwgN1kjBe4ymeNXlMOx61X5tJVAQMo67R/W5H
	Z2c8fDKpVG+uFV+tv9TAZIeaEI3o87yRYOtJDJxEjl6kkMT2o7KJv8BZiRtJcp4RDi++5Sab+/1
	TrBwS7wIhmu1+NURsgFcM16VEW8g4aJSiLN8zm58BljjIIJ4Y2j/wLFLB71tew1YGw+EgK4m0Ca
	/URZn/8Ev3GaczTQC8Oi8TvXMbMKcnLRq3B1NiPYo5Up+gQb9/8Ovozm/Lhl+THi6pptyh+BBOV
	jeIr8hbejSyCF7dzvpd3xAg7R4xxaBSn/1TcfvuL4rBCV0pa48I8duYJiG4HM/v4My+E9Kib3mw
	lcQuiQ6XsFibTVnr1X+TIgb6ew/lzyy0IMbZU=
X-Received: by 2002:a05:620a:2906:b0:8ca:3c67:891f with SMTP id af79cd13be357-8cbc8df1c13mr1927059785a.46.1772547044713;
        Tue, 03 Mar 2026 06:10:44 -0800 (PST)
X-Received: by 2002:a05:620a:2906:b0:8ca:3c67:891f with SMTP id af79cd13be357-8cbc8df1c13mr1927053085a.46.1772547044157;
        Tue, 03 Mar 2026 06:10:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123581491sm610722e87.25.2026.03.03.06.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 06:10:43 -0800 (PST)
Date: Tue, 3 Mar 2026 16:10:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 7/8] drm/msm/dpu: Add support for Eliza SoC
Message-ID: <7hwaqdfopuptvjoikc5y5jm7lf6pr556k2yijcac44fobt3x2z@5eglub7asuqq>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
 <20260303-drm-display-eliza-v1-7-814121dbb2bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-drm-display-eliza-v1-7-814121dbb2bf@oss.qualcomm.com>
X-Proofpoint-GUID: mh_bC-muBde4SB37CAlTE-nkUGcCgWwd
X-Authority-Analysis: v=2.4 cv=GIUF0+NK c=1 sm=1 tr=0 ts=69a6ebe5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=zHWNXANJRpzq94LBRZAA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: mh_bC-muBde4SB37CAlTE-nkUGcCgWwd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDExMiBTYWx0ZWRfX8bBDd/i58GN3
 J3yVCrGTZa0lRozuuNdkAAlxWDbi2ebwv7yChsakq1gmjED1yDXibdR6FUG7hS97utm/3cjnRkz
 MQixCXbujppHu61vk3xXbMVFmIsn6CBcNR9xJyWNIA6OrKQVl7ZyJVwip+nno4E0nqNWPQQEEj3
 sX23hOu1eviTnNRWsvY7nQwt8Jj6F82a9DsYDrHei4Cs6boIUBPkEVQSwWyCTIa//R96KF24PVr
 XXaQhdg6keyq5QfKSDqo4RJwer9Vy6N6LUeaHZ5S87AHSpk/kphjcWlMjzpLSdpL9XuDdSMoLCz
 xnJDHb3rZHC+mhYbOPIdqO2bqnAHLej4tmBqzh3RiGWh8SiyDYwNzSqIo6UMqaTgT5uc5fCHVyl
 DL1Qk8DajpQf1wlApTZhXOAD2V83ude6xRZazGFjsjrxfjrQjT9DcGFAG3oxc9LwV4ki17zGJWJ
 uaPXuxUpO1DgNri/LVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030112
X-Rspamd-Queue-Id: A78F91F1395
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-270546-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 02:07:57PM +0100, Krzysztof Kozlowski wrote:
> Add support for DPU (v12.4) on Qualcomm Eliza SoC, with one
> incomplete/skipped part: HDMI interface (INT_4).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_4_eliza.h | 365 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 368 insertions(+)
> 
> +	}, {
> +		.name = "intf_3", .id = INTF_3,
> +		.base = 0x37000, .len = 0x4bc,
> +		.type = INTF_DP,
> +		.controller_id = MSM_DP_CONTROLLER_1,

There is no DP_1 on Eliza

> +		.prog_fetch_lines_worst_case = 24,
> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 30),
> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 31),
> +	}
> +};
> +

-- 
With best wishes
Dmitry

