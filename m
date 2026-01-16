Return-Path: <devicetree+bounces-256192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BA3D337EE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:29:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7FEF330151B6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB180394472;
	Fri, 16 Jan 2026 16:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p61F1MCf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PvY+kstN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BBE78F26
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580959; cv=none; b=Px+EX5cOq74AvuxIaeiicuFwy5wHWkL1O1vomgHSRu57uSYi33v54lGPXjtzsxC6Gb8AxcJMQkfXSPh8pptmO2dPs0hoKRnMfeFLcF2IRCUy1+Ku3pPOJiqRLmxOiXL4C0C0qEzyj9Pnhc20KORr8OqJ2AYG4dim7WPDTr+BIMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580959; c=relaxed/simple;
	bh=/SwR1BLE0lxfGu5yjNKOHyLxTZzq91O9zIvcFmkDxvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YTyHph/bXvqCurgxV1hyNz3Eb12Msdtm3MQvFygzg8V0fDyKs5+jDsCuu+Pix+HSxxhyssJyFoz2tAD5wPoK6x8GxDR4fZrO0XDExm6luU2gGK5gl/Pw7fftFTRfTYo+WUtWwTKVxCeBnXZ7f9ZL+KGwbnJv+IIcoiotSpxqtXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p61F1MCf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PvY+kstN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GGGiRl1240908
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:29:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CjFEZON/7JSdtKLahU+OuTK4
	OLmr/nUMnMTE/9ddKws=; b=p61F1MCfeJBhwc40UJBIbQaEI5wqUfrTyk3ABvob
	fsFHRnSmjGswKC3Kgj3yVNEbP+GDVe0E9hCUjwC/4myB7nlWxj/6CYQDh93RG3fl
	sQhJONmIYlevt+YFpos02Sj2co87pLdz127d4lYeEzSWuw9CGTEA5yD11N9QaeLH
	E55F1sVlcQgkfSujSTCZijE9RWF5M8F77knxXcZMRRFuqAMZo7/x3ys3Y8PuXmoS
	nUe7OKhbGDOrfEmpr2DcAppo0zuVVJHrt21JhyWiSQ3Ab7+qSwhZaXsxUHL2oPA3
	FTehd2Gitz0wvFmKteBHrfCdBxEAX5OGYIZBg5qOoI5aag==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96stu0n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:29:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bc4493d315so624359985a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768580956; x=1769185756; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CjFEZON/7JSdtKLahU+OuTK4OLmr/nUMnMTE/9ddKws=;
        b=PvY+kstNwzGDxpFA4eMFySHih6wGivtb9HuIl26G6AZkcURvPXFVYbXarm6xHjOEQa
         FFERfaQHEDV9NG3FKSQvJSpf1sjsEpCJ9nxr6caiyMuftUCfXzQqawnypoknyY2oPxq0
         Pf3E7NP99nlkZFV46VQ2FxT4tMi8B0NwOicp2NYtBs9aowLag5YnSffEsQhpoKai/nu0
         HwocNck2gSTc3IPCtW4/1sF0yCGyy7SCU33tUxyg5rvP+wBv5wKFeJbKWAV16ggWKgZQ
         hq4AxS5dVAFXSgi+h3Sij/kC5SXUxe4VMj7e38iPTJUdhuT6hmjcKRxHBirpAtRhe89f
         Wufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768580956; x=1769185756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CjFEZON/7JSdtKLahU+OuTK4OLmr/nUMnMTE/9ddKws=;
        b=h8MP75qaZzkjc+L4E+dmZzBJrEkiw8c9E4g/Q6TnxLm9l6C5NZFXfgh/bGYIsGlM72
         BbLPKzHQmc58bX41c9OTb4F9jzHFXa5VhEZDyaX0ohSKdrM5zCWW7ncuT7JoxwGj8sDu
         yNSUmi/mcD4+qLtiILehKsrXeNTpLSB2A6WCf3nMu/fRhvJadsNc40weEtSvMLgQ8Eaj
         My/Xibstrs7qO1kPTWgfzUUjwoF81uw9HklzgNDHhFAFH1vLckp2EiekkZ9z1EuREJTg
         R2QzvZyCFX6vszxBQ4olwc5yUY992LWtEbxhyugHl2qQrDQejfu0gD7IDG0S2kP95B99
         fToA==
X-Forwarded-Encrypted: i=1; AJvYcCUftfDXaY3S7uHr0J5paS3JcAVQXdUon7SOgqw8te6wwNhXhBRrrYYmNllp5rRNGRLjC2nTZPdBkD3s@vger.kernel.org
X-Gm-Message-State: AOJu0YyhPfs0QWd6KTEIprji1NJ7z3qYFoqAYJN3JDsdaAaQKthsn8c5
	9K6i+4sfw20719ysuQVpHWtQ3TGN5YmjG3eOikwvzOngPtU3/f5RoWIXza1SZ9QI4hQt+AE0/Js
	66pchazXwpA8ShHqj6NYP36UDewofOt7CV9ddjXi7pVfrcso10DEpbTETUI4vAgkA
X-Gm-Gg: AY/fxX6PhKtHaMY/kiiWYVlswllI3kAMknb0E4Dq5Bw0wspqsGJkHWOuMURF0DNhwK/
	P072NlBQzrtQ1ZsUPcGDYPe8YmGTEAnZjPAjAGw3HZSgcHoXrhMmAGYVeNaIja36ZIKMCyRRCzA
	AZiNpxrhSQjW/OOGzJJto/kYhz9lUIIBrnLHY68o+hJ342TNQygO0XdPcG1f9oUf8xtMD9LOp5B
	XGaR+3Y8nN7HgwyDNVUvqX7M6/MMgONNlsZ2zdipJxwart34H4g6iaX3US5AcTiUxQnMWM0LrJ/
	er+5dKRZNOXl0Svm6ZS80ZgHzgm8qpmvyhbmKGq6fIUXTXEC74LdP7HjJCaKxiUGgO6xEdUNUPo
	XDVtXfmDV+WGqOx8yF2PZFYKhRGXDFqXotCo7B7NvAFKuxhC/PHOl0gGXVFUJW+/VtI+n70Gzcv
	X1uz/c5Cgu9s8rsFiKH3IqMAQ=
X-Received: by 2002:a05:620a:1707:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8c6a68bdb62mr462245685a.15.1768580955776;
        Fri, 16 Jan 2026 08:29:15 -0800 (PST)
X-Received: by 2002:a05:620a:1707:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8c6a68bdb62mr462241185a.15.1768580955253;
        Fri, 16 Jan 2026 08:29:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf34dd0dsm887335e87.26.2026.01.16.08.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:29:14 -0800 (PST)
Date: Fri, 16 Jan 2026 18:29:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
Message-ID: <syvoq2q2zol7vx7u42c4ypsh6d2ambz575ygegkn5t4pbqifpv@p7wkafrfulc5>
References: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
X-Proofpoint-ORIG-GUID: Z_koBTgucUqmCs5BdcU0v65OB6AnDLBh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExOSBTYWx0ZWRfX95osZDIP38er
 Qi/2v7lpb5+Gji2PFxya3UVIrsgAi4Y0H7cE7DAuymuIhOLg2tO8AnuIhkBrq8rMQeI1PRbRRmR
 FIrLQis9IfJ2Hm8dre9G6YZjz5HZ7rHX8JPc84djgahFhyi77BHPBWY+lhVg1I0E2IbiUJkvzDJ
 WHXZq8s70DRA7CpUzgVhQwSA7E85Vxs7NzfM6dD0XTFZosXaRUtxw74NKnltelLkWN5JG614nLF
 WeA8kgvN3XmyqEL97VKS6pO97UrOLoCfe75VdvssqkCAsOTV7oBb1hhwWM4E68gIfiT3Ii2iMAJ
 TS0x9GclhfhAyoWNJZ2+c2DufLjOJtXetYreKxZjBBpPWh/dyHz4fbi6FL88iNm55GEdBTUPhZD
 fpUDXlXuH8Qu7L4IbV75VojxpvIxl68i1ezUt3a41gF2oHl1d1VLhMq3lW3TBAz/vB3P8fh9B+x
 GihruZ3+7k+eTjWuH6w==
X-Proofpoint-GUID: Z_koBTgucUqmCs5BdcU0v65OB6AnDLBh
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a675c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=p04JXNiKSxiIgApV0UoA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160119

On Fri, Jan 16, 2026 at 03:22:52PM +0100, Luca Weiss wrote:
> Add a node for the Hall Effect sensor, used to detect whether the Flip
> Cover is closed or not.
> 
> The sensor is powered through vreg_l10b, so let's put a
> regulator-always-on on that to make sure the sensor gets power.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> index 7629ceddde2a..98b3fc654206 100644
> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> @@ -32,6 +32,16 @@ gpio-keys {
>  		pinctrl-0 = <&volume_up_default>;

It would be nice to add pinctrl for it too.

>  		pinctrl-names = "default";
>  
> +		/* Powered by the always-on vreg_l10b */
> +		event-hall-sensor {
> +			label = "Hall Effect Sensor";
> +			gpios = <&tlmm 70 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_LID>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +
>  		key-volume-up {
>  			label = "Volume Up";
>  			gpios = <&pm7550_gpios 6 GPIO_ACTIVE_LOW>;
> @@ -316,6 +326,8 @@ vreg_l10b: ldo10 {
>  			regulator-min-microvolt = <1800000>;
>  			regulator-max-microvolt = <1800000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			/* Hall sensor VDD */
> +			regulator-always-on;
>  		};
>  
>  		vreg_l11b: ldo11 {
> 
> ---
> base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
> change-id: 20260116-fp6-hall-sensor-1049f2f872ac
> 
> Best regards,
> -- 
> Luca Weiss <luca.weiss@fairphone.com>
> 

-- 
With best wishes
Dmitry

