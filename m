Return-Path: <devicetree+bounces-221356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C48B9ED97
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B1CB1B233C2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EED82F5463;
	Thu, 25 Sep 2025 11:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UaHLNbYI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AB31D63D3
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758798124; cv=none; b=b68++34PMxusoO0M5strYG0lQejb89zOTbVWxNvKD4nkw/9Tk1M8Y4Q8r7S2VjuY7epIliFvHkR+qMiiQO6/Cv/9GrCCP6B5fiaIYUDgqR0yhD6DwB2KmyEAv7Z1nw9XmRYuucvmr8JSkcv1U7xEiu/KzbmLYCqgu+dctce3IOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758798124; c=relaxed/simple;
	bh=lyqvYkaj60Ar7s+jyDByOfyVX7oJIz27/Tgp2lKRwyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C5C+WVkWweJnAf3l8DCKSU+AxrXlACXiVRbaTIQUYVQjmzrvKGYDEZ8C9rD2krYvsoc+//vDmoHIL+kOAO3JSROvG3xqBcNeySt4sjS8eu3lPJKP0Fejc3H1iSLt20fzfC2Ei2QD8xlPL1jjAydImxWulMvUa7Pin0RqnkZfPwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UaHLNbYI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4a9wJ026667
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:02:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uoboDRGVeObKR91G3EO3aEnY8YgnQu8Hx+ipZZBWW9I=; b=UaHLNbYIpjYG/4wn
	quPNAWqtEhVSvsEzGl1GkBOBf6skkFbgERjI7EXKST7okCHpgHtWkNHO+7h8JeGl
	UjG1qAsUIKa0AYHzX3JVeW9Yi4H1YnB00WbyN80qMmn5Q9TnwBOUl2XgjpZRdoGj
	8kLDX8QJLE+sjRFYydm9yr3492/Z/k2hu4GvMFuJ/4i/do3MEA1pFSBbZiYkhb+x
	9or1Vtp1PNpMiQy8TgqJcrAjpXMi3lAzTk98FdooinCUn78/PfR9jFD12Hs1HU4C
	VX6BNedjwID2pk02u7Ds3vjUnLyMsqKQATKIfJ6RGy1ilVmiDB5+Bez/NKOPNi4m
	vYBZQQ==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup11wr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:02:02 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-59e0dcfb47aso15282137.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758798121; x=1759402921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uoboDRGVeObKR91G3EO3aEnY8YgnQu8Hx+ipZZBWW9I=;
        b=Urg3hL9t5pCwShkIQfKdnIqKZ2rzh9mh+1FyI8wTDdYL26nPQDVuMo4qNpheX5HdAb
         9ei46ms5GgBqwJEPNLI1DFAf50VjdLc87CGzhB3PlVqFVvyYXmp1lWN+/woKNDyS+ZAv
         eIo6PWJMa3R/CQeHFbGrn0i7vx43K65ivapthcXZmIn0a9+3kBLvAgPSPMC1/AY8NfUm
         Mqt24cMdZE3H2w2mYfOOSmVYrNNI7ex0tquW2/LU90eTCKJUtYBge6P6hMVWQSP8vPmI
         LeiRucLbsGh7kCfq6Nu8uLUek3PXV3F8s2kViJ4oDBtLyBWIGXoRLIJ3gmpNV7mTsH5b
         +iFg==
X-Forwarded-Encrypted: i=1; AJvYcCUAy2Kouak3iLOcB2L4dkPM9hw/HElAsX7Z8wId8Ym8Y6fDXipLXTidmEJ7v/0xgRNMhfYox4pBNe3t@vger.kernel.org
X-Gm-Message-State: AOJu0YysrKU2SoQBIfgdbena2p37Hp/h4qfq/60dzAbudA6JinBy711P
	enbbjtl6V9hrSSY11fqOBICyR21klKEOoSVrXSFne9xxb9cVEOtYmrpJ2Dn/vtbYmzLK36r+sRy
	c148jOiqS5hxEF/qwfCr0H2gXHjeBBU4rgazd28pe+1Dpj1aUVX6foAOwsw87Rds2
X-Gm-Gg: ASbGnctLCF8yOb0rWenGb5Elk3t36dL8KlAxdH0KCjuIcI6DV1U7EPHZyuq9/5eRlHK
	3ZJTGMM2PAyb2p8yYronAbMQncslMdvBWoRf8xX6HeQJdw9VJN6aiVxD2+0xo1Xxt1HaZnsSU40
	VX5cebtkFHujiwnuOwYQow0+85fYNo02ZND6mC3PR38BmGUEdrTEPrpgdbGKKgnh9lQ/nVg6/FA
	ceJ9aimakK28+oL8HlfsJSNOHjFTKhNf5MhpC2/TdFgnNMa5yvMpRELbxn9xn22PxXknA/l8ywc
	fHrMo0dlusvM9jQm3H7BuOoeEctqUezF6o4DekYRlEd/dGfrEUBs+LzVpheZfa+6McgY/iY7cOu
	80KXv8JaoC2JFDV23GYY5Bg==
X-Received: by 2002:a05:6122:5206:b0:544:6d56:eef1 with SMTP id 71dfb90a1353d-54bea256d02mr371012e0c.2.1758798120540;
        Thu, 25 Sep 2025 04:02:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUnV9/bgYJlti2LIjsmZdaGX4KyPswd967D0dRbVBEJzWZibflvSmHCF+zSid3IwWgYek4Lg==
X-Received: by 2002:a05:6122:5206:b0:544:6d56:eef1 with SMTP id 71dfb90a1353d-54bea256d02mr370965e0c.2.1758798119699;
        Thu, 25 Sep 2025 04:01:59 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2ab31bdesm70750585e9.11.2025.09.25.04.01.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:01:58 -0700 (PDT)
Message-ID: <a49f3f75-c882-4635-9be3-a433b7fe32c8@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:01:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/24] arm64: dts: qcom: glymur-crd: Add RPMH regulator
 rails
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d5212a cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mWQtOVyK00dPacU1zP8A:9
 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfXweQExKtH7GWI
 C6tyunogMLd6kosTDudK0hZKUsVmjzkdNNKPJeslrl7zfjVPHMXkt07iQMbnRPDiLDhNmp3WE+R
 vDWUnTBcTwXJD5pY5ahYJ+QL0zZZQo8V2O3C26sGoAal0+ldnzmdbLjFxmhFYH2tMN6ESBlzvGy
 J1ULh0dJTj8A+NsCifxTdqGY1N4EGV9eNKLEYVf7zV6IDzwUNj0Pzg63A8NhnDvPQL/I1zIRvVv
 dNvAI/ZmoNaTV8KraCcfS5nc5Rkwks/94CDEdWzh32UzGBBghMadc0ISpnDqWPmg3ixHSuN6CnZ
 uXpTObu/PmXIIz96LrUYutbrpEDLb6M0pIhlOdhauzqcKVEJporTrLbapP29Z17ZV7aAFiaEZLj
 CAHYBS0B
X-Proofpoint-GUID: rAH5w_SASGYQcyOkCQ5fK3OeZ5fQaqaY
X-Proofpoint-ORIG-GUID: rAH5w_SASGYQcyOkCQ5fK3OeZ5fQaqaY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> 
> Add RPMH regulator rails for Glymur CRD.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +	regulators-1 {
> +		compatible = "qcom,pmcx0102-rpmh-regulators";
> +		qcom,pmic-id = "C_E0";
> +		vdd-s1-supply = <&vph_pwr>;
> +		vdd-s8-supply = <&vph_pwr>;
> +
> +		vreg_s1c_e0_0p3: smps1 {
> +			regulator-name = "vreg_s1c_e0_0p3";
> +			regulator-min-microvolt = <300000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s8c_e0_0p3: smps8 {
> +			regulator-name = "vreg_s8c_e0_0p3";
> +			regulator-min-microvolt = <300000>;
> +			regulator-max-microvolt = <1200000>

Both of these regulators, having no consumers, will be parked to 0.3 V
(the lower bound)

There are other similar cases in this patch

Does the board still boot with all the expected functionality with only
patches 1-9 applied?

Konrad

