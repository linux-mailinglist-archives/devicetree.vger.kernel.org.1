Return-Path: <devicetree+bounces-115846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 799929B0D6A
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DA2D1C22F79
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA62F20EA27;
	Fri, 25 Oct 2024 18:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQr6gSn5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D017920D51B
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729881227; cv=none; b=LCZHO7nIpa5u6Kvl94Th6JmJygLwsAfBGlKn+eCAmjuQsYuFlB31rNV671KvYG//XXLA7xsPtViWFWOV21mcbTnnLHzDg9qNBQGH4aWdiCjWWNB3jhb9p5LTjYUfHBNzfyUnFOetN7kavTXyBrF8RREJIHMFqfp3Ox9kUs6jjEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729881227; c=relaxed/simple;
	bh=C1E8frnjMeEQSy8Pqyg4K5aFpsibcSd31aK+iCCZ3dA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NKhWBO0ESLf2pTrWvtrG4Cxfn0orRzX22O4254iwNWkDvQ1F+NXRxS7zU68vDcNJ7YpkWyiecMPyo77BWRhHPziVXm9zKbNIhreMq0s7dv9wTHw6IPYGbTaQZIe3dJn5wirVCNMe4Bc4PJSmKHqn68AqcgYL9XEOwJmYEuDObqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQr6gSn5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PBowCk009099
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YrhtYMGo6oB+Fh3IVUbINDP/3iPpzWJ+iflfs3uTsao=; b=EQr6gSn5M0viTC4A
	rE8Zb8dRdxwkvc5EmZjNoQnOTG0Re+SZStLVEkzwv42J6GIVpLHHIeTZ5r8g2kv4
	euEK6T+R1qPPavZNm9xDCfjOkdJYxw5LNN2b5lfmtOwLZqhS6winmC8pMoMOoWAm
	ws7l2luJOFOBQrG/pCHbkMILZQKY7nwPetsm/fGPz6U0YZmI9kEBI4kRZURm7BZN
	WBIQBMrCaUqneefBOiU1EIYKCC8woKq2iy+N+pTM2lcpVk313FA7yP18wFpdTmWh
	ARemsALE5PbYJTMlgPG8ob4TYm1Pvoxzmjyj0gaYqLyXBZq8QGma9RmA1CrY0PIm
	8azGGg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em43j35n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:33:44 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-4a46fd6ad7fso98607137.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729881224; x=1730486024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YrhtYMGo6oB+Fh3IVUbINDP/3iPpzWJ+iflfs3uTsao=;
        b=Zx+IHMVdwEeP90Ef3DuilKicaoTwEHxqdMiArNgfdf23QArRxijWzAkS0ETaxDMxV2
         uMzv9eqL7EIT7obvD6yi949SJuEBiOwUOcAPyAgV4nYRJHao+QLKDmrpAxbxzn8yINMu
         an1Sf/OPnkPVhpCjx7oWu5VmjEXjofALK84Pd7I7PGsii0MnKg/7lasluSebtZDXjAC+
         sntfnkYC28Z0ScyS/A2QLfSy5jSIAqOsTMyUvXEu1JFN3oS1tupsSK0cJIx2wuwt18OP
         W13EtvdUKigtnxXqNpm8q5e/SQRY8V6SP2kQht/1Cx2721nFoEA8XH4fLKEXsc9S9ZAv
         BDfw==
X-Forwarded-Encrypted: i=1; AJvYcCWTs0dPsa7tnhtBm+u2j/WdC4Lry5BsNlIzbn0dhdXw4MPXWkVFpYRkz8KvAPOTOpBt5ucKyKtzR6DC@vger.kernel.org
X-Gm-Message-State: AOJu0YxVGwAMRDA4RmXa8igFi4GQhw4p7P7LSE2xaBhSgICKhje9GKWw
	v6fji31hKgQnXJWP+QtFGKaVej3fD2yMhlsbYwCxQdTtCmWRVcqMUQ6KoRIOIi+cMTNGRKOw6Al
	D+bOYcYDaMRiDEnZJ2tA2O/TH4dtxxT6EPefxpYVhjEw0FeVPOXvqaRC0Qg9K
X-Received: by 2002:a05:6102:358d:b0:49d:4538:be24 with SMTP id ada2fe7eead31-4a8cfd69f9cmr248208137.6.1729881223994;
        Fri, 25 Oct 2024 11:33:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpgeCSyeMgeGBpUzgGyBg9YoUfZTE/wNtpSmO+wzQcSnouAf+xQwCdivKcj6OqaJrksIp1pA==
X-Received: by 2002:a05:6102:358d:b0:49d:4538:be24 with SMTP id ada2fe7eead31-4a8cfd69f9cmr248187137.6.1729881223686;
        Fri, 25 Oct 2024 11:33:43 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1e75ff3bsm96012066b.1.2024.10.25.11.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:33:42 -0700 (PDT)
Message-ID: <321296ae-7190-4c54-b36d-92105b49f61b@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:33:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: x1e80100: Describe the SDHC
 controllers
To: Abel Vesa <abel.vesa@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241022-x1e80100-qcp-sdhc-v3-0-46c401e32cbf@linaro.org>
 <20241022-x1e80100-qcp-sdhc-v3-1-46c401e32cbf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241022-x1e80100-qcp-sdhc-v3-1-46c401e32cbf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -fRF44_ls_EHlL-ODAQD15cjiAagBIfc
X-Proofpoint-ORIG-GUID: -fRF44_ls_EHlL-ODAQD15cjiAagBIfc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250142

On 22.10.2024 12:46 PM, Abel Vesa wrote:
> Describe the two SHDC v5 controllers found on x1e80100 platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 102 +++++++++++++++++++++++++++++++++
>  1 file changed, 102 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 0e6802c1d2d8375987c614ec69c440e2f38d25c6..2d0befd6ba0ea11fdf2305d23c0cd8743de303dc 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3887,6 +3887,108 @@ lpass_lpicx_noc: interconnect@7430000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		sdhc_2: mmc@8804000 {
> +			compatible = "qcom,x1e80100-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0 0x08804000 0 0x1000>;
> +
> +			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hc_irq", "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
> +				 <&gcc GCC_SDCC2_APPS_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "iface", "core", "xo";
> +			iommus = <&apps_smmu 0x520 0>;
> +			qcom,dll-config = <0x0007642c>;
> +			qcom,ddr-config = <0x80040868>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +			operating-points-v2 = <&sdhc2_opp_table>;
> +
> +			interconnects = <&aggre2_noc MASTER_SDCC_2 0 &mc_virt SLAVE_EBI1 0>,

QCOM_ICC_TAG_ALWAYS

> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDCC_2 0>;

QCOM_ICC_TAG_ACTIVE_ONLY (this is a CPU-x path)

for both nodes

Konrad

