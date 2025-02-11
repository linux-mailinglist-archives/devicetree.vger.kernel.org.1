Return-Path: <devicetree+bounces-145321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2EDA30E65
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:35:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 238A2167CE5
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC8D2500C0;
	Tue, 11 Feb 2025 14:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L79Cszs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9393724E4B6
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739284514; cv=none; b=sAAcKqTq3ESxe4889SwR2AnlJL8RdkwVERsUxEy2lmbM391ZaxU5MgBw87/B0Pd3DLPAmJj/Q+gQ+pkLcD0j01KZm3DjncYBj5inQjo970QqrFCRJCpG7lEq2zSLyYsfJIGtStvIvg2obTLn6ocjQX8iIRpG/yCXcqa0Ue5xxR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739284514; c=relaxed/simple;
	bh=BpbyeeCOI146IKCmCu8zod5nA08hBtcuDaJlkhep7EU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oMVUDKe/aRtH1CKjD61k3dSQSPeU1aV9P2VmILDj8oBHABEW4j5NmTVLGwizh+4m3z2JkN5kxfwxuN189S9w5fSnty5m1GvjluN042oTPc6SPcBaxUJCQyY2LkbT2kYXy/Pf2H7IK9lo4TLmJcaejqZ+oe60yGHMioQNQdnK66s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L79Cszs9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51BCa40Y008925
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:35:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zzeSpEzhPhKIc5ciktFW0BzNDzlKE+8N49H7bDEi994=; b=L79Cszs9aBk0ZQfK
	feucqrjZ0KTdz4LF+VQaUO7LQmuHauo9Zfch4jeglaNB8tSmbcuWOr6mFLscP7e6
	UVHu/tENKjDhFzZ76HBw+FB8Swx6g5vfeC/6GCEH5u9lCTGcvJR61B3iIvS7eeQ+
	zQ8mQOGiDzauYEnDKGHLMW+tlIb8KRgCJiMdRntcnW04jRWJMROTSpTxI9YNpDkC
	r9N5l3CrBBFtWnjJana7VnJosroLKKVuTskvOrXzQhdSc+hsIM1CBubGIYlHVlg0
	iAWfiIXJnKJLkXifaJMN+wi7gci7gtui7ahLsLIM7ZJO/XK9YmzGLvctEcTUxz6F
	hsbQsg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qy4d9ngr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:35:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467bb3eea80so1602351cf.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 06:34:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739284495; x=1739889295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zzeSpEzhPhKIc5ciktFW0BzNDzlKE+8N49H7bDEi994=;
        b=tRwT4eKeA+OVcif0Kp7UQlPtBNxPQE2AeZM7JFIQkRIXxNkeYn1GnQDKC1LT1yMbyQ
         jtljDDVWRaac3vBHijeTM1cpw4Sdwtx5ahegnX1iFtCcyDlB2iFlsTcEJE7sDI2pKR3k
         PU/2Y/EXcLAaCAHB08sa/i8IBiVqstECTP2KA12v2Wjccbe/gBiY7uhlQ0ICrTujKond
         QKVuU19rSrTbsnygCwX62LHbtrj1tHwuOFYg8NWlhiz0klCkNxt4zQhb7h9AqSFs0WQv
         i55zVKdlMJFoKS3WaTGgCuHJq5hL1PRy6GxRwbsFOwrchkImg07ES3hzndURIIkKemZG
         nc1A==
X-Forwarded-Encrypted: i=1; AJvYcCUkqa5UsIXPSBZBVNw91cLT+i+3gyGSh+6vil5VpxrKS6LgyU96KTEprk98weYg53o+/PNG+xn+ri0z@vger.kernel.org
X-Gm-Message-State: AOJu0YxstWj07+db/pIeZBK+RBboyVdC7Yrq3X6Lrev8rf4fE/JX72Sl
	v1a33flwAg14iHgwJm4XNCfaNXVzNv5D7S2sjKPrCiwGYGj7EJQNhTQG5xvHoABTx/n2xCyrUzA
	wUDm3pVBr/OsCYWp/KcvoQBs+eqgIg1WA+cuKA7VIv+IYGxOdjVwDgQyaH6LW
X-Gm-Gg: ASbGncvu+Dc4RaO3EOJpEoaiLzkWULmNRiPEYfR9IbbkJLEpDkYWjm3ax/WF0s1a1xG
	VFuDugB1IoxeZrcUo3OQ+AZqWDllLjBDQJXBiSwzU3+v1ZU3r843Kupr5SujGYWxy8zJTiTqtaf
	sTsOO4/j/9mGrMsAFLmZrvel9YBS10/Dpu7pjeFxmL5UGfU8tIcT/KVf/64F1d0qfv/GkiAFJ9M
	fg1qZqQsfxEfW5/2hXad/Hex6lGoIobBEIOfEychEyZtC5Qt0QnUjIo3GPTKPdPX2JNWHRUMYVx
	b8Ut+up+lU5pNc1Jar3F9dla9PX/oSn7+DQMnVY3z5y/tyBgpr6sCZ2r91E=
X-Received: by 2002:a05:622a:11d0:b0:467:5b1f:4060 with SMTP id d75a77b69052e-471a3da4856mr14126201cf.7.1739284494792;
        Tue, 11 Feb 2025 06:34:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQZ8D/6WgOcGT5XAfBFb3oB+8tfbLU3rY2SggZAfxtxRNTdse/H5E4+THqxC/HIDc/rhN41w==
X-Received: by 2002:a05:622a:11d0:b0:467:5b1f:4060 with SMTP id d75a77b69052e-471a3da4856mr14126041cf.7.1739284494356;
        Tue, 11 Feb 2025 06:34:54 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7cae13326sm324860466b.115.2025.02.11.06.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 06:34:53 -0800 (PST)
Message-ID: <b74f0591-242d-45eb-8c5b-bfc7edb0441a@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 15:34:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: qcs8300-ride: enable BT on
 qcs8300-ride
To: Cheng Jiang <quic_chejiang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_jiaymao@quicinc.com,
        quic_shuaz@quicinc.com, quic_zijuhu@quicinc.com,
        quic_mohamull@quicinc.com
References: <20250211104421.1172892-1-quic_chejiang@quicinc.com>
 <20250211104421.1172892-2-quic_chejiang@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250211104421.1172892-2-quic_chejiang@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VjJ70xO58gor3uVCYa4Xfa_y-ZZjnSUY
X-Proofpoint-GUID: VjJ70xO58gor3uVCYa4Xfa_y-ZZjnSUY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 mlxlogscore=999 bulkscore=0 phishscore=0 spamscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502110097

On 11.02.2025 11:44 AM, Cheng Jiang wrote:
> Enable BT on qcs8300-ride by adding a node for the BT module. Since the
> platform uses the QCA6698 Bluetooth chip. While the QCA6698 shares th
> same IP core as the WCN6855, it has different RF components and RAM sizes,
> requiring new firmware files. Use the firmware-name property to specify
> the NVM and rampatch firmware to load.
> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 24 +++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index a6991e8e2df6..93458773b72d 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -17,6 +17,7 @@ / {
>  
>  	aliases {
>  		serial0 = &uart7;
> +		serial1 = &uart2;
>  	};
>  
>  	chosen {
> @@ -451,6 +452,13 @@ &serdes0 {
>  };
>  
>  &tlmm {
> +	bt_en_state: bt-en-state {
> +		pins = "gpio55";
> +		function = "normal";
> +		output-low;
> +		bias-pull-down;
> +	};
> +
>  	ethernet0_default: ethernet0-default-state {
>  		ethernet0_mdc: ethernet0-mdc-pins {
>  			pins = "gpio5";
> @@ -544,6 +552,22 @@ wlan_en_state: wlan-en-state {
>  	};
>  };
>  
> +&uart2 {
> +	status = "okay";
> +	bluetooth: bluetooth {

Please add a newline between the last property and subnodes

> +		compatible = "qcom,wcn6855-bt";
> +		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_en_state>;

You should use qcom,wcn6855-pmu (see e.g. sc8280xp-crd.dts)

> +		enable-gpios = <&tlmm 55 GPIO_ACTIVE_HIGH>; /* BT_EN */
> +
> +		vddio-supply       = <&vreg_conn_pa>;         /* bt-vdd-ctrl1-supply */
> +		vddbtcxmx-supply   = <&vreg_conn_1p8>;        /* bt-vdd-ctrl2-supply */

Drop these comments


