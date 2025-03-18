Return-Path: <devicetree+bounces-158577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E07A674F3
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 087137AB8E5
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C154E20F09D;
	Tue, 18 Mar 2025 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fpQRH3J0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9172B20E318
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304165; cv=none; b=JREzoyP9B9T1ros+96dTt1XxZNI3kG1hmnGnrmEo33H8YslnOKATWhpeDWlUwVgrF8q7ivs05OpKgOBWzXBmar4vUp05xFbOzBZzmP16GUrfbwDrohGJAE1GWi9pw+lvwp37x+2nQFFc2+pUR2h45Nb1jkARKpB6eLMEmggtdxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304165; c=relaxed/simple;
	bh=T3wzl5BuTKPC/Qy9/OCpWwcFWc5KQVgF1XBbM/fcyYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hGnSTBN6fB1kk8lOMR/FgcSTmaL5N5FoHAYeb5I66WAtZSNJvUMmOcLtcZXSQPNE8tkVBzwTHlpWitXUKWMEySCwk5vQa78ej7d6kCYXcObyyVILOZoCiUX7bFQRTZvk2qalSzv25/10Pc12U1OPfpWo5/Pp4yq6Df0ce7KOxH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fpQRH3J0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52ICeFbd030598
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uGDujaB4DLyabP57ZFAqglGX
	KkKUWQiyDtvod87xHNc=; b=fpQRH3J0JoYCzHouc7VQOZtfva+i9kXlHc6KQ6Ri
	zm9LRm0BfHgdGEIs1EyPgsnB94UHSgVo6Zu9fPCL0C18QOuZ7gOU3kPsXMCmQATU
	aTH6qUrZJur6wScr/l/oBM5OYmteJkVbf1QGitdKL0BQBOyl50cMw4Sfvp+m5jCx
	vzIDHi5sRm5CE/pY5pfgY0QNS9f5ADK7ZsAfzTx4+XQfIod1k5+8NG+bhvLyvWHO
	AyPaJ2jtU+evQT69/vAIQv2qXDvsXgtrIT/zTb6BKGPtjWsnhubM6Y6U9Xi2YCN1
	TIlOT+inw3bx2sjnr2KyB3pquTqS8tP/EZOxjNg81e07Dg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45f91t04e6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c3b53373faso940470285a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304158; x=1742908958;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGDujaB4DLyabP57ZFAqglGXKkKUWQiyDtvod87xHNc=;
        b=LWvWz+3/SNxkdIawjrD1rKI5XsMtNkLi7ioYBELpPgAzQd7qM6lQWaHG0rCvNHZKKP
         VDRAJWtTKEfp9MW99QlE39wCbDm+4x+OoUwLQFfGU+R1Uml1jsmvNuF7hxqhcHhRQHhV
         QflrTzz6G3gRbmAS8u0XM1a8pQQ2mEkJQTrwr3J7rva+PsE7uYTkq21K2NKyXSjCFPjx
         L92XuS5Crbdt++59nMjqZFPnhn4TrFTUx6m6JE4EMd0GEj+VN+Q15ReGyieSE7qLwQmT
         ekb4kF9z7mMCRKsqmmrYo5s1zPxmKHc05WrxbUU8ChAWmK9XG/QoKw7Drx1+gDH1m7pR
         WCSg==
X-Forwarded-Encrypted: i=1; AJvYcCV8vjZqIiLMS4B6Gxt/trb6723I5YeV0mTqJ/XSbyJ3/SPz6FQQt9vCCJs8GNt0W5WT+J6UU/Xfh+xR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2E+UWX3W4QbAy4ntuiLa0x9qI/EGi5uBPSsfAaIGlKEOhX7Lh
	gSmC95zKm/+3G804/Q5hFsymCcvq96wBk7RsrlQfNeU0ZM/pvKaBnbbR25GNhaSTKE3AWtxa5fJ
	UVpBoHqn187vyi6OnpZBWxB8ZK/CQU1Py1ztGrklXdk+QEkKnUMY0STm9uBXd
X-Gm-Gg: ASbGncvrtv1bkEOhcFAByBeT6D13hd+GwFBJ8c9JWcxrb56ijNl989MoZE6w5bkNtV3
	i0qSroigGmfZb1GqkdA6sK8/utsFRT9LNgpU5HzmggduLd260nfXuRaISs3F4//XxFDp51/Fdc0
	Lp+fw/Mr51rtRrjOk1EbxOPjxnR2OD2pr18TDwAMIkLOtv4Q9rbT81OOCc/zB9GgUWvaro3T/NY
	grYi2s1fyeHFd6O0hp5rVcPlIQFigUv+8m4oeNII41sn08d483IHSbdhHxE98YOMZvpdCWuUm1Q
	/CK4la0uYW642LTCvGvDM18YnNlvGR5LQt1wc0Uucw567XW5JjT/o3tf9vmEpnhrg32hS5P5FQi
	l5oM=
X-Received: by 2002:a05:622a:4008:b0:476:8c68:dcbc with SMTP id d75a77b69052e-476fc96e517mr48614031cf.9.1742304158601;
        Tue, 18 Mar 2025 06:22:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaNdlc1pTWXWxO9BlgHhquQTXoTV7LfD1gCYHiNW/dPhyGJtf6v2GHBvytRzHabEmyDgw98w==
X-Received: by 2002:a05:622a:4008:b0:476:8c68:dcbc with SMTP id d75a77b69052e-476fc96e517mr48613641cf.9.1742304158143;
        Tue, 18 Mar 2025 06:22:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a8944sm1695766e87.14.2025.03.18.06.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:37 -0700 (PDT)
Date: Tue, 18 Mar 2025 15:22:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: apq8064-lg-nexus4-mako: Enable WiFi
Message-ID: <g7scnbxbem3xviz5ufuhqakgzgz3y5hpfuo3rbvipcj54aqjaf@7rjwbweokcvy>
References: <20250318-lg-nexus4-mako-enable-wifi-v1-1-e3b4a09d9f68@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-lg-nexus4-mako-enable-wifi-v1-1-e3b4a09d9f68@ixit.cz>
X-Proofpoint-GUID: eH2p5grT6ky2JZBo-_Dzw2ZIgPJyJDdH
X-Authority-Analysis: v=2.4 cv=Xrz6OUF9 c=1 sm=1 tr=0 ts=67d9739f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=wz7sF6bqFnhUK9Hc8PEA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: eH2p5grT6ky2JZBo-_Dzw2ZIgPJyJDdH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 mlxlogscore=618 clxscore=1015 mlxscore=0
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0 spamscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180100

On Tue, Mar 18, 2025 at 01:51:21PM +0100, David Heidelberg wrote:
> The Wi-Fi setup is identical to that of the Sony Xperia Z (Yuga).
> 
> Verified against the legacy kernel configuration inside
>  arch/arm/mach-msm/board-8064-regulator.c
> using LineageOS 14.1 kernel sources.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

