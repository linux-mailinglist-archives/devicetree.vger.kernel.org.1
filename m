Return-Path: <devicetree+bounces-222944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7633BAFA39
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:31:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2F05188DB78
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA92A27FB0E;
	Wed,  1 Oct 2025 08:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TnHvYfIu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D23227A90A
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307456; cv=none; b=P8/Llt1xAn5+i7CHxLgI8+NruT2TrrUMqWTUK2UWs6CaKA93z0vozZyJ6OC/0JE3RsI6fSMmdM60cceeXALspSRWpcRuvUE4nryTFcQh0iX7w/5aTZ1KX74yM+GJ9DLogN1IqmcnVUKJnwI5vM+ZYLi8PY1Unt/x0BQ0QrIlB+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307456; c=relaxed/simple;
	bh=GT0LRKWWLolOUjYL+JFNIRty+gSBWR7OB009rRCYzxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P+jpDKNMq2R62x7p+9rNlWLP+shcq4el4DpVcJ4r+WNWqICGHjepMB94Pmkmy1Hau8QXc8dFApbuFMwApXn9iDVGbd+Wro6innptnEdN0eBKmZMSH4KqdHgsq9EE4hBDBo1Q3CdBL+eHFSLISFtzb8FzDzMufyDj0nOwcpVNBcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TnHvYfIu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UMJBqw024901
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:30:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cjzm3emaoXKpMvDV9sAM1BbWQ575XrXlSZCnkzdhJSQ=; b=TnHvYfIuBM1/HTJz
	8Htws6ocSLKvpEojwbVzmqEr/JXECJzUOe3ZnsVGtsBIk8PRy6zkJZsWMqtGQMdI
	ikgHwZ8WTojLkgIKvkOBmhAhwOkb7DXXqwRak1CoqJtlI+72Crq3MSCO08EZffQy
	KTS2GcgAOPv+JTpu2JUFfEmC6zKLpSJuCLsguo/1q1Nsrv3IWmiCnHFvq2BT0Ypx
	Ps/VsW4qnsXFg9+0RyGtgOhrPUjsyvGXJTXxr6qQaUTwP/ko2lf56/QooglDDm+a
	djwZO3RNZtpTXbanB4aFe8GvP+QLH0c67uG6l29ysOYjbvD74z9O26YY2xn2wu7M
	gZTnlQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n499e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:30:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-865c7dee192so117571485a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:30:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307452; x=1759912252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cjzm3emaoXKpMvDV9sAM1BbWQ575XrXlSZCnkzdhJSQ=;
        b=ChzmPuZ2vKlaKV/Jd3Kp+6CrilaelH6nqG0SX6Z4YwM6ZH2nw+t5dy7vi7PLw/ZkyU
         VMpuKeJiRvwqS0LlxPiWUYpZreIASWooBCiAZt9v3m7qGglZePMmM807BUp/0kOwtz5T
         MHHSbLJx4saYzOS/RgT0kt0l71IE5bkRsoIR4+/Ba0xYbSa+xMQpi8n2GH7W1TI6lOTU
         BoCvjJyCrb6jLDKfXD3m82BB+sAZfWmsQHWCXs6/ZEahIl0w/arXAdzEHOdQzLsRGcVj
         yScbTE1XGrtXUeKhsCRMajTj1FxOXKbP3lViQwK+5HbvHNtn3GCFVYoldBFk8wAG9ezX
         SLbw==
X-Forwarded-Encrypted: i=1; AJvYcCUOTznry4DrGfZvEG5Y5Vx2pV7FqxOKMeaFWCgzY7s7IJkQbcwRJufVLC9CcvXwG4b44rca3uOUwWJL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3m3O3K2ZJR28wFvFatREOS/J3w5sisM5zQ8q0cpl7E6uu4keK
	RQqnUpbfVLLxDWLFf/KVSZryYHDyz++Ym2p4i3iY25bKICXEJcelfkXQqavycV9MWgiFOapgV9e
	bjXi9QkgtrSYLSEwA11PIjO4bOo62+2kSO8lVVkXQ3CGeI/Rnbe44vY4BR0GUO812
X-Gm-Gg: ASbGnctlc3BUL3bdXLzBUT/OeOl6m1PEAlF/+YzeFhvh2l6uHh7n25ly8mKrGk2cGkf
	gGwg0jJrlNOC7/cqIw9l7q8fR6rlRGZvLBD8t2rz+ogfy7GhAdbf8jzJ6LXlcZn3eFzkqkkTQSL
	Q9UTy8CFT99YBebV83080iqzz1B8Y8WhvgkQUvNxcmMSsLBmrPXycOjdb5Tlxo/g1/CX1uS0mcV
	G6nIii9pQWLMisYmibmXLDTsaAQo/kJ7RbjAX3N6Z5yXXlvK/6ZI4okykIbOlXpSFo4rvCcMP+y
	1rbZg9/MSWAJw3an6mfAJtn1O7BA8PYJyuAQ3KEJbXx8VOspT3q9axgSe5hYYq0QdPTVvD3m6BP
	7ItpBalokWSV1Q6DFzOAKBZfkGIM=
X-Received: by 2002:a05:6214:20e7:b0:7f0:787a:46c0 with SMTP id 6a1803df08f44-873a60f8fccmr24664366d6.4.1759307452404;
        Wed, 01 Oct 2025 01:30:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG822gD7rUPMNB4okaH11eXrfFzHLQWvCQu6RuTPp8JaGF3dxaajwDtHeT2MS7SE5K8lJJWuw==
X-Received: by 2002:a05:6214:20e7:b0:7f0:787a:46c0 with SMTP id 6a1803df08f44-873a60f8fccmr24664086d6.4.1759307451860;
        Wed, 01 Oct 2025 01:30:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a364ffa4sm11234059a12.17.2025.10.01.01.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:30:51 -0700 (PDT)
Message-ID: <ac1c0d1a-36a9-4542-b879-06c017f7f2c4@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:30:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 VTOF_LDO_2P8 regulator
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-2-5a45923ef705@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-sc7280-dts-misc-v1-2-5a45923ef705@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9huYSSpdCicJj8hqCXaN0xO-dGqUAt2b
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dce6bd cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=_C6b-tzP-owvyH6gxLwA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 9huYSSpdCicJj8hqCXaN0xO-dGqUAt2b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX0d2wvXIUyBsc
 Lf2Uda77G2w/XOHsEyjHzCd0nwzuT3j1Y/md856ReP9DZh6kXmunSruBjBTLg5lxJs1L1jc9qVH
 YuxYC/c3KxwdYlqYuJ5LxeLEqWJCL9oleuwk4rY5Ml5UEMg748MdL/S6NIUaXzTX39a+c8/nn3J
 6dDzS0Z1uAyPtTXLB8XVmmygLQQmxpx4vPszDDtYpAVxgD9ysdkxX7I0q7gRTNa83pDYLcI0j5w
 V5qfYt+MiZc4vP5a8RLJ0NX3nxDdeL8w1qRkw3r4zcqVHif/lUJdfcVf1ByhvopH4j/okFtxo9a
 UBHZmwMFv+2G2mfCYxm4u9b4JFuNQZiAdKUg+QV6IbjRyCI0/mNBpAgn58PKl183qvS+yo6/5Ca
 3C4pAMwn3mJrpYVf53O0dtlZ9bZ4rA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On 9/30/25 3:57 PM, Luca Weiss wrote:
> Describe yet another regulator-fixed on this board, powering the ToF
> sensor.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index 36d5750584831d66b4c2faf6042e4cbb3274eca7..0a64e5721e092d1f3e4bb7329335704eee567761 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -195,6 +195,19 @@ vreg_usb_redrive_1v8: regulator-usb-redrive-1v8 {
>  		pinctrl-names = "default";
>  	};
>  
> +	vreg_vtof_ldo_2p8: regulator-vtof-ldo-2p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VTOF_LDO_2P8";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		regulator-enable-ramp-delay = <233>;
> +
> +		gpio = <&tlmm 141 GPIO_ACTIVE_HIGH>;

You may want to define the pincfg/mux config for this gpio too

Konrad

