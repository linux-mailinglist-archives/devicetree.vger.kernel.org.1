Return-Path: <devicetree+bounces-270852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kExlHWatp2mMjAAAu9opvQ
	(envelope-from <devicetree+bounces-270852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:56:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D17E51FA896
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8577630AC5ED
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6DC37DEAF;
	Wed,  4 Mar 2026 03:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AoK++Lj9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d//MM1H4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69182378D65
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772596579; cv=none; b=HqIddBstDruc1G2PFbFjyjnRiVfVRPAMQQv/ZxfKpuQs/F+mFMEgDEebg9Y7UlDrnGd/pK9GPphkfZC/woxqdOT568lui3Zf2k9MEhywBldJOq6xbEWtFU3W+rAdCNnpS8SnWLqpfKDGK8f7E2M27Y41pCLEL+C7uJ98IcPr1a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772596579; c=relaxed/simple;
	bh=hF1ZfA10oqJ4y2ywGwYJ8XR743RBfDQUR//SmqrCY6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IMXQtQm5f1sB38NAk8Uy5yPhu8WZqBaaXOIsH8TcfspW32MxaUK22M4qlru3xiQUZhdZCxh10x2TyCb/Fa6sWE+wC6i1a4Fi2Q7OWVhghE7CUsGG3F9OvIgudpmmfkRAfoSGi+4ZS+36Jr3tfpQn2g8ihy9Ufg8O+ktbyxI4KGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AoK++Lj9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d//MM1H4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6242DAn43548602
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 03:56:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F5WVP6XaX54zM1zPSfBSEoep
	bK0K4/VJ+1cF4ZIQS7Y=; b=AoK++Lj9LQHMx6SENBXeHEoH5ZXXQDEVIUR6Ymdt
	GXlhevVbKxYPcmutrlhe3Sz/ASPJyp8lHY4eu/IAVNimVCQ8/Tb+zduEagVy6HxJ
	I1roUf1ImRxHGV06JiyBdUyRkAIq0zx3rln+uaqLJxpoJBr4TyxzPo+2I75Vlas0
	fLiCkvpilYhNUkSHPqPYXEw6W7TYLfGVqblkUrFkJ3SP3ftKypkS/oKLMlHrkpT7
	EmmQXWarX840BpubyGwkzdSfHOnDiLc5TqRUrc9nL4Sw111LA5Joz5+Yrd7Vb1n5
	xtn6bpDVNBLa917SFb6eez4bXWU5aZaPKGnJN/zDIOO8IA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvxfbecw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:56:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-506a9bf9b3aso61622561cf.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772596577; x=1773201377; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F5WVP6XaX54zM1zPSfBSEoepbK0K4/VJ+1cF4ZIQS7Y=;
        b=d//MM1H4Rd+lAlYz9afndF9nzh8N3m/F+2m6XGZjfO4lqC0KLbAwIxwZkOTsdnA/Qx
         zzGtYWoqKv6pXANzpIViRihjHPz6VqPVeRJP6fdvtV/osny01G5HiLSKSojkdUfy+63l
         KtLe7O6647AGED0y7SIGTAsWrlu6QKTwv+mtl6JVYN3obgfGcwZ2p+WcSdlD/YSzzskr
         I4AOOXc8bYv7Rf5LgEFzAWF5Kcpw8LrZTbHLpeiQ92TXcQR03YbAS2Q5kCof+ZxDbPKL
         XEnmk401ekkicAK1HraFLMZ7S2sZK9qCL7q1OHfanpSzb4+9dXj/uXi3KzqBqiiyAu7L
         A0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772596577; x=1773201377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5WVP6XaX54zM1zPSfBSEoepbK0K4/VJ+1cF4ZIQS7Y=;
        b=RZJ9RUtWXP3pz0+oVGTFS+Ib9X2sNvtWzqaSBdBil/E3FX7Ycw7bg9INrNlSYknYqx
         +BAJvKOrIYfNoSU2gthJVcEeYVJJ7rkOO7g+aWfUSvyWqmpSBBfFOCvZP33il/2DD19T
         n/d90hthGaL4WrquHuZ3l8BOa7F/90iCsihP5ES+dn94ThLPJkpzFnEyJX97VnYqhvTj
         1ZPKUQdxk0Q00O2FU04sstBhQN4tlZ55pfyAeo+/9el6Gr8cbF1GpK+ZykEpjLoWmG78
         MZIyJH3MgXArEEXOICR/0Ty42f7yqf51XMwAj1NH6dTUM/737MmpUkuIfgdSPHUEnfFF
         RGzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwx5jk/rI2YG+WVUwbzX3kUXYkqd5NDSPvf7bTz+SpYRRTi+KwU+7tRzgZ7p9QBLjxtfEaVo/eZPBw@vger.kernel.org
X-Gm-Message-State: AOJu0YxwllxkQeISX1ujUk4qKLedkK7oTjXGxz9Uy44EN8ScO5S0qoU2
	AC6OYI0zWjiLcYpEmJAh0gXAWz6u7OKyeUea8Hk3vC66l/A14sfErU/C8AKy6fkzAyi9lORMocX
	/nt09JuLg2THm79OkiZHDQkS8WEdDcVgDJ9mag+KUG2Etfd6hZ8IhedcI4RvAofrw
X-Gm-Gg: ATEYQzw3I6MyCy7aqbkkQzu8arL4EhvBzfUa2EMXKt6k6aCUDYo/8BYcJg8tfBX1d4T
	QPJQIQuz6wkMLHUevuEqhvGoRG8ykzpXW5eSyupITKTAO1OfWzVLR9/iBRApt/BAhCwqCjc1QEf
	Tm3PBRFbEPpDxNldsLiyjEFxovnd1eU9kSjiW98p81horNJN+DTjXmnHhs5w0LDOgjrdiC25J/e
	RAuHhqVwzC6uyDMthzS9lRNiGPNznnJf7GdKG5A5wZFT/2Gr86wRYcYCPJNGzRycjjaQI+MD9Pa
	32itZPdxcd6AXs53rVSFBBaODQITjNsmP6MLrWssUzJ3M1QLBNZCLpARCFY8XmxSb8+NPABdoRr
	HFXEncmh9NSU3Xtj1yLEHuhvNHqXDs8tEwjHW4iyS293Lho89u7An602YeM2wQFJHqkjFHqtUUI
	JOU7r+wVagGNC3CPwBkXBYNOsGBu+uU64Uqcg=
X-Received: by 2002:a05:622a:1914:b0:503:2e6f:7690 with SMTP id d75a77b69052e-508db351656mr9419211cf.38.1772596576631;
        Tue, 03 Mar 2026 19:56:16 -0800 (PST)
X-Received: by 2002:a05:622a:1914:b0:503:2e6f:7690 with SMTP id d75a77b69052e-508db351656mr9419011cf.38.1772596576161;
        Tue, 03 Mar 2026 19:56:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12690b5dbsm554147e87.7.2026.03.03.19.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:56:15 -0800 (PST)
Date: Wed, 4 Mar 2026 05:56:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Rename vbus
 regulator for Primary USB controller
Message-ID: <sqhyhyv3a4ggbnltw5wbaw5jjtbia6gprehdhsf5c5qhhmdcpy@seaongl2pmgn>
References: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
 <20260303080728.479557-5-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303080728.479557-5-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAzMCBTYWx0ZWRfXz3hmeMPP1V/s
 3lGhsJzbUK3HCL+lJvO7SIRwQjCw3At0jSaNcCmx/BjhEXwLsIwd4oH+4rlNMRJUFOFk9pr2kqX
 RjTjtMHNHQmWzOIa+ed2XGBTE2bQwN4IKeMh/NELvzz7mo/IhbmCaAY74rLVtVcFUiw5zF58a+x
 zuHjz56uX0zceVrEG5xvUkZfQv8/BXm0SqXTYOCOaNQw8tuJ7GvRBXP2PrQj7f8XIFiZM3NE+54
 CIlhcjHefdafCI4A1ARINMZLNQNwdCaUwlYhmZkGeyGM84g7xnA9EMpb3zi0HRlexViS8L8JIRj
 v6hbiuDtYv1pVXI3U06JdDMFsvjVEJHSGCGvwHdq9EjnHS6pqkQjTYC90BbKNB8DmmovN5580Ur
 K+obUQ36cPfR/7blVEdpYDUfixHIgdWf565JEj8X1O0SmmtPqQcrVd0U5USv9Mp6t5gOamGh/Mr
 4dKIxsUYs0vc4jTLQ/A==
X-Proofpoint-ORIG-GUID: N51R2z2tPqG67v6ap1kk-uf4XPXxYdt5
X-Authority-Analysis: v=2.4 cv=S+HUAYsP c=1 sm=1 tr=0 ts=69a7ad61 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=Dtw53r66T4DuJSK5H08A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: N51R2z2tPqG67v6ap1kk-uf4XPXxYdt5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_01,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040030
X-Rspamd-Queue-Id: D17E51FA896
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270852-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 01:37:28PM +0530, Swati Agarwal wrote:
> Rename vbus regulator for Primary USB controller as per Lemans EVK
> schematics and in sync with tertiary USB controller vbus regulator name.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> @@ -151,19 +151,19 @@ platform {
>  		};
>  	};
>  
> -	usb2_vbus: regulator-usb2-vbus {
> +	usb0_vbus: regulator-usb0-vbus {

Please move this patch before the one adding USB2 VBUS.

>  		compatible = "regulator-fixed";
> -		regulator-name = "usb2_vbus";
> -		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "usb0_vbus";
> +		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
>  		enable-active-high;
>  	};
>  
> -	vbus_supply_regulator_0: regulator-vbus-supply-0 {
> +	usb2_vbus: regulator-usb2-vbus {
>  		compatible = "regulator-fixed";
> -		regulator-name = "vbus_supply_0";
> -		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "usb2_vbus";
> +		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
>  		enable-active-high;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

