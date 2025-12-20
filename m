Return-Path: <devicetree+bounces-248515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 23273CD3554
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 19:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E28803007694
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B53B286897;
	Sat, 20 Dec 2025 18:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F4CYWt8s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FxMQ/SM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6BAC78F20
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256516; cv=none; b=Kbd9ksgNIyo2g+ByRSrxvzY/WLdT+MgL96DIpgmuI/IOQxq3oxnzflKMieA2Bs7C55F6hhdwL+S/Yj/vYRjQRJ4bbzpUo7/jFDheurWK2X/4OMgc3oppQMHeUSFfAu5bLJdcXegtZOrzD+nFmjbckY+ZupUolmnsZh2bT5VgIw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256516; c=relaxed/simple;
	bh=i8iv3/jn9WvJ45FYBYf2EAZyfrj2h7j/zEF+shI7tL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VeRiFKA2EUu/CqDX6KzaSM57IUpuuOZ45zpXFD+ALev8wpHmeimhKFZVcIiJrgxdg3aIfMs8gnNdYXima8Sfih6sl/1E6/OTbPX7hv+NVwxt0XuyQ71Dsc6Pl4/A8kPNFJbt4rpRiZOTAKogaR0GHOCVY2koe75NyInYkf5RsG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F4CYWt8s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FxMQ/SM6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKC2Sag4169000
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xERzpYbUCmTz/aMOCeV3zYq9
	BgDGuXQZs0GEQ4uOY2I=; b=F4CYWt8sbF6Kn4aK8B0PANaf/cTiY4IucBSrbwdg
	cIPsg+kIMuhgsHiK6thMuBGRbHCMTqI2leMxlN8vFDQefL6pqNrJFSBN+YLsmIA5
	6cOiCavPwGP+mvz1JBO7ExupAWV20Bx8zWgvaf+VT5QwF6M5OBevtEsX1msIl6Qr
	OVvgsjmNdmB8+i14yY8vD9+0pqBsQyBp0f03VyViscBhqihruNSFkNT2283aZDLz
	J7diGAqbanmEqnSwHx6SRf4aMLjPSIy7oKU8A1puOHJp2MzJXNe5ZwTgY3cjuebv
	6Wlk8B5IPIHuJXByOZOTIf5O4TgOOVP41rv5z9Mb4UJS/A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mux1490-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:48:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f4a5dba954so61616381cf.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 10:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766256513; x=1766861313; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xERzpYbUCmTz/aMOCeV3zYq9BgDGuXQZs0GEQ4uOY2I=;
        b=FxMQ/SM6BkaqPstk4RqnmhCCZf8eVz55/ZLulZaLVFM4GeDmDvZ/MjU/T40shLRn9O
         ppGjSCYQJmFzdBCFuCTnaEAVWn3fJEeKSfXOh4ERBm5nNoPNIBFkikBfF2gHOX+wa1BC
         +0qyw2OOK+mC64CZHZGBk4HmIhg1eWkPlPEk38Q8zR06YeaMEU5e4dQkT+Fp1yYs5XFk
         ao1LBvLwY+02WXjjjlrz+BdfTGCdQ87a7+JVyU+VNtJa9hAig5GbasG+rbuJMlYuCi3u
         vNvrJRyNkHLbo+oyhG+7q/+W+BNMSgc47qWUVCVuLfQdlqA4jyVJtOHP7J04gacwm/Up
         MMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766256513; x=1766861313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xERzpYbUCmTz/aMOCeV3zYq9BgDGuXQZs0GEQ4uOY2I=;
        b=Y1oxlv8lFl0TvSECHyUj4F4djOxyTyA5Ib7HQA1O0Euvl+t4Lwe/eOmQAkJ9WBFNAk
         ay6fyvwnIpvDsj6TiH480B2twI5AA2MakfLMRB956heysDmEXQ8aVT0PkKha0D9KTnha
         PXMiR5vxOlTlx2URu59W3PmSlUyDHwwvqu7iXQXnqZqUpG6jjhKXFQOKJgfi1jFqDuou
         nTSFe8d3nXj2FoQl9Z1ZBIssj0Sx8Tve+uJfJE+mJObL2fI/XJAr946dWUTX084Ef7HC
         Yvxm6OiaJaOW5+SHVO77eH5GEDi2We1fAeqjAplreiDKi2DghgUngbZ41IZIftkQwZSR
         UO7A==
X-Forwarded-Encrypted: i=1; AJvYcCWyaxYnR3VYA0vQmlj3hF/0BUedo2AIq0ebqb/yUHjXyNKwZSGiNX0TzDWucR9fuar0vif685CNovhM@vger.kernel.org
X-Gm-Message-State: AOJu0YxsE8kKydl3p1kgVVdRLscCafvs3TUBlkz07JlpHT++5gvUJhSo
	mVeEuooVo2gRbkihsSSVrkhhMT+DgqwYgHww86KmnBhV0sE6VXJ5np6ZSiqaPTwiA6C/U0YnOpv
	LysdxFe3XOpK9Xqp1iT4H+wvGKOXsdHsRBIHNYSNUVrdEgow4Q5p7911TQ8fftV3m
X-Gm-Gg: AY/fxX6E2o2FtqX5rk0eV3rsKSEiarSilYpiFCbdKxfgdYu9Tl1bqDkTh/7eSRL4YWR
	R9j51NGH5Rxy5+9+BLzcq9tZR07HaDnuUqjst9U2vHVkVmZLgSQHH0HKS/CCdA2eTysZ1cIfKMW
	rioK/P5aYWBIBO6J1tXLyF5cH0lGKq9r5Pfc7mLcsCAIvqa/87my7sNSvlDEBE10v6rAvU4IVJo
	aL6Tb4AAbr7UmGvAcFXhVP44HL0j66Jyx1k1OcJF6oh7RsZlBZhqCEiZw30AiaUm8cQKHPFUUV9
	UdA5HqnPZg1qXISKqoXez8tPs33+PgfmNGoB0kuckCUI2EicLCoiQF9UA6X90HVkn83DUJGIPMD
	HI50CFT8S1uNj5hD21rCphE2k0Q3U5LBfxR8mqDYBXWYgQLZaAAPKXmaD50/b3aXGv1pNoLMWlU
	AcR5wryO+7KV7v5V5uED/2aMY=
X-Received: by 2002:ac8:57c1:0:b0:4ed:142:ed5d with SMTP id d75a77b69052e-4f4abd79a7bmr90473391cf.50.1766256513015;
        Sat, 20 Dec 2025 10:48:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTiVZkKZXhWsQakvsFdgelaE4YqEi4Thf+tWe5lz8p7UM7yX2U0FBpzvG6UMkaGZ9Z6mbLAg==
X-Received: by 2002:ac8:57c1:0:b0:4ed:142:ed5d with SMTP id d75a77b69052e-4f4abd79a7bmr90473121cf.50.1766256512521;
        Sat, 20 Dec 2025 10:48:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f2e6sm1709288e87.69.2025.12.20.10.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 10:48:31 -0800 (PST)
Date: Sat, 20 Dec 2025 20:48:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: glymur: Enable Glymur CRD board
 support
Message-ID: <eyaa3yvxn2bhij6wlph2bumvnvb42uaaaarlw4abqvnufafo7n@zruswakclytg>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-4-32271f1f685d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-4-32271f1f685d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VMBMnsfJCfPr-hiFh1GDpTEvmx2K6ow7
X-Authority-Analysis: v=2.4 cv=EvnfbCcA c=1 sm=1 tr=0 ts=6946ef81 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=iJjC-FjJdm91r3in29wA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: VMBMnsfJCfPr-hiFh1GDpTEvmx2K6ow7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE2NSBTYWx0ZWRfX3xrAxJ6bhNP3
 yJQRvRfqv9VJqelMWs6hZlkAjipjqBJqz1JNo1gCyca3TW5v2e0uwcihuO61apvKIykzilpR3bo
 Q6OxMZVvt1ivOoaSI0+P8th7/Bg+Bobcg/4wYsUE8CnRp17zroC7QunXnH8iJnMDQuUBgci0moZ
 46MyrUO9VPyHe4STrQ8QPAtebG+MVRjEqEHPJ8Yp7XFOgHzMjneMmzfJ8Wt32luUF1bnVNiEBhB
 uUYiUk2V9k9KWUm8KEP1lWw3LoqhghuKDVjJdkG8R8Ei9aoLjaYybzaJYJGUSQ+RfbeqFrd/wk2
 AVzTrzw881Dll4F8OAHSV/9x2wGcIeYPLESN+4/FB+P/vDPeQG0jaCa0Q151TlPcvdbEcnpGInq
 y3kDxPhNMYhuTjMK4DghuXGdmeIyebaSWMOx8Yu7Ivf8VbPrwr6M1JVwknd1fLwqgCVUN/cVZZN
 9C3K6B9Y39Jgt/c5Jow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512200165

On Fri, Dec 19, 2025 at 08:16:57PM +0530, Pankaj Patil wrote:
> Add initial device tree support for the Glymur Compute Reference
> Device(CRD) board, with this board dts glymur crd can boot to shell
> with rootfs on nvme and uart21 as serial console
> 
> Features enabled are:
> - Regulators 0 - 4
> - Power supplies and sideband signals (PERST, WAKE, CLKREQ) for
>   PCIe3b/4/5/6 controllers and PHYs
> - QUPv3 instances
> - PMIC thermal-zone updates
> 
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile       |   1 +
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 860 ++++++++++++++++++++++++++++++++
>  2 files changed, 861 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

