Return-Path: <devicetree+bounces-184535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A7CAD45C3
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 00:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD59E3A697E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 22:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5016289E0E;
	Tue, 10 Jun 2025 22:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mOLrrqEK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2F9246798
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749593770; cv=none; b=Hxw5lfkUo4QLLTMWGcuzRH6cK5x6MyHR+ObWpLSLxTe18RL5xg022H31L7MeeonOoo0hEYtjot3cZ75SbkaYSUt2oq3/Ma1YTkXZVwMbwETyIT9HnOPrET87/nwiMopZuLpqGPcaO8eJK6GQVywZkqlwqFhdnXIwhMTOlElmX7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749593770; c=relaxed/simple;
	bh=AdckpzHORZ04nz52khFJp8hY694kPNdQO93ZPbWS0Qk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jgVbIKf/axHEhqRHDahz4n3LpJ5M3eZXF87gyxzoKX0sSplX9tMV2m3DgWjs4Ith/UGBrqaL4gnSXcxEk1M2UpoirLJwiomgATpqk72q/HkfW7uuha7xKManouW439n5lS727ylN1YkGpX9ubAjwVaYf/WTAaa5XnGiHdhvP2hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mOLrrqEK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIPs5Q005908
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:16:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9pZN1HLKcnKZHer+eXfm+cc/
	DOSG+5TIvmhgIGDFcyE=; b=mOLrrqEK003d+TjbzN+MMJvU0R/CMQ3T+77usO0T
	p/2wQJsNA7kaxxfjlZGNU9A9muJ4KQfEEtlTsPKg3YA1HbnamQNXVaaguG72LL3B
	4VqroCwDQEUxDOHGdmNWwv/ww5iPkhAZecz4pTyEwBEFFn7JFnAf79ID/gN8fnlD
	D04bFikUpEdcKGrdNaJdYKTa639fEjQ09fFffsbIZ+nKZY9VY0scX6UtoSdN3ffP
	6vCEMsjHA4BfxOyzn8jgwwVbqFajm3XKptDvdbIOCM17H2EFNy8knTJRjGL4pO2p
	OhrsUtT2I0JOyaPQkU0cGjsV23WPxIl7CoyYeaKH1gvbQQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn6ax6b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:16:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f876bfe0so1063063885a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:16:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749593767; x=1750198567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9pZN1HLKcnKZHer+eXfm+cc/DOSG+5TIvmhgIGDFcyE=;
        b=aSAccsHeZmp1Ap+oMxtqzgk45U0fZiJu1vtlP83lf3aH8dh1MMZ0hP3iW7KIlJLAzq
         yuVQfsbi/RSdxmcGj9pqTnYYOBfeQFimVqzvcjOAqrzkSd1DnShrRjkOdhLx3UHoAsqp
         1tKb7rUy7anaDUhneFQVL+0to+9wYQQuw8W0mxNnzUl6H5g1d2bgCOcaEVMF88OE50zO
         pBkoAYgR7yXRXX/PXmktC145iMmPbe8b2BXbNomMMts6foCyjrKU1LHCfa5LltvF6xLr
         mR3mzy3hz7IniM5EoMhlRNQgoj77idlIs794Gndt37Mlx6i3jq2/0eUmLm3T441xFbM7
         KvfA==
X-Forwarded-Encrypted: i=1; AJvYcCXzc3gTiTHA2YHbOBl5BS6u2bqIYZR4sOLAupzWUjXMThGyc7cxYedYc/CQ9jQOfryNR0GbexjkAU4c@vger.kernel.org
X-Gm-Message-State: AOJu0YxzENBWskRIQepwPWLHlhIJtkZL+eJ5NrvuZ6BBY82E7aXIIo8H
	oA9bVISM5dx1WjLYXqSi23Oir+SKtsu3NOu1YJfU8tQ3ntOf5Mo+2M8QOblfDo2mlLroV/cFvnu
	SHkZKizOTd5hiUhyOWS2/h55LXIrA3JQeWFVTFBj/QctJDoMlH1TT79rED3JRoPen
X-Gm-Gg: ASbGncvHJdH07XSaKRtoT896kdXu7XG0VTPUNfCcUd3t83dUDVHH6NC00b+Bg/Ll6xq
	Rj03/IVFBMeMeshiZhQ7v5rvUPdOLFr2tpcx2bxmLYaZk3i359iZIZQ2Au8IU46Sk9MXTOknjYc
	0kXWdta5uJ88VzMGawJ1/mvHHVgSEiE4UkNT6wQeMJndWMfv5++yC+9K+KRHx4kJ4BIEpCMz4gl
	THVb5IDJYqqgrgTSY9cwQ+yvMbRoK0nh+cofaVxLfmRud8o/Tx0jJ5O01QN4Iv5jzId6hnX5/5d
	TQZZo6b3sFZP0tjF3fcgtcAJ0XmodTCyXCfflL5NxiYbHxBnLFE1OatF0XiffxkQ4MBec2tKJKn
	alUMeS+bWsUYaahFGQVsm4Ry51Y6pH9sQLCw=
X-Received: by 2002:a05:620a:440f:b0:7ce:ba1d:400a with SMTP id af79cd13be357-7d3a88e40bcmr167394885a.30.1749593767239;
        Tue, 10 Jun 2025 15:16:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/M0hvJvyIKxc0xXO1KKdRvRgsx+vq+O0zU4EI6ADE1ohAPsKxZG+F+D2prd/gjcYfYouQdA==
X-Received: by 2002:a05:620a:440f:b0:7ce:ba1d:400a with SMTP id af79cd13be357-7d3a88e40bcmr167391185a.30.1749593766930;
        Tue, 10 Jun 2025 15:16:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553676d765esm1718734e87.85.2025.06.10.15.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 15:16:04 -0700 (PDT)
Date: Wed, 11 Jun 2025 01:16:03 +0300
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
Subject: Re: [PATCH v2 1/4] ARM: dts: qcom: msm8974-sony-xperia-rhine: Enable
 USB charging
Message-ID: <kgbfmd6ql75nw37eocsdhoj2mrvibdhnv5hixxakv75uycgujc@6umcwrjo2d5o>
References: <20250610-togari-v2-0-10e7b53b87c1@lucaweiss.eu>
 <20250610-togari-v2-1-10e7b53b87c1@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610-togari-v2-1-10e7b53b87c1@lucaweiss.eu>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDE4MyBTYWx0ZWRfXynAWHFrzNS0M
 r/vH9Zgz5MjM+aqP/G8hAlBChBtULFwba61MLb5D1mWiYBdLdX4BaGoSLaG5M7sAwgSRyhzZdFP
 f7CiRS2beoSJgflYEh8AJmnsN9gEW9SyIslIxPN8jAgj2+sN9mgUuJpxRWAi3vXvosmaOJGr/op
 9uO17j/yMgoqQcNhsFJC9u+xgUFci0H2fvvw8GgxzPCejNmCkGZmwitmKH04zxIPeXSctNNmPxc
 BsRvXPpNGTNlxh2jrDj9aIl6XEe9z2qtPkkhTmO/CEYGZIOt9ZpUT2YUKwVYUp4dUMoISrQ5VuZ
 hNkoRxdQZZKKgsRoWu0iYPnI62CTh9lMj2X6HDcmqolInetyCErXmfCQ8z04bc7RoVoVw+wznf4
 sQuVinBS6of8T2QUiEsCIheONV2p3ZEHs7LzgzaXrdh8zURetRM+YPgBdVUiJvl7O3zX5r4x
X-Proofpoint-GUID: GlJ9f5mtBwuPyayZ48Vig2mQiUNvQUag
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=6848aea8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8
 a=UvBUG8sCUGYd-mWNjhcA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: GlJ9f5mtBwuPyayZ48Vig2mQiUNvQUag
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=594 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100183

On Tue, Jun 10, 2025 at 08:34:52PM +0200, Luca Weiss wrote:
> From: Kevin Widjaja <kevin.widjaja21@gmail.com>
> 
> Set usb-charge-current-limit to enable charging over USB for all
> sony-rhine devices.
> 
> Signed-off-by: Kevin Widjaja <kevin.widjaja21@gmail.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

