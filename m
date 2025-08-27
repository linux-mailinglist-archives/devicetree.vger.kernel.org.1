Return-Path: <devicetree+bounces-209706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD666B3878E
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 18:12:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94A5B1897C8D
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 16:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9133451CB;
	Wed, 27 Aug 2025 16:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S2tooOSH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BB234A32B
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 16:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756311140; cv=none; b=ZMJAhBPbc1lZ3JI5bJRHTziU/C2F3IvdU7qASeEh9aK9lKDhmhPunPy+GUsJfPBV8sJPYIZQzQQxRkbRgnRTWzGj+Zyuejn0wU6sazUOJFExhcM9Wc9jbjQVLLbhgCDUDq5dzSg6LMrqaZgjrynMtwhbfvhP0FaAu9pOexde5WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756311140; c=relaxed/simple;
	bh=750cOqZxARFI7wMXGRw7BUrxICd1tIMVtD3N2B9NWn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OfKxnsY9AgijY6978n98cFgZ69/gUXHJUPTe9PgxyoecJJUX65d+FG07t2iX358COtJMzkUfEv3TL6Z2nBo309oIwiyh0X/Y6CFPBG0gPuPiVynilWRnSQfiM9DEC8qLoaLtu3jsryqAs4fjmfL+XUlqqRcXjRr2CmB+BrYqBCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S2tooOSH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57REuMV1001292
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 16:12:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UG7xbcS5Tii6txkMjvrtxmVb1b0CdEdYm68Ud4Hqmfw=; b=S2tooOSHVLC5jxH+
	5USDj1+Mi/aN5PSszo1VkCxJsEZp/x2NNSseIlr8mFtMLZt2Z9bTIhx43UIJwMI8
	XuSGehcUGTpAOnkZNGFpS7iyGXS8sDO0lS/DWDLX0Tn0fCOhNEzdbeFX/lvP0vh6
	aRnaZg1Rrbby+gHpjcSypvx1yjLPXcrNCOOGhalKV+MKRAsoSICM4WC9Ka5aiWZS
	ElUMcr2afmOO+pnp4wlqhwDeVQrUke27BL9fjUqiWiPlNML/Oda7a91QpfD1twCt
	Atn0miSKh6FSqzz832FzCbmbnd1CyqRCosKWTC4SYhjU98z8E7SSeezbCp/lvdub
	ZGo2Yg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48t47b88br-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 16:12:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d7c7e972eso1664586d6.3
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 09:12:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756311137; x=1756915937;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UG7xbcS5Tii6txkMjvrtxmVb1b0CdEdYm68Ud4Hqmfw=;
        b=XjXu4lQXey8RBPKIJiNt/5CJ5NPoVhjh8n5/IBhQYOCr0q/IMNMF/1czyVBk6SWXSC
         GAU6riiZX5Cxvn0p/c3S0tpWVquojnPPIeQ0fd8lNjlyiLSLwnXIdwnXsD4NtRXe9RdF
         H7q2bEeByqSwV9ap48ps/Vgm8mqXJ1WLBgaInil5ae62YfFXE+SZNFze6vWLaskt+VHB
         UabKO64gkcbTZyJPChvyVkK5dWtCstwz9uy+b+OcfY2q3W39KJJki00nej/UKEg29iUG
         4yeYabbnC4CI2xUPjeoL/utVhVT3zMdVaoypnYeAptVkjfuuaNujRqGL/8LFWaEzkHVh
         nh8w==
X-Forwarded-Encrypted: i=1; AJvYcCUcmYSP6heGfx7xtN6MKgICW38bLsKv5seqajTHuZSBwCkdYIOU2r9Mzxgqc6dHq7gzqDFFmK+gyBYJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/ObsK2xB87QmuNJQUq3vlxooCEHHNG9wjzQqiW6ognzpvSazz
	fKF700SHHBLg2X4ZxLOYx63ZN7DQag+gQpNNvFXElXNvqMNdl6Ek4L+mCfgxwZmaaX4XvxmRrmQ
	/Lg7d19Xu388qCjpBtwewEjHF7iV4PJd1vTxlp41yRklMCgMkI44XgMJ36QPdDuUK
X-Gm-Gg: ASbGncveVxwNbGmZj3uIu2TqNvZU+BfQgijnqpx8RvV1kf3r2y6HHbWhq9Nlg0SaRQk
	tVfJjA5RU/cWAuMqlH9sDefh00MoNSKkr+aBRgWw3xH1WJkX5+7ciJ7Ha1uda6I8RCA0s7xIY5t
	6FVeEcRkFCPwkVseM3YEIvzrmxi9HTvSInEBwnJ0PgxaUyjc7XnJv3uoDlm0KnOiWMxNt1jcBgf
	xnAWC1ihJ3N9JFPrCZ0lREwgSM5WAtpiJAYInELLu9o2536xHMs/hrZW91x4dBnbLg6I4FvJtXC
	Pr3Wppn7zILiWXrH0nFu1/I62oUl2bXZZsJhf7aYoiFeUalNNqL6KdHFgOPVXGpz47P7JHAeVAz
	64A26uNZ/uMxzwLP8w5TNv0Uj1VLxLwLTVySo1W/XEjoejDQmIFGD
X-Received: by 2002:a05:6214:20e6:b0:70b:acef:3c85 with SMTP id 6a1803df08f44-70d970976d8mr247393576d6.4.1756311136440;
        Wed, 27 Aug 2025 09:12:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtHCsOyM9I3rbi3EujqFjTjTxiDfCaPiXddil+SIYuI0DqIfUpa9RqPP6k9YnaNKG73ul6bw==
X-Received: by 2002:a05:6214:20e6:b0:70b:acef:3c85 with SMTP id 6a1803df08f44-70d970976d8mr247392546d6.4.1756311135723;
        Wed, 27 Aug 2025 09:12:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35ca7437sm2866204e87.146.2025.08.27.09.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 09:12:14 -0700 (PDT)
Date: Wed, 27 Aug 2025 19:12:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <hy66bjkygfz2qdhatdyxpw2cktaeohguwdg3ydowubarqebfzr@2rjjxghmhdya>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-9-a43bd25ec39c@oss.qualcomm.com>
 <3pr7ninjxr4pgsz56dr6ojjmx27fzzszmtt6mx4r6qaqt25tnc@nrgx5qiqc7z4>
 <9bf7f51b-dcfb-4ff8-848e-dcf144936f2e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9bf7f51b-dcfb-4ff8-848e-dcf144936f2e@oss.qualcomm.com>
X-Proofpoint-GUID: gMZSgPYP04h3GZzAj6gD5RDX4oir8OBG
X-Authority-Analysis: v=2.4 cv=CYoI5Krl c=1 sm=1 tr=0 ts=68af2e62 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=D5wNQ9JKZfep0icmKmAA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: gMZSgPYP04h3GZzAj6gD5RDX4oir8OBG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDEyOCBTYWx0ZWRfX1XuhqMV7ofkk
 mr+nv2FamzHndfMhmt52Q2lucxb6Y9vLuzjgmnkKplOrTlNFuzsJs11/wkvsnqK2EhukHUux8WT
 cXAZr+CA6+Cp5f7z5GZxtOfIl6O8LAdOt5rMdinn0YG+yOybZWTUGeVCm0iPmDYhsrzOjwW9jhi
 PC3AB8Yt6K0JTSpWRRHyLIoU2lkP2Y4B274fq5Qm0UqbR0kXLBebk5GJp1xFJmXga+qbLKdVb5E
 AY35GZn5fq+EU3HCkKlu/LkMd2yJoEh5lA18dl+ApJjfjxLXwYPW2RFJ/FCHZK5+A662I9RjvjM
 ex37RAkxE9blxUPS88vuzZ6Nvu5q4qlHZuotpfg8nV1p3Sa6KOoaJ3a3JgiASLlJxTyW742w7li
 HOj4HHwB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508270128

On Wed, Aug 27, 2025 at 08:17:39PM +0800, Xiangxu Yin wrote:
> 
> On 8/20/2025 7:45 PM, Dmitry Baryshkov wrote:
> > On Wed, Aug 20, 2025 at 05:34:51PM +0800, Xiangxu Yin wrote:
> >> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> >> switchable PHYs.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 163 +++++++++++++++++++++++++++++++
> >>  1 file changed, 163 insertions(+)
> >>
> >> @@ -1095,6 +1248,16 @@ static const struct phy_ops qmp_usbc_usb_phy_ops = {
> >>  	.owner		= THIS_MODULE,
> >>  };
> >>  
> >> +static const struct phy_ops qmp_usbc_dp_phy_ops = {
> > Please try restructuring your patches so that there are no unused
> > warnings in the middle of the series. You can split the next patch into
> > 'parse' and 'enable' parts, then squash this patch into the 'enable'
> > one.
> 
> 
> You mean it's better to define and register new functions in the same patch 
> 
> where they're first used, to avoid unused warnings? And for things like parse_dt and phy_ops,
> 
> it's fine to split them into separate patches if each part is used right away?

Yes.

> 
> 
> >
> >> +	.init		= qmp_usbc_dp_enable,
> >> +	.exit		= qmp_usbc_dp_disable,
> >> +	.configure	= qmp_usbc_dp_configure,
> >> +	.calibrate	= qmp_usbc_dp_calibrate,
> >> +	.power_on	= qmp_usbc_dp_power_on,
> >> +	.power_off	= qmp_usbc_dp_power_off,
> >> +	.owner		= THIS_MODULE,
> >> +};
> >> +
> >>  static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
> >>  {
> >>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >>
> >> -- 
> >> 2.34.1
> >>

-- 
With best wishes
Dmitry

