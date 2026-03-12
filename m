Return-Path: <devicetree+bounces-274666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLNfJuDcsmmtQQAAu9opvQ
	(envelope-from <devicetree+bounces-274666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:33:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E3274921
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9F6F13081B12
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B061E3A6B79;
	Thu, 12 Mar 2026 15:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V0pDqh3o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QvuwGDgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26743374E5D
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328946; cv=none; b=ltuVXtEIDclyvlBp8CTEFnGIE1/aycY6fQONRxNLW5ilPXaCtbNc/K6ivuCs0t0KcpLpKzXOWdDReSiB9xXYc51z3WiBRn6jYe0aQHSZVrOmM4GcgGjsrfzPE5qiPBXf/977OQ5px9EwWi2hii82dZ1eO9TWyezxA+j7Jf8ckPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328946; c=relaxed/simple;
	bh=r+3XPkQ+Rr8XrA4CsycaThkRrYA0ZsU/o5rQm7UAn98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CehdoP0fqzuH5hnTLkc1kglJobNsyh67z62l2w0JuVm+wb5wflzH/s743FbD5mDR7XovO5XSeuyhmBzrrtH4OtyH5lHshYjXi0d0fi9HC5QhgmjFoAw+BnVeQcqZDNxBIwuVkUI2BY+94Bu+ziGveH2jkkzhkWHVxpoZqe1jCTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V0pDqh3o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QvuwGDgY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9ZQlc1922483
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:22:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ou1KDdyWGdC5gksK+DQXqel3
	LdAwTgfZ9t0HMRfNjmo=; b=V0pDqh3oHZa23x/rSPztB5KEirzlwR5mk8PjiIa1
	b8R2qt3Bd/t3WslkEw+ZwOGCH3JVi7S9jZpVKy+LoLkQ+TZDyWRqT7Im1Y7FJYN1
	sMyY+QY/p8YkLiIJe5ehfg4vMWVzMlTaxPbSqYsPG3a9T+1SCFAFFmsNi4gI4PAg
	rc8m7dMygHDlTUwQRqLnUp3NMgfQrO2R75PG2YTRFJXmxPOSUJKJTSp06b6ABUdn
	KLmbn7to7/wBCzxJt5Amfad2a0SgVnuflUNXg6TdeCf1DLF6c8U1ipJu5cn67piG
	sGCgQHwD0b5egvKNJZX25tfXPu4u8dXH1Gy2Te9Yr4M8sw==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wtjhk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:22:23 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-94deb62ae32so12167398241.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328942; x=1773933742; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ou1KDdyWGdC5gksK+DQXqel3LdAwTgfZ9t0HMRfNjmo=;
        b=QvuwGDgYoNGXhSICW//9C3ms5AjidFc4L46H69BD6G7iSt23NTm1kpfdNh0HEj7rLA
         Cd7J2VvagoN5BgF9U72s/aaMMANtiihiYICEuhx9/9qrCFhu0nK6laFC13nmbO4Mgmx1
         CFAe5FuyK63Eg2ivOw5yTtpsSj2rfSp92WvqQeOehAaArajENGX/pZO/KHx6iV46nz8c
         Sbgu6NFS5aQPx0ZueW59pW30hkye4+ZuITIRpjJK4KYNE98w4vyIGukDtvbTGEZsP024
         pUpwi/iJf+RaJDBC9m9pj195jlV+BErWnuPZdW9wNHj/yI/ZIk4Qy9iGhr7Wg7Hcu8ia
         tDtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328942; x=1773933742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ou1KDdyWGdC5gksK+DQXqel3LdAwTgfZ9t0HMRfNjmo=;
        b=NeDzWyTMLfLxJwo+/co7tvZbGe42/bkN7UaaCtGlKRkM7WdaMul0UuaijKbgerH50R
         jSEr8iStvCkpDCBTg0Y+a0AU6ggaj4/N17sTfqAVLN0vgo5q2X4d+r9hCjhyRiC5Aqen
         u5mP6BJ3WlOy/Om9PJNTrEEPP+AOl6+71F6sth/xABRBYXjbV8gjqM2PnMgFfRuZwcPP
         SCaKSr0uvqASRmF/ItOPXi27//fQTWeIZLGr12nEy3WpmVqHHMc88YeHFbK1Hynnpj5A
         OckPJoBWztit4mMjltZg5PhDYdFpZJ/KA3+2FPlroU2GHgffAVl/rOQJRlEl+QXWWT9t
         P5Ig==
X-Forwarded-Encrypted: i=1; AJvYcCXa+Bb2Xu33pb4ux+HHrYj7aTR3nfneCHKB51Hy3xkNWcq9g8AEOSNaNu49kgQI6QCS7JJIw0Ep7Sro@vger.kernel.org
X-Gm-Message-State: AOJu0YyXwO2EEsaizBQD+xLVWxTrktZBPwJUr423C05JtztI5MLGVh56
	EwNoobATY1iZqBaT7NgJTi0Ae/2+1nbo2Kggv5u2QGXzSmtAtvnCZOKAToZHI09E5wwGYT5piMn
	xHvPPAqCcL1KH/OPo5OPTBcVVsvyGFoSTJovEzGE8QDa7epB/FlJ6lsCOc08fBSbG
X-Gm-Gg: ATEYQzzRzFwUACC3FnhY8rYe+5bfR80A4SzmPFUnCTe8C65gQSzFXKnrhDcGX0W4DJt
	El6D48pHgfaahuJv/e4gL0z6O9+Zgx98u0fhEXANE9/yIavhUQ7m3fjjtf3I74vrvUpBgOMxkdx
	AJTcV3utn3eO61ekHwCEaJ0N7aLgAl7oNlEMZa/ffu2PWc11qiKRfDE1VkoIh9GRh+HzlCu0KID
	sIa7iFb6d69KiQ8UT/ZG02IO9qtn0c2nE4xzduOQa6NJfE2yMfUjjardewjFcw/eVeGSFwbxTSj
	L8QV1LSGuzphoJObbmFbCz4jyH5lqzuUlFb5xG6hmhJk1BQndkPjN6Vgun4Rkv0cSCxtFhqsDxm
	tNkQXl1z1FJWZBC9sUbg7GJEFX/UR/Z7mGMje3McCqVjuZfl20NwWmIu1TFkfRCZhbVOHSf/QVF
	PAy1jvu/qI+gPusr5wHQQ0fhbyVvUpMta82hQ=
X-Received: by 2002:a05:6102:3e93:b0:5f7:2430:cba with SMTP id ada2fe7eead31-601debf6c48mr2796519137.12.1773328942328;
        Thu, 12 Mar 2026 08:22:22 -0700 (PDT)
X-Received: by 2002:a05:6102:3e93:b0:5f7:2430:cba with SMTP id ada2fe7eead31-601debf6c48mr2796485137.12.1773328941862;
        Thu, 12 Mar 2026 08:22:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156358066sm1018277e87.63.2026.03.12.08.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:22:20 -0700 (PDT)
Date: Thu, 12 Mar 2026 17:22:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci <cristian_ci@protonmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 3/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 display and GPU
Message-ID: <4t7czdplolfhjfccjvildyerd4mj2rildse2tyasz6mclwe3iu@f3qyq2xqm2vu>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-3-aa2c330572c0@protonmail.com>
 <ne3i5tmvperssm4pivae7jhmqzvyy7ftkwnacpaf4ukdqojtha@53mhrxlraw3k>
 <f309905e-6f7f-440e-b463-7bda54298164@oss.qualcomm.com>
 <BP1Sd6YH7pfwUcIQzlAHRokbTdR0TiORnTMO27J1CcPV_O1R1HO85gyIJf_J1szOiMAXn2taMlmC2iUt0Cpr4jKjB7wTeukWuIBFzj5eBdU=@protonmail.com>
 <e6m5xhnexza6fnmz6cczwsrp3ec6n643yjukj64gvync627sl3@2pldnf7ldcpi>
 <TVEaCiufQE0XjfNRlD6DUS6UjDw6nPyHh6ENYRSpFQT0ZD_o5sBH_Albc17WmU0B06PyfSq7elJ0c9C68kjDSgzBHcwYaOPl79XnKBPIU8M=@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TVEaCiufQE0XjfNRlD6DUS6UjDw6nPyHh6ENYRSpFQT0ZD_o5sBH_Albc17WmU0B06PyfSq7elJ0c9C68kjDSgzBHcwYaOPl79XnKBPIU8M=@protonmail.com>
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b2da2f cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=sfOm8-O8AAAA:8 a=idwq_kbngesG2L6DWakA:9 a=CjuIK1q_8ugA:10
 a=TD8TdBvy0hsOASGTdmB-:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: j9gxT0L_MX-E_nnsjuwMIB3OIIXJltJ6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfX9Ex8AqfCFMRg
 KSFqTmKfvBD/wyc6qwNcj84q8IheoXbgmsm1X14D5kcDjBKRHbsC+90l/HbTAQ06Rvd1Vg+y9+x
 hsDfiDnSbvJkj9bxXn5TS33EhzjmDu9Na11hrBIW6fKdAC0TEe6vAgqztVi+cXMlmflMzA8QVIN
 i/XwdcuYa/biR1R35cKPSlSmOV9B1f8x++qmGfpIOiHCwhwuuSXAm9t1tQ00Yj7e3GROdnOtnEZ
 ckT5iwn3OYFSayy2g0UU4QQ5+MtKsgbrB6gkzPhc9Y8m1dFwNBwqzPC+n8oFXdJSxz3vCzANM0H
 grq50oj+jas50Kfurbis1zoUzSZSbDsPoy78KwX522u8UMoouUVxvNVPILwuM246gFtitiIh7oG
 +gFERGDMCeoWBbxE2PyTDOQORcRusGQZMzes8Lc9aYcOnBwvXLhEHt5EcHEG39KgTcPuYqQFshP
 l+cOHqaTK4/2v2c9d9w==
X-Proofpoint-ORIG-GUID: j9gxT0L_MX-E_nnsjuwMIB3OIIXJltJ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120121
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274666-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,protonmail.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9A3E3274921
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 07:58:04AM +0000, cristian_ci wrote:
> 
> On Tuesday, March 10th, 2026 at 23:30, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
> > On Tue, Mar 10, 2026 at 04:42:43PM +0000, cristian_ci wrote:
> > > On Tuesday, March 10th, 2026 at 12:28, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> > >
> > > > On 3/8/26 4:01 PM, Dmitry Baryshkov wrote:
> > > > > On Sun, Mar 08, 2026 at 04:52:43PM +0100, Cristian Cozzolino via B4 Relay wrote:
> > > > >> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> > > > >>
> > > > >> Add the description for the display panel found on this phone.
> > > > >> And with this done we can also enable the GPU and set the zap shader
> > > > >> firmware path.
> > > > >>
> > > > >> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> > > > >> ---
> > > > >>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 80 ++++++++++++++++++++++
> > > > >>  1 file changed, 80 insertions(+)
> > > > >>
> > > > >> +
> > > > >> +&mdss_dsi0 {
> > > > >> +	vdda-supply = <&pm8953_s3>;
> > > > >> +	vddio-supply = <&pm8953_l6>;
> > > > >> +
> > > > >> +	pinctrl-0 = <&mdss_default>;
> > > > >> +	pinctrl-1 = <&mdss_sleep>;
> > > > >> +	pinctrl-names = "default", "sleep";
> > > > >
> > > > > It might be better to move pinctrl nodes to the panel device, because
> > > > > they control the panel reset pin (rather than some kind if DSI-related
> > > > > pin).
> > > >
> > > > +1, perhaps let's rename that pin to panel_reset while at it
> > >
> > > So, something like (plus related renaming in tlmm node):
> > >
> > > 	panel: panel@0 {
> > > 		compatible = "novatek,nt35532";
> > > 		reg = <0>;
> > >
> > > 		backlight = <&pmi8950_wled>;
> > > 		reset-gpios = <&tlmm 61 GPIO_ACTIVE_LOW>;
> > > 		vsp-supply = <&lab>;
> > > 		vsn-supply = <&ibb>;
> > >
> > > 		pinctrl-0 = <&panel_default>;
> > > 		pinctrl-1 = <&panel_reset>;
> > > 		pinctrl-names = "default", "reset";
> > 
> > No, "reset" would not be recognized. Use "sleep" as before.
> 
> so, something like:
> 
>  		pinctrl-1 = <&panel_sleep>;
>  		pinctrl-names = "default", "sleep";
> 
> ?
> 
> Also, should I remove 'sleep' state if panel handles only one state ('default')
> instead of two states (like mdss)?

Yes, DSI panels don't have (and don't use) a separate sleep pinctrl
state.

> 
> > >
> > > 		port {
> > > 			panel_in: endpoint {
> > > 				remote-endpoint = <&mdss_dsi0_out>;
> > > 			};
> > > 		};
> > > 	};
> > >
> > > this?
> > >
> > > > Konrad
> > > >
> > >
> > > Regards
> > 
> > --
> > With best wishes
> > Dmitry
> >

-- 
With best wishes
Dmitry

