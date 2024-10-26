Return-Path: <devicetree+bounces-115939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 327759B1713
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 12:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA3D528432C
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 10:32:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39471D1302;
	Sat, 26 Oct 2024 10:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OsPppbJX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EF41CF7A2
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729938759; cv=none; b=vFzVhUyLuqCYdCtEw+AOmRdyROiiTGT7ziVrCCwsjFvJP3uxMQU0zuhkV6Vom+rPAgRgiZzv0nvziiF7LzfxSwuYuVmL6lltnKGZtrYts1GL+xMVAiBQJUlSvctXlq8JzMJe7mYNBw/1e3fLq45zAIie6WH/xtII2xBpLgROeyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729938759; c=relaxed/simple;
	bh=SwQIYXHahAYM/4giphhwTe9mjAhQAeeDSM7ktjnLMhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M7hNrxku98Vr8YRZosecU4joKpUQK9MvgED9egcXzk1IiV+hJoiF08DLaeyr3zZPKRwcBkrPIiE9wPAkZ0L3el2TpumdR5MC4xVxzqRdvNgsJOHv1JIQlmOHefQLEFY2qFmbGhgFhQFXd01AFOiWFB4cgOCpHd2Au417vn73uXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OsPppbJX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49Q5iG0J015836
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:32:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sDJqoZnQ7dr7g8Y5z3Fc/PH3Ed2vC8x8CbYp4pSGv7Y=; b=OsPppbJXtRYmK9cy
	wh6lt6L399DXFLLxZevz55u1K2jCTCOx7VZwgwcX66P2hvNVavcX6QXFCvHOznJS
	dUbdaydLv7mEEVK1Q9l0avAaCHsPgHdDjQAfBRKY9XGKJO7Y4Xr1etxZKK+K1gHl
	dL58H5nOEQXvyWYJJvMQktM2+xarxarWh0cwy017LA9YsM4iIaVmjwWU9y+MYMis
	nca9c7OKTIMmbGTivAw8bflsIhl8ljDiBT1n6P6gpX9Ry1TXLn0xpOs0JnwQ4AJF
	u92qg7B4+8k4dUYwppFFU4m6KfpUu1Ga14MKaNXB0zOlH332PiTDvlYwTSJyjtb/
	G7ZG3w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gqcqgtxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:32:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbf5a3192aso6302296d6.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 03:32:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729938756; x=1730543556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sDJqoZnQ7dr7g8Y5z3Fc/PH3Ed2vC8x8CbYp4pSGv7Y=;
        b=vEkPfreCuTOSL9nihapI+I5cr16LDAiZ3uoNqxNO4h5MVFtAVhZpJPIW/oK7Rm58Sh
         9ejofkEP08hFbcWJtBs3lp2MjaO3fSbU9YMbfHgrnch5k4HSdbHQnId1UhgtmuPMduKK
         jZ62/WWOeDbBd4AZZsQF9b8Ia11JDUl0UGDsnoDhhov8HgEauf3+SmWtQIEJmedZ3Cgx
         8TaFbLx17mmEfDXFWcsaCD5fRsXYRlf8v5J8+WugAYQouOAwOgHxTV5ju3jUGGT/FI64
         d7wJbTyqLE1Ml4JTCcww2EnpZMtom7wxNMrDNYshbAPIncHFEX9FZmh0P4UqSPsotOOM
         LKng==
X-Forwarded-Encrypted: i=1; AJvYcCWymw4G/3dSG2KI4AatTrrXzb52fF6imrD1jrUzl2Zjvl//kvwNZPn1k2qlkPE8HDiKtFBECoH+hdkn@vger.kernel.org
X-Gm-Message-State: AOJu0YzYPf9D9zSlALbZp6jisQogA4FjuwpFzqXQbFSw3hkKm0Je3yDq
	8szgWNewoC85zXmx9U2B9gWT4N4XOirhApLIc51GoWQZquyJWzv5TOvGHI11jSvUDCh5RchFKTK
	r0olbgZVYnX0W0YCVQU/VU0wFKU58qgAX5Cf97cmC+mAFHpN1l0jhyFQR7GNh
X-Received: by 2002:a05:6214:1c43:b0:6cb:e6ed:eec8 with SMTP id 6a1803df08f44-6d185861dc6mr16682456d6.10.1729938755962;
        Sat, 26 Oct 2024 03:32:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjXZJAA3eb2Zr0VM+fkgskt/jYIPag26aqMf/uO5v7pcDYcm3MAe2D79PI+mBVRZS9oQTAaA==
X-Received: by 2002:a05:6214:1c43:b0:6cb:e6ed:eec8 with SMTP id 6a1803df08f44-6d185861dc6mr16682346d6.10.1729938755683;
        Sat, 26 Oct 2024 03:32:35 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1dec8169sm161200666b.34.2024.10.26.03.32.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 03:32:35 -0700 (PDT)
Message-ID: <0cdd22af-150a-4dbc-8436-13211d93d417@oss.qualcomm.com>
Date: Sat, 26 Oct 2024 12:32:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 10/12] arm64: dts: qcom: sdm845-starqltechn: add
 initial sound support
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241008-starqltechn_integration_upstream-v6-0-5445365d3052@gmail.com>
 <20241008-starqltechn_integration_upstream-v6-10-5445365d3052@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241008-starqltechn_integration_upstream-v6-10-5445365d3052@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lsvgYMuN9JwEN2_6i7-hyUu7o-fEDbsv
X-Proofpoint-GUID: lsvgYMuN9JwEN2_6i7-hyUu7o-fEDbsv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410260087

On 8.10.2024 6:51 PM, Dzmitry Sankouski wrote:
> Add support for sound (headphones and mics only)
> Also redefine slpi reserved memory, because adsp_mem overlaps with
> slpi_mem inherited from sdm845.dtsi.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> 
> ---

[...]

> +&sound {
> +	compatible = "qcom,sdm845-sndcard";
> +	model = "Samsung Galaxy S9";

Are spaces cool with userspace?

> +	pinctrl-0 = <&quat_mi2s_active &quat_mi2s_sd0_active &quat_mi2s_sd1_active>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	audio-routing =	"RX_BIAS", "MCLK",
> +			"AMIC2", "MIC BIAS2", /* Headset Mic */
> +			"AMIC3", "MIC BIAS2", /* FMLeft Tx */
> +			"AMIC4", "MIC BIAS2", /* FMRight Tx */
> +			"DMIC0", "MIC BIAS1", /* Digital Mic0 */
> +			"DMIC5", "MIC BIAS4", /* Digital Mic1 */
> +			"DMIC4", "MIC BIAS4", /* Digital Mic2 */
> +			"DMIC3", "MIC BIAS3", /* Digital Mic3 */
> +			"DMIC2", "MIC BIAS3", /* Digital Mic4 */
> +			"DMIC1", "MIC BIAS1"; /* Digital Mic5 */
> +
> +	mm1-dai-link {
> +		link-name = "MultiMedia1";
> +		cpu {

Please add a newline before subnodes

[...]

> +
> +		codec {
> +			sound-dai = <&wcd9340 2>; /* AIF2_PB */

It would be nice to create a binding for wcd9340, like
include/dt-bindings/sound/qcom,wcd9335.h

Konrad

