Return-Path: <devicetree+bounces-240666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0563FC73E6F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 9887A28CD8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB74B33121F;
	Thu, 20 Nov 2025 12:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYQujI/I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TBo+iMi6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129793128CF
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640667; cv=none; b=gJ6Ho8MunhXkMcJWZChjE60HcahjjKG/rX4JyV//vKl/8zM5hAA7I47z/p72/lK4QWUUm04gcRUnPbsNzt6XLpR/HR2K1JTLzvLI1/65g71XAo4H4SCkREH2fqnlWqfWBKoIZlnbdVa3fKm/qXeLZFRuyXutpQhtBplV+Vmzsno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640667; c=relaxed/simple;
	bh=0cfT3bgRQbsxGmTKccy05AiwguLM7Q2MsBKOaWKIdfI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SE5urV3DRI433FnndK4ZRKGUFajBAV45+w8fyMOCBYOkzxsrqzNVOPPSdxkWtudpaeEHskyzWItGe+Iew5T6fU4/oKRTcRpjqOSBe5/Dkl5xm6MHsvh8hkKyF5fvHQZXdqP5SggN6WEOgdf8zrguwbtml4WH2nY+M6z5vDbGPtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYQujI/I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TBo+iMi6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKAgHsa417297
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kybWWPjVRqLZtCLxRW8OdT69bB3HpyM4+4Y1yEo1/Vc=; b=QYQujI/IgdfnDoLr
	z5pme9U28TsPB1q+c6F3q5hir96TghVshozPpk/ZQUp9pX9x/z8Si0Wib3vYToDU
	mER94FOk/BXhPwmuECClTidqxEn4sZ5P17mShAlZdGpou8Y0JmKHdzGHrFJhYCSf
	SM8k5FR1sv2sonpUdTjgdl1q4Y7mP0GTxWRSXqnU/L6LP28xtL2Xyic9bR2+j9ZU
	O5MtF0ExbUiSbMHkKW9i5YfD/0/0ulpuDTQMASudXvlLL+Jp/7kVv3dRjKSUdWhf
	QtYSBRgNgvXEslNxruAG7F5kfDQIwGbpIaajLJ5wr0wcsk3HxoWh3XLwDvSbP2Sd
	znUVSg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj1fgr7s7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:11:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed9122dce9so1271661cf.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763640664; x=1764245464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kybWWPjVRqLZtCLxRW8OdT69bB3HpyM4+4Y1yEo1/Vc=;
        b=TBo+iMi6pGZ/Lh+2yBQdDMTFS6HRpDye+WWZ5vPmwg0AwB47r7nWB2GXmXqOBI67UJ
         NjhIhx/uak+94AxuckIfaDtDe/rPjjV0HtERWDxCCpmWT913h839LJ0KwuQsrFYDouAv
         jX3yOpxkpAz0tgPTzz9E+Di4BLXSbgqD+a2Y/VXIf03vMOBQCL1OYsQxAnBPH1QENnMp
         KOV0ZNsXWK2nWGPGVnwL2MF4nEsMPnFmbY0hobG1abyKqcr8VLxygbcshP8D0lrhW7E+
         XLfYZ8DVYOebf1mBdyehdvZN2uM5Kb+al8WuDHd0ap4TPOekgJjRNe+C5CimgXnF4Mhn
         6/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763640664; x=1764245464;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kybWWPjVRqLZtCLxRW8OdT69bB3HpyM4+4Y1yEo1/Vc=;
        b=oCyPH5+fbWKE8JTIFTwKrJ8elbmICo/5lTf/IpKAETFWcIi3sCN58Izn552vEdY5NY
         WDXbAMWYBaaAmn2Dh33bogDFGQh06p7El6UfIZvvIRKKnxLkpw6iRKL8oMmTS0isKfFg
         6UbBKJDECovjb3tUtI6UORStaRadYys0C6fZR2xHO+/7NI+sDS0Ch95793ExmCLspvBa
         BW2Jzzp2HczQGawg9beFZIRq3ApAZEbI3stj5WKYSysClHIa7J1whvyYLOII5wbYChbH
         ttrsmohZG8RcBk7Jrit732QbJD0cBE9qMT26mUJvWpdI4SKUDgjDJK+bXBgvas8dmEEO
         qjnA==
X-Forwarded-Encrypted: i=1; AJvYcCWuq9gAYB1t2XSTH34kUYWNuRLUw8C7ChRSDN+pKG2dqALObN3D2hnLy4D4tVrlNwJD1HCYx3To3yMB@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ81LCdmYP+Z2MpLcK7UJrX6HP7WDRsIcq1/5+SPCkF0i2iPwl
	4zWKw7PyNeE5zUTo24mll6QBtlkEuTErZQaETcQZXO39iMi2G2AomQCsNvWjsoyDxTJJ7Okh/aw
	3vk90++WE7DopnC4ujCIzLPuwI9IvWAe1xlFP1F89oFPdWaR75ywWLVb2Iq4+mYuf
X-Gm-Gg: ASbGncsN0SjIKCZk5s0YTpwm88QqEbWU7jqefcP46iWVcxeQbj8hg5l7zGLPXQXHEij
	Gc1r7AWW+P4JRfRQvBQvE78LAG33BFegNHP2csvKnG7ISO+d2BNcH1iJHZnZ68iLL3dO8fq/kve
	5+hglzyVdm0Kl00wyngtdJPlTjMkWYmb7qV8tuUY1I7HDx6XcmJnDYphl2szNctdYTlFxt93aQi
	2UWLwc77PiXV48EJWPu0giBo86GWHTu4pX0uQAUQERFdOqmoLdc6djUzoMeOiY8udAtcZpM7AXI
	JALrvOrlpeyd4SjYpM2TrmBFg2aFnTQUO3e0Qe85JsXYszSwP83l5yE5J5fcA6xlOvrOpnLYOvm
	PiAVXjRcdiRqR4p3oxUlNmUrjTSBAD+XdCtPwktwoj3SqCJ9up8f0r9KGosYY9Rt0q5w=
X-Received: by 2002:a05:622a:292:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ee49723b53mr24514501cf.8.1763640664063;
        Thu, 20 Nov 2025 04:11:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHivoDHEac0E8i9LKK60VuwTkp8BI3Br/o1/N7jrKQ/I7z9Nqd091W8EW4YkeLLHm5SG2OTmg==
X-Received: by 2002:a05:622a:292:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ee49723b53mr24514181cf.8.1763640663640;
        Thu, 20 Nov 2025 04:11:03 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d56a70sm194154066b.22.2025.11.20.04.11.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 04:11:03 -0800 (PST)
Message-ID: <7d31f45b-1062-4118-8769-49209908f2ef@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 13:11:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OqlCCi/t c=1 sm=1 tr=0 ts=691f0559 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=S05nYBC_j6DkukOZ6w4A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: uxN0146n5qaA9GPuIOO559zhEWZ4efrv
X-Proofpoint-ORIG-GUID: uxN0146n5qaA9GPuIOO559zhEWZ4efrv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA3NyBTYWx0ZWRfX2piLXXWIcITT
 AtIXT2mZumNRQt2obPZAv5U86+IwRnJWp8ccvJOlEYX5acyLcYDVG37CBZ41EXOrBcLzdNUajXp
 l4VIW9gMqebQ1DVOs1vLvuOjZBJjcnYn8NjBcqB0h8TvHgo7HrfXmqezxgZ0t34yF/OFYUxWJj7
 1ADvDnuElg+KLqb7a6y4WpquTODMCNcx2A4hmMBCjXwiMsrqgmkuNrgFZpdSE/+zfEYn8Lph9uZ
 wLnZcxR1uRfMltIMPaiPt/ojTaZC03A/+GDsvx9yERmWgQlIj6HS2MeDXMci0jkbEY5tDnU9LqS
 tI1uhuh9/ga2dc6iOuJl8jU9/UvnIqdQnT0l4LeXRY0v60FT204HOO+g15dsZVRK1NCKVBuTtf3
 yOO9jbDsd29sq383nQtdH1ToDoGvLw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200077

On 11/20/25 11:58 AM, Vishnu Saini wrote:
> Monaco-evk has LT8713sx which act as DP to 3 DP output
> converter. Edp PHY from monaco soc is connected to lt8713sx
> as input and output of lt8713sx is connected to 3 mini DP ports.
> Two of these ports are available in mainboard and one port
> is available on Mezz board. lt8713sx is connected to soc over
> i2c0 and with reset gpio connected to pin6 or ioexpander5.
> 
> Enable the edp nodes from monaco and enable lontium lt8713sx
> bridge node.
> 
> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> ---

[...]

> +&i2c0 {
> +	pinctrl-0 = <&qup_i2c0_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +
> +	lt8713sx: lt8713sx@4f {

Node names should be generic, so bridge@4f

> +		/*Display bridge chip, DP1.4/HDMI2.0/DP++ hub*/

Comment start/stop markers should have a space after/before them
respectively, however I'm not sure this comment is useful given the
dt-bindings already describe what it is

[...]

>  &tlmm {
> +	dp_hot_plug_det: dp-hot-plug-det-state {
> +		pins = "gpio94";
> +		function = "edp0_hot";
> +		bias-disable;

This is an SoC-mandated function on the pin, so please move it to
monaco.dtsi

> +	};
> +
>  	ethernet0_default: ethernet0-default-state {
>  		ethernet0_mdc: ethernet0-mdc-pins {
>  			pins = "gpio5";
> @@ -451,6 +488,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
>  		};
>  	};
>  
> +	qup_i2c0_default: qup-i2c0-state {
> +		pins = "gpio17", "gpio18";
> +		function = "qup0_se0";
> +		drive-strength = <2>;
> +		bias-pull-up;

Similarly, you can move these settings to monaco.dtsi and keep them as
defaults since 99.99% of I2C users will share them

Konrad

