Return-Path: <devicetree+bounces-249898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF51CE002D
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 18:16:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0488E30249C6
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 17:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A2B32471B;
	Sat, 27 Dec 2025 17:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qjy2qRXg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SzggXxmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96BC199E89
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766855790; cv=none; b=MFAcJbCfMuT1YhLayREAtbmptjCV9fs/CexjWChzrNjRwOcY0uj2alXg6eb7BvW4pmjL0o8nhLi+AuVvSfQMKezFxHsDkvcuOOnOVPSs/Jz6deyvdFKST37djWR7Iy7/nb+yFQOWG13T5fTXAJaW5AEf0sZNoqztBcejn1OhK2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766855790; c=relaxed/simple;
	bh=+7oylBu5sFDwIyUmMt/wQYaVdW2IYylyHSzAdQPCF6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p6+lAgvRY1BdtkxHPIFCcLShwcZWOkzcQW66hWigpLw+hR6LVrZCzwr0Mk3LE4HROA3oillw7y+bosylKlkDmX7dFs58PEyqglB9uZVyARmCkR9TDgvRI1ZZvPQ750ypemaB5wGfdtWaJarcAtHkIi64vOo+toD9HDBWmyI+KnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qjy2qRXg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SzggXxmR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BRGMGV6693278
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:16:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OHTNwSpgqtc4hs87hHEPCYnK
	Ihd4r2jq6fJZXGf24IA=; b=Qjy2qRXgD7naCyrBml4c45ess+keCYkLSFQ1ciUJ
	SmvxVMzBcqIKffWVfVFA+GNnH8ucUFS+jGmtkKhO75UK0MxbZPc6D+AuXZ9zyVDS
	bUPy/2AliK47N5MiziAOfux1Xyf0gxM0TGlBqYIUOJ+azta+dxl2w7N7CaKbyOg/
	WypP5RDCxdu/OUwyLzmzCEYg9XKnR0Tu3RKHFZMrd+n16tlFXUUCeKxqNyjjKqde
	owXKfvFRLc8Yt+hG2yHUbp3sBuw/nzq31AoLE8Q++BJigUAtVFv9Y4zG3NYJ273P
	LvwznRCcedLdws3+ggV9bPs5XRUErWtG/70h2HqLzANj0w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba71wrw5w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 17:16:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed6855557aso191495561cf.1
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 09:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766855786; x=1767460586; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OHTNwSpgqtc4hs87hHEPCYnKIhd4r2jq6fJZXGf24IA=;
        b=SzggXxmR7v7goM80R9O7Sm201RQvNdLdTYyefGv8YjvLFGUymTVRzKFg42YTfiQiUu
         Q4vYvtc8z5Z1Vw4JxgFZ4yVAnVrOyffLfxIFbBhdCjoC7ke/mwyceLWEcuKNbdHdsjBE
         HPqs4isuGVjstuoXU8ByWwsQfC4qwn+OHpm3A+DLRm4bFgs4QLGM2Ac350dqMT2nGqKY
         NCB7HkCdhEmt4J5qQgM6LZhdi4Nl5eBlGoL7HazUaiOXjtqOenfWldwSafotZ1WYGlAr
         Z3ALSvznd8UVaDxwJEkqYUOjrPWLaL0XcVFDUuHXsUNXgJoxjmTDlGQ9iVHZyC3Lg8sy
         H15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766855786; x=1767460586;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OHTNwSpgqtc4hs87hHEPCYnKIhd4r2jq6fJZXGf24IA=;
        b=aYDqmLmrEtSjOsvQhANYb3w7160PmM1sVhBezRcUo1SPMUuMj6tpAUJVwuVODe5e+C
         cweYLVofcVwHBGUhsLp9l6Y2LgGVHYpXur16Z2vk7IpHRN5A0ZmFnKZC8kX6H3YAnnDW
         cTDnI0D6BRmBQlTZxp8vO9QQczfo5vFCAOvkQAW41McUSZKw1GS/LnrqATVoIgbG1Xe6
         bow9+CW1B/6k4pe9AvwGze5zL1u8SWfUq38c0kAPZ+pOOA34snt0eYn52tkgqWfLOVe8
         01VoLo1n/YEdDE3wdnIqT2RygsDbLJ98NJnclcWNJY9E6VT93CdQ+ZsUwIKmcaFInmZ7
         poTw==
X-Forwarded-Encrypted: i=1; AJvYcCVqlzjowuwfiRem/1SIy2DrPx7ZYiIqmYq+NWzIeL+mcQ8GngYYjHkT005pRkl2YIqdDrispquwOFaX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0CzvaFvohZDUSCplOAihJ8XWQl+QBVpqet1hFCUWT0aGJxHG2
	n7ON4gAzIXtfcs4+gvX4rqMrGvU3GHWTjcE17oecWDmuTLtUVu31k5T3cMe/6fAQeXZiebruIpw
	LKJViWE9H1fB3ZSq2H/2w+gEhnAS3Y14/PciEsddMtv2i0CLVzZAf50SyQHAL6DmP
X-Gm-Gg: AY/fxX6UwbcGcSb3/Pe3a1OstHM8TPQZ1wGlM9Mfks7VKaK1goAuFaWr0O2p1xAiFzV
	FCF5XlIQajAmaLnEKEjMtj4igPmUWSrSiSlFM44F89xZPmHWUqlZKFcUsniwZVpvPoCiLTHUWX2
	Hpp/p0ucAHSCu0GF/jQCan5MFiP1CSOPCJiBoUnndGncoWRmFlF2j9Ep+uBM7E97JQlRp13FGfJ
	j/N6AwGmV4hdc5W73f2oqx5waFITrxqoGZxzRQyhS5W1doL+s8qB5naZPubjP/tX/+MHqF+XgDd
	u2f9ARPk53tf6bC3U2Ni+Yw/YYOuVC30M47vf4v4rK131FVosVBDuaKLU/XYbiNrXZCu12k+V1F
	Ag5iT1Cc71708gZMoKWyg3PRMMmYhRj7D93rds+AoeU8uaGTP01b0EwTa9O/NekmXRLmNOaDrkS
	OFqc+kM+gWXMoDS1M7FHIzzp0=
X-Received: by 2002:a05:622a:344:b0:4f1:c1fe:ba3d with SMTP id d75a77b69052e-4f35f3a0de5mr436647061cf.7.1766855786208;
        Sat, 27 Dec 2025 09:16:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaVfWYayzuAPhuBrKQAY3il0uhSUminJczgemb5HUYr4w8B2G/OkItgknctxpCiE2WadhZRA==
X-Received: by 2002:a05:622a:344:b0:4f1:c1fe:ba3d with SMTP id d75a77b69052e-4f35f3a0de5mr436646781cf.7.1766855785788;
        Sat, 27 Dec 2025 09:16:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267964fsm67171161fa.42.2025.12.27.09.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 09:16:25 -0800 (PST)
Date: Sat, 27 Dec 2025 19:16:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
Subject: Re: [PATCH v7 3/4] misc: fastrpc: Add support for new DSP IOVA
 formatting
Message-ID: <hvjbohxvyogsxkt2wrzdlzlbodjtqybyxyt7bbp67xq7qbs4iy@atbtkdltnhzp>
References: <20251226070534.602021-1-kumari.pallavi@oss.qualcomm.com>
 <20251226070534.602021-4-kumari.pallavi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251226070534.602021-4-kumari.pallavi@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDE2NCBTYWx0ZWRfX4RzIwaUPxlDM
 ABx8kiX7GPIfOGFQXZ3oB+3wuXJ6ZrB5zGgjgI77WA9meY2ONzk3D8cBM6wnCko9Y1fj/IYcTcG
 UWfBQgET3jQCFSVRp04FhNz7jIZd+jvin03ITSrhW5D5IJlECE1+tqHSooTVmpgNCS0ey0c2sHp
 2RoXD6MFLclsPPODdOOvVP8JlF9TvhqJqUprdc3aucgdv5lKMFSsLhBlCPNOqYMZyc0TvbGeLGe
 AwPMp9jUgl9lAI2fY6yH1l4XFYHMbxg1yU0+TCbDq7vQr/szmjk0Xmn1VSteST0PTiMJx3bVJg0
 657rZL/epzk96WUthZk+/4oYNXW/0rQkY4n0wr5rGqY2Pbjl3fj6Ypv4Oote4Dyx3vrgvb1gqO1
 UoOGpcepktodQAsqlLiZjrfQ7FIEPUqDwI0mFo6cvnCt+EpzO3eaa+i1eRBAFaOe+KSHsUzYOoq
 gGDl2hpX3kiIAMA7l3Q==
X-Proofpoint-ORIG-GUID: pax_gnLLUN48Rx5KRnYwPaE-Bk5DdPzh
X-Proofpoint-GUID: pax_gnLLUN48Rx5KRnYwPaE-Bk5DdPzh
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=6950146a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TmOT9BjTXP3hLH6PdvYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512270164

On Fri, Dec 26, 2025 at 12:35:33PM +0530, Kumari Pallavi wrote:
> Implement the new IOVA formatting required by the DSP architecture change
> on Kaanapali SoC. Place the SID for DSP DMA transactions at bit 56 in the
> physical address. This placement is necessary for the DSPs to correctly
> identify streams and operate as intended.
> To address this, set SID position to bit 56 via OF matching on the fastrpc
> node; otherwise, default to legacy 32-bit placement.
> This change ensures consistent SID placement across DSPs.
> 
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> ---
>  drivers/misc/fastrpc.c | 62 ++++++++++++++++++++++++++++++++++--------
>  1 file changed, 51 insertions(+), 11 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

