Return-Path: <devicetree+bounces-242452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CF1C8A688
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 871703ADAB6
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B60A30505C;
	Wed, 26 Nov 2025 14:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RoJo1jP4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dhs0kBPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8373043D9
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764168075; cv=none; b=Jo8hrE0SRqDaUHnL2+UsgLJMO7d2p3hL64nctlhnQ0i4I7LSrH3J7v1IyeUA6cM+8kt9v1jn5vA/TKwQB4OBUGVAC3xDNSbUX4zqansE9mqWy6iDDzkcCBJsbj7dkDsR2/g2s7d+WTFIB+0fCWMdm9Fqj1qCJZdMlSxCP0IrIJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764168075; c=relaxed/simple;
	bh=87LI033NT5UA/aHo/k2TVWC1u+ciYMrS3ifcPr90bDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsjF/Q9MGjnWsjKdtA0y9iqOSqeLzXHTcZGmIwXudp0gcNuWASHGjER+jfM5M6xEj5idIOiFJ6eD43xoD3BPOqBsMvKQFeKTdZSyDQnchThJue7gARnd9jSdS0Ta5bN/uqa8BJ6gkvC1GYpvdnLBkYencbXuCkp/dnxlgTJ4NoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RoJo1jP4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dhs0kBPZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ6HBe43738423
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:41:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Cb+6zVcvLje9cJpf9SPSxDPZ
	KN/HYxpTTZM5TG9Osy8=; b=RoJo1jP4o2jwMEPwz3TpMOTwYEj0deCyjOgtMC+O
	6liji/2EnGfYcmou+KU5l2XgNj5jwVHAlwEeMqozy/W/ALEdZih7LBcWF8xqJUdJ
	LmkVRebk52gpp8wJ78w6tJpj1uhpgxnOT6AhAveYlmuh7LMDXa1PzwcwrHN+LKAK
	sgf5Wfql5p2iFJq6zhRcGyp23TIFBN9pMFA6CebO4LGK+A0sKTVMuuKzuaNyfynM
	UjxN7yjj2oxHEF+3pFtOg+rsynOSW/PFUPQHylcWF16rwc3QJXTugyvoTRYKYOq4
	RgWvh0D8tlt813m1xQZZwppUoNIN2yLbpV+hYkehCQuFdA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anggyk4v8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:41:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b26bc4984bso2539750885a.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 06:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764168071; x=1764772871; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Cb+6zVcvLje9cJpf9SPSxDPZKN/HYxpTTZM5TG9Osy8=;
        b=Dhs0kBPZKt1/TMUaowg3h6d59HL3G9YLNk7nAWwmWiFW9A+w+qz1VSTBDyVWJssotR
         oNax5JKySAA2PI3YV9HcdoFKP2VFXR20ieri12ghEUMH7xb4PjnMO/kN3NaL/ZhTvjvT
         7UElzf5R+fFs5EqBQTt9Gzn3/QIikAoFSU/ATcma2Zyije1W6KUlo43ikkFRkiFMKxoh
         AboufNkDz8X+KitaZ8/rNSsQz38OHo2ov/qHB4MOy6y0PuJla1pgT6+dGCaN2eFkTwdM
         rAUH8Xsh1skh8q48MpIW9dtFJ1SDmfHRP/zixXtW/SCU7SG98xkPNVzvQ7+Z5qVgSbGg
         7v5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764168071; x=1764772871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cb+6zVcvLje9cJpf9SPSxDPZKN/HYxpTTZM5TG9Osy8=;
        b=SPNQvxul7OF7gDyV++eI4jdTAwlOMmD2+tBu4ycG0fcBW/yTU98SnC4TA2bBsTmxkQ
         zMEYcF3zpdwemg4bRYpyKQ5Acgtqx/wIGPzxj3aiYY+PVyN+abRUSS35STakWvrebujo
         xJG7D448sQkLhbH4VcmWLuDXnJlL9Wqrl0Vwv7Dd+ljlhz5VPiklHuvTq9Z6b4GmM10p
         +gMP03d9rh2QIXrlQ9SynzNaKNkeGQSzrrMqHQ3HLUse86dMwzbhHIV3+gHpSLOH4V7C
         aWbUgqP5SH9d/gqpODuHduUuUqffv4uxzhV/Zi3b4fOIr6jc04dauVxa2daPeDGK4IfO
         aKhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBhnB0nReaZjHNu/ObhgcztPaAGOjLGfOREP8e2bH8qZa+YLtdxOorkAMKVfIMQeeHsTKxz558cMBb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg6I7wtpg5NfsxX/s6PrNYt96iISWTnXGNkiB/ahqirvRmKMAg
	JTFErBuo+KPbULohbdZY7zfXY6GL9XT1j77ztPLTen4m1TQ7glFfEkiJtExnck8M4UI+MhDAtTp
	5xWzvkOj5XJ+zML7E91hmgmVVtHD0km03l6yUF5Nf7tdcb/Q2/OUIehy83aKIvtZuz/TZJcV8
X-Gm-Gg: ASbGnctOe7GcOrpIqBgn4ncK8yY3jtxIgSOcczWhO+qP8LMlqStzmFjW9CeBaFy/qT3
	fvHU8Qrkw71LF+MTIfhaqkB+i+wpuuFiT/Q++33I6OYWsRiB7xXJftyvav8EFxlXz5DaJCDRg5m
	smqId/HrgLmDfp7SLKzXWrwx64nGpg5kZqstkZi+YX6+e+TDjC63eXvn/jqi6hxSslnQvxz+LOa
	zfjJW814zqJhxC7LDFRC5x/3zMn3rcPj4gKS9eIXkhz0vdNbF2emD+4dLhj4ENRahx2+sg9WzCY
	AX1nmLUNMUP7nOGFnyjxvIgeh3zOOFg9enCHH8uyCgcsFdH0bZZl2MoQbJAJTMMx+2r5P72nwTr
	YaVxEyvAs4NmSf5pGosiAbFygxHVgNkHWtLJqXlSOpq06W0EcvAP0fLf15BDWtzioIqKtDudmYW
	CTPbVypdeYLgaHJPSQsUOMEaI=
X-Received: by 2002:a05:620a:414b:b0:8b2:e402:20b4 with SMTP id af79cd13be357-8b33d203b00mr2712634385a.10.1764168071229;
        Wed, 26 Nov 2025 06:41:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbBzeWAYP3dp/c2YiLk/9UKY5m5lPSsHi8ZCvonpCdrI0jJZmrimeTWEN5tjYX+gDLVT9Aiw==
X-Received: by 2002:a05:620a:414b:b0:8b2:e402:20b4 with SMTP id af79cd13be357-8b33d203b00mr2712630285a.10.1764168070752;
        Wed, 26 Nov 2025 06:41:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37cc6baf973sm39439571fa.24.2025.11.26.06.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 06:41:10 -0800 (PST)
Date: Wed, 26 Nov 2025 16:41:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: longnoserob@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: Enable
 SLPI
Message-ID: <jxlq4fbtl5rkiyyaivoelynw5hjpb3xtg4klcyocyzbs6ncpqa@rhqcwbehisjv>
References: <20251126-slpi-v1-0-c101d08beaf2@gmail.com>
 <20251126-slpi-v1-1-c101d08beaf2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126-slpi-v1-1-c101d08beaf2@gmail.com>
X-Proofpoint-GUID: _ROKQ6U2-MxqngBXnElHxypisRoWA6fQ
X-Proofpoint-ORIG-GUID: _ROKQ6U2-MxqngBXnElHxypisRoWA6fQ
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=69271188 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=RWXG68yAir6K0NoWbU4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDEyMSBTYWx0ZWRfX54J23r6llHsZ
 3TW+SG8EQ17uroZJT1prjCStJXI7fUxCd4/75X/LfFSqFGalRh+EMEg0o3Mi+84JL4rLYmUqBMc
 7wSUA/utGUQsORQtz42CGT5tHzbriq3G9xR0j68wqbvmsOnHX0xZTKllhLalAIwhlm19jgL7quo
 pOafqFMzD1Wpn9v0kUFZrgC8q5agn1rvK7i9KZU5V876770eW8MQsWKLh5BVE5H+0Z1Nn11TFI9
 ifgWKbH51DwF+kl7V6BeEaa2Y6KCCkT1ucmhMLbOJ0j2RrA8QqkJsI+g7/xYVDe6AlkFy9V4ona
 OEdN/u68JkiPc4obFFZEEYfL0cMcOwsIGLzAYcETTLDwsgqE2r6mBrBd7nZuKlSLizeefcuyWY9
 AMsirD7v3AjEWyUmk6syUX2MBc6Yrg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260121

On Wed, Nov 26, 2025 at 09:08:35PM +0900, Robert Eckelmann via B4 Relay wrote:
> From: Robert Eckelmann <longnoserob@gmail.com>
> 
> Enable the SLPI dsp on the Xiaomi Pocophone F1 with Qualcom SDM845 SoC.
> 
> Signed-off-by: Robert Eckelmann <longnoserob@gmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index 785006a15e97..0fb1d7e724c4 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -425,6 +425,12 @@ &sdhc_2 {
>  	cd-gpios = <&tlmm 126 GPIO_ACTIVE_HIGH>;
>  };
>  
> +&slpi_pas {
> +	firmware-name = "qcom/sdm845/beryllium/slpi.mbn";

qcom/sdm845/Xiaomi/beryllium/slpi.mbn

> +
> +	status = "okay";
> +};
> +
>  &sound {
>  	compatible = "qcom,db845c-sndcard", "qcom,sdm845-sndcard";
>  	pinctrl-0 = <&quat_mi2s_active
> @@ -637,3 +643,4 @@ &wifi {
>  	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
>  	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
>  };
> +
> 
> -- 
> 2.52.0
> 
> 

-- 
With best wishes
Dmitry

