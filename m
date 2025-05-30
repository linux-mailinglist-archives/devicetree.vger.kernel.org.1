Return-Path: <devicetree+bounces-181943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 480C4AC97EF
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 01:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BD491BC0771
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 23:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F2128C2C8;
	Fri, 30 May 2025 23:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LXEUZzKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555E2283C90
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748646047; cv=none; b=le42VPu0/HxiCDbqmgEZdI311THMKfA+JDHi31uLcXBtN6PmD9EVt1jN4YxouzoaCFYnsGvfOJQyvvkXnX064ji30Wy/rtJFmr7VMRzjvSlQhJdCKK8z3TLyOojG0pqh8jSjCL0uEgGfzzHgT5UC20F+TyMzXqleifOhuYv1D6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748646047; c=relaxed/simple;
	bh=LMN2CJvWjnSp1DFxtqbW5/P+SkmfTosLclftY2KufBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LFKqgXB38m1B4xsDCOfM4Plm/hw8Soa3LR8ddbO4HyJJE4hxf40GxSKo86Afr+z2jt03bfjJrLLaIHkJaS+DT1pd7R/xbt9uHJ0g4ElJTOO/faS4kuCh+MIQ+gQPLnsScUcSNcm13MLnmwXyHvAcfqieF1W6UAFVKg8Mi5sSe58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LXEUZzKe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UBNuRD009456
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	616bsY/nEBSBHhfZUGqUyy3WTHSx4fm6iqXWJiW0Obo=; b=LXEUZzKenzxzgwZV
	ppg18kMac9P4rgtAoSlwTqc1i6HLV9vI1EPx0iTdMCTP88OZO9REiY00KL8s4nWM
	5SnUZ3yVFjpIoDFH2PzVoQH2gyfQ3JnxOBUK2qscR18DQ7fPaCvhS8LlPBhqzyyn
	A8gIfosnLPux9ltX7pqiV8elH6RitpidT+WVhdf3ycTdChUiCwv7TwClyaOLmvMY
	l31kRPKfLmVJ+KYC7qq1Tjaw505hO9Of3kYUHFtcH+dCm5WnusRq2oJQeEEOXyZa
	3txNbhGnbonm+MZbUbJ1jfyzo7Bu02BUKj5HVsMMNJn0yYFjRhIjxQLL8OesYDdE
	MfRVLg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w691n9sm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:00:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a43228ba19so7231091cf.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748646044; x=1749250844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=616bsY/nEBSBHhfZUGqUyy3WTHSx4fm6iqXWJiW0Obo=;
        b=O1rMjdtMmhRSUgNiEDYEj8Bx+emdHIJGB364O4nK32W8/ltvDGNnwTvEuqiHr2hfc+
         qG80SeGFiUeoQBVHyCAVxiSTGH7zbaH7D7/BcgEmT21laV9H+SA8mX1RI8u8Ywh2Ocdl
         24SbrbNcb0iafJzjI8frYZP7479dRgg4FqKBaSLd+6Ix8va6W4Pspuo6128tX1t3abqA
         BQeqd2zrstlu3O0nsLSRgnXBD56/VpVf3atiKfBAUc0lK+3SwrAIH13mldoJaKtyWFqJ
         M8Z4Pc1OOpXfSndDZU5HzUS9DszNtEOuPsgPiSZtyxLtEQqXA/Qwsg9kD2sHO4SpAMwU
         v3cg==
X-Forwarded-Encrypted: i=1; AJvYcCVcGp+11P8m85GpDqIpFhMG7JlMCDHhn/+zerXxBrPyDRig7fXN2uRx4VPAEdZTrCly89rHtzzKq+Fg@vger.kernel.org
X-Gm-Message-State: AOJu0YybTTOf25cMtbxCtLio4Rlz+/yJsXX/NonVwGWef/2GQxXXOWKj
	bqiCjDadMYq1C8mjTPYXp/53BJV24LpW1PSiTI1UjBVOFaREZn0TNFbTsWwtmGWbm7/86jMablZ
	LIwshDq6yFEcSGmPfncdGGRrzRHyMz5P62T7YI+kPkyKlGMrZvdIB/d2MOfJIx3wi
X-Gm-Gg: ASbGnctAu7Ui4qdXJ1bh/WomXWHB0g1uY/rJxT46TXsz31rhYDakYEW9DGRgAS6DTuo
	dMv5Ny+LjT76Oor5ueFfYbBzD/dbtZoAgvxed+DLkrnIvTT0WWa97cXLQJsifR7a84uK8B9P62w
	pw1Iw92MkkUfLn6Hzmc3qaUGrjZ/oKlaCQEf4DiNL5Jeynigcb/GkKRUQFM4pZ43crR/Vbg3FT6
	DTFRjAhqEzwhPGYEnohiTyMHvy/WIo5s708Z3KEgan///zOGQZEgylgEocHkx5msChx7dGF77VW
	RgI2KSiLKa83Cbsh4k74hVWsNNmuaL07otS8A/elZT5nQ5fcdT4bKLz5WZyJN+2wLw==
X-Received: by 2002:a05:622a:1995:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a44319ad30mr25043121cf.9.1748646044080;
        Fri, 30 May 2025 16:00:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFK6iok0uvIVWvqpCOyLIDjws7FdwQixOfUFwlizxjEFvY61uTtRtd0YSIs0q8n6c4uFb7yNQ==
X-Received: by 2002:a05:622a:1995:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a44319ad30mr25042591cf.9.1748646043455;
        Fri, 30 May 2025 16:00:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60566c2a7bcsm2304464a12.12.2025.05.30.16.00.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 16:00:42 -0700 (PDT)
Message-ID: <4639636e-0544-44a4-a997-2969f4661bd0@oss.qualcomm.com>
Date: Sat, 31 May 2025 01:00:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/18] clk: qcom: common: Add support to configure clk
 regs in qcom_cc_really_probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250530-videocc-pll-multi-pd-voting-v5-0-02303b3a582d@quicinc.com>
 <20250530-videocc-pll-multi-pd-voting-v5-6-02303b3a582d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250530-videocc-pll-multi-pd-voting-v5-6-02303b3a582d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=683a389d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=zrwMVDrAeVkrMBg2wiAA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 6Rpvs7_SKQdhuCq4QYTRmEm-3kqFgrV0
X-Proofpoint-ORIG-GUID: 6Rpvs7_SKQdhuCq4QYTRmEm-3kqFgrV0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDIwNiBTYWx0ZWRfX/e920D2hxxDR
 KVm3oCWurnaPQ+1ZD2M+VeJWB4mdD9LJhIMSDfMUv5+QSQB4Fj+S98BqUVt2CzzGyd6BMnLblXe
 hMwFcV+WjY/weZ5mkP8IDPVPONv3pM3bNUL+L7bR/GDXl0nJbGtpCWxgTg4Bi/ZsscwZVaZ3QDQ
 WUSfov/X/M3/C/LOvGQjGW7d2LNG9o5ALyBUYqLH1arxaq/6oaKMFUUlXKovfGX8ZaS2sZ7ExAT
 3S8nPxMYpeBSMviEeCFtMgEG0i0+86MKEo0AoOQBOLGzIvmKFLhzPifDNYnq7Hn9HBd4/8YI0hp
 4T03nenrTJIa3MflsoVFJqRs85luvJRAkflIY0WViQ252/RBCANuqXFqzdYx5wX9bBfeaZXrhIh
 sGpnGQ29AzYMw8faZGs5AuM0WZJ7jJjgnGb0Sr5d5GyKYMPOXm4p1voYur6xqpcIM5YwZNno
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_10,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300206

On 5/30/25 3:20 PM, Jagadeesh Kona wrote:
> Add support to configure PLLS and clk registers in qcom_cc_really_probe().
> This ensures all required power domains are enabled and kept ON by runtime
> PM code in qcom_cc_really_probe() before configuring the PLLS or clock
> registers.
> 
> Add support for qcom_cc_driver_data struct to maintain the clock
> controllers PLLs and CBCRs data, and a pointer of it can be stored in
> clock descriptor structure. If any clock controller driver requires to
> program some additional misc register settings, it can register the
> clk_regs_configure() callback in the driver data.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

