Return-Path: <devicetree+bounces-159435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 524A8A6AD37
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 19:43:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97238883E23
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 18:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44623227E84;
	Thu, 20 Mar 2025 18:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZXuv9jgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD712066DC
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 18:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742496221; cv=none; b=e61xixZgWl0wi6QSJtqiKmaKoJOgT5mmlfxq2naqnOEXExl4+IIyVX9KhQ6a75B8uBm1ChiQ3KCcpOcxs9pRC8hnccy64QdyL4U+FqfmnzKCPzz/htOMLFLhBFpL7lO4vqiQNrl1gIKl9upRVHKJRdw/jW0boOaDue6PK4hBO4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742496221; c=relaxed/simple;
	bh=dEY62deIYUJSirCrYOMEElVt/Ji4rW7/Q6uln6aIjzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N3oV7tod5tijirUAtQlFqfsmkHR7NefKIXp1bRNAfeitv6Vy5JxmsUSbKO2AIYwvOo5jwsVIZzahKlzlGM+Oaw4RVvhpM+bdPM1Ed4i1k45BNwH+8YeKP8WDCMLcp1uX+/7ATkCfl9lLzRBGUKJnEfXH0/2jvRSjbQ4uoWiPiXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZXuv9jgV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52KEWN5S025453
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 18:43:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+ONx5//4UtMuIj9b1Txh1pQb
	rcyKh3E5jAL4BLqN58w=; b=ZXuv9jgVgoDsC5ZU/SvLq5mJ/aS08aIE7x3Zn3Pw
	xIeU5FTc0FymB9NBjJcdnNJAhwIiIZJt0EfvfiR6YVSiNytJcIXwaPZ8znu8e4No
	AwmlBpvDTxpfDDWUeiWRyDGBoUNbzPpOl1WtzwsUqrmimu5pWfzCGChzd4g7qa91
	ZJ2rADlL4xtDjl9ciSD8zmQ/1EShl8BkykG/o4iqyjED8Dx85/CeyJ2rHt5wQaFf
	iNDe6gQSGx+7xVIg6IKxlvIRHmAqyd42VhsxeN2i7bI9w2HPhI17Dv/kObkstrok
	uWBzHerSNNNKMkFzSbo7lqT0kWnr0VraKU92q+fOfY/Odw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g15y41yf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 18:43:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54e9f6e00so393127885a.0
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 11:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742496216; x=1743101016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ONx5//4UtMuIj9b1Txh1pQbrcyKh3E5jAL4BLqN58w=;
        b=N8Gj4+ucQkNla2IRlRh1ygxT0Te4c6raxt1J8h/iVc4X6PMVMr5PL2UVpvY8kByzqB
         2WyODyv8zmtBmcxMAssDsHY5fynTdo7BdbJJK4VrsyS+4IoKz05ESFPmFevfx4HPAD3g
         azPuTiXtJKHOtPVpBlvdxoLLWdcJ5SOrVNJ0+R0/4Rv5/MMCqWIxrOe4iT8bn3nVdtvB
         lxuomm/UY3cDjxrW32x5k0dlkce6NHjV8t5sCZmhxAL54VF06jHSL0+R3OaaYbbYafz4
         M5scEGTAT75+T5tptY3C2mESX+VFA5P3UdzphnNOWwtFuA7/K4SZHINPwsU4qsZlfim2
         ghzg==
X-Forwarded-Encrypted: i=1; AJvYcCX/HV2FtHnMzJJnrFdNfNYIzpKBYrkB+nIf+A0yCTF0oNZJ1eFXcg9ZdGRN9ootU0UFiNiOxDIb7DFb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/aoRNiG29xx7mnAxI1FnCoZrDjuIv4JpjgQrBe0XJfSbWDraO
	G1FXdJD199eIZp8RCWh8U3B9Sgb27QPKn5Js5MsdCcx3WZ/Qg4ByBaTE6GIZ1rCdDWGcg6daPga
	Dm0LkmvCDh0j1DFGG+khENNmCum7TKSidDNRR71mnKYd/MnK90Q3Ve8gT+U5P
X-Gm-Gg: ASbGncvO4JTLIZl44Xqb/k9C324kBSEptDwPa7/ccTSAtXiNP/erXLoLPb7X7UgAcLM
	/zjxyRYd50suWxhWfzUjDXGVLvnHmeTj6SwdXNaWbYaimh3plBPCe2S8Oss7+DEUd5tdeHjPaoL
	RrBWk1rLfb9gIgq6XojjzleQESLjtpls/t7XKPPBI9N6SDdUcFSAV5e9xxkhgnWpaCbv2xj8cYD
	Fijq4KpbMAboTPodmUfgwe4Xeya1tLWxoF1TO7/q6GukWdVBXla2EBXMnDCYdR6OgmDqO1XUIH0
	uPG47MsHdgTka0M7StG9cZ2n6dZZQchMSnx+aEsYZAlAq2/9ZEXwWYWq6v2BOArSOUCETgS0KRQ
	hlsg=
X-Received: by 2002:a05:620a:2846:b0:7c5:93ad:d2d4 with SMTP id af79cd13be357-7c5b0505fb7mr790743585a.9.1742496216639;
        Thu, 20 Mar 2025 11:43:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIOpxyiAffu/h19LyVC1go0TlaRx2On3Hti1oWXPswumXindR9aN6vgdysZcfnA+vAuG/pvQ==
X-Received: by 2002:a05:620a:2846:b0:7c5:93ad:d2d4 with SMTP id af79cd13be357-7c5b0505fb7mr790739385a.9.1742496216221;
        Thu, 20 Mar 2025 11:43:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad63eedf2sm20268e87.0.2025.03.20.11.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 11:43:34 -0700 (PDT)
Date: Thu, 20 Mar 2025 20:43:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
        gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
Message-ID: <qhriqbm6fcy5vcclfounaaepxcvnck2lb7k2gcpbtrojqzehua@khv5lwdgbysc>
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
 <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
X-Proofpoint-GUID: b8QQJegRrG-4JbgQ9U1-wR_4GtjJ9KWw
X-Proofpoint-ORIG-GUID: b8QQJegRrG-4JbgQ9U1-wR_4GtjJ9KWw
X-Authority-Analysis: v=2.4 cv=VaD3PEp9 c=1 sm=1 tr=0 ts=67dc61d9 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=QMmaw6yphwjc_7Rvn6EA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=933 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200121

On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 20/03/2025 09:14, Ling Xu wrote:
> > The fastrpc driver has support for 5 types of remoteprocs. There are
> > some products which support GPDSP remoteprocs. Add changes to support
> > GPDSP remoteprocs.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> > ---
> >   drivers/misc/fastrpc.c | 10 ++++++++--
> >   1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> > index 7b7a22c91fe4..80aa554b3042 100644
> > --- a/drivers/misc/fastrpc.c
> > +++ b/drivers/misc/fastrpc.c
> > @@ -28,7 +28,9 @@
> >   #define SDSP_DOMAIN_ID (2)
> >   #define CDSP_DOMAIN_ID (3)
> >   #define CDSP1_DOMAIN_ID (4)
> > -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
> > +#define GDSP0_DOMAIN_ID (5)
> > +#define GDSP1_DOMAIN_ID (6)
> 
> We have already made the driver look silly here, Lets not add domain ids for
> each instance, which is not a scalable.
> 
> Domain ids are strictly for a domain not each instance.

Then CDSP1 should also be gone, correct?

-- 
With best wishes
Dmitry

