Return-Path: <devicetree+bounces-219629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B4EB8D242
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 01:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B49D41B20A4C
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 23:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 776A027B33A;
	Sat, 20 Sep 2025 23:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pqoANKw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A340C1A9F97
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 23:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758410488; cv=none; b=E73tsg6mLa9WaZsX1zAJp3uZIvsh9dDzeE61WW1DaBlCVum5/iHTTayMG9FGw6F5CCG4k/Hez826LnTIlOf6ywQM2bN3jQo+yuzalF+8IU8PKkqoHxnyxpgq38XRJQNszjSTl5nZltFch6TzjWtCKFn0hXcEk0UzEHNAIusrYIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758410488; c=relaxed/simple;
	bh=RUL1Zs2ER3rymeciz/eOY8tNxSFCvRDGsNi6QpI68eg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n/62fzekHAizt77RDb1Mi9M1n6ibdpa0iwpdVNn4NY4yWzg88EITsYGgEXaffjj4kr9CR1nZ1nEA2dJ26Ju5TjzFVQauGE9t8mDE9Qlhr1nmKz1zZtOC5OPdjoHyOI6HkpZUBrkTpyjIdSbLEfkX8oLJDWaIU6Iwl8VAhE8XUxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pqoANKw6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58KKpfhA008544
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 23:21:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QJ08kPi4J0e6QPjOfD6/wld0PtOfnxlKb2Gc/b7w35U=; b=pqoANKw6CwhCz9j1
	JD7U/Mv4jQ5cCH+952wBFWXKgoWPPlqzDBlBYQu3xziRVSkLFlP2sm4VxW3UWLKy
	qibAH/jOKD2fvndcAaHs9GErZZdc1GV9zVSrvJV/H7fJzNuQq8Sf4NOEZaEPXAas
	j6oz1j6NTC1tWPfmoBfqTtGKPsSI6CoQqng0d3g5rh0ezbvoIBKpg8xjBwE4+vhQ
	ezkJIOttUd4YH1KGh5RT8ar2Rb1sgtySaqz/pWWNE4CC51JmV7Puj1hp+UJQHYKl
	9m2p+DfmUBRDTpEXIhc09OXsnYkkN/Gad9NSVibZISwC2kCk8r1iFCfeVIsySOff
	4e8+RQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499nj8s975-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 23:21:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b60dd9634dso66893921cf.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 16:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758410484; x=1759015284;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QJ08kPi4J0e6QPjOfD6/wld0PtOfnxlKb2Gc/b7w35U=;
        b=GAO98eoDWVS7+oNzqFTWEsevxdW1aa7wU7PzAztjcfkHC94keUz5Y5+IC48Ubb7b5s
         bgmdkVHUfq/6dA9poPQ1IBn7CUHqMGFNkCENzPp9MRWNIYOEfQUJVN96MWT5pHZkwZ78
         KDi0U2K5rK2m5ZTl1EbqYf4xgrdXkEwAn6LbCzlHupeG6joUl/MEc7kgvw36DE6x7jzn
         cE9V9SJZIA/Fg4S8BYamuelj5ClzoMNhAjZakfblFYeIgvdePicogU3h3/4NlZskw/FF
         YhM+U4AkFkw9FONKwXXvCgDgjAaa5oaGpNGcCM1+1r8cYfwYbm2u7hSqGwI3wqsi3MPW
         k+lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpeQ8PTtF1xb16tCz6MH1Rw2m/fO2FVQiF34dR5G0qet3QHGYVXhdaZZoYZ0lc5sh9t6fJqd1cXXhZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzFEXRF61KZmdQYA/s5BkqPyC8bZBx61K6LrZ/8NLfvZzwhRRi7
	KAE0EVyMAOkY4+Cqm8AjdLgaGUKzJIYlHcwmEceRL/uEUdEUlqkgag16o84Xoc53W+EdubmX1lk
	ZcYZcJeGu5QfvrtHLNkHfKc++JNWwWO478W4mLhvhNLOMOupBJLa9KrLEWN7ZRgj3
X-Gm-Gg: ASbGncs2M1wGRf0ZHOcmLyjxjugYEHGABJFEuAFgeIlbIVwREYl+aBnfayeKMgrNxnH
	RzZ4sU4QuPgNhsVCK8Z4odjuNGk2aZBMKU+rcMx3Zn/cReHCpnwZkn8aeRyp6CgiZJm6LAmnrJg
	dsk3YUNWB1M8GH7bDuAGaMAe3uoumlbpaRYFeJqXk0UdYwzqbpvefnldwqBOAkv2BfpB4iHm3cA
	ikHFgvMsERLaP+Z4HR1ABv/btuGBgInhkjjipDUVCWxdxFIHRyLJ5P7BJ65r39TJ6hjPV9oIiTa
	o4BJJQ/FqIeCld3a+UQzaDabJm3zxrsJI0tne0jnNBa/hNbNaSfeY/qUMNEUyPA7I4bRSegXqKX
	p4dxDmr5kdo9GbeSuU2LyW/OPVRZ/vKFWfPi3b4YOaFfASpG70HFy
X-Received: by 2002:a05:622a:1389:b0:4b9:6bbf:7073 with SMTP id d75a77b69052e-4c0720ac134mr82344411cf.53.1758410484399;
        Sat, 20 Sep 2025 16:21:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYGaTWFE/W0JZvdbyAwuAt0nxQOFKarDbY+G/GCtpOyicyxYjNEFi6dQXVLSt7TGc08dWv0Q==
X-Received: by 2002:a05:622a:1389:b0:4b9:6bbf:7073 with SMTP id d75a77b69052e-4c0720ac134mr82344251cf.53.1758410483922;
        Sat, 20 Sep 2025 16:21:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a68e8814sm2191909e87.62.2025.09.20.16.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 16:21:23 -0700 (PDT)
Date: Sun, 21 Sep 2025 02:21:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: r0q: add gpio keys
Message-ID: <3sox7jdjpahljevgyctg7zbvoua364hyajbap3ulsykloxqzna@dl2lfxdppdba>
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-2-ghatto404@gmail.com>
 <qiiuezocvxvj5bhrr77v6o2amaaaepdx54pqoewvhtnxce5ccz@g7bhkrb6a4pd>
 <5436E420-E459-4E47-9752-EF80F550FA6F@gmail.com>
 <r6e23h4nkddktkle5rohdiiqkw667rq26j7u2yodao6p3scixp@y3roqbly4oje>
 <B58EE981-3702-4FA3-B150-A3C862643870@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <B58EE981-3702-4FA3-B150-A3C862643870@gmail.com>
X-Authority-Analysis: v=2.4 cv=dZ6A3WXe c=1 sm=1 tr=0 ts=68cf36f5 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=tsbVFwL6q7DH9GSC2JYA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: PDsacpkO0DRpa9jXhGAOLQpYxopq0GS7
X-Proofpoint-GUID: PDsacpkO0DRpa9jXhGAOLQpYxopq0GS7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MyBTYWx0ZWRfX+Vze8fVKxBH6
 mbNyFzIXFeHidhMACEV0vsxIUiO23Fhahw23LpXsqRsGqBW1HdaEK8Paj+kr3/InIPavmAOT5nd
 b17Ab/X3dl4qrcBNnnG+gwd0lBEqbxjkrAhYsf+aSEMQbnwn6FLWzQl0vhYundDapEdgHi9T4ZC
 NeRUkqtFSblFQxxqR6PfaEhHW2BGaEKaoK2iiGEHYJuWm8qH1zahA+2J8y6scO3uJx3yaT+VpH4
 c034B6r6ZlLfk3LpUmvAIkLTvYjba2clJtzPNys8pNH0Zv8tPldqcMiICXv/l5DMbIWco7VmYLZ
 wXVCEeTEETp2ttD4ZWaOo/0Oulx/SkxZszPa3yExxkQZ2SkYA5wHprXvZNxF42bF8HUk0opVCIX
 Yzf3t48t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_08,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200043

On Sat, Sep 20, 2025 at 05:22:28PM -0300, Eric Gonçalves wrote:
> 
> 
> On September 20, 2025 5:15:41 PM GMT-03:00, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >On Sat, Sep 20, 2025 at 03:02:42PM -0300, Eric Gonçalves wrote:
> >> 
> >> 
> >> On September 20, 2025 12:45:27 PM GMT-03:00, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >> >On Sat, Sep 20, 2025 at 01:46:33AM +0000, Eric Gonçalves wrote:
> >> >> Add GPIO keys support to Samsung Galaxy S22 (r0q).
> >> >> 
> >> >> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> >> >> ---
> >> >>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 53 +++++++++++++++----
> >> >>  1 file changed, 44 insertions(+), 9 deletions(-)
> >> >> 
> >> >> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> >> >> index 880d74ae6032..70e953824996 100644
> >> >> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> >> >> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> >> >> @@ -2,11 +2,12 @@
> >> >>  
> >> >>  /dts-v1/;
> >> >>  
> >> >> +#include <dt-bindings/input/linux-event-codes.h>
> >> >>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >> >> -
> >> >>  #include "sm8450.dtsi"
> >> >>  #include "pm8350.dtsi"
> >> >>  #include "pm8350c.dtsi"
> >> >> +#include "pmk8350.dtsi"
> >> >>  
> >> >>  / {
> >> >>  	model = "Samsung Galaxy S22 5G";
> >> >> @@ -28,13 +29,19 @@ framebuffer: framebuffer@b8000000 {
> >> >>  		};
> >> >>  	};
> >> >>  
> >> >> -	vph_pwr: regulator-vph-pwr {
> >> >> -		compatible = "regulator-fixed";
> >> >> -		regulator-name = "vph_pwr";
> >> >> -		regulator-min-microvolt = <3700000>;
> >> >> -		regulator-max-microvolt = <3700000>;
> >> >> -		regulator-always-on;
> >> >> -		regulator-boot-on;
> >> >
> >> >Please don't mix up refactorings and new features. Split this patch into
> >> >several.
> >> The patch only added gpio-keys node and pon_resin,
> >> pon_pwrkey. Do you mean I have to split each button
> >> into separate patches?
> >
> >No. The patch also moves regulator-vph-pwr and changes the comment in
> >the TLMM node.
> >
> I thought they would be too small to be
> patches on their own. Is it okay if I split
> them into 2: arm64: dts: qcom: r0q: small refactor
> and arm64: dts: qcom: r0q: add gpio keys?

SGTM.

> >> >
> >> >> +	gpio-keys {
> >> >> +		compatible = "gpio-keys";
> >> >> +		autorepeat;
> >> >> +
> >> >> +		pinctrl-0 = <&vol_up_n>;
> >> >> +		pinctrl-names = "default";
> >> >> +
> >> >> +		key-vol-up {
> >> >> +			label = "Volume Up";
> >> >> +			linux,code = <KEY_VOLUMEUP>;
> >> >> +			gpios = <&pm8350_gpios 6 GPIO_ACTIVE_LOW>;
> >> >> +			debounce-interval = <15>;
> >> >> +		};
> >> >>  	};
> >> >>  
> >> >>  	reserved-memory {
> >> >> @@ -47,6 +54,15 @@ splash-region@b8000000 {
> >> >>  			no-map;
> >> >>  		};
> >> >>  	};
> >> >> +
> >> >> +	vph_pwr: regulator-vph-pwr {
> >> >> +		compatible = "regulator-fixed";
> >> >> +		regulator-name = "vph_pwr";
> >> >> +		regulator-min-microvolt = <3700000>;
> >> >> +		regulator-max-microvolt = <3700000>;
> >> >> +		regulator-always-on;
> >> >> +		regulator-boot-on;
> >> >> +	};
> >> >>  };
> >> >>  
> >> >>  &apps_rsc {
> >> >> @@ -119,8 +135,27 @@ vreg_l1c_1p8: ldo1 {
> >> >>  	};
> >> >>  };
> >> >>  
> >> >> +&pm8350_gpios {
> >> >> +	vol_up_n: vol-up-n-state {
> >> >> +		pins = "gpio6";
> >> >> +		function = "normal";
> >> >> +		power-source = <1>;
> >> >> +		input-enable;
> >> >> +	};
> >> >> +};
> >> >> +
> >> >> +&pon_pwrkey {
> >> >> +	status = "okay";
> >> >> +};
> >> >> +
> >> >> +&pon_resin {
> >> >> +	linux,code = <KEY_VOLUMEDOWN>;
> >> >> +
> >> >> +	status = "okay";
> >> >> +};
> >> >> +
> >> >>  &tlmm {
> >> >> -	gpio-reserved-ranges = <36 4>; /* SPI (not linked to anything) */
> >> >> +	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
> >> >>  };
> >> >>  
> >> >>  &usb_1 {
> >> >> -- 
> >> >> 2.51.0
> >> >> 
> >> >
> >> Resend because I forgot to CC the mailing lists
> >

-- 
With best wishes
Dmitry

