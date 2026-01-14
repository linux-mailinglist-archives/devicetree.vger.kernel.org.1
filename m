Return-Path: <devicetree+bounces-255228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89668D21727
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 09B87300558D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5212539B4AD;
	Wed, 14 Jan 2026 21:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mK4jdVbj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gEfiUFcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB993A89A1
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768427507; cv=none; b=aNIks104cQn6flsCPR2dul32dnIW4fbmONIuaJ6FwL2ktLwZh1iWPO3I6SOt4HQ22bqZV0ZPtIDaUaffj4e2w/JFhd6nbczI6tWeVHqXMYvAppjn9KyFsTUM0DU82Jl1/EP/0ABTGtSKc7a9QuVRVCp7AVBksoKTJmIqEaV9X58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768427507; c=relaxed/simple;
	bh=81fhX7f5PdSvnq13MndLfu9aSTxfFkW72ebZAQs4C1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xbt8W7exb7S48WSMRmpgSru83kDgfNRM0C64dnjD+cDClyfyJuZBhSe2KaPaBCjxMM+GGD9uRdW/pS1/bOsuSjAokwIL/NfjyQ4ZxgCqWOnq9I8oQGsN0Tl9bDkpuAyVLtNiGNxeMUCXPV9A/rAn5Ngyl1oDvwiXnoNbuuIzvTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mK4jdVbj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gEfiUFcR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EFL0MN1943016
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:51:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dtMMomDKoiaa/sSanq0+vo+Y
	fvjfXACcyNDdQCs1B7o=; b=mK4jdVbjr+jfkUTszZ9do7VfazDgk63inmACvPLI
	H91gLx/KctZ6kvLFBd/4DiSFPP1gZRgRTFFc8a4j8TlZywAsxIQQL7ZMrAUku/Nt
	yXDy41pnNW64wQAfAQt9vr+uthpa1CgWCAAiAk1BepSLqVDHPdj1aFvNPzgJbG5l
	8qmctFpucvxwlY/Ly+KP5R6HsnQ1T45TILSfpyRFmPt9brcyqCcclV9aylps5lBA
	BxpiPUaZfInVpDKtW/33oM84t3+P7t2orfiyiWrEcQumBg3q/1a/4Z7QPUNyydfa
	Khz3w8T8DsTRYfe02UjlIDi6VMnxQ0t03efOWcbYma+//A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp7b6tse6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:51:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2dbd36752so77322385a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:51:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768427498; x=1769032298; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dtMMomDKoiaa/sSanq0+vo+YfvjfXACcyNDdQCs1B7o=;
        b=gEfiUFcRZsq4tbc0gMqKy5x02KpFN1+ECfqYriYhOGK5ztfyHB9Kg8kBoaGy/hE2Vn
         P0kOnMOrV7MdMAfV3lyh/jqZS0cz2+g98UJdJVGAxgQ07uxFOcn8Q/Wfq3wPDHAqyoSu
         Ia0QYsoYhg1XlE5UO43n5JQIPnlPgTTJjeklQAXdaxj/IyspAG5+wnCpyfCXU/wYTR9v
         qJe8meFjhGWZ2cZ8QYzR+YC5Pb+Cx9nhV12IkzfPNfllsBq5JeDyEGVBFw5z+73mSwkI
         1m7yyDRneSxZwC6JSUYHhqzt3i2EjRJRu+YkKEGPhm3l1Kuds2o2eZ17UWJMQrF1VGB+
         3rpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768427498; x=1769032298;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dtMMomDKoiaa/sSanq0+vo+YfvjfXACcyNDdQCs1B7o=;
        b=kY5zU0LlJCUsnkPozHBTCqsC2hlAfAZXJO3bJNs36E1AQtwI6LQPpi2G1yo2zec+Xd
         CrF8j74J5Pooo0LOALrOLB4/CtYvwnVBGfguOubdNhPZe1gAiXmryRqjIMCv24whx5Ei
         0Q2+okNw3+ZetvJVkwPJLDLp1+afbimLzOVBDYYzYah69sC34e2r9OYQtHgaSz6m9ap1
         7fR2TU26xKvwqER+xIudS69RbufH3m5nDV0Ijv63bLhl2OVIkRFTj/X37izg6UROFiVO
         3VB8xDo+AW6RG7rJRZMCDdV64yZmGsZd8iPZapJq3PRg3N2DZ0UQvKc3ncZQ0KGdPY10
         iyMw==
X-Forwarded-Encrypted: i=1; AJvYcCUMt0DT3aB7UkqkvELSCZkWoqVa436WIxDtM34sRH7oOw/seTS5mkJPx4fqwEfEl0pW3cn6bSgRyT6Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4kXSJiHyNoCINPHEaO5lQ2dJ5swexoMn3JEhxeViGyQFDRqw8
	BH3CYOLGUP3EcR07LFaVdx9QtfcGaKnHWJ64KIY8LxC4fbS1Hcex7Ul2FMIu26v+DOcO8w+0dkZ
	S9Ijv2gdR4xrSjHbtHtwtrcW49zmzruhI3/J4BbUuyjhRf6l2CCqqjgIigHIiSZ/y
X-Gm-Gg: AY/fxX5E5uVOVAvnccYSgJ2O9MQgrqP2wWmQSFuf5j5YOwM11qpNT1YBsluf7zikKKj
	4sVmLDWkNs/0uAL/IhMvX1q4bMVgkhSVyD4A36Epz5r+CX/3gJxsx5yOBhRfeie8mIBCnhmOMdZ
	lQPpABeNrTI0D8L0DvdtBi78MA/+VnRR0CO534afWX9MJY+xRF37wGhLcjGMlfvqInvcrbGZdZE
	0UEHpnPutQ5a/AEbft84K0RsljrhhZt23I4I0BLY0Mcv5mCbbdV7UcSvQesKXHAhDe5rlGUYMiq
	smr0xqjKcJ0IKAX46M0zZwWrpbmAr/w45kKZ2CTCksbK1JWCE5EHGY3gfuryBi4NlkH7JDjtZxD
	2BBmBbL2QCBYW2c6/ducfySPdaIStjBtDDV9kvFWQ67bRSJlsdnMpvLY8Ie6DhxOkPf1XzXnFmr
	L/QoPcPN2Cy6Wm2hX2H0Ji3nU=
X-Received: by 2002:a05:620a:25cb:b0:8b1:adfd:f850 with SMTP id af79cd13be357-8c52fb05340mr600524885a.18.1768427498213;
        Wed, 14 Jan 2026 13:51:38 -0800 (PST)
X-Received: by 2002:a05:620a:25cb:b0:8b1:adfd:f850 with SMTP id af79cd13be357-8c52fb05340mr600522185a.18.1768427497734;
        Wed, 14 Jan 2026 13:51:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba1045ba7sm1054373e87.75.2026.01.14.13.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:51:36 -0800 (PST)
Date: Wed, 14 Jan 2026 23:51:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v4 3/4] usb: typec: ucsi: ucsi_glink: Add support for
 X1E80100 compatible string
Message-ID: <gygibrsme3ojwcwp2yq7hclflc3vur65x6cxaru32lgquzlilf@q7bivtqbas5u>
References: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
 <20260114211759.2740309-4-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114211759.2740309-4-anjelique.melendez@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 9EKwdxCJRGPuCuvil7ghEeoLu3ekbZTW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE3OSBTYWx0ZWRfX0v+sjCGaNBqL
 Kudchl5Eb7JyK4TGblymmWq0o/tvk+gVb20wB7tfYuoHcesSajOQ4rSc74nXObeoAP52ax+54eQ
 zqi9Zcyl0lslU4j+XWKcINYGuHJDNF3+fgdxPT0sV1JDr3aPapjJB1suyI6iuaSQQ2coVN7VtdX
 PZpWYQx/o+0tJ/3FqgKvfNarDJko/DeOtCcbjr3grMFagUGxdkGY8Fu6/4yBnQDoOKIK5fSUrM8
 04iEdDqz0lzXdiMCV73ewc/I3AljoV5FvajhdvhrWgat7/19RzqHUKKOexu75h4gTRXNMr+x2Nj
 UrlpaGQ/cWD6teMf2FtVpcdJI7qGd87araCmu7+V/mTBBXTNPYjiQTO4+nA4B3+rj2bULtuDDx8
 UtKFXN1UdXTrOBp6FoNRoAJA+ebxY5hZ9MEpkf+vJ5ZFl2eUwtrjnoTE5O5riFBrQnjwlFtnpF4
 wo2BUFIONLRJYZtE9ng==
X-Authority-Analysis: v=2.4 cv=W+w1lBWk c=1 sm=1 tr=0 ts=69680fea cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BSYFvgBecL4qUoC9sTIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 9EKwdxCJRGPuCuvil7ghEeoLu3ekbZTW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140179

On Wed, Jan 14, 2026 at 01:17:58PM -0800, Anjelique Melendez wrote:
> Add support for the X1E80100 compatible string which needs UCSI_DELAY_DEVICE_PDOS quirk.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  drivers/usb/typec/ucsi/ucsi_glink.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

