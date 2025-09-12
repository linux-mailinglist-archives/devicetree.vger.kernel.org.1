Return-Path: <devicetree+bounces-216653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B6EB55808
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 23:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FFE41CC7111
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 21:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F53B334391;
	Fri, 12 Sep 2025 21:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YgG5eUwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9128334375
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 21:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757711139; cv=none; b=nldnH08kNLVYUsJQej+n4+lZjvGnkPXGhL2twbCjt2HlnCVLybbFiQCsToQYQq6zf2ig0ZDuG2AZifauU99wirxWQ2BXf15WHPInXkrmCryj3eUCG+2wKS8CAX/WQ9Sqh9KUr6H1j4AQc10xv+ktSuAktOXjcbGS24cA/OkJLhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757711139; c=relaxed/simple;
	bh=tAKgUDssB2Zg+/L2UJaRq55G33qRsupCF9DvLWF0uL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jGPZDQg7gCKbKh89lw/Z0vDOs+wKOkD2wbEHyhvxRNyyGuulUghyEz3XZbiwYTMn30danhk8Qn1fq5w+6eWZYy0jb4Y928NoeAKOsS70KbsI/UKYXiim7Djp3OcFJoSfpqjTm3IAgcyckmwTzg9TOoQ9uiSEEz9TxxZhnWx5Z7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YgG5eUwo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58CHg3rc017571
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 21:05:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f6x45dTFSIMJV/gJWuKckpagRMD+esitL+Lw3qTQiUk=; b=YgG5eUwoIypKISQz
	S3iZ8dryEFCU7L9bIY5x1iq3uIv6ymIkOmPeNnHca4X+3aVlPvagBFvQv9khD2f7
	dbviXKSxuMoAaglxDZkFhI/6RweerfDJxanl2R8S/b4UDKBUKuFj5/wXZMVPnvAs
	PkiaULnpAHyFMGtnxEDCIpinpiE8bEJxRgGEZjdQQp67f9hN0Vd6RCC/j5MO48lQ
	McODbKSYYi5XBZ/PtaZyJUd8q6ESW6orIrH1a/MH5BgzwmxP4F2lB1ern6n2Egoy
	0YsUd9GOkgh20tdc8ZZhVa/LiNH7s1gdQuMAgu11leBEqlW1QGkxA2Hk8XGP4N4l
	0d3+Ng==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwsn069-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 21:05:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-770c244004bso12293776d6.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757711135; x=1758315935;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6x45dTFSIMJV/gJWuKckpagRMD+esitL+Lw3qTQiUk=;
        b=uPDnRid8F4j0zYVWr+ZiIKug6rASK3qsN1ruLaRErCyqSIsxY9eq8l9Um8E9lDXM50
         h6maQvcWE/7MK6RDKpVdfIOkM1lBtqq99SB52T8xDmcIWJ47ZgXSoBoQ9INx3isKpqnz
         ma96YViykPvIpb2ZY14HNI++7OtEv1fZR0cpQM7Y0BvjP8jIbNovQM4fAF7LsHCiqWZm
         Cu4jB18wu7kjlR2+LjYbuOpCLH+wj6qHTSblSEMvcQKapzWeoDm/2eJDSqtHKaKTtfCQ
         LfVGMJ/I9BoXqmjEq2W7WKrhR7YXuQDWbYAU61ySij82dlM9T5TylbowCPFNoxb76Dd4
         hUAw==
X-Forwarded-Encrypted: i=1; AJvYcCVdqogVffLnKJcVKLvb/fmWyCb05lVc8iqNkc5qm9J/rAA9uf5dkXmaIJsXpmDmM09ZhMh12sG95LV5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnew5klrFgrxmK/aGYtFJYbhd2JqdsawuPqrIIHIL0p5JAyYDO
	yTHt5dqtdzaSH3bj6FvtCfIYXYzHOrkEV7NOyLUtL5vGp4u5PKn4Bx4e8lecnXywK27xmnuCw5X
	L15jMjFj0eI3kNAprErBOhdqEjlTSO3idG2GeBCa3spKDKemmKyLqPj9msbJpPaGI
X-Gm-Gg: ASbGncsUf4I8hoPcXmtkLFDr3/mFI9xuihAkF6lZ72kL/X7LSGzvgqQ+R9sBM08rZl8
	BU/nfUUnKOZHAeG7CsL/RIH6RCHNy54+5SiedxDPrFdkuF5x2noDe4toftRBuj6vAS5R95G86+C
	W13LR04d79+njbI+abkvZCJfdMHvOa6h8IS9oN4jTLhRINAQNDXiSVUP5WPB2Mh5hTBldQ2kF2o
	b5PZsuEx7/QkvM2PlpF/ZZU+G9A9thBShVi+3CKevo//l/ktz4m35FqFjLjyL6gRl/fOe5VPUGA
	hCx7Jw8fkUag4OeLYqth70sYBvgxD6thPV5e/DkggZVFRBdeQBbcYU8Ax+ANinpCUxx2s31tvCO
	qeZxeVnyJkmQ5/rvKtZuUsItQJaq1c5nv+dwmkyYY/jilWX8T8Ru+
X-Received: by 2002:a05:6214:5298:b0:72e:d34:573f with SMTP id 6a1803df08f44-767c215fe50mr70480756d6.39.1757711135134;
        Fri, 12 Sep 2025 14:05:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnPEfmxh9SvYDKqxVQYcOajqc191SHlEL2DXweV7tBIxlxuRMvWPEoACAWRiuFYSJsB6Xgsg==
X-Received: by 2002:a05:6214:5298:b0:72e:d34:573f with SMTP id 6a1803df08f44-767c215fe50mr70479806d6.39.1757711134456;
        Fri, 12 Sep 2025 14:05:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63e47sm1413683e87.80.2025.09.12.14.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 14:05:33 -0700 (PDT)
Date: Sat, 13 Sep 2025 00:05:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 1/1] arm64: dts: qcom: add initial support for Samsung
 Galaxy S22
Message-ID: <sbushql2kigkpuqdgt5w2b5jdim5h2jk3ncestgfgyaloqswpk@gf4pakjdcp53>
References: <20250912202603.7312-1-ghatto404@gmail.com>
 <20250912202603.7312-2-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250912202603.7312-2-ghatto404@gmail.com>
X-Proofpoint-ORIG-GUID: yTJYEqL-qZqdfTjmCn9f30PBNkzRJ2AU
X-Proofpoint-GUID: yTJYEqL-qZqdfTjmCn9f30PBNkzRJ2AU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX7YihzJdY+5/W
 N1pcZpGrs4Lie22tgH9K+7P34rqquajtHYIH8kB2v1fTOpBvu1nmnWLPsLySQvsZK0K+ZD2fGJ+
 YCKM0MPkLXLBGA1KY1avX4RtQx8HZAj33RpfyUOQUZPuU2j46/ytK/sTTFJRIGe2KdASkWBUfPz
 Rw5cRddMg7rfXoU4ZKh9qIO1kaPmxPxacYI6++PX4pWuiU5XTr1vkVP/KJhLDXmlm+A5Fzf4wLr
 7EqqlCWJ5T+OHaTVtA9agQ2ZNwatPlcy/gjKpgxP/EBV5D7c0a3+sV8qUoUCz8XyP7ZqTT2FjUJ
 3gS2oO/O5SnY7SW52QGJ6mkfI/TfTI9YzQZXEccq0kXPu/qqb+b9cnyma/6TnDulydPnUDjcYtt
 GFH9GzaN
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c48b20 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=fUB9F6JP8phhdykgREMA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On Fri, Sep 12, 2025 at 08:25:57PM +0000, Eric Gonçalves wrote:
> Add new device support for the Samsung Galaxy S22 (SM-S901E) phone
> 
> What works:
> - SimpleFB
> - USB
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 145 ++++++++++++++++++
>  2 files changed, 146 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

