Return-Path: <devicetree+bounces-230146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1D3C000AE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23D3E1A039DE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56CA3043CC;
	Thu, 23 Oct 2025 08:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hmWBgYYP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFB33043C3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209836; cv=none; b=EADxCn0STBFzbDUOr2525Ty8aPs+j8sDg7fT5WGRBUjKhidFNdeeJxt5K7bTiz22cXCIOutbboHUTRizkep/HEvyRtFhbHq4Sq5/j264H+s2O4d22w8jKxEedKtMJN7qhMbgqdOVo6kuZ6FV/LAJdgM10Uzav/X8eyysCgFoFdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209836; c=relaxed/simple;
	bh=6CnqC37eTbY5VuH8kxQHnEiVd9ZxJjZ6l7vkM9Xeaxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I9U70leyX1ziZkshZicv0dJnPCcpn1dUIY24VHxRdHsS1lPsWU4rrfpGDIFxu20+u4SWcBKW0tT1Ms7xG0WPX5lMkQLyAwGwpMSsDS0Kxy5eGiTdByXPUYdUqgRElCgbWb9BbK8Sl1z8QgQbttipN9Gr5CiNvYlJkCMKsTu9pQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hmWBgYYP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N8T7Xe027485
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:57:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lNE18kBABKPwFEGxjEK15XM1
	n6QIS5Dy2gILjWbl5oI=; b=hmWBgYYPMNr0aXe4kDE73cLq6UrT7cQfheOL3949
	tL/IbSt+IPPQvIwMYJRpZllCA5YrsJF3jIz2SwKesiyC7fTRP7czgo3Y0wUmfKmI
	B0w6nCA9eQIqnkqbdk17wmgQlfaTg4zosMnHNDzhstqxqpuQ4OeSxk85bvibYdoC
	9BI5LkVGlmWTIpgP41oqKERoL5ZP8edJv65j0WOtMwxT7jkfIE5F5VLtcCjmGyCy
	ypLbvbd16ESkz/huYlwTDaZzTj9pGJBBbbM1OrYpFHcqgYewp8b0u361Yh1eIhap
	ozvQ40VMKVGmyVjdu73MaUZxdCFbtFNpQvj2UQHFO2VO1A==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5249w9t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:57:14 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780f914b5a4so545283b3a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:57:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761209834; x=1761814634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNE18kBABKPwFEGxjEK15XM1n6QIS5Dy2gILjWbl5oI=;
        b=XvwGRG6rohakRIVnO6Plkjj5bcJJe7MaExcMLsO6x8y9n1dy6ePldZsAv4Pt02XMaO
         lFbciQYuMRqoxkWnH6nz2FCQCOZpsHXURsYO3LMeGMaTgPbi9XhU/b+QSSjq/HtqMARM
         ppUS1h/EhBISDS5AEn4vRT9SKeJgEx0PlTHAx2sTmzB1u2tZRJetMNyR4szrsP7WbNYl
         xepRvWdaGxa41p2/Ju1xFhg5xxm8h2RaribA4P1bKLhu//D5z0gUQvvazcrldAPgNhEG
         q4mIseEx9vF5onWzxGpZH1GMAlvODz8ofgSfMZTR25EHBd9DBCwmVbhhPj6E3hVzVYNX
         l0oQ==
X-Forwarded-Encrypted: i=1; AJvYcCX12M7C9MpvBZzBQxirEE8JVJazO6gkyOp9NXsDMCE2tk+y3mvzapyVc9OkC96XPcyHJhq8l1JwgWhs@vger.kernel.org
X-Gm-Message-State: AOJu0YwkEkcNOhgcNfyQbrau9+xhysg33LPT3dAIeAFBsxn47Lg/JLlz
	OSK+CnjWUq/DZ6BOvZJjDZmMnYvH8pP/uWjTY4jWxbJoJC4k4FpYolO1pXwwGMLYlrZAQ4GYF0o
	5dhW8WX15Lq3E2SGjU+kqQU7D9ULyTJI7FDer7EiE7m1tvbxezIBIXRj5pR30+Hd1
X-Gm-Gg: ASbGnctxEd8iKF0Ph7s16AKml79pTKCamNVC2O0GBmoYDXoq/hne2IaA1GB90W/P8yf
	WZV/zgJovYkWq4oDGwhRP6eDApliZVbsO/mVCfTnD0g4aEDubSXoasFNiilrX3AzYovOObgV6Qn
	WD7hZF8uAJqTs3MYbaHFqHQ+4uocYzhGFloJa5u+irs+xkUlKdkkIytkL+E0sa+fy80yORuUHwg
	Q0oa8yu655G/2cb9k8Oe37gJsjMAhT9+DbxU5FHq31gadcLaEYAtyau3e57awYh1DNU4j7O1BlX
	5TGT8E+pMwdSljPlbWXpJ+MEyujMa8Tn3gR86fVCWFIJNoDNKnfvVH6vRnayLjHLmm18GlH9FS0
	QEteeduIyhWwAQ+a78cKflsXwVOou9YtHzRYcWESl36yo7+Cp/3SdiA==
X-Received: by 2002:a05:6a00:21c9:b0:781:1a9f:aee7 with SMTP id d2e1a72fcca58-7a220a5e607mr31700928b3a.2.1761209833634;
        Thu, 23 Oct 2025 01:57:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTrMxusQO9d3YWrx7AOvOf5y+PUG892+AnS4bSXJmEY45o17kf1UUxWKAK1eYBqr8xrk+JcQ==
X-Received: by 2002:a05:6a00:21c9:b0:781:1a9f:aee7 with SMTP id d2e1a72fcca58-7a220a5e607mr31700874b3a.2.1761209832869;
        Thu, 23 Oct 2025 01:57:12 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274b8add8sm1795740b3a.41.2025.10.23.01.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:57:12 -0700 (PDT)
Date: Thu, 23 Oct 2025 16:57:02 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Subject: Re: [PATCH 07/12] drm/panel: Set sufficient voltage for panel nt37801
Message-ID: <aPnt3quCWKLh0bcp@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
 <4f9573d3-41a4-4478-8c19-39716b29f587@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f9573d3-41a4-4478-8c19-39716b29f587@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX8uXqgLLG5zu3
 K58yLPS7B1jTuGCoXyRJ/5hIVjXg8vo+FmBcZYW09vuCEE6CrzBM8AB/MZVgdWUOWhJGnzg/Vsg
 t1GbYqjxv5tFuvmCWVp0ggEW6oPCA5yX9wCUA8+wj8ox87abdojbb8IsHYAHP8oleA8smjIdRTe
 DaI34g1FJ4STAaHIFabKjZmSFVaWqrwioIvc70a7Wflp3EdqOr6+l73c3XM3tW/LVan2P6m3hV5
 mPpynEPkH0ZU66LvcUHQcXsF2dZaXrFwo9PAt7RAKstWMEiNZoHUsStZqioRS1iUbEQ53xZGMku
 DjMwfc/I4UH6Gww9fh1iPcmjV6WQXEt5pLap8+bAXa9QAp8dDMtjtyBhKpIPXORPsXqLQvkJ6fE
 NkB+IDtge7XH+6wgnjrcu0Mws9nITA==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68f9edea cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=C7owiK3y1AEyg5OQH4AA:9 a=CjuIK1q_8ugA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: sZBOYyapY_y1wNRDTVn9Wii7PyadzYzl
X-Proofpoint-ORIG-GUID: sZBOYyapY_y1wNRDTVn9Wii7PyadzYzl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

On Thu, Oct 23, 2025 at 10:22:12AM +0200, Konrad Dybcio wrote:
> On 10/23/25 10:06 AM, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> > VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> 
> This patch should have been sent separately as it's not at all
> related to extending the msm display driver to support Kaanapali
> *and* it goes through a different maintainer

OK, get it, will split panel patch.

Thanks,
Yuanjie
 
> Konrad

