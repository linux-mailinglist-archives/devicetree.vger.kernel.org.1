Return-Path: <devicetree+bounces-258425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N7LL845cmlMfAAAu9opvQ
	(envelope-from <devicetree+bounces-258425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:53:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C02E682A2
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CFE982C0C3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD74831A072;
	Thu, 22 Jan 2026 13:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dw47YnyJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GKK1otCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1CB325707
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089501; cv=none; b=Zhf4pIwoOTFf/FCM7eO2R5jTKhHRUwPy40sK+x7vYS+TkET4rpH77dM+AHAJZR/en9/y+NfGpVCUgVZ2FaD9/jS/ML4x0qI/iWz1rRmhHyDYfOJxonpD4G2u/eWnuusU0lFyzGNkPUWnYG3/IslSevMPzKR6kRm+cOQlFqsw0UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089501; c=relaxed/simple;
	bh=zvCB63LFnEjdtIx6luOoekU8E/I0ECmc0pzAnnziwXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tw4JblmTkCLIqeEAEE3O2E/OL4Nc1JatIGR5YvesdRmiEQx0wSNwJK85Zi2cB5PDPrLotmmJxKdeAt4ENV2W8bVVFsU3bM3OG3KC9D+awey8SdOd2boWhIUaIt/Qi7kPF4Qi+3ljKnmczzZgdCQBI4m7Bg60+yqOwvZmeT/i7Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dw47YnyJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GKK1otCL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M82CKt2278771
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ehwO5LCRInJQM6vPkfsO0mRLXSEQICDcdEnsiHaqUHA=; b=dw47YnyJtrDeJCM5
	wJYJ54TRymRwHwwKJneOJjUCyGQF9JLqOGdsQpImL93qHBZyvkqlUPDhPelYJ38s
	tbxGXr5uRXFVurgQRv2doRWiIMpZIqGI/xpILS9N7kBMyoFnHcANuS/ZuN/GMJBA
	1b1kyc/CycwTZ8q2rKyat7HXK2ebm7xYkIutV7/7UtTZs2OPGz61XZj48PbITt1W
	wEc2uFvBSVorZW9d/RROIUZ/3cVyB4VncWVCqsxm0MiqfThK4nVzdn3c8LDhmXez
	s7AXqXTcGET4VdKqSe9Z2l91enRGMQ7EDr3HpTzEponiD9dyNg7xfYx1NW7XDVWm
	V71cUg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7fatg2s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:44:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b137e066so31577685a.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 05:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769089498; x=1769694298; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ehwO5LCRInJQM6vPkfsO0mRLXSEQICDcdEnsiHaqUHA=;
        b=GKK1otCLaaLaz4OCFytQ7tM+vIisq4x7MexhXzkdrsENx3Z2+XDxqM0K0v+ClJ+gRR
         2XKgOIV+B9QnE0RBglD08z/gjdO6d3dJNxeh++cuOmSYvpyPvj2Wgfb+AExSzD8pYYOn
         nR/QZLYfrduUO9OMSN6B7db6ZQR5jxkOvizYVj04yWOE6uCLBA6U7UYRXQTv8s+uvpgf
         fH7AiFJEqGaP4k81arVO4pcOrxqQ0umUTqZlle/Lg8fmZIX0tzAL1S0oCgIyfI1kTpR8
         dd/YrcX3VBE+GKpuQrOz868SLIo5rcOAaxhZPB0n0cs4Y0P+CwR2JdsqFwK0wfq4DhzZ
         woQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769089498; x=1769694298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ehwO5LCRInJQM6vPkfsO0mRLXSEQICDcdEnsiHaqUHA=;
        b=MOaiAF6YXd45I/vi85e3Mc8JvPef8ZYt6HPiy62B1Ku0IA7xS3Jx1CPJLLC8CGVG5U
         1E3rKVbYW7EnO31X+YwT7x64zHWcUvv6LE9awKvaw+WHHN2r5Z4iTH5l+ErbCWhO4y3F
         /zDcIRvQQBEXE2mE5oNh0r7NlL2e1usCIABZUkzj+Q4jQW5qCgx5m7qFkB6z6V6kjL01
         B18BHTJVG3LObXT2GmcupKtFT9Z4ILwcw35CXzwt0vXKAA24Rgc/PFcttbFLXS9rJfIo
         y70pYk8sKR43RXpA9y//LiU3aJtmGApKCueGR3AL8/z/3ccAZ+4y01ky4xhziDvaj86S
         SRIw==
X-Forwarded-Encrypted: i=1; AJvYcCWBgZUbv50tKHrssgx6fO7qQDl43hRp7htFpWTJO9zbugVe76KWG0N0P39MXF2PqNBdK8GCLoPs3EeG@vger.kernel.org
X-Gm-Message-State: AOJu0YwcdIMBGo7kMAh0dEqmySAgnG/av/IaJ79PXZ+QgJ2bKFS821GA
	KKsYaRrt7ubaq7ulnMgNKaRodSC2gr5RZBlYuxfuonstSUFGyJhmij2l+iyCBsUc95aS5/FDqtw
	heUWtJDTH8ENg3B4BB+ZopCqX5TNhkJy7kHgIg3QddeUiIY81Tb+2IparU84nj+MT
X-Gm-Gg: AZuq6aJd5kz5zISt5++RecVnPe5x2pBFtYJ50z4aaI8FY9hcR8SRH2r1vb2/SitqZaJ
	JEsDRHdjk03IFURHqfKW1oWevMLPCfFH+idaP/7u8iOoTtWQYVYct1aMPq99QvfDv6dzAqi740X
	/Fdg0V8bhQinaCNwAMRBRMHIFkugutMbW3hD5MFf1KdhGWgoAgly8eF+0u83Ihw8zYULz9IeWWK
	jDGlzmHG75Tw0jUPRibkpTMeGyVFCNUxgKmmHZMJao4PAT+GNqQX+RqNipyjThnVTKXXClxerqc
	3ShLuC/6dD7goWYe3wrD1RhBta5xBU0LZawV1IzTKB6wom8g/1ztXHh1eAb2TAl9sEVQxxjYJic
	7EI7gWzTJjt8hc6wjmxAcy+t2QCBcpxk73CGp4D4N6LJD/UA1sssgyKOnjzVcB/oCXkM=
X-Received: by 2002:a05:620a:4710:b0:8b9:fa81:527b with SMTP id af79cd13be357-8c6a672694bmr2200108885a.5.1769089497729;
        Thu, 22 Jan 2026 05:44:57 -0800 (PST)
X-Received: by 2002:a05:620a:4710:b0:8b9:fa81:527b with SMTP id af79cd13be357-8c6a672694bmr2200106085a.5.1769089497144;
        Thu, 22 Jan 2026 05:44:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65831de21e0sm1129568a12.28.2026.01.22.05.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 05:44:56 -0800 (PST)
Message-ID: <825c3e7c-469a-4d69-b298-18f2edf72ea4@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 14:44:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org
References: <20260122-sm6150_evk-v5-0-039b170450a3@oss.qualcomm.com>
 <20260122-sm6150_evk-v5-5-039b170450a3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260122-sm6150_evk-v5-5-039b170450a3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrx72kTS c=1 sm=1 tr=0 ts=697229da cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=fwfv46HyQb7ozjPenEcA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDEwMyBTYWx0ZWRfX5NRg0Wyu7pip
 BjK2PK263z8BPgw0OxjupcthREZMzHp96zPuUSBOPGKaeBu1UShNU7H8pNy9KLSqmIKB/NonCI0
 L6795Pwu6mCltE1zumuEkW9IH2TfmZ5njGYXnuLw9RiTKYc6BM8Cw7s09lThddq7xK1d4d95XUJ
 j9xEms1+Qv/xG/puVSS5VMDW+wYUvIu3lbtp5OsS35gQKi7vGWpM2IU9Cn6usu0fDfMbVYLU9jO
 BLLt9UycuMJvuI1e1vCPJ+rrIkjSrWDrpIGAZ/8440gPXtq6dw97fPJ3qJa0EoNmS7cqLf91IH9
 IxBNgF/+W8Ddpxqbgqnv4zJH404hLbJjK2wmzgDStpJpIUySn3SgssQG7ISgJhyJRg9UVtUAUjR
 bOE3Fmc5OZH513+yZjUPBxZZ1qiY8odzxKomM01ie0w0AYpXGgRUgP2B/MczpNhDSLOz9gytGKW
 1VQJtfz9mJzar4d7M2A==
X-Proofpoint-ORIG-GUID: gorBRDm6DxZ3wQp2h1O9-CHd9j9KpJDw
X-Proofpoint-GUID: gorBRDm6DxZ3wQp2h1O9-CHd9j9KpJDw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-258425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email,1a:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2C02E682A2
X-Rspamd-Action: no action

On 1/22/26 11:48 AM, Wenmeng Liu wrote:
> Enable IMX577 via CCI on Taloss EVK Core Kit.
> 
> The Talos EVK board does not include a camera sensor
> by default, this DTSO has enabled the Arducam 12.3MP
> IMX577 Mini Camera Module on the CSI-1 interface.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---

[...]

> +&cci_i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	camera@1a {
> +		compatible = "sony,imx577";
> +		reg = <0x1a>;
> +
> +		reset-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;

Let's define the pin settings for the reset pin too, otherwise lgtm

Konrad

> +		pinctrl-0 = <&cam2_default>;
> +		pinctrl-names = "default";
> +
> +		clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		avdd-supply = <&vreg_s4a>;
> +
> +		port {
> +			imx577_ep1: endpoint {
> +				link-frequencies = /bits/ 64 <600000000>;
> +				data-lanes = <1 2 3 4>;
> +				remote-endpoint = <&csiphy1_ep>;
> +			};
> +		};
> +	};
> +};
> 

