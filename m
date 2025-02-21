Return-Path: <devicetree+bounces-149691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3C1A4021B
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 22:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D6F219C7D8B
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 21:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78BB253B7C;
	Fri, 21 Feb 2025 21:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VnJ3Vlxs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F27B20126A
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740173917; cv=none; b=CMu7ZH7KwRqTqZRj/h1J9rn9WYVZj6srsRNCS2SUMg6sWD4Rfj96cwH0qom/8ptDHExgQpWJ5GZUJrCg0B+d5juG5x2tD4P4uVzY8TQ+gZnBzdY+GVcVnAingfXvMUTYfrK/Qr2phasYre8UZvLbu6bBx1LbGaCs6vBtEIqh45k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740173917; c=relaxed/simple;
	bh=IBkOH1tAujIMIld5Y0K6nJEIXF1q0yB8Wrv8ujg0wiI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jcKKZVIkTkBAtsiFVbj3CK/5JdV6TZe8GUhsFNpJdWUOnHgFMwIsrqlsz1Chmq2PCD86MPaRt69/Vfk/fSjVscmZokaynKFy56ekoWOmh2tzBjwybpG4LNeiPFYR8pJE2c1K9lpfsjM84DNR/xGckC7IPSRlBtDbjZaA+b6jfzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VnJ3Vlxs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LDVWiD015961
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GEGqIXErPMXc8VdTd0Xo8EVD7trao539YyYrYV1kddk=; b=VnJ3VlxsPP5SAuja
	84F786enzzLmtqgh6IwPcgwyLXUSuvIixqaPTzVxU4Yy6jye64J9Ynv/wU7xNxK+
	SQa8lJjwmSSHaZD87/gHzaY8hZwEsd6CayZqGS4uZlxJlOPhZvFa0Z6iZNKfFulX
	178+jugqEsE85Jbat9ISeyLYRcMWm+mz6ht8EwYf4HXaeP7Q3SLarBTento34dWR
	+k6SLaXRdkul+4m7nVRazvykUqYjPEaZcfGgiCqhXsPh4TcpLa2FHcjj7wJJKyGv
	g6pXkUYO+9APyfugjaoXzKZldklTkfo08CC93Vu+nI7R5MOCpnnN/bmUJJhLvrz2
	LP+QQg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44xku6tmjx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:38:35 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e65d6882a6so2680556d6.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:38:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740173914; x=1740778714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GEGqIXErPMXc8VdTd0Xo8EVD7trao539YyYrYV1kddk=;
        b=qEkh3LOl52LXXBb2KND/RdVLaIzPUslMzLrcTODWFpGFQQZjj2l1eFl9BQTdeGPnpp
         gT+YjHxn7/zV8HVutkzuETrgLdjl07BhMKA6kmn0yYYwdOMYQX2KxzYytqHYyAhAIsLL
         UjzaWIgEuCYxOJbxyFYWIYz/nWZGijJMO0oY32qo4cOTTI1kRB10K4E4HGiIHzlIzIk8
         49ljDx6p6YpwgepzQhtqGySMvDrChNvQFQp7xGLqmB0ML7+E0OnQbA3g01nrPW8XqVrp
         a8csYmmpwuyMpfk7GgESm+e8Oi91sfsToiltyiFeOJvG1Uq+2RLMyuxXKLqYx5JvNCt8
         MS/g==
X-Forwarded-Encrypted: i=1; AJvYcCWRyH5j/vxgKsrC5OquSrzaMKgV2RB5vtwIK8MP9ipU84J7AjL6OrFtHgHcrf+/brIuI5KkSBzafpfQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwVDTc+oH/dHCGnK7KRKxCmUzpjtRor99RE4JWYQh6OrS2xZDLU
	ZXNAtW/d1NIC0WB0nVMRNSSzsJzwUbS8+YX2V36fajaK4pYH7YRgAwHwuFGjtJTAAhAWt2h9fhh
	OFAwb5t7uOWyMMATbeosA6Zn1Gr3hGpIevpfRFXLaggbQjblPzWefiEB/WLnD
X-Gm-Gg: ASbGncsFHvgyMo6y0ufxrxJOWY3qEJ3pd5zimQ2hkUPkw+lbnBJXPt5X1D5bzRPlhRG
	zqx2IGNZzXlUydCiw3Aph6Ye44Zp8W6PhnJc73nsBmqQ5FbKn25P8Yu5v8RKQ+78Y7sIkl96m4S
	z79Ea5zYyFIl9Pf90sYW9TaFDkGhVTdCzGEnC/vwHugrt5peff9mu6A5ojpXgZFMqrvox9qsv9C
	gs8HWGhGuPq8TKJVpGTqRPuSUlIyUFnvSZBX3v05K/RH688kNulDYn/72Mvlxo5qZbNQ4X1vxul
	fexh2fY2ha4JK7oJmnmtVAkG8LXh0kbMISv49c+SE/TMec66GGRN4WIP6UfHEge9/oqa4Q==
X-Received: by 2002:a05:6214:21a6:b0:6e1:a79c:4cb8 with SMTP id 6a1803df08f44-6e6ae7c5824mr24980116d6.2.1740173914370;
        Fri, 21 Feb 2025 13:38:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGEkBIHDw/lt993IkXFaOsT/W0kUYMHTX3ghqlaAwXsDraeaclttfOGzvb1ylLr5/jMIBmC+Q==
X-Received: by 2002:a05:6214:21a6:b0:6e1:a79c:4cb8 with SMTP id 6a1803df08f44-6e6ae7c5824mr24979986d6.2.1740173913944;
        Fri, 21 Feb 2025 13:38:33 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbeb38e05dsm434092166b.90.2025.02.21.13.38.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 13:38:33 -0800 (PST)
Message-ID: <4ae230e9-021e-411d-add4-e7e1bfb2dfff@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 22:38:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sm8750: Add LPASS macro codecs
 and pinctrl
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
 <20250220-sm8750-audio-v2-2-fbe243c4afc3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-sm8750-audio-v2-2-fbe243c4afc3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pE7SuQSNsvtGO0vVivpX1WBH-zO3dJVi
X-Proofpoint-GUID: pE7SuQSNsvtGO0vVivpX1WBH-zO3dJVi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_08,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 mlxscore=0 bulkscore=0 phishscore=0 mlxlogscore=773 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210147

On 20.02.2025 9:49 AM, Krzysztof Kozlowski wrote:
> Add LPASS macro codecs and LPASS TLMM pin controller on Qualcomm SM8750
> for proper sound support.  These are fully compatible with earlier SM8550.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

[...]

> +		lpass_vamacro: codec@7660000 {
> +			compatible = "qcom,sm8750-lpass-va-macro", "qcom,sm8550-lpass-va-macro";
> +			reg = <0x0 0x07660000 0x0 0x1000>;

The VA macro is 0x2000-long instead

> +			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> +				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
> +				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> +			clock-names = "mclk",
> +				      "macro",
> +				      "dcodec";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "fsgen";
> +			#sound-dai-cells = <1>;
> +		};
> +

Looks reasonable otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

