Return-Path: <devicetree+bounces-250806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B131CEBEC7
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 602143013EF0
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4172BD5B2;
	Wed, 31 Dec 2025 12:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RMabYfAV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W7dXQZHv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E130A233D9C
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767183398; cv=none; b=o6K2y00AOfoBwyEHZD4b0FnMmG9vBqONeoPmMIYzrKVQCr//haOxsTsclw1R2BOZ7FLQm53ELjoyH1km/1r6LXMxpprrTDXiXFE6ET3JgBv+P7jPsm7oynDb0sI9lurJpPzY1SGEUXMMM3wAUBfbZX0rce+N++9R6Wjx76ET5EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767183398; c=relaxed/simple;
	bh=MR3AmbLZ5anPbDIh6appxGPnZYKMJT7zJ1pCI1xBgTM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QrmBUTkYbzSbfIv87vvlXKZLfrFe4stv6eBOcIO46XpF74ATbRMgAvq8qozKUY+8d/faAO2L9Gw4Qe7pDs/qnvnKAg/YuagJvKCd1oQ5sNwiyd6O6QAUya2/kHcNf5moTc+Osf1nitkCeFFMEc5FZdFBhkhC4UqQ1YnoJgQMlzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RMabYfAV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W7dXQZHv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV3e0GL1831499
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:16:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FmHPQhUPWUftI1dUKYWlCg7G20zAEVRZRn28G5U5nz4=; b=RMabYfAVrgVgQTB5
	9jkiNcMhmfzvt1CSh7z1Axyb6mW+0bqqcmtggZmOWYa/utb+nWBPPsiZ7xcHC327
	XbHmlAJ/MnA2N+K2RSc1OLJbAcdzUnqnNtlhsKJmRdQZohVdBVlQLeYG7JsOQetd
	gFmqFGsn0Haa09YG2izW2il4W5EWV16fZ0OQVE05W2INkTTk8zhl5nKDVWEn2TCv
	pDOdCFr9gHNXeoY7OiC0kN/qXK4n99UXuQed2k/0MHBkag76J9zPouNUtPpjgMnH
	N/ckmQpVkhrT+Ny1VlqviW1zz93M7GiMRg9ZadfFmFxABY+Ylh1G5fuETJJg4LlX
	SvZk/w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcv4agu7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:16:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ede0bd2154so34276551cf.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767183395; x=1767788195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FmHPQhUPWUftI1dUKYWlCg7G20zAEVRZRn28G5U5nz4=;
        b=W7dXQZHvmYzBFuZF4NQ5uhFsFkvCPaIbPzbRF7J0CDUoMKmRvfbQp0oYnFI5OxXZpw
         i7rePM67lZfoLB00AVtQaBnkqFkDsXhIG5x9OlYxrpS4SF01HixeWTID2PBipPOdf7EJ
         MMivgsoCKKXaX0eHaEDGre+Z/QqeEHf+6ptQsZXqszdKbX8DXS85MMZIqL1JAUUpdR7Y
         u39Ac53l/3Dp2SETqT2dREFNwkaUgLRZ6gMcjRE6OtgXwsuQbmt21QjG4mev2qreuDT/
         lVQMIwpgv3SM+EC68TcJKPMj+LqJZ607miNgeIUGQ1gyb9f5J3yuDipfleWyfYbY39/o
         L2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767183395; x=1767788195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FmHPQhUPWUftI1dUKYWlCg7G20zAEVRZRn28G5U5nz4=;
        b=Y/B5Mca70Ze8Lq8BoPshsSp35WuHm/8R+vxnp/BsQwwOw0n2/FxDE821d0AFbvTrTO
         DctiacQfGzoBxge71nDAgyxkRPPT045N33w9V5Lx0PkmJftPiryzGIgIXhx/XUkZNita
         ejgPTKb2cE0Z3N+YoDQTItnYEbYXNjGK7hLeaQAAdgVsAl7FWdWoTorIzfkoI0vnyDx+
         47kLSNItcA/iedvYH0KNga3MBkvqEDSDLV1lvn0E2EMwph9w4T2w2y9sx4i7Li8HyS7r
         i2HGolTHi/JwQcVkhfINTgrGon8SdQZO7W56OvaVKlVRYO2fuwXo4uNloso3l/SnpT82
         w3mg==
X-Forwarded-Encrypted: i=1; AJvYcCUnbAeX3CFm9b37u1kdQTsK6+96fn4wTEdjE+83YzhQjVjhpegbeWwynQtJGGLa8AGKicEB9v5ttIiU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+zPyLVJInnE7pEhj7ozrNd9djiyG5iKUp7+gAHNDTlA8FGcEw
	t0d8uT+q7mpGDXisNWKkaweFY+4RK0Cy97SFB7uIBeq9o/1maV9MZ64jFOsqpfZNtiZ7jWQtrRl
	efg2vX5sB1TaHafi2SncCqtPpjfjOGTxTHmicqTzneL5rQ7hCg5/w8yPC0K23Xa01
X-Gm-Gg: AY/fxX5STI3n72bBlYDfqd+/M+7oHdcF/YOTLPG0Nvsb9bQR8XOeOhCLY72l8VRUklI
	LlatB8J4ICVcFouRubKM0uRziFaTcOkRpd24y5jA3z47lObSBwGHqo9Vv5MSJQCIcekKcPH+eOr
	RiJycCCItubJ35HDqQp8LhgD+1NeuCZbRB0Lrwkd3GtXAidj5jpRVqdLIb5yiOg8yrO136+9nMf
	pbofsBYjCvTlMs1RvkFY3/8YEnNt4Rj/FNwf5OO4U2YR+R+HzYbSnX1MlJG3r+Fy/CPNG5YQZIc
	f0Pucct0aAN9rVYvuKc9G2J+XcGmcQiaH45StFKkHDTIrGjMGxBBbP35J5V0EBslB3ERsY6/rAZ
	kjLW5PF/5k8ERTEKlLmjgT5G66Olf7B4H45EabGlRThJheP9KZDELRCWcM/0AFk1j1g==
X-Received: by 2002:ac8:5a46:0:b0:4f1:d267:dd2b with SMTP id d75a77b69052e-4f4abce1a3cmr428476611cf.1.1767183395139;
        Wed, 31 Dec 2025 04:16:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4Pfwh+egtxUj/QdUbBygykdOyCe3AD9kpBY9v2ldni3kiCg/sIQlD059WEMSwkll6E6T/RQ==
X-Received: by 2002:ac8:5a46:0:b0:4f1:d267:dd2b with SMTP id d75a77b69052e-4f4abce1a3cmr428476301cf.1.1767183394596;
        Wed, 31 Dec 2025 04:16:34 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5bdf3sm3954791866b.12.2025.12.31.04.16.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:16:34 -0800 (PST)
Message-ID: <59f3db15-77f1-42eb-97e1-31129fdf363d@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:16:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/14] arm64: dts: qcom: sm8150-hdk: describe WiFi/BT
 properly
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
 <20251231-wcn3990-pwrctl-v1-14-1ff4d6028ad5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-14-1ff4d6028ad5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gZDS_oJm0X_Q7WDig_zzgtxqCcIMPj9S
X-Authority-Analysis: v=2.4 cv=Ps6ergM3 c=1 sm=1 tr=0 ts=69551424 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=83yv27ILqWWRH8MFNrwA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwOCBTYWx0ZWRfXwg4skIwMxKJH
 TgSgDBuaLG9nEJNgGDeNufVCsrB0idz3Va/kWmJRa4lKEhlQaUVSsSWMp1UAQufUXSUWwQFs+8Y
 kDftIMxYx6+3NmvlRbcm8h7D/W9vYHsnOsdQYwwL3pUpLT/co4O/AJSULBKwpDkE8PybbSmEQiW
 8PR8d7AeC1hbdnIa5UeA/g/dgJOc2aDqOGWoSdcIeJ5kkZQaSWOxgEUWgm4q/kKYC27/s6pMFJT
 TWeDbifbBHMz0g5QrTLa282ff9QjX84fiJDCydeuErj/mQ/PKjrx8h3LE2+ZdgcQ4YqU6FGh+7l
 879j2jGpEI/rPrzQcO+jIkEe3pvOQGURLtanaE0grGly6EuBNcxXDTtQ/7FVyviZweD0OMQ3YyA
 hmlVqLMk6zEBnpy+mUECi64yTTM3VzPm2JFJTaL9f2q0kv9x7IcUEM+copExir7H0Yq8Vzfw9IS
 1bsdlusMWCdQ67k2b+A==
X-Proofpoint-GUID: gZDS_oJm0X_Q7WDig_zzgtxqCcIMPj9S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 impostorscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310108

On 12/31/25 12:36 AM, Dmitry Baryshkov wrote:
> Properly describe the PMU present as a part of the onboard WCN3998
> WiFi/BT chip. Enable Bluetooth part of the chip too.

[...]

> +	wcn3998-pmu {
> +		compatible = "qcom,wcn3998-pmu";
> +
> +		pinctrl-0 = <&sw_ctrl_default>;
> +		pinctrl-names = "default";
> +
> +		vddio-supply = <&vreg_s4a_1p8>;
> +		vddxo-supply = <&vreg_l7a_1p8>;
> +		vddrfa1p3-supply = <&vreg_l2c_1p3>;
> +		vddch0-supply = <&vreg_l11c_3p3>;
> +		vddch1-supply = <&vreg_l10c_3p3>;

Again, please double-check - I see UFS VCC is on this line too and I
would guesstimate that antenna supplies may be separate

Konrad

