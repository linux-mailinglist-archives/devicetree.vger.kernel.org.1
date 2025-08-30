Return-Path: <devicetree+bounces-210866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD40B3CFE9
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 00:32:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 046CB7C28B3
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 22:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF109258ED6;
	Sat, 30 Aug 2025 22:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IilZchI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCF51F91C8
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 22:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756593141; cv=none; b=poVKfjZzInhUnBPkL/EwoqLhWU8JiMi2ThRcm0MYTGUrgNCGY+/Lz/q4nWTzhfzBto9lq0zxr/e9ZVgeG4NMfGJHWuH93HzrxoOLliXia7aN+odvz3cYWiyc5WgIHp2dUuGfuk254Q8jd44N9JwX/cOVUTekcrExXPkpU7lCsI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756593141; c=relaxed/simple;
	bh=us7sRr8yLEdHvWlleTM+BBqy1U2+fJ2VNFkbnU3OltY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oIT6rnDqQXzA6jUkjLZjzm8lbp0ywpoNtRezf6wLxNMCOPYenmnFYxoGuF6bsFFXTtquqBVMm8yAxfwZPKSjeQQouA/PQBxU8LwTo5bfpSpBWY1uWiJnnyp4dclREAFqPgg1/dO4gLgxEljKup2nqqBSoFBmggqrexCr4/eoghw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IilZchI7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57UMIUvn025178
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 22:32:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZOk2Fr4etXqQXWWu31+aCsK5bvdOnYg2L2JTOXhsW8k=; b=IilZchI7fwzK45sv
	6CSw0jKZI/ndE+4w/eUCgnpqt0zlgxidPaGtbEAJbrAbynjUZ4uRIv3xoHzXjGUG
	+uPGmJow/gxmNlFAUMVa+Ip+goGEEwvmot0BHYb6tDLLTsALdShWZHZz3wQA5Ned
	Tivt3swz3mWTkiZdq3GWqlTN1cvHZonhDBMia+si2FWBIGPza7cR16YWhHBOBcCK
	6A+z8Xlo2TiDht8v2cJUbTqRqI74wB36exG1y2xicByn2bPQwEbkfM0HmjieSYH/
	8r65lN6OV450D1ZX/n2U8gxlyZmOoYxVnlqJeWslrYHfca9olQgV6qcgVodUFGla
	BaUHww==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utfk9571-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 22:32:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70dd6d25992so65792406d6.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 15:32:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756593136; x=1757197936;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOk2Fr4etXqQXWWu31+aCsK5bvdOnYg2L2JTOXhsW8k=;
        b=Zz+26gjwF1fXTKtpT2ThbQI+4QM69izDy3RSEhOhQYPMHDyeMSfoOwoOsfFIBEoyRk
         dIzANcYHOqZabpTwXppT1Rjt2omGyBHT0Rki8NaL88QtcCjk3P8VCVe4vu4F2QOZatHJ
         PXjEzwzlUOyQllTw0qehHboLWlJH91t5a9qD4j84VEWlKOFto+Y3GjdwtO5y2dmsWdWm
         ePVitvT4I/wfQxldBgeFJEjwFeiwJg8c3qpZu2XNN3NI610mAddZIRyQinmfD3ITYEW6
         oJJqKCDBz2jX1HKQY5F5aiMANc4lXQ5STTBOcJch7g5RtMwifoRJNdUGbnO2qXRZ32/S
         g0xg==
X-Forwarded-Encrypted: i=1; AJvYcCWCCt2uXH192WBTWoWFKdFQmj5CgSQYIm4WJtqFksjKpQghMOL1nI8Bw6s/Rn6n3omOGo0JoTzXIqGr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1WcLLaXioDjUTLUE4pD2SX7ztAVs37Fs+Wb8wLN9CVrXyboQq
	g/F+wtAMd9qFngPycuK78aWj0OjhTsD4GRTu/736AoK3qxVvHZkqyoRBdh4nLT/ICFt0+BtkSPb
	4KLMn/5vh+0ReUAmt2LgXz0JJhzmgs0fGVXSIAt5JYEXM64fiwqWsjnbwLzgR1JrC
X-Gm-Gg: ASbGncuzM/8ePoiZ7uq/HL2d0a9Brjm/24FDphq27ND0f9SY0gF0Uu8ZSGkV4x+vpIf
	SzY1L1fWyPT85bh7ilCDsrCx4UehuRowxNeBwmUXm2Q0p3HKOBAGjCYiqcqHTDTKXslgxBN/Ead
	tOQrKXrzM0uQj9scbM9pQLUwGGEmaw7M/hl8fzbuOLGbxoSlvCXXN/DLasu6PT4ZZIuUTcuQj+h
	jGtmZGgCgjDeWpmf0OQgKP3kpmE/YDNVshP8425GgzuqyWYJFedO2OCe6HKKkfG+xHCyT6DJwfV
	GR1vcltVqCG4G9jrUTRJHBsJatpWJXpeVrz5tUDB2cQr1sVsDigB8WBQlXkpMxZ6iLzVx0ECtQd
	8r3cG/tq32qnj692QCygByFBCv5xJaAug31Ob4OynqNm7AZ8GpCuO
X-Received: by 2002:ad4:5765:0:b0:70b:afbb:d667 with SMTP id 6a1803df08f44-70fac702598mr42924156d6.7.1756593136384;
        Sat, 30 Aug 2025 15:32:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHR9Jdct+dl5bztXAQ7MPjTRcDYv2SEdv5r5sALsU5a5Isqo/P5kseYL+FWDWZOGBYsglJD0g==
X-Received: by 2002:ad4:5765:0:b0:70b:afbb:d667 with SMTP id 6a1803df08f44-70fac702598mr42923966d6.7.1756593135939;
        Sat, 30 Aug 2025 15:32:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-336d0cb4793sm4700091fa.30.2025.08.30.15.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 15:32:15 -0700 (PDT)
Date: Sun, 31 Aug 2025 01:32:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH] arch: arm64: dts: qcom: sdm845-shift-axolotl: set
 chassis type
Message-ID: <322qbrll5nwg6prpj2uwiqjvk7lmboibq6vlklguxtfpw7547j@44df3kxleua2>
References: <3e04efc06a795a32b0080b2f23a138e139057b02.1756569434.git.agx@sigxcpu.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3e04efc06a795a32b0080b2f23a138e139057b02.1756569434.git.agx@sigxcpu.org>
X-Authority-Analysis: v=2.4 cv=eaQ9f6EH c=1 sm=1 tr=0 ts=68b37bf1 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=ze386MxoAAAA:8 a=EUspDBNiAAAA:8 a=zp4TkvOl8oPtFYFRJokA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=iBZjaW-pnkserzjvUTHh:22
X-Proofpoint-ORIG-GUID: 1yVcZ8riE2c7jTZGlFRjWBcBf1pBBZnw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MCBTYWx0ZWRfX9ugPdXSAC8qN
 zA2mLIb/aOJ2kcykmvLuQ+kVVGE1kqSQPN4yHT8D846C4cxHnM6iSz9P7/4m+EZq8RpeTo9eHGR
 mgsLW/i+PR2BK0g+oFiFMffYFfydvh0Dw3+Zl7q9sGznu4LqvYvIcj0PokpMadi20QNoFS3+NxV
 Le+8gxOFFotNGBMvZy1x0YT40BpUPdnwOnRYxEpbSkWW2xTL/JALRnRXLx34AgMRh7Eh3ufugPH
 rQ/HEH0GymUggmh1NRqt41/CUc5F4ovwPpFx+9JpIfKE9KPhF+TnVuDfP7eMkgjfyTdLi/k+8ka
 d7kHYuLfuE3SYhuwE16j5yYqO1R2SNGcw52Pa8SNhsPqC2J4YwJr9Emchlo3YIaD09nSyMYB8RK
 rmv+UnPC
X-Proofpoint-GUID: 1yVcZ8riE2c7jTZGlFRjWBcBf1pBBZnw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-30_09,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300040

On Sat, Aug 30, 2025 at 05:57:29PM +0200, Guido Günther wrote:
> It's a handset.
> 
> Signed-off-by: Guido Günther <agx@sigxcpu.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

