Return-Path: <devicetree+bounces-203330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD53FB20BC7
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:25:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0AD43A9D53
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF515238C0C;
	Mon, 11 Aug 2025 14:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d4qFdL7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ABF235067
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754922165; cv=none; b=tD1Z8g3IA12drZ1tXzdkC1iXVpJ1hRlhYoju4FQLN5us2T9WfMweMKPT0jTULoc9C+bjrvBoCiTbUShyeV/6GkKqf7s7pgLSTSjU3cmVX+Bi2US6UZh0D736blNl5D17wjg0Ixz4bVDtaDuR7ash8/IlfBzacYoSwjg10w37bLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754922165; c=relaxed/simple;
	bh=sGxVgbpfhkMiC2JIzxyPIDukcvGKIF5ZEd6qaix17IQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IsKPAjOEr+yb4UwS9iw+J3ABrTp4eB6eYmnyYyx053P78mBsMUV5Lquj9g7pEiltzF/77pUvN/O1IOtsWz8liKf5w1L9fmsZD1FYufbALSmPDVOnJs9Uz9eGQtIbmF3QX2fRnKObqfElXnw9606UKAVZG/a9ynwIQhQ9SwzHWoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d4qFdL7h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dJl8007895
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:22:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=atvUDHFH97dMJ5RNFFG95hKk
	/JrHvvz/NgsyopsiKk8=; b=d4qFdL7hFWSQqJiJGacCAfvwApxv3jP+S7g5HIx+
	xQZpa8CGuoSfNX0Ddv6iHZBVmd671cQnR0HxEmfbbFfOOe6QQwNv4wMdXjWyGKeO
	4FKZNZumtPL9JBwFDTS8VO9DPnAZVUHnE9u0rAHkGR89T22x+zLoexcUwsu/rmLe
	IVrGrIQ2jcIwy4lIb/rVFiaZ/pqxzTSfwHrkDuDBurZJWdrOZjVvYLVYEyIlnUjP
	vvyQNPFj1Af+30GpLQi3lSEoH19LLIvUR+9nqlwEfRIRhVNGr1lWxiRpAKFHOKa+
	8tR3+/H/txKJAPgXzmnFt284sQTgOo42E3n9v2+Mfub82g==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dv1fmxb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:22:43 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-4fe1f50e44cso1589454137.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754922162; x=1755526962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atvUDHFH97dMJ5RNFFG95hKk/JrHvvz/NgsyopsiKk8=;
        b=SuvKba6VN0OP9Z9nEuQ0v79BbpgjcWtpW4WsUDMWzYMHPfRkzjuOTT4d2Zp74/+kiq
         IkGWsplS/0fQFo4FSAFLaR/Jg/sAjJ53527BdWDuF2L86Ew+yx9/ah+ghuKX0qAua1s6
         BaLADIvgHyr4yXmjWdZSLtB0cepjJycCXrk80lIA8IeUy6F5PiKNes2KGt3LrK7u24uw
         HkMew9YsAg/T4gMXKohNGHFH4Fp1bQd6PvrkfwGERO4l2ipjhxcVLgSkxIW04vLGI9Rb
         JUVlYNP/2yz122t3Z4H562S4UUsrnEH44f8chUdHh2KCCti2i33YJvitxcakh7JS3b0y
         02vw==
X-Forwarded-Encrypted: i=1; AJvYcCWnlQorB+3skKETkqhdt7qJEzH2FWFLZBB7Uo4OGqymrKzakKvHVQ7CKI30DN4+tcgXW+O6PLoUob4L@vger.kernel.org
X-Gm-Message-State: AOJu0YziRfFe4uNq3CY0EYvhUusO+18KnbzCkRFFbQ81YClPK/q8wpZB
	4GDYxXFjoXci1EskEkHAkL9nPsGJTX1Io9CWvmJuEfgzMzfyHdnskz5kmHlVqu3c5a3HjHXHlYI
	ugOq+pUnedTi/qRt8Xoj1CmRCTmLoteJSU5RLO9DsnYDjGrPeYZ8GiW7bnOXKuwbR
X-Gm-Gg: ASbGncuplrEcra3soV7xIH19cT7aUS0AIWU1zDYf6SmnbdNxEES/K35To7vfiltijLV
	mMNyywNhiGbIt6zcbSuv33AQe5PttySHKlEIQlngnB9vcUYdl6kmo3mEcgbQqpE4Tc0gDJYDESE
	7o9cVSNeteUGv2a/uiOdEGhLTzycqanJlceJmRkLnyI7vH+Bx7Qk3yGyppfwAZxSWiW7Ze/LRHi
	G0zonY2cie7a+H/X09d/Q6Lexg5p9CjatrzDWlVStlibBv0x4LWMEazU2XDEYmI5iAPZHVXza3+
	SLsHzzh4RfEkpV+YW85hrRR6nWzrV2xBt2uNghiNAzT4ZbST7050oWd0hdZGUNHcwrktyO3t1Yj
	8gQ+prT1ra5mSMHnKyNswLRjVDahe4y+8ieVGrb4pvgREEhXwSDJd
X-Received: by 2002:a05:6102:cd3:b0:4e2:ecd8:a27 with SMTP id ada2fe7eead31-5060cd85eb9mr4315515137.4.1754922161808;
        Mon, 11 Aug 2025 07:22:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkf0wesS+SmsO1zroWaYcVzGdW2MbxxsG794FhvDnHJ+rgmgrOMISGY1WD1WC3+A+gym4Dsw==
X-Received: by 2002:a05:6102:cd3:b0:4e2:ecd8:a27 with SMTP id ada2fe7eead31-5060cd85eb9mr4315484137.4.1754922161414;
        Mon, 11 Aug 2025 07:22:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b889ac575sm4336851e87.69.2025.08.11.07.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:22:40 -0700 (PDT)
Date: Mon, 11 Aug 2025 17:22:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2] arm64: dts: qcom: sm8750-mtp: Add WiFi and
 Bluetooth
Message-ID: <l6u4y3suv3dpylexbiiznhcuyanlc4ouizhzj2cchblaf6o4wg@fe4laxrioaj5>
References: <20250811131055.154233-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811131055.154233-2-krzysztof.kozlowski@linaro.org>
X-Proofpoint-GUID: 7WM5krPUE3Vmt4IybWMKOUy-y6r9heJ0
X-Authority-Analysis: v=2.4 cv=cLTgskeN c=1 sm=1 tr=0 ts=6899fcb3 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=TzfybVupH9i6CaRfqM8A:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMyBTYWx0ZWRfXwwln2JdG88r+
 rwnpuqVdYp1pDlzbixdUrUzvp3Bp2EoTDOzfNHTtNaxCbOi1UA+rsaLfjuONk8om3Lt9OgHTD/2
 M5yMSJnnWgtWTrSAcSOEo6eRTvNugA5Kgut41HN9BKW82R3FzadTgurvd48I7+JjmMYJALFkEmf
 3mB6R1O3R0+4gpO2YTGs6fA+noOCVFgtOrTvQrIB3CXIvKEq1IZ6MXPvobWNS2b6dbH2KtqNLkt
 8wG4JlilifMQaJetv8pEtgrKu5h+MouDmozzUeeRJCySh5js+0olLm0M3t+Z9aEYE8uMa+3EZqM
 xZwOBAuQczxrRvux6X+PNYJonGCZCc1iIlyf4+cEei++J3gb71wf44/a4yWvbp5gWEuOrcKFELU
 DybTnjYB
X-Proofpoint-ORIG-GUID: 7WM5krPUE3Vmt4IybWMKOUy-y6r9heJ0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090003

On Mon, Aug 11, 2025 at 03:10:56PM +0200, Krzysztof Kozlowski wrote:
> MTP8750 rev 2.0 (power grid v8) boards come as two different variants
> with different WiFi chips: WCN7850 and WCN786x.  WCN7850 is already
> supported by the kernel, but WCN786x is not.  Both of the board variants
> are considered newest revisions and the difference is only in MCN
> numbers and internal codenames.

Are they soldered on board, installed via add-on cards or installed via
M.2 slot?

Are they going to be somewhat compatible (e.g. on the BT side?)

> 
> Add WCN7850 WiFi and Bluetooth to the MTP8750, stating that this DTS
> represents the WCN7850 variant.  The S4D and S5F regulators should
> operate at 0.85 V, thus adjust lower constraint and regulator name.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

-- 
With best wishes
Dmitry

