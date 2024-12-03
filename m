Return-Path: <devicetree+bounces-126344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E809E12BA
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 06:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 49ED6B2308F
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 05:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B809317B500;
	Tue,  3 Dec 2024 05:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aexBnp6z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2224F13CA93
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733202517; cv=none; b=d8Ks3jAers9djlqn8pTpYOjJoT7uipS379i5it7ySBMKWwCZGqAcez9KaeHyifwnz14KopO212kVyrX11mj5wq1KLXx1Gx22bmRESzeFdfwPYaId4wLMHyozUPXrToYRytRSRIZzKKJloVs+9yqfp1qS+rwEP9HHAJQbwwh7aFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733202517; c=relaxed/simple;
	bh=rWELRw+pWt88DTwa4FldtjPdq+YHhDDz8qjkqx3Ocf8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j7ty9t8pIoreoHmsY6U5wadNXu4/CC6CScPJDLgzaKqex9Qe01CnJ64yS8Q+tKFrhH0+RmD4o+jFzJgCn13N0VttNvZY3cVFpeRSHZwVMDTKi6RPeg+aOC9BzfyG+qX0dkTs+7EhZ9dXOEJqz1lk1iOvEfqFzaHhA9du/Pv6lIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aexBnp6z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B2IjSn8032191
	for <devicetree@vger.kernel.org>; Tue, 3 Dec 2024 05:08:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PeB30fQL0XfKgyHxkYz31o4v69KHumpI9Fo32EFnXoo=; b=aexBnp6zeUw4DarV
	CWVCO8k3JZC9D4Kxigmu64pMjzvzPDttPgxv2n2k58aujvvcA+E8SbbW8Xx6XAtp
	mCRI5G1gTrGt5bpFkxwrgfsL8Zm70K9SlZWxHulDubxLXskB8pu3RUpGFh/q42RX
	6948EZkWQzkfbjuMlu0m89RcqL499iHBZYA8e30r2EsHiJ/HfA/uTDSctopIWInz
	Y/stWqujzygLRxg9SbL5cczotSNvkEreNQRiegPUiQi7AsrODkXKmFt7BsCg5EOJ
	PFYIfrQrlaeWZ0M4+1DaV3et6OpJwxp6a1Ey7vpFT4B32dzR0X4NvrqH1q4Khi+s
	/Jh04w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437rdef2a5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:08:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ee5668e09bso4085927a91.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 21:08:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733202513; x=1733807313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PeB30fQL0XfKgyHxkYz31o4v69KHumpI9Fo32EFnXoo=;
        b=Ukd+DS9H7zaeeww415HywetlvIYeCO9iEfaf+kFxlL/StRHQtVmEMK1G9AQwxsvNxj
         gz4ze3yGgsXLMqJWby2MEPYB/7zhedBFpWqXG2npyO0vlUJ9qPPBBcGxtGw9R9rDY2m2
         wxdNKUvLlF9snfcLlZRDXtebHZqfK51i99FnGxxMMT1m8YVyp/NE+QTN4EhMXZOnZcXL
         BYz+d8WK5GRQUzmcleg5L5nE84MEnWg2PPGTbnbsz0Mue0B4XeYmqZVifhleTzDCC6md
         t7WoXbvX+JYQ0dBmgG6rfGRGUh3E+AdZmDyauo4tdqShYJplD3OfcHU6OrKdxj/X77iq
         o7vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWzAqO9qtyLLCliIQ0O0hyLcGphYBEmT0j1fjRvgm1OkbsCf4W0F5PPszNpgpm9enMkpn6Ed6Kzrtn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy48jQ4ap+r8ibyqvZUvBHOHFGW3NEiCoUpggi50bzPt13wXLzy
	CNdy7N83/irFBxxOWA89iskZfiTrZxMELabCKrByn16AUkReFCR9OGEaDAIcoAz9A9s2M4ycuRt
	TNg1O+B4F7iGzmMIbz+zIV4UJlWiOMissfd+iAHrxtPMSAoBRLiW4CZrlkLLv
X-Gm-Gg: ASbGnctb191mmDqXUH4+3Yhb735qge+tWBbpnXJGgc+/Cr3DeS/gZM0x0R/9Jq2HT+k
	p5FNyZqoKNL7yWREOrAtfN3VhvoaHHJoXbWWgK+vWL6Wgf5iNXzGtxzNBMKO3qzaAeuyJGHJSmk
	XgMt92a0Kj0KdbhNBpd0Gitiy4y6zM1D78LnC/aafcVSs0fOyKGLqlXousieIccrtDkYPr3tljx
	EoXuez41BBAXFQWHIIm2GuMBueLujWibLy1anM6GOVlJt3APobacYgeQzHquEFMtcBUvoPgzIWU
	2OPpBM2PaGkr
X-Received: by 2002:a17:90b:1c07:b0:2ee:e113:815d with SMTP id 98e67ed59e1d1-2ef011e6854mr1839281a91.8.1733202513297;
        Mon, 02 Dec 2024 21:08:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBvtGADD0z0trB4fV2QIDKnYcHGg/a7Zv30Cn7/tlJyFX3VGmkGGs/WYRznnoQcLjF+Gvmpg==
X-Received: by 2002:a17:90b:1c07:b0:2ee:e113:815d with SMTP id 98e67ed59e1d1-2ef011e6854mr1839261a91.8.1733202512897;
        Mon, 02 Dec 2024 21:08:32 -0800 (PST)
Received: from [192.168.31.128] ([152.58.197.27])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ee7137504bsm6184539a91.14.2024.12.02.21.08.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 21:08:32 -0800 (PST)
Message-ID: <0352b36d-92fa-42ba-bc20-40cef0f9ea42@oss.qualcomm.com>
Date: Tue, 3 Dec 2024 10:38:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Kalle Valo <kvalo@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>, Merck Hung <merckhung@gmail.com>,
        xlazom00@gmail.com, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20241202-jg-blackrock-for-upstream-v9-0-385bb46ca122@oldschoolsolutions.biz>
 <20241202-jg-blackrock-for-upstream-v9-3-385bb46ca122@oldschoolsolutions.biz>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20241202-jg-blackrock-for-upstream-v9-3-385bb46ca122@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0P2sd68V-Yal_HFpcHKGTk87hYSbh5IN
X-Proofpoint-GUID: 0P2sd68V-Yal_HFpcHKGTk87hYSbh5IN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1011 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412030041



On 12/3/2024 1:29 AM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Microsoft Windows Dev Kit 2023. This work
> is based on the initial work of Merck Hung <merckhung@gmail.com>.
> 
> Original work: https://github.com/merckhung/linux_ms_dev_kit/blob/ms-dev-kit-2023-v6.3.0/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-dev-kit-2023.dts
> 
> The Windows Dev Kit 2023 is a nice little desktop based on sc8280xp.
> Link: https://learn.microsoft.com/en-us/windows/arm/dev-kit/
> 
> Supported features:
> - USB type-c and type-a ports
> - minidp connector
> - built-in r8152 Ethernet adapter
> - PCIe devices
> - nvme
> - ath11k WiFi (WCN6855)
> - WCN6855 Bluetooth
> - A690 GPU
> - ADSP and CDSP
> - GPIO keys
> - Audio definition (works via USB)
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
>   .../boot/dts/qcom/sc8280xp-microsoft-blackrock.dts | 1325 ++++++++++++++++++++
>   2 files changed, 1326 insertions(+)
> 

[..]

> +&usb_0 {
> +	status = "okay";
> +};
> +
> +&usb_0_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_0_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_con0_hs>;
> +};
> +
> +&usb_0_hsphy {
> +	vdda-pll-supply = <&vreg_l9d>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l7d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_0_qmpphy {
> +	vdda-phy-supply = <&vreg_l4d>;
> +	vdda-pll-supply = <&vreg_l9d>;
> +
> +	orientation-switch;
> +
> +	status = "okay";
> +};
> +
> +&usb_0_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp0_out>;
> +};
> +
> +&usb_0_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con0_ss>;
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_con1_hs>;
> +};
> +
> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l4b>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l13c>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vreg_l3b>;
> +	vdda-pll-supply = <&vreg_l4b>;
> +
> +	orientation-switch;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp1_out>;
> +};
> +
> +&usb_1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con1_ss>;
> +};
> +
> +&usb_2 {
> +	pinctrl-0 = <&usb2_en_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
> +	phy-names = "usb2-0", "usb3-0";

Thanks for fixing this up.

> +};
> +
> +&usb_2_hsphy0 {
> +	vdda-pll-supply = <&vreg_l1b>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l7d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l1b>;
> +	vdda-pll-supply = <&vreg_l4d>;
> +
> +	status = "okay";
> +};
> +

The regulators seem fine.

Although functionally unused, there is one more connector node that runs 
between QMPPHY and DWC3 node. For example in [1], please check 
"usb_dp_qmpphy_usb_ss_in" and "usb_1_dwc3_ss"

Would be good to check why it is missing and add it further.

[1]: 
https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts 


Regards,
Krishna,

