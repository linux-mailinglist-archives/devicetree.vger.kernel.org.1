Return-Path: <devicetree+bounces-130477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 992E59F0086
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5555E28771E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 23:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17021DED45;
	Thu, 12 Dec 2024 23:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lHiQWMcv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400101DE8A8
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734047535; cv=none; b=Cr/jPOXmL1rfk94wZO+U+pA1GWUyNzokpiMlKO8O2xBSGIdwMSk5psu1+wk2DCXVDtQ0vYjifog+k9bhilkY6Pi2B9UDKkN2H3dNYpTlnA7WR2xgDM42DNhGtSizrC28GUuCrDJymeCKN9RTW1sRE3IR16feqSV4nArqWsYMSpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734047535; c=relaxed/simple;
	bh=LNdi9+i3sapDxIkqiQa3mSnf4oo9sf/hIcFfrsHH0nc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P/b4kF9U1+GV74sjbWfq6djLlBMnQu77U7/E4NVoxRtD+kw6FYfSKgnf1NO0NacFLtb9T6uPWTHw35uJ1O2DP6lNwt1l7597WejKeVkn5ONBoHwRnMm41408HGirYU8c5CYBdkBooTZXBeReMOHBtp6bCSsfbDcViffCH5cpB/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lHiQWMcv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCHI8ts002529
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AGkFlJEX4RVezVmwonvqY/5h6OHh5UjyAW4O3g0xR9o=; b=lHiQWMcvi19wSwkX
	CviO6mVqJkMVEZ+OVEOWFawKNaDgiMQYe6HnBe9ykrzLf7Pv5S73kWejXUKeudz2
	gwzkw3sVikdvC4Og+s3lV+6455cNAVTkNgAqG3zi9KX8h8hV8H0U3wKWQapAaWrI
	CwKWB6D99v+0uGoPBeKJs+Up0WmZe2GnQTKwjzpSJRuRoCMMTAQvk/yow6YJDm3d
	IPmS7ThIhstvttNFgTrYMsL9Vu2kEQTlkBtCPjB42tGKWk4/kibCcpgrbVUMK/6Z
	ByW8z24VG0jw3n5T+FFKSaBRfX7gMGD3M9RVlvY+7gu7Fd1bBsoO8jUw42AU6YR4
	IcbcNg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43eyg671sj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:52:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679d6f9587so2326831cf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:52:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734047532; x=1734652332;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AGkFlJEX4RVezVmwonvqY/5h6OHh5UjyAW4O3g0xR9o=;
        b=ArjamHZyEauYOu/D5Oi7lDTwh5wHp6dlRt+Lf9okbfWcBzhQdahfYqaub1MQFgTj7F
         oy2Mc2E9ky5e1bcwbcM5atsb2sPmeocC/xE3LSJ2u3ysRHLorhnW3SRygnBxOUf3r2ow
         5pkSGbSGReTu2t05d+fLq2jznQAytKKrdiGRRb2Jn3B63yHAnCeVophctGeC63UWWAzd
         gGq0rsWLbJjy7rjQtwKeogRWJ5iyg8URcYxn+Q5Q0b/NbcqfhDOvDezIK4ywB7p9XSjc
         IUH8b6UjXERZji2r3Wx1XzvZiTOTSeq5OnBzTN0umasbBobU52HGxRvOETyIsY0leYcV
         N+6A==
X-Forwarded-Encrypted: i=1; AJvYcCX+0PCRRIAlgc8yIaSbsGIY160LdYX6yoijyYPV8dMi7Z1LbgFAFhwO1WBFIqXjuC8uPotA4qCoLQed@vger.kernel.org
X-Gm-Message-State: AOJu0YxOpNqnIsAjqQj8JR6FUPPdngEJcfEYet/Pv/O6xQScJDA4rKsA
	tqQbV9qI33UP+nyVtBNdNYZNDLQns0/OJj3MpxOBTUnXJ8EWTc1inp/Gyyxn8fUZIA+1XlLziOm
	rfpX2mcqHBhLXii7jfwzWXnjO3KThz1at7QdfgWWqEv/a+Ybcv/R+419xe/u8
X-Gm-Gg: ASbGncsaqKXxVMtfIAgh1P0lOR6XfgNc2M/a93yIlXWgj2/9LSTVPiVsDllwhidUU2s
	R7JJkJ8GkNKYg8IvxEUXa7wNr4kK6UCMy+RSbeT7OR7IiTZ2+rFQaN/CKx0Ov0oIFkOBp7DrUUn
	wJtvJpvgsudt0rhqVyLTjYehqomtzhfz/D9wmBZoh2QvXm8rQzJZ0Jttt4v2lFrrjCr0tprNfzu
	0viV2kfOKu9xHR1LIWk0q2ug0plPUZ3fClMjNJuJAzC9ti705tn+lsa+59AFx0pGYqMidqoGP0e
	SCxBmFdmEc451hlPGpI9HdbKym7mXJkrBPEt
X-Received: by 2002:ac8:5dd4:0:b0:463:2d8:180e with SMTP id d75a77b69052e-467a57f681amr3135881cf.12.1734047532263;
        Thu, 12 Dec 2024 15:52:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7HuJwENknc2LAHEFffGTChVf36Oo4sGXXPRWsuiOWay2pPlPdFwwnuK/EdGpzIbJnzJDhyw==
X-Received: by 2002:ac8:5dd4:0:b0:463:2d8:180e with SMTP id d75a77b69052e-467a57f681amr3135751cf.12.1734047531907;
        Thu, 12 Dec 2024 15:52:11 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa692846ac8sm576088366b.168.2024.12.12.15.52.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 15:52:11 -0800 (PST)
Message-ID: <6f7d8856-e2a7-4deb-8121-b079458e07d9@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 00:52:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: Add coresight node for SM8650
To: Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241210-sm8650-cs-dt-v1-1-6640ebe0c6cf@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241210-sm8650-cs-dt-v1-1-6640ebe0c6cf@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Jqt9Yia39fqN7k7q7TGOQ5-kVB-xRgeW
X-Proofpoint-ORIG-GUID: Jqt9Yia39fqN7k7q7TGOQ5-kVB-xRgeW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120172

On 10.12.2024 7:51 AM, Yuanfang Zhang wrote:
> Add coresight components: Funnel, ETE and ETF for SM8650.
> 
> Signed-off-by: Yuanfang Zhang <quic_yuanfang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 187 +++++++++++++++++++++++++++++++++++
>  1 file changed, 187 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 25e47505adcb790d09f1d2726386438487255824..b3890096085fa09ce36d8199df4aee2b120eff63 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5654,6 +5654,193 @@ compute-cb@12 {
>  				};
>  			};
>  		};
> +
> +		ete0 {
> +			compatible = "arm,embedded-trace-extension";
> +
> +			cpu = <&cpu0>;
> +			qcom,skip-power-up;
> +
> +			out-ports {
> +				port {
> +					ete0_out_funnel_ete: endpoint {
> +						remote-endpoint = <&funnel_ete_in_ete0>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel_ete {

Underscores must not appear in node names, use hyphens instead

Also, nodes without a reg property / unit address don't belong under
the /soc node.

Konrad

