Return-Path: <devicetree+bounces-229914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B60CABFD954
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8AB9E4EB73A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663452BE7BB;
	Wed, 22 Oct 2025 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nyuqzZcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AABA59
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761154162; cv=none; b=RPY6o1wcohKIHcL8GeSlyO/SblokjuiIvXA0fNpbV5hFcNuCOCrzW1aWnPCsQghsbqxB6T4hFExm6sWHj52WYZHfD2ddD3pLUZ3cH/wTp5b4T0kqKj/Q4TgQFHfFJWVwXh0t987GYd0QH0xa2cQN5mE1d1jX8NC47upHYaqbGl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761154162; c=relaxed/simple;
	bh=dyHSc0Hkf9JlF3396d47TnH/fkxgN2mhFcVau1LyB5A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ROndtAHUnlad9FXF+gKdRHablXoM17wmcNnvmVMTRWhSG8mFaTzI78yNi1g0Kxoanq2hM57OYDVsySy55IF3+QjhE4u3gxwon80X6aGT+is27bJaRMda6MwM8FUMjIGEsbNPybfUKWiUr/sr3OKC29w9fIqwIoVo2XBNHtNzFKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nyuqzZcl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MAKSg3031065
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:29:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eyyrDYcjKGK47utngRF8H7m2HMSV90kJe50AtFvZfng=; b=nyuqzZclj/rzhlYp
	9CDYcsBf0gkB/79RfOhqhHwmoXl+sK4NKr6tPNnat7sLjhml+nCLYxVhgyaCtFu8
	HoV4sSioPH7UHAlaVUfRS6LFExuGVgKXHyM6isdv8S8kH9PpESGN+fan4RDNjnx0
	onYJKqd1OYHC8aGkV12DbP7dFqRxKPLI4eFTCY0LjzRm1KXCxbpt8ZVZyg0KcyA+
	I0WFYwKEVR9CQB0nEQdT7U5s1wzNfdWKyF4lz9Guakoe5c151DpJTa0Vyn4vBc3Q
	pOTDgo82yNVHXxuKwrZVf2pK1XRMco5RSMc4UgWO0O0fLP4UohT6LVktWK3JISvB
	XotrHA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kdbcf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:29:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-826b30ed087so21657006d6.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:29:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761154157; x=1761758957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eyyrDYcjKGK47utngRF8H7m2HMSV90kJe50AtFvZfng=;
        b=GQFbj0y+I0g04nqOxbLziu/WoWFl83tB/8Hi90gG4D1LS63y+oiZ0gyyk1CFSuPKjf
         XqFmyhkjw0XwvESolwDpPJH24Ky67aoXZ8gmQ9k6RB6UIc6kl0nrBPfuQfLPjpsQOXbd
         Tz0avdNC7SquYIte7j7oPYziDZELknnplg5HeyWvc0fp7zTxX2jDzG1Rze2tilmE1Tm9
         THP87G5qbXeGJnFMW/HOM5ItyzRHfLYfKpxldTXXKZxbDUbA0Qj+TkcOUd38amL32aNs
         ZKIyIYbPBD4/qRrfLiWnDvadm1MCNGfiEQVslT3hRAT5tFYTj0qCKjy1oC0RwdwXW+1e
         RCnw==
X-Forwarded-Encrypted: i=1; AJvYcCXgk3KkiTcNurH+hsTI/VmJ1wYLFaHgCumOf55Tm7nCN/b+hjyElY9kM9/HiqeJtCDQKSnW3YUvl/rY@vger.kernel.org
X-Gm-Message-State: AOJu0YxcKGubTbAhiyLAfFhIHuCcHmKSxhSDKQ8vyaNeiRnMRL4YiVkB
	PsoeLysD+qO0OhA2tLf1YqYf5AHRKnYGw6uIJrKWUPXf8HtOKuxfL1oMWKpKk7sAjL47LgWB9At
	4OqBf9KrqQzwh6P5nVh9CvlfAx4Tt4HACRRP5jeVTcxbwb22RS4HQCdbL01Mrlf+2
X-Gm-Gg: ASbGncuTN2Y8JuoCJW42jZE+zADsH8tQIP/HUMLOD+K8UG0AK2IciHDbT++zc34UqxK
	lyFVuONtAPhetwz0qM7x+0V4VNBJPxIoLT53DDzKEAAUB6zNZRwsh9bsXL4xSMYNqq+nPneSfAB
	7iBy7/ZtGKi4rFC4kYExMpICvsABJvE+ImeEfQIdIzHlZq9uYEa0pwiWebGSQacflkBqUmfcD8V
	Ix/Nzv9yvRm4sMQpoUwaKspJzRWlXis+vh/Q3+9Ec9geynMSV/LdxgTmrsIoIBVjJSxXp/BYbsR
	fAeKYoCkZ5kM7bDul7T4rYHqkK62766ibeGvbDRqikL1v8s66tSmGj4oWbHwZlhA0gZg5ZLIe8I
	F+JO8JSk8NE6UxsCX44YfHCKmpzq7V6EApzrwLTz+YYNcMOtK476EtyTZ
X-Received: by 2002:a05:622a:148b:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4ea11710be3mr66600581cf.7.1761154157227;
        Wed, 22 Oct 2025 10:29:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJw8MHnQwZbTuwNgN0otjEnj4HLV0d9qerQIspFAPXfhpawKwe+bMV3LTIHDxza9e5f9p0Ig==
X-Received: by 2002:a05:622a:148b:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4ea11710be3mr66600041cf.7.1761154156496;
        Wed, 22 Oct 2025 10:29:16 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da25d4sm1382273266b.9.2025.10.22.10.29.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:29:16 -0700 (PDT)
Message-ID: <c1d09672-e8a4-473a-88dd-fc91e81aea52@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:29:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add cam
 actuator
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
 <20251009-ak7377-driver-v1-3-29e4f6e16ed3@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009-ak7377-driver-v1-3-29e4f6e16ed3@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0uxsghHOIrMzkIw99NFKE0NS9hp6ehvB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfXwEjH68+aPhE5
 PYn0SP4z290cVohw7PogG4/oU8CTIkS3hmeKNGmqeC8nB4slt3PJRwyZLjhriPu/AnSgAzbO01p
 Wd447STedt3dXa9UlH055k/QmcrxVsYlEyavCBHwbvVYK6jtBs4qKCVS94daMjvrQv4OXmh7PX1
 gqp5AdwW2zt7HEvTi7Sct62QgKUBDLwB26ZnRv8tZONkb7mHNJF/VaviRCM4LzV1tCCWpM17xkY
 jjYwhfNudjRSD22Lm3nuUKN3jvESmefapHREzPVl70yQr81qDzc3e6btp4WwOOeVDDt99aZ6LzD
 fZ2GHILYoutcZSE9H9jQ+b1nMvFiMK9ulhdcDOnZ4SRRTucsubQwkj9TXJKbXzsEyjr4/C9yCmM
 Jg/jDHN99jmL2j0t45yeYQJz/qS3cA==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f9146e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=AbxdTx203xjBR5gTc4sA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 0uxsghHOIrMzkIw99NFKE0NS9hp6ehvB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On 10/9/25 2:23 PM, Griffin Kroah-Hartman wrote:
> Add a node for Asahi Kasei AK7377 actuator, used for focus of the main
> back camera sensor.
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index e115b6a52b299ef663ccfb614785f8f89091f39d..49654f0f914fbe18080d2f55bb6877c8ab7baf0e 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -616,6 +616,13 @@ &cci0 {
>  };
>  
>  &cci0_i2c0 {
> +	camera_imx800_ak7377: actuator@c {
> +		compatible = "asahi-kasei,ak7377";
> +		reg = <0x0c>;
> +		vdd-supply = <&vreg_l7p>;
> +		vio-supply = <&vreg_l7p>;

The dt-bindings suggest vdd is 2.8 V and vio is 1.8 V (at least
on AK7375, although this isn't stated explicitly..)

L7P on FP5 is 2.7 V (default) - 3.0 V (which you should probably
tighten to the actual operating value), please double-check this

Konrad

