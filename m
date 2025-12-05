Return-Path: <devicetree+bounces-244828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C10C9CA93B4
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC9A530A6014
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E3E249EB;
	Fri,  5 Dec 2025 20:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H5gk96Sh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MQKcYSod"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F86848CFC
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764965689; cv=none; b=QB8S5ooxvZ8g+z5JfwSibew/P1k667lGk2LX9AXNxduaFbcn56wmARMufFyRCIPspUcK0ERmi61fgj+DzdJuzoswNXDPtcrdKDpC0s3+F0kQsg3Sdxca9sWAC7D0gUpKTmmLNXNvPbdYBaUQ/5Ehs0yYuLihUj+IfDw45mwfxgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764965689; c=relaxed/simple;
	bh=ep2f5RoGRxlO8M+rfkBhHzh9iGU2chO6SQ7Ua1mgXv0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Er/G1LUeQXY68fvVwWfyOOYW+p4Tli1bJBAz1u0dgnvJGZsf15OPDB48Mnf7pvc8RWQY2K6LzmvtihVlbXwYGYVHMCirS/DAWBUCQtaclk9iC1G1Gmgl0doSlP0i8+nfFPCYXG/CqWmrj3fVl0/6LbaaOEMWi35/nZ96mhEQj9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H5gk96Sh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MQKcYSod; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBJDQ4177145
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:14:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q3EvGHgRlbS5shVZ0VVN2NQJ
	T7zGIo2BEsdcpNjZsfA=; b=H5gk96Sho6QY26Gl1RPKz7oAxb3ks/PfPdSAgS1M
	QAleZS9lvw45AdkuUuk/nh0i6w9DwG10fovjO6MFKw23SVhSTTTE8XjdbjSjQszk
	dheGJUTL+OeejhEjDGAhHuv9nXclBjVbx9DWJS/3WCJ3QgK0OqxX3CMC2VKSVv+1
	jIiyoVXCdOBc5nLmCR7W/sBT+NsnL8RCbiDKth5+R6T76Tt6yXVkJqAjy4vSy3EP
	lFs179lWnw12EtDYWFCxC/TWtq/exuD9rRRacORDxPtLbfSRtzz5zRlRvQa3eZZ2
	gGOxVa+y6ouLsolTsN6mBPd1dwATSVZX+BEu5ZrfyDwPqw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm59kf0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:14:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2657cfcdaso330176985a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764965686; x=1765570486; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3EvGHgRlbS5shVZ0VVN2NQJT7zGIo2BEsdcpNjZsfA=;
        b=MQKcYSodrzIZshDdrPi1/8ATVQz3r6NwaIjQ4asZU6jb+Ms+zDVXP1rmSUvfmYtrT8
         JEeSUlxS9qw73RQDsdyh0ln7wmwh6l6dwJX6fuPJtz1AIlC3c/FhNMHnBVMm0VztuZBe
         BmjV1yJdMtrX5XYOsNH/0bND4olOSJ/7p5FtbCTF0z19vRWalhSSlFWqf9yotQzmKqdI
         tfBeCmIETp7Gnz7EIqVGXilUkiuZLd2MvkmqKhkrKLEG1OB9+blNeX3s1OypHw/6jO+s
         cRf0ieU+m+LTxWzFWrQ71FM2RDkZQLhiVRAJmCxRWA/638RDmAt3ec0xOxpv6ph8eC6G
         gDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764965686; x=1765570486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3EvGHgRlbS5shVZ0VVN2NQJT7zGIo2BEsdcpNjZsfA=;
        b=uOSK8wcRZLe14YpZR2Yt3Bod5PPSu5LHgjjVcY3K2v7WurGs9K7SIDae/bOMZUiOl4
         mXMOrbXq3/D5WMFViyPjsnj+RA2nTEnUb7QoCcpKwtnpqKXStYADiQrTKYe3/OPV3HyH
         OC9CFRDlakOWdENRW8VKSbZht9rf+nzciIJd9Gqb59eTdloQFiGOlHqLaZClz9JcMV2m
         zCbsLFYWud9+QH6G3qVRFjNkF6O0N7BEdH/475/c60XkP/Ic8TynFXjSe3m9jdqs0Juc
         xsPYhH9n+GMLwsCyD/5an3bbV5utsoJe9gFUDJhcwhZr/uoCNlLJy+fh67RVKQ0BcN4C
         SDPQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7Zlm7RYB1g08jiuzI6eOKP7kjnj2RTKryakdVBh1gaiX3cE0pf6VLt4vWxo2Iv+DLyVu5MyHV1j/V@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+y2z/qrWv1tTs9Ed5il3m0EjQApj2tIKLu26ccT0LefYPn5/V
	y47VBTu1AHiEZjvcG4JlI0TvqGCjLPD9pAJ5bAsqNmCjGzMSfPKNZVDVb+YxUPXH+i3Vg4PyVc4
	lt/OnXjH8vhu1izKIrgF78MT1cZYbEMAhUx2OciMGSXXfDTbuDVeImQeDSJbSqJ1b
X-Gm-Gg: ASbGncuSpgBSqlJ4EvCno0uzz424hOmbbu2tn3QqLte0EpEWCTEWOyJPEZfY1/ScF6K
	7aQR2u5HXBepaXsPfozg4zS1jofH7U7X2ZDK1UsbgJnJwayKq5e5ElwTTy5AdirzWmKFxtc40PU
	oeNVFj5mPpoOAMtcj8oHYuQFNwVqDnYEu0RNo+VPtmwriq4IeB9SrAKQfSpQvVigx+yUzJOq/Fd
	Txbc5VREKS0ZtCsYf5KDInbBxLDBbd2bShg0ce9Zuxe+vqk0ptaEIdEvST9udpp1s4jVWGkoNly
	cbimsXB596urTh52fAi2jINIcvcqWxfMGHY3xR8UHvrmjdGUT9JqDgu+RKZxaazSSlVjo07NmOp
	yCSh+Dr9isnzbEtywYxwm1AM6EfVd6HY8cjNntXF+H8RJxX/yrxKPyMINHOFtnF8H5qudERLskY
	TRimPllerWTjHg/GXaoO118uI=
X-Received: by 2002:a05:620a:1917:b0:8b2:e179:febd with SMTP id af79cd13be357-8b6a2331561mr50401485a.10.1764965686260;
        Fri, 05 Dec 2025 12:14:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGEGqQ3m6FnpqaR5Hve3u+4mkL2wdR32OB01TZ2bFeJ424hCezkIZXj4dF9QZqciSP1ZXEItw==
X-Received: by 2002:a05:620a:1917:b0:8b2:e179:febd with SMTP id af79cd13be357-8b6a2331561mr50397685a.10.1764965685765;
        Fri, 05 Dec 2025 12:14:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a416sm1815344e87.17.2025.12.05.12.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:14:44 -0800 (PST)
Date: Fri, 5 Dec 2025 22:14:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
Message-ID: <xvkh657hkoztrvyjrepmq3bvhmjfw6evwl27vski3547mgbnrq@wzok7ld4wmh6>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-2-201773966f1f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-2-201773966f1f@oss.qualcomm.com>
X-Proofpoint-GUID: 69ijDT7XxNRO7AGZqXfei362ogGuiziN
X-Proofpoint-ORIG-GUID: 69ijDT7XxNRO7AGZqXfei362ogGuiziN
X-Authority-Analysis: v=2.4 cv=XeOEDY55 c=1 sm=1 tr=0 ts=69333d37 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=c4sUNlcVcd6a9V-9oyAA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1MCBTYWx0ZWRfX7kmBLTkIHxPF
 PUvb0j62FPOgtq0yPTUkVCaqNWzOFj3cEjK0bRD05Fqyrh78zXwo6hez6YSUkcytrJy7yiQaCRm
 E/QL+ptEDIzF8eQurlqEm2XX6KnXtv1hDCmTa2PIvXxldulvCcj8IQgRpNi3TQSOFpxYI81mI/k
 MLp9NLUZppYUNNiMcxpFm2VhqvtnPGc0rLs4nJ1pbjIXxyMvTtBVkZAxL/0IsZfDErYouNJlvf7
 rFQjYaIxaolfP/qvmWjboRrULVypalVvfLCa/tUonVWU1zRl4Qkx/oLEocrMbXfPJQjFnFLBDGZ
 Z2LuU1j7P0AB79AXEmyPcwlugEAoTM0B0vajefkrx83OIFSlaeYdru/MSRkMHonEwq//Cn0+mld
 SLaZoRyHs7hGnxWpTnhOsPhxw72mnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050150

On Fri, Dec 05, 2025 at 04:23:21PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
> registers. This hasn't been an issue so far on currently supported
> platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.
> 
> However, on the new upcoming Glymur platform, these are updated along
> with the rest of the init sequence.
> 
> So update the size of the array holding the config to 13.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

