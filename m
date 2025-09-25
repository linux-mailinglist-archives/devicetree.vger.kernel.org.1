Return-Path: <devicetree+bounces-221362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FBBB9EE9D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:32:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C7E0F7AA685
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A530F2F9DB4;
	Thu, 25 Sep 2025 11:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C7g30dQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D004A2EA483
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758799932; cv=none; b=t2IM5j1QB+FHS26O5bLhaenhi4b/dPGh4M+N0pEz/yw7f+ObD1n08/BJd79PWJaCvbuxtDt8TUojCZs/uFAXfM5RNkLviLHOuSRMRU9EPugofDP9gU4ZpOK1i2LUvPd6U8kb0cJ2lBxTX3TPdCwDC07WjEH5WcMJ+OfmSxIlEoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758799932; c=relaxed/simple;
	bh=Z0bgXJgybcfI7M3Ov78lPDLbxmhlYHwHEUYqCSr9tts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lYa1SDFu7xfj1j1hR9DN9RPFSJrZM4JbM/Iu3ujYLdoMX606rNThmS41lgk0Qhn5f3bI63QcwljrfS/+7hlefYHUP/W8bjI0oMc8XUB2E7Wzj7Us5E2qLxZb27WkdjnKOdqomibwJ2wqUUFh6DyIVVEP02S895Q7vmlGsI3XlGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C7g30dQO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9KD7R017438
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:32:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p1FrH9vXfDsAbwod1kWwn0oGRkVboYjE2nZxCWJX+P8=; b=C7g30dQOpHuSXuUJ
	uiQ0uecc23yRVvY2lozAi6EI4j7xbveWRIA79z4g7Wfl1lv9j1q3NLNkJ1KQd56j
	D1mAwgQkt7DadH3OCz8NWTKkPo/WP4M5Dc8z6H0ggxj4GDQxrHKkXgfWob1c01Q2
	JiYbjJCpu/Ul9bxcU7U+uTXiJzijCxEyI6U2Z0fFYFBaEszFcrcxAXrVvImDt9s+
	i3SQTNN/SUWEZIuFJ3ZMeY6wmVrYfCp3+VfNeRR/j6o6Tx+xVlIg3ByIEYZ0tGC/
	58/W8hXNlsqiU38MwDKnCe8TZI+zXHQVcee02IEaDwZv1sIDxHqqVCqZdYqcIBHH
	33Fa4A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk181b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:32:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-80de0415155so901526d6.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758799927; x=1759404727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p1FrH9vXfDsAbwod1kWwn0oGRkVboYjE2nZxCWJX+P8=;
        b=U3hzKtfJN8aHncIUrZutz2OyU2WPm/EwfUBjgntuFqqkHqDDwPmS1JulxvvUVxkMQ1
         oCIg49m1RJjZmn6NCeOW6Y9p3lwU58NYdNhWIKVoG9rmFfal3YsZinT4ETm1pPWQdOKY
         fOWsfsXHZARxaViwdN4jb6Ok0/dYjS7K/Hg8uAgnloIixEIk8UPG6CO6LnqPlfAZIbJ3
         b7LzsI0N0oTGKTtScZ8AzulUdNuPvE4X3bLopJ2T0gKxdAPUEUhDazepudNRdH1nFCFL
         GXb06a018GNfzwE/91ltoeTg+g16/gmcyiYRbm0F5oRNk4QuSydXyctC5aDAeSTUjvfR
         dMPg==
X-Forwarded-Encrypted: i=1; AJvYcCUyqZMI07kdwjo5ZXdHLCxnRKbs5HGHG2IKMqVwnW1KzIrQ0yAfKppKWaES//m98+NyzN9VsrffBEfu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2fFR+rAMuNO4zBV6+JhRpQ1CRfVitAYuLoNLe9qWZB04z3vhl
	YyKWvsreNbh1LjO5ODiizYcL1gM/2LjFmsDqJNhsBpiMz2eFBDx9GvrijR4wstjPYvlrhMTuhGu
	XexMdnwrDkMucIHud/vyX7+BQcNnwtWzn4t1YfunRcndLBpitmeFqeOmiwY0drkGX
X-Gm-Gg: ASbGncuIROfzYxsd+FbNjS6KShHNlxfGlGrs8qo2tmbRvlBl4OVI+eVIPfs9P387I1U
	XuAv8Mv+ZVF4e5RRV2i1JnEiYH5mSwh193zcqMV9It8JTKSymaaAi1kbeW+NXOCbURFuPFN/EVU
	xYoU9cWmkMYUStNuGUAimCREafQH6hSD3HcuPj7d7kgNTHgEX9c98nXWZWFMOJwrUHkqFMymILf
	xvAUdU+iV0IljWB75zBH588iVpeExq0DtF1FMx32+RM7ehDkMw+94BlFRcyaxesL6ovMd99a0Ye
	woJC4f5e27kyBht5D3nkDLOsrb0ioUCwP6TXHIYCFaPdXdc4mGGB4liqu0nLrFosE2CkJPDJYsR
	bheCqfJWkGK0OSXQupwRcXw==
X-Received: by 2002:ac8:5a16:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4da41e1141emr26321221cf.0.1758799927437;
        Thu, 25 Sep 2025 04:32:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9lkEFEcx88iooA5ISTI+1vX2CSLXnbMlf3Z6B8INfnvKcWZfvN4dkZPHmHoqsUXNmvfrO8w==
X-Received: by 2002:ac8:5a16:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4da41e1141emr26321051cf.0.1758799927001;
        Thu, 25 Sep 2025 04:32:07 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d155asm156475666b.6.2025.09.25.04.32.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:32:06 -0700 (PDT)
Message-ID: <75d8cdc7-60c1-44a8-bf6c-0fb1ef38dd70@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:32:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/24] arm64: dts: qcom: glymur: Add support for PCIe5
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda
 <quic_pyarlaga@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RopH5T4dfh10SBXAYUeHF5EdrZ7RO17h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX8EnUz5H+xWk8
 63od2exvCR7jPcB0Qb3lfmkE6IQSknATtr3Nh8UYE6pV7SxRlTP1LP0RmsCwy7ndj6QocHFqfIJ
 Qrvsg0HovOS+9Hr4fa5tsEjnnma4ogg5otTq5o9WdGXf0MwmtGxZeDzJLUiI3mF6lab9GOfElc7
 kppEPAYa+L/kjksLNfhqZhCSX91g/Ih3CxRMhCeATkvx5xOhnLzfsTbDnQz1HMMZ8Mn+VZjtoqR
 XXWEsg5lq30svyZao7xqd+axc4fR6/lY+kU83xERxVMOGHFoTSi5E+bbA2m0oSOgjyoopGmfy9G
 vmGkHaGsRxrujStortT+wR2r02VqBafQuGBNOL4kAYjrTmV4C3VNe+76ah/hLbTHl9Y5UKVhDPU
 qhWwUyVo
X-Proofpoint-GUID: RopH5T4dfh10SBXAYUeHF5EdrZ7RO17h
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d52838 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=zO9y4h5Up0VuW54j_sAA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Describe PCIe5 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe5.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +		pcie5: pci@1b40000 {
> +			device_type = "pci";
> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> +			reg = <0x0 0x01b40000 0x0 0x3000>,
> +			      <0x7 0xa0000000 0x0 0xf20>,
> +			      <0x7 0xa0000f40 0x0 0xa8>,
> +			      <0x7 0xb0000000 0x0 0x4000>,
> +			      <0x7 0xa0100000 0x0 0x100000>,
> +			      <0x0 0x01b43000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x02000000 0 0x7a000000 0 0x7a000000 0 0x4000000>;

No I/O space? We can also add the (presumably prefetchable) 64-bit range 


> +			pcie5port0: pcie@0 {

pcie5_port0:

> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +				phys = <&pcie5_phy>;

same comment as on the other patch

Konrad

