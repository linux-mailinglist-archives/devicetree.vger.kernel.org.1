Return-Path: <devicetree+bounces-268575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MS6N4a6n2n5dQQAu9opvQ
	(envelope-from <devicetree+bounces-268575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:14:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A351A061F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7617302A388
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EACA372B5F;
	Thu, 26 Feb 2026 03:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QZKqc4lq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DogaII8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C22D94B5
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772075651; cv=none; b=RtbTcuJPlRIKVrmCZr3t0OPSdnnQ+SZGF5I4RSVoXTafbhfUjLH+a4QuYNMfs/Ox8x80zqFO51vIiPypI8kN/OWcHSR3xxyTmYDn0s1ba8Um1+L4c6Vt2whiEHniqd2k7Y0OY3dwA588zEDEgSJXVlEUIBNbnSrYA/5894fINCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772075651; c=relaxed/simple;
	bh=J1xHw1qbCKqF3aM3go5V2bONriN4J0Hcrm2VWJVSw7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b/N+dL1I1caZjxEm+1gczB8rmLDlY7DqAZtUI6aNrVcA6iYUNJ4FCBpPWsUHxwpT0arySyORf+aEOf2r7KoHDHKmOrSWEg8C0KoHCfV1WZAutiaVl9p7U0rrm62CyGnyqMVJ4r6pS4Zwv77Z7TAx4w9na4gphq+Pxuuj1l3cs0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QZKqc4lq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DogaII8U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q0pIKN2974603
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:14:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1K92gqYypLmBe6WD82hk7pcV
	Cx1m3R23a+EMVYYqH1w=; b=QZKqc4lqwWEDRy+onAjqn1xheOUqxzYw+NrJsOww
	FSC9f/J4k64ZqJCTvbFIUb2E6ezLXe2ikbZIScBYwq8sPTepZwcDemqXqcBoOQfE
	b1Y0GWkglcmb4f/KbKikIRyEKiPoTqqcHkAWZVumSem2gPkaGHKU6alPVu+1KgQ0
	OycSaBYK1kiF2orC9TI55HAJqY7QrxMucfstCbLoOKPKSsX7Pj4uGVDoi0S3+va6
	3xzgNrjZthyrnDYyk9TZrqcAR4/Tt/uGvYsboWdLsryOfR549ew0m45Dm9s2be0s
	AvER/KPBgMvNtWvUtcNCieULSZOX/jpzSo3PCfXb/jpDVQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjc0g8b4x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:14:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8ca3ef536ddso289877985a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772075648; x=1772680448; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1K92gqYypLmBe6WD82hk7pcVCx1m3R23a+EMVYYqH1w=;
        b=DogaII8UjRNfcelEM/6/4tMTqwd/F3ezMSmXNiCIg4GTCgpvgbXxAaYjAxzDu90PJM
         8Av0avfjUPvhzI57rdBJEGOYsIgqrWlefcVNvCV5KK5sZzBmqZkWw9HVXGGa4jqwfvsH
         PD4OlTal3QNgyYvRTPE+zOI6Nkq8i1QjQP9D2zpXmhwXAcmiWtD63fj+nbvu7ac+TK5S
         Z781/mDD9LPe0lo+4PeU7jxBdJtVR6E+ndSilAVeIb8M1r7nG530zJx7SvtTN5n1R3J+
         e4ooPvNBf75IiS2VrHyScLCaUbdkn37O9JiGVTKKI7u+pm+r3d5eK6O5MGBnJF9Tp3g/
         9uoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772075648; x=1772680448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1K92gqYypLmBe6WD82hk7pcVCx1m3R23a+EMVYYqH1w=;
        b=GQwN/halSpgbP+SM0chELC4o678c7i86vWJ20FtrtM17Dwv+/O3nKkrQkobdOG1i6Z
         mFeYLvviCUp2KqELhIj6SRHSA/3Tq44c/Z4kWiJ5y7E+ptkS7msuWHTSTn4sWQY71y9H
         6tB1PEMwInR7/O6rmUyERPT4vFo3jPVyC6GHxsbQuUrejXDEGTod8IydZ0l8l3aki4Oz
         7o8GMiZqsIe2I1krhhwmiJadxlOg44QL56EXiJKe1fvvkIQYRZV2IA4/lgf79EIxvzbe
         k7mp+RHwjW36KT2LyoICs36IKQNCpAPXtVfCqhD49qRwTo3u0GSICdFswTSMunElsfZx
         5+/g==
X-Forwarded-Encrypted: i=1; AJvYcCWbquedmaZm0F+DN/0/eplvz+UF+Fce79tzFI0C0xUxtLAxrXX/W20X4kyWg158e/Jit9KRSZLnN9Oq@vger.kernel.org
X-Gm-Message-State: AOJu0YwjmPqPuhvUrG5iSvnvfvIBWhvYSrH+pU3DVorCgbOgJi4S6AD5
	DW4T6HTvBEJDSoqNmxdrYFutX+hVc/1jupEyoHJ7m9ElMIB7f/nTEyOn+7IyecrSlZjz8cafXKV
	uFykhq6tNt7/9ANlV6UYKcgk8E1e/tpAWeQA1/cIoYgz16KgCVBBUu8EuSZTacU2/
X-Gm-Gg: ATEYQzwvAAFWPoeIR70dU0Alm6C6zWTYr2zmTfDLiRAgVCtjdCzNfOkAJ55hIAhHlst
	EN7VAF+i0KTb1UBwL5DdHg03kqqm3ZLJrjDbidvhr9v+vR/iuTLscbaXXMcqOUUUZ5IG83R3osd
	HvV6JlLmi8CwnNDkLXIMYUqydiJnDQZpqh26wzJSJLAdFkS/CvhWqGtnEbGtvJ4Zb94/1esKnP6
	SaKOTCeOm7YyvGKlKkiV2+Ic9S+F5Et+WfEe0Dc+dXqJKhQ1A4DhL96J2oyVtVT0TxJUa337Ik1
	lyPAH1LbR3qcr+mUccng7n9udIgeeScjG2pIs6OVAUb/r4tSalzOelzGXqUEhKOkHstMuAeiAAb
	9gNz0LjuapcgECPBjsmheXoVUJqrvoQEc0BvXsq0MXFgg7+vN3iYkTx+y3cNajJDvXa8mD6D2dk
	gLMvmmEtpZxN+3b7CpSE/8lBvIfE9cZjuxD1w=
X-Received: by 2002:a05:620a:3708:b0:8ca:4288:b175 with SMTP id af79cd13be357-8cb8ca769cemr2368039885a.55.1772075648489;
        Wed, 25 Feb 2026 19:14:08 -0800 (PST)
X-Received: by 2002:a05:620a:3708:b0:8ca:4288:b175 with SMTP id af79cd13be357-8cb8ca769cemr2368037485a.55.1772075648029;
        Wed, 25 Feb 2026 19:14:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109df868bsm254666e87.70.2026.02.25.19.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 19:14:07 -0800 (PST)
Date: Thu, 26 Feb 2026 05:14:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
Message-ID: <hjyady72fcatibog4gl4hjjlhsbev7etn6py5hmbefqd7e5jp5@tyxeb5hwgz2n>
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
 <20260225093155.4162177-4-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225093155.4162177-4-swati.agarwal@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XI49iAhE c=1 sm=1 tr=0 ts=699fba81 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=VGCbv80CQZbRCFdKXesA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAyNiBTYWx0ZWRfX48XjI0qMrMTX
 BImy0aLiaZzTHRjG0qAUZbWXqPDp69Psn6Vr+j8KO7DohuDWUWSdpfQN3CPPI5QH1mOP0UDpIWl
 MHwrDkddmW9EQ3HpHX2FLCGAnskRc3Wj/DCQMUJ/041ZP+fzFocCcOYr7g7/bM6XDuW7FK5V+3V
 /vUHCVetE73whsizEyTkbW+Mjf/z8RZn7vSlBuGkihpmf/yVQXpHMmvzfYB+dZGedwPivq+9tL4
 NyQyPNnHUJeirzaZhnER9Kqrh7WebrcFD4xDAu+XvLeQhmAQCYfJItqGhSe1uXcuUlfK9CHbX2O
 /SF7Aqwgy5na1YASrduI0VMj95mAzRwJHsngvN9tJ+6gG2iXWdn6MWevFif2CZQSVWn6C2Rksjd
 s8Hie8eNYuNQXB9Gog9jS6D3I12pgjO9g+eHGC+Z4hx7Nq3VNOOOAbP4f4w6qihYxvGYglIea2D
 xngq3ew171qokC3Ae2w==
X-Proofpoint-ORIG-GUID: eaYgEkvs3ZznJQuQLR8TR7K_ny5JJ5fO
X-Proofpoint-GUID: eaYgEkvs3ZznJQuQLR8TR7K_ny5JJ5fO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260026
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268575-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A8A351A061F
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 03:01:55PM +0530, Swati Agarwal wrote:
> Enable the tertiary usb controller connected to micro usb port in OTG mode
> on Lemans EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> @@ -141,6 +160,15 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
>  		enable-active-high;
>  	};
>  
> +	vbus_supply_regulator_2: vbus-supply-regulator-2 {

The regulator nodes in this file are named regulator-foo. Why are you
deviating from that?

> +		compatible = "regulator-fixed";
> +		regulator-name = "USB2_VBUS";
> +		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		enable-active-high;
> +	};
> +
>  	vmmc_sdc: regulator-vmmc-sdc {
>  		compatible = "regulator-fixed";
>  

-- 
With best wishes
Dmitry

