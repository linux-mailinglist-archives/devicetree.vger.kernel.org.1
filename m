Return-Path: <devicetree+bounces-203711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4251AB224E9
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:51:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0F1F77AF2C4
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30162EBBBB;
	Tue, 12 Aug 2025 10:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SaCptQg8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58395265284
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754995888; cv=none; b=XONaFkAHaSNqK9OzwktkQe0tp0deOQAIrywp6Od94c6BjdvTW8iTeNzl2DD4cfEf66k6ChkZrpeMYPu69LCTLb5c+NYI9GlN87bm2IyIBmhvUzVZb32IJjIpLw8ybBnTEN+lwHThn277G7L6QxvP84NiIzU0ZOPSRyppO3JzgDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754995888; c=relaxed/simple;
	bh=KgnjkLOYLkDSwC0GXwfOBN4C4F4nJHESxIsZ3ha4nMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EeXn3+8beYEvg0Kil5YNfAzx+esCKoYLsAB5uCmB1wEOBPmiPjM6vFOMulyJzvSeVENu7quIH+y7Jyl3RatEmlR1b8VY4jGgXUFV0W5RSN5xraVplDIFPUR3PnImX91euyEgQ4L9EPCR7h825Ftp2jYcp6VWdqGHlbYi3wnAuzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SaCptQg8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C6MmN2007754
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:51:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bhG7bDwD3mvvB+arfoW2xQRe
	XiSpPUNHdkakI97zRUg=; b=SaCptQg8OXr1fB+vzrIxE0gIdTuUI0OSlqiSVAo6
	hv4hYpHddXMK4iTZYGmZ8+1Lako3QGbjomeNsCXme4kAX/1sjY+F1/N1OF4jrRiP
	zOvg9fWQv92SawDa3fmv6U47AtfmwoItcptGQlG/kvI2rzkY09rivUwjxBNCqRzp
	kCs4TW6w4MrIveaRol49orOXOPs72DmRCL9wjyU8w/TlR+Unlv1UFybeROkf1bde
	uAjOehhWjcWN2le9Z11GKckLtSi9sY3tmD7JRlA2V5taolCJhDrdSW0w5/1oBDzO
	HvGs/J94Zqsp6Ceta8DBr8qUSRi324lFr8xQGgi0/CDetQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6knur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:51:26 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7074cb63bccso104703326d6.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:51:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754995885; x=1755600685;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhG7bDwD3mvvB+arfoW2xQReXiSpPUNHdkakI97zRUg=;
        b=ASgJ7EKgP1Wf3lXjk6SRBV62HNXWh80BQhREHpNtvcTgDuIGFAD1rLnIx1WRu33Llj
         rnBzprLpgUMcq9vrK5MPqppsLNyPjPHdPUga6s+XK25Q15gxL5Dbe/RucPl0YhhvqODC
         3mnNw0x2HoI9y/vdtJDTGMr+3cnBxgRvICnWy+3r4vN0DhthER7zG17gkayfzlM3TNMi
         mL2SdpHiBJfKlyDFWmCjlU3oO2OyQzbt/TeURg6aWEYD8T0nbIP25xFrg1Q+6qlBa7Ot
         2HeVAcyIfJZzUjbh/DGItHErdzOBIWsWE8YADYKyYek8u8ZXXmVY0TBJw8T55BIVVRJ+
         1Opw==
X-Forwarded-Encrypted: i=1; AJvYcCWa1c9HwIE2LI4zQrJJjgNMgqhejjxAISUQZURntrW1/AIbd7/muY3JQlOSCWdIF52TYPjjCP6IxjKQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5A36ANjEAIEHJW8Sf0LJzLcZC4yF3zABbJ0qPjczEA9p+4t7j
	xIJTJjNe9i0H1lzDBYvzcrgwpigNTxbDJCEYbYZW8lfowv9fGlTScjKgs2Qb08II9i+qwDOCSx8
	TXbc0LCr+ZHaN9EG3byEcygRuhfU4mV5G09HOlZk9yEOJfFKSDc5zLvCxK5GC6Rqq
X-Gm-Gg: ASbGncuV3erzP14C46goDbpwEWFa0bpzoZR/hqA6ISp/6CYRvOalYIWfCJHoRhWUDyR
	AY8tzdcW0XZGDY1IjbghIbY2U/czTlyrA9WFancPa0Q8iK8pmcf3QS05Zl4wEHHldNiHDPJAgXf
	kiJzjfp83pWlIWn3C310Aocxf9rk2ynu/CGfk1+2W467yclIoNasw9F0y8yB9fSnGgzHU765Hna
	eGUklUGIONpH8/l/itlhGKnh9RdWQ2qH3HefbNmPLZr5Tkw6EGKsy1HZWtRyb26yyyLr/GId0Wk
	tbl3d2/SoQlSFS3ef/QHuOOUAIOFBo6s4DuuWVCQSdjMEcJT+Wqqn8BRI7PNYKC39F3Qp+l44hl
	FyQ5TONm9y2YVpffcQldOZtl8ccNd9hmiXZXfP3qi9fu7V0FnZZS/
X-Received: by 2002:ad4:5dea:0:b0:704:8db8:d3cd with SMTP id 6a1803df08f44-709d5c76484mr34563976d6.8.1754995885272;
        Tue, 12 Aug 2025 03:51:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDlfuS4Nwz3fIMIuFWUdbpX9cZH7Wuc6mH++YEeE7VTQQtOIc09mesMedO5BiAjMUO345wxg==
X-Received: by 2002:ad4:5dea:0:b0:704:8db8:d3cd with SMTP id 6a1803df08f44-709d5c76484mr34563536d6.8.1754995884789;
        Tue, 12 Aug 2025 03:51:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b889ac341sm4628423e87.60.2025.08.12.03.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 03:51:23 -0700 (PDT)
Date: Tue, 12 Aug 2025 13:51:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci@protonmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH RESEND v4 3/3] arm64: dts: qcom: msm8953: Add device tree
 for Billion Capture+
Message-ID: <b7qczborzhw7slea3mpmwp5lbcawurvgkdhioqener5ph3hbvg@kdvyoqqv6xy5>
References: <20250811-rimob-initial-devicetree-v4-0-b3194f14aa33@protonmail.com>
 <20250811-rimob-initial-devicetree-v4-3-b3194f14aa33@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811-rimob-initial-devicetree-v4-3-b3194f14aa33@protonmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfXxEw51W4WUXaa
 JVzt6g/C0sUI8b6KxA0Cly3y0H55/0MgvWw18ttr/VHZUzxP+olLjcFxYiYPXgC2BvlAfcH8VQu
 xMacZRI3v76DmD/M/7h6kqW8KliFxCXtuZ/5eIGLJ3fGeL/WhRS/TwJu2Id4tCZSy7OAsVRS6xD
 J+4I9cFXIyySWcQqCxTCMbl9ae5wAjeAFbheYc5V+W36/n/CChO2trpQeZBw2XEjVgbQjz4FiqV
 QJ6aNzJZhNtLq2VWmIgeMHE2scrLjJftQPRn1fFDf6+B0hS3dT8hPq/eXN5RxxqcN3VlEyx0HSm
 Uvq16lfIe1DfmwInUu0LuTs2BUIQSpVxLQnHkdNBRQzSJ5qIwQ1wUkumMXtPJXrcSvEvYayUMrr
 WtH3RwM+
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689b1cae cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8 a=N6ARxV_FePN732dIbUEA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: gRP5GZuEd83-yAxcIwSry6ThLWcNU3Pn
X-Proofpoint-ORIG-GUID: gRP5GZuEd83-yAxcIwSry6ThLWcNU3Pn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_05,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075

On Mon, Aug 11, 2025 at 11:08:11PM +0200, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Billion Capture+ (flipkart,rimob) is a smartphone released in 2017, based
> on Snapdragon 625 (MSM8953) SoC.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - Regulators
> - Simple framebuffer
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 255 +++++++++++++++++++++
>  2 files changed, 256 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

