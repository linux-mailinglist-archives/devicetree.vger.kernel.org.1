Return-Path: <devicetree+bounces-222957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55663BAFC9D
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 006FF1C2AF5
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2608C2D8788;
	Wed,  1 Oct 2025 09:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LblUTOVj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B452C21D8
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309785; cv=none; b=I9dZsr1EC1UnTHF3MDrsY342YIp6jRfYMSENSxUyCTYhmVUSB0UxdXD9jJVrVWk0oM3gKvgVgz+L3DKN47igdSR5v2Bzxp4CY8tnmfhMBVVi7u8OLWXe3N6YblCHccTMGvSHsd4YctDVTA2+WIC17zmiO619hvWj1ZFVOenEsLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309785; c=relaxed/simple;
	bh=+HHYGPpeXnQ0rGeEdDhox9U3tmQQlISDNk9LsTxwKAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lcZm8mC1LBQHELtJeXPcv5/GQG7DEn7R82oC2wE4aTmp/mpU/rfOKEUpPBVvb3K80Rn550tBlCEQe2uCvoRbe2VulweTx9yNQQgzgHzp8+B1HFBUcbooqrg/d4Ag/ibpYoQxMCAPmsbgKwkUHyBK0Wrnnvpf6fmfpdQKC8XXMhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LblUTOVj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5918lOxS014639
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E82Q1fCgbKcjzYtoOPTrK6nTOyj3o0Ro+K82VDmaYY0=; b=LblUTOVjcOqLonBy
	2cQKJff40rYAeoJFSq9eJZ7YuIYVP+VM0ScLRQrw3i4Sv9vWi4Vnp0EifNVFCE2t
	rFCvItBWeOsUY8Wp6zktnHCdfPmtUrARF+XjFwyUR7zP2che1QzbTAbNzh23YWvH
	nOHOgBSeGV9taMqX7bdYlu1uqGefGQQ251T6lC/1O23gmGp+PkbtFXvDVFQTQrJT
	XBl2JWyYkFkl3lRWAy0nvfdheJxjeqzAppfx3LGSpXhoaOSKzzZselR9KywWYEFd
	FHMoSdceqnyh/NbFB+unjbbx+Ck7y6z2bGtYHZLpfusRzEj0/x9P5VvxsJJDTlNs
	wgGZ+g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr3ydf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:09:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-865c7dee192so118274885a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309781; x=1759914581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E82Q1fCgbKcjzYtoOPTrK6nTOyj3o0Ro+K82VDmaYY0=;
        b=Ug/USaq9sUgqD4JkPzG5EJzDddCHpWcKqjRdkrd3UgOaRGWpZ8q62NJCR2XTCiOkU+
         3c1M+dNie9VVkEnnKmn1quTIKccv/WaBcTgVAhl797TPG+5bgFEZMUZM37gFO91iv+WR
         Lfr91H+HYb37FPTKHkcwVow0iM/Nv1ojmKwdN7xFUjK759341YBeQXVOoblz/JQhkSUC
         1XqRqBu4mpPxlj2iGISWqTampJPYHvlQQrYqsDHKduJ9y66Uwk9Qyp0jkgT6+MNuViWX
         U+5CA8SIN+YeTdk2EvZHXJ6OuwrbgkZO4luuf9q6OgzU2BYpDJOPQTWA/7KhxoGv+H7J
         egiA==
X-Forwarded-Encrypted: i=1; AJvYcCUoft2eunk2RCsWedSkE1PVWiF5CrXgn1IuM0hD8T/TmgsgIbedFFhkFSBd7qEboL5ohBSsBpapGEG5@vger.kernel.org
X-Gm-Message-State: AOJu0YyvZj4FRsxBS0WPQCVzpTxY2xPa81Dxd6oXK2CpKFDWBIR3z3ch
	blCSmaYq12+kzZERTXDKECiaKrr1QidUbKgmWEltx+PCW3ek0URqr9w68jmRCEaoAidqZwuBFYL
	hKQ4PC03xtWa6KpCoVF6KmG5/hTzWoB24CV39qE8gKQs3K+/exGkbAOH/JOB9AtZF
X-Gm-Gg: ASbGncugEHebaKqoafRvKRVLC2syaOSFGt0SwG5h8wPfdLCcksat9+9TwDDUsOKci4m
	7UibFZtRrPQYfrG2bl9QN/guHLVKzhw9TVJ2YWTi/Sb/v0VKSifsZXjfK9REFcJGnjDOKz5Qeoj
	2ans0zvTLZSDBKRcvTYJwl1qdMvQlrKv0RqebSiFc52xlQVoPUyckeYPwKVNKvzQgW3QuFIiekS
	ncb74emrftEVnFTDImbBZ206UN8gQhCDC/IoGBE/x8Fxgxki0YxGiRg0YA/zVSJQ2Og4DmDQx5M
	FBrFGGobxALvUs1ZzOcJqkiQedlcPF590eMn6lwvX/cdkph2SwzA3eyl9PSSXH4DclFoMqb7FqV
	GNF8M0umXmVKb1SKh7azNFVZoAwM=
X-Received: by 2002:a05:620a:1a03:b0:7e8:584e:2de0 with SMTP id af79cd13be357-8737191ad41mr268179585a.4.1759309781485;
        Wed, 01 Oct 2025 02:09:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOW58vPwLh+tGQM7l3TzbUzpwSb/oYqYaNv7HwrefqZNqpGLSvcy5yrdvHVrhJZhiT/a20UQ==
X-Received: by 2002:a05:620a:1a03:b0:7e8:584e:2de0 with SMTP id af79cd13be357-8737191ad41mr268176885a.4.1759309780852;
        Wed, 01 Oct 2025 02:09:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f74fbsm1336674366b.51.2025.10.01.02.09.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:09:40 -0700 (PDT)
Message-ID: <38c70e06-f7bf-4ca6-8fe9-2a4012017cff@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:09:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/11] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
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
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-10-b14cf9e9a928@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250928-judyln-dts-v3-10-b14cf9e9a928@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: e7LxKv07rM_-ZTsnt3l9Ito8JoxO1j0c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXyqh8F9MCbU+D
 ohDqVee0Zhs6b5CXPeTh5YVzxRMoWOK1/u0ix2hMBQDxCqrDIQHY/VOawt2mvzEw3D2GHKBTgH9
 7zahDRRVsgZc8MNft5A/7HnPiEuy1rdbyaPNxGd+awIzz6sKYPzvYAHUHUB7fhAHk5pTYyzwp9q
 o5UkqS3oHp5JwIVDsIvrIXHL28zr+u2EPlBVGg539+xEDZ6x71Ih+G7zz/2wZNZIqzb20QdVVKV
 RUqxoNCtoN8851thxWOlDviAxtAKsvb0zP/nOAD0yxyUkOgZe7CGKYaACRGBrUGAwz2eT79wLh3
 iRjgNAcgQnn342vChFNnYqh4wllfu4mWAQea6etVTuevCMGMx1rwIzljyB1JnwIhtf3yIa8WjAI
 Ev7QEoXJYNpDi2GlSdTBvVeYSwVZZQ==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dcefd7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=cJ-VQTIiB2pID4zbgQMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: e7LxKv07rM_-ZTsnt3l9Ito8JoxO1j0c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On 9/29/25 7:05 AM, Paul Sajna wrote:
> These regulators seemingly help the lcd to work better

Electronics generally work better when the required power supplies
are enabled..

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index 3106fdc9b679bc6a43a1a490c61b73a63003f7e1..9c3662a3d93e124667474753e0f11d0e98698aa0 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -48,10 +48,27 @@ zap-shader {
>  	};
>  };
>  
> +&ibb {
> +	regulator-min-microvolt = <4600000>;
> +	regulator-max-microvolt = <6000000>;
> +	regulator-over-current-protection;
> +	regulator-pull-down;
> +	regulator-soft-start;
> +	qcom,discharge-resistor-kohms = <300>;
> +};
> +
>  &ipa {
>  	firmware-name = "qcom/sdm845/lg/judyln/ipa_fws.mbn";
>  };
>  
> +&lab {
> +	regulator-min-microvolt = <4600000>;
> +	regulator-max-microvolt = <6000000>;
> +	regulator-over-current-protection;
> +	regulator-pull-down;
> +	regulator-soft-start;
> +};

This patch will allow any values between 4.6 V and 6.0 V to
be set on your phone, with the kernel defaulting to 4.6 V at
boot and staying there until (if?) any driver requests that to
change.

Your panel probably expects a *very* specific pair of voltages
and any deviation may cause unpredictable consequences, including
magic smoke if you happen to go over a certain limit.

You should most likely hardcode that specific expected voltage here

Konrad

