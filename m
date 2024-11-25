Return-Path: <devicetree+bounces-124318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 548C79D855B
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 13:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13CA72896BE
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77BDB187876;
	Mon, 25 Nov 2024 12:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HtGERbQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CA61552E3
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732537291; cv=none; b=o3z3p8fqPUOCEnhfaUvIXYef/FELq1+W2DdhCclHJMW1iUAbZP7n52du7/3OX7P1DeFPLopQx3xEkc+h8CO/zE9Hw5F2+YO4oqt4ST8Xhymms3Eso8UbFYKzF5b846LBjFKEn20Llu8ABkUCzLAZqsF8E1is6wzh/t7h1Zlg068=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732537291; c=relaxed/simple;
	bh=Xun8L5uQ0SPhaUj4P1wBPJtCieaRpbRBWBM7C6nWscI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NNlls/Vzq5cKExlIQ4xpMfwI3Yc19jzMUkY2Bo/eqFFCiTFTSlC0I/UfaETMfQKh+peCGunuVu+eeA81Tev9GK9jG6gioMm76o2Mf1Qw3eOI+rq+qBiGNto9I90P+xnUma8xDrSUA5okXn0idgymDU6BxOm/OuxpiaMFEsLY+5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HtGERbQF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AP8hvKV015976
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:21:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gDBzRlkGCEyYFmZ5YmtwhBflQYtmhi09NNPtB9yI/i0=; b=HtGERbQFnQFOzFv4
	Uz7ujJTSAXT7EXMgN3uKT3vyXeickcjmAyfD859wdZZAkCUOfG4fV0J3rgMMj4P0
	QsBvxJ29cTZ3hWFR2a1bajVLKJy9rrSGOgCljd+jsG1Gtz78QgokY0zpgyv8xMps
	hXQa2iCeTh77aNDIZAcvX+7q0LSw4IHrwKDbMVk2PvaLOthdAFvx40NhVPRnH7Rd
	r9VMBZQ6gtPmm9dNZ1fT1ztZundGV4EBbblKA7N7igeUw469O5t8/8ACOZG4Cve8
	bc660XCK9qxbONvjxyFTfDrYSKioLzV2NmR+M/FMfDSQ5aw/LllDnMpGOPXpnm2k
	Hr3iPQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 434nyg0p8c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:21:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-460a7a53e1cso8442631cf.0
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 04:21:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732537266; x=1733142066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gDBzRlkGCEyYFmZ5YmtwhBflQYtmhi09NNPtB9yI/i0=;
        b=nJXjCEKDt45p5VhclaZonMdd8SHO1x4CrNEZkszczmlZ6y9nYe1wpqFh+dITwnpZwU
         LAzseIOK2wkyS9ihUvruYhXVIdPWz1VajPak7++kOn04D5XT1V2GOGzUduzswUZPmkiJ
         l5JkAeXATURdhN1C7/ZHhWVC4CjqatrJcCgIFDHSzmLOPUV5DPGov2Rf9x/CIM+xccNp
         Mg3wfu95h/cmXwJMXnrFcvPVh+FUqbuc2MLtWdP9GAA+gUC25t/+caw6hmmnvhcMAZ87
         x6KPlskWZE18XxIeo845tcK0As6gYc4irDESgUmS0Dnl6kctD6HySApKejPnw6nmaa8i
         0WgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpIAHzJtPv1lq/spcrqNnAG6/SvQnn3JdEPZ3MTOnPObh0AaiKVsL0UFiKxLNUR2gPcTexSOPPThgS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3RFw93T01DHYHw8PbJJXh2XfUHCpZJTlc4jyqtZ2g/n6njH0S
	i9O9a2hQCbTPW7A7JkXbxHINxidjCJ32GCjArde8DQ/aSK9nr1b7H5r8LQOO6V9w8dMFAeW2VY3
	TqwvikGzGfnLEdh/eVXkFhsirXe32toiCiDZ7eEdVSFCA2Auyjv01zwQFENWr
X-Gm-Gg: ASbGnctJUIvI9VB1J1MiRcCprMZTkPbrXWZd/SF4EVOia6v/FgjZgT1X+yZCmPDd2ah
	GeR0dBl1tuf36Dg0KPCOkmvo5E2pXdyTUpIHvDwDWuqYqlJs9DDelT0tBslssc64eDIjaiRGC2v
	a7qZ2Nu6lZOb3Cjmxaif9PFHq+3mhf+QIDvGpwC5Pv8RBNwwyfYYt7uUProbVwGWJybPRGgM0aI
	vG2p8+1oHWGqkd99uso3UGSkcoX8x6/8y+Q/0AsYS/EQIiCDZ1w73dvdaktKkTcJrLdYDCGaCIe
	2GWyJS6hDtg7oYeZ9U2DdiKSP1tFD/w=
X-Received: by 2002:a05:622a:2994:b0:466:8c48:7222 with SMTP id d75a77b69052e-4668c488b82mr26078361cf.3.1732537265766;
        Mon, 25 Nov 2024 04:21:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG897EHQwM/DGNzZZKU4h1dAJu36wkURTvQ3FH3Ph9u3QiO5bPEdDagAHgNEDb2GbIGXUHf9g==
X-Received: by 2002:a05:622a:2994:b0:466:8c48:7222 with SMTP id d75a77b69052e-4668c488b82mr26078101cf.3.1732537265315;
        Mon, 25 Nov 2024 04:21:05 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01f9c2dd2sm3976328a12.18.2024.11.25.04.21.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 04:21:04 -0800 (PST)
Message-ID: <af6f4b48-7e9b-4561-818d-150fe954d821@oss.qualcomm.com>
Date: Mon, 25 Nov 2024 13:21:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: x1e80100-vivobook-s15: Use the
 samsung,atna33xc20 panel driver
To: maud_spierings@hotmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Douglas Anderson
 <dianders@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241124-asus_qcom_display-v3-0-002b723b1920@hotmail.com>
 <20241124-asus_qcom_display-v3-2-002b723b1920@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241124-asus_qcom_display-v3-2-002b723b1920@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HAEazhRJLEkYDSUAJzMmqc5zi9rjhkQb
X-Proofpoint-ORIG-GUID: HAEazhRJLEkYDSUAJzMmqc5zi9rjhkQb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 mlxlogscore=969 clxscore=1015 mlxscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411250106

On 24.11.2024 11:00 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> The Asus vivobook s15 uses the ATNA56AC03 panel.
> This panel is controlled by the atna33xc20 driver instead of the generic
> edp-panel driver
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
> index f25991b887de3fca0092c5f81c881c5d8bd71aac..dbc85aff50a95bfc2ac11528d1901979ec7b1501 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
> @@ -407,9 +407,13 @@ &mdss_dp3 {
>  
>  	aux-bus {
>  		panel {
> -			compatible = "edp-panel";
> +			compatible = "samsung,atna56ac03", "samsung,atna33xc20";
> +			enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
>  			power-supply = <&vreg_edp_3p3>;
>  
> +			pinctrl-0 = <&edp_bl_en>;
> +			pinctrl-names = "default";
> +
>  			port {
>  				edp_panel_in: endpoint {
>  					remote-endpoint = <&mdss_dp3_out>;
> @@ -475,6 +479,16 @@ &pcie6a_phy {
>  	status = "okay";
>  };
>  
> +&pmc8380_3_gpios {
> +	edp_bl_en: edp-bl-en-state {
> +		pins = "gpio4";
> +		function = "normal";
> +		power-source = <0>;

This is <1> on other boards.. I'm guessing you verified this against
at-boot values?

Konrad

