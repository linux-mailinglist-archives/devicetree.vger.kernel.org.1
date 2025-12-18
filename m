Return-Path: <devicetree+bounces-247808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED36CCBC79
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C76A3014B57
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F5432E731;
	Thu, 18 Dec 2025 12:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eGKf7Hix";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WE10zUkP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD0C32E686
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766060763; cv=none; b=NW/Uje2GJcCYd1hFQnwT6zenFnvVcI7uH9QPuKWh7qWEpoWNOXhbjiqsJw5tI/5URCl1JDDiuAPxS/RcpqJ5zX8nXK8MtA9kwwGRew7HlYLuItIfWUQ6fqTAVDRt+lvJP5p08e9KVm9ehTNjy1F4Vk+/lmznHu7x4Anggxv3+MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766060763; c=relaxed/simple;
	bh=pKmU0fwG5vsNUByzsdzUiSnAznD5hFkczWB8RpIVjnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Osqbnm4vNqII9F4bDanlEK0vZKhvXowIITzcRXgTbEz+3Kq9BffZ0iyQTEyRSoRHNB9F65kFpbcz8Mk3MFhVg+xHih4tx35z1MGuwwcs9Uq/3TV/3WaNXsQKs3/RUYyzgfm9uhagi1/NNC80xr5FV7EP6xrAY7WkQrNsJDMojEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eGKf7Hix; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WE10zUkP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI8rXB0237503
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g1kei3VviQUzx7YE5/174xV34BfK+CaqS8GVwkzgtt0=; b=eGKf7HixctNSAkSt
	UMWag1Py5IDuQYaD9Mvf9vZLBrscJoS0uzT7FdibRHY+sZc93cz7uWKYg93u+FBt
	7Do+u3N9DqYTpi3s+Yz6CUWdpas7m46YzPT/ppXtqkqa4JTx2YtcpOz4hghhJRdP
	n3q7MUWv8xLBVyFZCvfGdrT9G2Sg4DuiPImGgZ50soY0SOS9+/fjecvKPrDrAYjm
	akEZucxJxdkcrrBUptZYcr8nYjaR5jjyHdVANjW40lmXa4OHkW7ev7ibuFohSOPF
	jPro6m49qpoXb8FGVV0qsslnAomxYRW2V65jvTTGW1pMRAiuNvE96snxC4NaA/Zr
	ODVWmA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b44x3jbtm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:26:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f34b9ab702so1160241cf.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 04:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766060760; x=1766665560; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g1kei3VviQUzx7YE5/174xV34BfK+CaqS8GVwkzgtt0=;
        b=WE10zUkPuS4T92xRxfHdsilyMJTdJQge0zHvPWu1evOLgUCBgTaT+hNyjjdf1wY08P
         eSp/mjeCMXsqn3xt0ezOSMK/Po9sixXHZjsPdnX8GQ+K022JWxp1ZcnhF68W4mi2cl2s
         kdZiL/PRAYRmOqL17s0DpCY/USsS04ka7YALQnG+i4VY7D9qNbl4RcT4NCdUetnj1n4m
         NQIP80sN6AnGMuawHUJVxlI6mZEr/5OeI54NXkSPrFkkfDspjVu3ftx7KQIAO3FEFqUx
         j/UJOAjcbNq7pKVnJYLf1M07SSomiDr/7KAsJT4nCPmSpHowczuU1wDPoqelifsUsGOS
         SZFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766060760; x=1766665560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g1kei3VviQUzx7YE5/174xV34BfK+CaqS8GVwkzgtt0=;
        b=O3y6VX64I6k/mLvSoDRrmK+dZHlmJAyQ6vkXLM2DL2aVALHeyrohEqexdEsWdiG8mq
         5yxiL3zQ7btTxPjAPnJ0/SxOIwdS0m6L1zTHs4Clb/AoTOW2o6SKMINRiKBuafJbBaFd
         +BPTtKW2wcQNEW5I2Ih27kZV8JJLg8FP+ixlHSrgnJXkAAGyGxturE7WiBI6iTddNlRF
         C5LSYJ+S2HZzHFmf1dg0HJMb8j7ewZEdMx02ue+3BSg69lyT1/hkM4diV8R6+k+zpKfF
         Fn2q9ySg3JrgHjgDX2S60ywws+t8R3tFqprxlCp+YqenqbRxWGSbQPx1kVuiTNFD5hYW
         JxHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXK3e2nLhqjvZ6Mg1FhPYRZaUBL7VaKvbeWo+V69TivzF1cuMHbLmqxu4puhSzKtfMaZBkv1iFy3aZt@vger.kernel.org
X-Gm-Message-State: AOJu0YxSKI/0EH48NdEEWltv212v3pK1PDgutJ4xitQM8PCEEgoSbpIZ
	BiOsv+FWBzw+IAnvh6rA12IyWYB1yzzsbd7t8hBKYxoeTHbC+cK4SyX210VamOiJCTkKKjTntRf
	D6K4xFrjBgtcMKYmI73wyYOZ1BhQlVeUMOZU+Jto9VRUusSf2wUERz5AJZPV4hVpW
X-Gm-Gg: AY/fxX5pHewJnAVY/v6kVnoQCWznuH5Owp3F9e4+TafFDUmNG+5xO++4GyYDLcbxEl7
	eYdz07DjGtp4mGPNC8twiTT7uDv91asn4CWyAcE7XEd9dGltmb4CgMKC++SoGfrcX6sohSkZgPV
	pppF3nBhwou5ysnP9a2/VgjGY44yckRL6+PnooDwVntPdt/+WqXTbGrxD/AfmV7ojRQZ4cIaxfH
	WnQrnFdf2ezzKv9qdGNUMJbevUCBrhcsviC9yLn0AX3hihnhmdYPMZl+D8w3N1EOnztle6AbrWO
	GsgFy2+fih0urni1h6io3YUTajrQ+zIXNhyc4Ql67DnpkkxW4D5oxZu9b3RKcALI+KtbJRLiDV9
	oucFjmQqWVsnFJ+gzXr79qp3Y9P5APBgigAzBJ1G+wIwyYV0is0hAIBkRhwpFMXmfIw==
X-Received: by 2002:a05:622a:834d:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4f36108e8efmr15386791cf.2.1766060760470;
        Thu, 18 Dec 2025 04:26:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGxOsD6vYrUp/zDUbJN3vsyK2mh6VD2QunVUUWpY5pcH2SGoXhlbu5E2ZPMIl+YBcRjc1A0A==
X-Received: by 2002:a05:622a:834d:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4f36108e8efmr15386441cf.2.1766060759889;
        Thu, 18 Dec 2025 04:25:59 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b588b0b3asm2410527a12.35.2025.12.18.04.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 04:25:59 -0800 (PST)
Message-ID: <f86b483d-c674-4901-b2c8-19a535df4234@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 13:25:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sdm845-db845c: Use pad fn
 instead of defining own
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251217-sdm845-mclk-v2-0-7028c2d09145@ixit.cz>
 <20251217-sdm845-mclk-v2-2-7028c2d09145@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217-sdm845-mclk-v2-2-7028c2d09145@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDEwMyBTYWx0ZWRfX+coQzPklZwdt
 A2yyqO0AE/ccMvNDviLQrp2sVsHfecU3xSC5kjdYbvt3ofocnpIs40QjpQJDHk8YfR4DO5y1AqD
 0HARxNhoSlQ+/3Je4yS20DMNmF6NUu93EO977/6lTH2OHZHBRk+6aLh8lyFVd5gLlLP1FN8Mp5e
 aSbVDdZZOrKMDptdm0EboF48yQxGxJeDkGLcfMIPtpSFXFXN7hJFeID4bu47nCsano0/A0tMx7j
 LGhy9Puj7ERMcJYoVhWu8N5paGrKTbbbWZMo+Y0+OxLHx8S/CCFsimZqx6LFpKoFsJyAqsigPCv
 TmKfmwZLMLxDDp9s55rOJ7hEVBGcGkkqa9sxpXUwc8OaSfUfYqX5vIfBwZ6K16fo88RYN/iLQN2
 +cICwr5RCGVWwRyRotZvWHZEoGFt8Q==
X-Proofpoint-GUID: M7u9bIV9fjgR6T-DfjXdNzhw31_y2uQW
X-Proofpoint-ORIG-GUID: M7u9bIV9fjgR6T-DfjXdNzhw31_y2uQW
X-Authority-Analysis: v=2.4 cv=Zpjg6t7G c=1 sm=1 tr=0 ts=6943f2d9 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=e_nn8CCX7OWYOPDVI2QA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180103

On 12/17/25 12:39 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Instead of defining own pad function for master clock, pick one offered
> by sdm845 device-tree include.

I'm a little bitter about the wording - the pad function here is "cam_mclk",
whereas what you're doing is inheriting a common pinmux/pincfg node that
refers to that function

[...]

> -		mclk0-pins {
> -			pins = "gpio13";
> -			function = "cam_mclk";
> -
> -			drive-strength = <16>;

This patch changes the drive-strength (16 -> 2 mA)

FWIW it's 2 on reference designs and Sony boards, check your
downstream kernel

Konrad

