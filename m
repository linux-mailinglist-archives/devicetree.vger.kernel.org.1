Return-Path: <devicetree+bounces-223591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 105F6BB83BF
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5E214E4972
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 382BB27055D;
	Fri,  3 Oct 2025 21:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FKp1wcWj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD88B26E71D
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528166; cv=none; b=HTMBH718cEDQudYNxwwYEF55fjmeYHlWneM58t40P7CIfzQTTv6X1ZBVW2LRdlvv6L6zDB5ubPEDS1EofaoR2OldjrMBSKj9rj8tfeopPNOBYKLvgL3jAEXSLuIusZIzGc3c0+90IPCEVepjv3shQjw+hKLp2uVoJyNqANh3Ndc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528166; c=relaxed/simple;
	bh=A/f+DLzpbgnkUkV/C1kd0kS9KdLCf8R82uaOHH/AiWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fLUYrAsWqxmff0eCIP1RE6LrBEmFuNvWQvpfIPSGOPZq+dMvKJhCOIfwHENcThE+/dKn7At6XO+hmKOEcxtdwkLfW08rNcuXHerUjnX9RzH8Wnb31nF7ygIwtpA23PJE+f3zmELyu7QNKNpc3cn6OqENN5/uMHkZd/5V36Jd9sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FKp1wcWj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593AJX59012845
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:49:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XAOFnLM9b1JHUcjOkh6stGs6
	1EHxCRmkb+sraxhnzik=; b=FKp1wcWjXLhw6UaLx5luXnYedDPCxms9CStmb8li
	+FuE9LnzDpG12vj8TdkTzgLS2PkepIPY27c5jmpvaDDXYdb5sK9g24em/cRPyj7f
	maZSJ2qUhjMbrLxZjmSK11lKPF4fb4hdfpusJ2yRGDy6dWYTkzBFJrkAuJpIblb+
	3iaolSdouQ2LrQYVH/08IURZLW4XS+amHAcreGfdmols2U+hwhu2Y/znYasoCvVq
	1pq1MbxjL3xlmZwzAVgyNPhxB+cgJ6ky27m52pWx1nV13zyNb12DIzxU0DssGJFz
	X9hFnUZ+arjTSdtcHYkF2VQeoBm2YV97pQyI8Bh5wKliug==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80u476r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:49:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df7cdf22cbso97653661cf.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:49:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759528162; x=1760132962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAOFnLM9b1JHUcjOkh6stGs61EHxCRmkb+sraxhnzik=;
        b=P+7LN0UNF0No4HWv4DsBYvVzw8Ve2/5kXTMKz1N7nfnreRILBAD12tfnigEnWvWX+J
         wISQX0aFs3L2R78Wt7RsJMTZY4tjf6GnAiiv7EAcVmE+2lhpJg9lzf4XX+eaz2F76DHv
         BqMhWb6FlpSM22ia9o7Bz8aL6b8o0/jqkK9CZ2Pj2tkGGnNZwAbjraF2mVqueGbmhObe
         edGIptNVXB/72fYefEL0dgY0hejs65iWkeNlOrDWCEC9ixQ92f0to+pNO2wd2xNt2Nqi
         hIg3kB0pyAJr1mmkH5TUBwLsCUsywxDayk9DBs7mi/BbYZrRTSCMSV42eCSkVKDkL0is
         03xw==
X-Forwarded-Encrypted: i=1; AJvYcCUBq8t7KEc7BpTWbD9Tw4OpPEtag2s5gs8lnwt/MEIbvpccRlVFKZTJT2J5s5r3fIonKeHzCHuuM1VK@vger.kernel.org
X-Gm-Message-State: AOJu0YxRkggJHO7N3EVKaekfutK+GurtfJq7cvS8lSJJCwvoH/8nwygv
	jxiZ+Mh2J85WoN5i4Q//d0JXWIvq4lIxRDCwNULcKS4ZIpqBtGgU/5NrjTWe//uDRNaocf8LPTA
	dOFTBF3d9sH6k/nKIhXT5WSt9Sg/bNprE9/+7HKYSEN6SLwHD4iLsq7gesJdlzKs5BKzx7B2Y
X-Gm-Gg: ASbGnculYPRVaNQoHK3YdrlAsmk1c1SjBtJ2Yu49MEsGElh/IO22rutVjMrW8J7XC0F
	qe0cY5IjiWmaWNqYT2vBJrOfTxoYlD9966E08qdymIvPNYNUc5NxNqV6Q2tATIX6UQ8g84DwM0s
	OVaozdwwg03cJz8OXmqnV4nEChVJUKMrwg9n1GtTX0RXasHAKBslOlC/rlQYb4upvkS0uTuBcpV
	fCA7x3vrO557AoOz2BE79S3ZBdhuXY/OQyEbaoTU/OOiMYXNjNgu0IRZeXpcq8VZy0MAF/V/wA0
	oTgpzHbhvg+iRfX5PhpFMbYqylv0+nTbEK6opHfxH14kSi9agcBy3ANIRJc7iaV7QLt8Q/dd/UR
	/RWM6vK9Z9dyQJ69XqSC+qci8Boyzk/lfBOkCTNu7DtBELcLWqIOAxfYScw==
X-Received: by 2002:a05:622a:40b:b0:4e5:6e0c:d214 with SMTP id d75a77b69052e-4e56e0cd7c7mr98158191cf.3.1759528162204;
        Fri, 03 Oct 2025 14:49:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2gWwma9id+UA8T3lgXIHkN0ALwpvBBmEnGVLlo43J/2+suORG9AN6jJLAOp/iHdUYPalYdA==
X-Received: by 2002:a05:622a:40b:b0:4e5:6e0c:d214 with SMTP id d75a77b69052e-4e56e0cd7c7mr98157801cf.3.1759528161574;
        Fri, 03 Oct 2025 14:49:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0119ece7sm2143792e87.103.2025.10.03.14.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:49:19 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:49:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 06/11] arm64: dts: qcom: sdm845-lg-judyln: Add
 firmware nodes, change path
Message-ID: <5xsdio5efpcpwpqek6e7tdk5kdr2f3xogne2iyhdl5ra2aqamu@icnfajxxnlq5>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-6-b14cf9e9a928@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928-judyln-dts-v3-6-b14cf9e9a928@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfXwKhqywhl1CbV
 dg0xErYg7mt8xGP2QC8Tc5xDw5SI2QvYTBUXch9bqTVdd2CCKK3KCWo2kNf5L/GlxQgdYWiTlC9
 /YCwj2p4bHRyiDibNYVA9Thoffe+t6o3zxnTOEOPIwyEyRp/T5uD8Re3bxLn/AEjtjyCb/UZpzq
 0RY/GOh7tilMdu1ZeE9o/jaIaw/0OHPRVqzFOGHjzuVp0pR0hEchpwmHLefRLylAY0ECC09McBE
 BKWfiySvnGXGlecICM5VEyF4tLSrIY07UqTGZRCTFBDoQlETeKhDHJbjxnntLnwwfLZauTXn2SL
 Igeid6mi8d7xXt2lw1x/h2RdJIT5iVym5w8mxRn1s3MAelzt3VqgAsGeKvjrnR6mcYsEeEENaM7
 L/umXp8ASrnoBmBA6OYu4/ja888XNw==
X-Proofpoint-GUID: hDKyhNljGIcuG3q8-OoJdSpEStGmOnT2
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68e044e3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=fxdwwflXBt89RVFT8wIA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: hDKyhNljGIcuG3q8-OoJdSpEStGmOnT2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

On Sun, Sep 28, 2025 at 10:05:29PM -0700, Paul Sajna wrote:
> Add paths for Qualcomm firmware, including:
> ipa, modem, bluetooth, venus, gpu
> 
> Enable adsp and cdsp nodes since their firmware is present
> 
> GPU and bluetooth are confirmed working, others may need more
> testing/fixes
> 
> But regardless they will need the firmware paths specified here
> and firmware added upstream before they will work, so might as well
> get started on it now.
> 
> Paths changed to qcom/sdm845/lg/judyln
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 10 ++++++++++
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  | 26 +++++++++++++++++---------
>  2 files changed, 27 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index aa338612433f9ac3b07363b79d8a3b8e0eedd98b..0f0a3f471f48e26cc48feb1551093599fcb35d7f 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -173,6 +173,10 @@ &adsp_pas {
>  	status = "okay";
>  };
>  
> +&cdsp_pas {
> +	status = "okay";
> +};

Please move it down. Also please check the order of other nodes in the
patch.

> +
> @@ -137,9 +141,13 @@ sde_te_sleep: sde-te-sleep-state {
>  };
>  
>  &bluetooth {
> -		/*
> -		 * This path is relative to the qca/
> -		 * subdir under lib/firmware.
> -		 */
> -		firmware-name = "judyln/crnv21.bin";
> +/*
> + * This path is relative to the qca/
> + * subdir under lib/firmware.
> + */

What happened? this should be a part of the earlier patch.

> +	firmware-name = "judyln/crnv21.bin";
> +};
> +
> +&venus {
> +	firmware-name = "qcom/sdm845/lg/judyln/venus.mbn";
>  };
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

