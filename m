Return-Path: <devicetree+bounces-218413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F510B7F9DC
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:56:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B09E0521343
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC141F873B;
	Wed, 17 Sep 2025 13:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D0NdIIQD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854D319CC0C
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117057; cv=none; b=dEzEptGVaYUte6xNDm+YsrEpoLlKWDO1S+HlpWqL+oaecpXVmgr3xPHCB07cHZGtjnjm+3lTCMI3QtDm5EFSk2oo1uX6iSNldIvvoqANtYM+6k4u4IoVyRKK5LjqUMUO3/1kePVIaJ6oOxPS2GOdbgqGY9P+QEh4luD4iGWj+78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117057; c=relaxed/simple;
	bh=BzKwc5Wcs4qT03yoXJGeUqL8ub6OmoUomkvXZV+Roc0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MqWqHpJcH4bWx+puJATKy/xmPJ6YmJ5Nk6Y2RzI4c72HS7JgPUD7vtpF6hBm6i2WBGcN3yYRpzdYfvE5HVsuRw1DE2PBPBAf/qyql8cp2vkQDUyG6hUmhthhHenoJYrB9SWYkFaPwb5ur4JvfCq3ypLCWQPX+A171IMCFOmmC4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D0NdIIQD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HDG3Xm003351
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:50:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Uog3KTU1u7k5TmzA6J2vySACRMASFfgiZLEjVLmaoM8=; b=D0NdIIQDOUr/J4aI
	8faAumUfNGcJDw1ivazItuYuafRWHhU9EEK6Zq+2LgFSKvuq2q7HiuC+pgJI1zXg
	912E+dDaI1ckdQ2JZdi7lEC0kksqAhBwRHVoEM2KqpXpbGv6zupLIQoP6eZKNyiF
	BqCgXtec1jgkQxgsykn7f96T6uXlUcA/4Yajlzs4GwvaIiv4z6NLnOFJsG2Db55r
	uPD0YsF/dSdzdMqBKpUCQ7POh+NuBJTZSRzROW2FazaC3dNBwZfVUHSP4hbQXBhp
	mzqrnkEHvyldBt5F5K0Y1opqMtkjPzeaFoQ+BHIk0WJejgUnEmaK3MemIT+FFFNw
	Kst9BQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqgr300-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:50:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b79d4154c9so14469751cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758117053; x=1758721853;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uog3KTU1u7k5TmzA6J2vySACRMASFfgiZLEjVLmaoM8=;
        b=Tito6iqqcAaCN/EHXJvIpE8VrkbytUj47aeecbOhqKSMZ9YhcSUlhYXK06sh+TRJNP
         oLMd/kZC2HuJsFYKgo4dNVlIefZgHjSjapuxTVrJXHqe0dp1fasvV3cLnLKByhOkNZxx
         mohAYolRlNTDYMGlle+3TyKS8IaGG11txg/dk0a7QLW7Tu7BAygSbU0Y4bhyDrtO4ebB
         +7DDSD7zBrcc/oevedshrDM8O76giDG47hpjnE3rVU9qTUZcMjBOOoksfxqdcJV4JUfH
         z0EQ0uRpkZqs62PPwJjxEZi73w8b+ZcxXQI+sb00nhpclvo6RjfQ9eAa6dowSXvIS0ym
         eSbw==
X-Forwarded-Encrypted: i=1; AJvYcCXikCv+dG7iET6oW2WxMe5wlN0srWnjArPLdAm2VcgOToFKs4LwnyHx4llYybPhuL5Ca6Ji+0jnuNiU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl8Oa4cIDcTENYWwDIdYmWQldrbRMDEzyKd6ndsAYoqLouWeKj
	e98neXTyQ43g5CxBm9wieOjoNyQmGt7JLueY96xNZrgZxIYD7+BbLHzeFsIjBWuATwIdl2aHhIn
	qCbXAj3/ZSNmrLE8T8rYyvrfGjTAT8mwk+Q8kQpLtnCQlNUmAaGbqRcpkLplWMtR1
X-Gm-Gg: ASbGncuufQ2RW3HZmtih5yNNOVVgJyr/0262YKrI7Ypz36ut22HlwUoJK8jRhtj1pTf
	h6bCsHEv9yiFTNway7yGa15nf4xA6Dq5E6FfWLL+2Qp21o5CExL6lWIfXyWToPAV1/WvcyIKU2+
	PoSfGRrsTNBTLsyrF1+f4tF0jOhVFGKn6SrQq197txtgLQQABcbUhMaX79hbj7fkWX5ZMPiPt2X
	2cO1Q6qLxUo/wx87H+Z9euL91+m5ayWvzCrqrgEVtsBuzNq46r2ksOEjX74u2BtpF4bwLbFFGMs
	PBh1boJRV+rbatozfEBiGHRbsyXpxtfJ12R5Z61uo9SNznrXg6TniNV5ZnBi7lFJj2LgfaouqUQ
	43zam4g8i6hAP5L95s9oHaA==
X-Received: by 2002:a05:622a:1186:b0:4b7:a418:847b with SMTP id d75a77b69052e-4ba671e6197mr17984981cf.2.1758117053451;
        Wed, 17 Sep 2025 06:50:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV4YRMM/8Psx0xIulyr1aAdXkaR5OcvPXVEIIpjBrjI99L7ALDq5DaM2c4alOEyWJAVSnENA==
X-Received: by 2002:a05:622a:1186:b0:4b7:a418:847b with SMTP id d75a77b69052e-4ba671e6197mr17984611cf.2.1758117052742;
        Wed, 17 Sep 2025 06:50:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f9675e239sm501547a12.46.2025.09.17.06.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:50:52 -0700 (PDT)
Message-ID: <6145be40-3b2b-4554-9d5e-c1f9fab0363b@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:50:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/13] arm64: dts: qcom: sdm845-lg-judyln: Add display
 panel
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-5-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-5-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: V2O79ArDdJ5QdMicCDgRtgWmrr4X-zJy
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cabcbe cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=sfOm8-O8AAAA:8
 a=g60oqdXzoFhwrwBz1qgA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=9vIz8raoGPyDa4jBFAYH:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: V2O79ArDdJ5QdMicCDgRtgWmrr4X-zJy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfX3dUC75H9FBjJ
 h95cEAe7IBEKmH2nnqQvwN46wInT7sHSsBcQtozGnNYPm6iMAipxnDfyFiWWt/n+53CrlHgHptV
 OFmeZdWNxYVFmYMN5VCr05g+nnMTtFtVonbJXRsDjxJpUi9DTOL4jEyfyd3V1UXDhF97mNnCLWh
 2x3BLNyxSCg7kCrY1sROqErsuSzmUgpA3fjW9e+RcXV/A8f2OvqeZ6Obb3/IsY5GbYUTbxxxE8y
 SroXhCwwetcUyRKZEcPWthBN1NVrHDr1sIan9MGIKdDMBwTD2IB96AsdB3PK94lc6XNqGO8c12Q
 BI/LKBWuGTiy72+A8VhAQr4uuGkqpWpFTxamPoWw7jCcbShZQdJ0M4U//nuFKnkrSEHiMkQ2Yap
 kq0uRuMo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On 9/17/25 3:09 AM, Paul Sajna wrote:
> And supporting msm drm nodes, including backlight
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> Co-developed-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> ---

[...]

> +	display_panel: panel@0 {
> +		reg = <0>;
> +		compatible = "lg,sw49410";
> +
> +		backlight = <&pmi8998_wled>;
> +		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-names = "default", "sleep";
> +		pinctrl-0 = <&sde_dsi_active &sde_te_active>;
> +		pinctrl-1 = <&sde_dsi_sleep &sde_te_sleep>;

pinctrl-n
pinctrl-names

is preferred

[...]

> +	sde_te_active: sde-te-active-state {
> +		pins = "gpio10";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-disable;

The vendor kernel (for Sony phones at least) does pull-down on both
active and sleep, making them the same

Konrad

> +	};
> +
> +	sde_te_sleep: sde-te-sleep-state {
> +		pins = "gpio10";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
>  };
>  
>  &uart6 {
> 

