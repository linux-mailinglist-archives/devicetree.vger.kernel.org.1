Return-Path: <devicetree+bounces-169084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D69A956ED
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 21:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E1F23AC900
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 19:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB161EFFA1;
	Mon, 21 Apr 2025 19:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OrwFg0e1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D37F1EF37A
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745265200; cv=none; b=VMvXI+BOfUCcdoPWFHZExEYCeuWiBk8iQPUtfQTjNgtngRFq/cSn27Pu7fkkYEh5Tu6RlEjrL2sKSWK71n8c5Dw/S1+7sDHCZ3S/hoxwiGFn1g3orsYsdxBup9Vx9r8fG70NAl1sJRS0wfN2tdrUiMUDHIhRUP8GMzrXhF3Lv5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745265200; c=relaxed/simple;
	bh=OU7Gd0jDNBLAcjP/j8tR7B/qAzAvH39PrywOYUx9vXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VfFmJogUtMzuVTp4OXPj2iuqSemQ8pvW2ONv1LEYUsKwjpr9KYuIDPsrG0MRfyqna8vsTORZMaqBk4upkJ0BV/AadtHEvc8EWt+ocnIU4dzDHwgZwTQaZnH53nB4YHA/7MWOR7KMG8juAVbk+78C1CqI6x8zTU2QiohhC+A6RKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OrwFg0e1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LIgZ92029227
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZnQHdwxDrAE/khhJ7QSLyL7t
	J4Af691zv3dtuvcnSwo=; b=OrwFg0e1cqFCn6ygDEx2y4j8wpudvfSW/yCDeLxJ
	YI+WVxdhe4QtaaaOc3Yu9n3xqsqet/K7xFGvTIqWxYviInOeMW1Jp049RRqVBhWY
	an1Ki2EI/KdZiz53ND8PQ4YnZ30NVo+HSL75VXNXdcL9Me0xM2Sf94lAeqzOuqQF
	wzD2FMmoDm5LaOTfFlrzpcGkxmudwogPsn0Uux51IlJTJa1Xsc7Co5MAq6K4Utgn
	4/DbtW7wVXApHUDXUwyr2Y2G+XemI32kAb6L5/ILukiyzLd5VuweyN5BFHdSoFnZ
	FIggkyD2kwr160n8+5zNNcM/5oWWHskr+YIQk6A8z8YWbA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 464478w6f9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:53:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5d9d8890fso953312685a.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 12:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745265196; x=1745869996;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZnQHdwxDrAE/khhJ7QSLyL7tJ4Af691zv3dtuvcnSwo=;
        b=lA87jPvM7RKTsmJ7CSlK8W3eigVn7I8pbQQaaa+FnozsRFcewvSYAwNY73ymL/NiRd
         VVUKBaDh1qut/OitJOSzNyYZJkdQLC8D2/6vfJYzxqPFoIR8vtoB1JWIRmG1IGQsgjJD
         1LRLiRC8BRd3w5KN4U+JZkcbGaFzuBoEz6RfApTihUcSRgeCq5DwcxNwKLugBZ9EgGxe
         hLUP3CU75GvuX8wVSbobAFHTOqmtV3Ve6VJDUMH4NVEyTHpWh+FRk6vTNGqKffKYohjp
         VjIZ8IByogp5vNzR0hnHtJMpwsLJYYKccaV1i3uXu3px2L1fSjS8psOoroos+ombL0T9
         iJqg==
X-Forwarded-Encrypted: i=1; AJvYcCV94DFmivEUNEBmYcH4sc7YmpEJd8gfT+Rz1dCyD0VfXveJxUfKZwHJO+xevHHO9uhZZlNyc0Vi7v+6@vger.kernel.org
X-Gm-Message-State: AOJu0YzwDnCg+WTm/Hny47r8t6rrRm9V+i+QSizZd8ee/6MoTNjDbvX+
	utJ6R6l8V5Tmmb9pb1rzcczKpzn3P6fYoUvT+ILJvg5sVOnu0tZksacx56zS6fr3BL4Frur4LEF
	XlKSLfMa8Zck/IvCi2sc4xQ+RbsZAymWZ4919mzKKiUMMGPBQT/C5fe0FGhD9
X-Gm-Gg: ASbGncviapQ9YgLYpnzP13HpKxrTE0LvhepjKXz0KN+HWO9fU9rPIbs9psoIUOosGnI
	h3pc4bEiAB8U35z9WMO+OpdZU3sHL0b0Af9FOxph4BdXANM2mqpU4+x1X/2GTnDgpBdJVB0nKwF
	HUzsiKrD9+nFKmCnSJWvERZPm7z2OwNIt993rDed19+4VB3564P60f6MuR5DxtwWrFO9oMqdosf
	YmnTOJQG08l5g+ubCPf8SrAPpidBOuRbTEBJbDw++MPdlIG4N6UNzaAOux6K4ck2MDjkTHym1kQ
	X0pU7Y51IVuI0tgAqSgcBzRmj7ebcNKv3MPHmwPXmcQjheSwWErexZfH8gt0Qw+dzr188n9YIV4
	=
X-Received: by 2002:a05:620a:450c:b0:7c5:3b8d:9f2f with SMTP id af79cd13be357-7c92575f97bmr2361734585a.17.1745265196289;
        Mon, 21 Apr 2025 12:53:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSKwkTFJPLVGZroJhqvUxxew3udNXbpWiYRQo2p8soWzPbcuaepKjeZEAoQXu3ztfdDN2Bog==
X-Received: by 2002:a05:620a:450c:b0:7c5:3b8d:9f2f with SMTP id af79cd13be357-7c92575f97bmr2361731185a.17.1745265195965;
        Mon, 21 Apr 2025 12:53:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e540eccsm1024666e87.74.2025.04.21.12.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 12:53:15 -0700 (PDT)
Date: Mon, 21 Apr 2025 22:53:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Widjaja <kevin.widjaja21@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] ARM: dts: qcom: sony-xperia-rhine: Move camera
 buttons to amami & honami
Message-ID: <7wbrnry5xzl7mno3sqtd4gpgf2riihzubkdzpu4xp47hlzmg53@ezksk4qofosi>
References: <20250419-togari-v1-0-45840c677364@lucaweiss.eu>
 <20250419-togari-v1-2-45840c677364@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250419-togari-v1-2-45840c677364@lucaweiss.eu>
X-Proofpoint-GUID: Ykn0SLpiCuF6ZTjV9kda7p4rXbXb0Lxh
X-Authority-Analysis: v=2.4 cv=CYgI5Krl c=1 sm=1 tr=0 ts=6806a22d cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=-UYqrYhTHp0prKDFsBoA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: Ykn0SLpiCuF6ZTjV9kda7p4rXbXb0Lxh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_09,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=939 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504210154

On Sat, Apr 19, 2025 at 11:00:39AM +0200, Luca Weiss wrote:
> From: Kevin Widjaja <kevin.widjaja21@gmail.com>
> 
> An upcoming board in the sony-xperia-rhine family (sony-togari) does not
> have dedicated camera buttons, so move those from common rhine dtsi to
> amami and honami dts files.
> 
> Signed-off-by: Kevin Widjaja <kevin.widjaja21@gmail.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  .../dts/qcom/qcom-msm8974-sony-xperia-rhine-amami.dts    | 16 ++++++++++++++++
>  .../dts/qcom/qcom-msm8974-sony-xperia-rhine-honami.dts   | 16 ++++++++++++++++
>  .../boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi    | 14 --------------
>  3 files changed, 32 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

