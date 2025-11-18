Return-Path: <devicetree+bounces-239808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 900D9C697F2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:56:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 4005E2B7F5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611822857F9;
	Tue, 18 Nov 2025 12:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OTznrsjP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eL01KOv0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA8C25485A
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763470451; cv=none; b=Hfry8QHRj6NUrz3an16yXjvMI5i9YkKLpAFvG8O6UkpsARJ2AlQmgfn7DWYRiVcuw0SAZV1jorKeiKLG1D862ea1GS1l6xAh6GI0+b6Mcd4Xj2yS3EI93GqwVHW4sGLcL3TyYqH+3lBKVG/zRUeDwrdILkKL3zsjVWym70vTnAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763470451; c=relaxed/simple;
	bh=DuS44FqrSwdsN9o3Kl2ivQS3d3u0oobBRnrBf6xZj2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p1eBRcxwmqiLnbuMZQ8OH8ejkoC0G/6/syQWGXu/HJzTrwCH5uruXSRYppV6F2oRymoXgaD0QNhOxAyyfgRsVMBcAG42TJzZ1Vt4olQ9sayNyrodcWtksgppHS+W7ZG3dkyJI5tGfz5N2QqzGQZz3CPkPoAzVtz6chX9vRJAOdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OTznrsjP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eL01KOv0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI9rLeU2664775
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:54:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=knwBM8gjzCjsmHe3WmSNhjxC
	d1wPbIeSMMjROVDpEWY=; b=OTznrsjPMw5+p/X++Rgm6+dwJRTUn9coNAcLK6VW
	H/z7r6YRigZlQ5AXdQfiU90YHUGorqLKX/AOmNvedvicqJXmJvu7fxKnw7MCRi0P
	RgGwzUQGP2CwOMgAZNHcxxV7m2UevOJ+YMSciMxRQ5vmrZpSRp7zK1tf+NT3C14Z
	pCNB2zEYIZm3aGkGpVF7xLUXUbiEEZ8fgJzI1GuUnvH+LGml6612JatkORnsjr2s
	KxF9p+YS9O2Ut523KOHCHoj65Un5hJ/IHV7XOgTvzL548+OvQoZpdPXHKJDHjzMk
	DOsFjRhKgixXOcrBu2whEwrb1zN1Yc93tMv500VEmivLHA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agpjk8eye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:54:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8805054afa1so147699546d6.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763470448; x=1764075248; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=knwBM8gjzCjsmHe3WmSNhjxCd1wPbIeSMMjROVDpEWY=;
        b=eL01KOv06RHSr07vWWIP00lXGogRnTeq7VQOg4MKXp2bFcH5N76zObOjlarph8qQbw
         Q6mNoFWCd5HTlWrPaBXrzKGtQJhVcKtY2DF/4md2g33PAeZCJwRrx6Bz18F27hdZj8lQ
         y2NEDMoOGy0K8vyDYKFa5v/fxg4LnRD8WbSj/gxzScYgtnc+sRK2rYupjtenauVYjHnU
         Vbla3Ifs0R1ZWMzn9lTyK1ERVm7mtFell2fpDdJTzHJ6rIt5iFP23nArPtTvPP6MK7ga
         D7SDRx/iZ4HdtEoHU+XPDBzeJ521YEFMbfCKgQCKnLEQDkKeFNzPY3cTJ8P+5ryWahru
         yosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763470448; x=1764075248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=knwBM8gjzCjsmHe3WmSNhjxCd1wPbIeSMMjROVDpEWY=;
        b=EWUpWf/0DlpndYlq9JhOIGH9pk7Dj6fSy3YZaspjsGtMmIyB49pe/GcTQmiUxiEPiq
         qiffJ+7Kf7ml2XEXzD/YbaQR2NnAUbg37Bh4hY8nvyQ0jqyFJv/1x+/KotNqTBT7yUw8
         LxYtwGcjGF2ybRQf29W09CA2ja1uXIvbaqwDlCOVXOXP8jX8ULNmGfF+aVeN3qjXX4dZ
         MBkQLXsvM+4cQNNX8iZ6Yul3xgDvvLh7/BJPuc5Zgo9dERDgZfXx/FHIGC+heJJZpX3B
         gDRUeXYRcuSAkltHWyrA7x30WSK43MlRFKvqcxHwQNjQuIXSFZW60/GCR8lENOMTMYBa
         qVbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXayCnYf+E0h31t+b3scpJx3S1ACn78eZpVuQsyzPGpnhyrdkfcexCAUQokqd4M1DVLGH1I/GgiC7Sc@vger.kernel.org
X-Gm-Message-State: AOJu0YxBk3yqM88PScla/UGCqt6igq18dIGUqdnXu7sOx3toSYi6ao04
	i7sNlnB+HvK7RjvvTxhzTCrZJFKhmIGTdlfuD/thH2OISdDr6dSQVYVXwB2526Rwc7A9CSPAh9R
	UBAPDZsxBGrOoP7yFKqRFSwyfIbS6UlqSkbrB1Uqv7rej509zDAkGCK2A2rCE4noB
X-Gm-Gg: ASbGnctpKeptI+bkY+k7c2tngJa8Wn5duTbko6X0sJu5hvOrMef52cardzqM0AbJjIS
	48DcNn6K9JrCoX1ocybFj6/XbXcvZbLfilPAckdskXQvuE/s8ZZATCPCBoUCBAJ/IOezS/hGL/V
	PZuO+6boVtrpN8COeiVKZvkKBUDuB6C1HizINZVgwBMlKQbrcfdOrBAx6lVt09bIzc9XvTHzm/R
	ZM6vaPETEF7tTAWXMbsiCsVj78l31Q7I3OgymOtVVWWDinac35QBoqAMWiId/H/9aGBsPoqBfa5
	vGnDEM6HoZRlFK93WKB5cq4dkt4okTwiI8SXZc350r7tYQfTLY2TekvIdaXkcoieQ4e0zkgf3FL
	DdNLe6gzeioLh3tRABxyfXXAY6GltbK/AS55RJGfAhh9XYRwsjfM47EaNmmUj/5dgUxzeO3FoEl
	qQFwdDlVMXOhLm
X-Received: by 2002:ac8:7e86:0:b0:4ec:f1a4:5511 with SMTP id d75a77b69052e-4edf2160d82mr196773561cf.65.1763470447528;
        Tue, 18 Nov 2025 04:54:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1BSGmQOsiNlVGVnqBMLEMjdnWhWDECCBZ5McaUVooeFBMFZy4LNjq9+fVO2TBCiXuFGPywQ==
X-Received: by 2002:ac8:7e86:0:b0:4ec:f1a4:5511 with SMTP id d75a77b69052e-4edf2160d82mr196773351cf.65.1763470447098;
        Tue, 18 Nov 2025 04:54:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce2798asm37452271fa.23.2025.11.18.04.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 04:54:06 -0800 (PST)
Date: Tue, 18 Nov 2025 14:54:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Casey Connolly <casey.connolly@linaro.org>
Subject: Re: [PATCH RFC] arm64: dts: qcom: sdm845: add framebuffer reserved
 memory
Message-ID: <ajsfoahkkw4rbwedkuqmcppg2xjr4gqhmsppajg6njuyxouvso@syrbqmgvxorm>
References: <20251117-commonize-framebuffer-v1-1-e4c099b383c9@ixit.cz>
 <5c1948b7-aa3b-4c60-acf7-64a138450d57@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c1948b7-aa3b-4c60-acf7-64a138450d57@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: pD86dTIOfpb1TvcQTiP6ZodSzDCLKAL8
X-Proofpoint-GUID: pD86dTIOfpb1TvcQTiP6ZodSzDCLKAL8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEwMyBTYWx0ZWRfX5E/tisZFi6U4
 UbT0qwOo/EoDnbeXlz2N7dVABu/hBA4LcZ14aFvIAyoMTYnvXcGTQOvWP5oewgxjv0Ju2WK4tWf
 fQACLRDhjTQr3Jgbz+1Oa/mzFnElpPA4G5LC2G6KKfdtxKZ0FlAsLzkTueZRteKHtnE/Ao5Q4ti
 EwBs3M9N6tT1IXoy/SfKJnJp1DdGrNkNC+9t9BsKlF7mGTxzlcds+dgguvd5+nr9dPAIrNcP8hw
 Chm2K6SogAoiKZiktju61hOQ5ys7vuDLx+rKpHRnESJ5idCK2Dle+xkJ0V7frTc+HIDDTSMQu3a
 mfN8dFKiO86J9jtH8PUyxWEoKy2Jfdwx2v9t84dvju0WmASbT4m/IYFjFqWXJB7Wmq2IVnZe7Wx
 QidWwss/T47UtDrqKGJxUHPJGOzG0w==
X-Authority-Analysis: v=2.4 cv=N/Yk1m9B c=1 sm=1 tr=0 ts=691c6c70 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=iiYmOEhUz_7GOtcYMWYA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180103

On Tue, Nov 18, 2025 at 01:26:17PM +0100, Konrad Dybcio wrote:
> On 11/17/25 1:27 PM, David Heidelberg via B4 Relay wrote:
> > From: Casey Connolly <casey.connolly@linaro.org>
> > 
> > Stick it with the other default reserved regions, all sdm845 devices
> > use this address except for cheza.
> > 
> > Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> > Signed-off-by: David Heidelberg <david@ixit.cz>
> > ---
> > What do you think about this proposed change?
> > 
> > I assume QCOM recommends or by default use the default memory region,
> > but as can be seen on cheza or sdm850, it seems that vendor can customize
> > the region, thus it's not guranteed to have it always on the same address.
> > 
> > There are two approaches I see:
> > 1. keep as is defined in each device-tree frambuffer node
> > 2. commonize frambuffer node to sdm845.dtsi and in case of exception
> >    remove the node and definite it in device-tree.
> 
> Generally this carveout is useful only if you use the bootloader-
> initiated framebuffer. Post that, drm/msm allocates its own

Previously carveout could have been used for FB memory, but with the
switch to GPUVM I think we lost that ability.

-- 
With best wishes
Dmitry

