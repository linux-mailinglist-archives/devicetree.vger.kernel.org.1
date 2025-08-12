Return-Path: <devicetree+bounces-203857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77826B22AF0
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 726683A81C8
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 14:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325062EBBA8;
	Tue, 12 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n0ZjKE3u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9782E88B6
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755009593; cv=none; b=NUwnp+KB2iNN+0LBv0LfyoUm2BqNBT8qKXcNB5bDhgF3IvJNaoQfU00n8EW1n4pFOx4v+qmvwNgrQX+i/ujeBD9hZddKlHclXTpOCsjmsMIET1C0N7+9LkVV5x3s7O33Wz2cqSJYcPRXNd7mwMXR41iCJJXC7zf5FBEIFS8UXNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755009593; c=relaxed/simple;
	bh=XAfeo4GsE9hEqqUj30tqUKIarmQoDLaJCnklRZZJwBM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ug4wSNdA94HfNCWeYjqYw5kNiZMTzdW/uuOvNd88vHUOS0cS8G2arCKEMFLhegciWOc3zYjF2/CKuI1krIdVJAfKWHA9Eis0R09jHlQVpgLYfHllBVNvRWR1gvBT7H7rqYpY6ijT2IjJgmB9MayEj/+EjkoGVvyhBL28/EKCd9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n0ZjKE3u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAw31E006232
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:39:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FcQDffu4Ht2nuqPS+dRUtr1j
	1wHDse8GaW+NYRE0/Mg=; b=n0ZjKE3uLUrCRAWLRPJif+yS2oOt0CKzTi1jI+kO
	Y6J7dUfIHpcXn6G9J705yaGSNjSlPXSyXgGUWoWq/G5prsFHQlF+PM5Nri9NyG6a
	HFMvIl0bcw+tKFACEUqREhzMAKCcYDmGFh6gloRu5ccCywWxDFCiv1fsGIAq76Pk
	biWNsEetREwePadKtwP/+OIi7B4IB+2WtlsoIgm1R5o6RvIdR2qO9Ri54Asyk7HE
	5rxp8mMsioLJlRA46gvGBwdYnK+RnFRVpO8K8UsQpNevrrXtHNdWpAnjiPG1sEeE
	1XwJvQJ+B2FF+W9wmnUj+QlPssYsogA8D8PdmMqcv8kQTw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffhjma37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:39:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7074f138855so100741126d6.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 07:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755009590; x=1755614390;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FcQDffu4Ht2nuqPS+dRUtr1j1wHDse8GaW+NYRE0/Mg=;
        b=WF0Ap+GDdYro+RlSo/QkCMA3OCUFXpr5KjcA8c7p+m83Awk0tauW/rZFCgrbHIOCj5
         2Xy0eHyrps1UZv679HFniXqy7HwgETAJAcXyVChzFyRMBZNRH+7ihS1WL0kHjr62xrgv
         TK26VzMYpIozRaOYlkIOblvAKHqPTfFZpI3Ttnb0L48YRaARVicmuFMcAIsfNeppn9mX
         32KUZVcNl36tX/zmwI2kXFn/dfRuV9bpXCnCxXeodCt7EI3cSPWQWJnWcgyLD4YxfxoR
         0WjjMcNsKiaq6r6Ty3uRylRcDEfZ1wdpEmVoAKrU537cEHW7lRVPPM2a2u8620jXZa1d
         MsdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd4ct5XzsoJzI5ruE9uxZDDwJq2NQw13VulwWjwjei+NTqqAsEnvDzorIpwDyRuwhgaav1Ui7Q61+9@vger.kernel.org
X-Gm-Message-State: AOJu0YyQiF8TBzn7Of9wHrO8Ws7NoA2G7pIhGhK8+4St9mOrgK7nZ2MI
	VXa+e/7qVW0JDX///jYYqV5WA1viiG4Q6lJYgKJ2EMV1KqgSnHuG9FP8JJs54BmE224+DdjjiM8
	De7byiVy4iGINlf2ypEVwIFtnvLK52u6s7IEPFcVq+c3KT3ngYfnp6JfcBFevue/Q
X-Gm-Gg: ASbGncvugeJk7uAKUX1ZDM42TNetNYufUTZX46i2STJ7wa7uXY0F4GZEdLdFhZ/fqAL
	x0yp1J8XV39tAiadf+qfnUohsWgeYxxp0R+X6GuNuaVZKrGQuvQOPxzCj0nhiPMskBdWZC5uhr7
	zyca0KgW3db2kpGKy2wz7XI/tMNBCYh5nPe2IsHW+ue6WOYiYNHKU7WooFFkqhfOoGij0KQE1mw
	AajtHz0RpLQ7kwWUsQpjfvhLVdkj0UKEcfHrBLD8xXtfEkmOxTeDq7zsa9w4Bntuwb3xCK5j55N
	caLzTbLEPAr51i/MXMGTIREE7FyVDpj7LlGaOGyDugcTZ3ZsaRkl0iwPHsXqsxjS3GhNfItU2Hr
	l3LIxE++QhLR1qm6tEghVHD8NWu1LBK4By3etWqP5RECCOrE4Cej+
X-Received: by 2002:a05:6214:8088:b0:709:de23:aacf with SMTP id 6a1803df08f44-709de23b248mr33124126d6.23.1755009589695;
        Tue, 12 Aug 2025 07:39:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQ02jwb1BJdJ0GEtq//bbH7kZ/MwabFp5DoHxh2z8a42uKVXly5Dax1fZrPydgEB7NcAq1Iw==
X-Received: by 2002:a05:6214:8088:b0:709:de23:aacf with SMTP id 6a1803df08f44-709de23b248mr33123586d6.23.1755009589227;
        Tue, 12 Aug 2025 07:39:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cce15c650sm1434362e87.103.2025.08.12.07.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 07:39:48 -0700 (PDT)
Date: Tue, 12 Aug 2025 17:39:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v2 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
Message-ID: <2ok6o4e5pz4ichhchycqkns2afzce5y6ppjr2av4yz3wc3iatk@m3cdck7csavt>
References: <20250806-b4-sm8750-iris-dts-v2-0-2ce197525eed@linaro.org>
 <20250806-b4-sm8750-iris-dts-v2-1-2ce197525eed@linaro.org>
 <e414163e-e171-466f-965d-afb9203d32fa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e414163e-e171-466f-965d-afb9203d32fa@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NCBTYWx0ZWRfX7Yyt99Vj9ohG
 XlUK1mkEBjuUyKe7Aw3PVBDGJWCMpMCboim2L7W/NG7BGL/Nvq8a58lkWo/l3y1RXJl24L+a1gU
 zNUv0wrTtpBdm3klWTw6lBntcFJYmQeSvdcy26isdVn18JbXIB8ir3g3ecJxqBddTPSl5cZB/3c
 wrTPGZjgTtvgCZI5ZSMUqHCKZhitJqXoOTBNmPy+pKko4aCy/N8xkW8JDNZXCgIg9EqZXh7jgWS
 XELPFxnD5/SqoOVWpjuwkR0RXBMO1Po1zvxc2728v+P0gPfDSeHQuuGeUAkFEc6KFmrlRtiNjxt
 KCwrTgCCkbbt7ab8U2yvL64vqXqRuibTONuoJMQbJbAnCi2GQy/Q/vAYzG0AM01+ogT3dpFTtEt
 a+TKO+/C
X-Proofpoint-GUID: c7pcGXs2UKza6Ff0NoAYSeIDaYsk2pdG
X-Authority-Analysis: v=2.4 cv=TJFFS0la c=1 sm=1 tr=0 ts=689b5236 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=NaKNMKGzfxSzMjQQXCEA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: c7pcGXs2UKza6Ff0NoAYSeIDaYsk2pdG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110074

On Tue, Aug 12, 2025 at 04:21:12PM +0200, Konrad Dybcio wrote:
> On 8/6/25 2:38 PM, Krzysztof Kozlowski wrote:
> > Add Iris video codec to SM8750 SoC, which comes with significantly
> > different powering up sequence than previous SM8650, thus different
> > clocks and resets.  For consistency keep existing clock and clock-names
> > naming, so the list shares common part.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > ---
> 
> [...]
> 
> > +			iris_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				opp-240000000 {
> > +					opp-hz = /bits/ 64 <240000000>;
> > +					required-opps = <&rpmhpd_opp_low_svs_d1>,
> > +							<&rpmhpd_opp_low_svs_d1>;
> > +				};
> > +
> > +				opp-338000000 {
> > +					opp-hz = /bits/ 64 <338000000>;
> > +					required-opps = <&rpmhpd_opp_low_svs>,
> > +							<&rpmhpd_opp_low_svs>;
> > +				};
> > +
> > +				opp-420000000 {
> > +					opp-hz = /bits/ 64 <420000000>;
> > +					required-opps = <&rpmhpd_opp_svs>,
> > +							<&rpmhpd_opp_svs>;
> > +				};
> > +
> > +				opp-444000000 {
> > +					opp-hz = /bits/ 64 <444000000>;
> > +					required-opps = <&rpmhpd_opp_svs_l1>,
> > +							<&rpmhpd_opp_svs_l1>;
> > +				};
> > +
> > +				opp-533333334 {
> > +					opp-hz = /bits/ 64 <533333334>;
> > +					required-opps = <&rpmhpd_opp_nom>,
> > +							<&rpmhpd_opp_nom>;
> > +				};
> 
> There's an additional OPP: 570 MHz @ NOM_L1
> 
> +Dmitry, Vikash, please make sure you're OK with the iommu entries

We still don't have a way to describe it other way at this point.

> 
> the other properties look OK
> 
> Konrad

-- 
With best wishes
Dmitry

