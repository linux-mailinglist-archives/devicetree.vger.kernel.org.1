Return-Path: <devicetree+bounces-248522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 400FACD35AE
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 19:54:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17DCE300E162
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:54:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A8030DD08;
	Sat, 20 Dec 2025 18:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JoRPQktQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PcSFow3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6C27AC4D
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256888; cv=none; b=sR1YNU6faRurpCjkbZ/Calrqxm4ZEl+U0tMY5AY2+KGnzGGf7/Tl++QOXsxqK+M5BJLCi7rM8BNbDw/Bg6x/w2U27Uxj6K5eBpWwpfhM5o/2mmogpErFU+Dc76feIJm1L8E6zR35M2SxgCejJWJtd1AfXyxwpJYyZmoHFf9WMPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256888; c=relaxed/simple;
	bh=Utw710k+Bo0d2EDMnRQzU4P8MfIEKd37aBa9AS52O3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0xgyoz5sRUa7BrSY2esf/vZmBrkEAiGlYIvkSnmxcYTziRUe+tGBtG/jPgZ9f956OKGPjggMQ7PIcPlLJZ1rXdWWmTt8zM+/nX4JbFhy25j4ekHC8f036IYy7CaPy2mHOH7fRZiM5VpWJwnybQ8yp5LB8m9WoeoBOxx8gAKnFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JoRPQktQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PcSFow3O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBP9KP3818106
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:54:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GcIXOyDTbBwB01xquvdAlesX
	YCshJbxX7zz7DuzdE4k=; b=JoRPQktQlDZ+GwPlbBa3pUj4IXd2Tlaj9mOYxrvZ
	WZ8pRcUW6s8+8hvjxpUefqsSyEk4yS7Kk8yqHA8rOgcYXTi2E2D1E64VAnzcKUts
	t+NNXyLh0Dms3tBwnafURQE+cHSrODGZjanUkNBdfUcoNrFYvO+QZvHj8pNqgQ5W
	6oYDZof1yl2D2RhpnJlYWY8UomAB7+7jstOe0cXuMYUwF/Kio+Mj3noAsxqTO6SH
	ZA1dm2TmfnPFhU/FKFiOAO2MSZeMGaUE5xr2b3EAqb5ONk4INH7gfOdrLDf91/Q+
	Kj00+wvbehxOZTVRogZetGobZjfzb93vNhvdhq8ThnHDbQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry14t1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:54:45 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a2cff375bso60462926d6.1
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 10:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766256885; x=1766861685; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GcIXOyDTbBwB01xquvdAlesXYCshJbxX7zz7DuzdE4k=;
        b=PcSFow3O3nmdGpjjxosApiR5KHICR+TAHTqCfaG8ztBA5O1T6h4ods1taIEcFRJ8rv
         VsVWEao/K9qplFrj3a/Jw1tGAOmQkz9S0Qz9FlrnTiEikNOx2npj2b99OkXq6z98LBki
         jzo9q9nyXvxfFYWO9duuuTDEUW+arnEJeq+mo6rEXdNWPRbdc5oU2IB5MdtzLaLfwIV3
         +Y47hNm1BFWKRLyoW2PGLBt7zcop1kMG7GberrdeMCSyxNR8DtXFcjUzY9AvJxZbe0yT
         sx12iIdUmmN+Ksg4Vg+e1rAAzrpZg54D9ElBye8dUZZBWKHKfPEd6Mk0HlxZu6arbVQK
         fuhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766256885; x=1766861685;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GcIXOyDTbBwB01xquvdAlesXYCshJbxX7zz7DuzdE4k=;
        b=fZU8I4RcMqn+c74IJgFXRJKCI0yIHRRdInIeruGX37CzFn61VS9PNRHP7OvBdTVpX2
         oXd5OKxcUr/tQ74jZpmdX9BMN6wzgJ3aZ8rBxCVJ7iqjBkhn57qVgyh0mTj8m1PO+7sb
         vd4KpQ0Uf6Z+3aff5OO6gjm0glzQ6BUkOmPb6IsLWY+Hk8in3Tg2tyKLrMIuvi0K50X+
         86psOCU4UoYfVl71II4hjoitsP1B2hvOWq7F5h1xswupMZfYua7JEHsS3JyZVydF8ER0
         bMcCx84a4+UXuyw8njfrcOgCLoxh+/jcCrQFcoNtfosWB7BZqk+OEruPP3LQtpQu+tYY
         i9dA==
X-Forwarded-Encrypted: i=1; AJvYcCWfFb6aJZAFtzzdHqKz0X7uE/jrmUtiFqeZ292HYTneFOi5mM2MOOft4JvPls0W08azkqLPOy73909E@vger.kernel.org
X-Gm-Message-State: AOJu0YyQMSDK4JaZxDMo/k/KoJVaJDgeU0n2FzkgoJ4ISgWuGGCi8+cg
	g0ahhZd9cHea+DGiJtDmWsU8SjCOVhBdVRve2C06KEcxF4fkxmVqNHBrJc2Prhvm2d0XfIFecvL
	v5+/mdQ3a322Ig6XpPZPqlh1AVEVeiH248YTYzkE+W7q+tpW76qkFl79zyYlkduJ3
X-Gm-Gg: AY/fxX4QwimxSGin/bI2aPJK955TcHPIlP38CK11Wbaxjtq5O6xwmpxCqxADJlGbwTZ
	TRELXSveAb86n6VRLDWFypUiQP1FKagnhEDRGVK6cY/XjrUzuswUHF90afcxGotwzSbNkJS1G3m
	GDocEMxT/xVoJD7N4RWXJZzt9zADm6+g0/Ki2HZ3tTbDrv+p0HM7fE0qcHkm22gIWTqqKcoyuh1
	G9+yTNj7t0DdXJXGcVXPp3G9DnP+iKVbt+3ftZ0Z15C0x8vuO4TqF682ZJJ9WXeL4jtPPrXFwMn
	FENlR4tZct9d3IrX/MDQekVzxs5sR408HU3gx2niIEHvnj4hG6Zu/xmCEadgdILng7RNR/gE1Nj
	8NGEmy/PnIavA6DdNVzEzcN+KkTEqcdA9+rRXnJ5+9uW72LfH6lNrUjpYUyzh92ucnTBeOCsRVQ
	2/Hxldz35mqq1uykk2t/Fuv9M=
X-Received: by 2002:a05:6214:1c0c:b0:88f:c670:6aaa with SMTP id 6a1803df08f44-88fc670740dmr14609276d6.49.1766256885228;
        Sat, 20 Dec 2025 10:54:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcRlucgTGM5AKNPo+0kcZZPck51FGsiKr6q6lpccIEsRxfaPdP+AnY3B9cFs232kFpWaHINw==
X-Received: by 2002:a05:6214:1c0c:b0:88f:c670:6aaa with SMTP id 6a1803df08f44-88fc670740dmr14609076d6.49.1766256884722;
        Sat, 20 Dec 2025 10:54:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5fdbsm1678109e87.21.2025.12.20.10.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 10:54:44 -0800 (PST)
Date: Sat, 20 Dec 2025 20:54:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1p42100-lenovo-thinkbook-16:
 force usb2-only mode on usb_1_ss2_dwc3
Message-ID: <3zazejrynu6cl4ah36virtjl2jthlrjw4h3inkp4zjaovbtaif@2dnywhywqyzb>
References: <20251220-tb16-hdmi-v1-0-18b1e20b396e@oldschoolsolutions.biz>
 <20251220-tb16-hdmi-v1-1-18b1e20b396e@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251220-tb16-hdmi-v1-1-18b1e20b396e@oldschoolsolutions.biz>
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=6946f0f5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gxl3bz0cAAAA:8 a=TKkt9Ui80_3lODTAlkYA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE2NiBTYWx0ZWRfX6AFPjfcIvxsM
 lfOjbNKDpJNWXyOZ5UKFfjP4g5SYkXEB1un9Byad36NSmmxtA7jpX3S0QKX4t9gGrk19QdM/72c
 TSNdWW7MQ92dY1EtsX/1L8RFRV2fjPZNVMKZJNAQzw9s/vpw4YpOmMEyHM9KN3xbLMUzLKxQqqx
 gI53GbqOfbzEpGp7P5FK/1d5EzOwf3BqaizPdI7RLLGnzJ7uwMqMje/EhCUJ2gcJAQXh93X9zMF
 IJ3PJu7Nm2pPCS3ulxZd5br3Gxa6xR8E4o7Z0T6TdmfoRRnRw8kCtdbCc4aauc2YhZ2h9sJQknw
 49x41PHeDOEB1xr2yR4MH6UD0cl+fqOYbS8YXX2GVspD1+Wzg8KcLYpXiPvuf1C6r7+vdO/vPhS
 JRMGD+wcJwcAdD5WCVf4AE3/j5or5p7pn7b8TNFiyxm7Da6FOvTGojO6Yftx3wxepDq4h1t9iqB
 hYq6N3T98iqdKHCK4TQ==
X-Proofpoint-GUID: 6HMfShYZ0qPgmWVPR868L3jJshglVtNL
X-Proofpoint-ORIG-GUID: 6HMfShYZ0qPgmWVPR868L3jJshglVtNL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200166

On Sat, Dec 20, 2025 at 06:47:09PM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The usb_1_ss2 complex has 2 phys, usb_1_ss2_hsphy and usb_1_ss2_qmpphy. On this
> laptop, they are used for different peripherals: The hsphy for the fingerprint
> reader, the qmpphy to drive a hdmi bridge. The normal logical wiring for the dwc3
> controller is to both phys. Overwrite that with ports only to the hsphy.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> index 3186e79e862de67cbda48a4b85a459e6e965ba65..b505a4cbb4350a962bbf779ec788265c7583bf20 100644
> --- a/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> @@ -1560,6 +1560,20 @@ &usb_1_ss2_dwc3 {
>  	maximum-speed = "high-speed";
>  	phys = <&usb_1_ss2_hsphy>;
>  	phy-names = "usb2-phy";
> +
> +	/delete-property/ ports;

Just delete port@1 or only &usb_1_ss2_dwc3_ss endpoint.

> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			usb_1_ss2_dwc3_hs: endpoint {
> +			};
> +		};
> +	};
>  };
>  
>  &usb_1_ss2_hsphy {
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

