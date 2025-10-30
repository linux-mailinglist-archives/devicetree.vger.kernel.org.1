Return-Path: <devicetree+bounces-233203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE83BC1FD77
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 006954205A6
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E9CC311587;
	Thu, 30 Oct 2025 11:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uq3eLJh9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E/VG6QaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A83B31770B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761823949; cv=none; b=r89dA3+4bpDUxhjCryXk7lksdI5g7x2syS8PpyCetwH6WEcDPF7Im9bjh6gDtdggTOBUHKEt6FMQ/qtfL2dFAygtq5GSZRT8I2cgtsa0IYy3Mgvr6I9DpoQniQHWSIHF0G8aCa5dK9d1h7j4lA9OEDwu4alfiPhvy1JuC4TX1Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761823949; c=relaxed/simple;
	bh=lf2SZXPHOeNKfnR+2AGHeP0WDmv17afwkbv4+3+gA8s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T8e+Vm2t9DUR00u1NyZ61NiW3eerpETj7EvKiq2xoTaFIAsoSQluYR/z54G44ynj926VHB1HQjsBsXaR+vs2+dg3zKAIazkZl1hT6s3MYCfMUXubYgSFGzA0C8Tg4ygtd2xHQ//Zde731jMgDkoO6CB4SjeLz2ZUv6vMcIAiZFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uq3eLJh9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E/VG6QaZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9PF8A3509177
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:32:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YNULkZggaBVWafuH6G2UI48mTzyPJboSv12GQ652rF4=; b=Uq3eLJh9ra6dJgB8
	dG4OIxQmZZlTKSlBq7XkdfbuzNTwrhA25TyyDfC7sI8w1uhUHyun2tCTk/GjmB9h
	O0Cjn+MJVOt7uLg+BxoZz4i+QTanLGrQpRFfqoY5QUkXYemjF91rz3qoDtXzkEjk
	VPvSdW8YEz4mbibu9xHJU01kgQeZL6FVUPAgjUGaJc2gQAZsQRxFkpG9XNDaZ8Vf
	RKHQgs+Fk8tFSJQ9BjZe3vWVTCu6/fLcruYAAy0hFLGRW9ljbBIl4B3VeAfbHz0/
	tJhCUNqm9vATl1exoKHMrl4uhikFRhm72BL5Rtbd4uF4XaCRhixgoAbYMOmWcsP1
	ltPTMA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45cdgc33-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:32:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ecf8fad13dso1552871cf.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761823946; x=1762428746; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YNULkZggaBVWafuH6G2UI48mTzyPJboSv12GQ652rF4=;
        b=E/VG6QaZpJ1XiI1YHgOOd/EbJ7cKMfb2xU7nwN8PYIBqMFsrwA7Zs0XelGSzP7mbpF
         240jq0nPqxLfXEL8PMdbBQEkaCYpCkaYh3CWc9MdSNQAL65loo0LDU9cP36Da5uu1Inr
         Zi1cMMgiZkLDgQdUJHw1LDPo++tCzfB7J+B/+CBrq205bCcTO1OALdl8fL6m2hwn9hHA
         kkCnwur3LxHw/evHKG3yFvBSPuh84l7zAa7puiB24UsFVNHDu1qfWQ5/+bI32CCTf+P5
         6Ep6X/xcieDqTMlrM9ZTriJ2E+rmYHaHKxRRsNQcj1Buxx4xdhPzuTQ5PC1gmVjnsL6B
         ZFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761823946; x=1762428746;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YNULkZggaBVWafuH6G2UI48mTzyPJboSv12GQ652rF4=;
        b=s9XM6xzOpU1C7tIs7JpJGn1TPK8XCKCJWdr8oWmclDfZHbturev/UHSqIpJ136qC79
         lBtHyBaxj29ETs85SddKpyDtyFTVsO4PpYERom20TNySKoXqLb+80yKm9nwMd3S5s1xN
         h0p96Xh3fYcGQO7mOwp/AnkctnPliYbcTyymBDQYvtodHnYzQ3Sf21G3ZSMd7VTu8vDi
         LKQ16OQfLtqSglVokTGHUQRq5ufLCoc5ylTr1RJNJDKdFKIe8KxqLPJ2XVkfHyexZlql
         anC4E4V/o3xT4/cElwPdE0cLZN8JJZIRpVsgwWCwiMQMt9gx8//3nZUAXpfuMRwdCMsP
         W6oQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDfEsfZhsFsO+uS7w8IYAa/OykwLyiWy5D1g14ZyFl7oW0RtE228+UsLniU8KmYVHN8dB+vj6SZcBj@vger.kernel.org
X-Gm-Message-State: AOJu0YzTixm/UEzxeULDw3a3n1KtjZxkmccJBr40gqhKF5Wno1cKARKx
	z46gMhK16i78UGfKm6l+1nZCKxDiBemnrEkoGr9zzeWbgtBzcwUDr55KtVrIykHbJCwOQ0m3pi5
	xfsbwRbbO/CA0+vzv6Kuh2ftDUoflVdGeDKl15oYeL/HHd8ceU3wacD9i5D1IhhFvhoelTYhh
X-Gm-Gg: ASbGnctL5fXrdoP9hdr57YRzhZ1dnW6I8jg9uaXdiTyTLp2Hyvs+qKsl2kNIcMPE4Xd
	NamKvruKScliJdXdxm0j1lrccaexrpkUNQCaGExdKhp1BwtetxwlytWwkQj8OfHfgmmp3vJwKTM
	0Xq2FAOuaVEQFBqindVgExvEBror7G8tVVuSXl4wDZqgjVhVjeQqRuzbGnh6id4TX77bazPwhCy
	wxJ+zqAnvZq93/TB5CrFhPkyjmbuKml2MD4hb0dHY9lL4UG3KmHJS7trgW6a4aSQDmB4YbSLBQC
	f71afXU++EBaWgZL2EJwbF+poo3Dkq+cszuu+xmwXs3b+fIIQognLNEsKwO6kS/TJSIButXnGC4
	jxcT9qkLfzrL/i8cGhRLFEYtaZ3j6yK5x+oVThRi+5DiaZNEzMyeo6KnL
X-Received: by 2002:a05:622a:93:b0:4eb:7dac:7b8d with SMTP id d75a77b69052e-4ed15b96605mr50153091cf.6.1761823946368;
        Thu, 30 Oct 2025 04:32:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGllTvEh/j7ZHlMm91hXr1OxceGb0VIuQkkd1NhOxJeediP+Nlwluw0PKrGl2uJiszadcidLA==
X-Received: by 2002:a05:622a:93:b0:4eb:7dac:7b8d with SMTP id d75a77b69052e-4ed15b96605mr50152721cf.6.1761823945826;
        Thu, 30 Oct 2025 04:32:25 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm14649254a12.2.2025.10.30.04.32.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 04:32:25 -0700 (PDT)
Message-ID: <8d32460d-894b-472a-a262-4c6a60fbcef1@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 12:32:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add support for Pixel 3 and
 Pixel 3 XL
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
References: <20251030-pixel-3-v2-0-8caddbe072c9@ixit.cz>
 <20251030-pixel-3-v2-2-8caddbe072c9@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251030-pixel-3-v2-2-8caddbe072c9@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 46hFljfxn7P5nu64bQ8Ats2QQuSi5STe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5NCBTYWx0ZWRfX1jUsQQIl+OnJ
 lGyneNjRurG4YXB2rw808U5pToD+8qWBaqZdXenrIZyAmvZjiJmp97QbuoYPHsG14TiBvm0KWm/
 Vv2A3pogO8ckSl3EDQffUuTADR4y+fU3VW/qp2ovhbYSgVqYhF/uzv0yDefR/zSrPa6yXhWFz6Z
 +WrhcczG9Dd0BmU731GuYPHVkP0H+Df1d4zDzCbBDha4/JxovTq++Vs0yGzB1//3TJtFd8UlQiD
 KtHCdWjeuWYtI/luovxX7KJaoB1pkYD4DJw1yqrzFTU8mSH9HFH4qJvqGb5uq0IUh4O5I/VeeQ9
 +Hb85r6rSMo9PAGxTvNTEIT5s0xIAzj92o/7+/3STmdbh5Xvu0tYGrhwz2Hs9fM9kS/yzdPAjAH
 MIWON88mjt9cz/KtRAy1ySeep6xgLA==
X-Proofpoint-ORIG-GUID: 46hFljfxn7P5nu64bQ8Ats2QQuSi5STe
X-Authority-Analysis: v=2.4 cv=ItUTsb/g c=1 sm=1 tr=0 ts=69034ccb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=aBSXULQCl1RkmNN2VsYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300094

On 10/30/25 8:24 AM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> This adds initial device tree support for the following phones:
> 
>  - Google Pixel 3 (blueline)
>  - Google Pixel 3 XL (crosshatch)

[...]

> +#include <dt-bindings/arm/qcom,ids.h>
> +#include <dt-bindings/dma/qcom-gpi.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "sdm845.dtsi"
> +#include "pm8998.dtsi"
> +#include "pmi8998.dtsi"
> +
> +/delete-node/ &mpss_region;
> +/delete-node/ &venus_mem;
> +/delete-node/ &cdsp_mem;
> +/delete-node/ &mba_region;
> +/delete-node/ &slpi_mem;
> +/delete-node/ &spss_mem;
> +/delete-node/ &rmtfs_mem;
> +
> +/ {
> +	chassis-type = "handset";
> +	qcom,board-id = <0x00021505 0>;
> +	qcom,msm-id = <QCOM_ID_SDM845 0x20001>;
> +
> +	aliases {
> +		serial0 = &uart9;
> +		serial1 = &uart6;
> +	};
> +
> +	battery: battery {
> +		compatible = "simple-battery";
> +
> +		status = "disabled";

You added support for both non-proto boards based on this platform,
there is no usecase for you to disable the battery, remove this line

[...]

> +	reserved-memory {
> +		cont_splash_mem: splash@9d400000 {
> +			/* size to be updated by actual board */
> +			reg = <0x0 0x9d400000 0x0>;

Don't define it here then

Normally the bootloader allocates a bigger buffer here BTW
(although it shooould be reclaimable without issues)

> +			no-map;
> +
> +			status = "disabled";

ditto

[...]

> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		label = "Volume keys";
> +		autorepeat;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&volume_up_gpio>;

property-n
property-names

in this order, please

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <0 4>, <81 4>;

Could you add a comment (like in x1-crd.dtsi) mentioning what these
pins correspond to? Usually it's a fingerprint scanner or things like
that

> +
> +	touchscreen_reset: ts-reset-state {
> +		pins = "gpio99";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-pull-up;
> +	};
> +
> +	touchscreen_pins: ts-pins-gpio-state {
> +		pins = "gpio125";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	touchscreen_i2c_pins: qup-i2c2-gpio-state {
> +		pins = "gpio27", "gpio28";
> +		function = "gpio";
> +
> +		drive-strength = <2>;

stray \n above

> +		bias-disable;
> +	};
> +};
> +
> +&uart6 {
> +	pinctrl-0 = <&qup_uart6_4pin>;
> +
> +	status = "okay";
> +	bluetooth {

Please add a \n above, to separate the properties from subnodes

[...]

> +&mdss {
> +	/* until the panel is prepared */
> +	status = "disabled";
> +};

Is it not the same as on the little boy, except the resolution?
(don't know, just asking)

Konrad

