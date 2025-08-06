Return-Path: <devicetree+bounces-202069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 781E5B1BF54
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 05:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23127189FFB6
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 03:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D04BA1C2335;
	Wed,  6 Aug 2025 03:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XIDjR8lF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1DA1FC8
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 03:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754451186; cv=none; b=NkKmJiRyejB7ozxbeyLRORLJhKn8tVwE/rgNdn5UjEvkYS9JZdFKrywjGCdNjXSGWskSrWZ+PcUetxXh9VsVXayWDo5XXf/KYZAw3X+csBZDpQ5wsEabsN3Q/NVOlBkUZd8H+sMuEaO6/rRqCaXB9Eh8hbER8E3KZ3JskPjC+t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754451186; c=relaxed/simple;
	bh=f7pG9H4432qS9R1r/kzZomzIOKpZCgtoTOoxePgpyUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U7x2ELrPvp0cRc0lIeg4NVvrb66179Nluf5rh58TZFbVEJFKatT9GaP21hpuTQD1+i2mOJNxnm22znmurUUbLbbgDgL0qJjUMQjGOTj4kGJtT02kCwDEL48Fex31TjIB6SER+RqaGmTXY9jDIN35wCSwlURnqHnAjMXlzvBnDQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XIDjR8lF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5761esNw012626
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 03:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=E6ZxrCjqBVtepsO7mQAejcOr
	0b+KcgjVHvwf5asrNsQ=; b=XIDjR8lFhqErTT2U2/ak4Yt42dRDv7vBONTj+97u
	HsrGQ3g4IvW4ZSyI0r23vHX6ok1b67UEs45SnOuTSELlmLEGOJlIc/YMpqHcefsV
	u2z6FgrkxFmC2mdHwESRRX5LNZuZumSWaglAwCSUlYpqrUcMUupwSC/KHz8T2ObT
	6KY2xphjdwjuU6WI9mZBXW4h6Sn5lpuATBOa9WzHNPt0SvqSQqVG8/997ltZ/2ax
	KvYufXxdKxDZ45aZjaIyvBDUHSWB+udPrRWXM5pSrygQJTLJElmqi28jmxwuhDKu
	L6fGrpe+tIkbKAfQhSiUzW0ugDSw/uHyMAzDfWiSkG5DNw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvysa03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 03:33:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab7464e3bfso67323071cf.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 20:33:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754451183; x=1755055983;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6ZxrCjqBVtepsO7mQAejcOr0b+KcgjVHvwf5asrNsQ=;
        b=sDRao2zoeU84cNcW7tcgvnTPU6D9IHVQl/vShHIhtvFIJjPD2B1N+2rjjFz+HhrD9Q
         5p5d8DB0lPVIWHL3G33WOfvmdr8ygcp/Qi1JxG+GQOKaNZAz8aFxiCLJfysfk3o6ZBmK
         mArQ0dWQLQ53FEg4e6o0zzFYyZu8RYFlhINJ0fK/0ioZFDiPYhRcj7Y6/CAfUB7sooYt
         ZmLt/BKb8DYE1w0WKYnYg+6LoLWW61oFC1JbSbuRUYLz3Esj3VlNvLxJGl74N9kd3gzd
         CBIE+6+56b1SU2suzNzSU3pgB49BVLkEbbDJgS/hhARVfdzFvKSFyKrXQ2FZQ4/C819o
         s5Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUeO1DQq5d9Jjf4nFQtk12cCGW0EF6t4/PCDlPHou4I0QcRASWoQ6SuUKwmxI0Mu+E35RFL7572A6Ri@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq6EXdnwg0r+qAiCfWPV7h4Di3OHeltBp7wjqpY9HQdTHC4tEP
	1/td5IDDjiLFNKL+giy/zGyyprb8h0Jr9N8/4kr9HXGmaDHem5X0AO6iWFFMkcDRyjbE3x59r/m
	q8vsqA4kxq3DeS7p/uNh3MnAfosYVyPNh7V0TtIUJk3VBEuXw1uBuT6kb5I+KrCGV
X-Gm-Gg: ASbGncs3j6PNouz2L9vUYxsEkQeZrPVt3OEVYYBOM6m7SVvEnY/826vEnEDU+GoX1Dh
	UkjaWZqQHr81JGgaevHdEOT0UubQEDencK9jSqsaf8cMCm0t+TRnrPMDikB3m2MhVI31/pHqNaI
	T53oP7Srz9EiMV626ko3yjf6KZpCEY1bAn0xr2bMuHlB5pDoSfI+i17Hy9+s6WJDWSL7qpbmWMe
	9elDu4ny/nFMxkqCAIvgGLoJn04R0NuJ4YsvWr3em7q83N5iTEz/j5gtWopoRS4LXVFnYy6Nqoe
	g9SMNPovdzHqr2V/+sEbwOkqKHMpYGqXvlpATW0lmHh5BsfOBBSvhiO5mL25gRBqgnHWpOXzhbN
	AG7A3xjHusF+2FwzK0XnWE27tXEOjLLrvnWHBBVL77RBDAA7AWhhF
X-Received: by 2002:a05:622a:11d6:b0:4ae:cc29:82a2 with SMTP id d75a77b69052e-4b0916256a9mr15640401cf.59.1754451183444;
        Tue, 05 Aug 2025 20:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIwhF9FkF6BS9ElI024cVRv19Q5ymyMG2vkjQdqC5u3HaOqDL9TDsvnsZAVpO/+YTwS4Uowg==
X-Received: by 2002:a05:622a:11d6:b0:4ae:cc29:82a2 with SMTP id d75a77b69052e-4b0916256a9mr15640001cf.59.1754451182812;
        Tue, 05 Aug 2025 20:33:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898bdaesm2164581e87.9.2025.08.05.20.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 20:33:02 -0700 (PDT)
Date: Wed, 6 Aug 2025 06:33:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Message-ID: <akeglwafbtldzbqwudwsogrdw6zsxua7ohzkkjxqrw4d5uwhdt@fdbqudkqwpe3>
References: <20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com>
 <20250806-mdssdt_qcs8300-v6-6-dbc17a8b86af@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806-mdssdt_qcs8300-v6-6-dbc17a8b86af@quicinc.com>
X-Proofpoint-GUID: uRHTbr-1KD8PrpRPFnoi_wyMyZLy-_Gn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX3MxbSviVhP6v
 69RQlo/SAZLcTJRIpl27PKkkhWsMyUgMORlgSC6srv3YMWjhyXqRSdjTw8s9JRnSOMvE8gJGG+a
 Dgeh36ZyYBhC61hObZeOGLMbEMQT4oEJ+SlWYOz6/AT1PuVBokSOuDFARtOeIk60N051RJYrp7V
 jKY/cnuwcYAPA+0aC2GirjM+ObtzXGieAFhc8gbVfzTlOfUkyEa24qERkIvGldPql25h5x9cMzg
 gtfBzURIM9NHKjSz1fwvxGFEwyYqsjcBjp63W7t7bPK+BEfo7eMSTv2TtKwIfcKapldcCarkdzQ
 C/PVZ+Mfa1gStX0fxEPrsmbG2qEp8NhbNo3a7DOCe2K1/V0QbIPnyqXFSyZHGCYWF9qThms6bkL
 JCOdQoQK
X-Proofpoint-ORIG-GUID: uRHTbr-1KD8PrpRPFnoi_wyMyZLy-_Gn
X-Authority-Analysis: v=2.4 cv=NsLRc9dJ c=1 sm=1 tr=0 ts=6892ccf0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=2iKMfItpbZzF_GTDK0UA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On Wed, Aug 06, 2025 at 11:16:50AM +0800, Yongxing Mou wrote:
> The Qualcomm QCS8300 platform comes with one DisplayPort controller
> with same base offset as SM8650. But it requires new compatible string
> because QCS8300 controller supports 4 MST streams. 4 MST streams will
> be enabled as part of MST feature support. Currently, using SM8650 as
> fallback to enable SST on QCS8300.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

