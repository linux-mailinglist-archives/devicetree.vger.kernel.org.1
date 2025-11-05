Return-Path: <devicetree+bounces-235005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5BFC3380C
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 01:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3226934D45F
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 00:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E54522FE0D;
	Wed,  5 Nov 2025 00:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m8qH3CG2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DCZtTfAm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7449D2248A4
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 00:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762303623; cv=none; b=BvTShVdrdWlfZgY3l/APzva7Ic2rxCLQyLAppIkqA4OnF5mfpFJkAw3gcik79F7hAUCcU3sKUnug5CdBi3o4oDYvPiQ+SFfYE3Wcu90ScAuhB+zDzQGyQP36ZNiXTUJhhJehSCwXv56biZrQKr6wIrrJ6IxWrzRHQN/fx4ICkic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762303623; c=relaxed/simple;
	bh=6F8Ze2HqT338sAZLldmfyih2VX+hoXm90QpRHVpFcA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lcmHzGqBFkA5fmsJs6MdybYKXT5WUb1f3oFNMEbfFINIhZk6+DIdU9O7QxPKytYn7pvRPFnGVW+M3QJLFJezqyLlHcOql7nG7om2lpUGl4y00QEJY1aW/hOy/XOSrLrLS7F33KC4/I4Xqrxb/xcy6W84K5rj2zzdnYPwDzG61VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m8qH3CG2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DCZtTfAm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4Kg8T42968532
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 00:47:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=20DVmm7uuh12nXsj8hrA392r
	YXJpIcLN5xeBu9rny2Q=; b=m8qH3CG2VGn2+/23AvEF4QD+vI3GWfmZAryiX9df
	JxnDeT+IIkincnsOzjeClIbX2XV4jmqXC7K3rVmIjDAzjd23JkhNDYlvPlVBKv+r
	bfaV2o64BFn0S6DS/a4giayUnYKvoyAT3TwMz/oSXYQllG+yjuHNoWRO8+lbG3pl
	FsUR8tgRrPu0pnL/UklFxbVhBC5YWctOt3IQweTqmn7ZTmz4JQ8qkuWOoGfbhgS9
	X8woIPsicN4rHVUhiJ2/mlxEDc9kZLHLX/RH9jikOAMZxGMRLsUFHxlUTTBz/oBU
	mkWXpa6eXOYrPnmr1m1xZnAtq1EO1zTqe3lZEc8iwn1/5w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7heaj2mq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 00:47:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2217a9c60so122867785a.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 16:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762303621; x=1762908421; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=20DVmm7uuh12nXsj8hrA392rYXJpIcLN5xeBu9rny2Q=;
        b=DCZtTfAmZEBfbJhHIHblDf+akQk0PgX7GzI/STqSFvE54TrGQO5B3NgMg6WBTyShxb
         S4mKw+fIs4Xyr0IuXYEpm9D+xzUkcE4HgUKqHH3NOTKUmSaeggF4QbVh3zAil2P8ib81
         v2igHsWlrPkaJ5w4KZm0Fmfs9xO6SiGHDwp8mFu/DEdKuvyots5MvpoYa0NeHKac/kJA
         kwsfOfrwf37If6Sh13V3xP9cjpFLg/KOLVkkjvEQTTg1506ROTJhB0/xCi0eqvB5ck7S
         Rsk3dy1pgIpHsZZ0njismTbxbyb4E4J/h84RsOs6dA3xt7VNPTO9wdvC9BBdNPcusqZp
         t0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762303621; x=1762908421;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20DVmm7uuh12nXsj8hrA392rYXJpIcLN5xeBu9rny2Q=;
        b=fMqB2UQl25OsmzyFsnJ0mmdflhlpO6h6SI+vfztoq+HJiNpx3DluvgWfGGQpbFZlEb
         EcSkPWpW8KYieqw5wW5xPj9rm9ZyzljoIsed+MN4w4I2KjJ/lhJtkvdH2oyOtYn88x4s
         AZdq46wpbpvKcWG7lqs70Mcs7d4tviHTyFSxfxNFHWdm4k0uhQzT9q8OKiQPgi6IFALO
         SIPVVa/DDEsUBr0Xt6wX43JzvumHeM8nulLBcSfDXRmKE7ddveWhmx7Gv2WeRXpXFvxw
         vZIUSTgGZiQij/VPSr7K60ewlMCXjGCXxh720BDtLfbAuavhM3oRRXZIi1wcsQ8GVK9r
         AqBA==
X-Forwarded-Encrypted: i=1; AJvYcCXM8syO/P+V3T4TKjhK+nBvaffRPDIOJgQStqLc0zqknWLR2rd8KepzDIKbku9KgzbrMyRESpq+Hk89@vger.kernel.org
X-Gm-Message-State: AOJu0YwawAcWvF5AGHTF7h8k3vpiNnKvMsFddVJQgDEuhgdbGfxYMnkU
	OGobZlhoJCM3qY8TbujLKZXEzv0++Y/5uuV+fo+WnRKz3isG4VpVNMRwWYwVzq964ti3pqzhjJ1
	mNq0HgwrhqT80rMyuqWWIGq5wK76ZgueRNPdoyfiMZNM5yQuUZrSQFX5QuHfd7e9u
X-Gm-Gg: ASbGncscysKKrco/3HE02c6Mo7hJOQnwOphXHXKCYgnGUh2T6DtV+qLsS1Is8O+dfF8
	WQ3Ues0Qjm1YRusp8BWK5mPlKQjzpn84uxrHweLjvSnBVhv6th8NYOqUCh2nPbT20GcE5FiRbqT
	RS/zeqVST9h03dKH9WhclLXmxF580QpB1nywIxzW5jTRDExcQ7C3OnsfdcvTg8Z7cO0BN9PwcOf
	IV+MKXiAqkjzKKZxN6xoKmoL5Y63FBQrYdYRh3q1JU0w4Z3/h1MTOiT9Sz0TKh55tySGywIW7lP
	XDLqBAvkasJvqJSSDc1ZnnFhjMTQRyKfrIO4+WUi5bQcEcZCHsRepaW5j0CrDTGlVV13uYXUI1Y
	rDsAP0BaofrXltzjf0dP253s8uNCBFry4CCsPLkXw6+sJXuRNm+nuMQqdbo/LxT2b3uPuAsLjEL
	mx3WVmjGI6j1P5
X-Received: by 2002:a05:620a:4044:b0:8ab:7ac3:3271 with SMTP id af79cd13be357-8b220b14872mr232599485a.36.1762303620753;
        Tue, 04 Nov 2025 16:47:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMkUX7jC+eXTRNJvJBEYnUpg6UwMXTsq4CChhPcvUGcohxQhFgjhegR3VopNF4Y97oL3PhWg==
X-Received: by 2002:a05:620a:4044:b0:8ab:7ac3:3271 with SMTP id af79cd13be357-8b220b14872mr232597685a.36.1762303620300;
        Tue, 04 Nov 2025 16:47:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5943437ed06sm1178233e87.16.2025.11.04.16.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 16:46:59 -0800 (PST)
Date: Wed, 5 Nov 2025 02:46:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Piyush Raj Chouhan <pc1598@mainlining.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, tony.luck@intel.com,
        gpiccoli@igalia.com, david@ixit.cz
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8150: Move usb-role-switch
 property to common dtsi
Message-ID: <caf3qjqs45lbmb4fb5mj7qordkh5yb37iftwro6y6jitn5fhj5@eb62whwvo5g4>
References: <20251104221657.51580-1-pc1598@mainlining.org>
 <20251104221657.51580-3-pc1598@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251104221657.51580-3-pc1598@mainlining.org>
X-Authority-Analysis: v=2.4 cv=GekaXAXL c=1 sm=1 tr=0 ts=690a9e85 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=qM2R4nZWQg-DivYOzAMA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDAwNCBTYWx0ZWRfX+UOnQDQ+vB2q
 c44P6BIT0t6lYgALJdHr5xk+w6ilfl3bW2ZMg/zAgHKOo4DUVtk5GGjnUs0ANSqCfDf0OoVC9Da
 VsK7gyBZxltHmqIAMaz8alSdL/yVwZc/BEuaLKCxXgHgK1jzdlqBN1PTJRUSRbAThSuZG0UM6sw
 cxB/+UVSWDeyWGAGedIhBjIgOvwKW7hCDx4YIT5hvvE2/Wq+M6Egd2vXGpFM0tSFud3/CTF/3XI
 oe45G4WRPSgaEDAOfY55IFY5WJ1dWFBvJY/oNsoer0t26ch2JFtQXFyIOYwp1Vli6Cd8sFjcVg5
 sxTCS2ziRP/3yOND4DkCKFqzvVuhG5hqy3yWbsFclhY4mhkJxlPh/gNXz8PyMv5r9CbB/wthpLM
 P+0y8Z6EX+o6gMVdgu5kZzlX48tZKA==
X-Proofpoint-GUID: EVCt3OODYVE5tcWFSrQwl2Z5eDTAPkRU
X-Proofpoint-ORIG-GUID: EVCt3OODYVE5tcWFSrQwl2Z5eDTAPkRU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050004

On Wed, Nov 05, 2025 at 03:46:56AM +0530, Piyush Raj Chouhan wrote:
> Signed-off-by: Piyush Raj Chouhan <pc1598@mainlining.org>

Missing commit message

> ---
>  arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 1 -
>  arch/arm64/boot/dts/qcom/sm8150.dtsi    | 2 ++
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
> index 0339a572f34d..29afee6160cd 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
> @@ -693,7 +693,6 @@ &usb_2 {
>  
>  &usb_1_dwc3 {
>  	dr_mode = "otg";

You can drop this line too, it's the default.

> -	usb-role-switch;
>  };
>  
>  &usb_1_dwc3_hs {
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index acdba79612aa..cd05975dacd1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -3661,6 +3661,8 @@ usb_1_dwc3: usb@a600000 {
>  				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>  				phy-names = "usb2-phy", "usb3-phy";
>  
> +				usb-role-switch;
> +
>  				ports {
>  					#address-cells = <1>;
>  					#size-cells = <0>;
> -- 
> 2.51.2
> 

-- 
With best wishes
Dmitry

