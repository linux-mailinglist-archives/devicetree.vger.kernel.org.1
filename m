Return-Path: <devicetree+bounces-116727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1E09B3C90
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 22:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A050282A2D
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 21:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359AC1E1C0D;
	Mon, 28 Oct 2024 21:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mS0SM146"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A5219048F
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 21:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730150132; cv=none; b=HEt8daKVhHyiOUZe9t2EeziouIba1lVP6+5j89GvOqOHs8KG3Q2HnlT+qlrBjciqhGEKwMBZrlD8XRd24Mn8cSOhAYsp8w7eXJVt2ZKMc5vYG1C/UAHeYPskxLy1nAeQiXEjpa4nRzIcqsxARm7b0rXP+F3YtUAy/P2qo+8rGx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730150132; c=relaxed/simple;
	bh=mkMUtGo+Oj9yvO0/GL4Zp22hqsDNuCYQvmiCc5GQLko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a0u5RWHp1eTKLvdB/EAkeDJ/5Q6c8FNF20wd4SryhaFpRRZ8ix+yLpwqdGTQ5YVjJvWfvPfxqP5tm6WHVzo8mlvyRcihuiQvydfWSwHLoVzbn+WKrmgLw3Zz007Nl2VKl1bHs8f9BmQ6J458brqG3kGr5gXAiSYOh8ZfYgmord8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mS0SM146; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49SB84tx023560
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 21:15:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tGkHjXmWVQjraKaJ6wwurxHm
	5JCQa5c/z0VsW8zE1F8=; b=mS0SM146tNlumwHQZn5jjze0HBfwr2VwH2t1p0cM
	V8aDkZZ9Pf1itoZgnVL8f95F2TtEU0I9YeV2g1llDIiym20+pLMFTi1mWi/2vaac
	DSFUNw9ggDmNcziuJ7OAYQvTXtznS2vBllQwlPfkLr8CA0d5f+RXL1HhQLi8a1/v
	5uZk14gX8j0Nu/zyF8koG6DRwhEVAUpIIUDC+47dUDvUBc8N1cnQiN74D7tyIPtq
	Iy9j8jttPivmcCmkGc9sefCrA6ZzwveC6y/Oh5rSwS8s38zMfeEe7eyDEdZSmVR4
	Ujo4mZByw1EeFumrRXXK8dCpWfwlRrUQyAwej8tSZuwz8g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42grt6x88w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 21:15:28 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-71e6d31b3bdso6614310b3a.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 14:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730150128; x=1730754928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tGkHjXmWVQjraKaJ6wwurxHm5JCQa5c/z0VsW8zE1F8=;
        b=RxzGWmmNB66YigFDaxkCMp5aHdtmZ8xlsZEvy13ov+v5hVCizCUMsEmzuq6/vtGzS4
         4tzK7VEvC7B++efVDEwjezEqMyvZe1z/2VQp/QiOMRbpagqx7tjRSROMXqtn4B3bNTZl
         03/wdpSDYdu3stBtAtnJCIKXpDlvC3GH01/qb1D0cPHDOBp75e2c9MK/uTSMv3eHvxDR
         EN4kMd7eywsdEf70boOH3nsA4/k3gkYbsImDj2pwK5CZG3bqFzY82wt5YVj5mXU+HKUb
         qx/itoAS/IJVGYcmZuT18LOiZZAqG1tD4uUbaMp4ob99jq6RWOagB2O8eL9utF4RrRvf
         b9SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgM0sFSWJ+uFYXURtk9QgC6RVb4phsE8vF6vnJFp1NZ4LOKyuyYN+qIR64O770qqht+MMSED8pRfnD@vger.kernel.org
X-Gm-Message-State: AOJu0YxXglDW3CMvuF5dVwWnX5JkrUrXmSSxV/35HCSd06wy/slVLWUf
	p5XDk5AHlJnvr/qckoI4s/TJVIG6LW7z1qs/FRMIJo2XVcUI3exjkhVXVGbZmsefSglUyA9BJ3l
	/YBq1zx2K+uF6g2jlYUo620rIpAqZGkF+kNzuaJJ4RP6ovuZboSjJuufHSe28
X-Received: by 2002:a05:6a00:4fc3:b0:71e:410:4764 with SMTP id d2e1a72fcca58-72062f83b02mr15359433b3a.8.1730150127727;
        Mon, 28 Oct 2024 14:15:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLS4bXucVxPkbGCTLBguqswLvz+psebCz/QBAAb4p4RpFPYgkJ71k2/L7RSrziUNRgAsspjg==
X-Received: by 2002:a05:6a00:4fc3:b0:71e:410:4764 with SMTP id d2e1a72fcca58-72062f83b02mr15359374b3a.8.1730150127214;
        Mon, 28 Oct 2024 14:15:27 -0700 (PDT)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a219efsm6252180b3a.168.2024.10.28.14.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 14:15:26 -0700 (PDT)
Date: Mon, 28 Oct 2024 14:15:24 -0700
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, cros-qcom-dts-watchers@chromium.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Shivendra Pratap <quic_spratap@quicinc.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: Add PSCI SYSTEM_RESET2 types
 for qcm6490-idp
Message-ID: <Zx/+7BCOXY/qR3zj@hu-bjorande-lv.qualcomm.com>
References: <20241028-arm-psci-system_reset2-vendor-reboots-v7-0-a4c40b0ebc54@quicinc.com>
 <20241028-arm-psci-system_reset2-vendor-reboots-v7-4-a4c40b0ebc54@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028-arm-psci-system_reset2-vendor-reboots-v7-4-a4c40b0ebc54@quicinc.com>
X-Proofpoint-ORIG-GUID: jj7YLFic5Qs5WHhcMRdKDt7RPiwmIEqR
X-Proofpoint-GUID: jj7YLFic5Qs5WHhcMRdKDt7RPiwmIEqR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 mlxscore=0 suspectscore=0 mlxlogscore=863
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410280165

On Mon, Oct 28, 2024 at 11:44:58AM -0700, Elliot Berman wrote:

Please fix the subject prefix, it should match other changes to the same
files.

Regards,
Bjorn

> Add nodes for the vendor-defined system resets. "bootloader" will cause
> device to reboot and stop in the bootloader's fastboot mode. "edl" will
> cause device to reboot into "emergency download mode", which permits
> loading images via the Firehose protocol.
> 
> Co-developed-by: Shivendra Pratap <quic_spratap@quicinc.com>
> Signed-off-by: Shivendra Pratap <quic_spratap@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 7 +++++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi     | 2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index a0668f767e4b..9c141244a7b2 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -617,6 +617,13 @@ &pon_resin {
>  	status = "okay";
>  };
>  
> +&psci {
> +	reset-types {
> +		mode-bootloader = <0x10001 0x2>;
> +		mode-edl = <0 0x1>;
> +	};
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 3d8410683402..5360d0e51a65 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -850,7 +850,7 @@ pmu {
>  		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
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

