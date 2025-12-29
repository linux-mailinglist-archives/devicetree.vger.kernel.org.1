Return-Path: <devicetree+bounces-250214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78731CE6DCC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A49EF3009425
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB803161BA;
	Mon, 29 Dec 2025 13:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fB6ymhof";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DGbKoNhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D433161AB
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767014487; cv=none; b=RoyS33LxfpKVCis0fdE6n6hUYqz2Valy39/g5L9slGE9z8qqAEUGRcEabdmniQAFCVmqogco6j/y1NMLGpGFj8rVgLDYv2yN/IleMKBq0BCRBS0g9gQI53d5usNncT3l6gpq7p/DYHyEiBGl0TtmiFcoGPMq7LHDJZndvX5Y/Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767014487; c=relaxed/simple;
	bh=ZChbbDHC5fAQLxNMTY/4TrWyyZUcad3MbyfTBpI+nhs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W0ny6IGTdU+ZlhDbH/bJzi1vGZwKBhXwTi/TVxJ44GM2zvospMHnEnwEr4l5I2ALmyZHWLCLc/A22rXY0o76GL1ugrSMIX0sYRAaUOOdemLtouDmVmqTYgS6osskpohy6QC7t2+Y7qmxBTfxi7sKVn+KDpXMIYv9cHtl1uBzY88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fB6ymhof; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DGbKoNhX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAav5Z3371288
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dQFxvhm4/LJHWY0F4klwVfckA9ZsRvZEMmuWU+dANBI=; b=fB6ymhofdN1KGIDx
	dC7xX2ojl4qXKKwtclquq5iP5hyJIyo4k5iruZEptYX/jlqSrGs6IGQPnejgZFHJ
	L7Tqs7wS/jrhc7xib/TFRA3q5/NpDq1ZehMCDdQQTTdsKKvvvKggmsI/vIL/UEdc
	20HWFHSz+r6Ckn/FtKSmJEnfpntuZK7LbmB0dOoqrN/xVq/EnUVLtynCX8I2A4d5
	OGexwC0k1rVFRgY21+f2QZE0RM4lCKM3pToBCnCCOkdu1EatM3dBFXcdTn6cOAvD
	yH5Fom8IvQbLyWfIyn2wqWZV8FsxH3A2/XqEu3c4IKqVd+uC+E8uL4IoY0gWhxAw
	161ZSw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba4tnvkxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:21:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b9f3eaae4bso304720685a.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767014483; x=1767619283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dQFxvhm4/LJHWY0F4klwVfckA9ZsRvZEMmuWU+dANBI=;
        b=DGbKoNhXveuIsSTp6phf5OLnXP7fuTURDoJ1nQdAs1r79tc9/B37Q+EedubJc6ozHd
         n2dYSgufX/YRuMPj810fIvFnD8df5ImTOC8FLiPFgdxdxVyZfJLznV+QF2AjoFmask4g
         auCX8/pENnCpkkS8Tpq9HJ4Uy5IDK6c6jNjJ8BjDaODSwbJU9gj+zLuZmKBVmyDfQMmJ
         61VpxqXr4jrlHneEWg4djQoyP9OxbP8A3aonIPJsNfkM0s//iLokZzJDXOiyivTpSLMQ
         5WcMbmVEf72PMoK8/ubxbngNDMbSEoINGzbcN6O0fbrtVdLR7KR3c0zVqv6hgjKvis1a
         j0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767014483; x=1767619283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQFxvhm4/LJHWY0F4klwVfckA9ZsRvZEMmuWU+dANBI=;
        b=YypToGqfQg4568MlpWJStVL2zOeRz8P7o+n/8dUihxLppsGlh9ApB90CHkJwyGdv3b
         ZidyhzSGA9NAADeFTpUxt9j+HRyPRfYwWMRXuj+SK1bFkHzBvfZQqA0T2Nou2yTpDMyn
         h6YJJZIshU3VZ5NUFZZmdjtjBM++JWZ8hF6Y9DNA/fiWJBrP+U5aprj1xtLkCfs+g/+Z
         phRZ+iFvxIijUnneVw77DghIMUnzffLnodPTWQJAIVh8zy3cUKYReitvHL5YnG4JccEI
         JKRXVSnv1+EoP+PZAWKo0YGXhsRaUyZDAzmJdJnhsqTwWfU5MAIMsbFHijQAhEwLHlDz
         yzVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBW9klwElbYDMQYJfr2W6B2tzlL6FAk++yybkFN/JUCZSQNMHQ6Jw51MtgTERAFtKC+Jc8SwtJtC/W@vger.kernel.org
X-Gm-Message-State: AOJu0YyFNxi0VKBD27gwBfGJbtlseasgDOUEgWyIbU5n43rK1jBXI4OD
	hvFu/qir8nVEDvRXoLm3HGmpYl0IP9GvV52tPbtNI2ny8RaKz+nDQPUJQxZy+VG31oT5EbqGQa5
	ddcQd4+xXiUzxgL+drF0VUOQHhxCR/nsaKqZRrU++jr08Fgl93eVLe43BerIvlTp2
X-Gm-Gg: AY/fxX7MGlo8/CpxWtOKBFhIn/OOw0iDQwrPAktF6DIRffuaOU4lQfvTCNB2O/cOGxu
	7lP6IfVUfROJphH+nHpNeVayaBSn5iTdrQOSvfXjG8rN6ughtgU2L/CeCsqT1rcyHg7hgBBObcm
	ChHPbQ4OVax+0YRw2paHGHYjOrek56Y3meDhJDuHs39JH7btu6eALktB9PWVidQAE2fzYxWBFlR
	AIVaP9x8euymGGJXTJrxlWuJq1JBEFdMRzsfYc4peh11TsgLlv4OG34kFhi92JMON9LJ/2uR3Lb
	+DxE6hlRP1NthhFq0BTDYBBWpa7JwedbrWym0XdyVP8x7vYswMV4yzGmJD4WyaXHCIcMKyNEct4
	yZfQf5cc3fHK2CPgK7tfXpjiHOAsyjEADYCN9KkcUsrOymzKnHJZM+IEcG8ChOUDX6Q==
X-Received: by 2002:ac8:6d0e:0:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4f4abdfc9b6mr233744341cf.11.1767014483560;
        Mon, 29 Dec 2025 05:21:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7uNc0BU7MwWHAX9o2IkDbtGYyWIU80dvKOL3/iaMyzg7IlzfM2y2oSXq4sLPfqUR3dC24cA==
X-Received: by 2002:ac8:6d0e:0:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4f4abdfc9b6mr233743871cf.11.1767014482994;
        Mon, 29 Dec 2025 05:21:22 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90f53c16sm32017264a12.1.2025.12.29.05.21.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:21:21 -0800 (PST)
Message-ID: <4ab39442-153c-4e0c-83f5-373195b06ba0@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 14:21:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: talos: Add CCI definitions
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
 <20251222-sm6150_evk-v1-2-4d260a31c00d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251222-sm6150_evk-v1-2-4d260a31c00d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G+YR0tk5 c=1 sm=1 tr=0 ts=69528054 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=BlzpOQTak3MflN9jAokA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: aZuKXDMlwwzPMhH2O9p_khFjYlIwvpuJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyNCBTYWx0ZWRfX98Y9ZM24N82m
 SICNqR0JtOgOEnT1JCTlD6g5c9s9CpMr8HFg0ecLyWGK1FHOfH4fe9DIf6mKE8DvAjAnQ+51LHF
 OrUtOTgMpMgYpBjxK5zTWzE8tYSAdGL/AcfUqiK7Riz2gZ+bW/uPWr0yFPTqc0JzDDnli9AV+kM
 l31deCkZ9Vc6uUElTcCrQLHl0zk6JOMsIz0skVgkCe0pAW5s3Z3kYak6DT03ECXk9OzUDw9jGB6
 BA7uKJ8Oalh30d6pRjFTaA4UdFE+b/NSxWLQmZpG2AGSFj6WWd40hbnDVwAuXnU/jYKHhDhAYVx
 A7daDK9JuoKtmKRmuZvHlHLgr33vdHMTLVAFRaifeFECBo5AllCuW6joDgKj2hE98SWobhChObj
 97AjA/jNXuEqaS4gCXBSWFpgciR9SNVeyRa1zIXx5nWWMuMw5aLBHadFBZEgh18GYSENR6nM5r7
 0E2VeY3PIrTQczB6kTA==
X-Proofpoint-ORIG-GUID: aZuKXDMlwwzPMhH2O9p_khFjYlIwvpuJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290124

On 12/22/25 9:44 AM, Wenmeng Liu wrote:
> Qualcomm Talos SoC contains 1 Camera Control Interface controllers.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 76 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 2e2fa9dc11aed6e8413488302710bc219ca9b64d..ebb1807f0222c075d4207163ed4359a55616d903 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -1550,6 +1550,46 @@ tlmm: pinctrl@3100000 {
>  			#interrupt-cells = <2>;
>  			wakeup-parent = <&pdc>;
>  
> +			cci_default: cci0-default-state {
> +				cci_i2c0_default: cci-i2c0-default-pins {
> +					/* SDA, SCL */
> +					pins = "gpio32", "gpio33";
> +					function = "cci_i2c";
> +
> +					bias-pull-up;
> +					drive-strength = <2>;
> +				};

Please match the style used in all reasonably non-acient additions:

cci_i2c0_default: cci-i2c0-default-pins {
	/* SDA, SCL */
	pins = "gpio32", "gpio33";
	function = "cci_i2c";
	drive-strength = <2>;
	bias-pull-up;
};

[...]

> +		cci: cci@ac4a000 {
> +			compatible = "qcom,sm6150-cci", "qcom,msm8996-cci";
> +
> +			reg = <0x0 0x0ac4a000  0x0 0x4000>;

double-space

Konrad

