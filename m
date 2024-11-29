Return-Path: <devicetree+bounces-125511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7679DC296
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6015AB221B8
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 11:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16E521991C9;
	Fri, 29 Nov 2024 11:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N+ba56HH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF331990C0
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732878850; cv=none; b=RJUOsPr9L/V9kFHPNFvzpfa+sPa5jNsS+MaehOW7b8U1f1SISdZWlxmRZI5fPDxXwWYmBS0DGrV8NumByNh/WMBNpSUqz2c0Kj/5JPuAO++YoELW+mSYDmslITSQikPX8VBdyq1KCdyJ0EvZX3VaJ/bCRg3hQcU0VUFxdSNECbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732878850; c=relaxed/simple;
	bh=cstglfYBauIS3JdfffF2An7qCkZsMHY7Xxx+C8VW4Rw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gWlNdNWjmsfsytmUbi+ReG3QPn/ZUNj35dIWWFwn3C2icBeI15ZERwmC/cPRdH51IGDR80ZPiUSrUpzF3duGLJ9OAKMHxMj2Ni1S3Szkix2MKLX5NTTQbI5XdRUNYeP6WGyo5qiPF3RAkQBZjIUyLpNijYZsycHL8YP/OL0aK4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N+ba56HH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT7kagU021753
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:14:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BAYSwvTyJwQulmVNF+wY/HlCJDdBfbXeIaNl/2czgb0=; b=N+ba56HHvusIT2IO
	kx1iz/q1ttMfI8igtIpnn+FC9YmsRsALtO0X0wpI+vUNE17dazNCxzIb0motQ2bK
	jmgxyfjq+oKfMiHKLjpF3bN2qzFYILfZBddz6bZjIDvBSGQX36Lc/6wvY7Ufnuou
	I/fjADxFrpOtnOIiUpXhwJoM438z1hb/THqOzNX9CDHM4pQiUEJr35S3lyJFK3xM
	mwIvVNAZFJ7oP4+0JNk39MHDtDrbQE7OACtW0jEF8+EJxbXAalQ77RyWwVgh3PCG
	OCe41oJUrsHL8wiHdPFftZMvSaWAj8YBZpQPgtZeyugQNwDgXUHcnX1se8D7GlDT
	R5kBQA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4379h68hmm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:14:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-466c4b8cab2so1729761cf.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 03:14:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732878846; x=1733483646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BAYSwvTyJwQulmVNF+wY/HlCJDdBfbXeIaNl/2czgb0=;
        b=gOa/RJhtgs0wkyfjvayj5c46sEeVSpO1CFyw2+6NNL0LBb6o4Yt8Flwt77TEkmqMZb
         dlrbs5Tza1YNxpQYEmEG9nAgj6Xoai4hOlQCmErHNGUJ9mR5uIdFekWse7wPS6MSZePA
         bvVFAyNO39WTIk/MBeF8lbYn1byqqVq6KFKQ5I5C8IYuZWdel2B/slC0ynCx/C42aYGb
         8sruvQ7zOqTKF9it2TLIumdQZvFVEhU4/9Jhucpl9CYyWnyavCkwboACXa2mugKGMgdF
         okunKuvatZPIauCPJceM+2J5V8KhVXD2WLctN2S757XktMjPSlUj3YI2F5ctP4oWdEIy
         SakA==
X-Forwarded-Encrypted: i=1; AJvYcCWoVYz+1A1OJ7bN5Rb9AEkmR1oPmPdHx+edueGR8utDLZiE9cWuaNh7oyGqReHZypfNW/pk8+2GTxkm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4LhyZv5ptHe3qFmNZbm61QABGIZETi+Nmwq2IqD31K4eAyZ8j
	luIjm4EpHrSkf6d7D+75igtCbdkzYzIG4xS7t+4fSEcdmkNcViTg0xQe+V1mt1g3DtS9jhnxEYd
	ZUznwQcpyO9vvvyP7z5UDJ+XDMt4YPanryeWMf4XWE2JBN4NgAGt+vvWvsSKP
X-Gm-Gg: ASbGncumsBuxVIbMkgbFaXzsNymXmLFDUGuATfpb1nMQ8SPt2VeS2pnEa0IlKmXFA+i
	2XQdLmtWDqOFzGNKt0Y2L1qdTqGBW0gD8S4Te9UBXZQD9nwv6PNLaXRzaArwfoPPab/2dtaxXUq
	BKMs6lKBm2rfcagDGQYGKF/Q7qq72O0scnzfJu8Dlw41KPZcSDudWDmsXuLG+40NSpoYrTysZCB
	G6gyFVdXpz6drUpnJFosaixRX6Zqu9WWoKalWVst1u4pngTMNaqq1Zo9wyKGZR/4/Ygu+MCaLJ9
	S0ARu+FQGYGxBbTi7rXP3X3ssX5ZKWE=
X-Received: by 2002:a05:622a:15c8:b0:463:5391:de49 with SMTP id d75a77b69052e-466b3687a32mr71373051cf.11.1732878846200;
        Fri, 29 Nov 2024 03:14:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0IkMRxCz6HR49nl4DM/5oNGJ9HIJVwhr8KR8G6mkB7EYgbxMsXDp14lpVrXF+HS3SvrioVQ==
X-Received: by 2002:a05:622a:15c8:b0:463:5391:de49 with SMTP id d75a77b69052e-466b3687a32mr71372741cf.11.1732878845666;
        Fri, 29 Nov 2024 03:14:05 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097eb1fe8sm1723809a12.74.2024.11.29.03.14.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 03:14:05 -0800 (PST)
Message-ID: <5ae55ca2-d9ef-49c0-8868-2c5bb665ddb1@oss.qualcomm.com>
Date: Fri, 29 Nov 2024 12:14:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs8300-ride: Enable PMIC
 peripherals
To: Tingguo Cheng <quic_tingguoc@quicinc.com>, quic_fenglinw@quicinc.com,
        quic_tingweiz@quicinc.com, kernel@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com>
 <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-2-28af84cb86f8@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-2-28af84cb86f8@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: b0bhGPsyR3EktNMxsZ_Q4oRGolTn8gSY
X-Proofpoint-ORIG-GUID: b0bhGPsyR3EktNMxsZ_Q4oRGolTn8gSY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2411290092

On 26.11.2024 10:35 AM, Tingguo Cheng wrote:
> Enable PMIC and PMIC peripherals for qcs8300-ride board. The qcs8
> 300-ride uses 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7eed19a694c39dbe791afb6a991db65acb37e597..9447efb9cd01654b74ec4c18dec58b1956ffe710 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "qcs8300.dtsi"
> +#include "sa8775p-pmics.dtsi"
>  / {
>  	model = "Qualcomm Technologies, Inc. QCS8300 Ride";
>  	compatible = "qcom,qcs8300-ride", "qcom,qcs8300";
> @@ -223,6 +224,28 @@ &gcc {
>  		 <0>;
>  };
>  
> +&pmm8654au_0_pon_resin{
> +	linux,code = <KEY_VOLUMEDOWN>;
> +
> +	status = "okay";
> +};
> +
> +&pmm8654au_2{
> +	status = "disabled";
> +};
> +
> +&pmm8654au_2_thermal{
> +	status = "disabled";
> +};
> +
> +&pmm8654au_3{
> +	status = "disabled";
> +};
> +
> +&pmm8654au_3_thermal{
> +	status = "disabled";
> +};

Are all these PMICs absent?

Konrad

