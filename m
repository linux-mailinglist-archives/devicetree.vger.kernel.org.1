Return-Path: <devicetree+bounces-242662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAB9C8DAEA
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:05:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFDC23AE609
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 862CF312828;
	Thu, 27 Nov 2025 10:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jdh/yTRu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y7zy2WRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D922FC875
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764237912; cv=none; b=FtV7Cr2S/+WEsFBmNMkuOi2hxhQoamPsM9aAt1KGe5+QYN7Hgh6ExgfEnnPEVz3x5lCmObBEtEvq6gFFaYbOi3ZWYD8UQjXYjXk/OYsMdifJKeybKyx5og9euPk4eYUcTJk6Okgaxl5Kgvj97LLYr0W8V5JL3vR4jPvni+DUNZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764237912; c=relaxed/simple;
	bh=vUPmy5EEngDbC3PYabfI774l3pnwFQW2JxztAnGOBb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ILy2L+s++FDfFqezgomxdGM7zVDhi/O8jEasSaX70YM4Qr8/h7OIrJqTW8sfRH0pJFHUCtNqQXVhqUrGfSBy/QzX22A/N1k7+idG1Y2BYl6JoOnMRwQqohO6XNnLIhmg/B+LOVkvKsVI0M4FKxRbiY4+r/53U5RSPZ7molyN3rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jdh/yTRu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y7zy2WRP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR9CiAQ1849220
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:05:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zS3VWKxPQ7K4FUOwLSLQ/xdq
	9JxHNa/CvuMbT15j0M0=; b=Jdh/yTRuhXxiuLtouqXIldaimypKHTsuIgYAt39E
	qDnVKCmMO2vJWhCxGik+VR7qaMp3pAmEW1zv5ohnRh8WX4kvPom2axopZThaz+Fr
	Ypgk/aOtJfwvDbJ+YUe8czyMXy/pZeZWgpVnXjM4uDgmZzG9cVcnfYNHCKRDDhJT
	Ck9eXDSC3jEL0gWjH5HeL+XQ5HGznfQ66KM3QYtU1XsuUdJx583VJ7QmEARJbPcz
	FpmBxQl7pC7jYojxPTm7/2C3UeQ9x+T2KkZAyf1jFhlaSXnpnhBSDllOsE8hiqH/
	CxdI93uStO4/oyJ81zdtTVQjROMOMv+wcC6PvHfYH1+AFQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap0msucbf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:05:10 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b609c0f6522so1215969a12.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764237909; x=1764842709; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zS3VWKxPQ7K4FUOwLSLQ/xdq9JxHNa/CvuMbT15j0M0=;
        b=Y7zy2WRPQGFc98VkmWycCcHi3ve7E/+Ogp2Z08Sz9ZAqw+XGKDJeCKMtpid8BZucYd
         WZZAjRAS7TFZgWJpsyElNZUGUH9sHEzw1tHEbI4j8oCvuovXvnHjEL2OiPXNGFXhds7r
         PWTMXqgqCplIitF/9CGmtBqkzjgcOnNlibHzAq/4eSRFaoEF/HtqTBwLcds75S36zVgS
         s5+cDvIWmiNmgjSZ3FNPzRMdr53LEtSbEbIMr6tgxOsyiMmUzpjjqamNttq3POupiUOl
         PRTjwmo8LNH8234dcp6vi65lu2eq3iGOAScSG3wPrWL5ji65MbGpNHTgkRE60av6YjFF
         amzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764237909; x=1764842709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zS3VWKxPQ7K4FUOwLSLQ/xdq9JxHNa/CvuMbT15j0M0=;
        b=vXTuony8d35SDelVmPnLAWkpN9N0u3A1GRebnUZgwmn7Kh15UJJtvDQKarZBD4J5jC
         gO5nlaaUulKT7pI9fRlbWAPGi8/aALIxChUtvRoOGkYG3AECy7kqNndHA7fca2+fiYY6
         cHUhLGo6+Z5H7iYj2FNnFgYD7Yi7Pg4bPgon+X1igiE6pcMN3yozv4y+49Z6GW+NJRrD
         hWHFmjPq9LSVD/0ZdkSxV29TODJB5+qI2H0F/Gg82T+G8EFH6o1hNb/NviRmobh2CMRX
         UUdJ4FdMSjoFOGc4f1vINZO5DA+wVhXeBGfEXp8XcWM8dSNZG9boFiGiOwj9GDA5S3oN
         oPYA==
X-Forwarded-Encrypted: i=1; AJvYcCVYP17XDIaxzDf5rQK2wRd+xUbbxM/0QehrsQKePy9suceTSgdQFrI0YiEc5LyXVD6oUugGU5SBwef4@vger.kernel.org
X-Gm-Message-State: AOJu0Yym5fIw14FV+0+tlp3FtH3vuMUqWt8oi0eFZyAqz9He++0i25f3
	PKN66Sab8HjlKo3E81CSBKaL7kybQ+Lfar/yK9ni0qiPg2jVIES4XvW91Koe6falQjzhI75imSv
	tAFvcjEpumJoqMB/0zsqP6iMZTbzWV5r/70c7KDUHMy/j+6xIM/qS1pimTZuhrhkl
X-Gm-Gg: ASbGncsJr59C9u7UmXsuwZ7JMgkk325yvwMEEeyZXW6qiLuPpC7IkvYDdNnTUE37KaI
	lHMBUGDlweLvPvb8xBZVkredt6dwWCwGAiBri8/zrjTcNTjp0BCsq78cDFKRbLIM2FHd1stx0Yi
	PHphUQC2yyaiPeP9Hy5Y5UuqW4ZR36+hRgMDB30DYfwSRKlg2BY/nNwXpHoMLIkRTPGMXlWt+FA
	DRRQUUf9+wmhK/7TnT6k7pIfi10VpoUEXO8IitZtTQK+BC2yi0Rv2ROHnMYZQz3dNE/2VI72k/m
	UDFu3NSd7luIK/MN1bkyqHUlSbT0WwnBTtuHcVyUtuCB9dxagNxPgHPGyNBapC1mNmWWFgttBzl
	oOC0KUkiHJakY+Bery94ER69AdGykJq0vXYEnZ9+Ly019b+21yHY5ri9E
X-Received: by 2002:a05:7022:2528:b0:119:e569:f629 with SMTP id a92af1059eb24-11c9d85fefemr18875631c88.34.1764237909261;
        Thu, 27 Nov 2025 02:05:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHC1sofe7oy0gDUCDczL88n811ZI3qfWuxmaq7+67gSKa6WnRahxRJjGfKMuG9dK98z6UDMlg==
X-Received: by 2002:a05:7022:2528:b0:119:e569:f629 with SMTP id a92af1059eb24-11c9d85fefemr18875606c88.34.1764237908686;
        Thu, 27 Nov 2025 02:05:08 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcaed5f6bsm5683210c88.1.2025.11.27.02.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 02:05:08 -0800 (PST)
Date: Thu, 27 Nov 2025 02:05:06 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v4 0/5] Add PCIe support for Kaanapali
Message-ID: <aSgiUju4XPrYwuY3@hu-qianyu-lv.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
X-Proofpoint-GUID: i_YDjT_FSfwMZcpFnzQFAhoSJC_3QouP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3MyBTYWx0ZWRfX5KrHDic41tdh
 a74TQ0JhmsuU1HL8xoNNqpmdO7e3SUZSMTv4D6yaQaOtOsTlFxdeR72Uq1zkr+1eKewFc2CwxNK
 Wx+YKanILCdTg1mh5Ygxr654jrb4yw6VwULuvrup9WPemd/7XXkI2XjCnfFT2B4rABNLd1e7mas
 VtZCBpMPbNDpDVrddra/X1ZKErQtUe3Qmm/rf43uzPyOEgNsyakO+JXhdbDMW5H3JAnDYxWB6cs
 eVsFCvxdMSF2T9wxIXPhFUXUPKl9/7+uyDfd7PAHegQ0KuXNJ3pUU6Op6mALjnZzZxyXRVAwN7w
 gGuI09glvP+8WNiNzfMZpCWM0v63GwH/dzOZTl6IJ2GAOn4BpUGeN76PJZTB9HLBOW6wYQK4qlQ
 pnlzGm6BnGuaz5OqsOVJhXPMtDOlBA==
X-Authority-Analysis: v=2.4 cv=N5Qk1m9B c=1 sm=1 tr=0 ts=69282256 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=UtkNu69STNc0K4BKN_0A:9 a=CjuIK1q_8ugA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: i_YDjT_FSfwMZcpFnzQFAhoSJC_3QouP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270073

On Mon, Nov 24, 2025 at 02:24:33AM -0800, Qiang Yu wrote:
> Describe PCIe PHY. Also add required system resources like regulators,
> clocks and registers configuration for PCIe PHY.
>

Hi Vinod,

Could you please have a look at this patch series. I have rebased it to
latest linux-phy next branch.

- Qiang Yu
> Changes in v4:
> - Rebase on latest linux-phy next branch
> - Add reviewed-by tag
> - Link to v3: https://lore.kernel.org/all/20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com/
> 
> Changes in v3:
> - Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> - Add reviewed-by tag
> - Remove [PATCH v2 1/6] since it was applied
> - Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/
> 
> Changes in v2:
> - Rewrite commit msg for PATCH[3/6]
> - Keep keep pcs-pcie reigster definitions sorted.
> - Add Reviewed-by tag.
> - Keep qmp_pcie_of_match_table sorted.
> - Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
> Qiang Yu (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
>       phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
>       phy: qcom-qmp: pcs-pcie: Add v8 register offsets
>       phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
>       phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
>  5 files changed, 313 insertions(+)
> ---
> base-commit: 3b64ea4768e7e64b2d9ae5833dbcac19f6212145
> change-id: 20251124-kaanapali-pcie-phy-31968b2b2916
> 
> Best regards,
> -- 
> Qiang Yu <qiang.yu@oss.qualcomm.com>
> 

