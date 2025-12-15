Return-Path: <devicetree+bounces-246758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF534CBF9F9
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 876F2300D40E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F709328B56;
	Mon, 15 Dec 2025 19:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kA9815ys";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nd67Vsps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00B230B501
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765828749; cv=none; b=Z3pHDSycTzcjmGKlDEkHCRmsrVmua7rHu41tqLQ8U/eAWuvgn/O/51Egq6wlaIkyhQSSaQxX49stRAv+p48CQ+zZqpZfndSCfYkYtYf12Fo/1Rfp6jc+RbQXFQeFQKWxdxCcOobj48aI8SVIMvDec6KOSBbXrN1lUaPVZlSa6Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765828749; c=relaxed/simple;
	bh=yC0SgIlNTX1nxsWP07zPVRGfF5fMjksKp/EvwY0p6lU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iq5+fvNFzx2GbXj8yn2wyddAnd/GGlVE0xNQ6TI8N4R9aZr+xI0hQQLFsYkpQZiHmpcKJ/bB3OqM5J2Y8xQBONLT5ENjuCH8F9SbF+x3JwncPYUgyhvXnNa4Ossx36S8XGjGAZY9YpqUUP0eGcQUudrHPPEB1+D723xOALCgUMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kA9815ys; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nd67Vsps; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFH6hMk1756137
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:59:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=npDpDwwknv3Nv0rm7sBmaNw+
	jfUIH3g4Ct1bpwv9dlU=; b=kA9815ysSLA1IprbX75A0yvOCKefM2aPGJuEjxQ9
	vx1/1FaEDmAtdI7azSdkuWoz+F/VtpWt/fmUSr+39yvsBC+CKECROXbK1f+stRny
	FepD3eEovM0EW0e2exMPAOMLRdUU3VgT6E3Tzng6k3L4o0eRQPP7+824fU9mzaw7
	Ufkj67uCjH2B0qBe4czDrwdguO4EIjBfnO5ld7rgbA3lL15Ce0hMrmQEQvOTk5XO
	82ZsmuZf9L3ziNElyIXoJ1WNBzMwy0nSROg9xxvDN6174Zt6vYhm8LQyDiQMS0mx
	JuGtXIh1pw8/irv2680o32vpY8xvnBPChUl9Dng50mAFdg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2per8ej9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:59:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed782d4c7dso66749561cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765828746; x=1766433546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=npDpDwwknv3Nv0rm7sBmaNw+jfUIH3g4Ct1bpwv9dlU=;
        b=Nd67Vspsrxo6xfHl+PQwJ6g0N6IgIrIFJCrz7mDZBakE0w0a1l2pZ2fQdqO081v8sU
         hTk+N+9KM5cu/nwTPmn6+e5qrLPkgbDh0GU0hsAIARmmwTq28FIXPkxhkjNHzwIgtg65
         84krqKbethDpZ5riss5bJfeGXMhhIQq8GIpStPbcsA+YSGFOMKsSAKvRnwXG4q9GzoTz
         eMZRRQ13N9HjOlf/nFm7ZeROcNamsbimPP/89scDl4ioq9Nn4Y2aBhNcYIRUwfs1d2rW
         Va88QG/Hu7OTn+FEXYCwxefz9ky4lJQVXnIqImH63c4kZgX4I2YUFLBb6cH5rJozfWns
         V02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765828746; x=1766433546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=npDpDwwknv3Nv0rm7sBmaNw+jfUIH3g4Ct1bpwv9dlU=;
        b=nOreiW0lGIZ7NqkI24W1poh1U8eB16/JjxZ4XdeEU+ijUpRnon/vIGvLF59CNLznfe
         OKbVG0stMBGq94VlWwMN8Q68sjYarXPmFYd0oEV2chp0tood+Ayk0nzq3euti8hcAw+i
         pXcLOR8eTOsWwtJ1NRMp6BJFrZo8jy8A84s01cgcsqV9hs9CAri+aDp02Ce6iRviaYGQ
         KhMLLbOmYu/CFkO3Y/fCsnsDFjS9a8JoMS/Pz14L8YpeXrYBKamXzjOTg7L2lPJdVjIj
         7WHGroGLlNPRPPqlgVgIt3iTJsJ4mYli70F01A4fXsQc6CgSlhLw+VplU+asmtYiQdcD
         jvsg==
X-Forwarded-Encrypted: i=1; AJvYcCVyrFsjmWXwarT2biTDsfd9CpgLrDBx898lAV6p46pxwd6LNtvIj0C/3HrPst+RLDauKvguVerHT/uK@vger.kernel.org
X-Gm-Message-State: AOJu0YyPyAeH46K9nqYBJjesVD39SjBhsK3/ze6rbwJTpL/q8eNovCuL
	Qv4nonzm7nwVoYQfvX2ICKBbxqLMu3lyvZf2oLjPBYKT7UIZBUva500LhQ+jdo0xBIzEhVL2nJf
	UlCbTnAeTkI6j2HYEr8DXj8gs9CpUc+zPBMVBnzVV0dzxWblVJg/RtvFjeucpGo0J
X-Gm-Gg: AY/fxX6OQc0SdgNwCoMEKAe/99aEgcbSdFPECCnIsDY5f9HKtsKGsqFWfDcByyXxwPj
	09P0WR/mdp15jTq1XOHThnwBWa4AILtTjTLysJf5w93kDOf3mM6ftFOpRlHBlJCQO78nGL/kxpP
	Se9a0ClEKrrLqz2vpR68DYTUAyFU8faeGSoPxSTITGEOu48zCH1TNoUl+LdRomBtWSWEfWqPimB
	QRZlwa8f/md4GnXxEgNbr7SQg02KlF2AORWexTF748lZTgxOsWE5nuZHtO/T89pUE4vQyPF66xg
	jgj2+FxlfG7giwrlSBwvrGiqmeiuH9TvPlRDh7hhp2DUTqjMa+oh17DsLsxKbkSvkeCpoaJDrmA
	HnvTLWvdhBQSiDb2n5XrIZK1fj9xC5x0+OfA9ymbaJkILMdZFsVLbsUg+NVYQKKPBTbShxq8er3
	JDBDTTMjNrQsWZJiDy81KUIBE=
X-Received: by 2002:a05:622a:1aaa:b0:4ec:f940:4e55 with SMTP id d75a77b69052e-4f1d059e34amr158794711cf.47.1765828745799;
        Mon, 15 Dec 2025 11:59:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElabcDphYCb71EoECRtI8s9ld2SxQ9xgj42DnlJMaZVGMuKd3guYQKxl5DIJz3IH+agPET2Q==
X-Received: by 2002:a05:622a:1aaa:b0:4ec:f940:4e55 with SMTP id d75a77b69052e-4f1d059e34amr158794451cf.47.1765828745352;
        Mon, 15 Dec 2025 11:59:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da503absm92224e87.60.2025.12.15.11.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 11:59:04 -0800 (PST)
Date: Mon, 15 Dec 2025 21:59:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: Re: [PATCH v3 06/11] drm/msm/dsi/phy: Add support for Kaanapali
Message-ID: <muo6zpkb6esy65ug6pd74xphl6inagleogexu454arngua334l@6rcfjeqyxnnz>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
 <20251215083854.577-7-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215083854.577-7-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5tTt8WvRZs_jNF8GsELt7ZumRKGN2wW8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE3MSBTYWx0ZWRfX05z1gvTHnCPP
 leXRVRR9rRWSrjt1VqBeQW7pprmOZHP0fnKPh6aCaUq30Rcz8O26BhaRkhWWNXlyRIPjPau9Jr+
 29380KqPAIbp4192Q4s+vfiKG90FLfxdXJszaCI5sEIvatAQxA5UuJn6Yxb1mlV9ud5Zq7AMS5p
 wg5pKdKzoljdO+YA1y6ryQl/cGhomgG5fKwSfu6GA81tv1nbBbE8VjxvgHm3bvAg/YMTJHXNA2z
 03Fk4+RTqN9J5UNADIEVW84KDXZykNrfCbb0awVdeS5Z7gLap2PKsqXlGQWs7MIE4Sqk2KW8fv/
 P1XAOMw9BSPq5KxCOYdwfDL9UVBXVxntjNoKhSVNjTV/+v19LOoxAesLWfQjpHyPE83c8bVk7h4
 n49cQmp2VOQtnPUQ9Gq2ZH9XKAsTeg==
X-Proofpoint-GUID: 5tTt8WvRZs_jNF8GsELt7ZumRKGN2wW8
X-Authority-Analysis: v=2.4 cv=PYHyRyhd c=1 sm=1 tr=0 ts=6940688a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FygwiVb8ID-HIxUyOxIA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512150171

On Mon, Dec 15, 2025 at 04:38:49PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add DSI PHY support for the Kaanapali platform, kaanapali introduce

So, it is Kaanapali or kaanapali?

> addition of DSI2/DSI2_phy compared to SM8650, However, based on the
> HPG diagram, only DSI0_phy and DSI1_phy works.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 23 +++++++++++++++++++++++
>  3 files changed, 26 insertions(+)
> 

-- 
With best wishes
Dmitry

