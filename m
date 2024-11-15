Return-Path: <devicetree+bounces-122284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0759CF615
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 21:30:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87BB01F20FAA
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A0091E2306;
	Fri, 15 Nov 2024 20:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cm+KtutM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7411E32B0
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731702372; cv=none; b=EP+ta3sNDj1K+gIKh78GHHTAYzYWmWwaaP1Wy+EdL7s/qDrAB5eAjJcGQssOefLNn69Hi38yMcFJIYoQ4UyvrR+bNSmaA6hGxjp0is2OnTB3wfQhzwDO01z2k1linH3w90VupPPGo2qUv5eHQHFHPFudW1XmDeBw7VasB5sZ3zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731702372; c=relaxed/simple;
	bh=Ag3npkmnft9gD62o1XdTSBWLaK4jEsKzFWnv3M8CBS0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dZZ7XpC5I6T8eC6n5RlSLDvVYBtrU4aBTnvryhQTX2Q//0X9Gu83pXwvnMb5HFcdR5IAhsyV1lyOjLrzAe0H7a6RZfkzPyTPH+bwNlgPhZfMrh0B1er0PJw3noL7IANHBpcrWlnHsk+JXqYuYWpAon4SbVRsKDG2ierBMvBjVdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cm+KtutM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AFK8TjX004986
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:26:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bMaPm1+IImUdO7cISBLcl9c7Iu1WSHE+iCkPkVlturo=; b=Cm+KtutMRhf7d9kY
	zGLxREdMiXLY9z/H3sT06+8p+BjYGdVp3oK6EI1TlsQ/+JvJs+IAE2RrsXuF6MBx
	E10lpqEH8dhwfj7cmwD4556FqXRGH3H4hkM+koYn9EFU57xY+q4S46vwpnlQFPBK
	fyOnMsKl1j/sYNDnCshbAWskVxYYV5DDCBt2+VUuZOuLSgu+KxZJ2saCRWiDRdQJ
	z+82TfeSO4QjPWsIPlF3vGxghioeN89Dir1vIDkaDD0Va0XSjJI5D0oJh7NRBOkN
	dq0dl2xKsmSAKmQjjJN9sgMCAbSTYaOa0LqONP+4afV3D/Rx17AjGaTSiWK1KdOJ
	k8nPYQ==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42x3g0sqk1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:26:09 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3df19f2433cso504258b6e.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 12:26:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731702368; x=1732307168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bMaPm1+IImUdO7cISBLcl9c7Iu1WSHE+iCkPkVlturo=;
        b=WDHQvPOv7xzZROLQdwIF0OSMe9hIk+tv7xyknZ4GRnApMC2cWI5XRu/ra0V3sGPTrQ
         0LO1h73bRhOs0fhvAmVRV+Szy8EesLQdr9KgmgXO/qga51EoYPriWvZbaDPq8xtNZN1q
         nSMWjD1ikw1s6Mpd7fjEA5S2vcMBSXYoNW2nHpZnk1EmYNU6TySef0VVAdr/+G1gVKhE
         GGUN7+6xLK2wDHikfyIRJVORLP5DT5eyC/cpJ+cRmc9LIJBXZyZI9BRET3IuG23STz4q
         LtvdYEu4C1/Z0KK2k/RtFY2njZ7JoQgVF/6TWm+JM97tWYTp3v/bh9Icsd8fwUh0/Gk7
         IdAw==
X-Forwarded-Encrypted: i=1; AJvYcCVrAnFphehDQCLJEejOUO3CPXs5nZvISYB+4MvMlmpSkiuF8x9ErDoHQspLI+KIxk3WCIJFmGB5bZ5y@vger.kernel.org
X-Gm-Message-State: AOJu0YxxmhdhmCGVlhpV8ExQlo9mjnWx+t+7mdzLyKpTIgYYsyzSOF55
	BzhSdjuz64PKM2hSyNh2LdGjQKqK6PjfUFwJ/VRfOuvma68PM5PlHDWyLYJajHG6LzqbfZQhz1m
	v18DJW0uHz+GHz0orvD7jPGOjhf8p8xDo0/yf1GCTi3fapUgO3mmdG+q4DWKc
X-Received: by 2002:a05:6830:641c:b0:710:f7b0:1d9f with SMTP id 46e09a7af769-71a77a53decmr880173a34.7.1731702368473;
        Fri, 15 Nov 2024 12:26:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFtR3/Q2/qCLJeKACK4JhpVADHvNgsg3j76CniniMUeFU85uyl/kGD/ZyaH9K7cExGWRaIdJw==
X-Received: by 2002:a05:6830:641c:b0:710:f7b0:1d9f with SMTP id 46e09a7af769-71a77a53decmr880154a34.7.1731702368136;
        Fri, 15 Nov 2024 12:26:08 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e046c68sm210747166b.167.2024.11.15.12.26.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 12:26:06 -0800 (PST)
Message-ID: <636c2392-bcd6-45ae-a7f7-ed893479d3dd@oss.qualcomm.com>
Date: Fri, 15 Nov 2024 21:26:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: Add base SM8750 dtsi
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
References: <20241112004936.2810509-1-quic_molvera@quicinc.com>
 <20241112004936.2810509-4-quic_molvera@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241112004936.2810509-4-quic_molvera@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OSZaYQu0vU-LbX1pPCs3Z1sqI1iZv-SU
X-Proofpoint-GUID: OSZaYQu0vU-LbX1pPCs3Z1sqI1iZv-SU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 mlxlogscore=688
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150171

On 12.11.2024 1:49 AM, Melody Olvera wrote:
> Add the base dtsi for the SM8750 SoC describing the CPUs, GCC and
> RPMHCC clock controllers, geni UART, interrupt controller, TLMM,
> reserved memory, interconnects, and SMMU.
> 
> Co-developed-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Co-developed-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Co-developed-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +			power-domain-names = "psci";
> +			cpu-idle-states = <&cluster0_c4>;

So here and on x1 we use cpu-idle-states instead of putting the idle state
under domain-idle-states in CPU_PDn like on other PSCI OSI mode-supporting
SoCs. IIUC it works out to be the same thing, but maybe we should stick
to the latter for consistency

[...]

> +
> +			gic_its: msi-controller@16040000 {
> +				compatible = "arm,gic-v3-its";
> +				reg = <0x0 0x16040000 0x0 0x20000>;
> +
> +				msi-controller;
> +				#msi-cells = <1>;
> +
> +				status = "disabled";
> +			};

Any reason it's disabled?

LGTM otherwise

Konrad

