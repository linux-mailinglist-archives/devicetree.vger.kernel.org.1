Return-Path: <devicetree+bounces-217117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DE6B56D73
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:36:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AF483B252A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14B091BD035;
	Mon, 15 Sep 2025 00:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kNWjrptQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8EA1AC43A
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896555; cv=none; b=cBIh9aVw+3JYNJ27fZ6QlhL8eBmWuHVGt0O5R5Li587y0bwBiMy3yCyg/VfZsgv8lzr5cWytqbc1FqiIESriILh/0FnTEN8aDOJmkLEZANMeqFNhkSlkZCMW+pc20JAfToDvxBjuMtIRxb97Gd2bv02qJ49WFJoazM/9w+OQ6iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896555; c=relaxed/simple;
	bh=lSZxC9QJIX+S9xfCOuzcDQtUiWjlEROk2ZCchUnn7kU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eDl6M3s3j3iG54sUYEDwB/jgrMF6br6f5JemJCcWjB3cV2iTMV6D44HhoCB4c4LwxJw1MfT9BlPUSrYHpBAc875Q5h2OFiq4cdTPsdRt8PqSa4KMQZRGgRdnpKeb80mXhnBDPLkA4tTBZIHdSpC/YNiwILCAkErRvxhW1Yz5Tn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kNWjrptQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EKR1P7011283
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:35:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D08sD4breznQvAIPhUVcgY9/
	ePdboBCRyWjrlln0Q8E=; b=kNWjrptQNGBQAPM7mziEVEezRtYX4PcgYn6/ZLIQ
	jSBU7ubKYHrCo6EHBWxE6eqm80opd62fs9/PeSL2VB+vjV3WIanCKDsOVAtR/nFm
	MmajUPXTghhS1gW/f+83Z18pbdIsvHcE9p/nIBoDyRPimjDsW1dJ7O9GGz72tq1M
	UEIVOZ6TCi9AaAOzs9qdYuYhlk+ZQhEbsl/RKvDBLGdwJj7o92xTvkjx86UrK2qA
	x/KaJoWp+xTw/jd2RAaNyAYO1gipFIEHDHJKZMRLzrJYH5wm+lk7bj0AUkRpU2q0
	vldngBdgKk3WuyLrTe+5MoyMKGnnk/JkMz2KbU43kP4rNw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma31dc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:35:52 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b31bea5896so44252251cf.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:35:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757896551; x=1758501351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D08sD4breznQvAIPhUVcgY9/ePdboBCRyWjrlln0Q8E=;
        b=Iop9Nbvj760LpIv6WcXnIEZexZ7Hp2imxwcaPtwmx/WER1ZinyV/LlANWGMwPXD/xp
         1u0em7kPcyn/X4OkplNALUrdA51UFxiblxM0CyR6eRJsGGVcuhs7PO7c1EkzE5UT4bIG
         CVON+9zN1yAKZnWkNEXxNI96Y0IW9//Crgcc2tqHlMeadPPlYPRgEWzRB62hxNBE3/gd
         usfmHRfNwQhWNcVPKG3RNwfalD8DhHHZH8gPkkf5wEr3EiyIDbHOVj8EbKKTBnU+agxa
         b3qD7QtWiXfhm9eqwaovtjX6Ma1+harOpyC4ePgt/57sNeyOiiutcavBBgU/T36zJYvL
         jktA==
X-Forwarded-Encrypted: i=1; AJvYcCU8nFELVAS0NnXulmrFGN/K3BTAcfeU5oWjaUCr3vPpAV59ViR63CaFwIRuUisLtkO1a/ZTl2UYcs4d@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw526O9V7xHiN5/E5lXZp7ZjFkL6AKa0K+cB4+RQ33Og3dqd+X
	racYOV18JdoPKIF3L6Wa22tELVxtndWkwOs+3b6CoTiW03BqiS4YbomENHzdeYSfT6YPl4uy+Mm
	TyIq5KlXd2xk6ncp3mKNVIZjex18EFl9oRy5UzzGFJsx820SyRfSsp+3xNo1AqTFW
X-Gm-Gg: ASbGnctEK9vkpU09dOyeZiOXXOw8GqAGN4TQDm1EZzii5C0LnOpWTiAbCciLD++iNpO
	7/B5//TiDjaYogNj/dIbmxrDPs2J36TU2Q4gj0Yi309eNfC7919A/Eo7xGoo/7FEeS610qGyyoR
	lyLdh+COjBdISMc92vAboPvbXMDrjFd7NhSrK+tj0vjH5eFcD3DcOKAmJ9bLumNtHqG0Y4Q48kC
	7CWIPfBwQ5Ucsu1UxqVtVF1ZOYOxqESWyFAGgHEe4uCsWeO6juamrJ60vESq/Gkudhn8luzbQnt
	Er7vkNX9k7SPpHO5T+RL1fWApbjjnV7iBFCMTKBxnQ5fIu1MMvuvcjwQqZun8akp9vEJBl57rf6
	FKj7nxpRcwGRphZViDhFk37VMpwty4TXkhGdNwU11TllcH+a6yXSI
X-Received: by 2002:a05:622a:15c6:b0:4b5:fc2a:f37c with SMTP id d75a77b69052e-4b77d0e25acmr108045011cf.74.1757896551530;
        Sun, 14 Sep 2025 17:35:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8SGKk0OcpL8EajdUw1gys0MsCLMCUQPEIfzZJKL+F8vFm0ZeB2KxlkNsxEqoPlkvAnY3b/g==
X-Received: by 2002:a05:622a:15c6:b0:4b5:fc2a:f37c with SMTP id d75a77b69052e-4b77d0e25acmr108044781cf.74.1757896551053;
        Sun, 14 Sep 2025 17:35:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1b491f4esm25403941fa.49.2025.09.14.17.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:35:50 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:35:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 10/11] arm64: dts: qcom: sdm845-lg-judyln: Sort and
 cleanup nodes
Message-ID: <gquntlik42knkhbe2lklc3pc2tnof2r5kszc72ugmguru2bwnc@t4mjswema7qc>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-10-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-10-23b4b7790dce@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX/q2JXTXSPdgm
 ei6llta/oChycYiFXhrzqlF/wOBGJRvTNxp+ztSK+Y+n6K18tZvW3cZTCZSpxalADBBGyMVZ85s
 nYA8GtG45gpAvRo1te+7Oc2HzYPQDaOSw7OsgYzInRxLDL3grXJM6dewXkwxgsKC0QZoDcbAoeW
 4fqGf7NwX8A0+o27r1oIxm3642P6Y1zS1NL0jlxrhsU6i5D39iI0cAi3xHc64kolcAFzFzUchn0
 zfHY2UNYrVnpNsMyOLuz2jeNnGGEnmEyvW6YCkUK4pLnzH1/2VOGKgsN45JuOypwGt8nya2Tiqb
 wMnTvxhStsR/fd3no/aOmWuZycYOYYAGFsy4csu/eBPfeqOA8UwFa6DRF4M5bYjQlB61C257+kV
 jq2nzZey
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c75f68 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=ijzItukGkLEnUYRUYaEA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: 2KIpfl5GiZiGRpD3CUZQsTMxL-a2llrN
X-Proofpoint-GUID: 2KIpfl5GiZiGRpD3CUZQsTMxL-a2llrN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On Sat, Sep 13, 2025 at 04:56:43PM -0700, Paul Sajna wrote:
> Fix style issues and sort alphabetically

Please perform cleanups before actual changes. In this case, however, I
think this patch should be folded into the MDSS patch, making the nodes
sorted from the beginning.

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index 467aa0fd0ef3938e4a8c08b2240d4dca2f74dbcd..493b8554ad8ef083d836a6664435010ea915f2e8 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -75,15 +75,6 @@ &ipa {
>  	firmware-name = "qcom/sdm845/judyln/ipa_fws.mbn";
>  };
>  
> -&mss_pil {
> -	firmware-name = "qcom/sdm845/judyln/mba.mbn", "qcom/sdm845/judyln/modem.mbn";
> -};
> -
> -&pmi8998_charger {
> -	status = "okay";
> -	monitored-battery = <&battery>;
> -};
> -
>  &ibb {
>  	regulator-min-microvolt = <4600000>;
>  	regulator-max-microvolt = <6000000>;
> @@ -144,6 +135,16 @@ &mdss_dsi0_out {
>  	data-lanes = <0 1 2 3>;
>  };
>  
> +&mss_pil {
> +	firmware-name = "qcom/sdm845/judyln/mba.mbn", "qcom/sdm845/judyln/modem.mbn";
> +};
> +
> +&pmi8998_charger {
> +	monitored-battery = <&battery>;
> +
> +	status = "okay";
> +};
> +
>  &pmi8998_wled {
>  	status = "okay";
>  };
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

