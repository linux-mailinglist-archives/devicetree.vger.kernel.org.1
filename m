Return-Path: <devicetree+bounces-259887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAz8Fia0eGlzsQEAu9opvQ
	(envelope-from <devicetree+bounces-259887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:48:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C77AF947A0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 019F6300371D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FFC34CFD0;
	Tue, 27 Jan 2026 12:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RYcTaU2y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TiKEMsrl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F8A3126D0
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769518111; cv=none; b=V8TWk0pOVufHRsCaAkIF0zePFX9K1ZsL5/hM569zJal4S7DBVxK7OGyCnim+rBYGDPCcj/7pMY+QdiSA2JAJkrO2gGb/RjQzM3jBMnJVK0yHryyJnByXAmqdZigrUgZkZlbrWqCA8DAM6/bL6RoHrfNLocjf1+MozYBur3q4MtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769518111; c=relaxed/simple;
	bh=abJm8ud+wthZDcNmA14V8KbikHIHkUEQP/CU7kxZUBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GdNWcix8K+p20Fd54G5YXCXM/a+/T/dfkDFSx7cR7kWB7IELbOsZwRe2wA6ZVIP9AbOQx+CxmjV0ftJ51BTOVeMKvGvR0mlX1efU4q9bOwuISFnrmmOdZVwHCxuH7QlF5lROSVfvjnQDerNntnbm1M6CHESAvnX8d/tTK+Pwoxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RYcTaU2y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TiKEMsrl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R87PNn2379408
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:48:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KzwMegFcJWuJZEMDxjb019OkUAYQhnlVuuaTLVfRxqw=; b=RYcTaU2ytaM+oZAh
	uR7m6EpB7hfUcRTjuU8FMCQqhn4bQW56FltFJorS2H8xXIzfpc9VgZjnLQ63oIfK
	eJOIawgOO9p1CJ0+sYmnwlAxjNKhkro4RVSoQIKoKkL7cqTQf72XZpFkMEn3K8FL
	X3bamy+J9U9vDzGW1ttJX0aZOsInHGPPFhXRF4OC+c9BiK9JVK6+bsa3BqJflrC4
	iqAUCZCsnDf29T6tib79D50A3+Itlw9SKDOnYPzNPeVAahZ8IdrYUOD9B3gunNxx
	GJAKMg5brcmBLjKEdECnqpc6GMb7xLk3rn/QnknbIcLlS5htiIVyDaYNQW+3Ygpz
	rGxArg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr8wa9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:48:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6d6b0f193so120486185a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769518108; x=1770122908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzwMegFcJWuJZEMDxjb019OkUAYQhnlVuuaTLVfRxqw=;
        b=TiKEMsrlFJKO1VyK3a0+2j8aEaChq/UwqzonD4pZMXA8S2/Xk4gWsEU5lJU8fGISZi
         NzjoQzs85wk10QPUCuAcwK1GHgEJL3PCHP/tB4BXyB7X0+/c4koW5jg7X0Ag0JNrbCnP
         BgxKlYDU5U1fu50RjMHmEzfdlr+D/0nj94yvK3asWgebXot7F19yL3hkFFggBaXbyrU0
         kI53yqrDVHOQ7OTs3qJw3+pW2+PKj8R4m6GEFpOwYm2IqRucb0mPSM3adWFESf96SxvH
         ogUfVwwgLhd5jBTExvFSlMXR7390ZJ6JYidrNBLUmZH16bdW0QYVETJMjAcs5jFSjuTA
         hJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769518108; x=1770122908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KzwMegFcJWuJZEMDxjb019OkUAYQhnlVuuaTLVfRxqw=;
        b=tWmN7M9R7OCcmQmQ3KBHscF+2o3x/Kz2WL6aecxolOBZ6S2c8rWyKqI4v7FAQixjqP
         FUuxSxOpUyLcqV7sQLnB46s4mqgSphPgORh0BimDXXKp1e1irT3At/gT5Qy1/faEX2Ao
         K6hab461PVck4K1bM7BiZRzBVHofo5x77KonQih2aSZVBtU+qzx2mVNNbxWFO8UAYvGr
         AF6JDs2qpFM66gRhVmQF1ZIlmaFYgQvMUCm7VnOr3luJaQ7HdU3yjRqk+2rvwhAhZddc
         Qi3s3b324znwA6Vf3aCBLrM28ImcKo6jriwVRcsHBVycnoFNjDI0TMmjrLH1A5htPjvI
         +cBw==
X-Forwarded-Encrypted: i=1; AJvYcCXp48ouhwW5GDQ2cJJ5KDqxwpPjDnp8E/l2BKOzWBSyefwPgtS3hx3PH7cEoxpD/HBeTNVoyDrUQepN@vger.kernel.org
X-Gm-Message-State: AOJu0YwaUoMaO/WBVT41tXYFcqzgr9karNQ5Vy4lKsVjH9lKji0y6eS4
	UdTmp59lwXdTl7yWPI2bWxtFqB7oxzWAX2qPS2+wgaH4DYr2DY5ADq4Pvof7WofT8ajn3n0Vs1e
	02uIQv9qt4FETwVYzmYbBFNfwJmCnPDsFZfvnBlJz8LlBjwDzQO5l0P3IcDA0u0e8
X-Gm-Gg: AZuq6aKCHvNnpt865I5909DIKVNC4UVsf0tzZjn3p0qOYwSmeRe3hgpa8ibgkn7uhr2
	3UVHPOv/lqNEzJaCvYXEVzwSGS5NKHWrOWDB3d+D7OzrHTds9qP8N4nFv7HHHQY/J4B5UQFKKQE
	XetcOLjpilaOLco+hxrqvS/R8ZyacIKjhiDrgcohyibO/wDGULCeolzb5HCVeDhq6QhA0ufJeMi
	iJCAsb7Tjt5vkQ4AniXHtAk4Qzak7LMqXi/7aaZz7Mdxer+qkooeQASD5uZ0U1w07A84Xgh9yKe
	1fitLjOOl/78zWi8vdi/kMJz9X4VwXm1U/cvIOesF5E3443e2zWIHNIDP/YBLmYDS+NLA/3QSyV
	xD9PmNqEyZJxDVrdIlkb7jGAPkmWdHkuhgmDLRKTkdIdZRLTvJEVNnQwsz+SlWaD9Pbc=
X-Received: by 2002:a05:620a:294a:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c70b885c4dmr138359485a.5.1769518108120;
        Tue, 27 Jan 2026 04:48:28 -0800 (PST)
X-Received: by 2002:a05:620a:294a:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c70b885c4dmr138356185a.5.1769518107590;
        Tue, 27 Jan 2026 04:48:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b076254sm6825765a12.0.2026.01.27.04.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:48:27 -0800 (PST)
Message-ID: <eee57d72-701b-41e9-b7b8-743bf7c38f13@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 13:48:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v2 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QGTbJvzxu6b_5GbxlDj7f__XTNU0V45Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwNSBTYWx0ZWRfX+25Bl+9+nl70
 hlTZXE0mRQOYv/dlnb3sZD9vf/0t4tOyTUzOOrTWdS7vJPLlrpGsTvx84WlkS7rwvnHyaLZ3qAy
 /K/PjRNT1wumn96OyEwRBTWOGGW6EsaQImH8KDeXPrMcLo6PJiFHEbCPJeAOGXtd8h+br1yKm8X
 9qlfSnTrqDGKHvoaovntKVhqfrUbPAarb+t1kg8c9Ib/XLzNwEmq2sC3OJ86Ye6YcKQcMt0my6y
 OIIUw3x9LLdwUAA9YH82gfc6+vDAAsNE3ncKnUyJSkRHJbjgt8rbNLVwxiuO24Quu/58osyS75f
 Par9wKCSeOUq3UiapBDbBzo9HdaKNa9E0GtTlLfVsuzSc5ZoUPF8DiZmIRNGK1tXs9zZPFR5YPI
 56tKK+vmfq0YEwEdRgQagjqzm/B+KUAI/Hhgmb4+r/Qk7QYuvcIssxrtO6wrFpQ6qqkoX04FqYC
 Q2bgj2ax86T6Y/3RSBw==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978b41d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=4R__FUkUN4TTZ4tJGkoA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: QGTbJvzxu6b_5GbxlDj7f__XTNU0V45Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,faac00:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259887-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C77AF947A0
X-Rspamd-Action: no action

On 1/13/26 4:00 PM, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> controllers. Describe them along with display controller and the eDP
> PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> clock controller and link up the PHYs and DP endpoints in the graph.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 431 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 423 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 53b8ab7580bd..0b7b2756508c 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -2377,6 +2377,7 @@ port@2 {
>  					reg = <2>;
>  
>  					usb_dp_qmpphy_dp_in: endpoint {
> +						remote-endpoint = <&mdss_dp0_out>;
>  					};
>  				};
>  			};
> @@ -2447,6 +2448,7 @@ port@2 {
>  					reg = <2>;
>  
>  					usb1_ss1_qmpphy_dp_in: endpoint {
> +						remote-endpoint = <&mdss_dp1_out>;
>  					};
>  				};
>  			};
> @@ -2466,6 +2468,27 @@ usb_2_hsphy: phy@fa0000 {
>  			status = "disabled";
>  		};
>  
> +		mdss_dp3_phy: phy@faac00 {

This definitely says eDP2 in the docs..

> +			compatible = "qcom,glymur-dp-phy";
> +			reg = <0 0x00faac00 0 0x1d0>,
> +			      <0 0x00faa400 0 0x128>,
> +			      <0 0x00faa800 0 0x128>,
> +			      <0 0x00faa000 0 0x358>;
> +
> +			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,

The branch clock sits on MMCX and the RCG on MX.. fun..

> +				 <&dispcc DISP_CC_MDSS_AHB_CLK>,

Here it's MMCX/MMCX

> +				 <&tcsr TCSR_EDP_CLKREF_EN>;

And this should be always-on

[...]

> +			mdss_mdp: display-controller@ae01000 {
> +				compatible = "qcom,glymur-dpu";
> +				reg = <0 0x0ae01000 0 0x93000>,
> +				      <0 0x0aeb0000 0 0x2008>;

len=0x3000

There's also a VBIF_NRT region @ 0xaeb8000, len=0x3000

[...]

> +				mdp_opp_table: opp-table {
> +					compatible = "operating-points-v2";

156 @ LOWSVS_D1

> +
> +					opp-205000000 {
> +						opp-hz = /bits/ 64 <205000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-337000000 {
> +						opp-hz = /bits/ 64 <337000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-417000000 {
> +						opp-hz = /bits/ 64 <417000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-532000000 {
> +						opp-hz = /bits/ 64 <532000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +
> +					opp-600000000 {
> +						opp-hz = /bits/ 64 <600000000>;
> +						required-opps = <&rpmhpd_opp_nom_l1>;
> +					};

660 @ TURBO
717 @ TURBO_L1

> +				};
> +			};
> +
> +			mdss_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,glymur-dp";
> +				reg = <0x0 0xaf54000 0x0 0x104>,

0x200

> +				      <0x0 0xaf54200 0x0 0xc0>,

0x200

> +				      <0x0 0xaf55000 0x0 0x770>,

0xc00

> +				      <0x0 0xaf56000 0x0 0x9c>,

0x400
> +				      <0x0 0xaf57000 0x0 0x9c>;

0x400

+ You need 4 more regions

[...]

> +				mdss_dp0_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-192000000 {
> +						opp-hz = /bits/ 64 <192000000>;
> +						required-opps = <&rpmhpd_opp_low_svs_d1>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;

svs

675 @ svs_l1

Same comments for other DP hosts (although double-check the last one, it
was different on hamoa)

Konrad

