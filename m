Return-Path: <devicetree+bounces-112985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF449A4158
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B3611F24E3B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DF01F4287;
	Fri, 18 Oct 2024 14:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nnybuBjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD31F4C69
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729262312; cv=none; b=tTcymEnluMzHUAbtprryJhWFSntNb+JyFlaJ/iFWpdkMbxMYidziLAOwQ0CGNZJL/NimIKl/grRy4FVjAMjfwxTVLAPk8D3+hNFg5J9vjQ3z4ozCSjiIj6RS6GjYFEvLQPy4f/oCGJOxOq4Bcv3wFMnYSE871pJydFXM39MAhKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729262312; c=relaxed/simple;
	bh=3vtVzJDjO4hhGtzY7mL/ysZwoOF4XCQVmDf4LPXOHAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BKszBrV4NxQGboUAPcv2erKv4GzlqoMF650p6xgjDSn9qM8UzBHuE7CyipgUS1i96LNHLvR+RWTvMVDuR2IMd47REVBWV/XZTcG/ggaaQTOFp95zjcI0MabXADH3kxJIroMcc/X6UKL6oaOuMA3Ek/1Z8MiRi5KvI78f4DI7f3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nnybuBjw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49ICF006007760
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:38:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qLLf6NBGqq57X8m+i8aTVP2VFdyUUpFIAyF4cHswm/s=; b=nnybuBjwv6PesV2r
	ttOjpQG47aob8EaaNHYvR0hi6DK+m5MzrmkQ3KthMpFi36kSqye8Da1np0sAzrq4
	u20XVp5rh8BCaW6mz8uTvJIQ5a2SqrdIAOkkR15TZTSoO6Cd1qDu32bynXfxajV6
	HnruP0rIaZW82gjgz16qGGMucQadYOjGkphjFjAF1Xeaw7Fc6npNrWzPcSbLBtTO
	zG1Z14KzKiBcffkcQhSKTdhsVBO3rb9iaxLLvBaT4Ne85gJuK3f3qPgf5fPhFKNt
	5YwoB19V4VNLyW+lL0sTeJl3oPrX5bFD/N6vcbengy2UWD5ByQwLLjZFtpKt9mUX
	coVZ8w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42athc5f1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:38:29 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2e2d85ad87aso448689a91.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 07:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729262308; x=1729867108;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qLLf6NBGqq57X8m+i8aTVP2VFdyUUpFIAyF4cHswm/s=;
        b=v1asMmlF5GkPeD1BzvAFoCpvb0M438qdMMnjb3WiXUaVbJ2WPyjS+rbDB9fhQjmfPc
         Vb3WsNQrfScNjV3X3njAPjPKOHFHRNF/oUh8qCFmYf9MznycW0Y7tGB/R9gZwi1VF3/P
         zL3jsuqgUm5YZFLx7D8JtBZtirlvIllrpBZB9RFYE7ZYPQ45jbhA2SB+ZLKCst38CrBC
         LxgitzSdDv1ciDq8JbwJieWYEyKVw2hC/VN4LG1YPf5fp8YZvoWtWagRdy7aZxYnKeQn
         XnJdNZJZx0WrsKcsMmICsuPQKuE73TMkeQX4+o20ZXKL+J5/7gYbrsS6lX9c7UL0bZeK
         zr0g==
X-Forwarded-Encrypted: i=1; AJvYcCXdOoC/x/S0lzrnOgCVsPustJWOvURfsWmhpS6Ck+TQbZnk0NkEV7TiLS7UnCPcxumqlDUIQ1yz5mvT@vger.kernel.org
X-Gm-Message-State: AOJu0YzUICQcOQwcc76oyxX7AYvGvvtHqDvGeW8VtTxb7qqponHPJnMG
	4ADrYsasWOSptX9JylN6Eb5pg3wSruH5aSKKcR6D2G357RpDuK4Ac2a7UpJ70JiG1ec0lassmfz
	gtqwD/DwE7uubdTXxtGxzQ6UESXaIW7DnyxNSFnOf+vd2Ehj2uj5452RioojGctds1vyb
X-Received: by 2002:a17:902:c94b:b0:20c:e250:d4e with SMTP id d9443c01a7336-20e5a8bbf62mr15901595ad.9.1729262307740;
        Fri, 18 Oct 2024 07:38:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtifDhaDED4RcVW01Nkn3eRd9bKSd8dRYBQzz9k9SKeOMPmgHYQZ6ZEBgh3vVDhHuUSr9LcA==
X-Received: by 2002:a17:902:c94b:b0:20c:e250:d4e with SMTP id d9443c01a7336-20e5a8bbf62mr15901395ad.9.1729262307361;
        Fri, 18 Oct 2024 07:38:27 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ca0b076fe5sm835268a12.1.2024.10.18.07.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 07:38:26 -0700 (PDT)
Message-ID: <f4dcebea-e2a7-41bb-bbd4-58e34bedee01@oss.qualcomm.com>
Date: Fri, 18 Oct 2024 16:38:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Merck Hung <merckhung@gmail.com>
References: <20241013-jg-blackrock-for-upstream-v3-0-839d3483a8e7@oldschoolsolutions.biz>
 <20241013-jg-blackrock-for-upstream-v3-3-839d3483a8e7@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241013-jg-blackrock-for-upstream-v3-3-839d3483a8e7@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: hUvvbKGqcCqvihhxq50tZ9HxvlUIRMXU
X-Proofpoint-ORIG-GUID: hUvvbKGqcCqvihhxq50tZ9HxvlUIRMXU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxscore=0 clxscore=1015 malwarescore=0 mlxlogscore=999 impostorscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180093

On 13.10.2024 1:54 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Microsoft Windows Dev Kit 2023. This work
> is based on the initial work of Merck Hung <merckhung@gmail.com>.
> 
> The Windows Dev Kit 2023 is a nice little desktop based on sc8280xp.
> Link: https://learn.microsoft.com/en-us/windows/arm/dev-kit/

[...]

> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wcd_default>;

property-n
property-names

(all throughout the file)

[...]

> +	pmic-glink {
> +		compatible = "qcom,sc8280xp-pmic-glink", "qcom,pmic-glink";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 166 GPIO_ACTIVE_HIGH>,
> +				    <&tlmm 49 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {

Could you add a comment describing which connector is which (see e.g.
x1e80100-microsoft-romulus.dtsi)

[...]

> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		memory-region = <&gpu_mem>;
> +		firmware-name = "qcom/sc8280xp/MICROSOFT/blackrock/qcdxkmsuc8280.mbn";

"microsoft" lowercase would be consistent with other DTs in arm64/qcom

[...]

> +&sound {
> +	compatible = "qcom,sc8280xp-sndcard";
> +	model = "MICROSOFT/blackrock";
> +	audio-routing =
> +		"SpkrLeft IN", "WSA_SPK1 OUT",
> +		"SpkrRight IN", "WSA_SPK2 OUT",
> +		"IN1_HPHL", "HPHL_OUT",
> +		"IN2_HPHR", "HPHR_OUT",
> +		"AMIC2", "MIC BIAS2",
> +		"VA DMIC0", "MIC BIAS1",
> +		"VA DMIC1", "MIC BIAS1",
> +		"VA DMIC2", "MIC BIAS3",
> +		"VA DMIC0", "VA MIC BIAS1",
> +		"VA DMIC1", "VA MIC BIAS1",
> +		"VA DMIC2", "VA MIC BIAS3",
> +		"TX SWR_ADC1", "ADC2_OUTPUT";
> +
> +	wcd-playback-dai-link {
> +		link-name = "WCD Playback";
> +		cpu {

Please add a newline between the property and the subnodes

Konrad

