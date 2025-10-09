Return-Path: <devicetree+bounces-225076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3033BCA35A
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D288C3E4C05
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A131223DD4;
	Thu,  9 Oct 2025 16:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d2LzNvhK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8140F2248A0
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760028077; cv=none; b=Um+BbK4F5uYjMo2w/SilCCCMWyVB4klS0ufciEUXUllCjL6jrWp0JP5dSB+QEb20U3QrAZP5lci/VtQY3vM04zV/AXN5nHXrvG3F/tsCxwnvJ0dBiiOXOnwPqdSXMAzDS3RRBZcnyIsQFD9tBQ+mgRqIKvUEqW6dPMaifVk3GBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760028077; c=relaxed/simple;
	bh=huSoky+Njxyfb9vzBoqbK2jj6WEztwZYTUrNvSEcOCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IFOfmQamU5i6zh/P/n3FnERZBaWMDFd+7dCr7ezH2/6OwZAXJBlgdsQu03gav6wxNqyizZPuS3jTFDzFWqfncPblkd+4+fb4jaJxH1U63RSH3uDrE+P6dyimQWbxxLhU0wPm0W1it9xajewl8S+XFrFPkideuNU6f0GXBwlUw2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d2LzNvhK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599ErtsC022541
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 16:41:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZH5MJU1z2kkrReUPnfpEC2Sv
	Ik1fLetQo4m68cqSWX4=; b=d2LzNvhKuBavrdidkriUIThV2NX/6sb5KV6nKaS1
	jo+qKSyfFtrUq+2xG/gR5DGBZE6VUaq11qb66S4nDyxj0ZEJJjmdgS+yQWrd1Upy
	VoGKvT0Z3pJ+flX6w5hZDJMP41gD5RQ7Zud1vEBHKiM5qtjfotfZN448/RhrecBF
	i51BiZ/2MFwp1vOG0RDl+cqeV3U72LvuMrP1XCfWzqJdyMU1oN8X2NGOZL0jgFPd
	0nKhQTt9hBzsI49DRbr27tMKKh4tStehoDkcLl+pkMpUeksS4wm9RTy05MnsaSiv
	tIERK+DIgif0H0eWgEeBuphRI1ggctbIfclb4t5C9iiN/w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4skmb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 16:41:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4de5fe839aeso42493991cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760028074; x=1760632874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZH5MJU1z2kkrReUPnfpEC2SvIk1fLetQo4m68cqSWX4=;
        b=bUWEPmHNGvyA19nWzr/bdz9tT8s6gNJ6tgQYZWyTAPUmfEJbiolFqNxRpfT0t7liqp
         QpT7V9eV3hw4vUrSB7VDQThCFvg4x4Qn6y4Ud5WTMBy3FNmcPDgcPhxoDnpg5KkdWApZ
         0OcQeuTcT8oKQ3IzpOUzYEUTqCaQyxi+xeH0yhG4AdMDFG5RX2F4EWpu4UxapK5QHUTi
         fdZUnktNFN1UKK5K4jnGeeNhdLL3xe9dErEzYr0J3nZ465h43/QMoDgGwr+3H3eLWCBV
         NoTzCm7eBbwa31Vf4ZgwbZzJErLuWySy2tdyRkoq+lCNh88uJXnIO7rA+SwWVkDUYIkd
         6gBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZak2f65AXvP6Db/mNEbnMl8nLe9vdltNbw1vspDfYLLc4Iq1wSUBYVPQZ4rIJ7H7ges9X6xG9CTdo@vger.kernel.org
X-Gm-Message-State: AOJu0YwfMQCfHRLZI7Y9XxD6SlBVFfJ+pHwAiYLbXltNRHJLhfTI+eb5
	djxD/FNAoBxI+KwJ1qPc782lIO8su0hqe4lUm3Sn9wnAHouTzcO2ypN9AL/63j9azkpDc/n9SqH
	hlYv9gLk0DdSF3bBfazF0rf7RuzcALehoP497lFgwc0q5subegEQns9MPqCXDy/Ti
X-Gm-Gg: ASbGncs0nErZ3T40fROboonoHZiwQ1DD7Um20SJ7oyJv9zpvOvZzY50O8+z14PfUyRe
	88+pIR7lxuKEPfTAOtYS+0g1Xs6V6h0CnBnnYzww6Qw+b3ACTwN9zmGpb6FMpxa/1kgCXHTMHyZ
	P2oHKtMP8UrE1e3IGFY4o9T9MiANR7+iucUd3gBGsFtaMxKYebHm7PtLCsOjYVK93+hhOldaIRB
	uvuVrRPrEcAeJSzYEz5cQGqAL0TN2F/KYBJl63oot1IZowXlTkwDjyUvLJwPXdtDlB5Noy7S+XY
	27WEsYwEeK+UJ2OVD5w26xctafewwVmtwUNS0y6eXVbMv2Ci4P6++uW+pi+S+t8XMsi/wJEaz1Q
	3t/BqFS+tVC6zz3YRYg6yPAGCLGRuU1unY+uePwaa/7sxWrwJbuq/rGp0ug==
X-Received: by 2002:ac8:5d05:0:b0:4de:9f9a:b8e1 with SMTP id d75a77b69052e-4e6eacd1632mr109502591cf.18.1760028074428;
        Thu, 09 Oct 2025 09:41:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzrUwRk3yaunly+XogzDKcTmyOuXyUJaEXYWlkGYC+ql2A+kl9xkhVKy9iNz+hgl2z4DiTtQ==
X-Received: by 2002:ac8:5d05:0:b0:4de:9f9a:b8e1 with SMTP id d75a77b69052e-4e6eacd1632mr109502251cf.18.1760028073944;
        Thu, 09 Oct 2025 09:41:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e577asm154e87.11.2025.10.09.09.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:41:12 -0700 (PDT)
Date: Thu, 9 Oct 2025 19:41:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wojciech Slenska <wojciech.slenska@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Fix uart3 QUP interconnect
Message-ID: <sdxrshrrx46wlskoz5kbefqzlhc3nccmgaqoxbc3aif3ep32dg@c57xluzx4znn>
References: <20251009090718.32503-1-wojciech.slenska@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009090718.32503-1-wojciech.slenska@gmail.com>
X-Proofpoint-GUID: L3unkK485hWuY9NW0XSi-As4t64BI6Ed
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/XWRzLpW21De
 KTTeJmBIj2o/UDCxljeZNaEJH7DZLWakE/Iz8IZAwsqOJnZSQSHXZiF81mpMPymHQbx90N8AgpS
 NArfrDBcIF0s9cDjgS8WOyvGLV0lWoBtnSopCt2i2LSCnX7mCQO/A6Ldd+Qu2/sKkiKBmGjABbu
 Q3g29qncNsqzch3HRf857tbPNR/tJ6DHPhmBhZ9lobb/EJBLr8cE6+B9oIhOMKswmDzU2Mxjd99
 oBu+yrunNQdjgoGbtQgUQQseCXGI3wpB3Kt7EnpUFiTpsWszjQXFUD/2LUwXKXsFg7vwXsP0xya
 iiVcrEN32Sqvvc9tsInQ0tX9o+91gI4ctw4+xGLtw6PpMEZSVSaVQ/OMnPqOjXmd9dvUAOZPx6Y
 Z+lfWVLffS16cPHKJwffDl8H1CFRkw==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e7e5ab cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=xtyRbcdHMR7QiUPwaIcA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: L3unkK485hWuY9NW0XSi-As4t64BI6Ed
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 11:07:17AM +0200, Wojciech Slenska wrote:
> The config_noc interconnect should use SLAVE_QUP_0.
> 
> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

