Return-Path: <devicetree+bounces-223232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EC6BB25AB
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 04:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 001BA7AE1A2
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 02:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04DB232785;
	Thu,  2 Oct 2025 02:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CqOkk8UG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408D3230BDF
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 02:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759371723; cv=none; b=flRq8//SD15pj59elFXCu/NiC5HfShPKzxlPMJYl8Jw0l0AMfOXwdaLYh8ioBHm3sA3bX1HS47suen6DAqfMCnMC1Z1ebzUTnSvKBDcADC8fLZT4nN8JW++6a2Q9vs815eMLQnfRZDUdS6tLUtzXjFEuw4xB1XeSmKACRhQlAOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759371723; c=relaxed/simple;
	bh=R3u8F58rHAEljzf5ieZ6tcvDjFtjotWzcbHKvmj19zI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nAqZ9AyvVpUluJk9yl7FXsmwE6LrkCOcbi80FJZo3Bi4uYxhUxLAVTy0PYK/A84ZdVXo7x4TqBIqk32nERRZMiIisgTCo3FN/F21HNdL58DHPEL6X9/R7JdYelpFipm7Y76+lJ/SE3MaA/TQfGpI3iHHz/ZXrXljvm8UHTNWOW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CqOkk8UG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcLHM024141
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 02:22:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=umdUQf4R0bGWG14YfjuqrsBl
	GIQNCMb9Bi3W4Jjo4VM=; b=CqOkk8UGOVZjHDAo5OEEm2yojmelwRa9YLKhHRNI
	yKKve87kzZUSbm15C7SS+aQe+qAyeIb50mpRsa+sMUQyZu2SwuX3BhoJbXFtu4eE
	Hu6aIL3TdBo+Wy38U9EY4m/sKvURXXDQJi//LU//Jm6WhEYuLy7trQsOJgw0xngJ
	eXPgupHR57fkIWwHgy1MW1AmUYunzmR8aSslaeWpLt16FmrjKf4Vzz0fQwiOogCq
	aE2wd1moYRH6mh8Q3FRnRO+PVENhUqLXDUCpZY4lMHiu6mw8fvWby5X7NKWmpeDy
	oMMFGUJ0mKyozSlao8Z+EWjJ+Ncqtswo/HiZyhfT6/3b2g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e977x9cw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:22:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d7f90350f3so10102761cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 19:22:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759371720; x=1759976520;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umdUQf4R0bGWG14YfjuqrsBlGIQNCMb9Bi3W4Jjo4VM=;
        b=B7acZk1yE9pXIhrXozRlA1pY1aU2Xx9cHwijkeysZ51dVkRu2yxKGGEHzpEhw8YySP
         JcYKT7X0iEhi8r75UPNGqGT69smc2tFbHU48Z1H9gv+SIfk0gislmy/fDlcoM3N4XVqD
         BoWyxTkGsg4CFV41QAbBTfh3an+cJhBJCfudv9Zehh0ICSPUIDd91e/yQz2N/ylKfBnR
         DJxkDY6yMJeNMOMSD2JWcMEwt+OsT7o3K36rpdKKiU8r9sGokyZJGmHSn0OELmq1KaI4
         CbdT95suRU5q0ReWgwO/o/dwYOtk5XhWH/5CFQg/2HkW46Q0XbnSU9FIIgTwhGowGAmP
         fqhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZEoxvdPpiWPYt4EMEPyO45xrFRrhyFl53qBz1hVKurxFcHtJCFgJ7iCXWWS8Pi43fEYs2neHDehE9@vger.kernel.org
X-Gm-Message-State: AOJu0YyCjaZyBY/FamrHUybpUys3Yj5O+A3KsIL1mhkmrcnqaDXsUFZS
	u5+QctPvKLH50ihQd+mINtRDRJpz94/cZC1nfnmuytFedD1DZtmI9zg/6o9j1QcnB69sCRs/IA9
	fLVQnA3w69YskN6vbTplXJWy1BE1Ry2vIFHRBMq45oNDdnrXeEgNvQ4DvovtRVMaN
X-Gm-Gg: ASbGncsk/xQBFW3fVX/sn/RoxylZTJQthM09ngqG6dctGnOr6E051HyW4gfYDcLgscq
	N9lTr1Q8DzFoJmlDNPQWBs26osr8tcNDZBoL7zsqIosjvCNx7UJjAjpR5g27PtQ8v/wKL1Ywc7d
	qmxHkx8/FOuKhYVK6f+ntEZ/r0Rf0VyeqZCqyhk2IimmWPlXqef6WJhiiYB2cwGynL7thsy1rEo
	E9mFvckMm+dDv4VF9j99xhrpuIyo+d/gku1hCjeyVznESILaknbSORwRojaUKpI5SZzC5fcqXI4
	ZVZHmDRUuOr80zYomylK4kWcoarR5TsrNJfqXRo3tQgg+2EsNIdtFliKV3cQ5G5Ir1AkRkI3MG7
	6XjTose1O7kpq5XJ1iUXMRMi3yTl3ogFGGX+cuMWyGyI4bkx3spM9MbY79A==
X-Received: by 2002:a05:622a:178f:b0:4b7:acab:852b with SMTP id d75a77b69052e-4e563187a7dmr27245391cf.26.1759371719983;
        Wed, 01 Oct 2025 19:21:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFF+2h4rkzuB2BpRC2eqoMde/6sr1BdY4uOvzdxbbodL/mbH7Y0U3lM8GVcw4rutLwD5Ck66Q==
X-Received: by 2002:a05:622a:178f:b0:4b7:acab:852b with SMTP id d75a77b69052e-4e563187a7dmr27245051cf.26.1759371719534;
        Wed, 01 Oct 2025 19:21:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01140c6asm390391e87.56.2025.10.01.19.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 19:21:57 -0700 (PDT)
Date: Thu, 2 Oct 2025 05:21:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v16 9/9] arm64: dts: qcom: ipq9574: add pwm node
Message-ID: <zrpmbwytu4szqpwrko5jy2kk7uafabaq2lhxrwqs6g4qnfrr6h@34qy47zjmddw>
References: <20251001-ipq-pwm-v16-0-300f237e0e68@outlook.com>
 <20251001-ipq-pwm-v16-9-300f237e0e68@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001-ipq-pwm-v16-9-300f237e0e68@outlook.com>
X-Proofpoint-GUID: H1sXd-3R46zTKtOirJL-0Gjye_6YWZFT
X-Proofpoint-ORIG-GUID: H1sXd-3R46zTKtOirJL-0Gjye_6YWZFT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfX2iODb0Z/fqaN
 wTA99GbRk1cXNVu/Jr8SnS8Rm13u7tbkftD4j9KseQxc+e6Au+uF5POVrcHpApeHjhlsxMO1f6Z
 3H1iGC9qIEa7q2MWBphWFwQ3tB4/TssfRjo/r8rYV+XjQrbNaD4uwcDXMeEczzJ8zW+97men8s9
 b0vAizn89v37k82O90vcZXSaF8/Uy2esSUqlDlcDRVJvmLEbX08CnIBb9uxbsEfSBuwYrXsdi+p
 7n+eK2xgPn7soR/AQepgqvSA4cBNxr5ZzmP5+cYoJJ1e1A0pwY8G7GojywjqRpfI3c6YW99RBUF
 o+2Ds8dmqiWZldYFYn9XJ1CQ+7HWu9Pk2AiiDGZPJP1frQRR7B8EKT+xW6iClgQ3hRsnJOmA+6m
 LQsZ9LDOsB7ac/hE/VUg3h7A142WhQ==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68dde1c9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=THxROjQVSa7aAfmVI-MA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043

On Wed, Oct 01, 2025 at 06:04:25PM +0400, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Describe the PWM block on IPQ9574.
> 
> Although PWM is in the TCSR area, make pwm its own node as simple-mfd
> has been removed from the bindings and as such hardware components
> should have its own node.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 

-- 
With best wishes
Dmitry

