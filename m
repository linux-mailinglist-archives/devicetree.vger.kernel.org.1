Return-Path: <devicetree+bounces-208022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 896BFB315B4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38806A28078
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FDDC2F60B3;
	Fri, 22 Aug 2025 10:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kcBeHyNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D70F2F616B
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755859498; cv=none; b=Sm43ShPNDMHrSHpKqkSteQ8a9Lnaxdyzaiw0gXfPGHlv8xyZciRSjOdGCBeThkwQtsi4qeJGUnDqC/XkGdVsFLcoe1cm/LlYl88TH2kJleSRbL6FDrcmgJ2ViPYkv109YpCliOTeGrPAlt8g5YEdkAX7pJKHUkv0LjP2SuiT6l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755859498; c=relaxed/simple;
	bh=nZzxwP0Hsc/IHFw0nzElyMgbg4+rGKdGGWqpw1ppQ1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLJFP/lOJyejWkrtFYZwk3EnDQG8wMO5hb3tr5/fv+mZrlOWUIAAYz2t+XDhTzz2zJhZASs/C4iz/uYkHDmX7PIXGDZ/1ZgnyymqqUlg+TqJv01TL0xY6pQxSbL889V17oauKrE7C2UhzZFpdcnKp7rb/fz8AbNIGftHGYImpAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kcBeHyNV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UXqV024715
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:44:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lmNVcTpjAV1nhzeL+nalxePs
	oWj2xjWiKsXUFteXNCk=; b=kcBeHyNVZtnpUysuyO1LTNgQmKScZLn99Igiu8qn
	ICjD4Qy0TDygzQTam50Ri3yLKCwR8EvPipichxtWq3gnoAawHYV1HlgCgG0RTVUh
	LrZoaHULq+ToG0CcWcBztdhBdf0iqFcNTvvdPAZ4r/8cSgy3W0ADPzkLvz4UvaJ+
	4mYtyPrREea6Xh9ECT7+V1DBgBzQEsjCfP3qs7FTbjOBiWPAvND6daEIY+CJ0Ab6
	HEgL8kyOTu1AxT4WywlJ6e77IY1ZtXpYf4k8fX+0U62Tv0PqUeRSeMyquB1xF82e
	AIQWMakQcWup336WiBbwFoVg9T3+9gkOv+uymKAI96FxaA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52agyvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:44:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2b3cd4d00so6106351cf.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:44:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755859495; x=1756464295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lmNVcTpjAV1nhzeL+nalxePsoWj2xjWiKsXUFteXNCk=;
        b=h+Z+P0ZUY/dy6otB9PtKou47ipgfvVmER7HILl0I3JJZT3ei/6dCSpVJ5nRgxrHorR
         8fVZ8SFvqAd5GKYYBTCY19wC6faMJJpyvQ0/sMrCR0mbVjTerI4cWj02+IK5xQdJu2QE
         RRdi0sV7ZIY/Elp4XSPjyQ9AIao9K5g1zS/XIvCma7MML7w5ggPKV69nlMI9QloVLDZ1
         RU22mKqxdCrYYiOgJ1OL/55v36dKRd590CxxJloTPus2awdosqd3ljJOBn8hcDrKGWka
         ep601SnBg9OzMF2YBHB8ZPRAIjMgBH/ii6RXXf9dAO+y/MyneJV/lkFB7+WTwGalDtoo
         7LFg==
X-Forwarded-Encrypted: i=1; AJvYcCW0Z/EGcTxjUcGEDw0NVbaO+faZ/UKr2W3ZxfxMWGiP/cebYrER19hkECA82YPdpezxM9v/zDuDNKwv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Fbq/NxDe1YFgTkpONzNsQheie4M9F9pcrSCjgE3+pmCIpKPx
	60ASNWvShoppxFFH2s+4WRivHyZN5gv3lsLw3Ra2NkJCI9nZ3oNXMKcbn18/ijXx635rSM3LhQy
	Mj9KAwjw3c63xkf+6EMcPBj0yIN23oKLJrnJLjgaX7oCAK4xpMDbrVPIJeuJs3JLU
X-Gm-Gg: ASbGncu+h3AxaZ0hbCnwhbtqXK6z7iDVrU65uUJOWzF8VnDrvVg17fNBTFkaOtFkfW1
	U/qkHBfmtP3P/MWXckcV6srEReXUtxA5oOD4KtrYO+k4pHBMXsLMnicd12ZIU0PIfaO4/xyfFNh
	zQWzCi9wwXssQIKv4n/CzWZWI/q6ExbjFRjWFCj0iTvsk6HJvOInzDaNIq0sIC6EtwFptyLRCbN
	A3FJldRmF8itmpTGK2EWhi90W/GokGDmjpQdLQ//H0OVQA8inedo8WrVlfFehY4DQFpH0YkK6rs
	rHx7uCKAzjVSMqCvEsGA35oHLoKpTCxlhpIh+BC91vA1EtJr0ZuKcQwfN+8e7T4PF5WUCEL7kOs
	3cdqHkPYb/Rpzvc8Mckg1VsN2foyw+YJYD0yq1gmcwHCfQ+WJMjwU
X-Received: by 2002:a05:622a:60f:b0:4b2:9e77:9bb9 with SMTP id d75a77b69052e-4b2aaa811b2mr26567711cf.30.1755859494905;
        Fri, 22 Aug 2025 03:44:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFog8hLxW55shQRKXd7SdZ+Rk5sW9GHijIx83QeSTTgsCWBAkK+lc8RpqkP2N/FwKrhPxPRSw==
X-Received: by 2002:a05:622a:60f:b0:4b2:9e77:9bb9 with SMTP id d75a77b69052e-4b2aaa811b2mr26567391cf.30.1755859494295;
        Fri, 22 Aug 2025 03:44:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41e0c6sm35472501fa.15.2025.08.22.03.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:44:53 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:44:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shashank Maurya <quic_ssmaurya@quicinc.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: lemans-evk: Enable Display Port
Message-ID: <4pp7emxj7fbc47k54uhsbgmom2ogltgbm4srug4fweu7ejakjs@ggaszwvc4iiz>
References: <20250821-enable-iq9-dp-v3-1-8c3a719e3b9a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-enable-iq9-dp-v3-1-8c3a719e3b9a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: r6oYaujb_7-tfpf3TyKrWsBV27h2uSn4
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a84a28 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=MzpP2GudIQyLNU4cacwA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: r6oYaujb_7-tfpf3TyKrWsBV27h2uSn4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5sCVX9Al3ecw
 2+dyjC3/njzSSQls9XibTAddd1C4uw50WSF5+kuB3tYYP0VNKN76n70FgEXf+boqeHOIHsoXXA6
 yvK2tpNHKlQcVWvl2H2UNyhHSjdZxy59Id/fPqvZJbyg619UtD/IH1wKZ3ammNES69luDYOEBWd
 2dEn1g89dxMHoc6iBhTCzMkmH6bwGcSVUNw3wT7SDhZHf2T8SsChY9fUQvUxr2w1e8z7yg0JSs8
 1DfgW54JR1cbxp3jkPNh1u2TF45/IJdIj10c2e5wG/PiHUsS/QVS4uP1pCqfV4ZU8q+fFPHXeXT
 647kqBgriILVusvBSBqcLebQ9EsX0xAsbogwVo7t0Guq5C3rnrpXbkAV4zGzVGghG88U8YoMrDU
 JLnjdKv89A+Tjx/dl0wa5saucX47jA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 11:24:28PM +0530, Prahlad Valluru wrote:
> From: Shashank Maurya <quic_ssmaurya@quicinc.com>
> 
> Lemans EVK board has two mini-DP connectors, connected to EDP0
> and EDP1 phys. Other EDP phys are available on expansion
> connectors for the mezzanine boards.
> Enable EDP0 and EDP1 along with their corresponding PHYs.
> 
> Signed-off-by: Shashank Maurya <quic_ssmaurya@quicinc.com>
> Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
> ---
> Changes in v3:
> - moved pinctrl nodes to soc dtsi.
> - Link to v2: https://lore.kernel.org/r/20250820-enable-iq9-dp-v2-1-973c9ca22474@oss.qualcomm.com
> 
> Changes in v2:
> - added dp-connector nodes for edp0 and edp1.
> - Link to v1: https://lore.kernel.org/r/20250711-enable-iq9-dp-v1-1-6d381e105473@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 70 +++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/lemans.dtsi    | 12 ++++++
>  2 files changed, 82 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

