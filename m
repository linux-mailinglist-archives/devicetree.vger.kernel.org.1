Return-Path: <devicetree+bounces-192658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C18AF7372
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:14:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99F395606B8
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CD732E424E;
	Thu,  3 Jul 2025 12:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g4UhgkLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F8C229B0D
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751544880; cv=none; b=LrcwZGCClIpgwFQUHJdjLyLhDSsMA1OYGw889lmBzna5okY7y7IYQS6nPlRH66OH+f68Yia+4oZLShFVsVtXs2kc1LK4RyOhKn/LaqWX+yXksTIhs0EzpMuOS5OXc2P921e83aowG7lMPHji0dvA0O2PPT1HQ3GJgCVJGr0wo3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751544880; c=relaxed/simple;
	bh=NxTRFXEOSM97xS6sYUrK3OZV1E+9Shcf60A8QqXUvPs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HJ586iDFjOSpVP4lnr86bRBzsPMuWmhwPoI6AZ1KNGs1/kKd/9qj/XhPFOmuDzIikP6zGzvBf5bt2f/CQ1WRev4KEMn5R9sFtCLAwQoLDcLFXxetKQzjMHhRK8XwWZmkxo05jfxJUbIj1Y++lka15DeNeYhbjbTDqEy4RVmSO60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g4UhgkLL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 563Ar9bW024877
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 12:14:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h2x3WpVgowQyzY4em9pyKWoaGXSc06FpOT7YW7pB1lw=; b=g4UhgkLLr1VlwHfN
	wVL7Bj3Q5Nn7x1YdMiQ8oMgKdzy6ldIZ6NRpj2gkV+iNalwLwG7i9fdK4T7vngAn
	wACxt2VbL9ruvTNdep6qvs+C0Y2RwbjWgzrQ6AiDC2aWbgIZgsybjlq5ghkSwJ5D
	ncPDMQpGvB4pn4WB59CTmF7PVflGFuFnyRI7ZvwLMOAb40j3D7WkFBl1+G29gKFD
	F+zBuhoCfuiIioBvCay5n1p9XXk0tRBjKx5We1kWHZLsS5E3pZfoGhqackEMXGYB
	qfTtkbeSZ9DUUKJcdqlTzPmpX9a/b4hg+ZFQjUcGMg6cqePIirVa9NYOa0qqHBJh
	KJ4iMQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j802861q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 12:14:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0976a24ceso249690285a.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751544877; x=1752149677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h2x3WpVgowQyzY4em9pyKWoaGXSc06FpOT7YW7pB1lw=;
        b=bbS7A/xDWJRS6JkDQFoSYed553sbRlky57qIOS81LKqrvOVqrAjVaz2W3DLZWI9mzQ
         +xT6BCDw5igOgA/cUdTbKxAegzryDTOtxnrw02lw99PIuaI90FR+VnwgxM7W5XDjf62n
         0eEkiCVJndUUUmKi1DPouzaRVTTxbagoW+pyg5IA63ii+NctoYTZMhmtGqhHxMklNO8e
         UwKrztROLyP/CoKzwq19/uj3oAQ7fJw4LEufkQ1x55TBjXgZo5L06RO/zzk3TVgDeE+N
         auvstiSKVI8wb5M38+U4tdIWKUMMmBgG5GVx7hnIXw3IOARYzfab8gje02jojEoCmeVE
         MJTg==
X-Forwarded-Encrypted: i=1; AJvYcCUtp8AGq3TF5fvs6tFfestl6pAAOdYQ/LnnEiXP6cuCp1Lyhj1cn2fPyeZD3KeEAd7tqZ77nIfI2nK8@vger.kernel.org
X-Gm-Message-State: AOJu0YyQw7Rd5jP9yTyrmZqlUflUnokLtUwKLaTzG62ns3txy+WYKndx
	0lHlkklUSdhx7rgsDQFh6a7OiNeG4ptktvtZTKEk4hXvXs376V583l9bTCNaImCW0PRCjXGP8X2
	vR4PVHfKfux+AYuV29k+AxU/Z/9ldmbf617bbiCC/W6BMu1vKrujNxUT69XP3U/zW
X-Gm-Gg: ASbGncsUnnvZRjO1Fx2pjWTM3BooiVI+7NdbSP/H8pBL83T/SyXEPmhmlqbsTdNVHvJ
	s3PpHRcYsqoHKpzJD4WDI5MZzZRQ6mpr2yCXU82DWOZX+t5SBHEWOCIZsLo+wGJxhx+JR9IKY5u
	aIiOQOOUgeCSEFifiMaGocjWJJT5LGp5jVjBm7e6p7gNzSx3B8sozW/AaR+w18GCgG9IvZd5p3C
	q6yTd7MvvJU7gB91rJ5ml2ctZwEvE39XpNaUvFIQO1R1qoZ03dR6sKMRcOrWQVaSM2hrfHCAsss
	/A4We1b4uzmrkIcOHKoDhVAJe9qgBffAougal0MxgP5Yfep/EGHPxQjfuDqEiXQFB4FZwO0rhZW
	nxgS/mFou
X-Received: by 2002:a05:620a:4620:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7d5d3f957abmr99411585a.12.1751544876879;
        Thu, 03 Jul 2025 05:14:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMv5CgId/QhgXJ5gc0O6c/YrTGP1GxnRv/PEaNbJnkJ4hBNjdFtHUDliUBepNzEy+MEM5IEw==
X-Received: by 2002:a05:620a:4620:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7d5d3f957abmr99409185a.12.1751544876461;
        Thu, 03 Jul 2025 05:14:36 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c013b7sm1244061366b.80.2025.07.03.05.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 05:14:35 -0700 (PDT)
Message-ID: <9217c52e-f0c0-4e7e-a2c2-bfb580c7cb17@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 14:14:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/9] arm64: dts: qcom: qcs6490-rb3gen2: Add WSA8830
 speakers amplifier
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250625082927.31038-1-quic_pkumpatl@quicinc.com>
 <20250625082927.31038-7-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625082927.31038-7-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: t_mrrkVUM86nqyROf4yc1jOIEC_Trij9
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=6866742d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=ZTnHXLMoH8r4M2ZBRPgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: t_mrrkVUM86nqyROf4yc1jOIEC_Trij9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDEwMSBTYWx0ZWRfX/HsMMH8DAJpg
 hTR8KWRZMn0BOg1RiK5rqhIAWEgVMDQEZSGRgQ1NCA+YC9KdO+ktjUTEESqOia2bJJxXWcgMlko
 xba3nqeX/Wc18TmtcLqYL1Qfib+teiUCsOHayZXCxdeOt+cY5WDn8CZMaVQwViBBJoncKileJa3
 JzM/iRNO1zvubPN2udUV7TiJ+5RxMPVBUqAQlR6i+YlnX8LBCxHTJIpR+FrUVa4Jbuv7Enrn9oS
 HsbqMR7rD0ipliTb/lOR1IB8m+c6Q8vPY1sv3N41TRFcG3enaJvq94pYfjciZqYYYx2e8E1ksL1
 EJMD1rS2ljVDLEVqfAhIoZqk9VG2a9vhy3pdQHqbtjl8rBzu3Wwi/KWfOfY06sn42bFyGw8IsuE
 v6He7c1Nmy8kOv9yUMY97daZac1rLAGYRNaxtiHq8EwmLerJqgqriraTbL3soAYHJHB6dIpw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507030101



On 25-Jun-25 10:29, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add nodes for WSA8830 speakers amplifier on qcs6490-rb3gen2 board.
> 
> Enable lpass_wsa and lpass_va macros along with pinctrl settings
> for audio.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  .../boot/dts/qcom/qcs6490-audioreach.dtsi     |  6 ++++
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  | 35 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi          |  6 ++++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> index 6d3a9e171066..078936237e20 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> @@ -58,6 +58,12 @@ &lpass_va_macro {
>  	clock-names = "mclk",
>  		      "macro",
>  		      "dcodec";
> +
> +	pinctrl-0 = <&lpass_dmic01_clk>, <&lpass_dmic01_data>,
> +		    <&lpass_dmic23_clk>, <&lpass_dmic23_data>;
> +	pinctrl-names = "default";

This can be moved to sc7280.dtsi (and removed from IDP
and chromebook DTs as it's always assigned when VA macro is
enabled - they also make the same changes to the pinmux
properties that you make here) - perhaps in a separate
commit to keep things clear

otherwise, I this looks good as far as I'm concerned

Konrad

