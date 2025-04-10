Return-Path: <devicetree+bounces-165622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7300BA84D12
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 21:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E0C18A7A15
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 19:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08AB628F946;
	Thu, 10 Apr 2025 19:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gJPX7vmi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6404B28F932
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744313499; cv=none; b=gmQ7piEX/RjGNw/zx3kPmtozxXL0Oq8Bu7pQEYJnYQYLpVGwBIw5xmNssVYWy6Js3RKh71opovBoaADFkDnIE/9wFDzWbOwkhYdnWNsFqmHv1FI+peqgCc+MoJ5rqX+j66bSVj+1G72MKtNJ5lzZQDA9vMa/djlrN1aySgi86DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744313499; c=relaxed/simple;
	bh=nvk3AfBlAGN872ZRTShvqoou5aanO8EBPXmNKMB9Veo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=igyVAlOtguvEZ2fc0q5QTiZekQ/BkY9Jnvihff9PEvHKom5e+kEfgRQ6JdV5wddCR2RxJZwIBdLEIUw8HwEgMAwpT0+ol8STzuwjqj7o4tP6W/Lt6afrG41Su7KvtlUdGDNAql6kjIqq4LQG2LtAuX4Rs3HO/+25eyUGM1a+ObM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gJPX7vmi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AGEjdH028834
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:31:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ds9TtaCY5KQ6iV/Yaj6mG8zs
	RfUBvQFElU18gYT4+UY=; b=gJPX7vmiC/oS5ak4DBfWZE9ixd9+ysY8osoaEgj7
	61edvL7XVE34WQiPGOVw+HlwLzPZqN6Ovu/+GgcvyuIN5Fou8pCocDn5TO2+FidD
	Wz7LXd8COtugpdgTP6aan5mqKNwcaw6Eaf0GjmzDVgUxfoe+yUUEubsrKbMfhYqk
	clzFgiIVJUr3IQAmlTsx1vUQb+nmnE3+Z1hwaqRorXlUl16NxUFATWerVOK25eip
	ptaCjZPDZISJHQ3BhWQxySQSOkRyV0ikTUYkHsCESJy+dyEnlfFiSozQDZaSREcy
	dRWjFRFSY60uxcOGQ30oHZ8nfQ0U31bSL2qbKsBirUC5Dg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbur56r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:31:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2a31f75so351109485a.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 12:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744313496; x=1744918296;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ds9TtaCY5KQ6iV/Yaj6mG8zsRfUBvQFElU18gYT4+UY=;
        b=dnYMhQww+Tifw3CzJ3AzJG7Gysp5Ffdv71zE0dM87tSkU74o/zOWg0TY2b8ejqBEF4
         jcF1aN5kLpDF8uUfSJAJfPLZh+/ntgYIIklktUbjqjc5lpSRBbbP3HPqvqj/ntiPs1YB
         Uh2ART1DXR2IVCMinn5OXYKhg2qfp+B/VbiOEPR2xbM5a05eVFDmvfbT/kx2xS0MyVsh
         T2G5Dh9oyXTJIDFhcJwLINXvL+BggD+AnNUsis7vLO9OiS3I36q5gCnLsWB1yfrKQ0Ph
         ioCSDC3KbZ5XG47RH3XxBodCSOz7CPWaOPArys3tqLqghvrYJtGo5EXM8DbNWg7/PKGn
         6fDg==
X-Forwarded-Encrypted: i=1; AJvYcCXalbvrWs3mVz5yYPoLYf06nMa8eFj0q709/kbzj2jjn1FxEHIGBMIvGLmaUQEvaJEV9UiIoKHs1oJO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1wT33vR5vkucjobvymb/G1UEQjc8P/jfwjzvs8UVZnTZSXj1f
	YQiTChO5NMEpa6xBzo9mUoDGPhTbuWq+Jb0e9UvFZ5HE3rzuJoGubXFnmpnOd5L940PUj+IPQT2
	5pm0q/kSXfEofAvxorWYJ2wQSooIg+R7wVCF/gY2yBYN43anFxywtqN7zOlcB
X-Gm-Gg: ASbGncs2TVcZUiWornslu1LUwvgF502sEKIstDbRIjNu1l3VbPD5n9dGlQrYjtqL+k4
	cMm0d1H/l20k0YrQwLVA0cmTO/3XhH9Y6hbwOIJ+aD2pkodOBvT3xhrL+LRvzabcDoirA1RYgQ2
	xQZEU4A35GjD5hyBuhBNQnwwgIzVCT+O2/BxoPDzmzKRX39xkzs8LT1tNgxT63s0Ud+oFt4dtpQ
	6JZIQwfKUFgEa1oPDE5InmymmJOYz6iCFwYUvUPAi6lZbEspIefVLx2IdADtofCHMFSOEt160bP
	0Zcm0Ry4hLYI2xAbiB9FxlXoUGHBsf5v92L2srADfTd/GLV+9kyJ7jjQb893HYc425q/JEkbphQ
	=
X-Received: by 2002:a05:620a:439c:b0:7c5:5e69:4450 with SMTP id af79cd13be357-7c7af0d6384mr32378985a.17.1744313496262;
        Thu, 10 Apr 2025 12:31:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqctDDvkKrw5rP7GZctwMAOW52noXSrb/QQM/7LagYwEhTOr3WvKjQ5q57zE/X4Pbf9fAxcQ==
X-Received: by 2002:a05:620a:439c:b0:7c5:5e69:4450 with SMTP id af79cd13be357-7c7af0d6384mr32373885a.17.1744313495965;
        Thu, 10 Apr 2025 12:31:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d123d84sm228105e87.23.2025.04.10.12.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 12:31:35 -0700 (PDT)
Date: Thu, 10 Apr 2025 22:31:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anthony Ruhier <aruhier@mailbox.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/7] Support for GPU ACD feature on Adreno X1-85
Message-ID: <zns3xlyeajvxxpubzzsls5tnr7tnp4ws2dwfx4s7klzn4nslte@gpgdfjzm2s7p>
References: <20250109-gpu-acd-v4-0-08a5efaf4a23@quicinc.com>
 <dj256lrkc4s5ylqkqdrak6a6p3v62ckkd3orsg7ykz2w6ugllg@rbfkojacklvx>
 <0d1aaba8-7736-497e-8424-84489c637914@oss.qualcomm.com>
 <dmzoooujjb4zojjlgovjt6lccxilnnc3yr4j24vj4hwpzf5ouf@e6qkdlekcsnm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dmzoooujjb4zojjlgovjt6lccxilnnc3yr4j24vj4hwpzf5ouf@e6qkdlekcsnm>
X-Proofpoint-GUID: uqkhhySDeSD5bFWQddHSO-rH9J4vLJhU
X-Proofpoint-ORIG-GUID: uqkhhySDeSD5bFWQddHSO-rH9J4vLJhU
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f81c99 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=ZR51km1V383oZAxlFiMA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100141

On Thu, Apr 10, 2025 at 05:51:38PM +0200, Anthony Ruhier wrote:
> Hi,
> 
> Sorry I should have gave an update on this: I don't think the lockups are
> related to this patch series, the same problem happens without applying these
> patches. It seems to increase by a lot the chances that a GPU lockup happens at
> start, however, so I could use that to debug the real problem.
> 
> > What firmware files are you using? ZAP surely comes from the Windows
> > package, but what about GMU and SQE? Linux-firmware?
> >
> > Specifically, please provide the GMU version which is printed to dmesg
> > on first GPU open
> 
> I'm using the firmwares imported from Windows, the Yoga Slim 7x is not in
> linux-firmware. I understood that the firmware files used by the Slim 7x are
> quite old, maybe it could be the problem.

Recently firmware for Yoga Slim 7x was merged to linux-firmware. Could
you please check if this helps or not?

> 
> The GMU version:
> 
> > [drm] Loaded GMU firmware v4.3.17
> 
> Thanks
> 
> --
> Anthony Ruhier

-- 
With best wishes
Dmitry

