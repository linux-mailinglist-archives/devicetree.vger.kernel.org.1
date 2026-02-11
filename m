Return-Path: <devicetree+bounces-264621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIKHBr8ejGn2hAAAu9opvQ
	(envelope-from <devicetree+bounces-264621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:16:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC99121950
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:16:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 039CC301CC86
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F8A8283121;
	Wed, 11 Feb 2026 06:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PQokiBAx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZXUxQ7Np"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D45D30F924
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770790587; cv=none; b=M8Aamb6r1Xrk6XR2JO6kzzCdi/Kn5MNTj+EsZfuQFv3wHsGrR0Ut0PJxjnN33lnuYsl4FzvPkryICPdrVRxD0dpUACK6H+d0xp01WtCJz1MnOw7pmGo+phl/49TRSk3nQkjw73EOUV6sYzMrZH8wBsSmsMXXCLy9K7lJTwl+BcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770790587; c=relaxed/simple;
	bh=sUFyEj2Ri3wyvQwN/rkc67EvtkTuI1Aqywz2Euk6aEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T+tV0UAaydJguGrPznL7XDJ1bRb6B/2xcrHeM2Zjys0703ce1djXebZEDoWSqEjNzERd9OvzdDAT1nkABsKLRWA99E1VkWbaWjK8RiwdrsoZuswuLCh1Dgq97j0lnM1/PUGMUDMo8s25igSEJ1/+zUYIlAYD5/5EviJhrBDCY+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PQokiBAx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZXUxQ7Np; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B57ePY4013766
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:16:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uQ5cfnvoDSc5u65mKDfUm69P
	LSKiSHzTkStzPGrgtRU=; b=PQokiBAxlfRSIM6c0rlnU0V3dXEzpFiKycQE4pIM
	VSk5B6QEh6MW2rO1gRPWjGRYpgA5/RQ7U1szNSVn5w5FGk8ldhQ8mS3E67O4JnbI
	9lbmq/C6jHSyEBC2g2vmTJmItrbBYaGZtyVuZCXBOo1/namfLBJ1hOA8BmEq+H3M
	mQYOjvoxko6xZHQBvmoditUL3P8fUw3wJ5KNyq7K1nyN6eb/0LrPPLVqhtU2NtVi
	9vNHZxCqe89XxeSlCx9n3mDdCbSZO6/lX6US/F/1f8N8jFeUXOPmTLkVm/8ZEltG
	PvxNOwvepgln7k6WeoCSPSKRUJzw9gltWhciFEGnf+RQxw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8aad9v97-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:16:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71304beb4so1522128885a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 22:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770790584; x=1771395384; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uQ5cfnvoDSc5u65mKDfUm69PLSKiSHzTkStzPGrgtRU=;
        b=ZXUxQ7Np1BocWtkrGgdFb1lcvR7Ygs4zTz2hdqDoTY9IT2oVeoxg5uNzYkjFvKsA3l
         UpsJlcXeRU7844gpH3vZveIJB9eJcBjtqExNudPw/VIfvk4yXx4w9HB5+RKUNSS+X0Vx
         Jhllvfe/jbXsa431PX68nzcvldeO3fvR+RBGsPEG9XCMT6a5nUmRl27cul9ZDC95lTN+
         wAafj2cDC0fr7u+IwVRfNq2cfvncpflTNwe8Xtb+I0MhhYxSW86JtHG1Dw/hvjNv6WBf
         DIrFpdnFXaCwuNx5QwmURyz5QKVHmlVWZmQVeFJiAPgPlNWn7O+xJT2R+YMQgCI1NKCg
         8VeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770790584; x=1771395384;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uQ5cfnvoDSc5u65mKDfUm69PLSKiSHzTkStzPGrgtRU=;
        b=UYwd2VfN9hmPTTnVnhXGYdKwccB4YR4YCJGB6veizmXbuH9Xhh3GB1wzdlVprLGeCL
         JE+PpblbqZABN2TanA6Quv7fmPPYZdQCIKnruXO9Ye2+53G7PxfIJgo0Yxx8yt8HRkyh
         RibFQqczWJthjaVYW3sqIcnK51trUl/qe8kf4Q/BeCXbUb9ExoM39WOW8hjt5kH5YXtj
         WpcYOmqh2GQh5ZX9uSnxbFuUTH90dmvpr/29CptPus6+WIbFPnFppyWLjmtkRgK37/ap
         HeJI/2d+A0wdzEboOqufedmyRLVCPAOmSFLaQck8EQCTs4HVw0QyuuM01bsEE8JBRpLL
         W2Ag==
X-Forwarded-Encrypted: i=1; AJvYcCU3SZDpzsZCLmZBpBFP3acm68WRUDmZYfn0Ylzt2JtJXsCqhSAIHWcpinqFb+EJZYaovj0my7ULDNJh@vger.kernel.org
X-Gm-Message-State: AOJu0YzU9WIsxcFz8QdWS/J7YbGNAiLUAhCMT8qX5AQQayLyhCg7MJKb
	oYxpZQdnIvQUlcgcVop2UEMxs4Us+0HFCFHASsif1/Tfy6afd3x3/KlNdaiDvVW0kNF0attlMhZ
	Ykvg0bXFxKIwpPmPL3+JSkUHYkpxZzzBMhYYDF6j8y8KV02K0rHO4+RQUmLJeST0Z
X-Gm-Gg: AZuq6aKA9vsDmMHYXiQ1MIRl0cgt5ESSWKMf+rY5nKc3UlZy6j7kE2x55owFEjIJWoZ
	Gb20e2fpMRYTY9rDZWnU/aUCJLLGUTN1wl8dhpJ4yihVVIYXs1kWEQU3XRHLtVpuepo2oFKNymh
	MSoPq94dBneD/r0mxkvCirpLN721OdPM5mPJIIlb2YZBTz/OtOcBOcO8gc7yUIH77CP5P8Bj1LJ
	u1ctMsqboWGroi+RZwhmX3zWstf7C6CBEDOBICSU7Dap/mFd61pW/T/bumGyS8jJJQmFC1PHB4a
	jRxMnGKlYbGVgLbFFEMKiXRwM1b8wBHc5qTZ6lZIEQJMZphoeqXBwxv88al0/snrtX/8HZdqiwi
	eH7hH3meosGuq9cLtEBWyxpZTAYJP+EPiMPBqauX4MTXo6Lm7qP9tQI2BFVgOye6p2JBP+kidiL
	b4T9AfprOllw/whBH2bt8Pg7+orsdcniEgwrM=
X-Received: by 2002:a05:620a:258c:b0:8ca:2f33:6475 with SMTP id af79cd13be357-8cb1f6ebdffmr624586485a.47.1770790584251;
        Tue, 10 Feb 2026 22:16:24 -0800 (PST)
X-Received: by 2002:a05:620a:258c:b0:8ca:2f33:6475 with SMTP id af79cd13be357-8cb1f6ebdffmr624584485a.47.1770790583836;
        Tue, 10 Feb 2026 22:16:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f563564sm134631e87.4.2026.02.10.22.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 22:16:21 -0800 (PST)
Date: Wed, 11 Feb 2026 08:16:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v13 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <nplo7goccggnzfq4244rziaa2c367r5ki73irrjtvqio2362bl@7b5xfxboc7sa>
References: <20260211042534.162007-1-tessolveupstream@gmail.com>
 <20260211042534.162007-4-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211042534.162007-4-tessolveupstream@gmail.com>
X-Proofpoint-ORIG-GUID: T947H3Rzo3R9RG6-eoAR8U7qdOahghNR
X-Proofpoint-GUID: T947H3Rzo3R9RG6-eoAR8U7qdOahghNR
X-Authority-Analysis: v=2.4 cv=OoVCCi/t c=1 sm=1 tr=0 ts=698c1eb8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=pGLkceISAAAA:8 a=RnWuNeR1-upU8acwNyQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA0OSBTYWx0ZWRfX6dgjnL7sqkKE
 sixm8/wRBPMwZGMGUpGniZhSxbnpsolhBmerSYsHGFzbbRuPajD/Q69uPj9hTw9fkrCrZ5xqUu7
 X4MUU7xs246IporEG8HKhbCI8EVdHzYCTI4rZHZlu0b7Sv1EmcpE2/8zqakIZMMgftdxHi5lszK
 E2kfjJ5W9Yf9vfwjLiG+/kpttsVy9pHImK6Zx1fsoTlPDDwxI5neJ5/riDtk3MsLloHmgsbsbiY
 vrLAw0Gbu3SljcoE07cDcKInYVrybMvcn+hFsnoV4GtL5OLyLfL6mSYc545L1e9yVfHMbxCUxqH
 VnZPVul3Yglrx6wV2B/g1ba8gXTe8ptQ7o5ZyIc7aCVzCD1vl0D8i7CM59ABgvkddY1EwGK1/wa
 5sum/7AAEWb5ImEeQc8jeyr5sfwIQ71Qw6KUh/LYjdF2Zi0Il/m7inzgO4lmeYAcH3nKT/3Mqvx
 ZvQBiVebOi9zwd58pHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602110049
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264621-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,a600000:email,88e3000:email,88e2000:email];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[1.23.142.104:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AAC99121950
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 09:55:34AM +0530, Sudarshan Shetty wrote:
> Add the device tree for the QCS615-based Talos EVK platform. The
> platform is composed of a System-on-Module following the SMARC
> standard, and a Carrier Board.
> 
> The Carrier Board supports several display configurations, HDMI and
> LVDS. Both configurations use the same base hardware, with the display
> selection controlled by a DIP switch.
> 
> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> can describe the HDMI display configurations.
> 
> According to the hardware design and vendor guidance, the WiFi PA
> supplies VDD_PA_A and VDD_PA_B only need to be enabled at the same time
> as asserting WLAN_EN.
> 
> On this platform, WiFi enablement is controlled via the WLAN_EN GPIO
> (GPIO84), which also drives the VDD_PA_A and VDD_PA_B power enables.
> Remove the VDD_PA_A and VDD_PA_B regulator nodes from the device tree
> and rely on WLAN_EN to enable WiFi functionality.
> 
> The initial device tree includes support for:
> - CPU and memory
> - UART
> - GPIOs
> - Regulators
> - PMIC
> - Early console
> - AT24MAC602 EEPROM
> - MCP2515 SPI to CAN
> - ADV7535 DSI-to-HDMI bridge
> - DisplayPort interface
> - SN65DSI84ZXHR DSI-to-LVDS bridge
> - Wi-Fi/BT
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   6 +
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts      |   4 +-
>  .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 131 ++++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 609 ++++++++++++++++++
>  .../dts/qcom/talos-evk-usb1-peripheral.dtso   |  10 +
>  arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
>  arch/arm64/boot/dts/qcom/talos.dtsi           |   8 +-
>  7 files changed, 901 insertions(+), 6 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 0ca6b50a6de1..a5f763cf1a55 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -609,7 +609,7 @@ bluetooth {
>  	};
>  };
>  
> -&usb_hsphy_1 {
> +&usb_1_hsphy {
>  	vdd-supply = <&vreg_l5a>;
>  	vdda-pll-supply = <&vreg_l12a>;
>  	vdda-phy-dpdm-supply = <&vreg_l13a>;
> @@ -632,7 +632,7 @@ &usb_1_dwc3 {
>  	dr_mode = "peripheral";
>  };
>  
> -&usb_hsphy_2 {
> +&usb_2_hsphy {
>  	vdd-supply = <&vreg_l5a>;
>  	vdda-pll-supply = <&vreg_l12a>;
>  	vdda-phy-dpdm-supply = <&vreg_l13a>;

Wait... What is going on? This is supposed to be a part of the previous
patch!


> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index c7dc507a50b5..cb32bfe732fb 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -4304,7 +4304,7 @@ osm_l3: interconnect@18321000 {
>  			#interconnect-cells = <1>;
>  		};
>  
> -		usb_hsphy_1: phy@88e2000 {
> +		usb_1_hsphy: phy@88e2000 {
>  			compatible = "qcom,qcs615-qusb2-phy";
>  			reg = <0x0 0x88e2000 0x0 0x180>;
>  
> @@ -4319,7 +4319,7 @@ usb_hsphy_1: phy@88e2000 {
>  			status = "disabled";
>  		};
>  
> -		usb_hsphy_2: phy@88e3000 {
> +		usb_2_hsphy: phy@88e3000 {
>  			compatible = "qcom,qcs615-qusb2-phy";
>  			reg = <0x0 0x088e3000 0x0 0x180>;
>  
> @@ -4412,7 +4412,7 @@ usb_1_dwc3: usb@a600000 {
>  				iommus = <&apps_smmu 0x140 0x0>;
>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
>  
> -				phys = <&usb_hsphy_1>, <&usb_qmpphy>;
> +				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
>  				phy-names = "usb2-phy", "usb3-phy";
>  
>  				snps,dis-u1-entry-quirk;
> @@ -4476,7 +4476,7 @@ usb_2_dwc3: usb@a800000 {
>  				iommus = <&apps_smmu 0xe0 0x0>;
>  				interrupts = <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH>;
>  
> -				phys = <&usb_hsphy_2>;
> +				phys = <&usb_2_hsphy>;
>  				phy-names = "usb2-phy";
>  
>  				snps,dis_u2_susphy_quirk;

... And this.

-- 
With best wishes
Dmitry

