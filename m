Return-Path: <devicetree+bounces-211668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E88DFB40009
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A81867B35B4
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921A22FFDFB;
	Tue,  2 Sep 2025 12:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eeyr4qBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6502FFDDB
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 12:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756815101; cv=none; b=H+eo0T5vqM2dWKxHZsnjc3qL7RnQ2BRS93uIILYZKw5KNT9zpdaOrurH+hdyQmrqy9gbo1Frfqf7+VtYLor9Ld3SPmxVxKgUuxXkfDmWVL3/rshSItbBYeZW1vx/1BA5PHp7/0PR2++8n7IZCWrVhk9N+Svxg9tJAKrHRtg2T/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756815101; c=relaxed/simple;
	bh=VKPh/ct5Q5m08hxDCp/EDthmOiS6ucPULO1VHGN1G3k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rNtFIowbJOA5Vpe8ZCZZIPoKylXOhpqHQUe07hsxbGYy6BNUg+rmYaUP2blxZyME53yO0X9fqeqgUaQ9xCCL41LX/xhbjNDrF0JYtmjSO8ujwZNwU2uIfC4QJWgl1Rk4+BufUZlmgwqoboVEWRqyZqjsYOzoEAEdgA/1U8+o+lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eeyr4qBs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582ABFfk030132
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 12:11:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R9+3e9dP2WaVs0y05qgMULMfCunUKyox0pXutflnw2s=; b=eeyr4qBskZ6+frZT
	07ReQadFBKOtqTEhsmyQ9kul7fEYeJO+8J+mQQrnwuO9rQRVpNFrYaAe64uu/GEo
	6/5vGMmjfknMejSA6PujLNvCS6EFRzRGKZqestEKJJa/sn9048M+hHwnRTOFHwAy
	E6Er00oehkoLqYqQ7+xhusvQpk9CZjTw2AxrXLBpj7XC57NlJtCG3EUpc+wzZGWl
	UvM1H/10mMCF6qEEBcDTql2UJQtV8v4MUJ0si0QCTMQcphEJy8Egtbsj8tmbJyh0
	ZGoavm0dRVgWfvUM70fAqplEaWxM/mMs1p5punMdgb1qB9AIRCyAf0tLumVPfaFP
	sw1wtQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy3ht4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 12:11:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2967fd196so16300821cf.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 05:11:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756815098; x=1757419898;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R9+3e9dP2WaVs0y05qgMULMfCunUKyox0pXutflnw2s=;
        b=DCk3dF+yaBQiSX+cW9aoLzGk/NDksAx5+vAbSAYyYGHZeZsEwqtiQkRxiU7KJkibpZ
         2D24ENGNRNbpWutlsJK+VIM0/Cwz4ZNpzoI/TVxOJJHOf86cKwMGSM+X5fX3c9cPRVYt
         Zw3AKyOEEUfAuKNv6+FQhn9QpEymPc1VTGAaDr2eeERn57n15KVwh2Te2XtCVKpWUWgM
         W+Og+MRWirWx4n99mEHf1hsMm3N4eJIefUi7Gya2kINmnboqs8Sw+uYqCMrKmUkEdPgk
         Fz93LKkSE7nbpRiek7FTeps7+wlcJWLj1cKSpBoSScug9Rgc1QmoOXtN9YOc0XCGlj7Q
         uXNw==
X-Forwarded-Encrypted: i=1; AJvYcCW95n2Sc3h4dkTO5f6U0ucPqm8X2NnY7/3Tmk+Neov2+47qHuDRYngh/Nz8hrhrIovpvEs72vpzfyxn@vger.kernel.org
X-Gm-Message-State: AOJu0YwjB09fYSfeqIAywBX/9LSs2lhJdWXodr2E6eBaajIpFopKnVmz
	BJFei5u2x6f4PgZzQTaXKvwznxYKxkkMt8Aa8pih6N2lGEYSpugb4ch1yVCIcVwJe7i8/JU6uGP
	7s1NCDBhFSVoJ2wqq+63hlUEhT4t3igYlDH7t7ztEFbSHSuwnsuTow7BSZcaG8R3l
X-Gm-Gg: ASbGncuVWw91NQwrcl5je+emYsRqVDxzesfGq9cgsxKM5qWtN+ih1Y1BwT9WlFYRGtn
	sK1cG0tERp1MCJljbZyGHxfMLRswOeLm0GlTJDULdr6Er2FPX6tnpeABR/OqpdP64J0OyUhkJOs
	bob2Y6SqpgQSOYNYmoirvbL3+Qa8gXpXiV2P7D2FGv1KAl00HQBJtef+lRQRT2nPkw/nyGbXl+P
	pkbK2gS46WGtaEkX9gYeIAbyNEyOB/NhTJ5MwRITZs1lnTT5ZnXF+nPpgYeF6/ncvns3I2axPOH
	M90k0ex4OIM1HZLf3rbrwYlQAfygIiSNzStDD7Mro+d2rl5cyoqTa+kF4l6lmTxMrivZlHxxHUK
	h0JFowpTgXEIKsHsyS2rFmg==
X-Received: by 2002:ac8:5710:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b313ea00camr114042921cf.7.1756815098049;
        Tue, 02 Sep 2025 05:11:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwW4G4jjkaUKtXkdS+GHMSUK5ZRdAh64PysqQIkVPG7KSVbGILFSKErYbYiYkdMuTYCelzhw==
X-Received: by 2002:ac8:5710:0:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b313ea00camr114042341cf.7.1756815097447;
        Tue, 02 Sep 2025 05:11:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-affc2fac683sm873825266b.83.2025.09.02.05.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:11:36 -0700 (PDT)
Message-ID: <84c48543-815c-44fe-9334-ec1f688e9639@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 14:11:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/10] clk: qcom: gcc-ipq5424: Add gpll0_out_aux clock
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250828-qcom_ipq5424_nsscc-v4-0-cb913b205bcb@quicinc.com>
 <20250828-qcom_ipq5424_nsscc-v4-5-cb913b205bcb@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250828-qcom_ipq5424_nsscc-v4-5-cb913b205bcb@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b6defa cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=xy1T5CxqftMPibTtt60A:9 a=QEXdDO2ut3YA:10 a=jh1YyD438LUA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: eTwe9rXYMpm7VE_bqfgoFRR22XJKD1Cb
X-Proofpoint-ORIG-GUID: eTwe9rXYMpm7VE_bqfgoFRR22XJKD1Cb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX4YfwYiblvZCM
 4DFCAoaX+4ZPBey4LTY+/AcCu588PoF0N4c0qpsNHL7k1lIBGb5sG/g16e9Izp48y/fRQDWBV5V
 EB9EC2U/vITXjTEk/Bwe/+GpDYuzrciNT58cpVw5CToMGSG4Y+BIuDrCMaJQQtWjvirGVs/BoYl
 qSqaciMjb+8V49XxVUlpP44TFxRpabbJmZ4RPAS1shxsVYzsjgYS0KC04P+8oycHXsMmUhFNjtV
 lN9uIfua92kFQUmJo2387HoRaIf6YByxDkYAIJwtMeZ+A3DIWxEM65yUYPCB8ZW/zmqrfvytKrg
 2D8qFxlsf765d8uGPZgFXacTus0KihrOKMehVsNjaCx7SzG1jotishL9mBZHVuq7DFZy+mscRiQ
 dPl9XE8u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On 8/28/25 12:32 PM, Luo Jie wrote:
> The clock gpll0_out_aux acts as the parent clock for some of the NSS
> (Network Subsystem) clocks.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

