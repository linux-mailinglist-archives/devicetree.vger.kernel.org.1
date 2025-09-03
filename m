Return-Path: <devicetree+bounces-212162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EED6BB41E85
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:14:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2E675E0A2E
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48AE2D6E62;
	Wed,  3 Sep 2025 12:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GPpkCtGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0182BF016
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756901650; cv=none; b=qa7FehK9JL3RBI/Hh3syDfZYS1hNyvPKiABI5ckUHMuv8nNHsyGBbRHz7JPHHUbMXXI4oBHSVWw6JXwbUlVcpVzoijPQu3Wb8qBdG8GnMG5uFWpL1SKaLtLAtmPxiae90AnqIkveqDCjP8726yYRbJZTvFEeorh7bx43PdWz/kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756901650; c=relaxed/simple;
	bh=YtdeGZI55ezZBf39MWpOqIeT6GYRAKuljv26BqkGc7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tpj6ab8CmLhfWtrYHOHLRE8pihAoMc21zXu7Jq/tSoemj+/OglRvXfFpQUCA39ysQxS7XiMbvu0XyzZkR83m5V5pJ6PWUrdjAHzWOXribWhJtqykY4opBsgd5uml0p4tng/ee/jGbHhiJq9y+oNBc58ngIYtFVYq2yAlQZvvBz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GPpkCtGv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF2UJ011020
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:14:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KYhvAJ2yDxm3t5+1Vvt6nPPA+d/qBvKI0quyH0NlUv8=; b=GPpkCtGvFf4WhW26
	DOSF5KBPJ5mHMVBI/Pz//GRCVwmx61XgZaeJdw5eV37KinrrC9tLv0VYKMa/ipk3
	shmJKCXiY6ifnSGBHmqEqSLTsPlfSAp2kGWokxxdzsliCjpX+Hm0IHTwPDlRlAIT
	zXP8Mghrha7u4zOaR4AgutS+zvONlmrTvEQl//53juhGaojE5l9YEz2aKuHc3fYE
	dz9j+rTewSEHxAcFLWruPWYdzfFCb8jfp89f+3TYerQwkM+hhT2ymJMLGYybBYNY
	F13yHMYAbtnlWrd6C/CV0kJU26RedSAkaGjYVG4sXWQyp1+kf0paEe33kU2xV+Rp
	ALjhIw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjkhd1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:14:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso573541cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:14:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756901647; x=1757506447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KYhvAJ2yDxm3t5+1Vvt6nPPA+d/qBvKI0quyH0NlUv8=;
        b=LJKrFuT78pHX0SLq9wKeRAucNR7oQPFPKkB17Nh3HXe8LpyKag/HjKq58xvJr7GXSz
         2ylEpGtTVWIfc4P4KqwrGtowHSwDpFrREjCOMjg75iu2rrZsTOgiX5Vz6j39gMU0SMMk
         vwJY1hnRLEhTt6UVNP6UqRSZ8MdoT3k3rUSNDq7MlXm1p3X+tWk1pB0sElJTrhESEW+s
         Rs7KgenxytRGodGLHNU3df0EKwX+y6+yoJWPC8mePDNatClypSfMG9KKMJEqR0nk+rAC
         RjxQ+Np+pYMgRCeD7mJoXQFEWsuuTXk5DK59Y01sXLjbP7DwBA8j86jLflzpnabsPORM
         5vkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBBU4bf2j+1qWQyFMC3aTTGihUFxKmK1oUm8qbGMiix+dBNVKbBvGV/yhTqPf9uRnaqXfeE+ypNxMj@vger.kernel.org
X-Gm-Message-State: AOJu0YyNwCUDUeZn6ubRccnkyexr/2LyWYrWM89O1aBMDSWqYS3aiqGW
	1WUx7LNuGkVNxqU3oMfmtixt0ZOFn/tew7eBHPAsXjgbnve6uz1xe6uCvdeE03tAOecl4xek5AP
	th+l2PzWfOss6MjRe9XIteQU/IzC5JG+KnjW2mKOCpwkYL9W43A1eaqC1dk7aEw4z2XebmnL9
X-Gm-Gg: ASbGncsg/uje7oevTpEwMv3tkOZaftY6WP9s6AKNlIFUdkHgscNvLi/MicTuTaIyHdB
	+OeQz6h5z3tQccFHj+0bH46KzWNj8FN9UC+yLwCm9SiuC/qkbkacN/oUOhBHTiB9ZxL6GdCFfCN
	Jj+xP9DDNyAwwNxiEgdGMKPYU5DTvY2FQPVW9+lfpa/bWCSI192Omgc9jJ9wM8cXtgdwgw6M6BL
	E2i/LnMxX/Lku5dAe+LTE1A6obAWI5bq1n8Xomg3T13dMe0/k3ml2C2dMD5JuYkEeTp38mYO5Af
	qhcu0IXnuvgNZKgcx1pOjto8KbRBbl/ntGExHwd7bXejAlDjoKCQ38flY5xuqfH3b1fKycSkDTm
	OhneoYzKYTs84W4F5Sc8vWQ==
X-Received: by 2002:a05:622a:1992:b0:4ab:7633:c58e with SMTP id d75a77b69052e-4b313dd0295mr146879551cf.2.1756901646975;
        Wed, 03 Sep 2025 05:14:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfxXAgSIGzsPwmW+MlQE0V1gR8/fJuy34NZIUCYx2HrmLlKlVIYnJUO6aP913FkYg4ai5C6Q==
X-Received: by 2002:a05:622a:1992:b0:4ab:7633:c58e with SMTP id d75a77b69052e-4b313dd0295mr146879081cf.2.1756901646361;
        Wed, 03 Sep 2025 05:14:06 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0426516668sm777114966b.46.2025.09.03.05.14.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 05:14:05 -0700 (PDT)
Message-ID: <1df90473-551a-4c1b-9a51-af4a6fff1bb5@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 14:14:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: lemans-evk: Add sound card
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20250822131902.1848802-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250822131902.1848802-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822131902.1848802-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b83110 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=M_mJTPNyHkIBEOdhXoAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: FSLOJVwbOGZghI9UtBM2jETrjhAagTQL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX65J+vVCmpSbl
 aoqolGysmoJSUnBMdHJjhAMrKZ3WT5ZL557duRDrOVM/1JRZhQauDilfwt0WrUv1zt/anTeH5RJ
 UnV2+2OYUjQmOoe1cmRQh6XkHj5Qj02AFmDVIbwcQn4Qkto3ALEp3wmuSPHMkfvUMQvvlVCozmr
 jl9EyzdIdiAPjLBu8xIs+UH7DqYhHmU4HsVQkdUAlgqvTcKWWXETYFuu/oOWN0X7aqCb/yJFZ5m
 uqbjKeMY4f41rmKiLi6EF4DaWdy0A8/vt9Tgd7cxOcrm++HmrVhzMJHbnVgY9HEl7yDmLMHBHTG
 U2hN5nVHbRwcvSh9v6pyC7tAgJf0X7D4eqpKVyEjMQT3KmOy5P6ZTBtBObREt5ka7oW/SB7DDzm
 5nhVbl7E
X-Proofpoint-ORIG-GUID: FSLOJVwbOGZghI9UtBM2jETrjhAagTQL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 8/22/25 3:19 PM, Mohammad Rafi Shaik wrote:
> Add the sound card node with tested playback over max98357a
> I2S speakers amplifier and I2S mic.
> 
> Introduce HS (High-Speed) MI2S pin control support.
> The I2S max98357a speaker amplifier is connected via HS0 and I2S
> microphones utilize the HS2 interface.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/lemans.dtsi    | 14 +++++++
>  2 files changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 669ac52f4cf6..d67a9307cc75 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "lemans.dtsi"
> @@ -22,6 +23,57 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	dmic: audio-codec-0 {
> +		compatible = "dmic-codec";
> +		#sound-dai-cells = <0>;
> +		num-channels = <1>;
> +	};
> +
> +	max98357a: audio-codec-1 {
> +		compatible = "maxim,max98357a";

In case anyone's interested, this the SD_MODE pin is connected to the
power supply (i.e. it's always on)

Konrad

