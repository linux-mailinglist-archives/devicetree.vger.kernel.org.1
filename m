Return-Path: <devicetree+bounces-161013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B20D5A71D31
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B34A616F763
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6F123BD06;
	Wed, 26 Mar 2025 17:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iaf4Gejf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3092921ABD8
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010449; cv=none; b=dLSysMQ/OjhHLyT3Gaozhz+VM33vPBIxq6edQKqvx598hGxoVGynSa6cJBwuTLLz3JIRBlsAc6yo9o57EoLYlcqwL51WDh+KHqFt+rsC1bUPyfB1uZg+dKkVHD79JPBqY1hlVuguL7rW5KUMV27Zx79vKHemf5QiUsUhX5TnLDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010449; c=relaxed/simple;
	bh=TshgAFtyv5Gr+4/wXY0hrRMqxkHhiwNlwhq5rWwU3Tc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qdjLMfrHsR20XzBwtpo1gWJDabSsnUGrRY/uLdt5TE8MUy9qtlUj9Q6nEYUe+RQe24IcwTqRtXkQ2hTYsEhmfXKIna5UEk8VvU/3CQpxfo5+JryOSwfietPqCiGJNB9mIxksFzmT9rmS1Gdh+oGFSkz8amgJM1qruIcgXSHK9WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iaf4Gejf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QF5mhD012815
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:34:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0dPgSCIRGo94m6zrHPu6fd9s
	lXLX2m3rPOIFR+j5fAs=; b=iaf4GejfTDQUzZkBdycMOSBp1SM5r6Yc59mDIJc8
	uKeSm1lMokXp/VQdRH2USGI6OZXjv6Fv5PmUUwl+j1heP1O9ftMdYbvIHXjPLuOI
	E/DUSJLcc5QTXC95lYMh8l6HbpGY6Bj4DrE2okNrFXG7HwMWmHcy8rcfoN2KAvz8
	kO7W6DHNMHJBy5YxYyIfqI9l71UEfMPzdGTK3lTtX0o5tt1IoXfAJqF/c0X5DYCW
	j7QqNhcrOWFxOBxGAPOait/aMuXCREfYGq61Rzq33J1WZnhi7QdGurkwQExXfOEZ
	ssd3+s7H1cyv2kF5Go2hzeRNpSMg59ita5OmX77nvVR6qg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kyr9km8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:34:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ac559cbaso20380385a.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:34:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010445; x=1743615245;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dPgSCIRGo94m6zrHPu6fd9slXLX2m3rPOIFR+j5fAs=;
        b=EOEdu/JtZQHdSrIcX7mtKZaXfXHQnsG7H23kDxlJiyEYQuPDYCWh9f0wd2hlndSv76
         zGjm8BWTX5QAzdm9SL5J/LwkQOuK3EOokS1i3TxlWVW2Ehv25TYQQ3rbJiyF6liZQWoR
         RW+tx8x3pw6J3BBI/k7gueYVC4PN/LctLYkTmw8dScBUiCBcfgUQsjIZxApNECKVhkx4
         ZI+LzR0p8x4KtcHnh/hoUIn3DQISkt8ittJmRBG4r/qgO+f/lLFxq4eMGOxT5ME/5VDz
         MKY1fAeVxfl06HJXn4Fb7NPv3SUgYEiEkhQIu1hfFPdmApoRgbrK3ong6Q6Y1WjJzgMj
         2XIw==
X-Forwarded-Encrypted: i=1; AJvYcCV3IGcs0k+s66Gn66kqdjN2tPmmPUewc+qUoBrpfIgRcKrB2+8vwpFYHyqBrgRHGwmdlRL6Ud0wSwYX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6/QNMT3V92jB2VU3dtQrpNvGtbcTKs4uduGJaQNeKeAjLijTp
	01AtIFjY/Rb3UBJg4nkchHttTDmMoq6WfpitZi8xc2ixjHs4JHKyMCc3nDx6y3nVXBlgp4CmP2W
	XbwMZw6Td3MaxAglJFqGaJvAKcmZwDoKak7unplh+rPIhXIz+R4X1ClydXJu8
X-Gm-Gg: ASbGncskuLoLoAOsmojLpy55k7Aa1L3mRrx2olkMa3bp+mTBSlcjf8qqxYipSh6Na7t
	H5kGMMKRnkVTtFkSh7XfHaQ3cwUNBFhNWEj6SpUrr0Mu6UiIhkY3wQcuPJdG/bs4jO8xl07ExA9
	po78Vj8THqpf80suEz9d3g1nUQRjpIUcXBw9/Ge07BwWlaMvfCkb5+I4sEW93+625WaYzy9QY8W
	YxY80t6o15t9SnhlTi8vrImxI9nUCr0D6l/w1fd+iIrzn/qlHmMDwnq2yCGBpqQHGfYMioDPw4A
	zmvemo41HKCESWJD+SRWmF413A4Svgor7fDg+d+cZSPR7Rg8VtVVHxf4BEBM7gp0u3HAkNkG2cY
	7NVM=
X-Received: by 2002:a05:620a:254e:b0:7c5:9731:3c7b with SMTP id af79cd13be357-7c5eda64e74mr103975385a.36.1743010444966;
        Wed, 26 Mar 2025 10:34:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIW4iWtJXJZ4BR3cmnmQ77b7rUp5cXZSrlIpZZ7FtHJRSk3jk1K4yfBMbabN1sqPi7i+rOyw==
X-Received: by 2002:a05:620a:254e:b0:7c5:9731:3c7b with SMTP id af79cd13be357-7c5eda64e74mr103967885a.36.1743010444340;
        Wed, 26 Mar 2025 10:34:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad650826fsm1896825e87.167.2025.03.26.10.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 10:34:02 -0700 (PDT)
Date: Wed, 26 Mar 2025 19:34:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p: add QCrypto node
Message-ID: <tlwqz7qfdunrpsbjhk3kl3tz6zbkthv737pjvnphbz73zdqaph@7xcimtpeplbv>
References: <20250227180817.3386795-1-quic_yrangana@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227180817.3386795-1-quic_yrangana@quicinc.com>
X-Proofpoint-GUID: d8CjfZob4QD2AoBzbT9wElVtalrn8jzB
X-Authority-Analysis: v=2.4 cv=UblRSLSN c=1 sm=1 tr=0 ts=67e43a8d cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=XIGxjvZd5PgJVFysyh4A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: d8CjfZob4QD2AoBzbT9wElVtalrn8jzB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxlogscore=874 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260107

On Thu, Feb 27, 2025 at 11:38:16PM +0530, Yuvaraj Ranganathan wrote:
> The initial QCE node change is reverted by the following patch 
> https://lore.kernel.org/all/20250128115333.95021-1-krzysztof.kozlowski@linaro.org/
> because of the build warning,
> 
>   sa8775p-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
>     ...
>     'qcom,sa8775p-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']
> 
> Add the QCE node back that fix the warnings.
> 
> Signed-off-by: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 23049cc58896..b0d77b109305 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -2418,6 +2418,18 @@ cryptobam: dma-controller@1dc4000 {
>  				 <&apps_smmu 0x481 0x00>;
>  		};
>  
> +		crypto: crypto@1dfa000 {
> +			compatible = "qcom,sa8775p-qce", "qcom,sm8150-qce", "qcom,qce";
> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x480 0x00>,
> +				 <&apps_smmu 0x481 0x00>;
> +			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE0 0
> +					 &mc_virt SLAVE_EBI1 0>;

QCOM_ICC_TAG_ALWAYS

> +			interconnect-names = "memory";
> +		};
> +
>  		stm: stm@4002000 {
>  			compatible = "arm,coresight-stm", "arm,primecell";
>  			reg = <0x0 0x4002000 0x0 0x1000>,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

