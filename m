Return-Path: <devicetree+bounces-233002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E8C1E232
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 03:33:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D4BDA4E2738
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 02:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4EB632A3FD;
	Thu, 30 Oct 2025 02:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KqLa576G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cg3GdP8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94EF329C5D
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761791610; cv=none; b=lSFUXXJgyJtoWBKGveXiWjtGLQB9urvtWGPvV9hKkJwTfVrKCakj/ekek4HW8T2HUr0SjAFlB8/ewotuocrVhpVtaaK4Spey/R+G76gxECVMVYsJ1baWqGExrdvBdvN15J4De1wGrSzVmrMiwa0PPCuj+20dLo6jhdcDtTsOeFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761791610; c=relaxed/simple;
	bh=fXw7zBhHIr5vfTBHJdVciK57oiNhDP1bmyB8vN6GywI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CgdZn13TTgx0b7c/PFJw1olmPtZoNmT3ommUyoqYkR/4ZOfB//bVTgor0YBIH6CH8ti6KafCsapybu3Pi+q8b9OtiOBpeh9a1i9juXYTScFfrZVHd4KjgumAS3SP6VXEHraK1WypkhTnCiHiqDBQMYQb2+rGD/ltMYUC0TBgcWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KqLa576G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cg3GdP8l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TLs0bI568009
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:33:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ntHK9vxhminoglXJfxZX7o01
	Uc8LpengHLNaWyUigT0=; b=KqLa576GQs2Sl92ylUs7z3iLC7DxRQ83BJQ3wO5T
	CMRGAlL/E5pXBXJdFvDZ61vloRvIKLWoOomhGALMgT4ibA/PZP43eStYj9YqYmct
	cqpesaP4pBoc574NM8I/JNjaSbFm/DTRTWJjCpcM9ZkGVyEN2+H5EpV6CAuVJSHT
	kfDI+XI7Fh5iqsP8AVgRuZKoCJr84QjeI1YPWqTPCeHvjcDCCtkmoYE8H4zWFsKS
	U4vIEB3hqq6TUgP3pyXnigJ8NyJPfV+wvMO42Jj3gkAgAG3i/pkj8EPue2KKwKxv
	aK5e6s2znwbo0VsbvyarSvbk7BYiRK9H4KDCtpFr7Xrc0g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3m0bj74x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:33:26 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ecf3420ce3so11595911cf.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 19:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761791606; x=1762396406; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ntHK9vxhminoglXJfxZX7o01Uc8LpengHLNaWyUigT0=;
        b=cg3GdP8lA3nf7cYguD4YII3FV1NoxtoiXAjpD/oN1KF+u2iU9ofe5qY4P0DzBdppDW
         UsUbykfgX6/hxzssJJpypQjz8Po5TYN4T0i77+c6RJoJKQHLo4Na81XtcIG0tF0sqRTl
         3cbSGLrRg4IGm5nXVoe5C3fuv39+FCvLO3I3EEItdJzjJyB5X0orIl7d9hhISE7WyY9T
         QadIpIuva2cYZtCkHTsn3WEUYjSZPAj+7hsF1nS6uoQuELQMg56hZxx/E24Zo2wiZoSP
         QRBUCNCXu9nn/hOshiAgX/GIxwCehhzwhiORRDrMxFlIaphzXn7l1sWTJsAWdjDHui65
         2xYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761791606; x=1762396406;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntHK9vxhminoglXJfxZX7o01Uc8LpengHLNaWyUigT0=;
        b=K3DAZFaIj1CaJ/zf+9eBNn/WiHRX5E0xcUrlWTy2KUe7BBU4Yu/8hnu7kx4r+cjrtr
         7JCzGGpzQIghFVyhiJiDLWoLYO8Ne+OitieziQAqOXoWUip3sJZeW0fXV6fmRpjPp0iL
         dpaxMjOCuzAzao6lNbCKGaAZhan/5cqSUu4p5ZyIXh2i8Xu6g/FmuL6l5vSy8OcfRnbk
         StC3bKQLiF5+OZj31H93zRQXmVt4Y8jZ0+cAixcOpLvYGgzhS/zXRKJb0mDui5agOOae
         OkPX7qu0yk9cckvm5cPc5peVoUjWuV8lAwhSd976qoddomPdMSxybKsRjZWkvtshvUFi
         j46Q==
X-Forwarded-Encrypted: i=1; AJvYcCXcvUUOsW4r+FoCFK80ZdEs54pJe/4zirQL6YUnvSI6P5hvx5O8wH6216haqik8HvHW6BeCS3ItdwyB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+K9DZAg54x+1HixjHc4UIgaz/sHY00qloDuKQXYldEH3EsSYW
	+qax3tav8u7dWgZBuHHylXBZJ3bWIFnc2UU1JOwLp+vv+yNGPhJPlaO63oj360qWqoq6bYmyrAd
	vbLPil7i20aceKPMxD2KLQ3cffCJ6h5/U6VLRAdb08VmxgUgkcBhmQLBtmEh26SVG
X-Gm-Gg: ASbGncuKyrj48gSOq2hR6nqMP1o49DK2iWPAKRgcg9EZD6vtrtpYesNkWzueSuxiMJg
	xEWoOI3pVdl37TSID1JvuKTeITt1Tx6TQ4V3k55XMSZ4sEHPWhvLUaxUK7bNr/2c+4d3K7tUwFL
	HgAgcjwV00mnUqbvbEqvyCQZaMK+vpOhjmhJbqLageTTY3ihbgu4kErhlD9pYf2Jgg1Brdrb0o7
	S/7Ff1eGxrNtFLbpSyZLD1a1VaoaNBM9n0+qJ5RESUsl9ix/Id9tlPzOSfgK/THfv9ZF/epYvwi
	Q/pyeTK/3MeF9mY9s+N2vSVtWyc0jF44a0b6qrEFv0353WYAdS0HxvBVKTxuiDBB4/MY1Mu2+Z7
	Ko1OljrXj7+WsmmlONYhPG7Jgqs7tasZcUwzZUI1fUSyD0f34busAeU3iHRov
X-Received: by 2002:ac8:5acc:0:b0:4ec:f9a1:17bc with SMTP id d75a77b69052e-4ed15bb1f61mr53768081cf.5.1761791605757;
        Wed, 29 Oct 2025 19:33:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH62Xw8UczlTHR5mIibSKtnyEtT1gApL84hMtZ++sQ4IY5il5n+hfMOijT0cJsyTI5gYuh+Ew==
X-Received: by 2002:ac8:5acc:0:b0:4ec:f9a1:17bc with SMTP id d75a77b69052e-4ed15bb1f61mr53767891cf.5.1761791605240;
        Wed, 29 Oct 2025 19:33:25 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4eba37b51c6sm103962621cf.5.2025.10.29.19.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 19:33:24 -0700 (PDT)
Date: Thu, 30 Oct 2025 10:33:12 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 08/12] arm64: defconfig: Enable NT37801 DSI panel driver
Message-ID: <aQLOaI3ngjswi7kd@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
 <wuh7agcgg6spghilnx4amqukaaydj25u7kbdiod7fl6pu2ulvm@pmosyuo43cyw>
 <aQF98RvLuOlJZlFi@yuanjiey.ap.qualcomm.com>
 <38c8e26c-08a4-42d9-8f6d-93969af90d50@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <38c8e26c-08a4-42d9-8f6d-93969af90d50@kernel.org>
X-Proofpoint-ORIG-GUID: PhQkfYMZPZLQ-x5uG1G69AsnnvEhehbL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDAxOSBTYWx0ZWRfXzY6XRhxINheX
 BH1WN29XA5hWeOMsTpbK8DsD1amjSSuI47cDCONsynR4AxPs4V6PR/V6ILStqWV8w1U4HRidDEk
 OgtNYEwd3lIjzafOZAIDH3Tu3ang6fI5dUb3dfOmNwj5+g6up5yUbu74oQZJMPPcBR4K+UuTtdX
 0FQn0OGZzIYP6tEK2MEVO9C49TX8bjFoGN47asc6cOJMRh1cemF5BBIUwtYBelsTrLhf57lq8HY
 n/e5iSEr/BeslHy4vsEHYKSHQ4uhj22BZSnv11Lz+fBLFOkUwjjaQu23ujFpkoENKXH7G4d8s5z
 cJk5uNYDCrXSHJNzjkP7bSJng47k9EuJRg7eJZ8xI0FaHfwSItEA7nKn1iMD4EUkw5PdL42OzI3
 8v2JzeRO+jJhP09CHe7dutR3Ia/X/A==
X-Proofpoint-GUID: PhQkfYMZPZLQ-x5uG1G69AsnnvEhehbL
X-Authority-Analysis: v=2.4 cv=YLySCBGx c=1 sm=1 tr=0 ts=6902ce76 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=n00Os9SHjSpe-nC2C8wA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300019

On Wed, Oct 29, 2025 at 02:05:20PM +0100, Krzysztof Kozlowski wrote:
> On 29/10/2025 03:37, yuanjiey wrote:
> > On Mon, Oct 27, 2025 at 10:51:23PM -0500, Bjorn Andersson wrote:
> >> On Thu, Oct 23, 2025 at 04:06:05PM +0800, yuanjie yang wrote:
> >>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>>
> >>> Build the NT37801 DSI panel driver as module.
> >>>
> >>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> >>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>
> >> You (Yuanjie) authored the patch, but forgot to sign-off, then Yongxing
> >> provided certificate of origin, then you provide certificate of origin
> >> and send it to list?
> >>
> >> Please correct.
> > 
> > All the display patches were jointly developed by Yongxing and me.
> > So every patch 
> 
> 
> So two people were working on this absolutely trivial defconfig change?
> I have troubles believing this.
I want to say these patches I am first author and yongxing give me support, so
I think yongxing is second author.

I want to express my gratitude for Yongxing's support in every patch, so I included
both our names in the sign-off for each one.

However, if my intention causes any trouble for maintainer, I can remove Yongxing's
sign-off from this patch.
 
Thanks,
Yuanjie

> Best regards,
> Krzysztof

