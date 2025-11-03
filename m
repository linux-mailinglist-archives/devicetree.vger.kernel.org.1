Return-Path: <devicetree+bounces-234247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CFFC2A962
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 09:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55A0C3A6E59
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 08:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A919A2E0902;
	Mon,  3 Nov 2025 08:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bZF9dkzB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BzVfzwo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A9A2E0418
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 08:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762159034; cv=none; b=Lb1QReAdVxtKWYZkwJnULknwXYgrFPiIdorpgd59jOA1RxDKc0jM1oVujMNG+oLHz1Srji+kugnkKKxR496nimYPB07uZW/teB4i777A4DZu6hH3tNFeqdLkg3YMjRGFn0HDlGDiLFUzrJSvRNnHAqde8XO8eJ8mMIKIdijd+PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762159034; c=relaxed/simple;
	bh=skm6x5d8I+uSY+fxLrqtLL7d0aBYYN0h7FQYty9btHg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DrfA3jUNCP0Gt4xLFgXp+SeJKoKJthuEtREts7RQJt5x4Lm6mGQ0+AcOJtE0q/okP6gx240ueofRfmSkFYIX5n6DQM/uZVKbVcfHRmFpKAFC4lN6p1/woEyp/syuK46MYwwk6Rojj02HxJIFVKr+pkh5NjO6xrs0kGMFesGAfQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bZF9dkzB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BzVfzwo6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A38LjNs1303511
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 08:37:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nxfYEmYqkxe9I64Jt37v1r1L
	AgjhaDXjQTd8b8LMNGI=; b=bZF9dkzBty7u8M+wJbp6L4YSEjUQ/5sUI9G7pac/
	GvXEiA3Dell9aFb1bodE+LD4Und4qEud0c/7ucYodn+48YiVBKgmgbyYUCFnAmTW
	eJgtOj8wF8rVOrdPOeWj8J+BQc6D9UsFndjGcePSQvest142NVewahDpi+vV2txl
	86QjwLqLv36UVP+AF3wqlRU72tiUUP26mfOI7V7r4NngvKtJ4Wjj+lSYRHpHRVCA
	8BlrD7DyOFhNtJ1e4HLm9nck6C1YL6jv/aHwWkpQrAb/JSTwsDGBO/wZzWMEFdQj
	ki1x0Fm5UGdF2MCgfKgqmTxGBcFw1oCA4uiNTdzEdh7YCQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57jn44v2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 08:37:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27c62320f16so48365625ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 00:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762159028; x=1762763828; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nxfYEmYqkxe9I64Jt37v1r1LAgjhaDXjQTd8b8LMNGI=;
        b=BzVfzwo6/kuf/ZxGKAnPhLxPSn3IVm6l/DGb1AueE7pVKeSbzT6gb+yrNCQtobS0RH
         Td4iSNXFIN8PaCH8VOEILXcpS7pZzUxuczK+vVat3X35SecMV8fm+OjLGRxInDf7JOww
         LxUb2c7XumTNpNoKbp1wXO0Sk1yXs1DwqMe+GramWPk8uMlh8dxLF0rdfrYm5J/qipns
         buS6s/v45/dRqQwTnO2hMv7iz7CIECeJFJ2zGPtqoCHPR8dOQHi/s57UR1FgcO38PPDq
         GnHGBkjwXd72at5KIBpW0R6GnGsh36RoWvPbSIQ6RZuczYW8TwRWVr66KgFUs9GM7ZCX
         Hl1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762159028; x=1762763828;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxfYEmYqkxe9I64Jt37v1r1LAgjhaDXjQTd8b8LMNGI=;
        b=hxZ5OmzqZ08+ZpE+egk9asBo/56xoIT2xixoTm6DgWTi+F3KU637a1kHK+Gw3+cA47
         rYYZ08NjQWQwBzJbDePzA9At/IgePh/7W3KQNw6UPfy5LW0wc2hm2sB4sxEnFdFhZndH
         ggWOoYzl3XmI6gC8wf9L5+L7YYOYrWwrguHAUGE/bEgxlyTqOyilWhGQmkAsx6SyKAXa
         JXACjuZooqEf6SF5j5w1zkJxQpfRgfLKAXUDikXtRhxNNzrPvacrCMS9en2ox0Cfso6L
         GIw7g0Ypp+bdhDb442FJGX5bMDv/RVA8ammnx05CgU6IQ3wbSre0CFT843JGfI7ryY3h
         qzGw==
X-Forwarded-Encrypted: i=1; AJvYcCUcN6ZM2Bf4gi+ddwoDZ3eJ0zLAhh3d7o58gcH8X60w+Cj0OyVyYSpMrczv+4nSHBIar5bszKuK6jUF@vger.kernel.org
X-Gm-Message-State: AOJu0YyHh0+i007l0a5mJRvjpi0LiG3aUed98uODEihNkmQYCWUXPGYA
	8UqAZ8F1FztfwpwPGrDuHZvJbbZHq4J4Qai4snGIx9cHpoi6SDloVXS57LUpDAcF9uaj1Qdr7/j
	5IpaR0wsz9lqnDGbbdvO/eVAiKf9DXTugRBcUjTyVxeSmYuYgxaN5Tym0KVcBn3On
X-Gm-Gg: ASbGnctKCOhn+VMlwL47UzLpA57HGsHt2dZumaIqrK86NEChAxwaoDk7UYuY4wUMH8u
	ZuetbAIViP7vdq1cbBOD8XYa4rA4QmjqzX5YuM9t4Xqr7IpP0hKqJN3NUzJamRVLRF1aK2TvxFQ
	LkZ+aiXRV1eHbwpU1KmQx/Go9qLxv48tpfXSnHGUrfE3/UAKsZvRDfLCYTevYUZC3gdwCxJk9Fb
	UYmH4pd3nTqM5FHZrNGpFdb4Mlgo9js1c4IwGl2UlzZf+EeNAwDkfZ8j9yVcWviRIvBGHVmiSer
	5xn6lZTr78pZh2XQUQkpOXXPCoef8cFTaxL9YOM/4d2z3EFVKC+Axx6ULkqxEhkec0m7QuWZcNK
	488DFeuSDN2VBdi92BrQbBnNpow==
X-Received: by 2002:a17:902:9a43:b0:269:8edf:67f8 with SMTP id d9443c01a7336-2951a51115emr96421725ad.52.1762159027271;
        Mon, 03 Nov 2025 00:37:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEg79jBe83qZ4qcFrRUL0Cs4zucPSebSAbF6GkYrqF3XDiBJBW5qwOvoRCXhg+yjXEA3w8txQ==
X-Received: by 2002:a17:902:9a43:b0:269:8edf:67f8 with SMTP id d9443c01a7336-2951a51115emr96421055ad.52.1762159025910;
        Mon, 03 Nov 2025 00:37:05 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269a66cbsm112235015ad.89.2025.11.03.00.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 00:37:05 -0800 (PST)
Date: Mon, 3 Nov 2025 14:06:54 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v16 10/14] arm64: dts: qcom: lemans-ride: Add PSCI
 SYSTEM_RESET2 types
Message-ID: <20251103083654.a4u5vapgk5io4cr4@hu-mojha-hyd.qualcomm.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-10-b98aedaa23ee@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-10-b98aedaa23ee@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=StidKfO0 c=1 sm=1 tr=0 ts=690869b4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_kws7oYgz0zWIvm8_ZIA:9
 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: dPT8uRxYTN9CsyYoTw8ZDn9Ytbb56ID2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA3OSBTYWx0ZWRfX4RrzRrovLrCm
 6KeDY8SSlvzWNj15E/FqJ2hO2BETHiVjNAntUGVEsyEvQuyvxJQSZanPcWyaEDQ45xIJkKJAjQM
 KJy7CqWxmQLc8Jxu/+Bd/XzudGbFnmxIYNQ7Wbxe87uZT6gYfMEUIcfi3dW/a0jFJY0buGYxwfo
 LdwLA885mCU3MEo65nLIOQWk2n9tE1SLiSsDee0/mS63JPxSwWxgape2mLXfGFc13lsnTBJBUkU
 BDsKXeTdx/jjsQl24oRUy9CLm3msSFVgQyqfnrGO9mpWNDeAJEdtM3CrkS3djMKi7VZ4/VObHyU
 D3HUA316/pz5CHgHZ79JVW6w0WpugZD7a0VnYzJz3O5VLDxd+7o5SB4CwgH7Xig6rLYMSyNoqt4
 5VoAdCx8JHVrjs25B2UDQnDvNHKCiQ==
X-Proofpoint-ORIG-GUID: dPT8uRxYTN9CsyYoTw8ZDn9Ytbb56ID2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030079

On Wed, Oct 15, 2025 at 10:08:25AM +0530, Shivendra Pratap wrote:
> From: Elliot Berman <elliot.berman@oss.qualcomm.com>
> 
> Add support for SYSTEM_RESET2 vendor-specific resets in
> lemans-ride as reboot-modes.  Describe the resets:
> "bootloader" will cause device to reboot and stop in the
> bootloader's fastboot mode.  "edl" will cause device to reboot
> into "emergency download mode", which permits loading images via
> the Firehose protocol.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 7 +++++++
>  arch/arm64/boot/dts/qcom/lemans.dtsi             | 2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> index c69aa2f41ce29f9f841cc6e6651a8efc38690e19..41ba0f4d437727cfe0c51e3d355427f37dce7f46 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> @@ -722,6 +722,13 @@ &pmm8654au_3_gpios {
>  			  "GNSS_BOOT_MODE";
>  };
>  
> +&psci {
> +	reboot-mode {
> +		mode-bootloader = <0x10001 0x2>;
> +		mode-edl = <0 0x1>;
> +	};

Why is this reboot-mode mentioned here ?

Can this not be directly mentioned inside lemans.dtsi and similarly for
other SoCs ?


> +};
> +
>  &qupv3_id_1 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index cf685cb186edcade643790ba22f6a900beb85679..5bb27665cfa95954543f7a66ec424452ddeb24c5 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -622,7 +622,7 @@ pmu {
>  		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
> -	psci {
> +	psci: psci {
>  		compatible = "arm,psci-1.0";
>  		method = "smc";
>  
> 
> -- 
> 2.34.1
> 

-- 
-Mukesh Ojha

